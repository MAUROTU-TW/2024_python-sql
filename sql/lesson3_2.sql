SELECT (code,name)
FROM station;

SELECT *
FROM station;

SELECT code as 代碼
FROM station;

SELECT code as 代碼, name as 車站名稱, e_name as 英文名稱
FROM station
WHERE code='1001'
