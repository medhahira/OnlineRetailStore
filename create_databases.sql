DROP DATABASE IF EXISTS `online retail store`;
CREATE DATABASE `online retail store`; 
USE `online retail store`;

SET NAMES utf8 ;
SET character_set_client = utf8mb4 ;

CREATE TABLE `Coupon` (
  `couponID` INT NOT NULL auto_increment,
  `amount` decimal(9,2) NOT NULL,
  `expiry_date` datetime DEFAULT NULL,
  `staus_of_use` INT DEFAULT 0,
  `categoryID` INT NOT NULL,
  PRIMARY KEY(couponID)
);

CREATE TABLE `Distributor` (
  `distributorID` INT NOT NULL auto_increment,
  `password` VARCHAR(20) NOT NULL,
  /* 
  `{productID}` <type>,
  **
  HERE FIGURE OUT HOW TO STORE PRODUCT ID
  ALSO MENTION COUNTRY CODE BEFORE PHONE NO*/
  `phone_number` char(10) NOT NULL,
  `email_address` varchar(50) NOT NULL,
  `commision` decimal(9,2) NOT NULL,
  `house_number` varchar(10) NOT NULL,
  `street_name` varchar(100) DEFAULT NULL,
  `city` varchar(100) NOT NULL,
  `pincode` char(6) NOT NULL,
  PRIMARY KEY(distributorID)
);

CREATE TABLE `Cart` (
  `billing_amount()` decimal(9,2) NOT NULL,
  /*again have to look at this
  `{list_of_items ProductID     Quantity}` <type>,
  **
  */
  `product_id` varchar(50) NOT NULL,
  `username` varchar(30) NOT NULL
);

CREATE TABLE `Licence` (
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `licence_number` int(10) NOT NULL,
  `date_of_birth` datetime DEFAULT NULL
);

CREATE TABLE `Billing` (
  `billingID` INT NOT NULL auto_increment,
  `payment_mode` VARCHAR(50) NOT NULL,
  `bill_amount` decimal(9,2) NOT NULL,
  `amount_donated` decimal(9,2) NOT NULL,
  `ngoID` varchar(50) NOT NULL,
  `couponID` varchar(50) NOT NULL,
  `orderID` INT NOT NULL,
  PRIMARY KEY(billingID)
);

CREATE TABLE `Category` (
  `categoryID` INT NOT NULL auto_increment,
  `category_name` varchar(50) NOT NULL,
  `category_discount` DOUBLE DEFAULT 0,
  PRIMARY KEY(categoryID)
);

CREATE TABLE `NGO` (
  `ngoID` INT NOT NULL auto_increment,
  `name` varchar(50) not null,
  `registration_number` int(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `funds_raised` decimal(9,2) NOT NULL,
  PRIMARY KEY(ngoID)
);

CREATE TABLE `Order` (
  `orderID` INT NOT NULL auto_increment,
  `username` varchar(50) NOT NULL,
  `status` INT DEFAULT 0,
  /* we will probably have ints to represent diff types of status*/
  `order_amount` decimal(9,2) NOT NULL,
  /*
  **
  `{order_discription ProductID     Quantity}` <type>,
  **/
  
  `discount` DOUBLE DEFAULT 0,
  `amount_to_ngo` decimal(9,2) NOT NULL,
  `date_order_placed` datetime DEFAULT NULL,
  `date_expected_arrival` datetime DEFAULT NULL,
  PRIMARY KEY(orderID)
);

CREATE TABLE `Product` (
  `productID` INT NOT NULL auto_increment,
  `categoryID` INT NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `quantity_in_stock` INT DEFAULT 0,
  `discount` DOUBLE DEFAULT 0,
  `storage_type` varchar(50) NOT NULL,
  `rating` INT DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  PRIMARY KEY(productID)
);

CREATE TABLE `Admin` (
  `username` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL
);

CREATE TABLE `Inventory` (
  `productID` INT NOT NULL,
  `quantity` INT DEFAULT 0,
  `storage_type` varchar(50) NOT NULL 
);

CREATE TABLE `DeliveryPartner` (
  `deliveryID` INT NOT NULL auto_increment,
  `password` VARCHAR(20) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `licence_number` int(10) NOT NULL,
  `phone_number` char(10) NOT NULL,
  `vehicle_number` varchar(10) NOT NULL,
  `status (Occupied/Free)` INT DEFAULT 0,
  `orderID` INT NOT NULL,
  `pickup_house_number` varchar(10) NOT NULL,
  `pickup_street_name` varchar(100) DEFAULT NULL,
  `pickup_city` varchar(100) NOT NULL,
  `pickup_pincode` char(6) NOT NULL,
  `expected _arrival_time` datetime DEFAULT NULL,
  `delivery_house_number` varchar(10) NOT NULL,
  `delivery_street_name` varchar(100) DEFAULT NULL,
  `delivery_city` varchar(100) NOT NULL,
  `delivery_pincode` char(6) NOT NULL,
  `deliveries_completed` INT DEFAULT 0,
  `rating` INT DEFAULT NULL,
  `salary` decimal(9,2) NOT NULL,
  PRIMARY KEY(deliveryID)
);

CREATE TABLE `Customer` (
  `username` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `phone_number` char(10) NOT NULL,
  `subscription_type` varchar(20) DEFAULT NULL,
  `couponID` INT NOT NULL,
  `house_number` varchar(10) NOT NULL,
  `street_name` varchar(100) DEFAULT NULL,
  `city` varchar(100) NOT NULL,
  `pincode` char(6) NOT NULL,
  PRIMARY KEY(username)
);
