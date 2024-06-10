SELECT c.customer_id
FROM customer c
GROUP BY c.customer_id
HAVING COUNT(DISTINCT c.product_key) = (SELECT COUNT(DISTINCT product_key) FROM product);