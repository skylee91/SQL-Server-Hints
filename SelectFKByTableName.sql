--Source: https://stackoverflow.com/questions/1776079/sql-drop-table-foreign-key-constraint

--Select all foreign key relationships referencing your table(we use table name as Student), you could use this SQL (if you're on SQL Server 2005 and up):

SELECT * 
FROM sys.foreign_keys
WHERE referenced_object_id = object_id('Student')

--To drop those FK relations (if any):

SELECT 
    'ALTER TABLE [' +  OBJECT_SCHEMA_NAME(parent_object_id) +
    '].[' + OBJECT_NAME(parent_object_id) + 
    '] DROP CONSTRAINT [' + name + ']'
FROM sys.foreign_keys
WHERE referenced_object_id = object_id('Student')

