/*
===============================================================
Script:   Create Database and Schemas
===============================================================
Purpose:
    Creates the 'DataWarehouse' database and three schemas
    for the Medallion Architecture: bronze, silver and gold.

WARNING:
    If 'DataWarehouse' already exists, this script DROPS it
    and recreates it. All existing data will be permanently
    deleted. Back up your data before running.
===============================================================
*/

USE master;
GO

-- Drop and recreate the 'DataWarehouse' database if it exists
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
    ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE DataWarehouse;
END;
GO

-- Create the 'DataWarehouse' database
CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO

-- Create schemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
