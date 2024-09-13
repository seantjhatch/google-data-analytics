# Data Analysis Course 4: Process Data from Dirty to Clean

## Module 1

### Data Integrity
- **Definition**: The accuracy, completeness, consistency, and trustworthiness of the data throughout its lifecycle.
- **Risks**:
  - Data replication: Storing data in multiple locations.
  - Data transfer: Copying data between storage devices or computers.
  - Data manipulation: Changing data to improve organization and readability.
  - Other threats:
    - Human error
    - Viruses
    - Malware
    - Hacking
    - System failures

### Alignment of Data
- **Good alignment**: Relevant data that helps solve business problems or achieve objectives.

### Dealing with Insufficient Data
- **Types**:
  - Data from only one source
  - Data that keeps updating
  - Outdated data
  - Geographically-limited data
- **Ways to Address**:
  - Identify trends
  - Wait for more data
  - Talk with stakeholders
  - Look for a new dataset

### Sample Size & Statistical Power
- **Sample Size**: A part of a population representative of the population. Minimum sample size for CLT validity: 30.
- **Statistical Power**: Probability of getting meaningful results. Ideal power: 0.8 or 80%.

### Hypothesis Testing
- **Definition**: Determines if survey or experiment results are significant.
- **Statistical Significance**: Results are real, not due to chance.
- **Confidence Level**: Probability that sample accurately reflects the population. Ideal: 99%, but 90-95% is common.
- **Estimated Response Rate**: Percentage of people expected to complete a survey.
- **Margin of Error**: Maximum expected difference between sample results and actual population. Desired to be closer to 0.

### A/B Testing
- **Definition**: Tests two variations of a web page to determine which performs better.
- **Conversion Rate**: User traffic that gets monetized.
- **Confidence Interval**: Determined by conversion rate and margin of error.

### Key Terms
- **Accuracy**: Conformity to the actual entity being measured.
- **Completeness**: Contains all desired components.
- **Consistency**: Repeatability from different entry points.
- **Cross-field Validation**: Ensures conditions for multiple data fields are satisfied.
- **Data Constraints**: Criteria for clean and valid data.
- **Data Range**: Numerical values between predefined limits.
- **DATEDIF**: Calculates days, months, or years between two dates.
- **Data Mapping**: Matching fields from one data source to another.

## Module 2

### Dirty vs. Clean Data
- **Dirty Data**: Incomplete, incorrect, or irrelevant.
- **Clean Data**: Complete, correct, and relevant.

### Data Cleaning
- **Types of Dirty Data**:
  - Duplicate
  - Outdated
  - Incomplete
  - Incorrect/inaccurate
  - Inconsistent
- **Data Cleaning Guidelines**:
  - Rules for uniformity
  - Field length: Determines characters allowed.
  - Data validation: Checks accuracy and quality.
- **Tools & Techniques**:
  - Remove duplicates
  - Fix misspellings
  - Remove irrelevant data
  - Standardize formatting

### Data Merging & Compatibility
- **Data Merging**: Combining datasets into one.
- **Compatibility**: How well datasets work together.

### Common Data Cleaning Pitfalls
- Not checking for spelling errors
- Forgetting to document errors
- Overlooking missing values
- Not backing up data before cleaning

### Spreadsheet Functions
- **Concatenate**: Joins text strings. `=CONCATENATE(item1, item2)`
- **COUNTIF**: Counts cells matching specified value. `=COUNTIF(range, "value")`
- **LEN**: Length of text string. `=LEN(range)`
- **LEFT**: Characters from left side of string. `=LEFT(range, num_chars)`
- **RIGHT**: Characters from right side of string. `=RIGHT(range, num_chars)`
- **MID**: Segment from middle of text string. `=MID(range, start_point, num_chars)`
- **TRIM**: Removes extra spaces. `=TRIM(range)`

## Module 3: SQL

### SQL Overview
- **Purpose**: Processes big data faster than spreadsheets.

### SQL Functions & Queries
- **SUBSTRING, TRIM, LENGTH**: Manipulate text data.
- **CAST()**: Convert data types. `SELECT CAST(purchase_price AS FLOAT64) ...`
- **CONCAT()**: Add strings together. `SELECT CONCAT(product_code, product_color) ...`
- **COALESCE()**: Returns non-null values. `SELECT COALESCE(product, product_code) ...`

## Module 4

### Data Cleaning Verification
- **Verification**: Confirm accuracy and reliability of cleaned data.
- **Changelog**: Lists modifications made to a project.

### Data-Cleaning Verification Checklist
- Correct common problems
- Review the project goal
- Documentation of changes

### Version Control
- **Sheets & Excel**: Track changes.
- **SQL**: Use comments and query history.
- **Changelogs**: Detailed records of changes, including reasons.

## Module 5

### Data Analyst Roles
- **Roles**:
  - Junior or associate data analyst
  - Healthcare analyst
  - Marketing analyst
  - Business intelligence analyst
  - Financial analyst

### Skills
- Communication
- Quantitative Data
- Teamwork
- Problem-solving
