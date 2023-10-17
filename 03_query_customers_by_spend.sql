SELECT 
    `c`.`id_customer`,
    `c`.`first_name`,
    `c`.`last_name`,
    `c`.`phone_number`,
    SUM(`od`.`quantity` * `pv`.`price_pizza_variety`) AS `total_spent`
FROM 
    `customer_details` `c`
JOIN 
    `pizza_order_headers` `oh` ON `c`.`id_customer` = `oh`.`customer_id`
JOIN 
    `pizza_order_details` `od` ON `oh`.`id_order_header` = `od`.`order_header_id`
JOIN 
    `pizza_varieties` `pv` ON `od`.`pizza_variety_id` = `pv`.`id_pizza_variety`
GROUP BY 
    `c`.`id_customer`, `c`.`first_name`, `c`.`last_name`, `c`.`phone_number`
ORDER BY 
    `total_spent` DESC;
