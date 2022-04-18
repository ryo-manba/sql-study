-- コピー用の商品テーブル作成
CREATE TABLE Shohin2
(
shohin_id     CHAR(4)      NOT NULL,
shohin_mei    VARCHAR(100) NOT NULL,
shohin_bunrui VARCHAR(32)  NOT NULL,
hanbai_tanka  INTEGER      ,
shiire_tanka  INTEGER      ,
torokubi      DATE         ,
PRIMARY KEY (shohin_id)
);

-- データの挿入
BEGIN TRANSACTION;
INSERT INTO Shohin2 VALUES ('0001', 'Tシャツ', '衣服', 1000, 500, '2008-09-20');
INSERT INTO Shohin2 VALUES ('0002', '穴あけパンチ', '事務用品', 500, 320, '2009-09-11');
INSERT INTO Shohin2 VALUES ('0003', 'カッターシャツ', '衣服', 4000, 2800, NULL);
INSERT INTO Shohin2 VALUES ('0009', '手袋', '衣服', 800, 500, NULL);
INSERT INTO Shohin2 VALUES ('0010', 'やかん', 'キッチン用品', 2000, 1700, '2009-09-20');
COMMIT;

-- UNIONによるテーブルの足し算
SELECT shohin_id, shohin_mei
  FROM Shohin
UNION
SELECT shohin_id, shohin_mei
  FROM Shohin2
ORDER BY shohin_id;

-- INTERSECTによるテーブル共通部分の選択
SELECT shohin_id, shohin_mei
  FROM Shohin
INTERSECT
SELECT shohin_id, shohin_mei
  FROM Shohin2
ORDER BY shohin_id;

-- EXCEPTによるレコードの引き算
SELECT shohin_id, shohin_mei
  FROM Shohin
EXCEPT
SELECT shohin_id, shohin_mei
  FROM Shohin2
ORDER BY shohin_id;

