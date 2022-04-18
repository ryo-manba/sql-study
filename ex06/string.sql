-- DDL : テーブル作成
CREATE TABLE SampleStr
(
str1 VARCHAR(40),
str2 VARCHAR(40),
str3 VARCHAR(40)
);

-- DML : データ登録
BEGIN TRANSACTION;

INSERT INTO SampleStr (str1, str2, str3) VALUES ('あいう', 'えお', NULL);
INSERT INTO SampleStr (str1, str2, str3) VALUES ('abc', 'def', NULL);
INSERT INTO SampleStr (str1, str2, str3) VALUES ('山田', '太郎', 'です');
INSERT INTO SampleStr (str1, str2, str3) VALUES ('aaa', NULL, NULL);
INSERT INTO SampleStr (str1, str2, str3) VALUES (NULL, 'あああ', NULL);
INSERT INTO SampleStr (str1, str2, str3) VALUES ('@!#$%', NULL, NULL);
INSERT INTO SampleStr (str1, str2, str3) VALUES ('ABC', NULL, NULL);
INSERT INTO SampleStr (str1, str2, str3) VALUES ('aBC', NULL, NULL);
INSERT INTO SampleStr (str1, str2, str3) VALUES ('abc太郎', 'abc', 'ABC');
INSERT INTO SampleStr (str1, str2, str3) VALUES ('abcdefabc', 'abc', 'ABC');
INSERT INTO SampleStr (str1, str2, str3) VALUES ('ミックマック', 'ッ', 'っ');

COMMIT;

-- DML : データ表示
SELECT * FROM SampleStr;

-- ||(連結)
SELECT str1, str2, str1 || str2 AS str_concat
  FROM SampleStr;

SELECT str1, str2, str3, str1 || str2 || str3 AS str_concat
  FROM SampleStr
 WHERE str1 = '山田';

-- LENGTH(文字列長)
SELECT str1, LENGTH(str1) AS len_str
  FROM SampleStr;

-- LOWER(小文字化),
SELECT str1, LOWER(str1) AS low_str
  FROM SampleStr
 WHERE str1 IN ('ABC', 'aBC', 'abc', '山田');

--  UPPER(大文字化)
SELECT str1, UPPER(str1) AS low_str
  FROM SampleStr
 WHERE str1 IN ('ABC', 'aBC', 'abc', '山田');

-- REPLACE(文字列の置換), (対象、置換前、置換後)
SELECT str1, str2, str3, REPLACE(str1, str2, str3) AS rep_str
  FROM SampleStr;

-- SUBSTRING(文字列の切り出し)、(対象文字列 FROM 切り出し開始位置 FOR 切り出す文字数)
SELECT str1, SUBSTRING(str1 FROM 3 FOR 2) AS sub_str
  FROM SampleStr;
