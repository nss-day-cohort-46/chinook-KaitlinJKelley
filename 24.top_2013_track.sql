-- top_2013_track.sql: Provide a query that shows the most purchased track of 2013.
Select track, Max(TimesPurchased) as MaxTimes
From (Select t.Name as track, Count(t.Name) as TimesPurchased
From InvoiceLine il
Join Track t on t.TrackId = il.TrackId
Join Invoice i On i.InvoiceId = il.InvoiceId
Where i.InvoiceDate Like '%2013%'
Group By t.Name) 