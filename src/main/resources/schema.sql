
-- Drop

DROP TABLE IF EXISTS `common`;
DROP TABLE IF EXISTS `user`;
DROP TABLE IF EXISTS `board`;



-- Create
--------------------------------------------------------------------------------------------------------------------------------------------
CREATE TABLE `common` (
	`COMMON_KEY` INT(11) NOT NULL AUTO_INCREMENT,
	`CATEGORY_ID` VARCHAR(100) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`VALUE_CODE` VARCHAR(100) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`VALUE` VARCHAR(100) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`REGDATE` DATETIME NOT NULL,
	PRIMARY KEY (`COMMON_KEY`),
	UNIQUE INDEX `CATEGORY_ID_VALUE_CODE` (`CATEGORY_ID`, `VALUE_CODE`)
)
COMMENT='자원테이블'
COLLATE='utf8mb4_unicode_ci'
ENGINE=InnoDB
;
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
CREATE TABLE `user` (
	`USER_ID` VARCHAR(100) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`PASSWORD` VARCHAR(100) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`ROLE` VARCHAR(100) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`REGDATE` DATETIME NOT NULL,
	PRIMARY KEY (`USER_ID`)
)
COMMENT='사용자'
COLLATE='utf8mb4_unicode_ci'
ENGINE=InnoDB
;
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
CREATE TABLE `board` (
                         `BOARDID` INT(11) NOT NULL AUTO_INCREMENT,
                         `TITLE` VARCHAR(50) NOT NULL COLLATE 'utf8mb4_unicode_ci',
                         `CONTENT` TEXT NOT NULL COLLATE 'utf8mb4_unicode_ci',
                         `REGDATE` DATETIME NOT NULL,
                         PRIMARY KEY (`BOARDID`)
)
    COMMENT='게시판'
    COLLATE='utf8mb4_unicode_ci'
    ENGINE=InnoDB
    AUTO_INCREMENT=23
;
--------------------------------------------------------------------------------------------------------------------------------------------

