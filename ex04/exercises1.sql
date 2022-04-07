-- 4.1 トランザクション中のデータ

-- Shohinテーブル削除
TRUNCATE Shohin;

-- Aさん
BEGIN TRANSACTION;
INSERT INTO Shohin VALUES ('0001', 'Tシャツ', '衣服', 1000, 500, '2008-09-20');
INSERT INTO Shohin VALUES ('0002', '穴あけパンチ', '事務用品', 500, 320, '2008-09-11');
INSERT INTO Shohin VALUES ('0003', 'カッターシャツ', '衣服', 4000, 2800, NULL);

-- Bさん
SELECT * FROM Shohin;
-- AさんがINSERTしたデータは表示されない
