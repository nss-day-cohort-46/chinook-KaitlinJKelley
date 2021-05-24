-- invoice_totals.sql: Provide a query that shows the Invoice Total, Customer name, Country and Sale Agent name 
-- for all invoices and customers.
Select i.InvoiceId, 
        i.Total, 
        c.FirstName || " " || c.LastName as Customer, 
        i.BillingCountry as Country,  
        e.FirstName || " " || e.LastName as SalesAgent 
From Invoice as i
Join Customer as c On c.CustomerId = i.CustomerId
Join Employee as e On e.EmployeeId = SupportRepId
Group By Customer;