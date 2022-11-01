use test;

SELECT * FROM member;

CREATE TABLE IF NOT EXISTS `mydb`.`member` (
  `seq` INT NOT NULL AUTO_INCREMENT,
  `firstname` VARCHAR(45) NULL,
  `lastname` VARCHAR(45) NULL,
  `naverId` VARCHAR(45) NULL,
  `nickname` VARCHAR(45) NULL,
  `telecom` TINYINT NULL,
  `phone` VARCHAR(45) NULL,
  `email` VARCHAR(45) NULL,
  `groupname` VARCHAR(45) NULL,
  `dob` INT NULL,
  `company` VARCHAR(45) NULL,
  `field` VARCHAR(45) NULL,
  `position` VARCHAR(45) NULL,
  `zipcode` INT NULL,
  `address` VARCHAR(45) NULL,
  `homepage` VARCHAR(45) NULL,
  `messanger` VARCHAR(45) NULL,
  `memo` VARCHAR(100) NULL,
  PRIMARY KEY (`seq`))
ENGINE = InnoDB
;

DELIMITER $$
CREATE FUNCTION getmemberName (
seq bigint
) 
RETURNS varchar(100)
BEGIN
	
    declare rtName varchar(100);

	select
		name into rtName
	from
		member
	where 1=1
		and seq = seqgetmemberName
	;

	RETURN rtName;
END$$
DELIMITER ;

SET GLOBAL log_bin_trust_function_creators = 1
;