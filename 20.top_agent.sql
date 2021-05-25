-- top_agent.sql: Which sales agent made the most in sales over all?
Select FirstName, LastName, Max(total)
From (Select e.FirstName as FirstName, e.LastName as LastName, round(SUM(i.Total), 2) as total
From Employee e
Join Customer c On e.EmployeeId = c.SupportRepId
Join Invoice i On i.CustomerId = c.CustomerId
Where e.Title = "Sales Support Agent"
Group By e.EmployeeId)