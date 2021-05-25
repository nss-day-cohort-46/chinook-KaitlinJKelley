-- line_item_track.sql: Provide a query that includes the purchased track name with each invoice line item.
Select l.InvoiceLineId,  t.Name as Track
from InvoiceLine as l
Join Track as t On l.TrackId = t.TrackId
Order By l.InvoiceLineId