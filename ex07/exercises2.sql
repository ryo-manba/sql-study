-- 7.2 外部結合でNULLを'不明'に置き換える

SELECT CASE WHEN TS.tenpo_mei IS NULL THEN '不明' ELSE TS.tenpo_mei END,
       CASE WHEN TS.tenpo_id IS NULL THEN '不明' ELSE TS.tenpo_id END,
       S.shohin_id,
       S.shohin_mei,
       S.hanbai_tanka
  FROM TenpoShohin AS TS RIGHT OUTER JOIN Shohin AS S
    ON TS.shohin_id = S.shohin_id
ORDER BY TS.tenpo_id, shohin_id;
