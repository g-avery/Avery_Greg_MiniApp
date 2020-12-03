-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 03, 2020 at 12:52 AM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_mini_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cars`
--

DROP TABLE IF EXISTS `tbl_cars`;
CREATE TABLE IF NOT EXISTS `tbl_cars` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `avatar` varchar(30) NOT NULL,
  `name` varchar(20) NOT NULL,
  `lineup` varchar(20) NOT NULL,
  `description` varchar(600) NOT NULL,
  `price` varchar(10) NOT NULL,
  `engine_architecture` varchar(40) NOT NULL,
  `transmission` varchar(30) NOT NULL,
  `promo_image` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_cars`
--

INSERT INTO `tbl_cars` (`id`, `avatar`, `name`, `lineup`, `description`, `price`, `engine_architecture`, `transmission`, `promo_image`) VALUES
(1, '3Door_cooper.png', 'Cooper S', '3 Door ', 'It’s the original icon, reborn and reimagined for modern motoring. The MINI 3 door builds on 60+ years of timeless MINI design, but comes equipped with a whole host of 21st century tech features and practical touches to cater to your every need. Distinct by design and urban by nature, it’s made to stand out as you explore new corners of your city. And with its ultra-nimble go-kart feel, you’re sure to find something exciting around every turn.', '$23,090', '4 Cylinder 16 Valve Twin Power Turbo', '6-Speed Manual', '3Door_promo.jpg'),
(2, 'clubman_cooperSAll4.png', 'Cooper S All4', 'Clubman', 'Allow us to introduce you to the most sophisticated MINI ever made. Superbly crafted with sleek exterior contours, refined cockpit accents, and quality materials throughout, the MINI Clubman is designed to make an impression everywhere it goes. And with a generously sized interior plus ALL4 All-Wheel Drive as standard, it boasts as much practicality as it does personality. Get in, get comfortable, and let the MINI Clubman open more doors to new experiences', '$29,990', '4 Cylinder 16 Valve Twin Power Turbo', '8 Speed Steptronic Automatic', 'clubman_promo.jpg'),
(3, 'convertible_cooperS.png', 'Cooper S', 'Convertible', 'Open top. Open road. Open-ended possibilities. The MINI Convertible brings together three generations of MINI design, but boasts a personality that is all its own. With comfortable seating for four and a 3-in-1 Soft Top that can function as a sunroof or a full-fledged drop-top, it’s always ready for your next open-air adventure. And with a lively Twin Power Turbo engine capable of hitting 100 km/h in a blistering 6.6 seconds (in the John Cooper Works variant), it’s sure to offer a few hair-raising thrills along the way.', '$34,390', '4 Cylinder 16 Valve Twin Scroll Turbo', '6-Speed Manual', 'convertible_promo.jpg'),
(4, 'countryman_cooperSAll4.png', 'Cooper S All4', 'Countryman', 'The new MINI Countryman ALL4 is as daring and adventure-minded as you are. Whether you prefer playing in the city or escaping it at the first opportunity, you’ll have the freedom and flexibility to go wherever your wandering mind takes you. Time to discover the new MINI Countryman and start writing your next adventure.', '$35,990', '4 Cylinder 16 Valve Twin Power Turbo', '8 Speed Steptronic Automatic', 'countryman_promo.jpg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
