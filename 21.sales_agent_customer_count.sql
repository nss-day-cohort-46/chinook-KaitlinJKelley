-- sales_agent_customer_count.sql: Provide a query that shows the count of customers assigned to each sales agent.
Select e.FirstName, e.LastName, Count(c.CustomerId)
From Customer c
Join Employee e On e.EmployeeId = c.SupportRepId
Where e.Title = "Sales Support Agent"
Group By e.EmployeeId