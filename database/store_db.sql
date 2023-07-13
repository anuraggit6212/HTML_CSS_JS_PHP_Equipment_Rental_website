-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 13, 2023 at 02:33 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `store_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `is_active` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`, `is_active`) VALUES
(8, 'Anurag Mahalpure ', 'anurag@gmail.com', '$2y$10$kByWm32SIAtEtBNdAPa8qeRrGWCNj6tsgDd61bm0q0.Q8aJvKHFfC', '0'),
(9, 'Lalit Wani', 'lalit@gmail.com', '$2y$10$GSVoQjP44Ud6KWrmat6uKegRYfbSB2cDvjYw5XR.ywfteTpzLyEz6', '0');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(100) NOT NULL,
  `brand_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
(1, 'Mahindra'),
(2, 'John Deere'),
(3, 'Massey Ferguson'),
(4, 'Ashok Leyland'),
(5, 'Tata Motors'),
(6, 'Caterpillar Inc'),
(7, 'AGT'),
(8, 'JCB'),
(9, 'Thorat Agro'),
(10, 'Shaktiman'),
(11, 'Aspee'),
(13, 'Tata Agrico');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(10) NOT NULL,
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(250) NOT NULL,
  `user_id` int(10) DEFAULT NULL,
  `qty` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(100) NOT NULL,
  `cat_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'Heavy Vehicles'),
(3, 'Farming Equipments'),
(4, 'Mining Equipments'),
(12, 'Gardening Equipments'),
(13, 'Construction Equipments');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `trx_id` varchar(255) NOT NULL,
  `p_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `product_id`, `qty`, `trx_id`, `p_status`) VALUES
(22, 3, 19, 1, '32pQd60EPotC8erxY', 'completed'),
(28, 3, 29, 1, '2wA7UnDSO0B1QZ5dy', 'completed'),
(29, 3, 4, 1, 'P3SFnrtIboNjc5H8G', 'completed'),
(31, 5, 5, 1, 'eWviruN2kZoMtbcVl', 'completed'),
(32, 5, 27, 1, 'Ilw8ptSQAonRUDPaG', 'completed'),
(33, 5, 10, 1, 'u43QEMNXxtkTaWlyZ', 'completed'),
(35, 5, 4, 1, 'xbVXufT69YgAIGz2r', 'completed'),
(36, 3, 5, 1, 'mlXMGrK6xUJOo8AcE', 'completed'),
(37, 3, 4, 2, 'IpEi1flx0PJXFmQdw', 'completed'),
(38, 3, 10, 48, 'Enxh2Kc4sdb6H9Urp', 'completed'),
(39, 3, 1, 2, 'jdaBvse4Uq9VEtMXl', 'completed');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `product_cat` int(11) NOT NULL,
  `product_brand` int(100) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_qty` int(11) NOT NULL,
  `product_desc` text NOT NULL,
  `product_image` text NOT NULL,
  `product_keywords` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_cat`, `product_brand`, `product_title`, `product_price`, `product_qty`, `product_desc`, `product_image`, `product_keywords`) VALUES
(1, 12, 7, 'AGT Gardening ToolKit', 50, 15, ' Gardening Tools Set 7PCS Wooden Handle Cultivator Free Rubber Hand Gloves Garden Tool Kit', '1679660395_1679253864_gtoolkit.jpg', 'tool,garden,gardening'),
(4, 4, 8, 'Excavator', 1200, 1, '	\r\nJCB JS140 Excavator Machine', '1679841197_1679254534_1552670718_iphone-7-plus.jpg', 'heavy,excavator'),
(5, 3, 3, 'Cultivator', 300, 6, 'Mild Steel Tractor Cultivator For Agriculture Use With And 150 Kg Dimension(l*w*h): 100*150*100 Centimeter (Cm)', '1679660262_1679254861_1552671096_7-2-samsung-mobile-phone-png-clipart-thumb.png', 'farm,cultivator,culti'),
(9, 1, 1, 'Mahindra Tractor', 600, 3, '49 Liter Fuel Capacity 32.14km/H Speed Mahindra Yuvo Tech Plus Tractor', '1679840883_mhtractor.jpeg', 'tractor, farm,mahindra'),
(10, 3, 3, 'Corn Harvester', 1000, 2, 'Easily Operate Conventional Self Propelled Maize Combine Harvester For Agriculture Power: 50-70 Hp Horsepower (Hp)', '1679764204_1552670517_sumsung galaxy s8.png', 'harvester,corn'),
(16, 3, 3, 'Cutter Reaper', 600, 1, 'Tractor Mounted Multi Crop Cutter Reaper', '1679762560_1552146861_3959702.png', 'frm,cutter,crop'),
(18, 3, 9, 'Plough', 600, 3, 'THORAT AGRO THREE BOTTOM HYD PLOUGH', '1679763365_plough.jpg', 'farm,plough,tractor,plogh'),
(19, 4, 5, 'Mini Excavator', 700, 1, '2330 mm ZX23U Tata Hitachi Mini Excavator, Maximum Bucket Capacity: 0.07 cum', '1679763736_sony mobile.jpg', 'poclain,mini excavator'),
(20, 3, 9, 'Mini Corn Harvester', 750, 1, 'Automatic Corn Harvester Machine For Farming', '1679764149_Winter-fashion-men-burst-sweater.png', 'farm,corn,harvest,harvester'),
(21, 3, 10, 'Rotavator', 400, 3, 'Shaktiman B Series SRT165', '1679764530_rotavator.jpg', 'farm,rotavator,rotor'),
(22, 3, 9, 'Seeder', 500, 2, 'Mild Steel Perni Yantra, For Agriculture, Size: 9 X 18', '1679841112_perni.jpeg', 'perni,perniyantra,crop,yielder'),
(23, 1, 8, 'JCB', 800, 1, 'JCB 76 Hp Backhoe Loader 3DX Super, Capacity: 3000 kg', '1679840945_jcbimg.jpg', 'jcb,digging'),
(24, 13, 10, 'Tower Crane', 2500, 1, 'View Similar Products\r\nHydraulic Mini Tower Crane, Capacity: 0-5 ton', '1679765806_towercrane.jpeg', 'crane,tower,tower-crane'),
(25, 1, 4, 'Dumper Truck', 1100, 1, 'Rigid Dump Truck / Diesel / Mining Tfs111', '1679840979_dumper.jpeg', 'truck, dumper, dumptruck'),
(26, 13, 6, 'Concrete Mixer', 900, 2, 'Electric Semi-Automatic Concrete Mixer Machinery', '1679841259_office5.jpg', 'concretemixer,concrete'),
(27, 13, 2, 'Articulated Dump Truck', 1500, 1, '260 P-Tier Articulated Dump Truck Net Power: 239 kW (321 hp) at 1,900 rpm\r\n', '1679767067_1552147613_blog_1.jpg', 'deere,dumper,articulated'),
(28, 4, 6, 'Mining Dozer', 2000, 1, 'With BOOSTING EFFICIENCY AND SAFETY WITH AUTOMATION', '1679770414_dozer.jpeg', 'dozer,caterpillar'),
(29, 3, 10, 'Sprayer', 700, 1, 'Shaktiman Boom Self-Propelled Sprayer High Ground Clearance Ceramic Nozzle Tips Hallow Cone & Flat Fan', '1679841161_1679769041_1679768077_boom-sprayer-.jpg', 'sprayer,water'),
(30, 3, 9, 'Manual Seeder', 300, 2, 'Manual Seeder Machine Cum Dibbler/Hand Operated Seeding Machine for Agriculture', '1679768462_manual seeder.jpg', 'manualseeder, seeder, perniyantra'),
(31, 3, 11, 'Battery Spray Pump', 30, 5, 'Blue Aspee Agricultural Sprayers, For Agriculture & Farming', '1679768815_pump.jpg', 'pump, battry, sprayer'),
(32, 3, 1, 'Trolley', 300, 2, 'Steel Agriculture Trolley', '1679772947_trolley.jpeg', 'trolley,tractor'),
(33, 12, 13, 'TATA AGRICO Garden Tools', 80, 4, 'Pack of 4, Red and Black garden use equipments', '1683871711_garden.jpg', 'garden, gardening');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `user_id` int(10) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address1` varchar(300) NOT NULL,
  `address2` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address1`, `address2`) VALUES
(3, 'Anurag', 'Mahalpure', 'anurag@gmail.com', '48076319e55c3e4456c214f36571d528', '7083263513', 'Gpj', 'Jalgaon'),
(5, 'Uday', 'Patil', 'uday@gmail.com', '0228669bc778ab885a898364efef9f7e', '9780652545', 'GP 2nd Year hostel', 'Jalgaon'),
(6, 'Lalit', 'Wani', 'lalit@gmail.com', '656f0dbf9392657eed7feefc486781fb', '7757093556', 'Pachora', 'Satgaon, Pa');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `fk_product_cat` (`product_cat`),
  ADD KEY `fk_product_brand` (`product_brand`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `fk_product_brand` FOREIGN KEY (`product_brand`) REFERENCES `brands` (`brand_id`),
  ADD CONSTRAINT `fk_product_cat` FOREIGN KEY (`product_cat`) REFERENCES `categories` (`cat_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
