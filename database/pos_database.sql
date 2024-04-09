-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 06, 2024 at 03:55 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pos`
--

-- --------------------------------------------------------

--
-- Table structure for table `pos_app_config`
--

CREATE TABLE `pos_app_config` (
  `key` varchar(50) NOT NULL,
  `value` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pos_app_config`
--

INSERT INTO `pos_app_config` (`key`, `value`) VALUES
('address', '19'),
('allow_duplicate_barcodes', '1'),
('barcode_content', 'id'),
('barcode_first_row', 'category'),
('barcode_font', '0'),
('barcode_font_size', '10'),
('barcode_formats', 'null'),
('barcode_generate_if_empty', '0'),
('barcode_height', '50'),
('barcode_num_in_row', '2'),
('barcode_page_cellspacing', '20'),
('barcode_page_width', '100'),
('barcode_second_row', 'item_code'),
('barcode_third_row', 'unit_price'),
('barcode_type', 'Code39'),
('barcode_width', '250'),
('cash_decimals', '2'),
('cash_rounding_code', '1'),
('category_dropdown', '1'),
('company', 'dazzcode'),
('company_logo', 'company_logo2.png'),
('country_codes', 'ksh'),
('currency_code', 'Ksh'),
('currency_decimals', '2'),
('currency_symbol', 'ksh'),
('customer_reward_enable', '0'),
('dateformat', 'm/d/Y'),
('date_or_time_format', ''),
('default_receivings_discount', '0'),
('default_receivings_discount_type', '0'),
('default_register_mode', 'sale'),
('default_sales_discount', '0'),
('default_sales_discount_type', '0'),
('default_tax_1_name', ''),
('default_tax_1_rate', ''),
('default_tax_2_name', ''),
('default_tax_2_rate', ''),
('default_tax_category', '0'),
('default_tax_code', ''),
('default_tax_jurisdiction', '0'),
('default_tax_rate', '8'),
('derive_sale_quantity', '0'),
('dinner_table_enable', '0'),
('email', 'mainalawrence32@gmail.com'),
('email_receipt_check_behaviour', 'last'),
('enforce_privacy', ''),
('fax', ''),
('financial_year', '1'),
('gcaptcha_enable', '0'),
('gcaptcha_secret_key', ''),
('gcaptcha_site_key', ''),
('giftcard_number', 'series'),
('image_allowed_types', 'jpg|gif|png'),
('image_max_height', '480'),
('image_max_size', '128'),
('image_max_width', '640'),
('include_hsn', '0'),
('invoice_default_comments', 'This is a default comment'),
('invoice_email_message', 'Dear {CU}, In attachment the receipt for sale {ISEQ}'),
('invoice_enable', '1'),
('invoice_type', 'invoice'),
('language', 'english'),
('language_code', 'en-US'),
('last_used_invoice_number', '1'),
('last_used_quote_number', '0'),
('last_used_work_order_number', '0'),
('lines_per_page', '25'),
('line_sequence', '0'),
('login_form', 'floating_labels'),
('mailpath', '/usr/sbin/sendmail'),
('msg_msg', ''),
('msg_pwd', ''),
('msg_src', ''),
('msg_uid', ''),
('multi_pack_enabled', '0'),
('notify_horizontal_position', 'center'),
('notify_vertical_position', 'bottom'),
('number_locale', 'en_Us'),
('payment_options_order', 'debitcashcredit'),
('phone', '0740938029'),
('print_bottom_margin', '0'),
('print_delay_autoreturn', '0'),
('print_footer', '0'),
('print_header', '0'),
('print_left_margin', '0'),
('print_receipt_check_behaviour', 'last'),
('print_right_margin', '0'),
('print_silently', '1'),
('print_top_margin', '0'),
('protocol', 'mail'),
('quantity_decimals', '0'),
('quote_default_comments', 'This is a default quote comment'),
('receipt_font_size', '12'),
('receipt_show_company_name', '1'),
('receipt_show_description', '1'),
('receipt_show_serialnumber', '1'),
('receipt_show_taxes', '0'),
('receipt_show_tax_ind', '0'),
('receipt_show_total_discount', '1'),
('receipt_template', 'receipt_default'),
('receiving_calculate_average_price', '0'),
('recv_invoice_format', '{CO}'),
('return_policy', 'no return policy'),
('sales_invoice_format', '{CO}'),
('sales_quote_format', 'Q%y{QSEQ:6}'),
('smtp_crypto', 'ssl'),
('smtp_host', ''),
('smtp_pass', ''),
('smtp_port', '465'),
('smtp_timeout', '5'),
('smtp_user', ''),
('suggestions_first_column', 'name'),
('suggestions_second_column', ''),
('suggestions_third_column', ''),
('tax_decimals', '2'),
('tax_id', ''),
('tax_included', '0'),
('theme', 'cosmo'),
('thousands_separator', '1'),
('timeformat', 'H:i:s'),
('timezone', 'Africa/Addis_Ababa'),
('use_destination_based_tax', '1'),
('website', ''),
('work_order_enable', '0'),
('work_order_format', 'W%y{WSEQ:6}');

-- --------------------------------------------------------

--
-- Table structure for table `pos_attribute_definitions`
--

CREATE TABLE `pos_attribute_definitions` (
  `definition_id` int(10) NOT NULL,
  `definition_name` varchar(255) NOT NULL,
  `definition_type` varchar(45) NOT NULL,
  `definition_unit` varchar(16) DEFAULT NULL,
  `definition_flags` tinyint(1) NOT NULL,
  `definition_fk` int(10) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pos_attribute_definitions`
--

INSERT INTO `pos_attribute_definitions` (`definition_id`, `definition_name`, `definition_type`, `definition_unit`, `definition_flags`, `definition_fk`, `deleted`) VALUES
(-1, 'pos_category', 'DROPDOWN', NULL, 0, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `pos_attribute_links`
--

CREATE TABLE `pos_attribute_links` (
  `attribute_id` int(11) DEFAULT NULL,
  `definition_id` int(11) NOT NULL,
  `item_id` int(11) DEFAULT NULL,
  `sale_id` int(11) DEFAULT NULL,
  `receiving_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pos_attribute_values`
--

CREATE TABLE `pos_attribute_values` (
  `attribute_id` int(11) NOT NULL,
  `attribute_value` varchar(255) DEFAULT NULL,
  `attribute_date` date DEFAULT NULL,
  `attribute_decimal` decimal(7,3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pos_cash_up`
--

CREATE TABLE `pos_cash_up` (
  `cashup_id` int(10) NOT NULL,
  `open_date` timestamp NULL DEFAULT current_timestamp(),
  `close_date` timestamp NULL DEFAULT NULL,
  `open_amount_cash` decimal(15,2) NOT NULL,
  `transfer_amount_cash` decimal(15,2) NOT NULL,
  `note` int(1) NOT NULL,
  `closed_amount_cash` decimal(15,2) NOT NULL,
  `closed_amount_card` decimal(15,2) NOT NULL,
  `closed_amount_check` decimal(15,2) NOT NULL,
  `closed_amount_total` decimal(15,2) NOT NULL,
  `description` varchar(255) NOT NULL,
  `open_employee_id` int(10) NOT NULL,
  `close_employee_id` int(10) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0,
  `closed_amount_due` decimal(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pos_customers`
--

CREATE TABLE `pos_customers` (
  `person_id` int(10) NOT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `account_number` varchar(255) DEFAULT NULL,
  `taxable` tinyint(1) NOT NULL DEFAULT 1,
  `tax_id` varchar(32) NOT NULL DEFAULT '',
  `sales_tax_code_id` int(11) DEFAULT NULL,
  `discount` decimal(15,2) NOT NULL DEFAULT 0.00,
  `discount_type` tinyint(1) NOT NULL DEFAULT 0,
  `package_id` int(11) DEFAULT NULL,
  `points` int(11) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `employee_id` int(10) NOT NULL,
  `consent` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pos_customers`
--

INSERT INTO `pos_customers` (`person_id`, `company_name`, `account_number`, `taxable`, `tax_id`, `sales_tax_code_id`, `discount`, `discount_type`, `package_id`, `points`, `deleted`, `date`, `employee_id`, `consent`) VALUES
(2, 'dazzcode', NULL, 1, '', NULL, '0.00', 0, NULL, NULL, 0, '2024-03-05 21:59:55', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pos_customers_packages`
--

CREATE TABLE `pos_customers_packages` (
  `package_id` int(11) NOT NULL,
  `package_name` varchar(255) DEFAULT NULL,
  `points_percent` float NOT NULL DEFAULT 0,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pos_customers_packages`
--

INSERT INTO `pos_customers_packages` (`package_id`, `package_name`, `points_percent`, `deleted`) VALUES
(1, 'Default', 0, 0),
(2, 'Bronze', 10, 0),
(3, 'Silver', 20, 0),
(4, 'Gold', 30, 0),
(5, 'Premium', 50, 0);

-- --------------------------------------------------------

--
-- Table structure for table `pos_customers_points`
--

CREATE TABLE `pos_customers_points` (
  `id` int(11) NOT NULL,
  `person_id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL,
  `sale_id` int(11) NOT NULL,
  `points_earned` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pos_dinner_tables`
--

CREATE TABLE `pos_dinner_tables` (
  `dinner_table_id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pos_dinner_tables`
--

INSERT INTO `pos_dinner_tables` (`dinner_table_id`, `name`, `status`, `deleted`) VALUES
(1, 'Delivery', 0, 0),
(2, 'Take Away', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `pos_employees`
--

CREATE TABLE `pos_employees` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `person_id` int(10) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0,
  `hash_version` tinyint(1) NOT NULL DEFAULT 2,
  `language` varchar(48) DEFAULT NULL,
  `language_code` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pos_employees`
--

INSERT INTO `pos_employees` (`username`, `password`, `person_id`, `deleted`, `hash_version`, `language`, `language_code`) VALUES
('admin', '$2y$10$CwRBGsT5dHcLyia3x7YneOCeLeR38lZeWw2Mqh0xTu9LJ0LsX49MK', 1, 0, 2, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `pos_expenses`
--

CREATE TABLE `pos_expenses` (
  `expense_id` int(10) NOT NULL,
  `date` timestamp NULL DEFAULT current_timestamp(),
  `amount` decimal(15,2) NOT NULL,
  `payment_type` varchar(40) NOT NULL,
  `expense_category_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `employee_id` int(10) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0,
  `supplier_tax_code` varchar(255) DEFAULT NULL,
  `tax_amount` decimal(15,2) DEFAULT NULL,
  `supplier_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pos_expense_categories`
--

CREATE TABLE `pos_expense_categories` (
  `expense_category_id` int(10) NOT NULL,
  `category_name` varchar(255) DEFAULT NULL,
  `category_description` varchar(255) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pos_giftcards`
--

CREATE TABLE `pos_giftcards` (
  `record_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `giftcard_id` int(11) NOT NULL,
  `giftcard_number` varchar(255) DEFAULT NULL,
  `value` decimal(15,2) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0,
  `person_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pos_grants`
--

CREATE TABLE `pos_grants` (
  `permission_id` varchar(255) NOT NULL,
  `person_id` int(10) NOT NULL,
  `menu_group` varchar(32) DEFAULT 'home'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pos_grants`
--

INSERT INTO `pos_grants` (`permission_id`, `person_id`, `menu_group`) VALUES
('attributes', 1, 'office'),
('cashups', 1, 'home'),
('config', 1, 'office'),
('customers', 1, 'home'),
('employees', 1, 'office'),
('expenses', 1, 'home'),
('expenses_categories', 1, 'office'),
('giftcards', 1, 'home'),
('home', 1, 'office'),
('items', 1, 'home'),
('items_stock', 1, '--'),
('item_kits', 1, 'home'),
('messages', 1, 'home'),
('office', 1, 'home'),
('receivings', 1, 'home'),
('receivings_stock', 1, '--'),
('reports', 1, 'home'),
('reports_categories', 1, '--'),
('reports_customers', 1, '--'),
('reports_discounts', 1, '--'),
('reports_employees', 1, '--'),
('reports_expenses_categories', 1, '--'),
('reports_inventory', 1, '--'),
('reports_items', 1, '--'),
('reports_payments', 1, '--'),
('reports_receivings', 1, '--'),
('reports_sales', 1, '--'),
('reports_sales_taxes', 1, '--'),
('reports_suppliers', 1, '--'),
('reports_taxes', 1, '--'),
('sales', 1, 'home'),
('sales_change_price', 1, '--'),
('sales_delete', 1, '--'),
('sales_stock', 1, '--'),
('suppliers', 1, 'home'),
('taxes', 1, 'office');

-- --------------------------------------------------------

--
-- Table structure for table `pos_inventory`
--

CREATE TABLE `pos_inventory` (
  `trans_id` int(11) NOT NULL,
  `trans_items` int(11) NOT NULL DEFAULT 0,
  `trans_user` int(11) NOT NULL DEFAULT 0,
  `trans_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `trans_comment` text NOT NULL,
  `trans_location` int(11) NOT NULL,
  `trans_inventory` decimal(15,3) NOT NULL DEFAULT 0.000
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pos_inventory`
--

INSERT INTO `pos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
(1, 1, 1, '2024-03-05 21:57:04', 'Manual Edit of Quantity', 1, '0.000'),
(2, 1, 1, '2024-03-05 21:58:04', 'RECV 1', 1, '10.000'),
(3, 1, 1, '2024-03-05 22:00:05', 'POS 1', 1, '-1.000'),
(4, 1, 1, '2024-03-06 06:54:00', 'POS 2', 1, '-1.000'),
(5, 1, 1, '2024-03-06 07:15:40', 'POS 3', 1, '-1.000'),
(6, 1, 1, '2024-03-06 07:30:11', 'POS 4', 1, '-1.000'),
(7, 1, 1, '2024-03-06 08:10:59', 'POS 5', 1, '-1.000'),
(8, 1, 1, '2024-03-06 08:16:00', 'POS 6', 1, '-1.000');

-- --------------------------------------------------------

--
-- Table structure for table `pos_items`
--

CREATE TABLE `pos_items` (
  `name` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `item_number` varchar(255) DEFAULT NULL,
  `description` varchar(255) NOT NULL,
  `cost_price` decimal(15,2) NOT NULL,
  `unit_price` decimal(15,2) NOT NULL,
  `reorder_level` decimal(15,3) NOT NULL DEFAULT 0.000,
  `receiving_quantity` decimal(15,3) NOT NULL DEFAULT 1.000,
  `item_id` int(10) NOT NULL,
  `pic_filename` varchar(255) DEFAULT NULL,
  `allow_alt_description` tinyint(1) NOT NULL,
  `is_serialized` tinyint(1) NOT NULL,
  `stock_type` tinyint(1) NOT NULL DEFAULT 0,
  `item_type` tinyint(1) NOT NULL DEFAULT 0,
  `deleted` tinyint(1) NOT NULL DEFAULT 0,
  `tax_category_id` int(10) DEFAULT NULL,
  `qty_per_pack` decimal(15,3) NOT NULL DEFAULT 1.000,
  `pack_name` varchar(8) DEFAULT 'Each',
  `low_sell_item_id` int(10) DEFAULT 0,
  `hsn_code` varchar(32) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pos_items`
--

INSERT INTO `pos_items` (`name`, `category`, `supplier_id`, `item_number`, `description`, `cost_price`, `unit_price`, `reorder_level`, `receiving_quantity`, `item_id`, `pic_filename`, `allow_alt_description`, `is_serialized`, `stock_type`, `item_type`, `deleted`, `tax_category_id`, `qty_per_pack`, `pack_name`, `low_sell_item_id`, `hsn_code`) VALUES
('dell', 'laptops', NULL, NULL, '', '2000.00', '0.00', '1.000', '1.000', 1, NULL, 0, 0, 0, 0, 0, 0, '1.000', 'Each', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `pos_items_taxes`
--

CREATE TABLE `pos_items_taxes` (
  `item_id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `percent` decimal(15,3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pos_items_taxes`
--

INSERT INTO `pos_items_taxes` (`item_id`, `name`, `percent`) VALUES
(1, 'full', '8.000'),
(1, 'partual', '16.000');

-- --------------------------------------------------------

--
-- Table structure for table `pos_item_kits`
--

CREATE TABLE `pos_item_kits` (
  `item_kit_id` int(11) NOT NULL,
  `item_kit_number` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `item_id` int(10) NOT NULL DEFAULT 0,
  `kit_discount` decimal(15,2) NOT NULL DEFAULT 0.00,
  `kit_discount_type` tinyint(1) NOT NULL DEFAULT 0,
  `price_option` tinyint(1) NOT NULL DEFAULT 0,
  `print_option` tinyint(1) NOT NULL DEFAULT 0,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pos_item_kit_items`
--

CREATE TABLE `pos_item_kit_items` (
  `item_kit_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `quantity` decimal(15,3) NOT NULL,
  `kit_sequence` int(3) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pos_item_quantities`
--

CREATE TABLE `pos_item_quantities` (
  `item_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `quantity` decimal(15,3) NOT NULL DEFAULT 0.000
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pos_item_quantities`
--

INSERT INTO `pos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
(1, 1, '4.000');

-- --------------------------------------------------------

--
-- Table structure for table `pos_migrations`
--

CREATE TABLE `pos_migrations` (
  `version` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pos_migrations`
--

INSERT INTO `pos_migrations` (`version`) VALUES
(20210714140000);

-- --------------------------------------------------------

--
-- Table structure for table `pos_modules`
--

CREATE TABLE `pos_modules` (
  `name_lang_key` varchar(255) NOT NULL,
  `desc_lang_key` varchar(255) NOT NULL,
  `sort` int(10) NOT NULL,
  `module_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pos_modules`
--

INSERT INTO `pos_modules` (`name_lang_key`, `desc_lang_key`, `sort`, `module_id`) VALUES
('module_attributes', 'module_attributes_desc', 107, 'attributes'),
('module_cashups', 'module_cashups_desc', 110, 'cashups'),
('module_config', 'module_config_desc', 900, 'config'),
('module_customers', 'module_customers_desc', 10, 'customers'),
('module_employees', 'module_employees_desc', 80, 'employees'),
('module_expenses', 'module_expenses_desc', 108, 'expenses'),
('module_expenses_categories', 'module_expenses_categories_desc', 109, 'expenses_categories'),
('module_giftcards', 'module_giftcards_desc', 90, 'giftcards'),
('module_home', 'module_home_desc', 1, 'home'),
('module_items', 'module_items_desc', 20, 'items'),
('module_item_kits', 'module_item_kits_desc', 30, 'item_kits'),
('module_messages', 'module_messages_desc', 98, 'messages'),
('module_office', 'module_office_desc', 999, 'office'),
('module_receivings', 'module_receivings_desc', 60, 'receivings'),
('module_reports', 'module_reports_desc', 50, 'reports'),
('module_sales', 'module_sales_desc', 70, 'sales'),
('module_suppliers', 'module_suppliers_desc', 40, 'suppliers'),
('module_taxes', 'module_taxes_desc', 105, 'taxes');

-- --------------------------------------------------------

--
-- Table structure for table `pos_people`
--

CREATE TABLE `pos_people` (
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `gender` int(1) DEFAULT NULL,
  `phone_number` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address_1` varchar(255) NOT NULL,
  `address_2` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zip` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `comments` text NOT NULL,
  `person_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pos_people`
--

INSERT INTO `pos_people` (`first_name`, `last_name`, `gender`, `phone_number`, `email`, `address_1`, `address_2`, `city`, `state`, `zip`, `country`, `comments`, `person_id`) VALUES
('Lawrence', 'John', 1, '0740938029', 'john@example.com', '19', '29', 'Karatina', '', '10101', 'Kenya', '', 1),
('Lawrence', 'Maina', NULL, '0740938029', 'mainalawrence32@gmail.com', '19', '19', 'Karatina', '', '10101', 'Kenya', '', 2);

-- --------------------------------------------------------

--
-- Table structure for table `pos_permissions`
--

CREATE TABLE `pos_permissions` (
  `permission_id` varchar(255) NOT NULL,
  `module_id` varchar(255) NOT NULL,
  `location_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pos_permissions`
--

INSERT INTO `pos_permissions` (`permission_id`, `module_id`, `location_id`) VALUES
('attributes', 'attributes', NULL),
('cashups', 'cashups', NULL),
('config', 'config', NULL),
('customers', 'customers', NULL),
('employees', 'employees', NULL),
('expenses', 'expenses', NULL),
('expenses_categories', 'expenses_categories', NULL),
('giftcards', 'giftcards', NULL),
('home', 'home', NULL),
('items', 'items', NULL),
('items_stock', 'items', 1),
('item_kits', 'item_kits', NULL),
('messages', 'messages', NULL),
('office', 'office', NULL),
('receivings', 'receivings', NULL),
('receivings_stock', 'receivings', 1),
('reports', 'reports', NULL),
('reports_categories', 'reports', NULL),
('reports_customers', 'reports', NULL),
('reports_discounts', 'reports', NULL),
('reports_employees', 'reports', NULL),
('reports_expenses_categories', 'reports', NULL),
('reports_inventory', 'reports', NULL),
('reports_items', 'reports', NULL),
('reports_payments', 'reports', NULL),
('reports_receivings', 'reports', NULL),
('reports_sales', 'reports', NULL),
('reports_sales_taxes', 'reports', NULL),
('reports_suppliers', 'reports', NULL),
('reports_taxes', 'reports', NULL),
('sales', 'sales', NULL),
('sales_change_price', 'sales', NULL),
('sales_delete', 'sales', NULL),
('sales_stock', 'sales', 1),
('suppliers', 'suppliers', NULL),
('taxes', 'taxes', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pos_receivings`
--

CREATE TABLE `pos_receivings` (
  `receiving_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `supplier_id` int(10) DEFAULT NULL,
  `employee_id` int(10) NOT NULL DEFAULT 0,
  `comment` text DEFAULT NULL,
  `receiving_id` int(10) NOT NULL,
  `payment_type` varchar(20) DEFAULT NULL,
  `reference` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pos_receivings`
--

INSERT INTO `pos_receivings` (`receiving_time`, `supplier_id`, `employee_id`, `comment`, `receiving_id`, `payment_type`, `reference`) VALUES
('2024-03-05 21:58:04', NULL, 1, '', 1, 'Cash', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pos_receivings_items`
--

CREATE TABLE `pos_receivings_items` (
  `receiving_id` int(10) NOT NULL DEFAULT 0,
  `item_id` int(10) NOT NULL DEFAULT 0,
  `description` varchar(30) DEFAULT NULL,
  `serialnumber` varchar(30) DEFAULT NULL,
  `line` int(3) NOT NULL,
  `quantity_purchased` decimal(15,3) NOT NULL DEFAULT 0.000,
  `item_cost_price` decimal(15,2) NOT NULL,
  `item_unit_price` decimal(15,2) NOT NULL,
  `discount` decimal(15,2) NOT NULL DEFAULT 0.00,
  `discount_type` tinyint(1) NOT NULL DEFAULT 0,
  `item_location` int(11) NOT NULL,
  `receiving_quantity` decimal(15,3) NOT NULL DEFAULT 1.000
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pos_receivings_items`
--

INSERT INTO `pos_receivings_items` (`receiving_id`, `item_id`, `description`, `serialnumber`, `line`, `quantity_purchased`, `item_cost_price`, `item_unit_price`, `discount`, `discount_type`, `item_location`, `receiving_quantity`) VALUES
(1, 1, '', NULL, 1, '10.000', '2000.00', '2000.00', '0.00', 0, 1, '1.000');

-- --------------------------------------------------------

--
-- Table structure for table `pos_sales`
--

CREATE TABLE `pos_sales` (
  `sale_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `customer_id` int(10) DEFAULT NULL,
  `employee_id` int(10) NOT NULL DEFAULT 0,
  `comment` text DEFAULT NULL,
  `invoice_number` varchar(32) DEFAULT NULL,
  `quote_number` varchar(32) DEFAULT NULL,
  `sale_id` int(10) NOT NULL,
  `sale_status` tinyint(1) NOT NULL DEFAULT 0,
  `dinner_table_id` int(11) DEFAULT NULL,
  `work_order_number` varchar(32) DEFAULT NULL,
  `sale_type` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pos_sales`
--

INSERT INTO `pos_sales` (`sale_time`, `customer_id`, `employee_id`, `comment`, `invoice_number`, `quote_number`, `sale_id`, `sale_status`, `dinner_table_id`, `work_order_number`, `sale_type`) VALUES
('2024-03-05 22:00:05', 2, 1, '', '100', NULL, 1, 0, NULL, NULL, 1),
('2024-03-06 06:54:00', 2, 1, '', NULL, NULL, 2, 0, 1, NULL, 0),
('2024-03-06 07:15:40', NULL, 1, '', NULL, NULL, 3, 0, 1, NULL, 0),
('2024-03-06 07:30:11', NULL, 1, '', NULL, NULL, 4, 0, 1, NULL, 0),
('2024-03-06 08:10:58', NULL, 1, '', NULL, NULL, 5, 0, 1, NULL, 0),
('2024-03-06 08:16:00', NULL, 1, '', NULL, NULL, 6, 0, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `pos_sales_items`
--

CREATE TABLE `pos_sales_items` (
  `sale_id` int(10) NOT NULL DEFAULT 0,
  `item_id` int(10) NOT NULL DEFAULT 0,
  `description` varchar(255) DEFAULT NULL,
  `serialnumber` varchar(30) DEFAULT NULL,
  `line` int(3) NOT NULL DEFAULT 0,
  `quantity_purchased` decimal(15,3) NOT NULL DEFAULT 0.000,
  `item_cost_price` decimal(15,2) NOT NULL,
  `item_unit_price` decimal(15,2) NOT NULL,
  `discount` decimal(15,2) NOT NULL DEFAULT 0.00,
  `discount_type` tinyint(1) NOT NULL DEFAULT 0,
  `item_location` int(11) NOT NULL,
  `print_option` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pos_sales_items`
--

INSERT INTO `pos_sales_items` (`sale_id`, `item_id`, `description`, `serialnumber`, `line`, `quantity_purchased`, `item_cost_price`, `item_unit_price`, `discount`, `discount_type`, `item_location`, `print_option`) VALUES
(1, 1, '', '', 1, '1.000', '2000.00', '0.00', '0.00', 0, 1, 0),
(2, 1, '', '', 1, '1.000', '2000.00', '20000.00', '0.00', 0, 1, 0),
(3, 1, '', '', 1, '1.000', '2000.00', '10000.00', '0.00', 0, 1, 0),
(4, 1, '', '', 1, '1.000', '2000.00', '10000.00', '0.00', 0, 1, 0),
(5, 1, '', '', 1, '1.000', '2000.00', '10000.00', '0.00', 0, 1, 0),
(6, 1, '', '', 1, '1.000', '2000.00', '1000.00', '0.00', 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `pos_sales_items_taxes`
--

CREATE TABLE `pos_sales_items_taxes` (
  `sale_id` int(10) NOT NULL,
  `item_id` int(10) NOT NULL,
  `line` int(3) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL,
  `percent` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `tax_type` tinyint(1) NOT NULL DEFAULT 0,
  `rounding_code` tinyint(1) NOT NULL DEFAULT 0,
  `cascade_sequence` tinyint(1) NOT NULL DEFAULT 0,
  `item_tax_amount` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `sales_tax_code_id` int(11) DEFAULT NULL,
  `jurisdiction_id` int(11) DEFAULT NULL,
  `tax_category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pos_sales_items_taxes`
--

INSERT INTO `pos_sales_items_taxes` (`sale_id`, `item_id`, `line`, `name`, `percent`, `tax_type`, `rounding_code`, `cascade_sequence`, `item_tax_amount`, `sales_tax_code_id`, `jurisdiction_id`, `tax_category_id`) VALUES
(1, 1, 1, 'full', '8.0000', 0, 1, 0, '0.0000', NULL, NULL, NULL),
(1, 1, 1, 'partual', '16.0000', 0, 1, 0, '0.0000', NULL, NULL, NULL),
(2, 1, 1, 'full', '8.0000', 1, 1, 0, '1600.0000', NULL, NULL, NULL),
(2, 1, 1, 'partual', '16.0000', 1, 1, 0, '3200.0000', NULL, NULL, NULL),
(3, 1, 1, 'full', '8.0000', 1, 1, 0, '800.0000', NULL, NULL, NULL),
(3, 1, 1, 'partual', '16.0000', 1, 1, 0, '1600.0000', NULL, NULL, NULL),
(4, 1, 1, 'full', '8.0000', 1, 1, 0, '800.0000', NULL, NULL, NULL),
(4, 1, 1, 'partual', '16.0000', 1, 1, 0, '1600.0000', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pos_sales_payments`
--

CREATE TABLE `pos_sales_payments` (
  `payment_id` int(11) NOT NULL,
  `sale_id` int(10) NOT NULL,
  `payment_type` varchar(40) NOT NULL,
  `payment_amount` decimal(15,2) NOT NULL,
  `cash_refund` decimal(15,2) NOT NULL DEFAULT 0.00,
  `cash_adjustment` tinyint(4) NOT NULL DEFAULT 0,
  `employee_id` int(11) DEFAULT NULL,
  `payment_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `reference_code` varchar(40) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pos_sales_payments`
--

INSERT INTO `pos_sales_payments` (`payment_id`, `sale_id`, `payment_type`, `payment_amount`, `cash_refund`, `cash_adjustment`, `employee_id`, `payment_time`, `reference_code`) VALUES
(1, 2, 'Cash', '14800.00', '0.00', 0, 1, '2024-03-06 06:54:00', ''),
(2, 2, 'Debit Card', '10000.00', '0.00', 0, 1, '2024-03-06 06:54:00', ''),
(3, 3, 'M-pesa', '12400.00', '0.00', 0, 1, '2024-03-06 07:15:40', ''),
(4, 4, 'M-pesa', '14800.00', '0.00', 0, 1, '2024-03-06 07:30:11', ''),
(5, 4, 'Cash', '0.00', '2400.00', 0, 1, '2024-03-06 07:30:11', ''),
(6, 5, 'M-pesa', '10000.00', '0.00', 0, 1, '2024-03-06 08:10:59', ''),
(7, 6, 'Cash', '1000.00', '0.00', 0, 1, '2024-03-06 08:16:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `pos_sales_reward_points`
--

CREATE TABLE `pos_sales_reward_points` (
  `id` int(11) NOT NULL,
  `sale_id` int(11) NOT NULL,
  `earned` float NOT NULL,
  `used` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pos_sales_taxes`
--

CREATE TABLE `pos_sales_taxes` (
  `sales_taxes_id` int(11) NOT NULL,
  `sale_id` int(10) NOT NULL,
  `jurisdiction_id` int(11) DEFAULT NULL,
  `tax_category_id` int(11) DEFAULT NULL,
  `tax_type` smallint(2) NOT NULL,
  `tax_group` varchar(32) NOT NULL,
  `sale_tax_basis` decimal(15,4) NOT NULL,
  `sale_tax_amount` decimal(15,4) NOT NULL,
  `print_sequence` tinyint(1) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL,
  `tax_rate` decimal(15,4) NOT NULL,
  `sales_tax_code_id` int(11) DEFAULT NULL,
  `rounding_code` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pos_sales_taxes`
--

INSERT INTO `pos_sales_taxes` (`sales_taxes_id`, `sale_id`, `jurisdiction_id`, `tax_category_id`, `tax_type`, `tax_group`, `sale_tax_basis`, `sale_tax_amount`, `print_sequence`, `name`, `tax_rate`, `sales_tax_code_id`, `rounding_code`) VALUES
(1, 2, NULL, NULL, 1, 'full', '20000.0000', '1600.0000', 1, 'full', '8.0000', NULL, 1),
(2, 2, NULL, NULL, 1, 'partual', '20000.0000', '3200.0000', 3, 'partual', '16.0000', NULL, 1),
(3, 3, NULL, NULL, 1, 'full', '10000.0000', '800.0000', 1, 'full', '8.0000', NULL, 1),
(4, 3, NULL, NULL, 1, 'partual', '10000.0000', '1600.0000', 3, 'partual', '16.0000', NULL, 1),
(5, 4, NULL, NULL, 1, 'full', '10000.0000', '800.0000', 1, 'full', '8.0000', NULL, 1),
(6, 4, NULL, NULL, 1, 'partual', '10000.0000', '1600.0000', 3, 'partual', '16.0000', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pos_sessions`
--

CREATE TABLE `pos_sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` mediumblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pos_sessions`
--

INSERT INTO `pos_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('0df3ad05b468e05b88343a2c49a309f643107d7e', '::1', 1709674511, 0x5f5f63695f6c6173745f726567656e65726174657c693a313730393637343531313b),
('03bef72bedc26456c6675af5ee09fb28b702a47e', '::1', 1709674816, 0x5f5f63695f6c6173745f726567656e65726174657c693a313730393637343831363b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b),
('a0953c98f09d2f9755969099bdad64ab46aa6db7', '::1', 1709675359, 0x5f5f63695f6c6173745f726567656e65726174657c693a313730393637343831363b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a363a226f6666696365223b),
('140d44e3779a90be793b684061cd23261ef3fac2', '::1', 1709704549, 0x5f5f63695f6c6173745f726567656e65726174657c693a313730393730343534393b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a363a226f6666696365223b),
('310da00b4305d246451158258effd9ff1750b941', '::1', 1709704858, 0x5f5f63695f6c6173745f726567656e65726174657c693a313730393730343835383b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b616c6c6f775f74656d705f6974656d737c693a313b6974656d5f6c6f636174696f6e7c733a313a2231223b73616c655f69647c693a2d313b73616c65735f6c6f636174696f6e7c733a313a2231223b726563765f73746f636b5f736f757263657c733a313a2231223b726563765f636172747c613a303a7b7d726563765f6d6f64657c733a373a2272656365697665223b726563765f737570706c6965727c693a2d313b73616c65735f656d706c6f7965657c733a313a2231223b636173685f61646a7573746d656e745f616d6f756e747c643a303b),
('09be0976f7a5bf65597bc4e7383fc7195601fe56', '::1', 1709705174, 0x5f5f63695f6c6173745f726567656e65726174657c693a313730393730353137343b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b616c6c6f775f74656d705f6974656d737c693a313b6974656d5f6c6f636174696f6e7c733a313a2231223b73616c655f69647c693a2d313b73616c65735f6c6f636174696f6e7c733a313a2231223b726563765f73746f636b5f736f757263657c733a313a2231223b726563765f636172747c613a303a7b7d726563765f6d6f64657c733a373a2272656365697665223b726563765f737570706c6965727c693a2d313b73616c65735f656d706c6f7965657c733a313a2231223b636173685f61646a7573746d656e745f616d6f756e747c643a303b636173685f726f756e64696e677c693a303b636173685f6d6f64657c693a303b73616c65735f636172747c613a313a7b693a313b613a32353a7b733a373a226974656d5f6964223b733a313a2231223b733a31333a226974656d5f6c6f636174696f6e223b733a313a2231223b733a31303a2273746f636b5f6e616d65223b733a353a2273746f636b223b733a343a226c696e65223b693a313b733a343a226e616d65223b733a343a2264656c6c223b733a31313a226974656d5f6e756d626572223b4e3b733a31363a226174747269627574655f76616c756573223b4e3b733a31383a226174747269627574655f647476616c756573223b4e3b733a31313a226465736372697074696f6e223b733a303a22223b733a31323a2273657269616c6e756d626572223b733a303a22223b733a32313a22616c6c6f775f616c745f6465736372697074696f6e223b733a313a2230223b733a31333a2269735f73657269616c697a6564223b733a313a2230223b733a383a227175616e74697479223b643a313b733a383a22646973636f756e74223b643a303b733a31333a22646973636f756e745f74797065223b733a313a2230223b733a383a22696e5f73746f636b223b733a353a22392e303030223b733a353a227072696365223b643a32303030303b733a31303a22636f73745f7072696365223b733a373a22323030302e3030223b733a353a22746f74616c223b733a31303a2232303030302e30303030223b733a31363a22646973636f756e7465645f746f74616c223b733a31303a2232303030302e30303030223b733a31323a227072696e745f6f7074696f6e223b693a303b733a31303a2273746f636b5f74797065223b733a313a2230223b733a393a226974656d5f74797065223b733a313a2230223b733a383a2268736e5f636f6465223b733a303a22223b733a31353a227461785f63617465676f72795f6964223b733a313a2230223b7d7d73616c65735f637573746f6d65727c733a313a2232223b73616c65735f6d6f64657c733a343a2273616c65223b73616c65735f656d61696c5f726563656970747c733a353a2266616c7365223b73616c65735f7061796d656e74737c613a303a7b7d),
('39d19b7242238dd53c03ba9cea75e4f0f0c5407d', '::1', 1709705944, 0x5f5f63695f6c6173745f726567656e65726174657c693a313730393730353934343b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b616c6c6f775f74656d705f6974656d737c693a313b73616c655f69647c693a2d313b636173685f726f756e64696e677c693a303b636173685f6d6f64657c693a303b73616c65735f636172747c613a313a7b693a313b613a32353a7b733a373a226974656d5f6964223b733a313a2231223b733a31333a226974656d5f6c6f636174696f6e223b733a313a2231223b733a31303a2273746f636b5f6e616d65223b733a353a2273746f636b223b733a343a226c696e65223b693a313b733a343a226e616d65223b733a343a2264656c6c223b733a31313a226974656d5f6e756d626572223b4e3b733a31363a226174747269627574655f76616c756573223b4e3b733a31383a226174747269627574655f647476616c756573223b4e3b733a31313a226465736372697074696f6e223b733a303a22223b733a31323a2273657269616c6e756d626572223b733a303a22223b733a32313a22616c6c6f775f616c745f6465736372697074696f6e223b733a313a2230223b733a31333a2269735f73657269616c697a6564223b733a313a2230223b733a383a227175616e74697479223b643a313b733a383a22646973636f756e74223b733a343a22302e3030223b733a31333a22646973636f756e745f74797065223b733a313a2230223b733a383a22696e5f73746f636b223b733a353a22392e303030223b733a353a227072696365223b643a32303030303b733a31303a22636f73745f7072696365223b733a373a22323030302e3030223b733a353a22746f74616c223b733a31303a2232303030302e30303030223b733a31363a22646973636f756e7465645f746f74616c223b733a31303a2232303030302e30303030223b733a31323a227072696e745f6f7074696f6e223b693a303b733a31303a2273746f636b5f74797065223b733a313a2230223b733a393a226974656d5f74797065223b733a313a2230223b733a383a2268736e5f636f6465223b733a303a22223b733a31353a227461785f63617465676f72795f6964223b733a313a2230223b7d7d73616c65735f637573746f6d65727c733a313a2232223b73616c65735f6d6f64657c733a343a2273616c65223b64696e6e65725f7461626c657c733a313a2231223b73616c65735f6c6f636174696f6e7c733a313a2231223b73616c655f747970657c693a303b73616c65735f7061796d656e74737c613a303a7b7d),
('5d1fe8a038b75b6dec09dd63ad83340581a2e09c', '::1', 1709707514, 0x5f5f63695f6c6173745f726567656e65726174657c693a313730393730373531343b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a363a226f6666696365223b616c6c6f775f74656d705f6974656d737c693a313b73616c655f69647c693a2d313b636173685f726f756e64696e677c693a303b636173685f6d6f64657c693a303b73616c65735f636172747c613a313a7b693a313b613a32353a7b733a373a226974656d5f6964223b733a313a2231223b733a31333a226974656d5f6c6f636174696f6e223b733a313a2231223b733a31303a2273746f636b5f6e616d65223b733a353a2273746f636b223b733a343a226c696e65223b693a313b733a343a226e616d65223b733a343a2264656c6c223b733a31313a226974656d5f6e756d626572223b4e3b733a31363a226174747269627574655f76616c756573223b4e3b733a31383a226174747269627574655f647476616c756573223b4e3b733a31313a226465736372697074696f6e223b733a303a22223b733a31323a2273657269616c6e756d626572223b733a303a22223b733a32313a22616c6c6f775f616c745f6465736372697074696f6e223b733a313a2230223b733a31333a2269735f73657269616c697a6564223b733a313a2230223b733a383a227175616e74697479223b643a313b733a383a22646973636f756e74223b733a343a22302e3030223b733a31333a22646973636f756e745f74797065223b733a313a2230223b733a383a22696e5f73746f636b223b733a353a22392e303030223b733a353a227072696365223b643a32303030303b733a31303a22636f73745f7072696365223b733a373a22323030302e3030223b733a353a22746f74616c223b733a31303a2232303030302e30303030223b733a31363a22646973636f756e7465645f746f74616c223b733a31303a2232303030302e30303030223b733a31323a227072696e745f6f7074696f6e223b693a303b733a31303a2273746f636b5f74797065223b733a313a2230223b733a393a226974656d5f74797065223b733a313a2230223b733a383a2268736e5f636f6465223b733a303a22223b733a31353a227461785f63617465676f72795f6964223b733a313a2230223b7d7d73616c65735f637573746f6d65727c733a313a2232223b73616c65735f6d6f64657c733a343a2273616c65223b64696e6e65725f7461626c657c733a313a2231223b73616c65735f6c6f636174696f6e7c733a313a2231223b73616c655f747970657c693a303b73616c65735f7061796d656e74737c613a303a7b7d),
('cdc3ca1b1274d909969dfdf4bac947ec26591c94', '::1', 1709707999, 0x5f5f63695f6c6173745f726567656e65726174657c693a313730393730373939393b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b616c6c6f775f74656d705f6974656d737c693a313b73616c655f69647c693a2d313b636173685f726f756e64696e677c693a303b636173685f6d6f64657c693a303b73616c65735f636172747c613a313a7b693a313b613a32353a7b733a373a226974656d5f6964223b733a313a2231223b733a31333a226974656d5f6c6f636174696f6e223b733a313a2231223b733a31303a2273746f636b5f6e616d65223b733a353a2273746f636b223b733a343a226c696e65223b693a313b733a343a226e616d65223b733a343a2264656c6c223b733a31313a226974656d5f6e756d626572223b4e3b733a31363a226174747269627574655f76616c756573223b4e3b733a31383a226174747269627574655f647476616c756573223b4e3b733a31313a226465736372697074696f6e223b733a303a22223b733a31323a2273657269616c6e756d626572223b733a303a22223b733a32313a22616c6c6f775f616c745f6465736372697074696f6e223b733a313a2230223b733a31333a2269735f73657269616c697a6564223b733a313a2230223b733a383a227175616e74697479223b643a313b733a383a22646973636f756e74223b733a343a22302e3030223b733a31333a22646973636f756e745f74797065223b733a313a2230223b733a383a22696e5f73746f636b223b733a353a22392e303030223b733a353a227072696365223b643a32303030303b733a31303a22636f73745f7072696365223b733a373a22323030302e3030223b733a353a22746f74616c223b733a31303a2232303030302e30303030223b733a31363a22646973636f756e7465645f746f74616c223b733a31303a2232303030302e30303030223b733a31323a227072696e745f6f7074696f6e223b693a303b733a31303a2273746f636b5f74797065223b733a313a2230223b733a393a226974656d5f74797065223b733a313a2230223b733a383a2268736e5f636f6465223b733a303a22223b733a31353a227461785f63617465676f72795f6964223b733a313a2230223b7d7d73616c65735f637573746f6d65727c733a313a2232223b73616c65735f6d6f64657c733a343a2273616c65223b64696e6e65725f7461626c657c733a313a2231223b73616c65735f6c6f636174696f6e7c733a313a2231223b73616c655f747970657c693a303b73616c65735f7061796d656e74737c613a303a7b7d),
('ee8995f4f912f3a52000716c4cfad7c391530868', '::1', 1709708903, 0x5f5f63695f6c6173745f726567656e65726174657c693a313730393730383930333b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b616c6c6f775f74656d705f6974656d737c693a313b73616c655f69647c693a2d313b73616c65735f6c6f636174696f6e7c733a313a2231223b),
('342cae64bb21b5d78d655bda31b60a73b212ec4d', '::1', 1709709308, 0x5f5f63695f6c6173745f726567656e65726174657c693a313730393730393330383b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b616c6c6f775f74656d705f6974656d737c693a313b73616c655f69647c693a2d313b73616c65735f6c6f636174696f6e7c733a313a2231223b636173685f726f756e64696e677c693a303b636173685f6d6f64657c693a303b73616c65735f636172747c613a313a7b693a313b613a32353a7b733a373a226974656d5f6964223b733a313a2231223b733a31333a226974656d5f6c6f636174696f6e223b733a313a2231223b733a31303a2273746f636b5f6e616d65223b733a353a2273746f636b223b733a343a226c696e65223b693a313b733a343a226e616d65223b733a343a2264656c6c223b733a31313a226974656d5f6e756d626572223b4e3b733a31363a226174747269627574655f76616c756573223b4e3b733a31383a226174747269627574655f647476616c756573223b4e3b733a31313a226465736372697074696f6e223b733a303a22223b733a31323a2273657269616c6e756d626572223b733a303a22223b733a32313a22616c6c6f775f616c745f6465736372697074696f6e223b733a313a2230223b733a31333a2269735f73657269616c697a6564223b733a313a2230223b733a383a227175616e74697479223b643a313b733a383a22646973636f756e74223b643a303b733a31333a22646973636f756e745f74797065223b733a313a2230223b733a383a22696e5f73746f636b223b733a353a22382e303030223b733a353a227072696365223b643a31303030303b733a31303a22636f73745f7072696365223b733a373a22323030302e3030223b733a353a22746f74616c223b733a31303a2231303030302e30303030223b733a31363a22646973636f756e7465645f746f74616c223b733a31303a2231303030302e30303030223b733a31323a227072696e745f6f7074696f6e223b693a303b733a31303a2273746f636b5f74797065223b733a313a2230223b733a393a226974656d5f74797065223b733a313a2230223b733a383a2268736e5f636f6465223b733a303a22223b733a31353a227461785f63617465676f72795f6964223b733a313a2230223b7d7d73616c65735f637573746f6d65727c693a2d313b73616c65735f6d6f64657c733a343a2273616c65223b64696e6e65725f7461626c657c693a313b73616c65735f7061796d656e74737c613a303a7b7d),
('c369538dee60781b62e4814b2326a8182da755d8', '::1', 1709709649, 0x5f5f63695f6c6173745f726567656e65726174657c693a313730393730393634393b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b616c6c6f775f74656d705f6974656d737c693a313b73616c655f69647c693a2d313b73616c65735f6c6f636174696f6e7c733a313a2231223b636173685f726f756e64696e677c693a303b636173685f6d6f64657c693a303b73616c65735f636172747c613a313a7b693a313b613a32353a7b733a373a226974656d5f6964223b733a313a2231223b733a31333a226974656d5f6c6f636174696f6e223b733a313a2231223b733a31303a2273746f636b5f6e616d65223b733a353a2273746f636b223b733a343a226c696e65223b693a313b733a343a226e616d65223b733a343a2264656c6c223b733a31313a226974656d5f6e756d626572223b4e3b733a31363a226174747269627574655f76616c756573223b4e3b733a31383a226174747269627574655f647476616c756573223b4e3b733a31313a226465736372697074696f6e223b733a303a22223b733a31323a2273657269616c6e756d626572223b733a303a22223b733a32313a22616c6c6f775f616c745f6465736372697074696f6e223b733a313a2230223b733a31333a2269735f73657269616c697a6564223b733a313a2230223b733a383a227175616e74697479223b643a313b733a383a22646973636f756e74223b643a303b733a31333a22646973636f756e745f74797065223b733a313a2230223b733a383a22696e5f73746f636b223b733a353a22372e303030223b733a353a227072696365223b643a36303030303b733a31303a22636f73745f7072696365223b733a373a22323030302e3030223b733a353a22746f74616c223b733a31303a2236303030302e30303030223b733a31363a22646973636f756e7465645f746f74616c223b733a31303a2236303030302e30303030223b733a31323a227072696e745f6f7074696f6e223b693a303b733a31303a2273746f636b5f74797065223b733a313a2230223b733a393a226974656d5f74797065223b733a313a2230223b733a383a2268736e5f636f6465223b733a303a22223b733a31353a227461785f63617465676f72795f6964223b733a313a2230223b7d7d73616c65735f637573746f6d65727c693a2d313b73616c65735f6d6f64657c733a343a2273616c65223b64696e6e65725f7461626c657c693a313b73616c65735f7061796d656e74737c613a303a7b7d),
('c947d8070518edfeefcfb0843a41b533570b13d7', '::1', 1709710175, 0x5f5f63695f6c6173745f726567656e65726174657c693a313730393731303137353b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b616c6c6f775f74656d705f6974656d737c693a313b73616c655f69647c693a2d313b73616c65735f6c6f636174696f6e7c733a313a2231223b636173685f726f756e64696e677c693a303b636173685f6d6f64657c693a303b73616c65735f636172747c613a313a7b693a313b613a32353a7b733a373a226974656d5f6964223b733a313a2231223b733a31333a226974656d5f6c6f636174696f6e223b733a313a2231223b733a31303a2273746f636b5f6e616d65223b733a353a2273746f636b223b733a343a226c696e65223b693a313b733a343a226e616d65223b733a343a2264656c6c223b733a31313a226974656d5f6e756d626572223b4e3b733a31363a226174747269627574655f76616c756573223b4e3b733a31383a226174747269627574655f647476616c756573223b4e3b733a31313a226465736372697074696f6e223b733a303a22223b733a31323a2273657269616c6e756d626572223b733a303a22223b733a32313a22616c6c6f775f616c745f6465736372697074696f6e223b733a313a2230223b733a31333a2269735f73657269616c697a6564223b733a313a2230223b733a383a227175616e74697479223b643a313b733a383a22646973636f756e74223b643a303b733a31333a22646973636f756e745f74797065223b733a313a2230223b733a383a22696e5f73746f636b223b733a353a22372e303030223b733a353a227072696365223b643a31303030303b733a31303a22636f73745f7072696365223b733a373a22323030302e3030223b733a353a22746f74616c223b733a31303a2231303030302e30303030223b733a31363a22646973636f756e7465645f746f74616c223b733a31303a2231303030302e30303030223b733a31323a227072696e745f6f7074696f6e223b693a303b733a31303a2273746f636b5f74797065223b733a313a2230223b733a393a226974656d5f74797065223b733a313a2230223b733a383a2268736e5f636f6465223b733a303a22223b733a31353a227461785f63617465676f72795f6964223b733a313a2230223b7d7d73616c65735f637573746f6d65727c693a2d313b73616c65735f6d6f64657c733a343a2273616c65223b64696e6e65725f7461626c657c693a313b73616c65735f7061796d656e74737c613a303a7b7d),
('3728688e25cd8dc00e5e559c05944fd18a0a5f93', '::1', 1709710559, 0x5f5f63695f6c6173745f726567656e65726174657c693a313730393731303535393b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a363a226f6666696365223b616c6c6f775f74656d705f6974656d737c693a313b73616c655f69647c693a2d313b73616c65735f6c6f636174696f6e7c733a313a2231223b726563765f636172747c613a313a7b693a313b613a32303a7b733a373a226974656d5f6964223b733a313a2231223b733a31333a226974656d5f6c6f636174696f6e223b733a313a2231223b733a31313a226974656d5f6e756d626572223b4e3b733a31303a2273746f636b5f6e616d65223b733a353a2273746f636b223b733a343a226c696e65223b693a313b733a343a226e616d65223b733a343a2264656c6c223b733a31313a226465736372697074696f6e223b733a303a22223b733a31323a2273657269616c6e756d626572223b733a303a22223b733a31363a226174747269627574655f76616c756573223b4e3b733a31383a226174747269627574655f647476616c756573223b4e3b733a32313a22616c6c6f775f616c745f6465736372697074696f6e223b733a313a2230223b733a31333a2269735f73657269616c697a6564223b733a313a2230223b733a383a227175616e74697479223b693a313b733a383a22646973636f756e74223b733a313a2230223b733a31333a22646973636f756e745f74797065223b733a313a2230223b733a383a22696e5f73746f636b223b733a353a22362e303030223b733a353a227072696365223b733a373a22323030302e3030223b733a31383a22726563656976696e675f7175616e74697479223b733a353a22312e303030223b733a32363a22726563656976696e675f7175616e746974795f63686f69636573223b613a313a7b693a313b733a323a227831223b7d733a353a22746f74616c223b733a393a22323030302e30303030223b7d7d726563765f6d6f64657c733a373a2272656365697665223b726563765f737570706c6965727c693a2d313b726563765f73746f636b5f736f757263657c733a313a2231223b636173685f726f756e64696e677c693a303b636173685f6d6f64657c693a303b73616c65735f636172747c613a313a7b693a313b613a32353a7b733a373a226974656d5f6964223b733a313a2231223b733a31333a226974656d5f6c6f636174696f6e223b733a313a2231223b733a31303a2273746f636b5f6e616d65223b733a353a2273746f636b223b733a343a226c696e65223b693a313b733a343a226e616d65223b733a343a2264656c6c223b733a31313a226974656d5f6e756d626572223b4e3b733a31363a226174747269627574655f76616c756573223b4e3b733a31383a226174747269627574655f647476616c756573223b4e3b733a31313a226465736372697074696f6e223b733a303a22223b733a31323a2273657269616c6e756d626572223b733a303a22223b733a32313a22616c6c6f775f616c745f6465736372697074696f6e223b733a313a2230223b733a31333a2269735f73657269616c697a6564223b733a313a2230223b733a383a227175616e74697479223b643a313b733a383a22646973636f756e74223b643a303b733a31333a22646973636f756e745f74797065223b733a313a2230223b733a383a22696e5f73746f636b223b733a353a22362e303030223b733a353a227072696365223b643a31303030303b733a31303a22636f73745f7072696365223b733a373a22323030302e3030223b733a353a22746f74616c223b733a31303a2231303030302e30303030223b733a31363a22646973636f756e7465645f746f74616c223b733a31303a2231303030302e30303030223b733a31323a227072696e745f6f7074696f6e223b693a303b733a31303a2273746f636b5f74797065223b733a313a2230223b733a393a226974656d5f74797065223b733a313a2230223b733a383a2268736e5f636f6465223b733a303a22223b733a31353a227461785f63617465676f72795f6964223b733a313a2230223b7d7d73616c65735f637573746f6d65727c693a2d313b73616c65735f6d6f64657c733a343a2273616c65223b64696e6e65725f7461626c657c693a313b73616c65735f7061796d656e74737c613a303a7b7d),
('4717c39779229c1864190c08ccc5f6a6192bef77', '::1', 1709710980, 0x5f5f63695f6c6173745f726567656e65726174657c693a313730393731303938303b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b616c6c6f775f74656d705f6974656d737c693a313b73616c655f69647c693a2d313b73616c65735f6c6f636174696f6e7c733a313a2231223b726563765f636172747c613a313a7b693a313b613a32303a7b733a373a226974656d5f6964223b733a313a2231223b733a31333a226974656d5f6c6f636174696f6e223b733a313a2231223b733a31313a226974656d5f6e756d626572223b4e3b733a31303a2273746f636b5f6e616d65223b733a353a2273746f636b223b733a343a226c696e65223b693a313b733a343a226e616d65223b733a343a2264656c6c223b733a31313a226465736372697074696f6e223b733a303a22223b733a31323a2273657269616c6e756d626572223b733a303a22223b733a31363a226174747269627574655f76616c756573223b4e3b733a31383a226174747269627574655f647476616c756573223b4e3b733a32313a22616c6c6f775f616c745f6465736372697074696f6e223b733a313a2230223b733a31333a2269735f73657269616c697a6564223b733a313a2230223b733a383a227175616e74697479223b693a313b733a383a22646973636f756e74223b733a313a2230223b733a31333a22646973636f756e745f74797065223b733a313a2230223b733a383a22696e5f73746f636b223b733a353a22362e303030223b733a353a227072696365223b733a373a22323030302e3030223b733a31383a22726563656976696e675f7175616e74697479223b733a353a22312e303030223b733a32363a22726563656976696e675f7175616e746974795f63686f69636573223b613a313a7b693a313b733a323a227831223b7d733a353a22746f74616c223b733a393a22323030302e30303030223b7d7d726563765f6d6f64657c733a373a2272656365697665223b726563765f737570706c6965727c693a2d313b726563765f73746f636b5f736f757263657c733a313a2231223b636173685f726f756e64696e677c693a303b636173685f6d6f64657c693a303b73616c65735f636172747c613a313a7b693a313b613a32353a7b733a373a226974656d5f6964223b733a313a2231223b733a31333a226974656d5f6c6f636174696f6e223b733a313a2231223b733a31303a2273746f636b5f6e616d65223b733a353a2273746f636b223b733a343a226c696e65223b693a313b733a343a226e616d65223b733a343a2264656c6c223b733a31313a226974656d5f6e756d626572223b4e3b733a31363a226174747269627574655f76616c756573223b4e3b733a31383a226174747269627574655f647476616c756573223b4e3b733a31313a226465736372697074696f6e223b733a303a22223b733a31323a2273657269616c6e756d626572223b733a303a22223b733a32313a22616c6c6f775f616c745f6465736372697074696f6e223b733a313a2230223b733a31333a2269735f73657269616c697a6564223b733a313a2230223b733a383a227175616e74697479223b643a313b733a383a22646973636f756e74223b643a303b733a31333a22646973636f756e745f74797065223b733a313a2230223b733a383a22696e5f73746f636b223b733a353a22362e303030223b733a353a227072696365223b643a31303030303b733a31303a22636f73745f7072696365223b733a373a22323030302e3030223b733a353a22746f74616c223b733a31303a2231303030302e30303030223b733a31363a22646973636f756e7465645f746f74616c223b733a31303a2231303030302e30303030223b733a31323a227072696e745f6f7074696f6e223b693a303b733a31303a2273746f636b5f74797065223b733a313a2230223b733a393a226974656d5f74797065223b733a313a2230223b733a383a2268736e5f636f6465223b733a303a22223b733a31353a227461785f63617465676f72795f6964223b733a313a2230223b7d7d73616c65735f637573746f6d65727c693a2d313b73616c65735f6d6f64657c733a343a2273616c65223b64696e6e65725f7461626c657c693a313b73616c65735f7061796d656e74737c613a303a7b7d),
('bca7a96155fcf966ac285f7915533f98bdd697ae', '::1', 1709711403, 0x5f5f63695f6c6173745f726567656e65726174657c693a313730393731313430333b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a363a226f6666696365223b616c6c6f775f74656d705f6974656d737c693a313b73616c655f69647c693a2d313b73616c65735f6c6f636174696f6e7c733a313a2231223b726563765f636172747c613a313a7b693a313b613a32303a7b733a373a226974656d5f6964223b733a313a2231223b733a31333a226974656d5f6c6f636174696f6e223b733a313a2231223b733a31313a226974656d5f6e756d626572223b4e3b733a31303a2273746f636b5f6e616d65223b733a353a2273746f636b223b733a343a226c696e65223b693a313b733a343a226e616d65223b733a343a2264656c6c223b733a31313a226465736372697074696f6e223b733a303a22223b733a31323a2273657269616c6e756d626572223b733a303a22223b733a31363a226174747269627574655f76616c756573223b4e3b733a31383a226174747269627574655f647476616c756573223b4e3b733a32313a22616c6c6f775f616c745f6465736372697074696f6e223b733a313a2230223b733a31333a2269735f73657269616c697a6564223b733a313a2230223b733a383a227175616e74697479223b693a313b733a383a22646973636f756e74223b733a313a2230223b733a31333a22646973636f756e745f74797065223b733a313a2230223b733a383a22696e5f73746f636b223b733a353a22362e303030223b733a353a227072696365223b733a373a22323030302e3030223b733a31383a22726563656976696e675f7175616e74697479223b733a353a22312e303030223b733a32363a22726563656976696e675f7175616e746974795f63686f69636573223b613a313a7b693a313b733a323a227831223b7d733a353a22746f74616c223b733a393a22323030302e30303030223b7d7d726563765f6d6f64657c733a373a2272656365697665223b726563765f737570706c6965727c693a2d313b726563765f73746f636b5f736f757263657c733a313a2231223b636173685f726f756e64696e677c693a303b636173685f6d6f64657c693a303b73616c65735f636172747c613a313a7b693a313b613a32353a7b733a373a226974656d5f6964223b733a313a2231223b733a31333a226974656d5f6c6f636174696f6e223b733a313a2231223b733a31303a2273746f636b5f6e616d65223b733a353a2273746f636b223b733a343a226c696e65223b693a313b733a343a226e616d65223b733a343a2264656c6c223b733a31313a226974656d5f6e756d626572223b4e3b733a31363a226174747269627574655f76616c756573223b4e3b733a31383a226174747269627574655f647476616c756573223b4e3b733a31313a226465736372697074696f6e223b733a303a22223b733a31323a2273657269616c6e756d626572223b733a303a22223b733a32313a22616c6c6f775f616c745f6465736372697074696f6e223b733a313a2230223b733a31333a2269735f73657269616c697a6564223b733a313a2230223b733a383a227175616e74697479223b643a313b733a383a22646973636f756e74223b643a303b733a31333a22646973636f756e745f74797065223b733a313a2230223b733a383a22696e5f73746f636b223b733a353a22362e303030223b733a353a227072696365223b643a31303030303b733a31303a22636f73745f7072696365223b733a373a22323030302e3030223b733a353a22746f74616c223b733a31303a2231303030302e30303030223b733a31363a22646973636f756e7465645f746f74616c223b733a31303a2231303030302e30303030223b733a31323a227072696e745f6f7074696f6e223b693a303b733a31303a2273746f636b5f74797065223b733a313a2230223b733a393a226974656d5f74797065223b733a313a2230223b733a383a2268736e5f636f6465223b733a303a22223b733a31353a227461785f63617465676f72795f6964223b733a313a2230223b7d7d73616c65735f637573746f6d65727c693a2d313b73616c65735f6d6f64657c733a343a2273616c65223b64696e6e65725f7461626c657c693a313b73616c65735f7061796d656e74737c613a303a7b7d),
('68cd3c0619d001ad948a61c9a6b2b6bb54bebfc6', '::1', 1709712311, 0x5f5f63695f6c6173745f726567656e65726174657c693a313730393731323331313b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a363a226f6666696365223b616c6c6f775f74656d705f6974656d737c693a313b73616c655f69647c693a2d313b73616c65735f6c6f636174696f6e7c733a313a2231223b726563765f636172747c613a313a7b693a313b613a32303a7b733a373a226974656d5f6964223b733a313a2231223b733a31333a226974656d5f6c6f636174696f6e223b733a313a2231223b733a31313a226974656d5f6e756d626572223b4e3b733a31303a2273746f636b5f6e616d65223b733a353a2273746f636b223b733a343a226c696e65223b693a313b733a343a226e616d65223b733a343a2264656c6c223b733a31313a226465736372697074696f6e223b733a303a22223b733a31323a2273657269616c6e756d626572223b733a303a22223b733a31363a226174747269627574655f76616c756573223b4e3b733a31383a226174747269627574655f647476616c756573223b4e3b733a32313a22616c6c6f775f616c745f6465736372697074696f6e223b733a313a2230223b733a31333a2269735f73657269616c697a6564223b733a313a2230223b733a383a227175616e74697479223b693a313b733a383a22646973636f756e74223b733a313a2230223b733a31333a22646973636f756e745f74797065223b733a313a2230223b733a383a22696e5f73746f636b223b733a353a22362e303030223b733a353a227072696365223b733a373a22323030302e3030223b733a31383a22726563656976696e675f7175616e74697479223b733a353a22312e303030223b733a32363a22726563656976696e675f7175616e746974795f63686f69636573223b613a313a7b693a313b733a323a227831223b7d733a353a22746f74616c223b733a393a22323030302e30303030223b7d7d726563765f6d6f64657c733a373a2272656365697665223b726563765f737570706c6965727c693a2d313b726563765f73746f636b5f736f757263657c733a313a2231223b636173685f726f756e64696e677c693a303b636173685f6d6f64657c693a303b73616c65735f636172747c613a313a7b693a313b613a32353a7b733a373a226974656d5f6964223b733a313a2231223b733a31333a226974656d5f6c6f636174696f6e223b733a313a2231223b733a31303a2273746f636b5f6e616d65223b733a353a2273746f636b223b733a343a226c696e65223b693a313b733a343a226e616d65223b733a343a2264656c6c223b733a31313a226974656d5f6e756d626572223b4e3b733a31363a226174747269627574655f76616c756573223b4e3b733a31383a226174747269627574655f647476616c756573223b4e3b733a31313a226465736372697074696f6e223b733a303a22223b733a31323a2273657269616c6e756d626572223b733a303a22223b733a32313a22616c6c6f775f616c745f6465736372697074696f6e223b733a313a2230223b733a31333a2269735f73657269616c697a6564223b733a313a2230223b733a383a227175616e74697479223b643a313b733a383a22646973636f756e74223b643a303b733a31333a22646973636f756e745f74797065223b733a313a2230223b733a383a22696e5f73746f636b223b733a353a22362e303030223b733a353a227072696365223b643a31303030303b733a31303a22636f73745f7072696365223b733a373a22323030302e3030223b733a353a22746f74616c223b733a31303a2231303030302e30303030223b733a31363a22646973636f756e7465645f746f74616c223b733a31303a2231303030302e30303030223b733a31323a227072696e745f6f7074696f6e223b693a303b733a31303a2273746f636b5f74797065223b733a313a2230223b733a393a226974656d5f74797065223b733a313a2230223b733a383a2268736e5f636f6465223b733a303a22223b733a31353a227461785f63617465676f72795f6964223b733a313a2230223b7d7d73616c65735f637573746f6d65727c693a2d313b73616c65735f6d6f64657c733a343a2273616c65223b64696e6e65725f7461626c657c693a313b73616c65735f7061796d656e74737c613a303a7b7d),
('c2f4afe3f6cc8e2ffa2067ca527e2850bdc8dd97', '::1', 1709712647, 0x5f5f63695f6c6173745f726567656e65726174657c693a313730393731323634373b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a363a226f6666696365223b616c6c6f775f74656d705f6974656d737c693a313b73616c655f69647c693a2d313b73616c65735f6c6f636174696f6e7c733a313a2231223b726563765f636172747c613a313a7b693a313b613a32303a7b733a373a226974656d5f6964223b733a313a2231223b733a31333a226974656d5f6c6f636174696f6e223b733a313a2231223b733a31313a226974656d5f6e756d626572223b4e3b733a31303a2273746f636b5f6e616d65223b733a353a2273746f636b223b733a343a226c696e65223b693a313b733a343a226e616d65223b733a343a2264656c6c223b733a31313a226465736372697074696f6e223b733a303a22223b733a31323a2273657269616c6e756d626572223b733a303a22223b733a31363a226174747269627574655f76616c756573223b4e3b733a31383a226174747269627574655f647476616c756573223b4e3b733a32313a22616c6c6f775f616c745f6465736372697074696f6e223b733a313a2230223b733a31333a2269735f73657269616c697a6564223b733a313a2230223b733a383a227175616e74697479223b693a313b733a383a22646973636f756e74223b733a313a2230223b733a31333a22646973636f756e745f74797065223b733a313a2230223b733a383a22696e5f73746f636b223b733a353a22362e303030223b733a353a227072696365223b733a373a22323030302e3030223b733a31383a22726563656976696e675f7175616e74697479223b733a353a22312e303030223b733a32363a22726563656976696e675f7175616e746974795f63686f69636573223b613a313a7b693a313b733a323a227831223b7d733a353a22746f74616c223b733a393a22323030302e30303030223b7d7d726563765f6d6f64657c733a373a2272656365697665223b726563765f737570706c6965727c693a2d313b726563765f73746f636b5f736f757263657c733a313a2231223b636173685f726f756e64696e677c693a303b636173685f6d6f64657c693a303b73616c65735f636172747c613a313a7b693a313b613a32353a7b733a373a226974656d5f6964223b733a313a2231223b733a31333a226974656d5f6c6f636174696f6e223b733a313a2231223b733a31303a2273746f636b5f6e616d65223b733a353a2273746f636b223b733a343a226c696e65223b693a313b733a343a226e616d65223b733a343a2264656c6c223b733a31313a226974656d5f6e756d626572223b4e3b733a31363a226174747269627574655f76616c756573223b4e3b733a31383a226174747269627574655f647476616c756573223b4e3b733a31313a226465736372697074696f6e223b733a303a22223b733a31323a2273657269616c6e756d626572223b733a303a22223b733a32313a22616c6c6f775f616c745f6465736372697074696f6e223b733a313a2230223b733a31333a2269735f73657269616c697a6564223b733a313a2230223b733a383a227175616e74697479223b643a313b733a383a22646973636f756e74223b643a303b733a31333a22646973636f756e745f74797065223b733a313a2230223b733a383a22696e5f73746f636b223b733a353a22362e303030223b733a353a227072696365223b643a31303030303b733a31303a22636f73745f7072696365223b733a373a22323030302e3030223b733a353a22746f74616c223b733a31303a2231303030302e30303030223b733a31363a22646973636f756e7465645f746f74616c223b733a31303a2231303030302e30303030223b733a31323a227072696e745f6f7074696f6e223b693a303b733a31303a2273746f636b5f74797065223b733a313a2230223b733a393a226974656d5f74797065223b733a313a2230223b733a383a2268736e5f636f6465223b733a303a22223b733a31353a227461785f63617465676f72795f6964223b733a313a2230223b7d7d73616c65735f637573746f6d65727c693a2d313b73616c65735f6d6f64657c733a343a2273616c65223b64696e6e65725f7461626c657c693a313b73616c65735f7061796d656e74737c613a303a7b7d),
('95906577cd8bd0122a8375cdb483f638d34d68d8', '::1', 1709712949, 0x5f5f63695f6c6173745f726567656e65726174657c693a313730393731323934393b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b616c6c6f775f74656d705f6974656d737c693a313b73616c655f69647c693a2d313b73616c65735f6c6f636174696f6e7c733a313a2231223b726563765f636172747c613a313a7b693a313b613a32303a7b733a373a226974656d5f6964223b733a313a2231223b733a31333a226974656d5f6c6f636174696f6e223b733a313a2231223b733a31313a226974656d5f6e756d626572223b4e3b733a31303a2273746f636b5f6e616d65223b733a353a2273746f636b223b733a343a226c696e65223b693a313b733a343a226e616d65223b733a343a2264656c6c223b733a31313a226465736372697074696f6e223b733a303a22223b733a31323a2273657269616c6e756d626572223b733a303a22223b733a31363a226174747269627574655f76616c756573223b4e3b733a31383a226174747269627574655f647476616c756573223b4e3b733a32313a22616c6c6f775f616c745f6465736372697074696f6e223b733a313a2230223b733a31333a2269735f73657269616c697a6564223b733a313a2230223b733a383a227175616e74697479223b693a313b733a383a22646973636f756e74223b733a313a2230223b733a31333a22646973636f756e745f74797065223b733a313a2230223b733a383a22696e5f73746f636b223b733a353a22362e303030223b733a353a227072696365223b733a373a22323030302e3030223b733a31383a22726563656976696e675f7175616e74697479223b733a353a22312e303030223b733a32363a22726563656976696e675f7175616e746974795f63686f69636573223b613a313a7b693a313b733a323a227831223b7d733a353a22746f74616c223b733a393a22323030302e30303030223b7d7d726563765f6d6f64657c733a373a2272656365697665223b726563765f737570706c6965727c693a2d313b726563765f73746f636b5f736f757263657c733a313a2231223b636173685f726f756e64696e677c693a303b636173685f6d6f64657c693a303b73616c65735f636172747c613a313a7b693a313b613a32353a7b733a373a226974656d5f6964223b733a313a2231223b733a31333a226974656d5f6c6f636174696f6e223b733a313a2231223b733a31303a2273746f636b5f6e616d65223b733a353a2273746f636b223b733a343a226c696e65223b693a313b733a343a226e616d65223b733a343a2264656c6c223b733a31313a226974656d5f6e756d626572223b4e3b733a31363a226174747269627574655f76616c756573223b4e3b733a31383a226174747269627574655f647476616c756573223b4e3b733a31313a226465736372697074696f6e223b733a303a22223b733a31323a2273657269616c6e756d626572223b733a303a22223b733a32313a22616c6c6f775f616c745f6465736372697074696f6e223b733a313a2230223b733a31333a2269735f73657269616c697a6564223b733a313a2230223b733a383a227175616e74697479223b693a313b733a383a22646973636f756e74223b733a313a2230223b733a31333a22646973636f756e745f74797065223b733a313a2230223b733a383a22696e5f73746f636b223b733a353a22352e303030223b733a353a227072696365223b733a343a22302e3030223b733a31303a22636f73745f7072696365223b733a373a22323030302e3030223b733a353a22746f74616c223b733a363a22302e30303030223b733a31363a22646973636f756e7465645f746f74616c223b733a363a22302e30303030223b733a31323a227072696e745f6f7074696f6e223b693a303b733a31303a2273746f636b5f74797065223b733a313a2230223b733a393a226974656d5f74797065223b733a313a2230223b733a383a2268736e5f636f6465223b733a303a22223b733a31353a227461785f63617465676f72795f6964223b733a313a2230223b7d7d73616c65735f637573746f6d65727c693a2d313b73616c65735f6d6f64657c733a343a2273616c65223b73616c65735f7061796d656e74737c613a303a7b7d),
('e88544937ac0301f5785042de1a2e553503607a4', '::1', 1709713022, 0x5f5f63695f6c6173745f726567656e65726174657c693a313730393731323934393b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b616c6c6f775f74656d705f6974656d737c693a313b73616c655f69647c693a2d313b73616c65735f6c6f636174696f6e7c733a313a2231223b726563765f636172747c613a313a7b693a313b613a32303a7b733a373a226974656d5f6964223b733a313a2231223b733a31333a226974656d5f6c6f636174696f6e223b733a313a2231223b733a31313a226974656d5f6e756d626572223b4e3b733a31303a2273746f636b5f6e616d65223b733a353a2273746f636b223b733a343a226c696e65223b693a313b733a343a226e616d65223b733a343a2264656c6c223b733a31313a226465736372697074696f6e223b733a303a22223b733a31323a2273657269616c6e756d626572223b733a303a22223b733a31363a226174747269627574655f76616c756573223b4e3b733a31383a226174747269627574655f647476616c756573223b4e3b733a32313a22616c6c6f775f616c745f6465736372697074696f6e223b733a313a2230223b733a31333a2269735f73657269616c697a6564223b733a313a2230223b733a383a227175616e74697479223b693a313b733a383a22646973636f756e74223b733a313a2230223b733a31333a22646973636f756e745f74797065223b733a313a2230223b733a383a22696e5f73746f636b223b733a353a22362e303030223b733a353a227072696365223b733a373a22323030302e3030223b733a31383a22726563656976696e675f7175616e74697479223b733a353a22312e303030223b733a32363a22726563656976696e675f7175616e746974795f63686f69636573223b613a313a7b693a313b733a323a227831223b7d733a353a22746f74616c223b733a393a22323030302e30303030223b7d7d726563765f6d6f64657c733a373a2272656365697665223b726563765f737570706c6965727c693a2d313b726563765f73746f636b5f736f757263657c733a313a2231223b),
('4629015a59a3309a1daac08206d5b595ca6116c3', '::1', 1709736835, 0x5f5f63695f6c6173745f726567656e65726174657c693a313730393733363833353b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a363a226f6666696365223b),
('c84780007bfdb7cf161db6246a641e533139b2d0', '::1', 1709736892, 0x5f5f63695f6c6173745f726567656e65726174657c693a313730393733363833353b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b);

-- --------------------------------------------------------

--
-- Table structure for table `pos_stock_locations`
--

CREATE TABLE `pos_stock_locations` (
  `location_id` int(11) NOT NULL,
  `location_name` varchar(255) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pos_stock_locations`
--

INSERT INTO `pos_stock_locations` (`location_id`, `location_name`, `deleted`) VALUES
(1, 'stock', 0);

-- --------------------------------------------------------

--
-- Table structure for table `pos_suppliers`
--

CREATE TABLE `pos_suppliers` (
  `person_id` int(10) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `agency_name` varchar(255) NOT NULL,
  `account_number` varchar(255) DEFAULT NULL,
  `tax_id` varchar(32) NOT NULL DEFAULT '',
  `deleted` tinyint(1) NOT NULL DEFAULT 0,
  `category` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pos_tax_categories`
--

CREATE TABLE `pos_tax_categories` (
  `tax_category_id` int(10) NOT NULL,
  `tax_category` varchar(32) NOT NULL,
  `tax_group_sequence` tinyint(1) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pos_tax_categories`
--

INSERT INTO `pos_tax_categories` (`tax_category_id`, `tax_category`, `tax_group_sequence`, `deleted`) VALUES
(1, 'first class', 18, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pos_tax_codes`
--

CREATE TABLE `pos_tax_codes` (
  `tax_code_id` int(11) NOT NULL,
  `tax_code` varchar(32) NOT NULL,
  `tax_code_name` varchar(255) NOT NULL DEFAULT '',
  `city` varchar(255) NOT NULL DEFAULT '',
  `state` varchar(255) NOT NULL DEFAULT '',
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pos_tax_jurisdictions`
--

CREATE TABLE `pos_tax_jurisdictions` (
  `jurisdiction_id` int(11) NOT NULL,
  `jurisdiction_name` varchar(255) DEFAULT NULL,
  `tax_group` varchar(32) NOT NULL,
  `tax_type` smallint(2) NOT NULL,
  `reporting_authority` varchar(255) DEFAULT NULL,
  `tax_group_sequence` tinyint(1) NOT NULL DEFAULT 0,
  `cascade_sequence` tinyint(1) NOT NULL DEFAULT 0,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pos_tax_rates`
--

CREATE TABLE `pos_tax_rates` (
  `tax_rate_id` int(11) NOT NULL,
  `rate_tax_code_id` int(11) NOT NULL,
  `rate_tax_category_id` int(10) NOT NULL,
  `rate_jurisdiction_id` int(11) NOT NULL,
  `tax_rate` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `tax_rounding_code` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pos_app_config`
--
ALTER TABLE `pos_app_config`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `pos_attribute_definitions`
--
ALTER TABLE `pos_attribute_definitions`
  ADD PRIMARY KEY (`definition_id`),
  ADD KEY `definition_fk` (`definition_fk`),
  ADD KEY `definition_name` (`definition_name`),
  ADD KEY `definition_type` (`definition_type`),
  ADD KEY `definition_name_2` (`definition_name`),
  ADD KEY `definition_type_2` (`definition_type`);

--
-- Indexes for table `pos_attribute_links`
--
ALTER TABLE `pos_attribute_links`
  ADD UNIQUE KEY `attribute_links_uq1` (`attribute_id`,`definition_id`,`item_id`,`sale_id`,`receiving_id`),
  ADD UNIQUE KEY `attribute_links_uq2` (`item_id`,`sale_id`,`receiving_id`,`definition_id`,`attribute_id`),
  ADD KEY `attribute_id` (`attribute_id`),
  ADD KEY `definition_id` (`definition_id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `sale_id` (`sale_id`),
  ADD KEY `receiving_id` (`receiving_id`);

--
-- Indexes for table `pos_attribute_values`
--
ALTER TABLE `pos_attribute_values`
  ADD PRIMARY KEY (`attribute_id`),
  ADD UNIQUE KEY `attribute_value` (`attribute_value`),
  ADD UNIQUE KEY `attribute_date` (`attribute_date`),
  ADD UNIQUE KEY `attribute_date_2` (`attribute_date`),
  ADD UNIQUE KEY `attribute_decimal` (`attribute_decimal`),
  ADD UNIQUE KEY `attribute_decimal_2` (`attribute_decimal`);

--
-- Indexes for table `pos_cash_up`
--
ALTER TABLE `pos_cash_up`
  ADD PRIMARY KEY (`cashup_id`),
  ADD KEY `open_employee_id` (`open_employee_id`),
  ADD KEY `close_employee_id` (`close_employee_id`);

--
-- Indexes for table `pos_customers`
--
ALTER TABLE `pos_customers`
  ADD PRIMARY KEY (`person_id`),
  ADD UNIQUE KEY `account_number` (`account_number`),
  ADD KEY `package_id` (`package_id`),
  ADD KEY `sales_tax_code_id` (`sales_tax_code_id`),
  ADD KEY `company_name` (`company_name`),
  ADD KEY `company_name_2` (`company_name`);

--
-- Indexes for table `pos_customers_packages`
--
ALTER TABLE `pos_customers_packages`
  ADD PRIMARY KEY (`package_id`);

--
-- Indexes for table `pos_customers_points`
--
ALTER TABLE `pos_customers_points`
  ADD PRIMARY KEY (`id`),
  ADD KEY `person_id` (`person_id`),
  ADD KEY `package_id` (`package_id`),
  ADD KEY `sale_id` (`sale_id`);

--
-- Indexes for table `pos_dinner_tables`
--
ALTER TABLE `pos_dinner_tables`
  ADD PRIMARY KEY (`dinner_table_id`),
  ADD KEY `status` (`status`),
  ADD KEY `status_2` (`status`);

--
-- Indexes for table `pos_employees`
--
ALTER TABLE `pos_employees`
  ADD PRIMARY KEY (`person_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `person_id` (`person_id`);

--
-- Indexes for table `pos_expenses`
--
ALTER TABLE `pos_expenses`
  ADD PRIMARY KEY (`expense_id`),
  ADD KEY `expense_category_id` (`expense_category_id`),
  ADD KEY `employee_id` (`employee_id`),
  ADD KEY `pos_expenses_ibfk_3` (`supplier_id`),
  ADD KEY `date` (`date`),
  ADD KEY `payment_type` (`payment_type`),
  ADD KEY `payment_type_2` (`payment_type`),
  ADD KEY `amount` (`amount`),
  ADD KEY `amount_2` (`amount`);

--
-- Indexes for table `pos_expense_categories`
--
ALTER TABLE `pos_expense_categories`
  ADD PRIMARY KEY (`expense_category_id`),
  ADD UNIQUE KEY `category_name` (`category_name`),
  ADD KEY `category_description` (`category_description`),
  ADD KEY `category_description_2` (`category_description`);

--
-- Indexes for table `pos_giftcards`
--
ALTER TABLE `pos_giftcards`
  ADD PRIMARY KEY (`giftcard_id`),
  ADD UNIQUE KEY `giftcard_number` (`giftcard_number`),
  ADD KEY `person_id` (`person_id`);

--
-- Indexes for table `pos_grants`
--
ALTER TABLE `pos_grants`
  ADD PRIMARY KEY (`permission_id`,`person_id`);

--
-- Indexes for table `pos_inventory`
--
ALTER TABLE `pos_inventory`
  ADD PRIMARY KEY (`trans_id`),
  ADD KEY `trans_items` (`trans_items`),
  ADD KEY `trans_user` (`trans_user`),
  ADD KEY `trans_location` (`trans_location`),
  ADD KEY `trans_date` (`trans_date`);

--
-- Indexes for table `pos_items`
--
ALTER TABLE `pos_items`
  ADD PRIMARY KEY (`item_id`),
  ADD UNIQUE KEY `items_uq1` (`supplier_id`,`item_id`,`deleted`,`item_type`),
  ADD KEY `item_number` (`item_number`),
  ADD KEY `supplier_id` (`supplier_id`),
  ADD KEY `deleted` (`deleted`,`item_type`),
  ADD KEY `deleted_2` (`deleted`,`item_type`);

--
-- Indexes for table `pos_items_taxes`
--
ALTER TABLE `pos_items_taxes`
  ADD PRIMARY KEY (`item_id`,`name`,`percent`);

--
-- Indexes for table `pos_item_kits`
--
ALTER TABLE `pos_item_kits`
  ADD PRIMARY KEY (`item_kit_id`),
  ADD KEY `item_kit_number` (`item_kit_number`),
  ADD KEY `name` (`name`,`description`),
  ADD KEY `name_2` (`name`,`description`);

--
-- Indexes for table `pos_item_kit_items`
--
ALTER TABLE `pos_item_kit_items`
  ADD PRIMARY KEY (`item_kit_id`,`item_id`,`quantity`),
  ADD KEY `pos_item_kit_items_ibfk_2` (`item_id`);

--
-- Indexes for table `pos_item_quantities`
--
ALTER TABLE `pos_item_quantities`
  ADD PRIMARY KEY (`item_id`,`location_id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `location_id` (`location_id`);

--
-- Indexes for table `pos_modules`
--
ALTER TABLE `pos_modules`
  ADD PRIMARY KEY (`module_id`),
  ADD UNIQUE KEY `desc_lang_key` (`desc_lang_key`),
  ADD UNIQUE KEY `name_lang_key` (`name_lang_key`);

--
-- Indexes for table `pos_people`
--
ALTER TABLE `pos_people`
  ADD PRIMARY KEY (`person_id`),
  ADD KEY `email` (`email`),
  ADD KEY `first_name` (`first_name`,`last_name`,`email`,`phone_number`),
  ADD KEY `first_name_2` (`first_name`,`last_name`,`email`,`phone_number`);

--
-- Indexes for table `pos_permissions`
--
ALTER TABLE `pos_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `module_id` (`module_id`);

--
-- Indexes for table `pos_receivings`
--
ALTER TABLE `pos_receivings`
  ADD PRIMARY KEY (`receiving_id`),
  ADD KEY `supplier_id` (`supplier_id`),
  ADD KEY `employee_id` (`employee_id`),
  ADD KEY `reference` (`reference`),
  ADD KEY `receiving_time` (`receiving_time`);

--
-- Indexes for table `pos_receivings_items`
--
ALTER TABLE `pos_receivings_items`
  ADD PRIMARY KEY (`receiving_id`,`item_id`,`line`),
  ADD KEY `item_id` (`item_id`);

--
-- Indexes for table `pos_sales`
--
ALTER TABLE `pos_sales`
  ADD PRIMARY KEY (`sale_id`),
  ADD UNIQUE KEY `invoice_number` (`invoice_number`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `employee_id` (`employee_id`),
  ADD KEY `sale_time` (`sale_time`),
  ADD KEY `dinner_table_id` (`dinner_table_id`);

--
-- Indexes for table `pos_sales_items`
--
ALTER TABLE `pos_sales_items`
  ADD PRIMARY KEY (`sale_id`,`item_id`,`line`),
  ADD KEY `sale_id` (`sale_id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `item_location` (`item_location`);

--
-- Indexes for table `pos_sales_items_taxes`
--
ALTER TABLE `pos_sales_items_taxes`
  ADD PRIMARY KEY (`sale_id`,`item_id`,`line`,`name`,`percent`),
  ADD KEY `sale_id` (`sale_id`),
  ADD KEY `item_id` (`item_id`);

--
-- Indexes for table `pos_sales_payments`
--
ALTER TABLE `pos_sales_payments`
  ADD PRIMARY KEY (`payment_id`),
  ADD KEY `payment_sale` (`sale_id`,`payment_type`),
  ADD KEY `employee_id` (`employee_id`),
  ADD KEY `payment_time` (`payment_time`);

--
-- Indexes for table `pos_sales_reward_points`
--
ALTER TABLE `pos_sales_reward_points`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sale_id` (`sale_id`);

--
-- Indexes for table `pos_sales_taxes`
--
ALTER TABLE `pos_sales_taxes`
  ADD PRIMARY KEY (`sales_taxes_id`),
  ADD KEY `print_sequence` (`sale_id`,`print_sequence`,`tax_group`);

--
-- Indexes for table `pos_sessions`
--
ALTER TABLE `pos_sessions`
  ADD KEY `ci_sessions_timestamp` (`timestamp`),
  ADD KEY `id` (`id`),
  ADD KEY `ip_address` (`ip_address`),
  ADD KEY `id_2` (`id`),
  ADD KEY `ip_address_2` (`ip_address`);

--
-- Indexes for table `pos_stock_locations`
--
ALTER TABLE `pos_stock_locations`
  ADD PRIMARY KEY (`location_id`);

--
-- Indexes for table `pos_suppliers`
--
ALTER TABLE `pos_suppliers`
  ADD PRIMARY KEY (`person_id`),
  ADD UNIQUE KEY `account_number` (`account_number`),
  ADD KEY `person_id` (`person_id`),
  ADD KEY `category` (`category`),
  ADD KEY `category_2` (`category`),
  ADD KEY `company_name` (`company_name`,`deleted`),
  ADD KEY `company_name_2` (`company_name`,`deleted`);

--
-- Indexes for table `pos_tax_categories`
--
ALTER TABLE `pos_tax_categories`
  ADD PRIMARY KEY (`tax_category_id`);

--
-- Indexes for table `pos_tax_codes`
--
ALTER TABLE `pos_tax_codes`
  ADD PRIMARY KEY (`tax_code_id`);

--
-- Indexes for table `pos_tax_jurisdictions`
--
ALTER TABLE `pos_tax_jurisdictions`
  ADD PRIMARY KEY (`jurisdiction_id`),
  ADD UNIQUE KEY `tax_jurisdictions_uq1` (`tax_group`);

--
-- Indexes for table `pos_tax_rates`
--
ALTER TABLE `pos_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `rate_tax_category_id` (`rate_tax_category_id`),
  ADD KEY `rate_tax_code_id` (`rate_tax_code_id`),
  ADD KEY `rate_jurisdiction_id` (`rate_jurisdiction_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pos_attribute_definitions`
--
ALTER TABLE `pos_attribute_definitions`
  MODIFY `definition_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pos_attribute_values`
--
ALTER TABLE `pos_attribute_values`
  MODIFY `attribute_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pos_cash_up`
--
ALTER TABLE `pos_cash_up`
  MODIFY `cashup_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pos_customers_packages`
--
ALTER TABLE `pos_customers_packages`
  MODIFY `package_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pos_customers_points`
--
ALTER TABLE `pos_customers_points`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pos_dinner_tables`
--
ALTER TABLE `pos_dinner_tables`
  MODIFY `dinner_table_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pos_expenses`
--
ALTER TABLE `pos_expenses`
  MODIFY `expense_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pos_expense_categories`
--
ALTER TABLE `pos_expense_categories`
  MODIFY `expense_category_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pos_giftcards`
--
ALTER TABLE `pos_giftcards`
  MODIFY `giftcard_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pos_inventory`
--
ALTER TABLE `pos_inventory`
  MODIFY `trans_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `pos_items`
--
ALTER TABLE `pos_items`
  MODIFY `item_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pos_item_kits`
--
ALTER TABLE `pos_item_kits`
  MODIFY `item_kit_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pos_people`
--
ALTER TABLE `pos_people`
  MODIFY `person_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pos_receivings`
--
ALTER TABLE `pos_receivings`
  MODIFY `receiving_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pos_sales`
--
ALTER TABLE `pos_sales`
  MODIFY `sale_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pos_sales_payments`
--
ALTER TABLE `pos_sales_payments`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `pos_sales_reward_points`
--
ALTER TABLE `pos_sales_reward_points`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pos_sales_taxes`
--
ALTER TABLE `pos_sales_taxes`
  MODIFY `sales_taxes_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pos_stock_locations`
--
ALTER TABLE `pos_stock_locations`
  MODIFY `location_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pos_tax_categories`
--
ALTER TABLE `pos_tax_categories`
  MODIFY `tax_category_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pos_tax_codes`
--
ALTER TABLE `pos_tax_codes`
  MODIFY `tax_code_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pos_tax_jurisdictions`
--
ALTER TABLE `pos_tax_jurisdictions`
  MODIFY `jurisdiction_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pos_tax_rates`
--
ALTER TABLE `pos_tax_rates`
  MODIFY `tax_rate_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pos_attribute_definitions`
--
ALTER TABLE `pos_attribute_definitions`
  ADD CONSTRAINT `fk_pos_attribute_definitions_ibfk_1` FOREIGN KEY (`definition_fk`) REFERENCES `pos_attribute_definitions` (`definition_id`);

--
-- Constraints for table `pos_attribute_links`
--
ALTER TABLE `pos_attribute_links`
  ADD CONSTRAINT `pos_attribute_links_ibfk_1` FOREIGN KEY (`definition_id`) REFERENCES `pos_attribute_definitions` (`definition_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pos_attribute_links_ibfk_2` FOREIGN KEY (`attribute_id`) REFERENCES `pos_attribute_values` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pos_attribute_links_ibfk_3` FOREIGN KEY (`item_id`) REFERENCES `pos_items` (`item_id`),
  ADD CONSTRAINT `pos_attribute_links_ibfk_4` FOREIGN KEY (`receiving_id`) REFERENCES `pos_receivings` (`receiving_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pos_attribute_links_ibfk_5` FOREIGN KEY (`sale_id`) REFERENCES `pos_sales` (`sale_id`);

--
-- Constraints for table `pos_cash_up`
--
ALTER TABLE `pos_cash_up`
  ADD CONSTRAINT `pos_cash_up_ibfk_1` FOREIGN KEY (`open_employee_id`) REFERENCES `pos_employees` (`person_id`),
  ADD CONSTRAINT `pos_cash_up_ibfk_2` FOREIGN KEY (`close_employee_id`) REFERENCES `pos_employees` (`person_id`);

--
-- Constraints for table `pos_customers`
--
ALTER TABLE `pos_customers`
  ADD CONSTRAINT `pos_customers_ibfk_3` FOREIGN KEY (`sales_tax_code_id`) REFERENCES `pos_tax_codes` (`tax_code_id`);

--
-- Constraints for table `pos_expenses`
--
ALTER TABLE `pos_expenses`
  ADD CONSTRAINT `pos_expenses_ibfk_1` FOREIGN KEY (`expense_category_id`) REFERENCES `pos_expense_categories` (`expense_category_id`),
  ADD CONSTRAINT `pos_expenses_ibfk_2` FOREIGN KEY (`employee_id`) REFERENCES `pos_employees` (`person_id`),
  ADD CONSTRAINT `pos_expenses_ibfk_3` FOREIGN KEY (`supplier_id`) REFERENCES `pos_suppliers` (`person_id`);

--
-- Constraints for table `pos_sales_payments`
--
ALTER TABLE `pos_sales_payments`
  ADD CONSTRAINT `pos_sales_payments_ibfk_1` FOREIGN KEY (`sale_id`) REFERENCES `pos_sales` (`sale_id`),
  ADD CONSTRAINT `pos_sales_payments_ibfk_2` FOREIGN KEY (`employee_id`) REFERENCES `pos_employees` (`person_id`);

--
-- Constraints for table `pos_tax_rates`
--
ALTER TABLE `pos_tax_rates`
  ADD CONSTRAINT `pos_tax_rates_ibfk_1` FOREIGN KEY (`rate_tax_category_id`) REFERENCES `pos_tax_categories` (`tax_category_id`),
  ADD CONSTRAINT `pos_tax_rates_ibfk_2` FOREIGN KEY (`rate_tax_code_id`) REFERENCES `pos_tax_codes` (`tax_code_id`),
  ADD CONSTRAINT `pos_tax_rates_ibfk_3` FOREIGN KEY (`rate_jurisdiction_id`) REFERENCES `pos_tax_jurisdictions` (`jurisdiction_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
