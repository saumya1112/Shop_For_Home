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
-- Add sample data
-- -----------------------------------------------------

INSERT INTO PRODUCT_CATEGORY(CATEGORY_NAME) VALUES ('table decor');

INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK,
UNIT_PRICE, CATEGORY_ID,DATE_CREATED)
VALUES ('table-1000','GaneshJi Table Decor', 'God Design','assets/images/products/books/1.jpeg', 1, 100, 14.99, 1, NOW());

INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK,
UNIT_PRICE, CATEGORY_ID, DATE_CREATED)
VALUES  ('table-1001', 'Plant Table Decor', 'Plant design', 'assets/images/products/books/book-luv2code-1001.png', 1, 100, 20.99, 1, NOW());

INSERT INTO PRODUCT_CATEGORY(CATEGORY_NAME) VALUES ('mirror');

INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK,
UNIT_PRICE, CATEGORY_ID,DATE_CREATED)
VALUES ('mirror-1002', 'Round Mirror', 'Perfect Mirror', 'assets/images/products/books/book-luv2code-1002.png', 1, 100, 14.99, 3, NOW());

INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK,
UNIT_PRICE, CATEGORY_ID, DATE_CREATED)
VALUES ('mirror-1003', 'Square Mirror', 'Asthetic Design', 'assets/images/products/books/book-luv2code-1003.png', 1, 100, 13.99, 3, NOW());


INSERT INTO PRODUCT_CATEGORY(CATEGORY_NAME) VALUES ('wall decor');

INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK,
UNIT_PRICE, CATEGORY_ID,DATE_CREATED)
VALUES ('mirror-1003', 'Square Mirror', 'Asthetic Design', 'assets/images/products/books/book-luv2code-1003.png', 1, 100, 13.99, 4, NOW());

INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK,
UNIT_PRICE, CATEGORY_ID, DATE_CREATED)
VALUES ('mirror-1003', 'Square Mirror', 'Asthetic Design', 'assets/images/products/books/book-luv2code-1003.png', 1, 100, 13.99, 4, NOW());
INSERT INTO PRODUCT_CATEGORY(CATEGORY_NAME) VALUES ('clocks');
INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK,
UNIT_PRICE, CATEGORY_ID,DATE_CREATED)
VALUES ('mirror-1003', 'Square Mirror', 'Asthetic Design', 'assets/images/products/books/book-luv2code-1003.png', 1, 100, 13.99, 2, NOW());

INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK,
UNIT_PRICE, CATEGORY_ID, DATE_CREATED)
VALUES ('mirror-1003', 'Square Mirror', 'Asthetic Design', 'assets/images/products/books/book-luv2code-1003.png', 1, 100, 13.99, 2, NOW());