-- line_item_track_artist.sql: Provide a query that includes the purchased track name AND artist name with each invoice line item.
Select l.InvoiceLineId,  t.Name as Track, ar.Name as Artist
from InvoiceLine as l
Join Track as t On l.TrackId = t.TrackId
Join Album as al On al.AlbumId = t.AlbumId
Join Artist as ar On ar.ArtistId = al.ArtistId
Order By l.InvoiceLineId