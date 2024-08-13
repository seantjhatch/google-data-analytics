# Data Analysis Course 5: Analyze Data to Answer Questions

## Module 1: Organizing and Formatting Data

### Key Concepts:
- **Analysis:** The process used to make sense of collected data, with the goal of identifying trends and relationships to answer questions.
- **Four Phases of Analysis:**
  1. **Organize Data:** Sorting and filtering to arrange data into a meaningful order.
  2. **Format and Adjust Data:** Modify the structure of the data.
  3. **Aggregate Data for Analysis:** Summarize data to identify trends.
  4. **Perform Data Calculations:** Execute mathematical operations on data.

### Techniques:
- **Sorting:**
  - **Sort Sheet:** Sorts all data in a spreadsheet by a specific column.
  - **Sort Range:** Sorts only a selected range of cells.
  - **SORT Function:** Syntax: `=SORT(start_range:end_range, column_number, TRUE/FALSE)`
  - **ORDER BY Clause (SQL):** Used to sort query results by specified columns.

- **Filtering:**
  - **WHERE Clause (SQL):** Filters data based on specific criteria.

- **Customized Sort Order:** Sort data using multiple conditions in SQL with the `ORDER BY` clause.

## Module 2: Formatting Data for Analysis

### Data Validation:
- Controls what can be entered into your worksheet.
- **Features:**
  - Dropdown lists
  - Custom checkboxes
  - Protect structured data and formulas

- **Conditional Formatting:** Changes the appearance of cells based on values meeting specific conditions.

### Functions and Commands:
- **CAST Function (SQL):** Converts one data type to another.
- **IMPORTRANGE Function (Spreadsheets):** Imports data from a range in another spreadsheet.
- **CONCATENATE Function (Spreadsheets):** Combines multiple strings into one.

## Module 3: Aggregating Data

### Aggregation:
- **Data Aggregation:** Gathering data from multiple sources into a summarized collection.
- **Functions Used:**
  - Averages
  - Minimums
  - Maximums
  - Sums

### SQL Concepts:
- **JOIN Clauses:**
  - **INNER JOIN:** Returns records with matching values in both tables.
  - **LEFT JOIN:** Returns all records from the left table and matching records from the right.
  - **RIGHT JOIN:** Returns all records from the right table and matching records from the left.
  - **FULL OUTER JOIN:** Combines RIGHT and LEFT JOIN to return all matching records in both tables.

- **Subqueries:** A query within another query.

- **HAVING Clause:** Filters the results of a SQL query after grouping.

- **CASE Statement:** Provides conditional logic in SQL queries.

## Module 4: Advanced Data Analysis Techniques

### Key Functions:
- **COUNTIF:** Counts the number of cells that meet a criterion.
- **SUMIF:** Adds data based on one condition.
- **SUMPRODUCT:** Multiplies arrays and returns the sum of those products.

### Pivot Tables:
- **Components:**
  - **Rows:** Organize and group data horizontally.
  - **Columns:** Display values vertically.
  - **Values:** Calculate and count data.
  - **Filters:** Apply criteria-based filters.

- **Calculated Fields:** Create new fields within a pivot table for calculations based on other fields.

### Data Validation Process:
- **Purpose:** Ensures data is complete, accurate, secure, and consistent.
- **Types of Validation:**
  - **Data Type Validation:** Ensures data matches the defined type.
  - **Data Range Validation:** Checks if data falls within an acceptable range.
  - **Data Constraints:** Checks if data meets certain conditions.
  - **Data Consistency:** Ensures data makes sense in relation to other data.

### SQL Syntax and Operations:
- **GROUP BY:** Groups rows with the same values into summary rows.
- **EXTRACT:** Extracts parts of a date for use in queries.
- **Modulo Operator (%):** Returns the remainder when one number is divided by another.