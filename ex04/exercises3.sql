-- 4.3 他のテーブルのデータを集約してINSERTする

-- 商品差益テーブル
CREATE TABLE ShohinSaeki
(
shohin_id    CHAR(4) NOT NULL,
shohin_mei   VARCHAR(100) NOT NULL,
hanbai_tanka INTEGER,
shiire_tanka INTEGER,
saeki        INTEGER,
PRIMARY KEY(shohin_id)
);

-- 商品差益を求める(販売単価 - 仕入れ単価)
INSERT INTO ShohinSaeki (shohin_id, shohin_mei, hanbai_tanka, shiire_tanka, saeki)
SELECT shohin_id, shohin_mei, hanbai_tanka, shiire_tanka, (hanbai_tanka - shiire_tanka)
  FROM shohin;
