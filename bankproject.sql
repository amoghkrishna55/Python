-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 01, 2020 at 09:41 AM
-- Server version: 5.7.19
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bankproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `acno` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(30) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `email` varchar(80) DEFAULT NULL,
  `aadhar_no` varchar(20) DEFAULT NULL,
  `acc_type` varchar(20) DEFAULT NULL,
  `status` char(15) DEFAULT NULL,
  `balance` float(15,2) DEFAULT NULL,
  PRIMARY KEY (`acno`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`acno`, `name`, `address`, `phone`, `email`, `aadhar_no`, `acc_type`, `status`, `balance`) VALUES
(1, 'Amogh Krishna', 'rf-87 girinagar', '8769432098', 'amoghkrishna55@gmail.com', '123412434545', 'saving', 'active', 1220000.00),
(2, 'Kushal Sena', 'A-75-B rajajinagar', '9678436754', 'kushalsena13@gmail.com', '454512434545', 'saving', 'active', 1.00),
(3, 'Rajaarya', 'cf-04 kengari ', '9876785467', 'rajaarya28@gmail.com', '123456564545', 'saving', 'active', 10000.00),
(4, 'Ishan Raja', 'd-100 banashankari', '9678965675', 'ishanraja23@gmail.com', '112456566576', 'saving', 'active', 56000.00),
(5, 'Pranav J', 'e-40 Unknown', '9731766784', 'pranavj12@gmail.com', '445556564545', 'saving', 'active', 200000.00);

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
CREATE TABLE IF NOT EXISTS `transaction` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `dot` date DEFAULT NULL,
  `amount` int(10) DEFAULT NULL,
  `type` char(20) DEFAULT NULL,
  `acno` int(10) DEFAULT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`tid`, `dot`, `amount`, `type`, `acno`) VALUES
(1, '2021-1-16', 2000, 'deposit', 1),
(2, '2021-1-15', 2000, 'deposit', 2),
(3, '2021-1-18', 1200, 'withdraw', 3),
(4, NULL, 2000, 'deposit', 1),
(5, '2021-1-30', 200, 'deposit', 1),
(6, '2021-1-30', 2000, 'withdraw', 4),
(7, '2021-1-30', 200, 'withdraw', 1),
(8, '2021-2-01', 2000, 'deposit', 5);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
