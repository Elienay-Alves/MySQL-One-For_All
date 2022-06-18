SELECT u.user AS 'usuario', COUNT(h.music_id) AS 'qtde_musicas_ouvidas',
  ROUND(SUM(m.length_seconds) / 60, 2) AS 'total_minutos'
FROM
  SpotifyClone.users AS u
    INNER JOIN
  SpotifyClone.history AS h ON u.user_id = h.user_id
    INNER JOIN
  SpotifyClone.musics AS m ON m.music_id = h.music_id
GROUP BY u.user_id
ORDER BY u.user;
