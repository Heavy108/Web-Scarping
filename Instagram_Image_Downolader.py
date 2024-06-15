import instaloader
import re

def extract_username(url):
    """Extracts the username from the Instagram profile URL."""
    match = re.search(r'instagram\.com/([A-Za-z0-9_\.]+)/?', url)
    if match:
        return match.group(1)
    else:
        raise ValueError("Invalid Instagram URL provided")

def download_instagram_images(url):
    """Downloads images from a public Instagram profile."""
    # Create an instance of Instaloader
    loader = instaloader.Instaloader()

    try:
        # Extract the username from the provided URL
        username = extract_username(url)
        print(f"Extracted username: {username}")

        # Login (if needed) - Can be omitted if just downloading from public profiles
        # loader.login('your_username', 'your_password')

        # Download the images from the specified user ID
        print(f"Downloading images from Instagram profile: {username}")
        loader.download_profile(username, profile_pic_only=False)
        print(f"Downloaded images from {username}")

    except instaloader.exceptions.ProfileNotExistsException:
        print(f"Error: The profile {username} does not exist.")
    except instaloader.exceptions.PrivateProfileNotFollowedException:
        print(f"Error: The profile {username} is private and cannot be accessed.")
    except instaloader.exceptions.ConnectionException as e:
        print(f"Error: Connection error occurred - {e}")
    except Exception as e:
        print(f"An unexpected error occurred: {e}")

if __name__ == "__main__":
    # Replace the URL with the actual Instagram profile URL
    instagram_profile_url = "https://www.instagram.com/dxxp.visuals/?hl=en"
    download_instagram_images(instagram_profile_url)
