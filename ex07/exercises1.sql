-- 7.1 SELECT文の結果
SELECT * FROM Shohin
UNION
SELECT * FROM Shohin
INTERSECT
SELECT * FROM Shohin
ORDER BY shohin_id;

-- Shohinテーブル同士の和集合とShohinテーブルの共通部分を抜き出すので、
-- Shohinテーブルがそのまま出力される
