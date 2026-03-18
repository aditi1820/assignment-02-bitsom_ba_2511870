## ETL Decisions

### Decision 1 — Date Standardization
Problem: The raw dataset had inconsistent date formats.
Resolution: All dates were converted into a standard YYYY-MM-DD format and separated into month and year for analysis.

### Decision 2 — Handling NULL Values
Problem: Some records had missing values.
Resolution: Missing values were either removed or replaced with default values to ensure data consistency.

### Decision 3 — Category Standardization
Problem: Product categories had inconsistent naming (e.g., electronics, Electronics).
Resolution: All category names were standardized to a consistent format to ensure accurate grouping and reporting.