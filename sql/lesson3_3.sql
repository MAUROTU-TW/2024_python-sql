SELECT id as 序號,code as 代碼, name as 車站名稱, e_name as 英文名稱
FROM station
WHERE code = '1001';

SELECT id as 序號,code as 代碼, name as 車站名稱, e_name as 英文名稱
FROM station
WHERE code = '1001' OR code = '1002';

SELECT id as 序號,code as 代碼, name as 車站名稱, e_name as 英文名稱
FROM station
WHERE code IN ('1001','1002');

SELECT id as 序號,code as 代碼, name as 車站名稱, e_name as 英文名稱
FROM station
/*WHERE name = '基隆';*/

SELECT id as 序號,code as 代碼, name as 車站名稱, e_name as 英文名稱
FROM station
WHERE name like '台_';

SELECT id as 序號,code as 代碼, name as 車站名稱, e_name as 英文名稱
FROM station
WHERE name like '台%';

SELECT id as 序號,code as 代碼, name as 車站名稱, e_name as 英文名稱
FROM station
WHERE name like '%港';

SELECT id as 序號,code as 代碼, name as 車站名稱, e_name as 英文名稱
FROM station
WHERE id<=10;

SELECT id as 序號,code as 代碼, name as 車站名稱, e_name as 英文名稱
FROM station
WHERE id<=20 AND id>10;

SELECT id as 序號,code as 代碼, name as 車站名稱, e_name as 英文名稱
FROM station
WHERE name = '基隆';

SELECT id as 序號,code as 代碼, name as 車站名稱, e_name as 英文名稱
FROM station
WHERE id>20 or id<10;

SELECT id as 序號,code as 代碼, name as 車站名稱, e_name as 英文名稱
FROM station
WHERE id not between 10 and 20;

SELECT id as 序號,code as 代碼, name as 車站名稱, e_name as 英文名稱
FROM station
WHERE id between 10 and 20;

SELECT id as 序號,code as 代碼, name as 車站名稱, e_name as 英文名稱
FROM station
ORDER BY code desc; /*數字字串排序*/

SELECT id as 序號,code as 代碼, name as 車站名稱, e_name as 英文名稱
FROM station
ORDER BY e_name   /*英文字排序*/
Limit 10 ;     /*抓前10名*/



