-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 26, 2023 at 06:45 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `first_assigement_shailesh_1`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `CNM` int(11) NOT NULL,
  `CNAME` varchar(50) DEFAULT NULL,
  `CITY` varchar(50) DEFAULT NULL,
  `RATING` int(11) DEFAULT NULL,
  `SNO` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`CNM`, `CNAME`, `CITY`, `RATING`, `SNO`) VALUES
(201, 'HOFFMAN', 'LONDON', 100, 1001),
(202, 'GIOVANNE', 'ROME', 200, 1003),
(203, 'LIU', NULL, 300, 1002),
(204, 'GRASS', 'BARCELONA', 100, 1002),
(206, 'CLEMENS', 'LONDON', 300, 1007),
(207, 'PEREIRA', 'ROME', 100, 1004);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `ONM` int(11) DEFAULT NULL,
  `AMT` float DEFAULT NULL,
  `ODE` date DEFAULT NULL,
  `CNM` int(11) DEFAULT NULL,
  `SNO` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`ONM`, `AMT`, `ODE`, `CNM`, `SNO`) VALUES
(3001, 18.69, '1994-10-03', 201, 1007),
(3002, 1900.1, '1994-10-03', 207, 1004),
(3003, 767.19, '1994-10-03', 201, 1001),
(3005, 0, '1994-10-03', 203, 1002),
(3006, 3005, '1994-10-04', 201, 1007),
(3007, 3007, '1994-10-05', 204, 1002),
(3008, 3008, '1994-10-05', 206, 1001),
(3009, 3009, '1994-10-04', 202, 1003),
(3010, 0, '1994-10-06', 204, 1002),
(3011, 3011, '1994-10-06', 206, 1001);

-- --------------------------------------------------------

--
-- Table structure for table `sales_person`
--

CREATE TABLE `sales_person` (
  `SNO` int(11) NOT NULL,
  `SNAME` varchar(50) NOT NULL,
  `CITY` varchar(50) DEFAULT NULL,
  `COMM` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sales_person`
--

INSERT INTO `sales_person` (`SNO`, `SNAME`, `CITY`, `COMM`) VALUES
(1001, 'PEEL', 'LONDON', 0.12),
(1002, 'SERRES', 'SAN JOSE', 0.13),
(1003, 'AXELROD', 'NEW YORK', 0.1),
(1004, 'RAFKIN', 'BARCELONA', 0.11),
(1007, 'MOTIKA', 'LONDON', 0.15);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`CNM`);

--
-- Indexes for table `sales_person`
--
ALTER TABLE `sales_person`
  ADD PRIMARY KEY (`SNO`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
