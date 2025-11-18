-- Write a query that returns all of the stores whose average yearly revenue is greater than one million dollars.

-- Output the store ID and average revenue. Round the average to 2 decimal places.

-- Order by store ID.

CREATE TABLE million_dollar_store

(
	store_id INT,
	year INT,
	revenue int

)

SELECT *
FROM million_dollar_store;

INSERT INTO million_dollar_store (store_id,year,revenue)
VALUES 
(1,2020,1000000),
(2,2020,1500000),
(3,2020,800000),
(4,2020,180000),
(1,2021,2000000),
(2,2021,1800000),
(3,2021,1000000),
(4,2021,900000),
(1,2022,700000),
(2,2022,2000000),
(3,2022,600000),
(4,2022,130000)
;

SELECT *
FROM million_dollar_store;


SELECT store_id, ROUND(AVG(revenue),2) AS AVG_Revenue
FROM million_dollar_store
  GROUP BY store_id
  HAVING AVG(revenue) > 1000000
  ORDER BY store_id
  
;
