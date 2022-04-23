-- 商品分類別に販売単価でランキング表を作る
SELECT shohin_mei, shohin_bunrui, hanbai_tanka,
       RANK() OVER (PARTITION BY shohin_bunrui
                        ORDER BY hanbai_tanka) AS ranking
FROM Shohin;

-- DENSE_RANK: 後続の順位が飛ばない
-- ROW_NUMBER: 一意な連番を付与する
SELECT shohin_mei, shohin_bunrui, hanbai_tanka,
       RANK()        OVER (ORDER BY hanbai_tanka) AS ranking,
       DENSE_RANK() OVER (ORDER BY hanbai_tanka) AS dense_ranking,
       ROW_NUMBER()    OVER (ORDER BY hanbai_tanka) AS row_num
FROM Shohin;

-- SUMをウィンドウ関数として使う
SELECT shohin_id, shohin_mei, hanbai_tanka,
   SUM (hanbai_tanka) OVER (ORDER BY shohin_id) AS current_sum
  FROM Shohin;

-- AVGをウィンドウ関数として使う
SELECT shohin_id, shohin_mei, hanbai_tanka,
   AVG (hanbai_tanka) OVER (ORDER BY shohin_id) AS current_avg
  FROM Shohin;

-- 移動平均を算出する
-- 集計対象のレコードを直近3行にする
SELECT shohin_id, shohin_mei, hanbai_tanka,
       AVG (hanbai_tanka) OVER (ORDER BY shohin_id
                                 ROWS 2 PRECEDING) AS moving_avg
  FROM Shohin;

-- 前後の行を含める
SELECT shohin_id, shohin_mei, hanbai_tanka,
       AVG (hanbai_tanka) OVER (ORDER BY shohin_id
                                 ROWS BETWEEN 1 PRECEDING AND
                                 1 FOLLOWING) AS moving_avg
  FROM Shohin;

-- 結果のレコード順序を保証する
SELECT shohin_id, shohin_mei, hanbai_tanka,
       RANK () OVER (ORDER BY hanbai_tanka) AS ranking
  FROM Shohin
ORDER BY ranking;
