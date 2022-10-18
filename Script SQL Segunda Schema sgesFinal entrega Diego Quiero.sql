CREATE SCHEMA sgesFinal;

-- USERS
CREATE TABLE `sgesFinal`.`users` (
  `id_user` VARCHAR(45) NOT NULL UNIQUE,
  `firstname` VARCHAR(45) NOT NULL,
  `lastname` VARCHAR(45) NOT NULL,
  `user_name` VARCHAR(45) NOT NULL,
  `user_password` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NULL,
  `user_type` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_user`));

-- PERMISSIONS
CREATE TABLE `sgesFinal`.`permissions` (
  `id_permission` INT NOT NULL AUTO_INCREMENT,
  `create_permission` TINYINT NOT NULL,
  `read_permission` TINYINT NOT NULL,
  `modify_permission` TINYINT NOT NULL,
  `delete_permission` TINYINT NOT NULL,
  `id_user` VARCHAR(45) NOT NULL UNIQUE,
  PRIMARY KEY (`id_permission`),
  INDEX `permissions_user_idx` (`id_user` ASC) VISIBLE,
  CONSTRAINT `permissions_user`FOREIGN KEY (`id_user`) REFERENCES `sgesfinal`.`users` (`id_user`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT);
    
-- CUSTOMERS
CREATE TABLE `sgesFinal`.`customers` (
  `id_customer` INT NOT NULL AUTO_INCREMENT,
  `customer_name` VARCHAR(100) NOT NULL,
  `customer_identification` VARCHAR(45) NOT NULL,
  `customer_comercial_address` VARCHAR(100) NULL,
  `customer_contact` VARCHAR(100) NULL,
  `phone_number` VARCHAR(45) NULL,
  `customer_email` VARCHAR(45) NULL,
  PRIMARY KEY (`id_customer`));
  
  -- CARRIERS
CREATE TABLE `sgesFinal`.`carriers` (
  `id_carrier` INT NOT NULL AUTO_INCREMENT,
  `carrier_name` VARCHAR(100) NOT NULL,
  `carrier_identification_number` VARCHAR(45) NOT NULL,
  `comercial_address` VARCHAR(100) NULL,
  `carrier_contact` VARCHAR(100) NULL,
  `phone_number` VARCHAR(45) NULL,
  `email` VARCHAR(100) NULL,
  PRIMARY KEY (`id_carrier`));
  
-- VEHICLES 
CREATE TABLE `sgesFinal`.`vehicles` (
  `id_vehicle` INT NOT NULL AUTO_INCREMENT,
  `brand` VARCHAR(20) NULL,
  `model` VARCHAR(30) NULL,
  `type` VARCHAR(20) NULL,
  `plates` VARCHAR(20) NOT NULL,
  `id_carrier` INT NOT NULL,
  PRIMARY KEY (`id_vehicle`),
  INDEX `vehicles_carrier_idx` (`id_carrier` ASC) VISIBLE, 
  CONSTRAINT `vehicles_carrier` FOREIGN KEY (`id_carrier`) REFERENCES `sgesfinal`.`carriers` (`id_carrier`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT);

CREATE TABLE `sgesFinal`.`containers` (
  `id_container` INT NOT NULL AUTO_INCREMENT,
  `container_number` VARCHAR(50) NOT NULL,
  `seals` VARCHAR(45) NOT NULL,
  `id_vehicle` INT NOT NULL,
  PRIMARY KEY (`id_container`),
  INDEX `containers_vehicle_idx` (`id_vehicle` ASC) VISIBLE, 
  CONSTRAINT `containers_vehicle` FOREIGN KEY (`id_vehicle`) REFERENCES `sgesFinal`.`vehicles` (`id_vehicle`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
    
-- ORIGINS
CREATE TABLE `sgesFinal`.`origins` (
  `id_origin` INT NOT NULL AUTO_INCREMENT,
  `industry_name` VARCHAR(100) NOT NULL,
  `identification_number` VARCHAR(45) NOT NULL,
  `country` VARCHAR(45) NOT NULL,
  `industry_address` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_origin`));
  
-- PRODUCTS
  CREATE TABLE `sgesFinal`.`products` (
  `id_product` INT NOT NULL AUTO_INCREMENT,
  `product_name` VARCHAR(100) NOT NULL,
  `product_code` VARCHAR(45) NOT NULL,
  `product_brand` VARCHAR(100) NOT NULL,
  `production_date` DATE NOT NULL,
  `expiration_date` DATE NOT NULL,
  `batch` VARCHAR(30) NOT NULL,
  `stock` INT NOT NULL, 
  `id_origin` INT NOT NULL,
  PRIMARY KEY (`id_product`),
  INDEX `products_origin_idx` (`id_origin` ASC) VISIBLE,
  CONSTRAINT `products_origin` FOREIGN KEY (`id_origin`) REFERENCES `sgesFinal`.`origins` (`id_origin`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT);
    
    CREATE TABLE `sgesFinal`.`orders` (
  `id_order` INT NOT NULL AUTO_INCREMENT,
  `order_number` VARCHAR(20) NOT NULL,
  `order_price` FLOAT(2) NULL,
  `id_origin` INT NOT NULL,
  `id_user` VARCHAR(45) NOT NULL,
  `id_customer` INT NOT NULL,
  `id_carrier` INT NOT NULL,
  PRIMARY KEY (`id_order`),
  INDEX `orders_origin_idx` (`id_origin` ASC) VISIBLE,
  INDEX `orders_user_idx` (`id_user` ASC) VISIBLE,
  INDEX `orders_customer_idx` (`id_customer` ASC) VISIBLE,
  INDEX `orders_carrier_idx` (`id_carrier` ASC) VISIBLE,
  CONSTRAINT `orders_origin` FOREIGN KEY (`id_origin`) REFERENCES `sgesFinal`.`origins` (`id_origin`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT,
  CONSTRAINT `orders_user` FOREIGN KEY (`id_user`) REFERENCES `sgesFinal`.`users` (`id_user`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT,
  CONSTRAINT `orders_customer` FOREIGN KEY (`id_customer`) REFERENCES `sgesFinal`.`customers` (`id_customer`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT,
  CONSTRAINT `orders_carrier` FOREIGN KEY (`id_carrier`) REFERENCES `sgesFinal`.`carriers` (`id_carrier`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT)
COMMENT = '	';

-- ORDER HAS PRODUCT
CREATE TABLE IF NOT EXISTS `sgesFinal`.`orders_has_products` (
  `id_order` INT NOT NULL,
  `id_product` INT NOT NULL,
  `quantity` FLOAT NULL,
  PRIMARY KEY (`id_order`, `id_product`),
  INDEX `orders_has_products_p_idx` (`id_product` ASC) VISIBLE,
  INDEX `orders_has_products_o_idx` (`id_order` ASC) VISIBLE,
  CONSTRAINT `order_has_products_o` FOREIGN KEY (`id_order`) REFERENCES `sgesFinal`.`orders` (`id_order`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT,
  CONSTRAINT `origins_has_products_p` FOREIGN KEY (`id_product`) REFERENCES `sgesFinal`.`products` (`id_product`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT);

-- DATA PROCESS
CREATE TABLE `sgesFinal`.`data_process` (
  `id_data_process` INT NOT NULL AUTO_INCREMENT,
  `process_type` VARCHAR(20) NOT NULL,
  `description` VARCHAR(1000) NOT NULL,
  `cost` FLOAT(2) NULL,
  `start_date` DATE NOT NULL,
  `end_date` DATE NULL,
  `fluig_number` VARCHAR(100) NULL,
  `conclusion` VARCHAR(300) NULL,
  `id_order` INT NOT NULL,
  PRIMARY KEY (`id_data_process`),
  INDEX `data_process_order_idx` (`id_order` ASC) VISIBLE,
  CONSTRAINT `data_process_order` FOREIGN KEY (`id_order`) REFERENCES `sgesFinal`.`orders` (`id_order`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT);
    
-- DOCUMENTS
CREATE TABLE `sgesFinal`.`documents` (
  `id_document` INT NOT NULL AUTO_INCREMENT,
  `document_type` VARCHAR(50) NOT NULL,
  `document_number` VARCHAR(50) NOT NULL,
  `document` BLOB NOT NULL,
  `upload_date` DATE NOT NULL,
  `id_data_process` INT NOT NULL,
  PRIMARY KEY (`id_document`),
  INDEX `documents_data_process_idx` (`id_data_process` ASC) VISIBLE,
  CONSTRAINT `documents_data_process` FOREIGN KEY (`id_data_process`) REFERENCES `sgesFinal`.`data_process` (`id_data_process`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT);
  