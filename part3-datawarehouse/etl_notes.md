## ETL Decisions

### Decision 1 — Standardizing Date Format
Problem: The dataset contained inconsistent date formats.
Resolution: All dates were converted into a standard YYYY-MM-DD format before loading into dim_date.

### Decision 2 — Handling NULL Values
Problem: Some rows had missing values for category or store.
Resolution: Missing values were either removed or replaced with default values to maintain consistency.

### Decision 3 — Fixing Category Casing
Problem: Categories like "electronics", "Electronics", and "ELECTRONICS" were inconsistent.
Resolution: All category values were standardized to proper case (e.g., "Electronics").