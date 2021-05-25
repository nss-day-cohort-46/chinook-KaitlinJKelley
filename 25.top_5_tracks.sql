-- top_5_tracks.sql: Provide a query that shows the top 5 most purchased tracks over all.
Select t.Name as track, Count(t.Name) as TimesPurchased
From InvoiceLine il
Join Track t on t.TrackId = il.TrackId
Join Invoice i On i.InvoiceId = il.InvoiceId
Group By t.Name
Order By TimesPurchased Desc
Limit 5