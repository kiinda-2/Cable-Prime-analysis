## Cable Prime Sales Performance Analysis (January - August 2019)


## Project Background
Cable Prime Solutions, is a leading telecommunications company that specializes in cable TV services like CableSport (Dedicated sports entertainment available 24/7), and CableMobi (Mobile-only access to all shows, 24/7). In 2019, it sought to leverage its diverse entertainment services to capture a larger audience and optimize customer satisfaction. Its business model focuses on subscription-based offerings, the company caters to varied customer needs by delivering tailored entertainment packages. I am partnering with a sales consultant to analyze customer sales behaviors, product popularity, and demographic trends. The Head of Sales will use Insights from this data to increase revenue generation and design targeted marketing strategies.


## Executive Summary
Cable Prime's sales analysis  of 500k records across January to August 2019 shows R. 179,919,491 as the total revenue generated, with North West region contributing 59% (R 103.06M) and Gauteng region contributing 28% (R 47.76M) in sales. There is an increase in sales in April as well as in June. CableMov accounts for 60% of sales while CableMobi and CableMax 27% with sales over 20M. Looking at the demographics, female customers (96k) are twice the number of male customers (46k) and contribute to 88% of sales. Black people contribute the most towards sales, with 67% of total sales generated. Most customers prefer using debit as their preferred choice for payment.
Cable Prime can benefit from optimizng its top product offerings, region, and demographic and enhancing loyalty programs/ discounts to increase customer lifetime value. Targeted groth n N/E/W Cape region and white demographic group will strengthen Cable Prime's market position and drive sustainable growth over time. 


The SQL queries used to inspect and clean the data for this analysis can be found here [link].


## Data Structure & Initial Checks
The company's main database structure as seen below consists of two tables: Payments and Products, with a total row count of 500k records. A description of each table is as follows:

Table 1: Payments
- PaymentAmount: The total amount paid by the customer for their subscription or additional services.
- PaymentDate: The date when the payment was processed. This helps track cash flow and payment consistency.
- CustomerIdentifier: A unique ID assigned to each customer for data linkage.
- PaymentMethod: Describes how the payment was made, e.g., credit card, bank transfer, mobile money, or cash.
- Gender: Indicates the customer's gender for demographic analysis.
- Race: Includes data for diversity and inclusion metrics and regional preferences.
- Province: The geographical location of the customer to assess regional sales performance.
- ProductID: Links the payment to a specific product in the Products Table.
- Age: The age of the customer to analyze trends across different age demographics.
Table 2: Products
ProductID: A unique identifier for each product or service.
Product: The name of the product or service, e.g., "CableMov," "CableSport,"
Product Description: A summary of the product's features.

![image](https://github.com/user-attachments/assets/9aa428a9-5505-4786-96cf-a196c977d2aa)


## Insights Deep Dive
#### Overall Trends:
- Cable Prime's total revenue for January to August 2019 time period is R. 179,919,491 with 142,938 total customers.
- Debit is the preferred choice of payment by customers with 122k customers using it. 
- Black customers contibute the most towards overall sales, 67% -> 116.12M, and white customers 36.07M, 21% of sales.
- North West region has a higher number of sales, 105.06M which is 59% of overall sales, followed by Gauteng with half as much as North West by 28% -> 47.76M
- April and June saw a growth in sales: 110M and 21M respectively.
- CableMov, CableMobi, and CableMax were top-selling product categories with 105M, 26M, and 21M total sales respectively.
- The number of female customers (96k) is twice as much as that of male customers (46k).
- Customer visits were relatively high during the week with most visits on Fridays and the least on Sundays.
- June, March, and April had pretty high sales and corresponding customer visits.
- Young Adult customers (25-34 year olds) contribute 67% of sales, 116M while seniors (above 55) and youths (18 to 24 years old) have a lower number of sales.
  


#### Product Category
CableMov had the highest number of sales 105M, 61% of total sales with CableMax, CableMobi and CableMax topping too with 26M and 21M sales respectively.

![image](https://github.com/user-attachments/assets/beea9888-6cd9-48f4-bccf-660188229c36)

#### Regional Sales Performance
North West region accounts for 59% of total sales with Gauteng with 47.76M -> 28% of total sales. Kwazulu Natal, FreeState and Mpumalanga were regions with low sales.

![image](https://github.com/user-attachments/assets/e277262f-ea47-4d8e-b7fd-9a8cc42e0125)


#### Preferred Payment Methods
Debit Order was the most preferred method of payment with 122k customers using it while Mobile App and USSD were not used as frequently as Debit Order.

![image](https://github.com/user-attachments/assets/a10996d4-b64d-4009-80ec-4354ba1504ea)

#### Sales by Age Category
Young Adult customers (25-34 year olds) contibute 67% of sales, 116M while seniors (above 55) and youths (18 to 24 years old) have a lower number of sales.

![image](https://github.com/user-attachments/assets/7836256e-68a6-4ded-b3cd-d757d8656328)

#### Sales by Race
The demographics show that Black customers contributed significantly towards the overall sales, 67% -> 116.12M sales, white customers customers contributing 36.07M towards sales. 

![image](https://github.com/user-attachments/assets/99f39f8a-6923-4ed2-ac09-fe3448e76425)

#### Monthly Revenue Contributions and Customer Visits
There's a positive correlation between the number of customers and the total sales amount - as the customer count increases, the sales amount also rises.
The customer count starts around 68k in January, drops in February, and then increases steadily through March to June. The sales amount also starts around 9M in January, drops in February, then increases significantly in March, April, and June, peaking in April at around 110M.

![image](https://github.com/user-attachments/assets/04c08f03-848a-4297-aa04-b425197c5787)

#### Customer Visits
Days like Friday and Wednesday tend to have higher customer visit counts across the months, while Sundays have lower visit counts. June, March, and April saw significant customer visits as well as high sales during those months and a decline during August. 

![image](https://github.com/user-attachments/assets/9b28bf5a-e2d3-4add-b7b3-6294151a4fc3)

Recommendations:
- Optimize Pricing: Introduce affordable packages tailored to regions with lower sales (Kwazulu Natal, FreeState, and Mpumalanga) while also optimizing discounts or customer loyalty programs in regions with higher sales to retain customers and attract new customers.
- Targeted Marketing: Focus marketing efforts on black and white customers, the 25-34 demographic with streaming promotions.
  
Challenge:
Had a challenge in converting payment date column (which is supposed to be date), it's value was stored as 20190626 to be in this format 2019-06-26 in SQL. Used Power BI for conversion
