SELECT customer_id,
		SUM(amount) AS 加總,
		AVG(amount) AS 平均數量,
		COUNT(amount) AS 筆數,
		MAX(amount) AS 最大,
		MIN(amount) AS 最小
FROM payment
GROUP BY customer_id
ORDER BY customer_id ASC;



SELECT customer_id,
		SUM(amount) AS 加總,
		AVG(amount) AS 平均數量,
		COUNT(amount) AS 筆數,
		MAX(amount) AS 最大,
		MIN(amount) AS 最小
FROM payment
GROUP BY customer_id
ORDER BY 筆數 ASC;

SELECT (first_name || ' ' || last_name) as full_name, SUM(amount) as 合計
FROM payment p JOIN customer c ON p.customer_id = c.customer_id
GROUP BY full_name
ORDER BY 合計 DESC;