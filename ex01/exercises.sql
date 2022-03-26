CREATE TABLE Jyushoroku (
toroku_bango INTEGER NOT NULL,
namae        VARCHAR(128) NOT NULL,
jyusho       VARCHAR(256) NOT NULL,
tel_no       CHAR(10) ,
mail_address CHAR(20) ,
PRIMARY KEY (toroku_bango)
);

-- 後から主キーの追加もできる
-- ALTER TABLE Jyushoroku ADD PRIMARY KEY(toroku_bango);

-- 列の追加
ALTER TABLE Jyushoroku ADD COLUMN yubin_bango CHAR(8) NOT NULL;

-- テーブルを削除してから復元する
BEGIN;
DROP TABLE Jyushoroku;
ROLLBACK;

/* テーブル
    Column    |          Type          | Collation | Nullable | Default
--------------+------------------------+-----------+----------+---------
 toroku_bango | integer                |           | not null |
 namae        | character varying(128) |           | not null |
 jyusho       | character varying(256) |           | not null |
 tel_no       | character(10)          |           |          |
 mail_address | character(20)          |           |          |
 yubin_bango  | character(8)           |           | not null |
Indexes:
    "jyushoroku_pkey" PRIMARY KEY, btree (toroku_bango)
*/
