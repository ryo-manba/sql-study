-- 3.1 文法を修正する

-- 間違えたSQL文
SELECT shohin_id, SUM(shohin_mei)
  FROM Shohin
GROUP BY shohin_bunrui
 WHERE torokubi > '2009-09-01';

-- SUM関数は数値列にしか使えない
-- GROUP BYにSELECTしたものを含める必要がある
-- GROUP BYはWHEREの後ろに書く
-- WHEREは必ずFROMの後ろに書く
