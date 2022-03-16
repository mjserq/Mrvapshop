-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 17, 2022 at 03:01 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `posales`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `sub` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `sub`) VALUES
(1, 'Mod', 'None'),
(2, 'Accessories', 'None'),
(3, 'Battery', 'None'),
(4, 'Atomizer', 'None'),
(5, 'Wires', 'g'),
(6, 'E-Juice', 'mg');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `prod_name` varchar(550) NOT NULL,
  `expected_date` varchar(500) NOT NULL,
  `note` varchar(500) NOT NULL,
  `transac` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_name`, `address`, `contact`, `prod_name`, `expected_date`, `note`, `transac`, `status`) VALUES
(20, 'Jaypee', 'asdasd', 'qweqwe', 'qsadasd', 'asdasd', 'asdasd', 'Walk In', 'Complete'),
(21, 'James', 'asdasd', 'qweqasd', 'asdasd', 'asdasd', 'asdasd', 'Walk in', 'Complete');

-- --------------------------------------------------------

--
-- Table structure for table `customer_list`
--

CREATE TABLE `customer_list` (
  `cust_id` int(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `discount` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_list`
--

INSERT INTO `customer_list` (`cust_id`, `name`, `discount`) VALUES
(2, 'James', 100),
(3, 'Daryl', 20),
(4, 'Jason', 25);

-- --------------------------------------------------------

--
-- Table structure for table `customer_user`
--

CREATE TABLE `customer_user` (
  `user_id` int(11) NOT NULL,
  `fullname` varchar(200) NOT NULL,
  `username` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL,
  `address` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_user`
--

INSERT INTO `customer_user` (`user_id`, `fullname`, `username`, `password`, `address`) VALUES
(15, 'test', 'test', '098f6bcd4621d373cade4e832627b4f6', 'test'),
(16, 'mark jason', 'mjserq', '49d9c52d45e7c8e6c84c1baf7ee4b704', 'casaratan'),
(17, 'jason', 'markserq', '098f6bcd4621d373cade4e832627b4f6', 'san nicolas'),
(18, 'ronly', 'ronly', '098f6bcd4621d373cade4e832627b4f6', 'asd'),
(19, 'blaze serquina', 'blazeee', 'e10adc3949ba59abbe56e057f20f883e', 'tayug'),
(20, 'Kite', 'Kite', 'e10adc3949ba59abbe56e057f20f883e', 'asdasdasd'),
(21, 'test', 'test2', '098f6bcd4621d373cade4e832627b4f6', 'test'),
(22, 'Pierre Serquina', 'pierre', 'e10adc3949ba59abbe56e057f20f883e', 'San Nicolas'),
(23, 'test', 'test3', '098f6bcd4621d373cade4e832627b4f6', 'test'),
(24, 'gtarp', 'barrio', 'd4177dc752cddc204b22ec5798c4400e', 'los santos'),
(25, 'Karl Zulu', 'zulu', 'e10adc3949ba59abbe56e057f20f883e', 'Earth'),
(26, 'Andrei Hornilla', 'Drei', 'e10adc3949ba59abbe56e057f20f883e', 'Cavite'),
(27, 'qwe', 'qwe', 'e10adc3949ba59abbe56e057f20f883e', 'qwe');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_code` varchar(200) NOT NULL,
  `gen_name` varchar(200) NOT NULL,
  `subcat` text NOT NULL,
  `product_name` varchar(200) NOT NULL,
  `cost` varchar(100) NOT NULL,
  `o_price` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `profit` varchar(100) NOT NULL,
  `supplier` varchar(100) NOT NULL,
  `onhand_qty` int(10) NOT NULL,
  `qty` int(10) NOT NULL,
  `qty_sold` int(10) NOT NULL,
  `expiry_date` varchar(500) NOT NULL,
  `date_arrival` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_code`, `gen_name`, `subcat`, `product_name`, `cost`, `o_price`, `price`, `profit`, `supplier`, `onhand_qty`, `qty`, `qty_sold`, `expiry_date`, `date_arrival`) VALUES
(21, 'MRVS-7cba', 'Wires', '26g', 'Alien Wire', '', '180', '350', '170', 'Geekpvape', 0, 5, 5, '2021-11-30', '2021-11-21'),
(24, 'MRVS-2b86', 'Mod', 'None', 'Aegis X', '', '1800', '2500', '700', 'Geekpvape', 0, 8, 6, '2021-11-27', '2021-11-24'),
(25, 'MRVS-7546', 'E-Juice', '3mg', 'Freezy Tricks', '', '200', '350', '150', 'Geekpvape', 0, 6, 6, '2021-11-30', '2021-11-24'),
(26, 'MRVS-cbbd', 'Atomizer', 'None', 'Zues Tank', '', '1000', '1700', '700', 'Geekpvape', 0, 4, 4, '2021-11-28', '2021-11-25');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `transaction_id` int(11) NOT NULL,
  `invoice_number` varchar(100) NOT NULL,
  `cashier` varchar(100) NOT NULL,
  `date` varchar(50) NOT NULL,
  `type` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `profit` varchar(100) NOT NULL,
  `cash` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`transaction_id`, `invoice_number`, `cashier`, `date`, `type`, `amount`, `profit`, `cash`, `name`) VALUES
(14, 'MR-03322223', 'mj', '10/28/21', 'cash', '2000', '200', '2000', 'Jaypee'),
(15, 'MR-007232', 'mj', '10/28/21', 'cash', '2400', '400', '2500', 'James'),
(16, 'MR-2356233', 'mj', '10/28/21', 'cash', '5000', '1400', '5000', 'Jason'),
(17, 'MR-020033', 'mj', '10/28/21', 'cash', '500', '50', '500', 'Daryl'),
(18, 'MR-0332302', 'mj', '10/28/21', 'cash', '1050', '150', '1100', 'Marko'),
(19, 'MR-838323', 'mj', '10/29/21', 'cash', '2100', '300', '2200', 'Daryl'),
(20, 'MR-32233995', 'mj', '10/28/21', 'cash', '2150', '400', '2200', 'Jaypee'),
(21, 'MR-48233330', 'mj', '10/31/21', 'cash', '350', '50', '500', 'James'),
(22, 'MR-382023', 'mj', '10/30/21', 'cash', '1300', '300', '1300', 'James'),
(23, 'MR-233328', 'mj', '10/31/21', 'cash', '2000', '400', '2000', 'Jaypee'),
(24, 'MR-532820', 'mj', '11/15/21', 'cash', '1300', '300', '1500', 'Jaypee'),
(25, 'MR-20622002', 'mj', '11/15/21', 'cash', '1300', '300', '1500', 'James'),
(26, 'MR-323322', 'mj', '11/17/21', 'cash', '1300', '300', '1500', 'Daryl'),
(27, 'MR-3237000', 'mj', '11/19/21', 'cash', '3450', '700', '3500', 'Jaypee'),
(28, 'MR-2203623', 'mj', '11/19/21', 'cash', '350', '50', '500', 'Dionnel'),
(29, 'MR-30833230', 'mj', '11/20/21', 'cash', '350', '150', '500', 'Jaypee'),
(30, 'MR-90773333', 'mj', '11/20/21', 'cash', '700', '100', '1000', 'James'),
(31, 'MR-3323030', 'mj', '11/21/21', 'cash', '350', '170', '500', 'Marko'),
(32, 'MR-22002840', 'mj', '11/21/21', 'cash', '1750', '1250', '2000', 'Jason'),
(33, 'MR-32330432', 'mj', '11/23/21', 'cash', '2850', '1750', '3000', 'James'),
(34, 'MR-04023', 'mj', '11/23/21', 'cash', '3200', '1920', '3500', 'Jaypee'),
(35, 'MR-0065530', 'Monica Paragas', '11/24/21', 'cash', '5000', '3000', '5000', 'James'),
(36, 'MR-4326023', 'mj', '11/24/21', 'cash', '350', '170', '500', 'Andrei'),
(37, 'MR-202340', 'mj', '01/16/22', 'cash', '2500', '700', '3000', 'Siege'),
(38, 'MR-00230026', 'Monica Paragas', '01/16/22', 'cash', '2500', '700', '3000', 'Siege');

-- --------------------------------------------------------

--
-- Table structure for table `sales_order`
--

CREATE TABLE `sales_order` (
  `transaction_id` int(11) NOT NULL,
  `invoice` varchar(100) NOT NULL,
  `product` varchar(100) NOT NULL,
  `qty` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `profit` varchar(100) NOT NULL,
  `product_code` varchar(150) NOT NULL,
  `gen_name` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `price` varchar(100) NOT NULL,
  `discount` varchar(100) NOT NULL,
  `date` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales_order`
--

INSERT INTO `sales_order` (`transaction_id`, `invoice`, `product`, `qty`, `amount`, `profit`, `product_code`, `gen_name`, `name`, `price`, `discount`, `date`) VALUES
(66, 'MR-03322223', '12', '1', '2000', '200', 'MRVS-39c8', 'Mod', 'Aegis X ', '2500', '500', '2021/10/28'),
(67, 'MR-007232', '13', '2', '2400', '400', 'MRVS-1e21', 'Atomizer', 'Zues Tank', '1300', '200', '2021/10/28'),
(68, 'MR-2356233', '12', '2', '5000', '1400', 'MRVS-39c8', 'Mod', 'Aegis X ', '2500', '0', '2021/10/28'),
(70, 'MR-020033', '14', '1', '500', '50', 'MRVS-b05e', 'Battery', 'Cylaid Violet 30A', '500', '0', '2021/10/28'),
(71, 'MR-0332302', '11', '3', '1050', '150', 'MRVS-f8c5', 'Juice', 'Freezy Tricks', '350', '0', '2021/10/28'),
(72, 'MR-838323', '12', '1', '2100', '300', 'MRVS-39c8', 'Mod', 'Aegis X ', '2500', '400', '2021/10/29'),
(73, 'MR-32233995', '11', '1', '350', '50', 'MRVS-f8c5', 'Juice', 'Freezy Tricks', '350', '0', '2021/10/28'),
(74, 'MR-32233995', '13', '1', '1300', '300', 'MRVS-1e21', 'Atomizer', 'Zues Tank', '1300', '0', '2021/10/28'),
(75, 'MR-32233995', '14', '1', '500', '50', 'MRVS-b05e', 'Battery', 'Cylaid Violet 30A', '500', '0', '2021/10/28'),
(76, 'MR-48233330', '11', '1', '350', '50', 'MRVS-f8c5', 'Juice', 'Freezy Tricks', '350', '0', '2021/10/31'),
(77, 'MR-382023', '13', '1', '1300', '300', 'MRVS-1e21', 'Atomizer', 'Zues Tank', '1300', '0', '2021/10/30'),
(78, 'MR-233328', '11', '2', '700', '100', 'MRVS-f8c5', 'Juice', 'Freezy Tricks', '350', '0', '2021/10/31'),
(79, 'MR-233328', '13', '1', '1300', '300', 'MRVS-1e21', 'Atomizer', 'Zues Tank', '1300', '0', '2021/10/31'),
(80, 'MR-532820', '13', '1', '1300', '300', 'MRVS-1e21', 'Atomizer', 'Zues Tank', '1300', '0', '2021/11/15'),
(81, 'MR-20622002', '13', '1', '1300', '300', 'MRVS-1e21', 'Atomizer', 'Zues Tank', '1300', '0', '2021/11/15'),
(84, 'MR-323322', '13', '1', '1300', '300', 'MRVS-1e21', 'Atomizer', 'Zues Tank', '1300', '0', '2021/11/17'),
(85, 'MR-3237000', '11', '1', '350', '50', 'MRVS-f8c5', 'Juice', 'Freezy Tricks', '350', '0', '2021/11/19'),
(86, 'MR-3237000', '13', '2', '2600', '600', 'MRVS-1e21', 'Atomizer', 'Zues Tank', '1300', '0', '2021/11/19'),
(87, 'MR-3237000', '14', '1', '500', '50', 'MRVS-b05e', 'Battery', 'Cylaid Violet 30A', '500', '0', '2021/11/19'),
(89, 'MR-2203623', '11', '1', '350', '50', 'MRVS-f8c5', 'Juice', 'Freezy Tricks', '350', '0', '2021/11/19'),
(91, 'MR-30833230', '17', '1', '350', '150', 'MRVS-8188', 'Wires', 'Alien Wire', '350', '0', '2021/11/20'),
(92, 'MR-90773333', '11', '2', '700', '100', 'MRVS-f8c5', 'Juice', 'Freezy Tricks', '350', '0', '2021/11/20'),
(102, 'MR-2393330', '20', '7', '1400', '560', 'MRVS-0a1d', 'E-Juice', 'Chill Bill', '200', '0', '2021/11/21'),
(103, 'MR-3323030', '21', '1', '350', '170', 'MRVS-7cba', 'Wires', 'Alien Wire', '350', '0', '2021/11/21'),
(104, 'MR-22002840', '22', '5', '1750', '1250', 'MRVS-8f0e', 'E-Juice', 'Freezy Tricks', '350', '0', '2021/11/21'),
(106, 'MR-32330432', '22', '1', '350', '250', 'MRVS-8f0e', 'E-Juice', 'Freezy Tricks', '350', '0', '2021/11/23'),
(107, 'MR-32330432', '23', '1', '2500', '1500', 'MRVS-a5f3', 'Atomizer', 'Zues Tank', '2500', '0', '2021/11/23'),
(108, 'MR-04023', '23', '1', '2500', '1500', 'MRVS-a5f3', 'Atomizer', 'Zues Tank', '2500', '0', '2021/11/23'),
(109, 'MR-04023', '22', '1', '350', '250', 'MRVS-8f0e', 'E-Juice', 'Freezy Tricks', '350', '0', '2021/11/23'),
(110, 'MR-04023', '21', '1', '350', '170', 'MRVS-7cba', 'Wires', 'Alien Wire', '350', '0', '2021/11/23'),
(111, 'MR-0065530', '23', '2', '5000', '3000', 'MRVS-a5f3', 'Atomizer', 'Zues Tank', '2500', '0', '2021/11/24'),
(112, 'MR-4326023', '21', '1', '350', '170', 'MRVS-7cba', 'Wires', 'Alien Wire', '350', '0', '2021/11/24'),
(113, 'MR-202340', '24', '1', '2500', '700', 'MRVS-2b86', 'Mod', 'Aegis X', '2500', '0', '2022/01/16'),
(114, 'MR-00230026', '24', '1', '2500', '700', 'MRVS-2b86', 'Mod', 'Aegis X', '2500', '0', '2022/01/16');

-- --------------------------------------------------------

--
-- Table structure for table `supliers`
--

CREATE TABLE `supliers` (
  `suplier_id` int(11) NOT NULL,
  `suplier_name` varchar(100) NOT NULL,
  `suplier_address` varchar(100) NOT NULL,
  `suplier_contact` varchar(100) NOT NULL,
  `contact_person` varchar(100) NOT NULL,
  `note` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supliers`
--

INSERT INTO `supliers` (`suplier_id`, `suplier_name`, `suplier_address`, `suplier_contact`, `contact_person`, `note`) VALUES
(1, 'Geekpvape', 'Urdaneta Pangasinan', 'Juan Dela Cruz', '09093254587', 'sadfasda');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `position` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `name`, `position`) VALUES
(8, 'mjserq', '21232f297a57a5a743894a0e4a801fc3', 'mj', 'Admin'),
(9, 'monparagas', 'ee11cbb19052e40b07aac0ca060c23ee', 'Monica Paragas', 'Cashier'),
(10, 'zaratenoemi', '21232f297a57a5a743894a0e4a801fc3', 'Noemi Zarate', 'Admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `customer_list`
--
ALTER TABLE `customer_list`
  ADD PRIMARY KEY (`cust_id`);

--
-- Indexes for table `customer_user`
--
ALTER TABLE `customer_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Indexes for table `sales_order`
--
ALTER TABLE `sales_order`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Indexes for table `supliers`
--
ALTER TABLE `supliers`
  ADD PRIMARY KEY (`suplier_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `customer_list`
--
ALTER TABLE `customer_list`
  MODIFY `cust_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `customer_user`
--
ALTER TABLE `customer_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `sales_order`
--
ALTER TABLE `sales_order`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `supliers`
--
ALTER TABLE `supliers`
  MODIFY `suplier_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
