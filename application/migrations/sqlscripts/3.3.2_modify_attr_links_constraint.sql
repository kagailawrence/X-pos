ALTER TABLE `pos_attribute_links`
DROP FOREIGN KEY `pos_attribute_links_ibfk_4`;

ALTER TABLE `pos_attribute_links`
ADD CONSTRAINT `pos_attribute_links_ibfk_4`
FOREIGN KEY (`receiving_id`) REFERENCES `pos_receivings`(`receiving_id`)
ON DELETE CASCADE
ON UPDATE RESTRICT;