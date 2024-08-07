import re
import csv

# Define a function to parse each line and extract the required fields
def parse_line(line):
    pattern = re.compile(r"INSERT INTO `alumni_details` VALUES\('([^']*)', '[^']*', '([^']*)', (\d+), '[^']*', '[^']*', \d+, '([^']*)'\);")
    match = pattern.match(line)
    if match:
        return match.groups()
    return None

# Open the SQL file and read the lines
with open('alumni_details (1).sql', 'r') as file:
    lines = file.readlines()

# Open a CSV file for writing
with open('alumni_details.csv', 'w', newline='') as csvfile:
    csvwriter = csv.writer(csvfile)
    csvwriter.writerow(['Roll Number', 'Name', 'Year', 'Program ID'])  # Write the header
    
    # Process each line and write the extracted data to the CSV file
    for line in lines:
        data = parse_line(line)
        if data:
            csvwriter.writerow(data)

print("Data has been successfully extracted to alumni_details.csv")
