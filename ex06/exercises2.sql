-- 6.2 販売単価によって分類する
/**
  * 条件
  *  - 低額商品 : 販売単価 <= 1000
  *  - 中額商品 : 1001 <= 販売単価 <= 3000
  *  - 高額商品 : 3001 <= 販売単価
  **/
SELECT SUM(CASE WHEN hanbai_tanka <= 1000
                  THEN 1 ELSE 0 END) AS low_price,
       SUM(CASE WHEN hanbai_tanka >= 1001 AND hanbai_tanka <= 3000
                  THEN 1 ELSE 0 END) AS mid_price,
       SUM(CASE WHEN hanbai_tanka >= 3001
                  THEN 1 ELSE 0 END) AS high_price
  FROM Shohin;
