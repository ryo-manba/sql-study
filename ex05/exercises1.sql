-- 5.1 ビューの作成
/**
  * 条件
  *  - 販売単価が1000円以上
  *  - 登録日が2009年9月20日
  *  - 含む列は商品名、販売単価、登録日
  **/

CREATE VIEW ViewRenshu5_1 (shohin_mei, hanbai_tanka, torokubi)
AS
SELECT shohin_mei, hanbai_tanka, torokubi
  FROM Shohin
 WHERE hanbai_tanka >= 1000
   AND torokubi = '2009-09-20';

-- 表示する
SELECT * FROM ViewRenshu5_1;
