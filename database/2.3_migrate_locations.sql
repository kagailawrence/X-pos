INSERT INTO pos_stock_locations (location_name) (SELECT DISTINCT(location) FROM pos_items WHERE NOT EXISTS (select location from pos_stock_locations where location_name = location));
INSERT INTO pos_item_quantities (item_id, location_id, quantity) (SELECT item_id, location_id, quantity FROM pos_items, pos_stock_locations where pos_items.location = pos_stock_locations.location_name);
ALTER TABLE pos_items DROP COLUMN location;
