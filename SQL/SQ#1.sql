
/* Percentage of Paid Customers Who Bought Both Product A and Product B: Given a table
 CustomerPurchases with columns customer_id, product_id, purchase_date, price, and
 payment_status, calculate the percentage of customers who bought both productsA and B
 and paid for them.*/

WITH CustomerBoughtAB AS (
	SELECT COUNT(C.customer_id) AS TotalCustomerWithAB
		FROM (
		SELECT customer_id
			FROM CustomerPurchases
			WHERE payment_status = 'Paid' AND
			product_id IN ('A', 'B')
			GROUP BY customer_id
			HAVING COUNT(DISTINCT product_id) = 2
		) C
),
TotalPaid AS (
	SELECT COUNT(DISTINCT customer_id) AS TotalPaidCustomer
		FROM CustomerPurchases
)

SELECT (c.TotalCustomerWithAB * 100) / t.TotalPaidCustomer AS [Percentage Paid Customers AB]
FROM CustomerBoughtAB c
Cross JOIN TotalPaid t
