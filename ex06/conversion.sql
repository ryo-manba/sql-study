-- CAST(型変換)
SELECT CAST('0001' AS INTEGER) AS int_col;
SELECT CAST('2022-04-12' AS DATE) AS date_col;

-- COALESCE(最初にNULLでない値を返す)
SELECT COALESCE(NULL, 1) AS col_1,
       COALESCE(NULL, 'test', NULL) AS col_2,
       COALESCE(NULL, NULL, '2022-04-12') AS col_3;

SELECT COALESCE(str2, 'NULLです')
  FROM SampleStr;
