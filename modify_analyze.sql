-- 使用 practice_database.db

-- String Function: Concatenate, substr, Trim, Upper, Lower

-- Concatenate 將不同欄位的資訊利用||結合
-- SELECT name, age, name||'('||age||')' as combine FROM Students;

-- Substr 回傳指定位置的字串
-- SELECT name, substr(name,2,4)from Students;

-- Trim string 去除空白或空值
-- SELECT
-- ('            Hey          ') as original,
-- trim('                 Hey       ') as trimmed,
-- rtrim('                Hey                    ') as trim_right,
-- ltrim('                Hey                    ') as trim_left;

-- Upper 全部變成大寫
-- Lower 全部變成小寫
-- SELECT upper(name), lower(name) FROM Students;

-- 建立表格
-- CREATE TABLE Student_Birth(
-- name     TEXT PRIMARY KEY,
-- birthday TEXT NOT NULL);
-- 新增資料
-- INSERT INTO Student_Birth(name, birthday) VALUES
-- ('Fred', '1998-08-29'),
-- ('Alice', '1994.04.13'),
-- ('Jack', '2000-07-03');

-- strftime 回傳特定的日期或時間
-- SELECT 
-- name,
-- birthday,
-- strftime('%Y',birthday) as year,
-- strftime('%m',birthday) as month,
-- strftime('%d',birthday) as day
-- FROM Student_Birth;

-- now 回傳現在日期
-- SELECT 
-- date('now') as today,
-- strftime('%Y','now') as year,
-- strftime('%m','now') as month,
-- strftime('%d','now') as day,
-- strftime('%H','now') as hour,
-- strftime('%M','now') as minute,
-- strftime('%S','now') as second,
-- strftime('%s','now') as millisecond;

-- UPDATE 修正錯誤
-- UPDATE Student_Birth
-- SET birthday = replace(birthday, '.', '-')
-- WHERE birthday like '%.%';
 
-- 計算年齡
-- SELECT *,strftime('%Y','now')-birthday as age FROM Student_Birth;

-- CASE statement 條件表達式
-- SELECT *,
--  CASE grade
-- 	WHEN 'A' THEN 'Very good!!!'
-- 	WHEN 'B' THEN 'Good'
-- 	WHEN 'C' THEN 'Do better'
-- 	WHEN 'D' THEN 'Bad'
-- 	ELSE 'Giving up is also an option'
--  END grade_expression
-- FROM Students;

-- View 簡化複雜的查詢、可讀性、訪問控制
-- CREATE VIEW table_view as 
-- SELECT * from Students;
