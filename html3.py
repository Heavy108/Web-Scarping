import pandas as pd

# Path to the Parquet file
parquet_path = 'D:\PROJECTS\Web Scraping\schools.parquet'

# Output CSV file
output_csv = 'schools_output.csv'

# Read the Parquet file into a DataFrame
df = pd.read_parquet(parquet_path)

# Write the DataFrame to a CSV file
df.to_csv(output_csv, index=False)

print(f'Data extracted and written to {output_csv}')
