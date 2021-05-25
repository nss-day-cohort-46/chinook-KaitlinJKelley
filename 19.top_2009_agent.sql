-- top_2009_agent.sql: Which sales agent made the most in sales in 2009?
-- Hint: Use the MAX function on a subquery.
Select e.FirstName, e.LastName, round(SUM(i.Total)) as total
From Employee e
Join Customer c On e.EmployeeId = c.SupportRepId
Join Invoice i On i.CustomerId = c.CustomerId
Where e.Title = "Sales Support Agent"
And strftime('%Y', i.InvoiceDate) is '2009'
Group By e.EmployeeId
Order By total DESC
Limit 1