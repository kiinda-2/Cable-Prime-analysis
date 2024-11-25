
--------------------------------------DATA CLEANING-----------------------------------------------------------------
-----------------CHECKING DUPLICATES-----------------
-----There are no duplicates
WITH dupes as (
SELECT *,
	ROW_NUMBER() OVER (
	PARTITION BY CustomerIdentifier, PaymentDate, PaymentMethod, Gender, Province, Age, ProductID, PaymentAmount
	ORDER BY PaymentAmount ) as row_num
	FROM payments
)

SELECT * FROM dupes
WHERE row_num > 1


------------- FIND AND DEAL WITH NULLS, N/A, MISSING VALUES---------------------------

-----1. PROVINCE N/A VALUES--------------
SELECT pay.CustomerIdentifier, pay.Province, pay.Gender, pay.Age, pay.Race, Pay.paymentMethod
	,ment.CustomerIdentifier, ment.Province, ment.Gender, pay.Age, pay.Race, ment.paymentMethod
	FROM 
		payments pay
	JOIN payments ment 
	ON pay.CustomerIdentifier = ment.CustomerIdentifier
WHERE pay.Province = '#N/A' and ment.Province IS NOT NULL


---Populate province values from matched row where the same customer id has the values---
UPDATE  pay
SET province = ment.province
FROM payments pay
	JOIN payments ment 
	ON pay.CustomerIdentifier = ment.CustomerIdentifier
	WHERE  pay.province = '#n/a' 



----- 2. GENDER NULL VALUES----------------------------
SELECT pay.CustomerIdentifier, pay.Province, pay.Gender, pay.Age, pay.Race, Pay.paymentMethod
	,ment.CustomerIdentifier, ment.Province, ment.Gender, pay.Age, pay.Race, ment.paymentMethod
	FROM 
		payments pay
	JOIN payments ment 
	ON pay.CustomerIdentifier = ment.CustomerIdentifier
WHERE pay.gender = 'NULL' and ment.gender IS  NOT NULL	


-----Populate values on match-----------------------
UPDATE  pay
SET Gender = ment.Gender
	FROM payments pay
	JOIN payments ment 
	ON pay.CustomerIdentifier = ment.CustomerIdentifier
	WHERE  pay.Gender = 'NULL' 



SELECT distinct(gender) FROM payments 

-----3. RACE N/A VALUES---------------------------
SELECT pay.CustomerIdentifier,  pay.Race
	, ment.CustomerIdentifier, ment.Race
	FROM 
		payments pay
	JOIN payments ment 
	ON pay.CustomerIdentifier = ment.CustomerIdentifier
WHERE pay.race IS NULL and ment.race  IS NOT NULL


UPDATE pay
SET race =  ment.Race
    FROM payments pay
		JOIN payments ment 
		ON pay.CustomerIdentifier = ment.CustomerIdentifier
WHERE pay.race IS NULL  AND ment.Race IS NOT NULL

-----4. Age has suspicious values 1, 2, 3, 4, 5 -  fishy
----- 166, 200 above average lifespan
SELECT age FROM  payments
WHERE age IN ( 1, 2, 3, 4, 5 , 8, 166, 200 )


SELECT pay.CustomerIdentifier, pay.age
	,ment.CustomerIdentifier, ment.age
	FROM 
		payments pay
	JOIN payments ment 
	ON pay.CustomerIdentifier = ment.CustomerIdentifier
WHERE pay.age IN ( 1, 2, 3, 4, 5 , 8, 166, 200 )




-----Populate Values
UPDATE pay
SET age = ment.age
FROM 
		payments pay
	JOIN payments ment 
	ON pay.CustomerIdentifier = ment.CustomerIdentifier
WHERE pay.age IN ( 1, 2, 3, 4, 5 , 8, 166, 200 )



-----5. PaymentMethods-------------------------
SELECT  CustomerIdentifier ,PaymentMethod FROM  payments
WHERE PaymentMethod = 'NULL'


--------No general way to update the values so I set it to Other
SELECT pay.CustomerIdentifier, pay.Province, pay.Gender, pay.Age, pay.Race, Pay.paymentMethod
	,ment.CustomerIdentifier, ment.Province, ment.Gender, pay.Age, pay.Race, ment.paymentMethod
	FROM 
		payments pay
	JOIN payments ment 
	ON pay.CustomerIdentifier = ment.CustomerIdentifier
WHERE pay.PaymentMethod = 'NULL'and ment.PaymentMethod IS NOT NULL



---NULL -> Other
UPDATE payments
SET PaymentMethod = 'Other'
WHERE PaymentMethod = 'NULL'


---Out of range values (10000000 and 100000000)
---Find payment on that specific date and replace based on similar records

select * from payments
where ProductID = 32384 and Province = 'Gauteng' and age = 42 and gender ='female' and race = 'white' and PaymentMethod ='DebitOrder' and PaymentDate ='20190623  '


update payments
SET PaymentAmount = 82 
where PaymentAmount = 10000000
	
------------------------------
select * from payments
where ProductID = 685715 and Province = 'NorthWest' and gender ='female' and race = 'Black' 
and PaymentMethod ='DebitOrder' and PaymentDate ='20190410'


update payments
SET PaymentAmount = 101
where PaymentAmount = 100000000



