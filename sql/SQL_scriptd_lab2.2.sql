-- II. 2. Source to Staging
USE AWN_STG_Demo;
GO

-- checking if populated rows correctly in VS IDE, did this for all STG tables
SELECT COUNT(*) AS [RowCount]
FROM erp.Currency;
GO

SELECT TOP (20) *
FROM erp.Currency;
GO


-- II.3. a) ETL Staging to DW

--SCD wizard doesnt show start and end columns in the dropdown menu

SELECT COUNT(*) AS RowCounts
FROM dbo.Stg_vw_Erp_Employee;

SELECT TOP (10) *
FROM dbo.Stg_vw_Erp_Employee;

sp_helptext 'dbo.Stg_vw_Erp_Employee';


SELECT COUNT(*) AS RowCounts FROM hr.Employee;
SELECT COUNT(*) AS RowCounts FROM hr.EmployeeDepartmentHistory;
SELECT COUNT(*) AS RowCounts FROM erp.Person;
SELECT COUNT(*) AS RowCounts FROM dbo.Stg_vw_Erp_Employee;


-- in DW Demo checking datatypes of start/end columns
SELECT
  COLUMN_NAME,
  DATA_TYPE,
  IS_NULLABLE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = 'dbo'
  AND TABLE_NAME = 'DimEmployee'
ORDER BY ORDINAL_POSITION;

-- changing start/end data types from date to datetime to make it a timestamp type.
-- could be that SCD wizard just doesnt accept date as type 
ALTER TABLE dbo.DimEmployee
ALTER COLUMN StartDate datetime NULL;

ALTER TABLE dbo.DimEmployee
ALTER COLUMN EndDate datetime NULL;

-- III. 3. c) Fact table mapping

-- Verifying results
SELECT COUNT(*) AS RowCounts
FROM dbo.FactInternetSales;

SELECT TOP 10 *
FROM dbo.FactInternetSales;


