-- 2つのテーブルを内部結合する
SELECT TS.tenpo_id, TS.tenpo_mei, TS.shohin_id, S.shohin_mei, S.hanbai_tanka
  FROM TenpoShohin AS TS INNER JOIN Shohin AS S
    ON TS.shohin_id = S.shohin_id;

-- 内部結合とWEHREの組み合わせ
SELECT TS.tenpo_id, TS.tenpo_mei, TS.shohin_id, S.shohin_mei, S.hanbai_tanka
  FROM TenpoShohin AS TS INNER JOIN Shohin AS S
    ON TS.shohin_id = S.shohin_id
 WHERE TS.tenpo_id = '000A';

-- 2つのテーブルを外部結合する(以下2つは同じ意味)
SELECT TS.tenpo_mei, TS.tenpo_id, S.shohin_id, S.shohin_mei, S.hanbai_tanka
  FROM TenpoShohin AS TS RIGHT OUTER JOIN Shohin AS S
    ON TS.shohin_id = S.shohin_id;

SELECT TS.tenpo_mei, TS.tenpo_id, S.shohin_id, S.shohin_mei, S.hanbai_tanka
  FROM Shohin AS S LEFT OUTER JOIN TenpoShohin AS TS
    ON TS.shohin_id = S.shohin_id;

-- 3つのテーブルを内部結合する
SELECT TS.tenpo_id, TS.tenpo_mei, TS.shohin_id, S.shohin_mei, S.hanbai_tanka, ZS.zaiko_suryo
  FROM TenpoShohin AS TS INNER JOIN Shohin AS S
    ON TS.shohin_id = S.shohin_id
          INNER JOIN ZaikoShohin AS ZS
             ON TS.shohin_id = ZS.shohin_id
 WHERE ZS.souko_id = 'S001';

-- 2つのテーブルをクロス結合する
SELECT TS.tenpo_id, TS.tenpo_mei, TS.shohin_id, S.shohin_mei
  FROM TenpoShohin AS TS CROSS JOIN Shohin AS S;
