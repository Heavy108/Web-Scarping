# import re
# import csv

# # Define a function to parse each line and extract the required fields
# def parse_line(line):
#     pattern = re.compile(r"INSERT INTO `contact_details` VALUES\('([^']*)', '[^']*', '([^']*)', (\d+), '[^']*', '[^']*', \d+, '([^']*)'\);")
#     match = pattern.match(line)
#     if match:
#         return match.groups()
#     return None

# # Open the SQL file and read the lines
# with open('contact_details.sql', 'r') as file:
#     lines = file.readlines()

# # Open a CSV file for writing
# with open('contact_details.csv', 'w', newline='') as csvfile:
#     csvwriter = csv.writer(csvfile)
#     csvwriter.writerow(['roll_no','phone','email' ])  # Write the header
    
#     # Process each line and write the extracted data to the CSV file
#     for line in lines:
#         data = parse_line(line)
#         if data:
#             csvwriter.writerow(data)

# print("Data has been successfully extracted to alumni_details.csv")
import re
import csv

# Define a function to parse each line and extract the required fields
def parse_contact_line(line):
    pattern = re.compile(r"INSERT INTO `contact_details` VALUES\('([^']*)', '[^']*', '([^']*)', '[^']*', '([^']*)', '[^']*', '[^']*'\);")
    match = pattern.match(line)
    if match:
        return match.groups()
    return None

# Open the SQL file and read the lines
with open('contact_details.sql', 'r') as file:
    lines = file.readlines()

# Open a CSV file for writing
with open('contact_details.csv', 'w', newline='') as csvfile:
    csvwriter = csv.writer(csvfile)
    csvwriter.writerow(['Roll Number', 'Phone Number', 'Email'])  # Write the header
    
    # Process each line and write the extracted data to the CSV file
    for line in lines:
        data = parse_contact_line(line)
        if data:
            csvwriter.writerow(data)

print("Data has been successfully extracted to contact_details.csv")

