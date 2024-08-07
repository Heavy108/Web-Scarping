import csv
import pandas as pd

# Read the alumni details CSV
alumni_df = pd.read_csv('alumni_details.csv')

# Read the contact details CSV
contact_df = pd.read_csv('contact_details.csv')

# Merge the two dataframes on the 'Roll Number' column
merged_df = pd.merge(alumni_df, contact_df, on='Roll Number')

# Save the merged dataframe to a new CSV file
merged_df.to_csv('combined_details.csv', index=False)

print("Data has been successfully combined into combined_details.csv")
