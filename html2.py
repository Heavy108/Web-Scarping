import os
import csv
from bs4 import BeautifulSoup

# Directory containing the HTML files
html_dir = 'D:\PROJECTS\Web Scraping\ROE'

# Output CSV file
output_csv = 'output.csv'

# Define the fields you want to extract
fields = ['School Name', 'School Code', 'District Name', 'Number of Test Takers', 'Average Score Read', 'Average Score Math', 'Average Score Write', 'Number >= 1500', 'Percent >= 1500']

# Create a list to hold the data
data = []

# Iterate over the HTML files in the directory
for filename in os.listdir(html_dir):
    if filename.endswith('.html'):
        filepath = os.path.join(html_dir, filename)
        with open(filepath, 'r', encoding='utf-8') as file:
            content = file.read()
            soup = BeautifulSoup(content, 'html.parser')
            
            # Find all relevant divs
            school_divs = soup.find_all('div', class_='col-md-4 mb-4')
            for school_div in school_divs:
                card_body = school_div.find('div', class_='card-body')
                
                school_name = card_body.find('h5', class_='card-title').get_text(strip=True)
                
                school_code = ''
                district_name = ''
                num_test_takers = ''
                avg_score_read = ''
                avg_score_math = ''
                avg_score_write = ''
                num_ge_1500 = ''
                percent_ge_1500 = ''

                # Iterate over all <p> tags in the card body
                for p in card_body.find_all('p'):
                    text = p.get_text(strip=True)
                    if 'School Code:' in text:
                        school_code = text.replace('School Code:', '').strip()
                    elif 'District Name:' in text:
                        district_name = text.replace('District Name:', '').strip()
                    elif 'Number of test takers:' in text:
                        num_test_takers = text.replace('Number of test takers:', '').strip()
                    elif 'Average Score: Read:' in text:
                        avg_score_read = text.replace('Average Score: Read:', '').strip()
                    elif 'Average Score: Math:' in text:
                        avg_score_math = text.replace('Average Score: Math:', '').strip()
                    elif 'Average Score: Write:' in text:
                        avg_score_write = text.replace('Average Score: Write:', '').strip()
                    elif 'Number >= 1500:' in text:
                        num_ge_1500 = text.replace('Number >= 1500:', '').strip()
                    elif 'Percent >= 1500:' in text:
                        percent_ge_1500 = text.replace('Percent >= 1500:', '').strip()
                
                # Add the extracted data to the list
                data.append([school_name, school_code, district_name, num_test_takers, avg_score_read, avg_score_math, avg_score_write, num_ge_1500, percent_ge_1500])

# Write the data to the CSV file
with open(output_csv, 'w', newline='', encoding='utf-8') as csvfile:
    csvwriter = csv.writer(csvfile)
    # Write the header
    csvwriter.writerow(fields)
    # Write the rows
    csvwriter.writerows(data)

print(f'Data extracted and written to {output_csv}')
