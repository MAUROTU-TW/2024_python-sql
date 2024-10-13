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


