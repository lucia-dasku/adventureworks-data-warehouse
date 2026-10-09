# SQL Validation and Troubleshooting

`SQL_scriptd_lab2.2.sql` contains the SQL queries and database adjustments I wrote while implementing Lab 2 of the Data Warehousing course at Dalarna University. The file was submitted with the assignment to document the validation and troubleshooting performed in SQL Server Management Studio (SSMS).

The SQL work covers three stages of the implementation:

- **Source-to-staging validation:** Checked row counts and sample records to verify that data had been transferred correctly from AdventureWorks2014 to the staging database (`AWN_STG_Demo`).
- **Employee dimension troubleshooting:** Investigated the employee staging view and column data types when the SSIS Slowly Changing Dimension (SCD) wizard did not recognize the `StartDate` and `EndDate` columns. Wrote `ALTER TABLE` statements to change these columns from `date` to `datetime`.
- **Fact-table validation:** Queried `FactInternetSales` to inspect the records loaded into the data warehouse (`AWN_DW_Demo`).

These queries document the checks and adjustments made during development. They are not intended to be executed as a complete database installation script.

The initial staging and data warehouse creation scripts (`1_AWN_STG_Demo.sql` and `2_AWN_DW_Demo.sql`) were provided as part of the course materials and are not included in this repository.
