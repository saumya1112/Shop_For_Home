-- -----------------------------------------------------
-- Schema shop_for_home
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `shop_for_home`;

CREATE SCHEMA `shop_for_home`;
USE `shop_for_home` ;

-- -----------------------------------------------------
-- Table `shop_for_home`.`product_category`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `shop_for_home`.`product_category` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `category_name` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE=InnoDB
AUTO_INCREMENT = 1;

-- -----------------------------------------------------
-- Table `full-stack-ecommerce`.`product`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `shop_for_home`.`product` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `sku` VARCHAR(255) DEFAULT NULL,
  `name` VARCHAR(255) DEFAULT NULL,
  `description` VARCHAR(255) DEFAULT NULL,
  `unit_price` DECIMAL(13,2) DEFAULT NULL,
  `image_url` VARCHAR(255) DEFAULT NULL,
  `active` BIT DEFAULT 1,
  `units_in_stock` INT(11) DEFAULT NULL,
   `date_created` DATETIME(6) DEFAULT NULL,
  `last_updated` DATETIME(6) DEFAULT NULL,
  `category_id` BIGINT(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_category` (`category_id`),
  CONSTRAINT `fk_category` FOREIGN KEY (`category_id`) REFERENCES `product_category` (`id`)
) 
ENGINE=InnoDB
AUTO_INCREMENT = 1;


-- -----------------------------------------------------
-- Categories
-- -----------------------------------------------------
INSERT INTO product_category(category_name) VALUES ('table decor');
INSERT INTO product_category(category_name) VALUES ('mirror');
INSERT INTO product_category(category_name) VALUES ('wall decor');
INSERT INTO product_category(category_name) VALUES ('clocks');

-- -----------------------------------------------------
-- Books
-- -----------------------------------------------------
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('table-1000','GaneshJi Table Decor', 'God Design','assets/images/products/books/1.jpg', 1, 100, 14.99, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('table-1001', 'Plant Table Decor', 'Plant design', 'assets/images/products/books/2.jpg', 1, 100, 20.99, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('mirror-1002', 'Round Mirror', 'Perfect Mirror', 'assets/images/products/books/3.jpg', 1, 100, 14.99, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('mirror-1003', 'Square Mirror', 'Asthetic Design', 'assets/images/products/books/4.jpg', 1, 100, 13.99, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('wall-1004', 'Wall Mask', 'Best design', 'assets/images/products/books/5.jpg', 1, 100, 18.99, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('wall-1005', 'Wall Art', 'famous art', 'assets/images/products/books/6.jpg', 1, 100, 23.99, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('clocks-1006', 'Abstract Clock', 'designer clocks', 'assets/images/products/books/7.jpg', 1, 100, 14.99, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('clocks-1007', 'Wooden Clock', 'Pure Wood', 'assets/images/products/books/8.jpg', 1, 100, 16.99, 1, NOW());


