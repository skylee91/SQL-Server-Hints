--Source: http://stackoverflow.com/questions/14704105/search-text-in-stored-procedure-in-sql-server

SELECT ROUTINE_NAME, ROUTINE_DEFINITION
FROM INFORMATION_SCHEMA.ROUTINES 
WHERE ROUTINE_DEFINITION LIKE '%spName%' 
AND ROUTINE_TYPE='PROCEDURE'
