SELECT a.artist AS 'artista', al.album, COUNT(au.artist_id) AS 'seguidores'
FROM SpotifyClone.artists AS a INNER JOIN
  SpotifyClone.albums AS al ON a.artist_id = al.artist_id INNER JOIN
  SpotifyClone.following_artists AS au ON al.artist_id = au.artist_id
GROUP BY a.artist , al.album
ORDER BY seguidores DESC , a.artist , al.album;
