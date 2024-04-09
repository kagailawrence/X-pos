#pos_attribute_values table
ALTER TABLE `pos_attribute_values` ADD UNIQUE(`attribute_date`);
ALTER TABLE `pos_attribute_values` ADD UNIQUE(`attribute_decimal`); 

#opsos_attribute_definitions table
ALTER TABLE `pos_attribute_definitions` MODIFY `definition_flags` tinyint(1) NOT NULL;
ALTER TABLE `pos_attribute_definitions` ADD INDEX(`definition_name`); 
ALTER TABLE `pos_attribute_definitions` ADD INDEX(`definition_type`);

#opsos_attribute_links table
ALTER TABLE `pos_attribute_links` ADD UNIQUE INDEX `attribute_links_uq2` (`item_id`,`sale_id`,`receiving_id`,`definition_id`,`attribute_id`);

#pos_cash_up table
ALTER TABLE `pos_cash_up` MODIFY `deleted` tinyint(1) DEFAULT 0 NOT NULL;

#pos_customers table
DROP INDEX `person_id` ON `pos_customers`;
ALTER TABLE `pos_customers` MODIFY `taxable` tinyint(1) DEFAULT 1 NOT NULL;
ALTER TABLE `pos_customers` MODIFY `deleted` tinyint(1) DEFAULT 0 NOT NULL;
ALTER TABLE `pos_customers` MODIFY `discount_type` tinyint(1) DEFAULT 0 NOT NULL;
ALTER TABLE `pos_customers` ADD PRIMARY KEY(`person_id`);
ALTER TABLE `pos_customers` ADD INDEX(`company_name`);

#pos_customers_packages table
ALTER TABLE `pos_customers_packages` MODIFY `deleted` tinyint(1) DEFAULT 0 NOT NULL;

#pos_dinner_tables table
ALTER TABLE `pos_dinner_tables` MODIFY `deleted` tinyint(1) DEFAULT 0 NOT NULL;
ALTER TABLE `pos_dinner_tables` ADD INDEX(`status`);

#pos_employees table
DROP INDEX `person_id` ON `pos_employees`;
ALTER TABLE `pos_employees` MODIFY `deleted` tinyint(1) DEFAULT 0 NOT NULL;
ALTER TABLE `pos_employees` MODIFY `hash_version` tinyint(1) DEFAULT 2 NOT NULL;
ALTER TABLE `pos_employees` ADD PRIMARY KEY(`person_id`);

#pos_expenses table
ALTER TABLE `pos_expenses` MODIFY `deleted` tinyint(1) DEFAULT 0 NOT NULL;
ALTER TABLE `pos_expenses` ADD INDEX(`payment_type`);
ALTER TABLE `pos_expenses` ADD INDEX(`amount`);

#pos_expenses_categories table
ALTER TABLE `pos_expense_categories` MODIFY `deleted` tinyint(1) DEFAULT 0 NOT NULL;
ALTER TABLE `pos_expense_categories` ADD INDEX(`category_description`);

#pos_giftcards table
ALTER TABLE `pos_giftcards` MODIFY `deleted` tinyint(1) DEFAULT 0 NOT NULL;

#pos_items table
ALTER TABLE `pos_items` MODIFY `deleted` tinyint(1) DEFAULT 0 NOT NULL;
ALTER TABLE `pos_items` MODIFY `stock_type` tinyint(1) DEFAULT 0 NOT NULL;
ALTER TABLE `pos_items` MODIFY `item_type` tinyint(1) DEFAULT 0 NOT NULL;
ALTER TABLE `pos_items` ADD INDEX(`deleted`, `item_type`);
ALTER TABLE `pos_items` ADD INDEX(`PRIMARY`, `deleted`);
ALTER TABLE `pos_items` ADD UNIQUE INDEX `items_uq1` (`supplier_id`, `item_id`, `deleted`, `item_type`);

#pos_item_kits table
ALTER TABLE `pos_item_kits` MODIFY `kit_discount_type` tinyint(1) DEFAULT 0 NOT NULL;
ALTER TABLE `pos_item_kits` MODIFY `price_option` tinyint(1) DEFAULT 0 NOT NULL;
ALTER TABLE `pos_item_kits` MODIFY `print_option` tinyint(1) DEFAULT 0 NOT NULL;
ALTER TABLE `pos_item_kits` ADD INDEX(`name`,`description`);

#pos_item_quantities table
ALTER TABLE `pos_item_quantities` ADD INDEX(`PRIMARY`,`item_id`,`location_id`);

#pos_people table
ALTER TABLE `pos_people` ADD INDEX(`first_name`, `last_name`, `email`, `phone_number`); 

#pos_receivings_items
ALTER TABLE `pos_receivings_items` MODIFY `discount_type` tinyint(1) DEFAULT 0 NOT NULL;

#pos_sales
ALTER TABLE `pos_sales` MODIFY `sale_status` tinyint(1) DEFAULT 0 NOT NULL;
ALTER TABLE `pos_sales` MODIFY `sale_type` tinyint(1) DEFAULT 0 NOT NULL;

#pos_sales_items
ALTER TABLE `pos_sales_items` MODIFY `discount_type` tinyint(1) DEFAULT 0 NOT NULL;
ALTER TABLE `pos_sales_items` MODIFY `print_option` tinyint(1) DEFAULT 0 NOT NULL;

#pos_sales_items_taxes
ALTER TABLE `pos_sales_items_taxes` MODIFY `tax_type` tinyint(1) DEFAULT 0 NOT NULL;
ALTER TABLE `pos_sales_items_taxes` MODIFY `rounding_code` tinyint(1) DEFAULT 0 NOT NULL;
ALTER TABLE `pos_sales_items_taxes` MODIFY `cascade_sequence` tinyint(1) DEFAULT 0 NOT NULL;

#pos_sales_taxes
ALTER TABLE `pos_sales_taxes` MODIFY `print_sequence` tinyint(1) DEFAULT 0 NOT NULL;
ALTER TABLE `pos_sales_taxes` MODIFY `rounding_code` tinyint(1) DEFAULT 0 NOT NULL;

#pos_sessions table
ALTER TABLE `pos_sessions` ADD INDEX(`id`); 
ALTER TABLE `pos_sessions` ADD INDEX(`ip_address`);

#pos_stock_locations table
ALTER TABLE `pos_stock_locations` MODIFY `deleted` tinyint(1) DEFAULT 0 NOT NULL;

#pos_suppliers table
DROP INDEX `person_id` ON `pos_suppliers`;
ALTER TABLE `pos_suppliers` MODIFY `deleted` tinyint(1) DEFAULT 0 NOT NULL;
ALTER TABLE `pos_suppliers` MODIFY `category` tinyint(1) NOT NULL;
ALTER TABLE `pos_suppliers` ADD PRIMARY KEY(`person_id`);
ALTER TABLE `pos_suppliers` ADD INDEX(`category`);
ALTER TABLE `pos_suppliers` ADD INDEX(`company_name`, `deleted`);

#pos_tax_categories table
ALTER TABLE `pos_tax_categories` MODIFY `deleted` tinyint(1) DEFAULT 0 NOT NULL;
ALTER TABLE `pos_tax_categories` MODIFY `tax_group_sequence` tinyint(1) NOT NULL;

#pos_tax_codes table
ALTER TABLE `pos_tax_codes` MODIFY `deleted` tinyint(1) DEFAULT 0 NOT NULL;

#pos_tax_jurisdictions table
ALTER TABLE `pos_tax_jurisdictions` MODIFY `deleted` tinyint(1) DEFAULT 0 NOT NULL;
ALTER TABLE `pos_tax_jurisdictions` MODIFY `tax_group_sequence` tinyint(1) DEFAULT 0 NOT NULL;
ALTER TABLE `pos_tax_jurisdictions` MODIFY `cascade_sequence` tinyint(1) DEFAULT 0 NOT NULL;

#pos_tax_rates table
ALTER TABLE `pos_tax_rates` MODIFY `tax_rounding_code` tinyint(1) DEFAULT 0 NOT NULL;