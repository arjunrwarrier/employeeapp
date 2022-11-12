-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 12, 2022 at 07:07 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `employeedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(11) NOT NULL,
  `empcode` int(11) NOT NULL,
  `empname` varchar(20) NOT NULL,
  `designation` varchar(20) NOT NULL,
  `salary` int(11) NOT NULL,
  `companyname` varchar(20) NOT NULL,
  `phone` bigint(11) NOT NULL,
  `emailid` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `empcode`, `empname`, `designation`, `salary`, `companyname`, `phone`, `emailid`, `password`) VALUES
(4, 5003, 'Samuel', 'Devops', 40000, 'Wipro', 1356349056, 'samuel@wipro.com', 'samuel123'),
(5, 5004, 'John', 'DataAnalyst', 80000, 'Ubisoft', 1278560954, 'john@ubisoft.com', 'john234'),
(6, 5005, 'Tony', 'ReactDeveloper', 50000, 'Accenture', 1890348956, 'tony@acc.com', '456tony'),
(7, 5006, 'Yash', 'SolidityDeveloper', 89000, 'WebHere', 1767093490, 'yash@webhere.com', 'yash234'),
(8, 5007, 'Tommy', 'EmbeddedEngineer', 56000, 'NestDigital', 1234567878, 'tommy@nest.com', 'tommy345'),
(9, 5008, 'Trevor', 'DataEngineer', 25000, 'Wipro', 1678905678, 'trevor@wipro.com', 'trevor567'),
(11, 5010, 'Manny', 'SoftwareEngineer', 45000, 'NestDigital', 9989567845, 'manny@nest.com', '123manny'),
(12, 5011, 'Sid', 'DevopsEngineer', 55000, 'NestDigital', 9989677845, 'sid@nest.com', '123sid'),
(13, 5012, 'Diego', 'IT', 35000, 'NestDigital', 8189677845, 'diego@nest.com', '123diego'),
(15, 5013, 'Jason', 'GameDesigner', 95000, 'EA', 7889677845, 'jason@nest.com', 'jason123'),
(16, 5014, 'Sammy', 'WebDeveloper', 45000, 'Orion', 9988990077, 'sammy@gmail.com', 'sammy123'),
(17, 5015, 'Aaron', 'WebDeveloper', 30000, 'NestDigital', 9988440066, 'aaron@nest.com', 'aaron123'),
(18, 5016, 'Mendes', 'DataScientist', 70000, 'skyai', 9078674534, 'mendes@skyai.com', 'mendes123');

-- --------------------------------------------------------

--
-- Table structure for table `highsalaryemployees`
--

CREATE TABLE `highsalaryemployees` (
  `id` int(11) NOT NULL,
  `empcode` int(11) NOT NULL,
  `empname` varchar(20) NOT NULL,
  `designation` varchar(20) NOT NULL,
  `salary` int(11) NOT NULL,
  `companyname` varchar(20) NOT NULL,
  `phone` int(11) NOT NULL,
  `emailid` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `highsalaryemployees`
--

INSERT INTO `highsalaryemployees` (`id`, `empcode`, `empname`, `designation`, `salary`, `companyname`, `phone`, `emailid`, `password`) VALUES
(1, 5004, 'John', 'DataAnalyst', 80000, 'Ubisoft', 1278560954, 'john@ubisoft.com', 'john234'),
(2, 5006, 'Yash', 'SolidityDeveloper', 89000, 'WebHere', 1767093490, 'yash@webhere.com', 'yash234'),
(3, 5007, 'Tommy', 'EmbeddedEngineer', 56000, 'NestDigital', 1234567878, 'tommy@nest.com', 'tommy345'),
(4, 5011, 'Sid', 'DevopsEngineer', 55000, 'NestDigital', 2147483647, 'sid@nest.com', '123sid'),
(5, 5013, 'Jason', 'GameDesigner', 95000, 'EA', 2147483647, 'jason@nest.com', 'jason123');

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` int(11) NOT NULL,
  `empid` int(11) NOT NULL,
  `tasktitle` varchar(20) NOT NULL,
  `taskdate` date NOT NULL,
  `taskduedate` date NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `empid`, `tasktitle`, `taskdate`, `taskduedate`, `status`) VALUES
(15, 2, 'DataClean', '2022-09-01', '2022-10-03', 'processing'),
(16, 4, 'SetCI/CD', '2021-10-11', '2021-12-03', 'completed'),
(17, 5, 'CollectData', '2019-11-21', '2019-12-03', 'notcompleted'),
(18, 6, 'FixLoginScreen', '2022-01-11', '2022-01-30', 'completed'),
(19, 7, 'CreatePaymentgateway', '2022-10-11', '2022-12-30', 'processing'),
(20, 8, 'FixTransistors', '2020-11-09', '2020-12-20', 'completed'),
(21, 9, 'SetDataPipeline', '2022-11-12', '2022-12-12', 'processing'),
(22, 11, 'SetDatabase', '2021-12-12', '2022-01-12', 'completed'),
(23, 12, 'SetCI/CD', '2021-10-11', '2021-11-03', 'completed'),
(24, 13, 'FixSystemError', '2022-10-11', '2022-10-03', 'notcompleted'),
(25, 15, 'FixSkins', '2013-10-11', '2014-12-03', 'completed'),
(26, 16, 'DatabaseIssue', '2021-10-11', '2021-12-03', 'notcompleted');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `highsalaryemployees`
--
ALTER TABLE `highsalaryemployees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `highsalaryemployees`
--
ALTER TABLE `highsalaryemployees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
