-- QUESTION
-- A Computer store is offering a 25% discount for all new customers over the age of 65 or customers that spend more than $200 on their first purchase.

-- The owner wants to know how many customers received that discount since they started the promotion.

-- Write a query to see how many customers received that discount.

CREATE TABLE apply_discount

(
	customer_id INT,
	age INT,
	total_purchase int

)
;

INSERT INTO apply_discount (customer_id,age,total_purchase)
VALUES 
(1001,72,1053),
(1002,86,826),
(1003,37,713),
(1004,61,923),
(1005,50,90),
(1006,45,1057),
(1007,39,673),
(1008,69,952),
(1009,29,874),
(1010,23,524),
(1011,81,496),
(1012,62,384),
(1013,80,1059),
(1014,99,1071),
(1015,75,1015)

;

SELECT COUNT(customer_id) 
FROM apply_discount
  WHERE age >65 
  OR total_purchase > 200
;






