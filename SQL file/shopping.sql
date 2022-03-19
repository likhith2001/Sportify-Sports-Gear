-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 09, 2022 at 08:12 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', '2017-01-24 16:21:18', '21-06-2018 08:27:55 PM');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext DEFAULT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(13, 'Badminton', 'Badminton Gear', '2022-01-17 12:27:26', NULL),
(14, 'Basketball', 'Basketball Gear', '2022-01-17 12:27:39', NULL),
(15, 'Cricket', 'Cricket Gear', '2022-01-17 12:27:50', NULL),
(16, 'Football', 'Football Gear', '2022-01-17 12:28:01', NULL),
(17, 'Tennis', 'Tennis Gear', '2022-01-17 12:28:20', NULL),
(18, 'Volleyball', 'Volleyball Gear', '2022-01-17 12:28:35', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `userId`, `productId`, `quantity`, `orderDate`, `paymentMethod`, `orderStatus`) VALUES
(7, 4, '23', 1, '2022-01-17 14:44:13', 'Debit / Credit card', NULL),
(8, 4, '32', 1, '2022-01-17 14:44:13', 'Debit / Credit card', 'in Process'),
(9, 4, '35', 1, '2022-01-17 14:44:13', 'Debit / Credit card', 'Delivered'),
(10, 4, '23', 1, '2022-01-18 16:35:37', 'COD', NULL),
(11, 4, '34', 1, '2022-01-18 16:35:37', 'COD', NULL),
(12, 5, '22', 1, '2022-02-09 06:28:47', 'COD', 'Delivered'),
(13, 5, '32', 1, '2022-02-09 06:28:47', 'COD', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ordertrackhistory`
--

CREATE TABLE `ordertrackhistory` (
  `id` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ordertrackhistory`
--

INSERT INTO `ordertrackhistory` (`id`, `orderId`, `status`, `remark`, `postingDate`) VALUES
(5, 8, 'in Process', 'Order in process', '2022-01-17 14:45:31'),
(6, 9, 'Delivered', 'Order Delivered Successfully', '2022-01-17 14:46:00'),
(7, 12, 'Delivered', 'Order Delivered', '2022-02-09 06:32:43');

-- --------------------------------------------------------

--
-- Table structure for table `productreviews`
--

CREATE TABLE `productreviews` (
  `id` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `review` longtext DEFAULT NULL,
  `reviewDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productCompany` varchar(255) DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productPriceBeforeDiscount` int(11) DEFAULT NULL,
  `productDescription` longtext DEFAULT NULL,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(22, 13, 15, 'Yonex Nanoray Light 18i Graphite Badminton Racquet (77g, 30 lbs Tension)', 'YONEX', 1499, 1999, '<span style=\"color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\">NANOSCIENCE technology - With streamlined aerodynamic NANOSCIENCE technology built into the shaft for a stiff flex and unparalleled repulsion power, the NANORAY 68 Light is engineered for lightning-fast shots.</span><br>', 'badminton-bat.png', 'badminton-bat-1.png', 'badminton-bat-2.png', 99, 'In Stock', '2022-01-17 12:56:55', NULL),
(23, 13, 16, 'Yonex Shuttlecock MAVIS 350', 'YONEX', 99, 199, '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 18px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\"><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Developed using the flight timing of feather shuttlecocks</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Low torsion steel shaft that enhances its strength</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Mavis nylon shuttlecocks are precision designed and manufactured to provide accurate flight performance</span></li></ul>', 'Shuttle.jpg', 'Shuttle1.jpg', 'Shuttle2.jpg', 99, 'In Stock', '2022-01-17 13:03:59', NULL),
(24, 13, 17, 'YONEX ET 903 E Rubber Badminton Grip (Pack of 6), Multicolour', 'YONEX', 499, 699, '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 18px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\"><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Badminton racquet over grip</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Length: 1050 mm, width: 27mm</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Ideal for any badminton for stronger grip</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Material: Rubber</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">In-box Contents: 6 Badminton grip</span></li></ul>', 'Grip.jpg', 'Grip1.jpg', 'Grip2.jpg', 99, 'In Stock', '2022-01-17 13:07:28', NULL),
(25, 13, 14, 'Yonex AC258EX Head Band', 'YONEX', 799, 999, '<span style=\"color: rgb(51, 51, 51); font-family: arial; font-size: 16px;\">AC258EX Head Band</span><br style=\"margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: arial; font-size: 16px;\"><span style=\"color: rgb(51, 51, 51); font-family: arial; font-size: 16px;\">Material:&nbsp;Cotton/Acryl&nbsp;</span><br style=\"margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: arial; font-size: 16px;\"><span style=\"color: rgb(51, 51, 51); font-family: arial; font-size: 16px;\">Colours:&nbsp;Red, Black, White, Navy Blue,&nbsp;Yellow,&nbsp;Orange</span><br>', 'bad head band.jpg', 'bad head band1.jpg', 'bad head band2.jpg', 99, 'In Stock', '2022-01-17 13:10:27', NULL),
(26, 13, 18, 'Yonex Pioneer AC470 EX Grip Powder, Multicolour', 'YONEX', 599, 799, '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 18px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\"><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">This power helps to keep the grip dry for up to 4 hrs</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Grip Powder</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Colour: Multicolour</span></li></ul>', 'bad powder.png', 'bad powder1.png', 'bad powder2.png', 99, 'In Stock', '2022-01-17 13:20:05', NULL),
(27, 13, 19, 'Yonex AC 489 Wrist Band (Pack of 6)', 'YONEX', 799, 999, '<ul><li><span style=\"color: rgb(13, 13, 13); font-family: poppins; font-size: 16px;\">The Yonex AC-489-SI wristband is made of 75% cotton, 20% Nylon and 5% Elastane.&nbsp;</span></li><li><span style=\"color: rgb(13, 13, 13); font-family: poppins; font-size: 16px;\">Extra thick to absorb more sweat.&nbsp;</span></li><li><span style=\"color: rgb(13, 13, 13); font-family: poppins; font-size: 16px;\">Yonex logo embroidered in middle.</span></li><li><span style=\"color: rgb(13, 13, 13); font-family: poppins; font-size: 16px;\">Tennis and badminton players can&nbsp;use wrist bands&nbsp;to wipe the sweat off the forehead. This helps to improve vision.&nbsp;</span></li><li><span style=\"color: rgb(13, 13, 13); font-family: poppins; font-size: 16px;\">They also help to prevent sweat from flowing to the palms of the hand.&nbsp;</span></li></ul>', 'bad wrist band.jpg', 'bad wrist band1.jpg', 'bad wrist band2.jpg', 99, 'In Stock', '2022-01-17 13:23:31', NULL),
(31, 14, 23, 'Krizler Cotton, Nylon Arm Sleeve For Men & Women  (Free, Black)', 'Krizler', 249, 599, '<br><div><li class=\"_21Ahn-\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; color: rgb(33, 33, 33); position: relative; font-family: Roboto, Arial, sans-serif; font-size: 14px;\">Size: Free</li><li class=\"_21Ahn-\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; color: rgb(33, 33, 33); position: relative; font-family: Roboto, Arial, sans-serif; font-size: 14px;\">Color: Black</li><li class=\"_21Ahn-\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 16px; list-style: none; color: rgb(33, 33, 33); position: relative; font-family: Roboto, Arial, sans-serif; font-size: 14px;\">Material: Cotton, Nylon</li></div>', 'Arm Sleeve.jpg', 'Arm Sleeve1.jpg', 'Arm Sleeve2.jpg', 99, 'In Stock', '2022-01-17 13:44:04', NULL),
(32, 14, 24, 'Sapphire Ball Carry Bag for 12-16 Basketballs', 'Sapphire', 399, 599, '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 18px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\"><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Bag Capacity: 12-16 Footballs</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Can be used for All types of Inflatable Balls</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Made of 100% polyester</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Easy to transport and store</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Ideal for gifting purpose</span></li></ul>', 'Ball Bag.jpg', 'Ball Bag1.jpg', 'Ball Bag2.jpg', 99, 'In Stock', '2022-01-17 13:48:25', NULL),
(33, 15, 30, 'Pioneer Wooden Stumps Set (Assorted)', 'Pioneer', 299, 599, '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 18px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\"><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">VERY STURDY BASE- DOES NOT TOPPLE EASILY</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">SET OF 3 HEAVY DUTY STUMPS WITH STAND AND 2 BAILS</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">THIS PRODUCT IS HEAVIER AND STURDIER THAN OTHER STUMPS</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">COMES WITH HEAVY DUTY PLASTIC BAG WITH BUTTON CLOSURES</span></li></ul>', 'Bails1.jpg', 'Bails.jpg', 'Bails2.jpg', 99, 'In Stock', '2022-01-17 13:59:28', NULL),
(34, 15, 32, 'SG Phoenix Xtreme Kashmir Willow Cricket Bat ( Size: Short Handle,Leather Ball )', 'SG', 1499, 1999, '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 18px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\"><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">In Box contents: 1 Cricket Bat with Cover | Material: Kashmir Willow | Needs Knocking: Yes | With Cover: Yes | Has Toe Guard: No</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Suitable For: Leather Ball | Weight: 1170-1220gm | Sweet Spot: Medium | Spine Profile: Medium</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Playing Style: All-Round</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Handle-Singapore cane handle with special 3 way insertion of rubber in between splits for enhanced flexibility and shock absorption.</span></li></ul>', 'Cric-bat.jpg', 'Cric-bat1.jpg', 'Cric-bat2.jpg', 99, 'In Stock', '2022-01-17 14:02:00', NULL),
(35, 16, 39, 'Nivia Vega Football, Size 5', 'Nivia', 599, 999, '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 18px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\"><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Latex bladder offers optimum air retention and high bounce.</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">32 panel stitched construction</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Proudly Made in India. Training ball for Hard and Rough Surfaces.</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Easy to control – also under wet and moist conditions.</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Medium bounce and Medium Speed</span></li></ul>', 'Ball.png', 'Ball1.png', 'Ball2.png', 99, 'In Stock', '2022-01-17 14:04:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(14, 13, 'Headbands', '2022-01-17 12:31:34', NULL),
(15, 13, 'Racquets', '2022-01-17 12:34:32', NULL),
(16, 13, 'Shuttlecocks', '2022-01-17 12:34:41', NULL),
(17, 13, 'Grips', '2022-01-17 12:34:53', NULL),
(18, 13, 'Grip Powders', '2022-01-17 12:35:08', NULL),
(19, 13, 'Wristbands', '2022-01-17 12:35:19', NULL),
(20, 13, 'Nets', '2022-01-17 12:35:27', NULL),
(21, 13, 'Shoes', '2022-01-17 12:35:42', NULL),
(22, 14, 'Airpumps', '2022-01-17 12:37:21', NULL),
(23, 14, 'Arm Sleeves', '2022-01-17 12:37:31', NULL),
(24, 14, 'Ballbags', '2022-01-17 12:37:39', NULL),
(25, 14, 'Balls', '2022-01-17 12:38:08', NULL),
(26, 14, 'Elbowguards', '2022-01-17 12:38:22', NULL),
(27, 14, 'Nets', '2022-01-17 12:38:29', NULL),
(28, 14, 'Rebounders', '2022-01-17 12:38:38', NULL),
(29, 14, 'Wristbands', '2022-01-17 12:38:48', NULL),
(30, 15, 'Bails', '2022-01-17 12:39:20', NULL),
(31, 15, 'Balls', '2022-01-17 12:39:28', NULL),
(32, 15, 'Bats', '2022-01-17 12:39:32', NULL),
(33, 15, 'Gloves', '2022-01-17 12:39:43', NULL),
(34, 15, 'Guards', '2022-01-17 12:39:51', NULL),
(35, 15, 'Helmets', '2022-01-17 12:40:03', NULL),
(36, 15, 'Pads', '2022-01-17 12:40:09', NULL),
(37, 15, 'Stumps', '2022-01-17 12:40:18', NULL),
(38, 16, 'Arm Sleeves', '2022-01-17 12:41:05', NULL),
(39, 16, 'Balls', '2022-01-17 12:41:12', NULL),
(40, 16, 'Bottles', '2022-01-17 12:41:20', NULL),
(41, 16, 'Caps', '2022-01-17 12:41:25', NULL),
(42, 16, 'Gloves', '2022-01-17 12:41:34', NULL),
(43, 16, 'Nets', '2022-01-17 12:41:41', NULL),
(44, 16, 'Shinguards', '2022-01-17 12:41:51', NULL),
(45, 16, 'Shoes', '2022-01-17 12:41:59', NULL),
(46, 17, 'Wristbands', '2022-01-17 12:42:42', NULL),
(47, 17, 'Racquets', '2022-01-17 12:42:51', NULL),
(48, 17, 'Headbands', '2022-01-17 12:43:01', NULL),
(49, 17, 'Shoes', '2022-01-17 12:43:09', NULL),
(50, 17, 'Balls', '2022-01-17 12:43:17', NULL),
(51, 17, 'Kit Bags', '2022-01-17 12:43:27', NULL),
(52, 17, 'Nets', '2022-01-17 12:43:35', NULL),
(53, 17, 'Caps', '2022-01-17 12:43:44', NULL),
(54, 18, 'Airpumps', '2022-01-17 12:44:51', NULL),
(55, 18, 'Balls', '2022-01-17 12:44:59', NULL),
(56, 18, 'Finger Sleeves', '2022-01-17 12:45:10', NULL),
(57, 18, 'Forearm Sleeves', '2022-01-17 12:45:21', NULL),
(58, 18, 'Kneepads', '2022-01-17 12:45:27', NULL),
(59, 18, 'Nets', '2022-01-17 12:45:35', NULL),
(60, 18, 'Poles', '2022-01-17 12:45:41', NULL),
(61, 18, 'Shoes', '2022-01-17 12:45:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(24, 'likhith@gmail.com', 0x3a3a3100000000000000000000000000, '2022-01-17 14:43:02', NULL, 0),
(25, 'likhith@gmail.com', 0x3a3a3100000000000000000000000000, '2022-01-17 14:43:25', NULL, 1),
(26, 'likhith@gmail.com', 0x3a3a3100000000000000000000000000, '2022-01-18 16:33:49', '18-01-2022 10:06:29 PM', 1),
(27, 'likhith01@gmail.com', 0x3a3a3100000000000000000000000000, '2022-02-09 06:20:21', NULL, 0),
(28, 'likhith01@gmail.com', 0x3a3a3100000000000000000000000000, '2022-02-09 06:22:03', NULL, 0),
(29, 'likhith@gmail.com', 0x3a3a3100000000000000000000000000, '2022-02-09 06:22:52', NULL, 0),
(30, 'liki01@gmail.com', 0x3a3a3100000000000000000000000000, '2022-02-09 06:27:12', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shippingAddress` longtext DEFAULT NULL,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `billingAddress` longtext DEFAULT NULL,
  `billingState` varchar(255) DEFAULT NULL,
  `billingCity` varchar(255) DEFAULT NULL,
  `billingPincode` int(11) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `regDate`, `updationDate`) VALUES
(4, 'M Likhith Varma', 'likhith@gmail.com', 9898989898, '6426ea19f5eafd9cc1de7a102e84ed4d', '1', '11', '111', 1111, '1', '11', '111', 1111, '2022-01-17 14:42:42', NULL),
(5, 'Likhith', 'liki01@gmail.com', 9, '202cb962ac59075b964b07152d234b70', '1', '1', '1', 1, '1', '1', '1', 1, '2022-02-09 06:27:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `userId`, `productId`, `postingDate`) VALUES
(2, 4, 31, '2022-01-17 14:50:22'),
(3, 4, 31, '2022-01-18 16:35:20'),
(4, 5, 34, '2022-02-09 06:27:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productreviews`
--
ALTER TABLE `productreviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `productreviews`
--
ALTER TABLE `productreviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
