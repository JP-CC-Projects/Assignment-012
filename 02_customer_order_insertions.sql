-- Order 
	-- Order 1: 
	-- Conditional Logic:
INSERT IGNORE INTO `customer_details` (`first_name`, `last_name`, `phone_number`)
	VALUES 
	('Trevor', 'Page', '226-555-4982');
INSERT INTO `pizza_order_headers` (`customer_id`, `order_date_time`)
	SELECT `id_customer`, '2014-10-09 09:47:00'
	FROM `customer_details` 
	WHERE `phone_number` = '226-555-4982';
    -- Declare Variable: Same order_header_id to be used throughout order.
SET @latest_order_id = LAST_INSERT_ID();
	-- Order Details
INSERT INTO `pizza_order_details` (`pizza_variety_id`, `quantity`, `order_header_id`)
	VALUES (1, 1, @latest_order_id);
INSERT INTO `pizza_order_details` (`pizza_variety_id`, `quantity`, `order_header_id`)
	VALUES (3, 1, @latest_order_id);

	-- Order 2: 
	-- Conditional logic
INSERT IGNORE INTO `customer_details` (`first_name`, `last_name`, `phone_number`)
	VALUES ('John', 'Doe', '555-555-9498');
INSERT INTO `pizza_order_headers` (`customer_id`, `order_date_time`)
	SELECT `id_customer`, '2014-10-09 01:20:00' 
	FROM `customer_details` 
	WHERE `phone_number` = '555-555-9498';    
    -- Declare Variable: Same order_header_id to be used throughout order.
SET @latest_order_id = LAST_INSERT_ID();
	-- Order Details
INSERT INTO `pizza_order_details` (`pizza_variety_id`, `quantity`, `order_header_id`)
	VALUES (2, 1, @latest_order_id);
INSERT INTO `pizza_order_details` (`pizza_variety_id`, `quantity`, `order_header_id`)
	VALUES (3, 2, @latest_order_id);

	-- Order 3: 
    -- Conditional Logic:
INSERT IGNORE INTO `customer_details` (`first_name`, `last_name`, `phone_number`)
	VALUES 
	('Trevor', 'Page', '226-555-4982');
INSERT INTO `pizza_order_headers` (`customer_id`, `order_date_time`)
	SELECT `id_customer`, '2014-10-09 09:47:00'
	FROM `customer_details` 
	WHERE `phone_number` = '226-555-4982';
    -- Declare Variable: Same order_header_id to be used throughout order.
SET @latest_order_id = LAST_INSERT_ID();
    -- Order Details
INSERT INTO `pizza_order_details` (`pizza_variety_id`, `quantity`, `order_header_id`)
	VALUES (3, 1, @latest_order_id);
INSERT INTO `pizza_order_details` (`pizza_variety_id`, `quantity`, `order_header_id`)
	VALUES (4, 1, @latest_order_id);
    