import json
from collections import defaultdict

# Load the JSON data from the file
json_file_path = 'D:\PROJECTS\Web Scraping\discourse-topics.json'  # Replace with the path to your JSON file

with open(json_file_path, 'r') as file:
    data = json.load(file)

# Print the type and structure of the data to understand its format
print(type(data))  # This will tell you if data is a list or a dictionary
print(data)  # Print the data to see its structure

# If data is a list, handle it appropriately
if isinstance(data, list):
    # Example: assuming each item in the list is a dictionary with 'topics' key
    for item in data:
        if isinstance(item, dict) and 'topics' in item:
            data = item  # Use the first dictionary with 'topics' key
            break

# Initialize a dictionary to count topics per user
user_topic_count = defaultdict(set)

# Process each topic and its posters
for topic in data.get('topics', []):  # Use .get() to avoid KeyError
    for poster in topic.get('posters', []):  # Use .get() to avoid KeyError
        username = poster.get('username', 'unknown')
        user_topic_count[username].add(topic['id'])

# Count the number of topics for each user
user_topic_count = {user: len(topics) for user, topics in user_topic_count.items()}

# Get the count for IITM_aadarsh
iitm_aadarsh_count = user_topic_count.get('IITM_aadarsh', 0)

# Count users who posted in more topics than IITM_aadarsh
more_topics_count = sum(1 for count in user_topic_count.values() if count > iitm_aadarsh_count)

print(f"Number of users who posted in more topics than IITM_aadarsh: {more_topics_count}")
