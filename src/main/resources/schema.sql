
-- Drop

DROP TABLE IF EXISTS `board`;

-- Create

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
