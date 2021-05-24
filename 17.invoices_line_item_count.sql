-- invoices_line_item_count.sql: Provide a query that shows all Invoices but includes the # of invoice line items.
Select i.InvoiceId, Count(il.InvoiceLineId) as Line_Items 
from InvoiceLine il
Join Invoice i On i.InvoiceId = il.InvoiceId
Group By i.InvoiceId;