-- sales_agent_invoices.sql: Provide a query that shows the invoices associated with each sales agent. 
-- The resultant table should include the Sales Agent's full name.
Select e.EmployeeId, e.FirstName, e.LastName, group_concat(i.InvoiceId) From Invoice as i
Join Customer as c On c.CustomerId = i.CustomerId
Join Employee as e On e.EmployeeId = SupportRepId
Group By e.EmployeeId;