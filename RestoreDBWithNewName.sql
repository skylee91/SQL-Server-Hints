--https://www.mssqltips.com/sqlservertutorial/122/retore-sql-server-database-to-different-filenames-and-locations/

-- Step1: List the logical files in the .bak file
RESTORE FILELISTONLY FROM DISK = 'C:\OldDB.BAK'
GO

-- Step2: Restore with the info from Step1
RESTORE DATABASE NewDB FROM DISK = 'C:\OldDB.BAK'
WITH MOVE 'OldDB' TO 'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\NewDB.mdf',
MOVE 'OldDB_Log' TO 'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\NewDB_Log.ldf'
GO

