-- 3.2 販売単価の合計が仕入れ単価の合計の1.5倍より大きい商品分類を求める
SELECT shohin_bunrui, SUM(hanbai_tanka), SUM(shiire_tanka)
  FROM Shohin
GROUP BY shohin_bunrui
HAVING SUM(hanbai_tanka) > SUM(shiire_tanka) * 1.5;
