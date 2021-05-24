-- brazil_customers_invoices.sql: Provide a query showing the Invoices of customers who are from Brazil. 
-- The resultant table should show the customer's full name, Invoice ID, Date of the invoice and billing country.
select FirstName, LastName, InvoiceId, InvoiceDate, BillingCountry from Invoice
Join Customer On Customer.CustomerId = Invoice.CustomerId
Where Country = "Brazil";