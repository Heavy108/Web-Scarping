import tabula
import pandas as pd

# Path to the PDF file containing student marks
file_path = 'path/to/your/pdf/file.pdf'

# Function to extract and process data
def calculate_economics_marks(pdf_path, start_page, end_page):
    # Extract data from PDF using tabula
    dfs = tabula.read_pdf(pdf_path, pages=f'{start_page}-{end_page}', multiple_tables=True)

    # Concatenate all tables extracted from pages into one DataFrame
    df = pd.concat(dfs, ignore_index=True)

    # Assuming the structure of the DataFrame matches rows of students with columns for subjects
    # Let's assume the columns are named ['StudentID', 'Maths', 'Economics', ...] where other subjects follow

    # Filter rows where Maths marks are 18 or more
    filtered_df = df[df['Maths'] >= 18]

    # Calculate total Economics marks for these students
    total_economics_marks = filtered_df['Economics'].sum()

    return total_economics_marks

# Example usage:
start_page = 58
end_page = 80
total_marks = calculate_economics_marks(file_path, start_page, end_page)

print(f'Total Economics marks for students with 18 or more in Maths in pages {start_page}-{end_page}: {total_marks}')
