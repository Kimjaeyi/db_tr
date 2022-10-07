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
FROM payment;

SELECT *
FROM buy_item;

SELECT *
FROM orderlist;

SELECT *
FROM sellerinfo;

SELECT *
FROM CodeGroup;

SELECT *
FROM Code;

SELECT *
FROM itemUploaded;

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