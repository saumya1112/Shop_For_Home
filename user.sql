CREATE TABLE IF NOT EXISTS `shop_for_home`.`customer` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(255) NULL DEFAULT NULL,
 `last_name` VARCHAR(255) NULL DEFAULT NULL,
 `email` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE=InnoDB
AUTO_INCREMENT = 1;