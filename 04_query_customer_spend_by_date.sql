SELECT 
    `c`.`id_customer`,
    `c`.`first_name`,
    `c`.`last_name`,
    `c`.`phone_number`,
    SUM(`od`.`quantity` * `pv`.`price_pizza_variety`) AS `total_spent`,
    `oh`.`order_date_time` AS `date`
FROM `customer_details` AS `c`
JOIN `pizza_order_headers` AS `oh` 
	ON `oh`.`customer_id` = `c`.`id_customer`
JOIN `pizza_order_details` AS `od` 
	ON `od`.`order_header_id` = `oh`.`id_order_header`
JOIN `pizza_varieties` AS `pv` 
	ON `pv`.`id_pizza_variety` = `od`.`pizza_variety_id`
GROUP BY 
    `c`.`id_customer`, `oh`.`order_date_time`
ORDER BY 
    `total_spent` DESC;
