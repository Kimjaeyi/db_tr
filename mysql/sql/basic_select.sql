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
	left join site b on 1=1
		and b.seq = a.site_seq
        and a.DefaultNY = 1
ORDER BY
	a.title
    -- a.date desc
;

-- where 1=1
-- order by

-- group by

-- union