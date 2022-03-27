-- 2.2 NULLと演算を行っているので何も出力されない
SELECT *
  FROM Shohin
 WHERE shiire_tanka = NULL;

SELECT *
  FROM Shohin
 WHERE shiire_tanka <> NULL;

SELECT *
  FROM Shohin
 WHERE shohin_mei > NULL;
