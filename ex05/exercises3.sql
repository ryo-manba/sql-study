-- 5.3 スカラ･サブクエリを用いたSELECT文
/**
  * 条件
  *  - 含む列は商品id、商品名、商品分類、販売単価、商品全体の販売単価
  **/

SELECT shohin_id,
       shohin_mei,
       shohin_bunrui,
       hanbai_tanka,
       (SELECT AVG(hanbai_tanka) FROM Shohin) AS hanbai_tanka_all
  FROM Shohin;
