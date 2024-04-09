UPDATE `pos_sales_payments`
  JOIN `pos_sales` ON `pos_sales`.`sale_id`=`pos_sales_payments`.`sale_id`
  SET `pos_sales_payments`.`payment_time`=`pos_sales`.`sale_time`;
