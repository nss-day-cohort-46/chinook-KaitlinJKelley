-- line_items_per_invoice.sql: Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for each Invoice. 
-- HINT: GROUP BY
Select i.InvoiceId, Count(*) 
from InvoiceLine as l
Join Invoice as i On l.InvoiceId = i.InvoiceId
Group By i.InvoiceId;