SELECT a.artist AS 'artista', al.album FROM SpotifyClone.artists AS a INNER JOIN
  SpotifyClone.albums AS al ON a.artist_id = al.artist_id
WHERE a.artist = 'Walter Phoenix';
