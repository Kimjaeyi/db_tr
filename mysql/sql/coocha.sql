use milktea;

-- 로그인
SELECT * FROM member where id = "jjj" and pwd="777"
;

-- 회원가입
INSERT INTO member(id, pwd, name, dob, phone, email) VALUES (" "," "," "," "," "," ")
;

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
inner join orderpg b on b.noopgseq = a.immseq
;