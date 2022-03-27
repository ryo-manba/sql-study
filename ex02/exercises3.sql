-- 2.3 演算の置き換え
SELECT shohin_mei, hanbai_tanka, shiire_tanka
  FROM Shohin
 WHERE hanbai_tanka - shiire_tanka >= 500;

SELECT shohin_mei, hanbai_tanka, shiire_tanka
  FROM Shohin
 WHERE NOT hanbai_tanka - shiire_tanka < 500;

SELECT shohin_mei, hanbai_tanka, shiire_tanka
  FROM Shohin
 WHERE shiire_tanka + 500 <= hanbai_tanka;
