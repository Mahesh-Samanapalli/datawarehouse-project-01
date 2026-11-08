/*
=============================================================
Create Database and Schemas
=============================================================
Purpose:
    Creates the 'datawarehouse' database and the three
    medallion schemas: bronze, silver and gold.

WARNING:
    Running Part A drops the 'datawarehouse' database if it
    exists. All data in it will be permanently deleted.
    Back up any data before running this script.

How to run (PostgreSQL has no USE command):
    Part A: run while connected to any OTHER database
            (e.g. postgres or MyDataBase).
    Part B: switch the active database to 'datawarehouse',
            then run.
=============================================================
*/

-- ===========================================================
-- Part A: Create the database
-- ===========================================================
DROP DATABASE IF EXISTS datawarehouse WITH (FORCE);
CREATE DATABASE datawarehouse;

-- ===========================================================
-- Part B: Create the schemas (run inside 'datawarehouse')
-- ===========================================================
CREATE SCHEMA IF NOT EXISTS bronze;
CREATE SCHEMA IF NOT EXISTS silver;
CREATE SCHEMA IF NOT EXISTS gold;