ALTER TABLE `pos_sales_payments` ADD INDEX `employee_id` (`employee_id`);

ALTER TABLE `pos_sales_payments`
  ADD CONSTRAINT `pos_sales_payments_ibfk_2` FOREIGN KEY (`employee_id`) REFERENCES `pos_employees` (`person_id`);

ALTER TABLE `pos_customers` ADD INDEX `sales_tax_code_id` (`sales_tax_code_id`);

ALTER TABLE `pos_customers`
  ADD CONSTRAINT `pos_customers_ibfk_3` FOREIGN KEY (`sales_tax_code_id`) REFERENCES `pos_tax_codes` (`tax_code_id`);

ALTER TABLE `pos_tax_rates` ADD INDEX `rate_tax_category_id` (`rate_tax_category_id`);

ALTER TABLE `pos_tax_rates`
  ADD CONSTRAINT `pos_tax_rates_ibfk_1` FOREIGN KEY (`rate_tax_category_id`) REFERENCES `pos_tax_categories` (`tax_category_id`);

ALTER TABLE `pos_tax_rates` ADD INDEX `rate_tax_code_id` (`rate_tax_code_id`);

ALTER TABLE `pos_tax_rates`
  ADD CONSTRAINT `pos_tax_rates_ibfk_2` FOREIGN KEY (`rate_tax_code_id`) REFERENCES `pos_tax_codes` (`tax_code_id`);

ALTER TABLE `pos_tax_rates` ADD INDEX `rate_jurisdiction_id` (`rate_jurisdiction_id`);

ALTER TABLE `pos_tax_rates`
  ADD CONSTRAINT `pos_tax_rates_ibfk_3` FOREIGN KEY (`rate_jurisdiction_id`) REFERENCES `pos_tax_jurisdictions` (`jurisdiction_id`);

ALTER TABLE `pos_receivings` ADD INDEX `receiving_time` (`receiving_time`);

ALTER TABLE `pos_sales_payments` ADD INDEX `payment_time` (`payment_time`);

ALTER TABLE `pos_inventory` ADD INDEX `trans_date` (`trans_date`);

ALTER TABLE `pos_expenses` ADD INDEX `date` (`date`);
