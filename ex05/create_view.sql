-- 商品テーブルから商品分類ごとの合計数を集計するビュー
CREATE VIEW ShohinSum (shohin_bunrui, cnt_shohin)
AS
SELECT shohin_bunrui, COUNT(*)
  FROM Shohin
GROUP BY shohin_bunrui;

-- ビューからビューを作成する
CREATE VIEW ShohinJim (shohin_bunrui, cnt_shohin)
AS
SELECT shohin_bunrui, cnt_shohin
  FROM ShohinSum
 WHERE shohin_bunrui = '事務用品';

-- 更新可能なビューの作成(集約関数などを使っていない)
CREATE VIEW ShohinJim (shohin_id, shohin_mei, shohin_bunrui, hanbai_tanka, shiire_tanka, torokubi)
AS
SELECT *
  FROM Shohin
 WHERE shohin_bunrui = '事務用品';

-- PostgreSQLでビューへの更新を許可する
CREATE OR REPLACE RULE insert_rule
AS ON INSERT
TO ShohinJim DO INSTEAD
INSERT INTO Shohin VALUES
(
    new.shohin_id,
    new.shohin_mei,
    new.shohin_bunrui,
    new.hanbai_tanka,
    new.shiire_tanka,
    new.torokubi
);

-- ビューに対してINSERT文実行する(この場合商品テーブルが更新される)
INSERT INTO ShohinJim VALUES ('0010', '印鑑', '事務用品', 95, 10, '2009-11-30');
