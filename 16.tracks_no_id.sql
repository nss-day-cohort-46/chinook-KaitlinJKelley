-- tracks_no_id.sql: Provide a query that shows all the Tracks, but displays no IDs. 
-- The result should include the Album name, Media type and Genre.

Select t.Name as Track, a.Title as Album_Title, m.Name as Media_Type, g.Name as Genre from Track t
Join Album a On a.AlbumId = t.AlbumId
Join MediaType m On m.MediaTypeId = t.MediaTypeId
Join Genre g On g.GenreId = t.GenreId