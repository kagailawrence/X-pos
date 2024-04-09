-- This is to cleanup any orphaned tax migration tables

DROP TABLE IF EXISTS `pos_tax_codes_backup`;
DROP TABLE IF EXISTS `pos_sales_taxes_backup`;
DROP TABLE IF EXISTS `pos_tax_code_rates_backup`;