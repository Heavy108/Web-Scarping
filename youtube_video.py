from pytube import Playlist, YouTube
import os

# Function to download a video in 1080p resolution
def download_video(video, output_path):
    try:
        print(f"Downloading: {video.title}")

        # Look for a stream with 1080p resolution
        video_stream = video.streams.filter(res="1080p", file_extension="mp4").first()

        if video_stream:
            video_stream.download(output_path=output_path)
            print(f"Downloaded: {video.title} in 1080p")
        else:
            print(f"1080p not available for {video.title}, downloading highest available resolution")
            # If 1080p is not available, download the highest resolution available
            video.streams.get_highest_resolution().download(output_path=output_path)
            print(f"Downloaded: {video.title} in available resolution")

    except Exception as e:
        print(f"Failed to download {video.title}. Error: {str(e)}")

# Function to download a playlist
def download_playlist(playlist_url, output_path):
    try:
        playlist = Playlist(playlist_url)
        print(f'Downloading playlist: {playlist.title}')

        if not os.path.exists(output_path):
            os.makedirs(output_path)

        for video_url in playlist.video_urls:
            video = YouTube(video_url)
            download_video(video, output_path)

        print("Playlist download completed.")
    except Exception as e:
        print(f"Error: {str(e)}")

if __name__ == "__main__":
    # Replace this with your playlist URL
    playlist_url = input("Enter the YouTube Playlist URL: ")

    # Output directory for downloaded videos
    output_path = input("Enter the output path (or press enter for current directory): ")

    if not output_path:
        output_path = os.getcwd()

    download_playlist(playlist_url, output_path)
