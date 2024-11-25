SELECT *  FROM  payments
--------------------------EDA---------------------------------------------------------
-----Total Sales
SELECT 
	ROUND(SUM(paymentAmount), 2) AS sales
FROM  
	payments
WHERE paymentAmount NOT IN (100000000, 10000000)


-----Gender Count
--Females are twice as much as men by 14%
SELECT  
	COUNT(DISTINCT CustomerIdentifier) AS Customers, 
	Gender
FROM  
	payments
GROUP BY 
	Gender



-----Sales | Gender
SELECT 
	SUM(paymentAmount) AS sales, 
	Gender
FROM  
	payments
WHERE paymentAmount != 100000000 AND paymentAmount != 10000000
GROUP BY 
	Gender
ORDER BY 
	sales DESC


-----Calculate as percentage
SELECT 
    SUM(paymentAmount) AS sales, --total sum of the paymentAmount column for each gender
    Gender,
    ROUND(SUM(paymentAmount) / (SELECT SUM(paymentAmount) FROM payments) *100, 2 )  AS sales_percentage
	--subquery- total sum of paymentAmount across all records
FROM  
    payments
WHERE paymentAmount != 100000000 AND paymentAmount != 10000000
GROUP BY 
    Gender
ORDER BY 
    sales DESC;



------Sales | Race
SELECT SUM(paymentAmount) AS sales, Race
	 FROM  payments
WHERE Race is not null AND paymentAmount != 100000000 AND paymentAmount != 10000000
GROUP BY Race
ORDER BY sales DESC


------Sales | Province
SELECT SUM(paymentAmount) AS sales, Province
	 FROM  payments
WHERE paymentAmount != 100000000 AND paymentAmount != 10000000
GROUP BY Province
ORDER BY sales DESC



-----Preferred payment method
SELECT PaymentMethod, COUNT(distinct CustomerIdentifier) as customers
	 FROM  payments
GROUP BY PaymentMethod
ORDER BY customers DESC




-----sales | product
SELECT 
	prod.Product, 
	SUM(PaymentAmount) AS sales
FROM 
	payments pay
JOIN 
	products prod ON pay.ProductID  = prod.ProductID 
GROUP BY Product
ORDER BY sales DESC




-----Sales | Age group
-----Categorize age
SELECT 
    age_group,
    SUM(PaymentAmount) AS sales
FROM (
    SELECT 
        PaymentAmount,
        CASE
            WHEN age BETWEEN 18 AND 34 THEN 'young adult'
            WHEN age BETWEEN 35 AND 54 THEN 'middle age'
            WHEN age >= 55 THEN 'old'
        END AS age_group
    FROM 
        payments
    WHERE 
        PaymentAmount NOT IN (100000000, 10000000)
) AS categorize
GROUP BY 
    age_group
ORDER BY 
    sales DESC;







ALTER TABLE payments
ALTER COLUMN paymentDate char(10) NOT NULL


SELECT 
	CASE
		WHEN SUBSTRING(paymentDate, 5, 2) = 01 THEN 'January'
		WHEN SUBSTRING(paymentDate, 5, 2) = 02 THEN 'February'
		WHEN SUBSTRING(paymentDate, 5, 2) = 03 THEN 'March'
		WHEN SUBSTRING(paymentDate, 5, 2) = 04 THEN 'April'
		WHEN SUBSTRING(paymentDate, 5, 2) = 05 THEN 'May'
		WHEN SUBSTRING(paymentDate, 5, 2) = 06 THEN 'June'
		WHEN SUBSTRING(paymentDate, 5, 2) = 07 THEN 'July'
		WHEN SUBSTRING(paymentDate, 5, 2) = 08 THEN 'August'
	END AS month_name,
	SUM(PaymentAmount) AS monthly_sales
FROM 
	payments
GROUP BY 
	SUBSTRING(paymentDate, 5, 2)
ORDER BY 
	monthly_sales DESC












