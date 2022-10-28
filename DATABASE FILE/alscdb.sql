-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 06, 2022 at 04:37 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `alscdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `invoice` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address_1` varchar(255) NOT NULL,
  `address_2` varchar(255) NOT NULL,
  `town` varchar(255) NOT NULL,
  `county` varchar(255) NOT NULL,
  `postcode` varchar(255) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `name_ship` varchar(255) NOT NULL,
  `address_1_ship` varchar(255) NOT NULL,
  `address_2_ship` varchar(255) NOT NULL,
  `town_ship` varchar(255) NOT NULL,
  `county_ship` varchar(255) NOT NULL,
  `postcode_ship` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `invoice`, `name`, `email`, `address_1`, `address_2`, `town`, `county`, `postcode`, `phone`, `name_ship`, `address_1_ship`, `address_2_ship`, `town_ship`, `county_ship`, `postcode_ship`) VALUES
(43, '3', 'Anne B Ruch', 'anner@mail.com', '4039 Overlook Drive', '4039 Overlook Drive', 'Indianapolis', 'US', '46225', '1478500000', 'Anne B Ruch', '4039 Overlook Drive', '4039 Overlook Drive', 'Indianapolis', 'US', '46225'),
(44, '4', 'Albert M Dunford', 'albd@mail.com', '1143 Kuhl Avenue', '1143 Kuhl Avenue', 'Norcross', 'US', '30092', '8520000010', 'Albert M Dunford', '1143 Kuhl Avenue', '1143 Kuhl Avenue', 'Norcross', 'US', '30092'),
(45, '5', 'Anne B Ruch', 'anner@mail.com', '4039 Overlook Drive', '4039 Overlook Drive', 'Indianapolis', 'US', '46225', '1478500000', 'Anne B Ruch', '4039 Overlook Drive', '4039 Overlook Drive', 'Indianapolis', 'US', '46225'),
(46, '6', 'Wendy Reilly', 'wendy@mail.com', '3605 Cost Avenue', '3605 Cost Avenue', 'Wharton', 'US', '77488', '3214444444', 'Wendy Reilly', '3605 Cost Avenue', '3605 Cost Avenue', 'Wharton', 'US', '77488'),
(47, '7', 'Test Customer', 'testc@mail.com', '110 Test Address', '116 Test Address', 'Testown', 'TestCn', '00225', '7777777770', 'Test Customer', '110 Test Address', '116 Test Address', 'Testown', 'TestCn', '00225'),
(48, '8', 'Demo User', 'demouser@mail.com', '115 Demo Address', '115 Demo Address', 'DemoTown', 'DemoCn', '00020', '7777777777', 'Demo User', '115 Demo Address', '115 Demo Address', 'DemoTown', 'DemoCn', '00020'),
(49, '9', 'Wendy Reilly', 'wendy@mail.com', '3605 Cost Avenue', '3605 Cost Avenue', 'Wharton', 'US', '77488', '3214444444', 'Wendy Reilly', '3605 Cost Avenue', '3605 Cost Avenue', 'Wharton', 'US', '77488'),
(50, '10', 'Rose Thompson', 'thompsonr@mail.com', '2374 Berkley Street', '2374 Berkley Street', 'Northampton', 'US', '01010', '7410000020', 'Rose Thompson', '2374 Berkley Street', '2374 Berkley Street', 'Northampton', 'US', '01010'),
(51, '10', 'Albert M Dunford', 'albd@mail.com', '1143 Kuhl Avenue', '', 'Norcross', 'US', '30092', '8520000010', 'Albert M Dunford', '1143 Kuhl Avenue', '1143 Kuhl Avenue', 'Norcross', 'US', '30092'),
(52, '10', 'Albert M Dunford', 'albd@mail.com', '1143 Kuhl Avenue', '', 'Norcross', 'US', '30092', '8520000010', 'Albert M Dunford', '1143 Kuhl Avenue', '1143 Kuhl Avenue', 'Norcross', 'US', '30092'),
(53, '10', 'Allan Deer', 'allande@mail.com', '1702 Modoc Alley', '', 'White Bird', 'US', '55550', '8520001450', 'Allan Deer', '1702 Modoc Alley', '1702 Modoc Alley', 'White Bird', 'US', '55550'),
(54, '10', 'Albert M Dunford', 'albd@mail.com', '1143 Kuhl Avenue', '', 'Norcross', 'US', '30092', '8520000010', 'Albert M Dunford', '1143 Kuhl Avenue', '1143 Kuhl Avenue', 'Norcross', 'US', '30092'),
(55, '11', 'Albert M Dunford', 'albd@mail.com', '1143 Kuhl Avenue', '121212', 'Norcross', 'US', '30092', '8520000010', 'Albert M Dunford', '1143 Kuhl Avenue', '121212', 'Norcross', 'US', '30092');

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` int(11) NOT NULL,
  `invoice` varchar(255) NOT NULL,
  `custom_email` text NOT NULL,
  `invoice_date` varchar(255) NOT NULL,
  `invoice_due_date` varchar(255) NOT NULL,
  `subtotal` decimal(10,0) NOT NULL,
  `shipping` decimal(10,0) NOT NULL,
  `discount` decimal(10,0) NOT NULL,
  `vat` decimal(10,0) NOT NULL,
  `total` decimal(10,0) NOT NULL,
  `notes` text NOT NULL,
  `invoice_type` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `invoice`, `custom_email`, `invoice_date`, `invoice_due_date`, `subtotal`, `shipping`, `discount`, `vat`, `total`, `notes`, `invoice_type`, `status`) VALUES
(42, '1', '', '12/11/2021', '14/11/2021', '523', '55', '6', '58', '636', 'Completed!', 'invoice', 'paid'),
(44, '2', '', '12/11/2021', '13/11/2021', '395', '85', '4', '48', '528', 'none', 'invoice', 'paid'),
(47, '3', '', '13/11/2021', '15/11/2021', '132', '65', '0', '20', '217', 'none', 'invoice', 'paid'),
(46, '4', '', '13/11/2021', '17/11/2021', '270', '65', '3', '34', '369', '', 'invoice', 'open'),
(48, '5', '', '13/11/2021', '17/11/2021', '405', '20', '3', '43', '468', 'none', 'invoice', 'open'),
(49, '6', '', '13/11/2021', '18/11/2021', '534', '40', '7', '57', '631', '', 'invoice', 'open'),
(51, '7', '', '13/11/2021', '16/11/2021', '600', '20', '4', '62', '682', 'Cleared Up!', 'invoice', 'paid'),
(52, '8', '', '13/11/2021', '15/11/2021', '153', '20', '2', '17', '190', '', 'invoice', 'open'),
(53, '9', '', '15/11/2021', '17/11/2021', '115', '25', '0', '14', '154', '', 'invoice', 'open'),
(62, '10', '', '09/06/2022', '08/16/2022', '19', '0', '0', '2', '21', '', 'invoice', 'open'),
(63, '11', '', '09/25/2022', '08/29/2022', '0', '0', '0', '0', '0', '', 'invoice', 'open'),
(61, '10', '', '08/30/2022', '08/22/2022', '19', '0', '0', '2', '21', '', 'invoice', 'open'),
(60, '10', '', '08/31/2022', '08/31/2022', '19', '0', '0', '2', '21', '', 'invoice', 'open');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_items`
--

CREATE TABLE `invoice_items` (
  `id` int(11) NOT NULL,
  `invoice` varchar(255) NOT NULL,
  `product` text NOT NULL,
  `qty` int(11) NOT NULL,
  `price` varchar(255) NOT NULL,
  `discount` varchar(255) NOT NULL,
  `subtotal` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoice_items`
--

INSERT INTO `invoice_items` (`id`, `invoice`, `product`, `qty`, `price`, `discount`, `subtotal`) VALUES
(90, '5', 'Product One - This is a sample product one.', 12, '34', '3', '405.00'),
(89, '4', 'Product Two - This is a sample product two.', 21, '13', '3', '270.00'),
(91, '6', 'Product Four - This is a sample product four.', 5, '5', '2', '23.00'),
(95, '8', 'Product Seven - This is a sample product seven.', 5, '23', '0', '115.00'),
(96, '8', 'Product Four - This is a sample product four.', 8, '5', '2', '38.00'),
(97, '9', 'Product Seven - This is a sample product seven.', 5, '23', '0', '115.00'),
(102, '10', 'Product Eight - This is a sample product eight.', 1, '19', '', '19.00'),
(103, '11', 'Product Eight - This is a sample product eight.', 1, '19', '', '19.00');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_name` text NOT NULL,
  `product_desc` text NOT NULL,
  `product_price` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `product_desc`, `product_price`) VALUES
(980, 'Product Two', 'This is a sample product two.', '13'),
(981, 'Product Three', 'This is a sample product three.', '68'),
(982, 'Product Four', 'This is a sample product four.', '5'),
(984, 'Product Six', 'This is a sample product six.', '12'),
(986, 'Product Eight', 'This is a sample product eight.', '19');

-- --------------------------------------------------------

--
-- Table structure for table `store_customers`
--

CREATE TABLE `store_customers` (
  `id` int(11) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `middle_name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city_prov` varchar(255) NOT NULL,
  `zip_code` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `store_customers`
--

INSERT INTO `store_customers` (`id`, `last_name`, `first_name`, `middle_name`, `address`, `city_prov`, `zip_code`, `email`, `phone`) VALUES
(63, 'DELA CRUZ', 'JUDE', 'PANGILINAN', '0682 SANTOL', 'BALAGTAS, BULACAN', '3016', 'jaevoli18@gmail.com', '09561305511'),
(65, 'CRUZ', 'JUDZ', 'DELA', 'SANTOL', 'BULACAN', '3016', 'jaevoli18@gmail.com', '09561305511'),
(66, 'CRUZ', 'JUDZ', 'DELA', 'SANTOL', 'BULACAN', '3016', 'jaevoli18@gmail.com', '09561305511'),
(67, 'CRUZ', 'JUDZ', 'DELA', 'SANTOL', 'BULACAN', '3016', 'jaevoli@gmail.com', '09561305511'),
(68, 'CRUZ', 'JUDZ', 'DELA', 'SANTOL', 'BULACAN', '3016', 'jaevoli18@gmail.com', '09561305511'),
(69, 'CRUZ', 'JUDZ', 'DELA', 'SANTOL', 'BULACAN', '3016', 'jaevoli18@gmail.com', '09561305511');

-- --------------------------------------------------------

--
-- Table structure for table `t_lots`
--

CREATE TABLE `t_lots` (
  `c_site` smallint(6) DEFAULT NULL,
  `c_block` smallint(6) DEFAULT NULL,
  `c_lot` smallint(6) DEFAULT NULL,
  `c_lid` int(11) NOT NULL,
  `c_lot_area` decimal(10,0) DEFAULT NULL,
  `c_price_sqm` double DEFAULT NULL,
  `c_remarks` char(1) DEFAULT NULL,
  `c_status` varchar(255) DEFAULT NULL,
  `c_lot_type` varchar(255) DEFAULT NULL,
  `c_title` varchar(255) DEFAULT NULL,
  `c_lot_type_remarks` varchar(255) DEFAULT NULL,
  `c_title_owner` varchar(255) DEFAULT NULL,
  `c_previous_owner` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `phone`, `password`) VALUES
(1, 'Liam Moore', 'admin', 'admin@codeastro.com', '7896541250', '21232f297a57a5a743894a0e4a801fc3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_items`
--
ALTER TABLE `invoice_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `store_customers`
--
ALTER TABLE `store_customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `invoice_items`
--
ALTER TABLE `invoice_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=987;

--
-- AUTO_INCREMENT for table `store_customers`
--
ALTER TABLE `store_customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
