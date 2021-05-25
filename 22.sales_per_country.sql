-- sales_per_country.sql: Provide a query that shows the total sales per country.
Select i.BillingCountry, round(Sum(i.Total), 2) as Total_Sales
From Invoice i 
Group By i.BillingCountry