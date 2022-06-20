SELECT m.music AS 'nome', COUNT(h.music_id) AS 'reproducoes'
FROM SpotifyClone.plans AS p INNER JOIN
  SpotifyClone.users AS u ON p.plan_id = u.plan_id INNER JOIN
  SpotifyClone.history AS h ON u.user_id = h.user_id INNER JOIN
  SpotifyClone.musics AS m ON h.music_id = m.music_id
WHERE p.plan_id IN (1 , 4)
GROUP BY m.music
ORDER BY m.music;
