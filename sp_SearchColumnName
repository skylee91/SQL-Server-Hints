SELECT t.NAME AS table_name
	,SCHEMA_NAME(schema_id) AS schema_name
	,c.NAME AS column_name
FROM sys.tables AS t
INNER JOIN sys.columns c ON t.OBJECT_ID = c.OBJECT_ID
WHERE c.NAME LIKE '%Number%'
ORDER BY schema_name
  ,table_name;
