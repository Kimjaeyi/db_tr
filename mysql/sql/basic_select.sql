use milktea;

-- join문
-- 1) Master: data.full
-- left.Join

-- 2) Slave data exist
-- (inner)Join

select
	a.ifmmSeq
    ,a.ifmmName
    ,a.ifmmId
    ,b.ifmaAddress1
from infrMember a
-- left join infrMemberAddress b on b.ifmmSeq = a.ifmmSeq
inner join infrMemberAddress b on b.ifmmSeq = a.ifmmSeq
-- join infrMemberAddress b on b.ifmmSeq = a.ifmmSeq
;

SELECT
	a.immseq
    ,a.id
    ,a.name
    ,b.deliverymessage
FROM member a
-- left join orderpg b on b.noopgseq = a.immseq
inner join orderpg b on b.noopgseq = a.immseq
-- join orderpg b on b.noopgseq = a.immseq
;

SELECT
	a.noccg
    ,a.property
    ,b.nocc
    ,b.name
FROM CodeGroup a
inner join Code b on b.ccg_noccg = a.noccg
;

-- DefaultNY
SELECT
	a.impseq
    , a.title
    , a.price
    , b.name
FROM product a
	inner join site b on 1=1
		and b.seq = a.site_seq
        and a.DefaultNY = 1
ORDER BY
	a.title
    -- a.date desc
;

-- subquery
SELECT
    (SELECT a.id FROM member a WHERE b.writer = a.id) AS id
    , b.title
    , b.date
    , b.question
    , b.manager
    , b. answer
FROM product_qna b
;

-- order by
SELECT
	a.impseq
    , a.title
    , a.price
    , b.name
FROM product a
	INNER JOIN site b on 1=1
		and b.seq = a.site_seq
ORDER BY
	a.price DESC
;

-- union
SELECT
	a.immseq
    , a.name
    , a.id
    , a.dob
    , a.phone
    , b.point
FROM member a
	inner join orderpg b on 1=1
		and b.noopgseq = a.immseq
	WHERE 1=1
		AND a.dob like '%19%'
UNION ALL
	SELECT
	a.immseq
    , a.name
    , a.id
    , a.dob
    , a.phone
    , b.point
FROM member a
	inner join orderpg b on 1=1
		and b.noopgseq = a.immseq
	WHERE 1=1
		AND a.phone like '%3%'
;


-- group by&having

-- union과 union all의 차이 : union은 중복값 제거 후 출력하지만 union all은 중복값 포함 있는 그대로 출력. 그래서 union all의 속도가 빠름.