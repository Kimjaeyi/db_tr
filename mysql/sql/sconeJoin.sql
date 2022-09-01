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
;


