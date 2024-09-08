
/*Top 5 Complementary Products for Product A: Identify the top 5 products bought
 alongside Product A.*/

SELECT C.[Complementary Products]
	FROM (
		SELECT product_id AS [Complementary Products],
			SUM(price) AS Sales, ROW_NUMBER() OVER(ORDER BY SUM(price)) AS ProdRank
			from dbo.CustomerPurchases
			WHERE customer_id in (
				SELECT customer_id 
					FROM [dbo].[CustomerPurchases]
					WHERE product_id = 'A')
			AND product_id != 'A'
			GROUP BY product_id
	) C
	WHERE C.ProdRank <= 5
