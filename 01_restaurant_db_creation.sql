CREATE TABLE `pizza_varieties` (
    `id_pizza_variety` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name_pizza_variety` VARCHAR(100),
    `price_pizza_variety` DECIMAL(5 , 2 )
);

CREATE TABLE `customer_details` (
    `id_customer` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `first_name` VARCHAR(50),
    `last_name` VARCHAR(50),
    `phone_number` VARCHAR(25) UNIQUE
);

CREATE TABLE `pizza_order_headers` (
    `id_order_header` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `customer_id` INT,
    `order_date_time` DATETIME,
    FOREIGN KEY (`customer_id`)
        REFERENCES `customer_details` (`id_customer`)
);

CREATE TABLE `pizza_order_details` (
    `id_pizza_order_detail` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `pizza_variety_id` INT,
    `quantity` INT,
    `order_header_id` INT,
    FOREIGN KEY (`pizza_variety_id`)
        REFERENCES `pizza_varieties` (`id_pizza_variety`),
    FOREIGN KEY (`order_header_id`)
        REFERENCES `pizza_order_headers` (`id_order_header`)
);

INSERT INTO `pizza_varieties` (`name_pizza_variety`, `price_pizza_variety`)
	VALUES 
	('Pepperoni & Cheese', 7.99), 	-- 1
	('Vegetarian', 9.99),			-- 2
	('Meat Lovers', 14.99),			-- 3
	('Hawaiian', 12.99);			-- 4

   