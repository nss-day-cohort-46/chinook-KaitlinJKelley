-- top_media_type.sql: Provide a query that shows the most purchased Media Type.
Select m.*, Count(m.Name) as TimesUsed
From InvoiceLine il
Join Track t on t.TrackId = il.TrackId
Join Album al On al.AlbumId = t.AlbumId
Join MediaType m On m.MediaTypeId = t.MediaTypeId
Group By m.Name
Order By TimesUsed Desc
Limit 1