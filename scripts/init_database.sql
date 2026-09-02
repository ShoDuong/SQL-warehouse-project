-- Create Database "DataWarehouse"
/*
=============================================================
Create Database and Schemas
=============================================================
Script Purpose:
    This script creates a new database named 'DataWarehouse' after checking if it already exists. 
    If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas 
    within the database: 'bronze', 'silver', and 'gold'.
	
WARNING:
    Running this script will drop the entire 'DataWarehouse' database if it exists. 
    All data in the database will be permanently deleted. Proceed with caution 
    and ensure you have proper backups before running this script.
*/


USE master;
go

If EXISTS (Select 1 from sys.databases where name = 'DataWarehouse')
Begin 
	Alter DATABASE DataWarehouse set SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWarehouse;
END;
GO

Create DATABASE DataWarehouse;

Use DataWarehouse;
go

-- Create Schema
Create Schema bronze;
go
Create Schema silver;
go
Create Schema gold;
