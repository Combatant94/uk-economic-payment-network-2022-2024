
-- UK Industry Payments Project
-- Author: Mohd Nafees
-- Description: Queries used for loading and analyzing payment flow data
-- Date: October 2025
-- Tools: SQL Server Management Studio (SSMS 16), Database: uk_industry_payments


USE uk_industry_payments;
GO

-- Just to confirm both tables exist and contain rows
SELECT 
  (SELECT COUNT(*) FROM dbo.industry_transactions_final_typed) AS Transaction_Rows,
  (SELECT COUNT(*) FROM dbo.industry_clusters_stable) AS Cluster_Rows;
GO

-- ✅ Drop old version of fact table if exists
DROP TABLE IF EXISTS dbo.fact_industry_transactions;
GO

-- ✅ Create new fact table (correct SQL Server syntax)
SELECT 
    Payer_Industry,
    Payee_Industry,
    CAST(Value_GBP AS FLOAT) AS Value_GBP,
    CAST(Transactions AS INT) AS Transactions,
    CAST(Date AS DATE) AS Transaction_Date,
    YEAR(Date) AS Year
INTO dbo.fact_industry_transactions
FROM dbo.industry_transactions_final_typed
WHERE Value_GBP IS NOT NULL;
GO

SELECT TOP 5 * FROM dbo.fact_industry_transactions;

-- Drop if exists
DROP TABLE IF EXISTS dbo.dim_industry_clusters;
GO

-- Create the industry dimension table
SELECT
    Industry,
    CAST(Inflow_GBP AS FLOAT) AS Inflow_GBP,
    CAST(Outflow_GBP AS FLOAT) AS Outflow_GBP,
    CAST(Total_Flow_GBP AS FLOAT) AS Total_Flow_GBP,
    CAST(Betweenness AS FLOAT) AS Betweenness,
    CAST(Eigenvector AS FLOAT) AS Eigenvector,
    CAST(Cluster AS TINYINT) AS Cluster
INTO dbo.dim_industry_clusters
FROM dbo.industry_clusters_stable;
GO

-- Preview top 5 rows
SELECT TOP 5 * FROM dbo.dim_industry_clusters;
GO