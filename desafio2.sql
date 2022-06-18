SELECT COUNT(DISTINCT m.music) AS 'cancoes',
  COUNT(DISTINCT a.artist) AS 'artistas',
  COUNT(DISTINCT al.album) AS 'albuns'
FROM SpotifyClone.musics AS m,
  SpotifyClone.artists AS a,
  SpotifyClone.albums AS al;
