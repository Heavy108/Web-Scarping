import sqlite3
import pandas as pd

# Path to the SQLite database
db_path = '/mnt/data/frpm.db'

# Output CSV file
output_csv = 'frpm_output.csv'

# Connect to the SQLite database
conn = sqlite3.connect(db_path)

# Query to extract data
query = 'SELECT * FROM your_table_name'  # Replace 'your_table_name' with the actual table name in your database

# Execute the query and load the data into a DataFrame
df = pd.read_sql_query(query, conn)

# Close the database connection
conn.close()

# Write the DataFrame to a CSV file
df.to_csv(output_csv, index=False)

print(f'Data extracted and written to {output_csv}')
