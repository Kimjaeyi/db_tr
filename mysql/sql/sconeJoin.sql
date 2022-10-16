use scone;

SELECT
	a.seq
    ,a.codeGroup_seq
    ,b.name_ko
    ,a.codeNum
    ,a.anotherCode
    ,a.cdname_ko
    ,a.name_eng
    ,a.order
    ,a.regDate
    ,a.modDate
    ,a.useNY
    ,a.delNY
FROM Code a
inner join CodeGroup b on b.seq = a.codeGroup_seq
;

SELECT
	a.seq
	, a.name_ko
	, a.name_eng
	, (SELECT COUNT(b.codeGroup_seq) FROM Code b WHERE a.seq = b.codeGroup_seq) AS codeamount
	, a.useNY
	, a.delNY
FROM CodeGroup a
<<<<<<< HEAD
;

SELECT
	a.seq
	, (SELECT b.name_eng FROM Code b WHERE a.membership = b.codeNum) AS membership
    , a.name
	, a.dob
	, a.email
	, a.phone
	, a.regDate
	, a.delNY
FROM member a
;

SELECT
			a.seq
			, b.cdname_ko
			, a.name
			, a.grade
			, a.gender
			, a.dob
			, a.id
			, a.pwd
			, a.email
			, a.emailID
			, a.emailDomain
			, a.telecom
			, a.phone
			, a.zipcode
			, a.addr1
			, a.addr2
			, a.addr3
			, a.validity
			, a.regDate
			, a.delNY
            FROM member a
			inner join Code b ON a.grade = b.seq
		WHERE 1=1;
        
        SELECT
			a.seq
			, a.title
			, a.discount
			, a.price
			, a.deliverymethod
			, b.cdname_ko
			, a.stock
			, a.regDate
			, a.modDate
			, a.useNY
			, a.delNY
            FROM item a
			inner join Code b ON a.deliverymethod = b.seq
		WHERE 1=1;
=======
;
>>>>>>> refs/remotes/origin/main
