## Cable Prime Sales Performance Analysis (January - August 2019)


## Project Background
Cable Prime Solutions, is a leading telecommunications company specializing in cable TV services like CableSport (Dedicated sports entertainment available 24/7), and CableMobi (Mobile-only access to all shows, 24/7). In 2019, it sought to leverage its diverse entertainment services to capture a larger audience and optimize customer satisfaction. Its business model focuses on subscription-based offerings, the company caters to varied customer needs by delivering tailored entertainment packages. I am partnering with a sales consultant to analyze customer sales behaviors, product popularity, and demographic trends. The Head of Sales will use Insights from this data to increase revenue generation and design targeted marketing strategies.


## Executive Summary
Cable Prime's sales analysis  of 500k records across January to August 2019 shows R. 69,919,674 as the total revenue generated, with Gauteng contributing 56% (R 40M) and N/W/E cAPE region contributing 17% (R 12M) in sales. There is a peak in sales in March and in June. CableMax accounts for 30% of sales while CableMobi and CableSport with sales of 16M and 13M respectively. Looking at the demographics, female customers (96k) are twice the number of male customers (46k) and contribute to 69% of sales. White customers contribute the most towards sales, with 40% (28M) of total sales generated. Most customers prefer using debit as their preferred payment method (over 120k).
Cable Prime can benefit from optimizing its top product offerings, region, and demographic and enhancing loyalty programs/ discounts to increase customer lifetime value. Targeted growth in the N/E/W Cape region and white demographic group will strengthen Cable Prime's revenue generation and drive sustainable growth over time. 


The SQL queries used to inspect and clean the data for this analysis can be found here [[link](https://github.com/kiinda-2/Cable-Prime-analysis/blob/main/DataCleaning.sql)].


## Data Structure 
The company's main database structure as seen below consists of two tables: Payments and Products, with a total row count of 500k records. A description of each table is as follows:

Table 1: Payments
- PaymentAmount: The total amount paid by the customer for their subscription services.
- PaymentDate: The date when the payment was processed. This helps track payment consistency.
- CustomerIdentifier: A unique ID assigned to each customer for data linkage.
- PaymentMethod: Describes how the payment was made, e.g., credit card, mobile money, or cash.
- Gender: Indicates the customer's gender for demographic analysis.
- Race: Includes data for diversity and regional preferences.
- Province: The geographical location of the customer to assess regional sales performance.
- ProductID: Links the payment to a specific product in the Products Table.
- Age: The age of the customer to analyze trends across different age demographics.

Table 2: Products
- ProductID: A unique identifier for each service.
- Product: The name of the service, e.g., "CableMov," "CableSport,"
- Product Description: A summary of the product's features.

![image](https://github.com/user-attachments/assets/9aa428a9-5505-4786-96cf-a196c977d2aa)


## Insights Deep Dive
### Overall Trends:
- Cable Prime's total revenue for January to August 2019 time period is R. 69,919,674 with 142,938 total customers.
- Debit Order is the preferred choice of payment by customers with 122k customers using it. 
- White customers contribute the most towards overall sales, 40% -> (28M), and black customers 18M, 26% of sales.
- Gauteng region has a higher number of sales, 40M which is 57% of overall sales, followed by N/W/E Cape with 17% -> 12M sales.
- March had a peak in sales and June showed slight growth: 10.57M and 10.98M respectively.
- CableMax, CableMobi, and CableSport were top-selling product categories with 21M, 16M, and 13M total sales respectively.
- The number of female customers (96k) is twice as much as that of male customers (46k).
- Customer visits were relatively high during the week with most visits on Fridays and the least on Sundays.
- June, March, and April had pretty high sales with over 10M sales.
- June had the highest number of customer visits(82k), March and April following suit with 77k and 75k visits respectively.
- Middle Aged customers (35-54 years old) contribute 50% -> 35M of sales and Young Adult customers (25-34-year-olds) contribute twice as much as middle-aged customers 25% ->17M
  

### Monthly Revenue Contributions 
The revenue shows a steady performance between January to June (8.76M to 10.98M) with a steep drop in July and August which calls for investigation during these months to boost sales in similar periods in the future.

![image](https://github.com/user-attachments/assets/d9283bec-97f4-4b59-9a72-b35a139c2370)


### Product Category
CableMax, CableMobi, and CableSport were top-selling product categories with 21M, 16M, and 13M total sales respectively.

![image](https://github.com/user-attachments/assets/0b2a1cdb-c792-4fd9-b3ea-576e8c2a9f68)


### Regional Sales Performance
Gauteng drives most of the sales with 57% -> 40M of total sales with N/W/E Cape with 12M -> 17%. The remaining regions had no significant variations in sales, they had similar ranges.

![image](https://github.com/user-attachments/assets/61f1828d-d2fd-45fb-acc3-3de57b86efb7)


### Sales by Age Category
Middle-aged customers (35-54 years old) contribute 50% -> 35M of sales, and Young Adult customers (25-34-year-olds) contribute twice as much as middle-aged customers, 25% -> 17 M. Young adults have the growth potential, so marketing efforts can be dedicated to this group to increase engagement.
  
![image](https://github.com/user-attachments/assets/76ebc08e-7dea-4c15-a656-557e513e3330)


### Sales by Race
A significant majority of customers belong to the White (28M) sales and Black (18M) demographics, suggesting these groups are the primary focus of the business. 

![image](https://github.com/user-attachments/assets/c014720c-7932-4db2-b246-5be993c86e81)


### Customer Visits by Race
White customer demographics have a high number of customers (59k) which indicates frequent visits in this group with Black and Indian customers (35k and 22k customers respectively)
![image](https://github.com/user-attachments/assets/93cb25f4-44c9-41a7-94e8-3db9ffa7c737)


### Preferred Payment Method
Debit Order was the most preferred method of payment with 122k customers using it while Mobile App and USSD methods were not used as frequently.

![image](https://github.com/user-attachments/assets/aa9409bc-17ec-49fa-a269-fadb2956384d)


### Monthly Customer Visits
The number of customers increased steadily throughout the months until June, then experienced a significant drop in August with low turn-outs.

![image](https://github.com/user-attachments/assets/9478fc58-9c3a-44b4-867f-aa836358b33f)


### Daily Customer Visits through the Months
Fridays, Mondays, and Wednesdays had consistently high numbers of visits (65k and 61k respectively), while Sundays had lower visit counts. June, March, and April saw significant customer visits(81k, 76,k and 75k respectively)

![image](https://github.com/user-attachments/assets/082e4094-043c-400c-9bca-335c4c733a49)


### Recommendations:
- Improve dataset time period range the current data is limited therefore observations are based on the January to August 2019 period to have a wider range. 
- Expand Method of Payment: Encourage adoption of digital payment methods with promotions and improved ease of access.
- Optimize Pricing: Introduce affordable packages tailored to regions with lower sales (Kwazulu Natal, FreeState, and Mpumalanga) while also optimizing discounts or customer loyalty programs in regions with higher sales to retain customers and attract new customers.
- Targeted Marketing: Focus marketing efforts on black and white customers, the 25-34 demographic with streaming promotions.
  
#### Challenge:
Had a challenge in converting the payment date column (which is supposed to be a date), its value was stored as 20190626 to be in this format 2019-06-26 in SQL. Used Power BI for conversion
