-- ---
-- Globals
-- ---

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET FOREIGN_KEY_CHECKS=0;

-- ---
-- Table 'reviews'
--
-- ---

drop database if exists ReviewSystem;

create database ReviewSystem;

use ReviewSystem;

DROP TABLE IF EXISTS `reviews`;

CREATE TABLE `reviews` (
  `id` INTEGER(100) NOT NULL AUTO_INCREMENT,
  `reviewer_id` INTEGER(100) NOT NULL,
  `review_body` VARCHAR(255) NULL DEFAULT NULL,
  `review_time` TIMESTAMP NULL DEFAULT NULL,
  `review_report` VARCHAR(25) NULL DEFAULT NULL,
  `accuracy` FLOAT NULL DEFAULT NULL,
  `communication` FLOAT NULL DEFAULT NULL,
  `cleanliness` FLOAT NULL DEFAULT NULL,
  `check-in` FLOAT NULL DEFAULT NULL,
  `value` FLOAT NULL DEFAULT NULL,
  `location` FLOAT NULL DEFAULT NULL,
  `house_id` INTEGER(100) NOT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`reviewer_id`) REFERENCES `customers` (`id`),
  FOREIGN KEY (`house_id`) REFERENCES `houses` (`id`)
);

-- ---
-- Table 'houses'
--
-- ---

DROP TABLE IF EXISTS `houses`;

CREATE TABLE `houses` (
  `id` INTEGER(100) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'customers'
--
-- ---

DROP TABLE IF EXISTS `customers`;

CREATE TABLE `customers` (
  `id` INTEGER(100) NOT NULL AUTO_INCREMENT,
  `avatar_url` VARCHAR(255) NULL DEFAULT NULL,
  `username` VARCHAR(255) NOT NULL DEFAULT 'anonymous',
  PRIMARY KEY (`id`)
);

-- ---
-- Foreign Keys
-- ---

-- ALTER TABLE reviews ADD FOREIGN KEY (`reviewer_id`) REFERENCES customers (`id`);
-- ALTER TABLE reviews ADD FOREIGN KEY (`house_id`) REFERENCES houses (`id`);
-- ALTER TABLE `reviews` ADD  FOREIGN KEY (`reviewer_id`) REFERENCES `customers(id)`;
-- ALTER TABLE `reviews` ADD  FOREIGN KEY (`house_id`) REFERENCES `houses(id)`;

-- ---
-- Table Properties
-- ---

-- ALTER TABLE `reviews` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `houses` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `customers` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ---
-- Test Data
-- ---
INSERT INTO `reviews` (`reviewer_id`,`review_body`,`house_id`) VALUES
('1','Awesome house! Great experience','1');
INSERT INTO `reviews` (`reviewer_id`,`review_body`,`house_id`) VALUES
('2','I hope the window is larger','1');
INSERT INTO `reviews` (`reviewer_id`,`review_body`,`house_id`) VALUES
('3','I hope the window is larger','2');
INSERT INTO `houses` (`id`) VALUES
('1');
INSERT INTO `customers` (`avatar_url`,`username`) VALUES
('','akali');
INSERT INTO `customers` (`avatar_url`,`username`) VALUES
('','ashe');


-- INSERT INTO `reviews` (`id`,`reviewer_id`,`review_body`,`review_time`,`review_report`,`accuracy`,`communication`,`cleanliness`,`check-in`,`value`,`location`,`house_id`) VALUES
-- ('','','','','','','','','','','','');
-- INSERT INTO `houses` (`id`) VALUES
-- ('');
-- INSERT INTO `customers` (`id`,`avatar_url`,`username`) VALUES
-- ('','','');