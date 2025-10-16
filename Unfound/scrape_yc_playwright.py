#!/usr/bin/env python3
"""
Scrape Y Combinator companies directory with a limit.

Outputs: yc_companies.json

Requirements:
    pip install playwright asyncio aiofiles
    python -m playwright install
"""

import asyncio
import json
import time
from pathlib import Path
from typing import List, Dict, Set

from playwright.async_api import async_playwright

START_URL = "https://www.ycombinator.com/companies"  # Example: Summer 2025

OUTPUT_FILE = Path("yc_companies.json")
MAX_SCROLL_ATTEMPTS = 60  # how many scroll cycles to try before stopping
SCROLL_PAUSE = 0.6  # seconds to wait after each scroll
PAGE_DELAY = 1.0  # delay between company page visits (politeness)
USER_AGENT = "Mozilla/5.0 (compatible; yc-scraper/1.0; +https://example.com/bot)"
LIMIT = 50  # 👈 Number of startups to scrape (set to None for all)


async def auto_scroll(page):
    """Scroll down the page to trigger lazy-loading / infinite scroll."""
    last_height = await page.evaluate("() => document.body.scrollHeight")
    attempts = 0
    while attempts < MAX_SCROLL_ATTEMPTS:
        await page.evaluate("() => window.scrollTo(0, document.body.scrollHeight)")
        await asyncio.sleep(SCROLL_PAUSE)
        new_height = await page.evaluate("() => document.body.scrollHeight")
        if new_height == last_height:
            attempts += 1
        else:
            attempts = 0
            last_height = new_height


async def collect_company_links(page) -> List[str]:
    """Return a list of company profile URLs discovered on the directory page."""
    await page.wait_for_load_state("networkidle")
    await auto_scroll(page)
    links = await page.eval_on_selector_all(
        "a[href*='/companies/']", "els => els.map(e => e.href)"
    )
    uniq = []
    seen: Set[str] = set()
    for l in links:
        if l and l not in seen and "javascript:" not in l:
            seen.add(l)
            uniq.append(l)
    return uniq


async def extract_company_data(page, url: str) -> Dict:
    """Visit company page and extract fields with robust fallbacks."""
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
            except Exception:
                continue
        return ""

    name = await pick_text(
        ["h1", "header h1", "h1.company-name", "div.company-header h1"]
    )
    tagline = await pick_text(
        ["h2", "p.company-tagline", ".tagline", "meta[name='description']"]
    )

    # --- Extract all anchor links (emails + socials + external)
    try:
        external_links = await page.eval_on_selector_all(
            "a[href]",
            "els => els.map(e => ({href: e.href, text: e.innerText}))",
        )
    except Exception:
        external_links = []

    website = ""
    socials = {
        "twitter": [],
        "linkedin": [],
        "facebook": [],
        "instagram": [],
        "youtube": [],
        "github": [],
        "crunchbase": [],
        "angellist": [],
        "producthunt": [],
        "other": [],
    }
    emails = []

    for link in external_links:
        href = (link.get("href") or "").strip()
        if not href:
            continue

        # Detect main website (first non-YC external link)
        if not website and href.startswith("http") and "ycombinator.com" not in href:
            website = href

        # Detect email links
        if "mailto:" in href:
            email = href.replace("mailto:", "").strip()
            if email and email not in emails:
                emails.append(email)

        # Detect social / professional links
        lower = href.lower()
        if "twitter.com" in lower or "x.com" in lower:
            socials["twitter"].append(href)
        elif "linkedin.com" in lower:
            socials["linkedin"].append(href)
        elif "facebook.com" in lower:
            socials["facebook"].append(href)
        elif "instagram.com" in lower:
            socials["instagram"].append(href)
        elif "youtube.com" in lower:
            socials["youtube"].append(href)
        elif "github.com" in lower:
            socials["github"].append(href)
        elif "crunchbase.com" in lower:
            socials["crunchbase"].append(href)
        elif "angel.co" in lower:
            socials["angellist"].append(href)
        elif "producthunt.com" in lower:
            socials["producthunt"].append(href)
        elif any(
            s in lower
            for s in [
                "medium.com",
                "t.me",
                "discord.gg",
                "threads.net",
                "substack.com",
                "notion.so",
                "reddit.com",
            ]
        ):
            socials["other"].append(href)

    # Deduplicate and sort
    for key in socials:
        socials[key] = sorted(set(socials[key]))
    emails = sorted(set(emails))

    batch = await pick_text([".batch", ".company-batch", "span.batch", "div.badge"])
    location = await pick_text([".location", ".company-location", "span.location"])

    try:
        tags = await page.eval_on_selector_all(
            ".tags li, .tags .tag, .chip, .company-tags a, .company-topics a",
            "els => els.map(e => e.innerText.trim()).filter(Boolean)",
        )
    except Exception:
        tags = []

    description = await pick_text(
        [".description", ".about", "section.about p", "meta[name='description']"]
    )

    try:
        canonical = await page.eval_on_selector(
            "link[rel='canonical']", "e => e ? e.href : ''"
        )
    except Exception:
        canonical = ""

    return {
        "url": url,
        "canonical": canonical or url,
        "name": name,
        "tagline": tagline,
        "description": description,
        "website": website,
        "batch": batch,
        "location": location,
        "tags": tags,
        "emails": emails,  # 👈 all detected emails
        "socials": socials,  # 👈 all detected social/professional links
    }


async def main():
    async with async_playwright() as p:
        browser = await p.chromium.launch(headless=True)
        context = await browser.new_context(user_agent=USER_AGENT)
        page = await context.new_page()
        print(f"Opening directory: {START_URL}")
        await page.goto(START_URL, wait_until="domcontentloaded")
        company_links = await collect_company_links(page)
        print(f"Found {len(company_links)} company links (raw).")

        # Limit the number of companies
        company_links = sorted(set(company_links))
        if LIMIT and len(company_links) > LIMIT:
            company_links = company_links[:LIMIT]
            print(f"Limiting to first {LIMIT} companies.")

        results = []
        for i, url in enumerate(company_links, 1):
            print(f"[{i}/{len(company_links)}] Visiting {url}")
            data = await extract_company_data(page, url)
            results.append(data)
            await asyncio.sleep(PAGE_DELAY)

        OUTPUT_FILE.write_text(json.dumps(results, indent=2, ensure_ascii=False))
        print(f"Saved {len(results)} records to {OUTPUT_FILE.resolve()}")

        await browser.close()


if __name__ == "__main__":
    asyncio.run(main())
