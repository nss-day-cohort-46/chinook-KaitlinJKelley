-- playlists_track_count.sql: Provide a query that shows the total number of tracks in each playlist. 
-- The Playlist name should be include on the resulant table
Select Count(*), plt.PlayListId From Playlist as pl
Join PlaylistTrack as plt On plt.PlayListId = pl.PlayListId
Join Track as t on t.TrackId = plt.TrackId
Group By plt.PlayListId;