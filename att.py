import requests
from bs4 import BeautifulSoup

# URL of the archived White House page snapshot
url = 'https://web.archive.org/web/20171216015035id_/https://www.whitehouse.gov/'

# Fetch the HTML content
response = requests.get(url)
html_content = response.content

# Parse the HTML content
soup = BeautifulSoup(html_content, 'html.parser')

# Find all elements that match the CSS selector
matching_elements = soup.select('[class^="menu-"], [class*=" menu-"]')

# Count the number of matching elements
number_of_matching_elements = len(matching_elements)

print(number_of_matching_elements)
