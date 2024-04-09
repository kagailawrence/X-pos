--
-- Constraints for dumped tables
--

--
-- Constraints for table `pos_customers`
--
ALTER TABLE `pos_customers`
  ADD CONSTRAINT `pos_customers_ibfk_1` FOREIGN KEY (`person_id`) REFERENCES `pos_people` (`person_id`),
  ADD CONSTRAINT `pos_customers_ibfk_2` FOREIGN KEY (`package_id`) REFERENCES `pos_customers_packages` (`package_id`);

--
-- Constraints for table `pos_employees`
--
ALTER TABLE `pos_employees`
  ADD CONSTRAINT `pos_employees_ibfk_1` FOREIGN KEY (`person_id`) REFERENCES `pos_people` (`person_id`);

--
-- Constraints for table `pos_inventory`
--
ALTER TABLE `pos_inventory`
  ADD CONSTRAINT `pos_inventory_ibfk_1` FOREIGN KEY (`trans_items`) REFERENCES `pos_items` (`item_id`),
  ADD CONSTRAINT `pos_inventory_ibfk_2` FOREIGN KEY (`trans_user`) REFERENCES `pos_employees` (`person_id`),
  ADD CONSTRAINT `pos_inventory_ibfk_3` FOREIGN KEY (`trans_location`) REFERENCES `pos_stock_locations` (`location_id`);

--
-- Constraints for table `pos_items`
--
ALTER TABLE `pos_items`
  ADD CONSTRAINT `pos_items_ibfk_1` FOREIGN KEY (`supplier_id`) REFERENCES `pos_suppliers` (`person_id`);

--
-- Constraints for table `pos_items_taxes`
--
ALTER TABLE `pos_items_taxes`
  ADD CONSTRAINT `pos_items_taxes_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `pos_items` (`item_id`) ON DELETE CASCADE;

--
-- Constraints for table `pos_item_kit_items`
--
ALTER TABLE `pos_item_kit_items`
  ADD CONSTRAINT `pos_item_kit_items_ibfk_1` FOREIGN KEY (`item_kit_id`) REFERENCES `pos_item_kits` (`item_kit_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pos_item_kit_items_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `pos_items` (`item_id`)  ON DELETE CASCADE;

--
-- Constraints for table `pos_permissions`
--
ALTER TABLE `pos_permissions`
  ADD CONSTRAINT `pos_permissions_ibfk_1` FOREIGN KEY (`module_id`) REFERENCES `pos_modules` (`module_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pos_permissions_ibfk_2` FOREIGN KEY (`location_id`) REFERENCES `pos_stock_locations` (`location_id`) ON DELETE CASCADE;

--
-- Constraints for table `pos_grants`
--
ALTER TABLE `pos_grants`
  ADD CONSTRAINT `pos_grants_ibfk_1` foreign key (`permission_id`) references `pos_permissions` (`permission_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pos_grants_ibfk_2` foreign key (`person_id`) references `pos_employees` (`person_id`) ON DELETE CASCADE;

--
-- Constraints for table `pos_receivings`
--
ALTER TABLE `pos_receivings`
  ADD CONSTRAINT `pos_receivings_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `pos_employees` (`person_id`),
  ADD CONSTRAINT `pos_receivings_ibfk_2` FOREIGN KEY (`supplier_id`) REFERENCES `pos_suppliers` (`person_id`);

--
-- Constraints for table `pos_receivings_items`
--
ALTER TABLE `pos_receivings_items`
  ADD CONSTRAINT `pos_receivings_items_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `pos_items` (`item_id`),
  ADD CONSTRAINT `pos_receivings_items_ibfk_2` FOREIGN KEY (`receiving_id`) REFERENCES `pos_receivings` (`receiving_id`);

--
-- Constraints for table `pos_sales`
--
ALTER TABLE `pos_sales`
  ADD CONSTRAINT `pos_sales_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `pos_employees` (`person_id`),
  ADD CONSTRAINT `pos_sales_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `pos_customers` (`person_id`),
  ADD CONSTRAINT `pos_sales_ibfk_3` FOREIGN KEY (`dinner_table_id`) REFERENCES `pos_dinner_tables` (`dinner_table_id`);

--
-- Constraints for table `pos_sales_items`
--
ALTER TABLE `pos_sales_items`
  ADD CONSTRAINT `pos_sales_items_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `pos_items` (`item_id`),
  ADD CONSTRAINT `pos_sales_items_ibfk_2` FOREIGN KEY (`sale_id`) REFERENCES `pos_sales` (`sale_id`),
  ADD CONSTRAINT `pos_sales_items_ibfk_3` FOREIGN KEY (`item_location`) REFERENCES `pos_stock_locations` (`location_id`);

--
-- Constraints for table `pos_sales_items_taxes`
--
ALTER TABLE `pos_sales_items_taxes`
  ADD CONSTRAINT `pos_sales_items_taxes_ibfk_1` FOREIGN KEY (`sale_id`) REFERENCES `pos_sales_items` (`sale_id`),
  ADD CONSTRAINT `pos_sales_items_taxes_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `pos_items` (`item_id`);

--
-- Constraints for table `pos_sales_payments`
--
ALTER TABLE `pos_sales_payments`
  ADD CONSTRAINT `pos_sales_payments_ibfk_1` FOREIGN KEY (`sale_id`) REFERENCES `pos_sales` (`sale_id`);

--
-- Constraints for table `pos_item_quantities`
--
ALTER TABLE `pos_item_quantities`
  ADD CONSTRAINT `pos_item_quantities_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `pos_items` (`item_id`),
  ADD CONSTRAINT `pos_item_quantities_ibfk_2` FOREIGN KEY (`location_id`) REFERENCES `pos_stock_locations` (`location_id`);

--
-- Constraints for table `pos_suppliers`
--
ALTER TABLE `pos_suppliers`
  ADD CONSTRAINT `pos_suppliers_ibfk_1` FOREIGN KEY (`person_id`) REFERENCES `pos_people` (`person_id`);
  
--
-- Constraints for table `pos_giftcards`
--
ALTER TABLE `pos_giftcards`
  ADD CONSTRAINT `pos_giftcards_ibfk_1` FOREIGN KEY (`person_id`) REFERENCES `pos_people` (`person_id`);

--
-- Constraints for table `pos_customers_points`
--
ALTER TABLE `pos_customers_points`
 ADD CONSTRAINT `pos_customers_points_ibfk_1` FOREIGN KEY (`person_id`) REFERENCES `pos_customers` (`person_id`),
 ADD CONSTRAINT `pos_customers_points_ibfk_2` FOREIGN KEY (`package_id`) REFERENCES `pos_customers_packages` (`package_id`),
 ADD CONSTRAINT `pos_customers_points_ibfk_3` FOREIGN KEY (`sale_id`) REFERENCES `pos_sales` (`sale_id`);

--
-- Constraints for table `pos_sales_reward_points`
--
ALTER TABLE `pos_sales_reward_points`
 ADD CONSTRAINT `pos_sales_reward_points_ibfk_1` FOREIGN KEY (`sale_id`) REFERENCES `pos_sales` (`sale_id`);
