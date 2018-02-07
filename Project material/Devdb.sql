-- phpMyAdmin SQL Dump
-- version 3.4.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 07, 2012 at 09:15 PM
-- Server version: 5.1.36
-- PHP Version: 5.3.0

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `devdb`
--
-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE IF NOT EXISTS `inventory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item` varchar(100) NOT NULL,
  `quantityleft` int(11) NOT NULL,
  `quantity_sold` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `sales` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`id`, `item`, `quantityleft`, `quantity_sold`, `price`, `sales`) VALUES
(1, 'Fridge', 10, 14, 212, 2120),
(2, 'AC', 343, 10, 100, 6),
(3, 'Fan', 23232, 13, 111111111, 13000000),
(4, 'Chair', 23232, 0, 3232, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
-- The sales number is the amount of items required for a particular id here 
--id is accountid

CREATE TABLE IF NOT EXISTS `sales` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(200) NOT NULL,
  `quantity` int(11) NOT NULL,
  `date` varchar(30) NOT NULL,
  `sales` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `product_id`,`product_name`,`quantity`, `date`, `sales`) VALUES
(1, 2,'Chairs', 41, '2012-06-28', 30),
(2, 1,'Table', 14, '2012-06-28', 1484),
(3, 1,'Sofa', 9, '2012-06-29', 1060),
(4, 2,'Lamp', 2, '2012-06-29', 6),
(5, 3,'Fan', 1, '2012-06-29', 1000000),
(6, 1,'Bed', 1, '2012-06-30', 212),
(7, 3,'Table', 0, '2012-06-30', 0),
(8, 2,'Bean Bags', 0, '2012-06-30', 0),
(9, 3,'Doors', 12, '2012-07-07', 12000000);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(3, 'admin', 'admin');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
