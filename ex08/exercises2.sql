-- 8.2 登録日の昇順に並べた場合の、各日付時点の販売単価の合計金額を求める
-- 登録日がNULLのレコードが一番最初に来るようにする
SELECT torokubi, shohin_mei, hanbai_tanka,
       SUM(hanbai_tanka) OVER (ORDER BY torokubi NULLS FIRST) AS current_sum_tanka
  FROM Shohin;
