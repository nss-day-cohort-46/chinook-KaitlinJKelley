-- top_country.sql: Which country's customers spent the most?
Select BC, Max(Total_Sales)
From (Select i.BillingCountry as BC, round(Sum(i.Total), 2) as Total_Sales
From Invoice i 
Group By i.BillingCountry)