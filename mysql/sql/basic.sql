-- milktea database를 사용하겠다.
USE milktea;

-- 중요 *** 테이블 수정 전에 항상 꼭 반드시 진짜로 ER부터 수정

-- 전체 컬럼 조회
SELECT * FROM member2;

-- 컬럼 추가
ALTER TABLE member2 ADD COLUMN nickname VARCHAR(45);
ALTER TABLE member2 ADD COLUMN name VARCHAR(45);
ALTER TABLE member2 ADD COLUMN nameEng VARCHAR(45) AFTER name;
ALTER TABLE member2 ADD COLUMN id VARCHAR(45);
ALTER TABLE member2 ADD COLUMN dob INT;

-- 컬럼 변경
ALTER TABLE member2 MODIFY COLUMN nickname VARCHAR(100);

-- 컬럼 이름 변경
ALTER TABLE member2 CHANGE COLUMN nickname nick VARCHAR(45);
ALTER TABLE member2 CHANGE COLUMN nameEng nameKor VARCHAR(45);

-- 컬럼 삭제
ALTER TABLE member2 DROP COLUMN dob;

-- row 삭제
DELETE FROM member WHERE immseq = 1;

-- commit / rollback