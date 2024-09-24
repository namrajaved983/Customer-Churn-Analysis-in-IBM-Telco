SELECT 
    *
FROM
    sql_portfolio;
-- Query number 1
SELECT 
    COUNT('Customer ID')
FROM
    sql_portfolio;
SELECT 
    Age,
    Gender,
    Contract,
    AVG(`Monthly Charge`) AS Average_Monthly_Charges
FROM 
    sql_portfolio
WHERE 
    `Customer Status` = 'Churned'
GROUP BY 
    Age, Gender, Contract
ORDER BY 
    Average_Monthly_Charges desc
    limit 5;
    
-- Query number 2
-- What are the feedback or complaints from those churned customers
SELECT 
    `Churn Reason`, 
    COUNT(*) AS Complaint_Count
FROM 
    sql_portfolio
WHERE 
    `Churn Label` = 'Yes'
GROUP BY 
    `Churn Reason`
ORDER BY 
    Complaint_Count DESC;
    SELECT 
    `Customer ID`, 
    `Churn Reason`, 
    `Satisfaction Score`, 
    Offer, 
    `Monthly Charge`, 
    Age, 
    Gender, 
    Contract
FROM 
    sql_portfolio
WHERE 
    `Churn Label` = 'Yes';
  
-- Query number 3
-- How does the payment method influence churn behavior?

SELECT 
	`Payment Method`,
   count(*) as payment_method
FROM 
    sql_portfolio
WHERE 
    `Customer Status` = 'Churned'
GROUP BY 
  `Payment Method`;
-- Customers who need to manually make payments (e.g., checks or cash) may forget or delay payments, leading to potential churn.
-- Analysis
select Married,
count(*) as married
from sql_portfolio
WHERE 
    `Customer Status` = 'Churned'
GROUP BY 
  Married;
SELECT 
   count(`Customer ID`)
FROM 
    sql_portfolio
WHERE 
    `Customer Status` = 'Churned' AND `Married`="No"
GROUP BY 
 `Customer ID` 
 ;

