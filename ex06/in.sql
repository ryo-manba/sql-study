SELECT shohin_mei, hanbai_tanka
  FROM Shohin
 WHERE shohin_id IN (SELECT shohin_id
                     FROM TempoShohin
                     WHERE tempo_id = '000A');

SELECT shohin_mei, hanbai_tanka
  FROM Shohin AS S
 WHERE EXISTS (SELECT *
                FROM TempoShohin AS TS
               WHERE TS.tempo_id = '000A'
                 AND TS.shohin_id = S.shohin_id);

