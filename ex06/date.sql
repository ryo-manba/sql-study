-- CURRENT_DATE(現在の日付)
SELECT CURRENT_DATE;

-- CURRENT_TIME(現在の時間)
SELECT CURRENT_TIME;

-- CURRENT_TIMESTAMP(現在の日時)
SELECT CURRENT_TIMESTAMP;

-- EXTRACT(日付要素の切り出し)(日付要素 FROM 日付)
SELECT CURRENT_TIMESTAMP,
       EXTRACT(YEAR   FROM CURRENT_TIMESTAMP) AS year,
       EXTRACT(MONTH  FROM CURRENT_TIMESTAMP) AS month,
       EXTRACT(DAY    FROM CURRENT_TIMESTAMP) AS day,
       EXTRACT(HOUR   FROM CURRENT_TIMESTAMP) AS hour,
       EXTRACT(MINUTE FROM CURRENT_TIMESTAMP) AS minute,
       EXTRACT(SECOND FROM CURRENT_TIMESTAMP) AS second;
