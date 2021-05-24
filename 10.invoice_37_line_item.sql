-- invoice_37_line_item_count.sql: Looking at the InvoiceLine table, provide a query that COUNTs 
-- the number of line items for Invoice ID 37
Select Count(*) 
from InvoiceLine as l
Join Invoice as i On l.InvoiceId = i.InvoiceId
Where i.InvoiceId = 37;