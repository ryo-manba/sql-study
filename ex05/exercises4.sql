-- 5.4 相関サブクエリ
/**
  * 条件
  * - 商品分類ごとの平均販売単価を含むVIEWを作成する
  **/

CREATE VIEW AvgTankaByBunrui
AS
SELECT shohin_id,
       shohin_mei,
       shohin_bunrui,
       hanbai_tanka,
       (SELECT AVG(hanbai_tanka)
          FROM Shohin AS S2
         WHERE S1.shohin_bunrui = S2.shohin_bunrui
         GROUP BY S1.shohin_bunrui) AS avg_hanbai_tanka
 FROM Shohin AS S1;

-- 表示する
SELECT * FROM AvgTankaByBunrui;
