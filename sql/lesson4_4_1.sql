SELECT *
FROM payment;


/*從payment資料表找出員工訂單數*/
SELECT staff_id , count(payment_id) as 合計  
FROM payment
GROUP BY staff_id
ORDER BY 合計 DESC;


/*從payment資料表找出每個員工在每一個客戶訂單金額*/
SELECT customer_id,staff_id , SUM(amount) as 合計  
FROM payment
GROUP BY customer_id,staff_id
ORDER BY customer_id ASC;

/*每日訂單金額*/
/*Cast operator*/
SELECT payment_date::date AS 日期 , SUM(amount) as 合計  
FROM payment
GROUP BY 日期
ORDER BY 日期 ASC;


SELECT customer_id,SUM(amount)AS 合計
FROM payment
GROUP BY customer_id
HAVING SUM(amount)>200;


SELECT store_id,COUNT(customer_id)AS 客戶數
FROM customer
GROUP BY store_id
HAVING COUNT(customer_id)>300;

/*subquery*/
SELECT *
FROM country;

SELECT country_id
FROM country
WHERE country='Taiwan';

SELECT city
FROM city
WHERE country_id=92;


SELECT city
FROM city
WHERE country_id=(
	SELECT country_id
	FROM country
	WHERE country='Taiwan'
);








