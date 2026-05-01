-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 27, 2026 at 07:16 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id18229198_happy_happenings`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `image`) VALUES
(1, 'Florist', 'Florist_.jpg'),
(2, 'Caterers', 'Caterers_.jpg'),
(3, 'Decorator ', 'Decorator _.jpg'),
(4, 'Dj', 'Dj_.jpg'),
(5, 'Rings', 'Rings_.jpg'),
(6, 'Dresses', 'Dresses_.jpg'),
(7, 'ironmen', 'ironmen_.');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `vendorId` int(11) NOT NULL,
  `categoryName` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `vendorId`, `categoryName`, `name`, `price`, `description`, `image`, `created_date`) VALUES
(3, 6, 'Florist', 'Marigold ', 20, 'Yellow Or Orange ', 'Marigold _9.jpg', '2025-03-05 12:16:14'),
(4, 6, 'Florist', 'Hibiscus ', 20, 'Red ', 'Hibiscus _9.jpg', '2025-03-05 12:16:14'),
(5, 6, 'Florist', 'Pansy', 50, 'Purple Or Blue ', 'Pansy_9.jpg', '2025-03-05 12:16:14'),
(6, 6, 'Florist', 'Lotus ', 50, 'Pink Or White ', 'Lotus _9.jpg', '2025-03-05 12:16:14'),
(7, 6, 'Florist', 'Dahlia', 100, 'Pink Or Purple ', 'Dahlia_9.jpg', '2025-03-05 12:16:14'),
(8, 6, 'Florist', 'Bougainville', 100, 'Pink ', 'Bougainville_9.jpg', '2025-03-05 12:16:14'),
(9, 6, 'Florist', 'Frangipani ', 50, 'White and Yellow ', 'Frangipani _9.jpg', '2025-03-05 12:16:14'),
(10, 6, 'Florist', 'Jasmine ', 20, 'White ', 'Jasmine _9.jpg', '2025-03-05 12:16:14'),
(11, 6, 'Florist', 'Zinnia', 80, 'Blue Or Peach ', 'Zinnia_9.jpg', '2025-03-05 12:16:14'),
(12, 6, 'Florist', 'Rose ', 40, 'Peach ', 'Rose _9.jpg', '2025-03-05 12:16:14'),
(13, 6, 'Florist', 'Lantana ', 70, 'Pink and Yellow ', 'Lantana _9.jpg', '2025-03-05 12:16:14'),
(14, 6, 'Florist', 'Kalanchoe ', 60, 'Pink', 'Kalanchoe _9.jpg', '2025-03-05 12:16:14'),
(15, 6, 'Florist', 'Crossandra ', 10, 'Peachy Orange ', 'Crossandra _9.jpg', '2025-03-05 12:16:14'),
(16, 6, 'Florist', 'Tiobouchina ', 30, 'Purple ', 'Tiobouchina _9.jpg', '2025-03-05 12:16:14'),
(17, 6, 'Florist', 'Ixora Coccinea ', 90, 'Red ', 'Ixora Coccinea _9.jpg', '2025-03-05 12:16:14'),
(18, 6, 'Florist', 'Snapdragon ', 170, 'Peach Pink ', 'Snapdragon _9.jpg', '2025-03-05 12:16:14'),
(19, 6, 'Florist', 'Clitoria ternatea ', 70, 'Purple Blue ', 'Clitoria ternatea _9.jpg', '2025-03-05 12:16:14'),
(20, 6, 'Florist', 'Phlox ', 20, 'Blue ', 'Phlox _9.jpg', '2025-03-05 12:16:14'),
(21, 6, 'Florist', 'Blue Star ', 30, 'Blue ', 'Blue Star _9.jpg', '2025-03-05 12:16:14'),
(22, 6, 'Florist', 'Grape hyacinth ', 120, 'Purple ', 'Grape hyacinth _9.jpg', '2025-03-05 12:16:14'),
(23, 6, 'Caterers', 'Iced Tea ', 120, 'Beverage ', 'Iced Tea _10.jpg', '2025-03-05 12:16:14'),
(24, 6, 'Caterers', 'Gola ', 40, 'Beverage ', 'Gola _10.jpg', '2025-03-05 12:16:14'),
(25, 6, 'Caterers', 'Aam Panna ', 70, 'Beverage ', 'Aam Panna _10.jpg', '2025-03-05 12:16:14'),
(26, 6, 'Caterers', 'Cold Coffee ', 130, 'Beverage ', 'Cold Coffee _10.jpg', '2025-03-05 12:16:14'),
(27, 6, 'Caterers', 'Lassi ', 100, 'Beverage ', 'Lassi _10.jpg', '2025-03-05 12:16:14'),
(28, 6, 'Caterers', 'Sarbat ', 100, 'Beverage ', 'Sarbat _10.jpg', '2025-03-05 12:16:14'),
(29, 6, 'Caterers', 'Mixed Fruit Juice ', 110, 'Beverage ', 'Mixed Fruit Juice _10.jpg', '2025-03-05 12:16:14'),
(30, 6, 'Caterers', 'Thandai ', 60, 'Beverage ', 'Thandai _10.jpg', '2025-03-05 12:16:14'),
(31, 6, 'Caterers', 'Nimbu Paani ', 50, 'Beverage ', 'Nimbu Paani _10.jpg', '2025-03-05 12:16:14'),
(32, 6, 'Caterers', 'Watermelon Juice ', 110, 'Beverage ', 'Watermelon Juice _10.jpg', '2025-03-05 12:16:14'),
(33, 6, 'Dresser', 'Lehenga Choli', 10000, 'Bride ', 'Lehenga _12.jpg', '2025-03-05 12:16:14'),
(34, 6, 'Dresser', 'Lehenga Choli 1', 20000, 'Bride', 'Lehenga Choli_12.jpg', '2025-03-05 12:16:14'),
(35, 6, 'Dresser', 'Lenhenga Choli 2 ', 17000, 'Bride ', 'Lenhenga Choli 2 _12.jpg', '2025-03-05 12:16:14'),
(36, 6, 'Dresser', 'Lehenga Choli 3 ', 40000, 'Bride ', 'Lehenga Choli 3 _12.jpg', '2025-03-05 12:16:14'),
(37, 6, 'Dresser', 'Lehenga Choli 4', 30000, 'Bride ', 'Lehenga Choli 4_12.jpg', '2025-03-05 12:16:14'),
(38, 6, 'Dresser', 'Lehenga Choli 5', 30000, 'Bride ', 'Lehenga Choli 5_12.jpg', '2025-03-05 12:16:14'),
(39, 6, 'Dresser', 'Lehenga Choli 6', 50000, 'Bride ', 'Lehenga Choli 6_12.jpg', '2025-03-05 12:16:14'),
(40, 6, 'Dresser', 'Lehenga Choli 7', 50000, 'Bride ', 'Lehenga Choli 7_12.jpg', '2025-03-05 12:16:14'),
(41, 6, 'Dresser', 'Lehenga Choli 8', 80000, 'Bride ', 'Lehenga Choli 8_12.jpg', '2025-03-05 12:16:14'),
(42, 6, 'Dresser', 'Lehenga Choli 9', 30000, 'Bride ', 'Lehenga Choli 9_12.jpg', '2025-03-05 12:16:14'),
(43, 6, 'Dresser', 'Lehenga Choli 10', 70000, 'Bride ', 'Lehenga Choli 10_12.jpg', '2025-03-05 12:16:14'),
(44, 6, 'Dresser', 'Lehenga Choli 11', 80000, 'Bride ', 'Lehenga Choli 11_12.jpg', '2025-03-05 12:16:14'),
(45, 6, 'Dresser', 'Lehenga Choli 12', 60000, 'Bride ', 'Lehenga Choli 12_12.jpg', '2025-03-05 12:16:14'),
(46, 6, 'Dresser', 'Lehenga Choli 13', 60000, 'Bride ', 'Lehenga Choli 13_12.jpg', '2025-03-05 12:16:14'),
(47, 6, 'Dresser', 'Lehenga Choli 14', 40000, 'Bride ', 'Lehenga Choli 14_12.jpg', '2025-03-05 12:16:14'),
(48, 6, 'Dresser', 'Lehenga Choli 15', 70000, 'Bride ', 'Lehenga Choli 15_12.jpg', '2025-03-05 12:16:14'),
(49, 6, 'Dresser', 'Lehenga Choli 16', 90000, 'Bride ', 'Lehenga Choli 16_12.jpg', '2025-03-05 12:16:14'),
(50, 6, 'Dresser', 'Lehenga Choli 17', 80000, 'Bride ', 'Lehenga Choli 17_12.jpg', '2025-03-05 12:16:14'),
(51, 6, 'Dresser', 'Lehenga Choli 18', 70000, 'Bride ', 'Lehenga Choli 18_12.jpg', '2025-03-05 12:16:14'),
(52, 6, 'Dresser', 'Lehenga Choli 19 ', 80000, 'Bride ', 'Lehenga Choli 19 _12.jpg', '2025-03-05 12:16:14'),
(53, 6, 'Male Dresser', '1', 4000, 'Groom ', '1_13.jpg', '2025-03-05 12:16:14'),
(54, 6, 'Male Dresser', '2', 3000, 'Groom', '2_13.jpg', '2025-03-05 12:16:14'),
(55, 6, 'Male Dresser', '3', 7000, 'Groom', '4_13.jpg', '2025-03-05 12:16:14'),
(56, 6, 'Male Dresser', '4', 5000, 'Groom', '4_13.jpg', '2025-03-05 12:16:14'),
(57, 6, 'Male Dresser', '5', 4000, 'Groom ', '5_13.jpg', '2025-03-05 12:16:14'),
(58, 6, 'Male Dresser', '6', 4000, 'Groom', '6_13.jpg', '2025-03-05 12:16:14'),
(59, 6, 'Male Dresser', '7', 2000, 'Groom', '7_13.jpg', '2025-03-05 12:16:14'),
(60, 6, 'Male Dresser', '8', 7000, 'Groom', '8_13.jpg', '2025-03-05 12:16:14'),
(61, 6, 'Male Dresser', '9', 6000, 'Groom', '9_13.jpg', '2025-03-05 12:16:14'),
(62, 6, 'Male Dresser', '10', 5000, 'Groom ', '10_13.jpg', '2025-03-05 12:16:14'),
(63, 6, 'Male Dresser', '11', 5000, 'Groom ', '11_13.jpg', '2025-03-05 12:16:14'),
(64, 6, 'Male Dresser', '12', 3000, 'Groom', '12_13.jpg', '2025-03-05 12:16:14'),
(65, 6, 'Male Dresser', '13', 5000, 'Groom ', '13_13.jpg', '2025-03-05 12:16:14'),
(66, 6, 'Male Dresser', '14', 5000, 'Groom ', '14_13.jpg', '2025-03-05 12:16:14'),
(67, 6, 'Male Dresser', '15', 8000, 'Groom', '15_13.jpg', '2025-03-05 12:16:14'),
(68, 6, 'Male Dresser', '16', 8000, 'Groom \n', '16_13.jpg', '2025-03-05 12:16:14'),
(69, 6, 'Male Dresser', '17', 7500, 'Groom ', '17_13.jpg', '2025-03-05 12:16:14'),
(70, 6, 'Male Dresser', '18', 9000, 'Groom ', '18_13.jpg', '2025-03-05 12:16:14'),
(71, 6, 'Male Dresser', '19', 4000, 'Groom ', '19_13.jpg', '2025-03-05 12:16:14'),
(72, 6, 'Male Dresser', '20 ', 8900, 'Groom', '20 _13.jpg', '2025-03-05 12:16:14'),
(73, 6, 'Caterers', 'Pani Puri ', 30, 'Indian Chat ', 'Pani Puri _8.jpg', '2025-03-05 12:16:14'),
(74, 6, 'Caterers', 'Aloo Tikki ', 70, 'Indian Chat ', 'Also Tikki _8.jpg', '2025-03-05 12:16:14'),
(75, 6, 'Caterers', 'Dahi Bhalla ', 60, 'Indian Chat ', 'Dahi Bhalla _8.jpg', '2025-03-05 12:16:14'),
(76, 6, 'Caterers', 'Mini Samosa ', 20, 'Indian Chat ', 'Mini Samosa _8.jpg', '2025-03-05 12:16:14'),
(77, 6, 'Caterers', 'Cocktail Kachori ', 60, 'Indian Chat ', 'Cocktail Kachori _8.jpg', '2025-03-05 12:16:14'),
(78, 6, 'Caterers', 'Dhokla', 5, 'Indian Chat ', 'Dhokla_8.jpg', '2025-03-05 12:16:14'),
(79, 6, 'Caterers', 'Bhel Puri ', 40, 'Indian Chat ', 'Bhel Puri _8.jpg', '2025-03-05 12:16:14'),
(80, 6, 'Caterers', 'Dahi Papdi ', 50, 'Indian Chat ', 'Dahi Papdi _8.jpg', '2025-03-05 12:16:14'),
(81, 6, 'Caterers', 'Samosa Chat ', 60, 'Indian Chat ', 'Samosa Chat _8.jpg', '2025-03-05 12:16:14'),
(82, 6, 'Caterers', 'Tokri Chat ', 80, 'Indian Chat ', 'Tokri Chat _8.jpg', '2025-03-05 12:16:14'),
(83, 6, 'Caterer', 'Sprouted Moong Salad ', 160, 'Salad ', 'Sprouted Moong Salad _15.jpg', '2025-03-05 12:16:14'),
(84, 6, 'Caterer', 'Apple Cucumber Salad ', 160, 'Salad ', 'Apple Cucumber Salad _15.jpg', '2025-03-05 12:16:14'),
(85, 6, 'Caterer', 'Kachumber Salad ', 130, 'Salad ', 'Kachumber Salad _15.jpg', '2025-03-05 12:16:14'),
(86, 6, 'Caterer', 'Sprouted Chana Salad ', 150, 'Salad ', 'Sprouted Chana Salad _15.jpg', '2025-03-05 12:16:14'),
(87, 6, 'Caterer', 'Beet Root and Garlic Salad ', 170, 'Salad ', 'Beet Root and Farlic Salad _15.jpg', '2025-03-05 12:16:14'),
(88, 6, 'Caterer', 'Pineapple Salad ', 180, 'Salad ', 'Pineapple Salad _15.jpg', '2025-03-05 12:16:14'),
(89, 6, 'Caterer', 'Vegetable Salad With Lemony Apple Dressing ', 190, 'Salad ', 'Vegetable Salad With Lemony Apple Dressing _15.jpg', '2025-03-05 12:16:14'),
(90, 6, 'Caterer', 'Fruit Salad ', 170, 'Salad ', 'Fruit Salad _15.jpg', '2025-03-05 12:16:14'),
(91, 6, 'Caterer', 'Beans Salad ', 140, 'Salad ', 'Beans Salad _15.jpg', '2025-03-05 12:16:14'),
(92, 6, 'Caterer', 'Sprouts Salad with Veggies ', 170, 'Salad ', 'Sprouts Salad with Veggies _15.jpg', '2025-03-05 12:16:14'),
(93, 6, 'Caterer', 'Cream Of Tomato ', 110, 'Soup ', 'Cream Of Tomato _16.jpg', '2025-03-05 12:16:14'),
(94, 6, 'Caterer', 'Mixed Vegetable Clear ', 130, 'Soup', 'Mixed Vegetable Clear _16.jpg', '2025-03-05 12:16:14'),
(95, 6, 'Caterer', 'Drumstick', 160, 'Soup ', 'Drumstick_16.jpg', '2025-03-05 12:16:14'),
(96, 6, 'Caterer', 'Pepper Mushroom ', 170, 'Soup ', 'Pepper Mushroom _16.jpg', '2025-03-05 12:16:14'),
(97, 6, 'Caterer', 'Herbal ', 150, 'Soup ', 'Herbal _16.jpg', '2025-03-05 12:16:14'),
(98, 6, 'Caterer', 'Sweet Corn ', 140, 'Soup ', 'Sweet Corn _16.jpg', '2025-03-05 12:16:14'),
(99, 6, 'Caterer', 'Lemon Coriander ', 150, 'Soup ', 'Lemon Coriander _16.jpg', '2025-03-05 12:16:14'),
(100, 6, 'Caterer', 'Manchow ', 170, 'Soup ', 'Manchow _16.jpg', '2025-03-05 12:16:14'),
(101, 6, 'Caterer', 'Minestrone ', 160, 'Soup ', 'Minestrone _16.jpg', '2025-03-05 12:16:14'),
(102, 6, 'Caterer', 'Hot n Sour ', 170, 'Soup ', 'Hot n Sour _16.jpg', '2025-03-05 12:16:14'),
(103, 6, 'Caterer', 'Veg Kebab ', 120, 'Snacks ', 'Veg Kebab _16.jpg', '2025-03-05 12:16:14'),
(104, 6, 'Caterer', 'Veg Manchurian ', 150, 'Snacks', 'Veg Manchurian _16.jpg', '2025-03-05 12:16:14'),
(105, 6, 'Caterer', 'Idli Manchurian ', 140, 'Snacks', 'Idli Manchurian _16.jpg', '2025-03-05 12:16:14'),
(106, 6, 'Caterer', 'Chilly Potato ', 150, 'Snacks', 'Chilly Potato _16.jpg', '2025-03-05 12:16:14'),
(107, 6, 'Caterer', 'Honey Potato ', 170, 'Snacks', 'Honey Potato _16.jpg', '2025-03-05 12:16:14'),
(108, 6, 'Caterer', 'Paneer Tikka ', 160, 'Snacks', 'Paneer Tikka _16.jpg', '2025-03-05 12:16:14'),
(109, 6, 'Caterer', 'Mushroom Tikka ', 180, 'Snacks', 'Mushroom Tikka _16.jpg', '2025-03-05 12:16:14'),
(110, 6, 'Caterer', 'Schezwan Noodles ', 180, 'Snacks', 'Schezwan Noodles _16.jpg', '2025-03-05 12:16:14'),
(111, 6, 'Caterer', 'Garlic Mushroom Fried Rice ', 180, 'Snacks', 'Garlic Mushroom Fried Rice _16.jpg', '2025-03-05 12:16:14'),
(112, 6, 'Caterer', 'Spring Rolls ', 160, 'Snacks ', 'Spring Rolls _16.jpg', '2025-03-05 12:16:14'),
(113, 6, 'Caterer', 'Pickle ', 20, 'Accompaniments ', 'Pickle _16.jpg', '2025-03-05 12:16:14'),
(114, 6, 'Caterer', 'Papad ', 30, 'Accompaniments', 'Papad _16.jpg', '2025-03-05 12:16:14'),
(115, 6, 'Caterer', 'Schezwan Chutney ', 40, 'Accompaniments', 'Schezwan Chutney _16.jpg', '2025-03-05 12:16:14'),
(116, 6, 'Caterer', 'Imli Chutney ', 30, 'Accompaniments', 'Imli Chutney _16.jpg', '2025-03-05 12:16:14'),
(117, 6, 'Caterer', 'Coriander Chutney ', 40, 'Accompaniments', 'Coriander Chutney _16.jpg', '2025-03-05 12:16:14'),
(118, 6, 'Caterer', 'Mint Chutney ', 20, 'Accompaniments', 'Mint Chutney _16.jpg', '2025-03-05 12:16:14'),
(119, 6, 'User ', 'Beans Salad ', 120, 'Salad ', 'Beans Salad _10.jpg', '2025-03-05 12:16:14'),
(120, 6, 'User ', 'Fruit Salad ', 160, 'Salad ', 'Fruit Salad _10.jpg', '2025-03-05 12:16:14'),
(121, 6, 'User ', 'Vegetable Salad with Lemony Apple Dressing ', 180, 'Salad ', 'Vegetable Salad with Lemony Apple Dressing _10.jpg', '2025-03-05 12:16:14'),
(122, 6, 'User ', 'Pineapple Salad ', 170, 'Salad ', 'Pineapple Salad _10.jpg', '2025-03-05 12:16:14'),
(123, 6, 'User ', 'Beet Root and Garlic Salad ', 160, 'Salad ', 'Beet Root and Garlic Salad _10.jpg', '2025-03-05 12:16:14'),
(124, 6, 'User ', 'Sprouted Chana Salad ', 140, 'Salad ', 'Sprouted Chana Salad _10.jpg', '2025-03-05 12:16:14'),
(125, 6, 'User ', 'Kachumber Salad ', 110, 'Salad ', 'Kachumber Salad _10.jpg', '2025-03-05 12:16:14'),
(126, 6, 'User ', 'Apple Cucumber Salad ', 140, 'Salad ', 'Apple Cucumber Salad _10.jpg', '2025-03-05 12:16:14'),
(127, 6, 'User ', 'Sprouted Moong Salad ', 100, 'Salad ', 'Sprouted Moong Salad _10.jpg', '2025-03-05 12:16:14'),
(128, 6, 'User ', 'Sprouted Salad with Veggies ', 130, 'Salad ', 'Sprouted Salad with Veggies _10.jpg', '2025-03-05 12:16:14'),
(129, 6, 'Caterers', 'Beans Salad ', 110, 'Salad ', 'Beans Salad _6.jpg', '2022-02-15 06:54:48'),
(130, 6, 'Caterers', 'Fruit Salad ', 140, 'Salad ', 'Fruit Salad _6.jpg', '2022-02-15 06:57:55'),
(131, 6, 'Caterers', 'Vegetable Salad with Lemony Apple Dressing ', 170, 'Salad ', 'Vegetable Salad with Lemony Apple Dressing _6.jpg', '2022-02-15 06:58:43'),
(132, 6, 'Caterers', 'Pineapple Salad ', 150, 'Salad ', 'Pineapple Salad _6.jpg', '2022-02-15 06:59:25'),
(133, 6, 'Caterers', 'Beet Root and Garlic Salad ', 160, 'Salad ', 'Beet Root and Garlic Salad _6.jpg', '2022-02-15 07:00:00'),
(134, 6, 'Caterers', 'Sprouted Chana Salad ', 120, 'Salad ', 'Sprouted Chana Salad _6.jpg', '2022-02-15 07:00:27'),
(135, 6, 'Caterers', 'Kachumber Salad ', 90, 'Salad ', 'Kachumber Salad _6.jpg', '2022-02-15 07:01:11'),
(136, 6, 'Caterers', 'Apple Cucumber Salad ', 160, 'Salad ', 'Apple Cucumber Salad _6.jpg', '2022-02-15 07:01:33'),
(137, 6, 'Caterers', 'Sprouted Moong Salad ', 100, 'Salad ', 'Sprouted Moong Salad _6.jpg', '2022-02-15 07:02:07'),
(138, 6, 'Caterers', 'Sprouts Salad with Veggies ', 120, 'Salad ', 'Sprouts Salad with Veggies _6.jpg', '2022-02-15 07:02:35'),
(139, 6, 'Caterers', 'Minestrone ', 130, 'Soup ', 'Minestrone _10.jpg', '2025-03-05 12:16:14'),
(140, 6, 'Caterers', 'Manchow ', 160, 'Soup ', 'Manchow _10.jpg', '2025-03-05 12:16:14'),
(141, 6, 'Caterers', 'Lemon Coriander ', 150, 'Soup ', 'Lemon Coriander _10.jpg', '2025-03-05 12:16:14'),
(142, 6, 'Caterers', 'Sweet Corn ', 130, 'Soup ', 'Sweet Corn _10.jpg', '2025-03-05 12:16:14'),
(143, 6, 'Caterers', 'Herbal ', 150, 'Soup ', 'Herbal _10.jpg', '2025-03-05 12:16:14'),
(144, 6, 'Caterers', 'Pepper Mushroom ', 170, 'Soup ', 'Pepper Mushroom _10.jpg', '2025-03-05 12:16:14'),
(145, 6, 'Caterers', 'Drumstick ', 130, 'Soup ', 'Drumstick _10.jpg', '2025-03-05 12:16:14'),
(146, 6, 'Caterers', 'Mixed Vegetable Clear ', 150, 'Soup ', 'Mixed Vegetable Clear _10.jpg', '2025-03-05 12:16:14'),
(147, 6, 'Caterers', 'Cream Of Tomato', 120, 'Soup ', 'Cream Of Tomato_10.jpg', '2025-03-05 12:16:14'),
(148, 6, 'Caterers', 'Hot n Sour ', 140, 'Soup ', 'Hot n Sour _10.jpg', '2025-03-05 12:16:14'),
(149, 6, 'Caterers', 'Garlic Mushroom Fried Rice ', 170, 'Snacks ', 'Garlic Mushroom Fried Rice _10.jpg', '2025-03-05 12:16:14'),
(150, 6, 'Caterers', 'Schezwan Noodles ', 140, 'Snacks ', 'Schezwan Noodles _10.jpg', '2025-03-05 12:16:14'),
(151, 6, 'Caterers', 'Paneer Tikka ', 130, 'Snacks', 'Paneer Tikka _10.jpg', '2025-03-05 12:16:14'),
(152, 6, 'Caterers', 'Mushroom Tikka ', 150, 'Snacks', 'Mushroom Tikka _10.jpg', '2025-03-05 12:16:14'),
(153, 6, 'Caterers', 'Honey Potato ', 120, 'Snacks', 'Honey Potato _10.jpg', '2025-03-05 12:16:14'),
(154, 6, 'Caterers', 'Chilly Potato ', 130, 'Snacks', 'Chilly Potato _10.jpg', '2025-03-05 12:16:14'),
(155, 6, 'Caterers', 'Idli Manchurian', 120, 'Snacks', 'Idli Manchurian_10.jpg', '2025-03-05 12:16:14'),
(156, 6, 'Caterers', 'Veg Manchurian ', 160, 'Snacks', 'Veg Manchurian _10.jpg', '2025-03-05 12:16:14'),
(157, 6, 'Caterers', 'Veg Kebab ', 130, 'Snacks', 'Veg Kebab _10.jpg', '2025-03-05 12:16:14'),
(158, 6, 'Caterers', 'Spring Roll ', 160, 'Snacks', 'Spring Roll _10.jpg', '2025-03-05 12:16:14'),
(159, 6, 'Caterers', 'Mint Chutney ', 20, 'Accompaniments ', 'Mint Chutney _10.jpg', '2025-03-05 12:16:14'),
(160, 6, 'Caterers', 'Coriander Chutney ', 30, 'Accompaniments', 'Coriander Chutney _10.jpg', '2025-03-05 12:16:14'),
(161, 6, 'Caterers', 'Imli Chutney ', 20, 'Accompaniments', 'Imli Chutney _10.jpg', '2025-03-05 12:16:14'),
(162, 6, 'Caterers', 'Schezwan Chutney ', 50, 'Accompaniments', 'Schezwan Chutney _10.jpg', '2025-03-05 12:16:14'),
(163, 6, 'Caterers', 'Papad ', 30, 'Accompaniments', 'Papad _10.jpg', '2025-03-05 12:16:14'),
(164, 6, 'Caterers', 'Pickle ', 10, 'Accompaniments', 'Pickle _10.jpg', '2025-03-05 12:16:14'),
(165, 6, 'Caterers', 'Veg Jalfrezi ', 130, 'Dry Veggies ', 'Veg Jalfrezi _8.jpg', '2025-03-05 12:16:14'),
(166, 6, 'Caterers', 'Baby Corn Capsicum ', 180, 'Dry Veggies', 'Baby Corn Capsicum _8.jpg', '2025-03-05 12:16:14'),
(167, 6, 'Caterers', 'Mixed Veg ', 170, 'Dry Veggies', 'Mixed Veg _8.jpg', '2025-03-05 12:16:14'),
(168, 6, 'Caterers', 'Paneer Makhani ', 180, 'Dry Veggies', 'Paneer Makhani _8.jpeg', '2025-03-05 12:16:14'),
(169, 6, 'Caterers', 'Paneer Methi Malai Mattar ', 180, 'Dry Veggies', 'Paneer Methi Malai Mattar _8.jpg', '2025-03-05 12:16:14'),
(170, 6, 'Caterers', 'Veg Makhanwala ', 170, 'Dry Veggies', 'Veg Makhanwala _8.jpg', '2025-03-05 12:16:14'),
(171, 6, 'Caterers', 'Stuffed Bhindi ', 160, 'Dry Veggies', 'Stuffed Bhindi _8.jpg', '2025-03-05 12:16:14'),
(172, 6, 'Caterers', 'Paneer Methi Malai ', 170, 'Dry Veggies', 'Paneer Methi Malai _8.jpg', '2025-03-05 12:16:14'),
(173, 6, 'Caterers', 'Navratan Korma ', 170, 'Dry Veggies', 'Navratan Korma _8.jpg', '2025-03-05 12:16:14'),
(174, 6, 'Caterers', 'Paneer Capsicum Masala ', 150, 'Dry Veggies', 'Paneer Capsicum Masala _8.jpg', '2025-03-05 12:16:14'),
(175, 6, 'Caterers', 'Daal Makhani', 170, 'Gravies/Curries ', 'Daal Makhani_8.jpg', '2025-03-05 12:16:14'),
(176, 6, 'Caterers', 'Bhindi Do Pyaza', 160, 'Dry Veggies ', 'Bhindi Do Pyaza_8.jpg', '2025-03-05 12:16:14'),
(177, 6, 'Caterers', 'Mixed Vegetable Makhani ', 190, 'Gravies/Curries', 'Mixed Vegetable Makhani _8.jpg', '2025-03-05 12:16:14'),
(178, 6, 'Caterers', 'Amritsari Paneer Tikka', 190, 'Gravies/Curries', 'Amritsari Paneer Tikka_8.jpg', '2025-03-05 12:16:14'),
(179, 6, 'Caterers', 'Kashmiri Dum Aloo ', 180, 'Gravies/Curries', 'Kashmiri Dum Aloo _8.jpg', '2025-03-05 12:16:14'),
(180, 6, 'Caterers', 'Mushroom Matar ', 210, 'Gravies/Curries', 'Mushroom Matar _8.jpg', '2025-03-05 12:16:14'),
(181, 6, 'Caterers', 'Sarson Ka Saag ', 190, 'Gravies/Curries', 'Sarson Ka Saag _8.jpg', '2025-03-05 12:16:14'),
(182, 6, 'Caterers', 'Makai Masala ', 170, 'Gravies/Curries', 'Makai Masala _8.jpg', '2025-03-05 12:16:14'),
(183, 6, 'Caterers', 'Paneer Lababdar ', 180, 'Gravies/Curries', 'Paneer Lababdar _8.jpg', '2025-03-05 12:16:14'),
(184, 6, 'Caterers', 'Malai Kofta ', 180, 'Gravies/Curries', 'Malai Kofta _8.jpg', '2025-03-05 12:16:14'),
(185, 6, 'Caterers', 'Puri ', 10, 'Flat Bread ', 'Puri _8.jpg', '2025-03-05 12:16:14'),
(186, 6, 'Caterers', 'Green Puri ', 10, 'Flat Bread ', 'Green Puri _8.jpg', '2025-03-05 12:16:14'),
(187, 6, 'Caterers', 'Naan ', 40, 'Flat Bread ', 'Naan _8.jpg', '2025-03-05 12:16:14'),
(188, 6, 'Caterers', 'Butter Naam ', 50, 'Flat Bread ', 'Butter Naam _8.jpg', '2025-03-05 12:16:14'),
(189, 6, 'Caterers', 'Missi Roti ', 40, 'Flat Bread ', 'Missi Roti _8.jpg', '2025-03-05 12:16:14'),
(190, 6, 'Caterers', 'Tawa Roti or Chapati ', 30, 'Flat Bread ', 'Tawa Roti or Chapati _8.jpg', '2025-03-05 12:16:14'),
(191, 6, 'Caterers', 'Phulka ', 20, 'Flat Bread ', 'Phulka _8.jpg', '2025-03-05 12:16:14'),
(192, 6, 'Caterers', 'Bajra Rotlo ', 40, 'Flat Bread ', 'Bajra Rotlo _8.jpg', '2025-03-05 12:16:14'),
(193, 6, 'Caterers', 'Laccha Paratha ', 40, 'Flat Bread ', 'Laccha Paratha _8.jpg', '2025-03-05 12:16:14'),
(194, 6, 'Caterers', 'Paratha ', 30, 'Flat Bread ', 'Paratha _8.jpg', '2025-03-05 12:16:14'),
(195, 6, 'Caterers', 'Fruit Raita ', 140, 'Raita ', 'Fruit Raita _6.jpg', '2022-02-15 09:10:08'),
(196, 6, 'Caterers', 'Green Chilli Raita ', 120, 'Raita', 'Green Chilli Raita _6.jpg', '2022-02-15 09:10:37'),
(197, 6, 'Caterers', 'Cabbage Raita ', 130, 'Raita', 'Cabbage Raita _6.jpeg', '2022-02-15 09:11:07'),
(198, 6, 'Caterers', 'Pomegranate Mint Raita ', 170, 'Raita', 'Pomegranate Mint Raita _6.jpg', '2022-02-15 09:11:38'),
(199, 6, 'Caterers', 'Onion Mint Raita ', 110, 'Raita', 'Onion Mint Raita _6.jpg', '2022-02-15 09:12:48'),
(200, 6, 'Caterers', 'Mint Raita ', 100, 'Raita', 'Mint Raita _6.jpg', '2022-02-15 09:13:09'),
(201, 6, 'Caterers', 'Cucumber Raita ', 130, 'Raita', 'Cucumber Raita _6.jpg', '2022-02-15 09:13:35'),
(202, 6, 'Caterers', 'Mixed Vegetable Raita ', 150, 'Raita', 'Mixed Vegetable Raita _6.jpg', '2022-02-15 09:14:03'),
(203, 6, 'Caterers', 'Boondi Raita ', 160, 'Raita', 'Boondi Raita _6.jpg', '2022-02-15 09:14:24'),
(204, 6, 'Caterers', 'Pineapple Raita ', 180, 'Raita', 'Pineapple Raita _6.jpg', '2022-02-15 09:14:50'),
(205, 6, 'Caterers', 'Ice Cream ', 100, 'Dessert ', 'Ice Cream _6.jpg', '2022-02-15 09:23:00'),
(206, 6, 'Caterers', 'Cadbury Roll ', 150, 'Dessert', 'Cadbury Roll _6.jpg', '2022-02-15 09:23:25'),
(207, 6, 'Caterers', 'Gajar Ka Halwa ', 130, 'Dessert', 'Gajar Ka Halwa _6.jpg', '2022-02-15 09:23:55'),
(208, 6, 'Caterers', 'Shrikhand ', 120, 'Dessert', 'Shrikhand _6.jpg', '2022-02-15 09:24:24'),
(209, 6, 'Caterers', 'Ladoo', 70, 'Dessert', 'Ladoo_6.jpg', '2022-02-15 09:24:48'),
(210, 6, 'Caterers', 'Rasgulla ', 50, 'Dessert', 'Rasgulla _6.jpg', '2022-02-15 09:25:09'),
(211, 6, 'Caterers', 'Dry Fruits Kheer ', 130, 'Dessert', 'Dry Fruits Kheer _6.jpg', '2022-02-15 09:25:31'),
(212, 6, 'Caterers', 'Kheer ', 110, 'Dessert', 'Kheer _6.jpg', '2022-02-15 09:25:49'),
(213, 6, 'Caterers', 'Jalebi ', 30, 'Dessert', 'Jalebi _6.jpeg', '2022-02-15 09:26:10'),
(214, 6, 'Caterers', 'Gulab Jamun ', 40, 'Dessert', 'Gulab Jamun _6.jpg', '2022-02-15 09:26:31'),
(215, 6, 'Caterers', 'Misti Paan ', 70, 'Paan', 'Misti Paan _6.jpg', '2022-02-15 09:30:35'),
(216, 6, 'Caterers', 'Meetha Paan ', 80, 'Paan ', 'Meetha Paan _6.jpg', '2022-02-15 09:31:06'),
(217, 6, 'Caterers', 'Rose Paan ', 100, 'Paan ', 'Rose Paan _6.jpg', '2022-02-15 09:31:33'),
(218, 6, 'Caterers', 'Chocolate Paan ', 150, 'Paan', 'Chocolate Paan _6.jpg', '2022-02-15 09:32:23'),
(219, 6, 'Caterers', 'Silver Paan ', 150, 'Paan', 'Silver Paan _6.jpg', '2022-02-15 09:32:44'),
(220, 6, 'Caterers', 'Saada Paan ', 50, 'Paan ', 'Saada Paan _6.jpg', '2022-02-15 09:33:16'),
(221, 6, 'Caterers', 'Kohinoor Paan ', 180, 'Paan ', 'Kohinoor Paan _6.jpg', '2022-02-15 09:33:38'),
(222, 8, 'Caterers', 'test', 222, 'jdjd', 'test_8.jpg', '2026-03-17 09:25:24');

-- --------------------------------------------------------

--
-- Table structure for table `tblevent`
--

CREATE TABLE `tblevent` (
  `id` int(11) NOT NULL,
  `userId` varchar(50) DEFAULT NULL,
  `eventName` varchar(255) DEFAULT NULL,
  `eventDate` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblevent`
--

INSERT INTO `tblevent` (`id`, `userId`, `eventName`, `eventDate`, `created_at`) VALUES
(1, '3', 'Demo Event', '28-03-2026', '2026-03-23 05:33:04');

-- --------------------------------------------------------

--
-- Table structure for table `tblgallery`
--

CREATE TABLE `tblgallery` (
  `galleryid` int(11) NOT NULL,
  `categoryid` int(11) NOT NULL,
  `image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblgallery`
--

INSERT INTO `tblgallery` (`galleryid`, `categoryid`, `image`) VALUES
(5, 1, '1_1774337459.jpg'),
(6, 1, '1_1774337471.jpg'),
(7, 2, '2_1774337488.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tblorder`
--

CREATE TABLE `tblorder` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `vendorId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `functionDate` varchar(20) NOT NULL,
  `address` text NOT NULL,
  `remark` text NOT NULL,
  `totalAmount` varchar(10) NOT NULL,
  `advanceAmount` varchar(10) NOT NULL,
  `transactionId` varchar(100) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tblorder`
--

INSERT INTO `tblorder` (`id`, `userId`, `vendorId`, `productId`, `qty`, `functionDate`, `address`, `remark`, `totalAmount`, `advanceAmount`, `transactionId`, `created_date`) VALUES
(4, 17, 6, 3, 1, '06-03-2025', 'abcd', 'abcd', '20', '10', 'pay_Q3QP6JA2Qzr1Es', '2025-03-06 07:37:52'),
(5, 17, 6, 24, 100, '12-03-2025', 'abcd', 'abcd', '4000', '2000', 'pay_Q3QRLVYHPA6XFI', '2025-03-06 07:39:59');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `type` varchar(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `contact` bigint(10) NOT NULL,
  `password` varchar(20) NOT NULL,
  `gender` enum('Male','Female','Transgender') NOT NULL DEFAULT 'Male',
  `address` longtext NOT NULL,
  `city` varchar(100) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `type`, `name`, `email`, `contact`, `password`, `gender`, `address`, `city`, `created_date`) VALUES
(1, 'Admin', 'Admin', 'admin@gmail.com', 9876543210, 'admin@007', 'Male', '', 'Ahmedabad', '2022-01-26 05:02:04'),
(2, 'User', 'Aahana ', 'aahanak2@gmail.com', 7878232386, 'sagar@123', 'Female', '', 'Ahmedabad', '2022-02-14 18:16:32'),
(3, 'User', 'Shreya ', 'shreya@gmail.com', 9898989898, 'pp124', 'Female', '', 'Ahmedabad', '2022-02-14 18:30:57'),
(4, 'User', 'Punit', 'punit.chotai7@gmail.com', 9979261665, '12345', 'Male', '', 'Ahmedabad', '2022-02-14 18:31:05'),
(6, 'Caterers', 'Aadya', 'aadyapatel12@gmail.com', 7878232388, 'sk@123', 'Female', '545/3077, Soni ni chali, Bapunagar, Ahmedabad, Gujarat 380038, India', 'Gandhinagar', '2022-02-14 18:31:16'),
(7, 'User', 'Pranjal', 'pranjal@gmail.com', 8320038820, 'pranjal@321', 'Female', 'Incometax', 'Ahmedabad', '2022-02-14 18:31:25'),
(8, 'Caterers', 'Aarti Patel ', 'aarti@gmail.com', 2222222222, 'ap@123', 'Female', 'abc', 'Ahmedabad', '2022-02-15 07:21:05'),
(9, 'User ', 'Aanandi Desai ', 'anandi12@gmail.com', 0, 'ad@12', 'Female', 'ABC', 'Ahmedabad', '2022-02-15 06:24:31'),
(10, 'Caterers', 'Aarav Shah ', 'aarav@gmail.com', 1111111111, 'as@123', 'Male', 'XYZ', 'Ahmedabad', '2022-02-15 07:03:55'),
(15, 'User ', 'Aarushi Singh ', 'aarushi@gmail.com', 3333333333, 'as@123', 'Female', 'xyz', 'Ahmedabad', '2022-02-15 06:24:50'),
(16, 'User ', 'Aashna Patel ', 'aashna@gmail.com', 4444444444, 'ap@123', 'Female', 'def', 'Ahmedabad', '2022-02-15 06:24:59'),
(17, 'User', 'dev', 'dev@gmail.com', 6354061482, '123456', 'Male', 'ahmedabad', 'ahmedabad', '2025-03-05 08:59:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblevent`
--
ALTER TABLE `tblevent`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblgallery`
--
ALTER TABLE `tblgallery`
  ADD PRIMARY KEY (`galleryid`);

--
-- Indexes for table `tblorder`
--
ALTER TABLE `tblorder`
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
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=223;

--
-- AUTO_INCREMENT for table `tblevent`
--
ALTER TABLE `tblevent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblgallery`
--
ALTER TABLE `tblgallery`
  MODIFY `galleryid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblorder`
--
ALTER TABLE `tblorder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
