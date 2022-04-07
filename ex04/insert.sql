INSERT INTO ShohinIns (shohin_id, shohin_mei, shohin_bunrui, hanbai_tanka, shiire_tanka, torokubi) VALUES ('0001', 'Tシャツ', '衣服', 1000, 500, '2009-09-20');

-- 通常のINSERT
INSERT INTO ShohinIns VALUES ('0002', '穴あけパンチ', '事務用品', 500, 320, '2009-09-11');
INSERT INTO ShohinIns VALUES ('0003', 'カッターシャツ', '衣服', 4000, 2800, NULL);
INSERT INTO ShohinIns VALUES ('0004', '包丁', 'キッチン用品', 3000, 2800, '2009-09-20');

-- 複数行INSERT(Oracle以外)
INSERT INTO ShohinIns VALUES ('0002', '穴あけパンチ', '事務用品', 500, 320, '2009-09-11'),
('0003', 'カッターシャツ', '衣服', 4000, 2800, NULL),
('0004', '包丁', 'キッチン用品', 3000, 2800, '2009-09-20');

-- 列リストなし
INSERT INTO ShohinIns VALUES ('0005', '圧力鍋', 'キッチン用品',  6800, 5000, '2009-01-15');

-- 商品テーブルのデータShohinCopyテーブルにコピーする
INSERT INTO ShohinCopy (shohin_id, shohin_mei, shohin_bunrui, hanbai_tanka, shiire_tanka, torokubi)
SELECT shohin_id, shohin_mei, shohin_bunrui, hanbai_tanka, shiire_tanka, torokubi
  FROM Shohin;

-- 他のテーブルのデータを集約して挿入する
INSERT INTO ShohinBunrui (shohin_bunrui, sum_hanbai_tanka, sum_shiire_tanka)
SELECT shohin_bunrui, SUM(hanbai_tanka), SUM(shiire_tanka)
  FROM Shohin
GROUP BY shohin_bunrui;
