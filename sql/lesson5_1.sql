/*各站點資訊*/
SELECT *
FROM station;

SELECT *
FROM station_in_out;
SELECT stationname AS 站名
FROM stations JOIN station_in_out ON stationcode = stacode
WHERE date BETWEEN '2022-01-01' AND '2022-12-31';


SELECT *
FROM station_in_out;

/*基隆2022年進站總人數*/
SELECT stationname AS 站名, SUM(gateincomingcnt) AS 總進站人數
FROM stations JOIN station_in_out ON stationcode = stacode
/*WHERE date BETWEEN '2022-01-01' AND '2022-12-31';*/
WHERE EXTRACT(YEAR FROM date) = 2022 AND stationname='基隆'



SELECT *
FROM station_in_out;
/*全省各站點2022年進站總人數*/

SELECT stationname AS 站名, SUM(gateincomingcnt) AS 總進站人數
FROM stations JOIN station_in_out ON stationcode = stacode
/*WHERE date BETWEEN '2022-01-01' AND '2022-12-31';*/
WHERE EXTRACT(YEAR FROM date) = 2022
GROUP BY 站名
HAVING SUM(gateincomingcnt)>=5000000
ORDER BY 總進站人數 DESC;

/*基隆火車站2020,每月份進站人數*/
SELECT stationname AS 站名,date AS 日期,gateincomingcnt AS 每日進站人數
FROM stations JOIN station_in_out ON stationcode = stacode
/*WHERE date BETWEEN '2022-01-01' AND '2022-12-31';*/
WHERE EXTRACT(YEAR FROM date) = 2022 AND stationname='基隆';

/*基隆火車站2020,每月份進站人數*/
SELECT stationname AS 站名, TO_CHAR(date,'YYYY-MM') AS 日期,SUM(gateincomingcnt) AS 進站人數小計
FROM stations JOIN station_in_out ON stationcode = stacode
/*WHERE date BETWEEN '2022-01-01' AND '2022-12-31';*/
WHERE EXTRACT(YEAR FROM date) = 2022 AND stationname='基隆'
GROUP BY 站名,日期
ORDER BY 進站人數小計 DESC;

/*基隆火車站20202021 2022,每年份進站人數*/
SELECT stationname AS 站名, EXTRACT(YEAR FROM date) AS 年分,SUM(gateincomingcnt) AS 當年總進站人數
FROM stations JOIN station_in_out ON stationcode = stacode
WHERE EXTRACT(YEAR FROM date) IN (2020,2021,2022) AND stationname='基隆'
group BY 站名,年分;

SELECT stationname AS 站名, EXTRACT(YEAR FROM date) as 年份,SUM(gateincomingcnt) AS 當年總進站人數
FROM stations JOIN station_in_out ON stationcode = stacode
WHERE EXTRACT(YEAR FROM date) IN (2020,2021,2022) AND stationname in('基隆','臺北')
GROUP BY 站名,年份;

/*進站人數最多的一筆*/
SELECT stationname AS 站名,gateincomingcnt AS 進站人數
FROM stations JOIN station_in_out ON stationcode = stacode
WHERE gateincomingcnt = (
	SELECT MAX(gateincomingcnt)
	FROM station_in_out
)

/*各站點進站人數最多的一筆*/
SELECT stationname AS 站名,gateincomingcnt AS 進站人數,date
FROM stations JOIN station_in_out ON stationcode = stacode
WHERE (stationname,gateincomingcnt) in (
	SELECT stationname AS 站名,MAX(gateincomingcnt)AS最多人數
	FROM stations JOIN station_in_out ON stationcode = stacode
	Group by 站名
)
ORDER BY gateincomingcnt DESC;



SELECT stationname AS 站名,MAX(gateincomingcnt)AS最多人數
FROM stations JOIN station_in_out ON stationcode = stacode
Group by 站名
