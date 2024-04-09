ALTER TABLE `pos_suppliers`
   ADD COLUMN `agency_name` VARCHAR(255) NOT NULL;

INSERT INTO `pos_app_config` (`key`, `value`) VALUES
   ('dateformat', 'm/d/Y'),
   ('timeformat', 'H:i:s'),
   ('barcode_generate_if_empty', '0');

ALTER TABLE `pos_sales_suspended`
    DROP KEY `invoice_number`;

ALTER TABLE `pos_items` 
  CHANGE COLUMN `item_pic` `pic_id` int(10) DEFAULT NULL;

-- Clear out emptied comments (0 inserted in comment if empty #192)
ALTER TABLE pos_sales
MODIFY COLUMN comment text DEFAULT NULL;

ALTER TABLE pos_receivings
MODIFY COLUMN comment text DEFAULT NULL;

ALTER TABLE pos_sales_suspended
MODIFY COLUMN comment text DEFAULT NULL;

UPDATE `pos_sales` SET comment = NULL WHERE comment = '0';
UPDATE `pos_receivings` SET comment = NULL WHERE comment = '0';
UPDATE `pos_sales_suspended` SET comment = NULL WHERE comment = '0';
