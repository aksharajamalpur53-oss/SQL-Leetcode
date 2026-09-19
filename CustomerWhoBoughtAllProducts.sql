# Write your MySQL query statement below
SELECT  c.customer_id
FROM Customer c
WHERE c.customer_id is not null
GROUP BY c.customer_id
HAVING COUNT( DISTINCT product_key) =  (
    SELECT COUNT(*) 
    FROM Product 
    );

