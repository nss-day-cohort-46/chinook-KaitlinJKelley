-- top_3_artists.sql: Provide a query that shows the top 3 best selling artists.
Select ar.*, il.*, Count(ar.Name) as TimesPurchased
From InvoiceLine il
Join Track t on t.TrackId = il.TrackId
Join Album al On al.AlbumId = t.AlbumId
Join Artist ar On ar.ArtistId = al.ArtistId
Group By ar.Name
Order By TimesPurchased Desc
Limit 3