-- 4.4 テーブルの更新

-- 1. カッターシャツの販売単価を4000円から3000円に引き下げる
UPDATE ShohinSaeki
   SET hanbai_tanka = 3000
 WHERE shohin_mei = 'カッターシャツ';

-- 2. カッターシャツの差益を再計算する
UPDATE ShohinSaeki
   SET saeki = hanbai_tanka - shiire_tanka
 WHERE shohin_mei = 'カッターシャツ';
