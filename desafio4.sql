SELECT DISTINCT(u.user) AS 'usuario',
  IF(MAX(h.play_history) > '2021-01-01',
    'Usuário ativo',
    'Usuário inativo')
  AS 'condicao_usuario'
FROM
  SpotifyClone.users AS u
    INNER JOIN
  SpotifyClone.history AS h ON u.user_id = h.user_id
GROUP BY h.user_id
ORDER BY u.user;
