-- 8.1 SELECT文の結果を予測する
SELECT shohin_id, shohin_mei, hanbai_tanka,
       MAX (hanbai_tanka) OVER (ORDER BY shohin_id) AS current_max_tanka
  FROM Shohin;

-- 商品idを昇順に並べて、現在の行までの最大の販売単価を求める
