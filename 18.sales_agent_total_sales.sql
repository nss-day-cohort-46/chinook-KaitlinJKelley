-- sales_agent_total_sales.sql: Provide a query that shows total sales made by each sales agent.
Select e.FirstName, e.LastName, round(SUM(i.Total), 2)
From Employee e
Join Customer c On e.EmployeeId = c.SupportRepId
Join Invoice i On i.CustomerId = c.CustomerId
Where e.Title = "Sales Support Agent"
Group By e.EmployeeId;