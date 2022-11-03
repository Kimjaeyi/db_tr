use scone;

SELECT *
FROM member;

SELECT *
FROM item;

SELECT *
FROM itemoption;

SELECT *
FROM qna;

SELECT *
FROM review;

SELECT *
FROM mypage;

SELECT *
FROM itemOrder;

SELECT *
FROM coupon;

SELECT *
FROM sellerinfo;

SELECT *
FROM CodeGroup;

SELECT *
FROM Code;

SELECT *
FROM itemUploaded;

ALTER TABLE itemUploaded AUTO_INCREMENT=1;
SET @COUNT = 0;
UPDATE itemUploaded set seq = @COUNT := @COUNT+1;

SELECT
			a.seq
			, a.title
			, a.discount
			, a.price
			, a.released
			, a.deliverymethod
			, (SELECT b.cdname_ko FROM Code b WHERE a.shoppingsite = b.seq) AS "site"
			, a.shippingfee
			, b.cdname_ko
			, a.stock
			, a.modDate
			, a.useNY
			, a.delNY
            FROM item a
			inner join Code b ON a.deliverymethod = b.seq
		WHERE 1=1;

CREATE TABLE `itemUploaded` (
  `seq` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(4) DEFAULT NULL,
  `defaultNy` tinyint(4) DEFAULT NULL,
  `sort` tinyint(4) DEFAULT NULL,
  `path` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `originalName` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uuidName` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ext` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` bigint(20) DEFAULT NULL,
  `delNy` tinyint(4) NOT NULL,
  `pseq` bigint(20) NOT NULL,
  `regIp` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `regSeq` bigint(20) DEFAULT NULL,
  `regDeviceCd` int(11) DEFAULT NULL,
  `regDateTime` datetime DEFAULT NULL,
  `regDateTimeSvr` datetime DEFAULT NULL,
  PRIMARY KEY (`seq`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 인덱스 생성 및 삭제 s --
SHOW INDEX FROM member;

CREATE INDEX abc ON member (delNY, name);

ALTER TABLE member DROP INDEX abc;
-- 인덱스 생성 및 삭제 e --

-- 뷰 생성 및 삭제 s --
CREATE VIEW memberV
AS
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

SELECT * FROM memberV
;

DROP VIEW memberV
;
-- 뷰 생성 및 삭제 e --