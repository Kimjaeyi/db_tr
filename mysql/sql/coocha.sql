use milktea;

-- 로그인
SELECT id, name, dob 
FROM member 
where id = "coocha" and pwd="12345"
;

SELECT id, name, dob
FROM member 
where id = "aaa" and pwd="000"
;

SELECT id, name, dob
FROM member 
where id = "bbb" and pwd="111"
;

SELECT id, name, dob
FROM member 
where id = "ccc" and pwd="222"
;

SELECT id, name, dob
FROM member 
where id = "eee" and pwd="333"
;

SELECT id, name, dob
FROM member 
where id = "rrr" and pwd="444"
;

SELECT id, name, dob
FROM member 
where id = "hhh" and pwd="555"
;

SELECT id, name, dob
FROM member 
where id = "iii" and pwd="666"
;

SELECT id, name, dob
FROM member 
where id = "jjj" and pwd="777"
;

SELECT id, name, dob
FROM member 
where id = "ooo" and pwd="888"
;

-- 회원가입
INSERT INTO member (
	id, 
    pwd, 
    name, 
    dob, 
    phone, 
    email,
    zipcode,
    address,
    addressdetail
    ) 
    VALUES (
    "coocha",
    12345,
    "manager",
    '1990-05-06',
    12341234,
    "coocha@gmail.com",
    13579,
    "중구",
    "무교동"
    )
;

INSERT INTO member (
	id, 
    pwd, 
    name, 
    dob, 
    phone, 
    email,
    zipcode,
    address,
    addressdetail
    ) 
    VALUES (
    "aaa",
    000,
    "apple",
    '1987-04-30',
    12345678,
    "aaa@naver.com",
    15064,
    "광진구",
    "자양동"
    )
;

INSERT INTO member (
	id, 
    pwd, 
    name, 
    dob, 
    phone, 
    email,
    zipcode,
    address,
    addressdetail
    ) 
    VALUES (
    "bbb",
    111,
    "banana",
    '2001-11-07',
    22223333,
    "bbb@naver.com",
    11912,
    "구리시",
    "인창동"
    )
;

INSERT INTO member (
	id, 
    pwd, 
    name, 
    dob, 
    phone, 
    email,
    zipcode,
    address,
    addressdetail
    ) 
    VALUES (
    "ccc",
    222,
    "coffee",
    '1995-06-29',
    33334444,
    "ccc@naver.com",
    11814,
    "의정부시",
    "민락동"
    )
;

INSERT INTO member (
	id, 
    pwd, 
    name, 
    dob, 
    phone, 
    email,
    zipcode,
    address,
    addressdetail
    ) 
    VALUES (
    "eee",
    333,
    "egg",
    '1993-01-21',
    44445555,
    "eee@naver.com",
    16082,
    "강남구",
    "삼성동"
    )
;

INSERT INTO member (
	id, 
    pwd, 
    name, 
    dob, 
    phone, 
    email,
    zipcode,
    address,
    addressdetail
    ) 
    VALUES (
    "rrr",
    444,
    "rabbit",
    '2002-12-03',
    55556666,
    "rrr@naver.com",
    18221,
    "구로구",
    "고척동"
    )
;

INSERT INTO member (
	id, 
    pwd, 
    name, 
    dob, 
    phone, 
    email,
    zipcode,
    address,
    addressdetail
    ) 
    VALUES (
    "hhh",
    555,
    "harrypotter",
    '1980-07-31',
    66667777,
    "hhh@naver.com",
    16707,
    "서초구",
    "방배동"
    )
;

INSERT INTO member (
	id, 
    pwd, 
    name, 
    dob, 
    phone, 
    email,
    zipcode,
    address,
    addressdetail
    ) 
    VALUES (
    "iii",
    666,
    "idle",
    '1987-08-09',
    77778888,
    "iii@naver.com",
    11479,
    "도봉구",
    "창동"
    )
;

INSERT INTO member (
	id, 
    pwd, 
    name, 
    dob, 
    phone, 
    email,
    zipcode,
    address,
    addressdetail
    ) 
    VALUES (
    "jjj",
    777,
    "juice",
    '1999-02-28',
    88889999,
    "jjj@naver.com",
    13506,
    "성남시",
    "분당구"
    )
;

INSERT INTO member (
	id, 
    pwd, 
    name, 
    dob, 
    phone, 
    email,
    zipcode,
    address,
    addressdetail
    ) 
    VALUES (
    "ooo",
    888,
    "orange",
    '2000-10-15',
    99990000,
    "ooo@naver.com",
    10925,
    "파주시",
    "금촌동"
    )
;

-- 상품상세

-- 상품 구매
SELECT
	a.immseq
    ,a.name
    ,a.phone
    ,a.email
    ,a.zipcode
    ,a.address
    ,a.addressdetail
    ,b.deliverymessage
    ,b.coupon
    ,b.discount
    ,b.point
    ,b.total_price
    ,b.payment
FROM member a
inner join orderpg b on b.member_immseq = a.immseq
;

-- 아이디 찾기
SELECT email, phone
FROM member
WHERE email = " " and phone = " "
;

-- 비밀번호 찾기
SELECT id, phone
FROM member
WHERE id = " " and phone = " "
;