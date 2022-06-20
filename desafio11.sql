SELECT music AS 'nome_musica',
  CASE
    WHEN music LIKE '%Streets%' THEN REPLACE(music, 'Streets', 'Code Review')
    WHEN music LIKE '%Her Own%' THEN REPLACE(music, 'Her Own', 'Trybe')
    WHEN music LIKE '%Inner Fire%' THEN REPLACE(music, 'Inner Fire', 'Project')
    WHEN music LIKE '%Silly%' THEN REPLACE(music, 'Silly', 'Nice')
    WHEN music LIKE '%Circus%' THEN REPLACE(music, 'Circus', 'Pull Request')
    ELSE music
  END AS 'novo_nome'
FROM SpotifyClone.musics
WHERE music LIKE '%Streets%'
OR music LIKE '%Her Own%'
OR music LIKE '%Inner Fire%'
OR music LIKE '%Silly%'
OR music LIKE '%Circus%'
ORDER BY music;
