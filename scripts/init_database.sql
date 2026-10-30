/*
=========================================================================================================================
Create Database and Schemas
==========================================================================================================================

Script Purpose:
    This script creates a new database names 'DataWarehouse' after checking if it already exists.
    If the daatbase exists, it is dropped and recreated. Additionally, the scripts sets up three schemas within the database : 'bronze ', 'silver', and 'gold'. 


WARNING
    Running this script will result in the loss of all data in the 'DataWarehouse' database if it already exists. Please ensure that you have backed up any important 
    data before executing this script.
*/


USE master;
GO

-- Drop and recreate the 'DataWarehouse' database 
IF EXISTS (SELECT 1 FROM sys.databases  WHERE name  = 'DataWarehouse')
BEGIN
    ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE DataWarehouse;
END;
GO


CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO 

-- Create Schemas
CREATE Schema bronze;
GO

CREATE Schema silver;
GO

CREATE Schema gold;
GO