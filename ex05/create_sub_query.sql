-- 1. 商品テーブルから商品分類ごとの合計数を集計するビュー
CREATE VIEW ShohinSum (shohin_bunrui, cnt_shohin)
AS
SELECT shohin_bunrui, COUNT(*)
  FROM Shohin
GROUP BY shohin_bunrui;

-- 2. ビューが作成されていることの確認
SELECT shohin_bunrui, cnt_shohin
  FROM ShohinSum;

-- 上記1,2と同じことをサブクエリを使って表現する(ビュー定義のSELECT文をFROMに書く)
SELECT shohin_bunrui, cnt_shohin
  FROM (SELECT shohin_bunrui, COUNT(*) AS cnt_shohin
          FROM Shohin
         GROUP BY shohin_bunrui) AS ShohinSum;

-- スカラ･サブクエリの実行
SELECT shohin_id, shohin_mei, hanbai_tanka
  FROM Shohin
 WHERE hanbai_tanka > (SELECT AVG(hanbai_tanka)
                         FROM Shohin);

-- 相関サブクエリ
SELECT shohin_bunrui, shohin_mei, hanbai_tanka
  FROM Shohin AS S1
 WHERE hanbai_tanka > (SELECT AVG(hanbai_tanka)
                         FROM Shohin AS S2
                        WHERE S1.shohin_bunrui = S2.shohin_bunrui
                        GROUP BY shohin_bunrui);
