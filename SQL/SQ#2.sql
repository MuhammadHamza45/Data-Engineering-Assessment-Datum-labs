
/*Percentage of Sales Attributed to Promotions on First and Last Days: With the Sales table
 (columns:
 sale_id, product_id, sale_date, amount, promotion_id) and Promotions table (columns:
 promotion_id, start_date, end_date, discount_rate), compute the percentage of sales attributed
 to promotions on their first and last days.*/


SELECT (SP.SalesAmount * 100) / TS.TotalAmount AS [Percentage Sales On Promo Days]
	FROM ( 
		SELECT SUM(s.amount) AS SalesAmount
			FROM dbo.Sales s
			JOIN dbo.Promotions p
			ON s.promotion_id = p.promotion_id
			WHERE s.sale_date = p.start_date
			OR s.sale_date = p.end_date 
		) AS SP
	CROSS JOIN (
		SELECT SUM(amount) AS TotalAmount
			FROM dbo.Sales
		) TS
