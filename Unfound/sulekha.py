#!/usr/bin/env python3
import asyncio
import json
from pathlib import Path
from typing import List, Dict
from playwright.async_api import async_playwright

# 🏙️ Add multiple states/cities here
START_URLS = [
    "https://www.sulekha.com/patient-care-services/mumbai",
    "https://www.sulekha.com/patient-care-services/delhi",
    "https://www.sulekha.com/patient-care-services/bangalore",
    "https://www.sulekha.com/patient-care-services/hyderabad",
]

OUTPUT_FILE = Path("sulekha_health.json")
PAGE_DELAY = 1.0
MAX_LOAD_MORE = 50
USER_AGENT = "Mozilla/5.0 (compatible; sulekha-scraper/1.2)"


async def auto_scroll_or_load_more(page):
    """Scrolls or clicks 'Load More' if present."""
    await page.evaluate("window.scrollBy(0, document.body.scrollHeight)")
    await asyncio.sleep(0.8)
    btn = await page.query_selector(
        "button:has-text('Load More'), .loadMore, .see-more"
    )
    if btn:
        try:
            await btn.click()
            await asyncio.sleep(1.0)
        except:
            pass


async def collect_listing_links(page) -> List[str]:
    """Collect all business listing links dynamically."""
    print("⏳ Waiting for listings to appear...")
    await page.wait_for_load_state("networkidle")

    for _ in range(MAX_LOAD_MORE):
        await auto_scroll_or_load_more(page)

    selectors = [
        "a.businessLink",
        "a.list-card",
        "a[href*='/profile/']",
    ]

    links = set()
    for sel in selectors:
        els = await page.eval_on_selector_all(sel, "els => els.map(e => e.href)")
        for href in els:
            if href and href.startswith("/"):
                href = "https://www.sulekha.com" + href
            if href and "sulekha.com" in href:
                links.add(href)

    print(f"✅ Collected {len(links)} listing links.")
    if links:
        print("Sample:", list(links)[:5])
    return list(links)


async def extract_business_data(page, url: str) -> Dict:
    """Extract business details from individual page."""
    try:
        await page.goto(url, wait_until="networkidle", timeout=30000)
    except Exception as e:
        print(f"[WARN] Failed to load {url}: {e}")
        return {"url": url, "error": "load_failed"}

    async def pick_text(selectors):
        for sel in selectors:
            try:
                el = await page.query_selector(sel)
                if el:
                    txt = (await el.inner_text()).strip()
                    if txt:
                        return txt
            except:
                continue
        return ""

    name = await pick_text(["h1", ".business-name", ".provider-name"])
    category = await pick_text(
        [".category", ".service-type", ".breadcrumb a:last-child"]
    )
    address = await pick_text([".address", ".location", "address"])
    phone = await pick_text([".phone", ".mobile", "a[href^='tel:']"])
    description = await pick_text(
        [".about", ".description", "meta[name='description']"]
    )

    # Collect website, emails, socials
    emails, socials, website = [], {}, ""
    try:
        links = await page.eval_on_selector_all(
            "a[href]", "els => els.map(e => ({href: e.href, text: e.innerText}))"
        )
    except:
        links = []

    for link in links:
        href = (link.get("href") or "").strip()
        if not href:
            continue

        if href.startswith("mailto:"):
            emails.append(href.replace("mailto:", "").strip())
            continue
        if href.startswith("tel:"):
            continue

        lower = href.lower()

        # Skip Google Maps, WhatsApp, directions, and similar non-website links
        if any(
            bad in lower
            for bad in [
                "google.com/maps",
                "goo.gl/maps",
                "maps.google",
                "wa.me",
                "api.whatsapp",
            ]
        ):
            continue

        # Prioritize links with visible text suggesting a real website
        if (
            not website
            and "visit" in link.get("text", "").lower()
            and href.startswith("http")
        ):
            website = href
            continue

        # Save first clean, non-social, non-sulekha external link as website
        if (
            not website
            and href.startswith("http")
            and "sulekha.com" not in lower
            and not any(
                s in lower
                for s in [
                    "facebook.com",
                    "instagram.com",
                    "linkedin.com",
                    "twitter.com",
                    "x.com",
                    "youtube.com",
                ]
            )
        ):
            website = href

        # Social links (skip Sulekha-owned ones)
        if "sulekha" in lower:
            continue

        if "facebook.com" in lower:
            socials.setdefault("facebook", []).append(href)
        elif "instagram.com" in lower:
            socials.setdefault("instagram", []).append(href)
        elif "linkedin.com" in lower:
            socials.setdefault("linkedin", []).append(href)
        elif "twitter.com" in lower or "x.com" in lower:
            socials.setdefault("twitter", []).append(href)
        elif "youtube.com" in lower:
            socials.setdefault("youtube", []).append(href)

    # Deduplicate
    emails = sorted(set(emails))
    for k in socials:
        socials[k] = sorted(set(socials[k]))

    return {
        "url": url,
        "name": name,
        
        "phone": phone,
        "website": website,
        "emails": emails,
        "socials": socials,
    }


async def main():
    async with async_playwright() as p:
        browser = await p.chromium.launch(headless=True)
        context = await browser.new_context(user_agent=USER_AGENT)
        page = await context.new_page()

        all_results = []

        for start_url in START_URLS:
            print(f"\n🌐 Opening {start_url}")
            await page.goto(start_url, wait_until="domcontentloaded")

            listing_links = await collect_listing_links(page)
            print(f"Found {len(listing_links)} businesses in {start_url}")

            for i, url in enumerate(listing_links, 1):
                print(f"[{i}/{len(listing_links)}] Visiting {url}")
                data = await extract_business_data(page, url)
                data["source_city"] = start_url.split("/")[-1]  # add city name
                all_results.append(data)
                await asyncio.sleep(PAGE_DELAY)

        # Save combined results
        OUTPUT_FILE.write_text(
            json.dumps(all_results, indent=2, ensure_ascii=False), encoding="utf-8"
        )
        print(f"\n✅ Saved {len(all_results)} records to {OUTPUT_FILE.resolve()}")

        await browser.close()


if __name__ == "__main__":
    asyncio.run(main())
