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
FROM codeGroup2;

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
		WHERE 1=1