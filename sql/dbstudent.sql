-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 10, 2019 at 02:09 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbstudent`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc` (IN `dept` INT)  SELECT * FROM view WHERE Department_number=dept$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `admission`
--

CREATE TABLE `admission` (
  `USN` varchar(11) NOT NULL,
  `Name` varchar(11) NOT NULL,
  `Registration_number` int(11) NOT NULL,
  `Department_number` int(11) NOT NULL,
  `Quota` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admission`
--

INSERT INTO `admission` (`USN`, `Name`, `Registration_number`, `Department_number`, `Quota`) VALUES
('1CR', 'sdfg', 78963, 1, 'dvbn'),
('1CR17CS001', 'bunny', 1478, 1, 'cet'),
('1CR17CS007', 'Bond', 1478, 1, 'comedk'),
('1CR17CS090', 'prayag', 1234, 6, 'cet'),
('1CR17CS091', 'Vignesh', 4569, 1, 'comedk'),
('1CR17CS099', 'Rajiv', 1478, 1, 'comedk'),
('1CR17EC001', 'Pavan', 1234, 2, 'cet'),
('1CR17EC002', 'Sai', 1478, 2, 'cet'),
('1CR17EC009', 'Pratiksha', 1234, 4, 'cet'),
('1CR17EC010', 'Priti', 1478, 3, 'comedk'),
('1CR17EC077', 'Asif', 1478, 2, 'cet'),
('1CR17EC100', 'Mansi', 1478, 2, 'comedk'),
('1CR17EC101', 'Mathew', 45896, 2, 'comedk'),
('1CR17EC105', 'MAHI', 1234, 3, 'cet'),
('1CR17EC200', 'ashish', 1478, 2, 'comedk'),
('1CR17IS001', 'nira', 1234, 3, 'cet'),
('1CR17ME001', 'shrey', 1478, 5, 'cet');

--
-- Triggers `admission`
--
DELIMITER $$
CREATE TRIGGER `addt` BEFORE INSERT ON `admission` FOR EACH ROW INSERT INTO view values (NEW.USN,NEW.Name,NEW.Department_number)
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `delt` BEFORE DELETE ON `admission` FOR EACH ROW DELETE FROM general where USN=OLD.USN
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `Department_number` int(11) NOT NULL,
  `Department_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`Department_number`, `Department_name`) VALUES
(1, 'CSE'),
(2, 'ECE'),
(3, 'ISE'),
(4, 'EEE'),
(5, 'MECH'),
(6, 'CIVIL'),
(7, 'TCE'),
(8, 'MBA'),
(9, 'MCA'),
(10, 'ARCH'),
(11, 'ABC');

-- --------------------------------------------------------

--
-- Table structure for table `general`
--

CREATE TABLE `general` (
  `USN` varchar(11) NOT NULL,
  `Name` varchar(15) NOT NULL,
  `Address` varchar(30) DEFAULT NULL,
  `Phone_number` bigint(11) DEFAULT NULL,
  `Gender` varchar(1) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `Mail_ID` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `general`
--

INSERT INTO `general` (`USN`, `Name`, `Address`, `Phone_number`, `Gender`, `DOB`, `Mail_ID`) VALUES
('1CR17CS001', 'bunny', '132, AECS Layout, I.T. Park Ro', 9945974115, 'm', '1999-09-08', 'abcd@gmail.com'),
('1CR17CS007', 'Bond', '132, AECS Layout, I.T. Park Ro', 9945974156, 'm', '1999-09-08', 'abc@gmail.com'),
('1CR17CS090', 'prayag', '132, AECS Layout, I.T. Park Ro', 9945974181, 'm', '1999-09-08', 'abcde@gmail.com'),
('1CR17CS091', 'Vignesh', '132, AECS Layout, I.T. Park Ro', 9945974156, 'm', '1999-09-08', 'abcde@gmail.com'),
('1CR17CS099', 'Rajiv', '132, AECS Layout, I.T. Park Ro', 9945974181, 'm', '1999-09-08', 'abcd@gmail.com'),
('1CR17EC001', 'Pavan', '132, AECS Layout, I.T. Park Ro', 9945974145, 'M', '1999-09-02', 'abc@gmail.com'),
('1CR17EC002', 'Sai', '132, AECS Layout, I.T. Park Ro', 9945974181, 'm', '1999-09-02', 'abcd@gmail.com'),
('1CR17EC009', 'Pratiksha', '132, AECS Layout, I.T. Park Ro', 9945974181, 'm', '1999-09-08', 'abcde@gmail.com'),
('1CR17EC010', 'Priti', '132, AECS Layout, I.T. Park Ro', 9945974181, 'f', '1999-09-08', 'abcde@gmail.com'),
('1CR17EC077', 'Asif', '132, AECS Layout, I.T. Park Ro', 9945974181, 'm', '1999-09-08', 'abc@gmail.com'),
('1CR17EC100', 'Mansi', '132, AECS Layout, I.T. Park Ro', 9945974181, 'f', '1999-09-08', 'abcde@gmail.com'),
('1CR17EC101', 'Mathew', '132, AECS Layout, I.T. Park Ro', 9945974181, 'm', '1999-09-08', 'abcde@gmail.com'),
('1CR17EC105', 'MAHI', '132, AECS Layout, I.T. Park Ro', 9945974181, 'm', '1999-09-02', 'abcde@gmail.com'),
('1CR17EC200', 'ashish', '132, AECS Layout, I.T. Park Ro', 9945974181, 'm', '1999-09-08', 'abcd@gmail.com'),
('1CR17IS001', 'nira', '132, AECS Layout, I.T. Park Ro', 9945974181, 'm', '1999-09-02', 'abc@gmail.com'),
('1CR17ME001', 'shrey', '132, AECS Layout, I.T. Park Ro', 9945974181, 'm', '1999-09-02', 'abc@gmail.com');

--
-- Triggers `general`
--
DELIMITER $$
CREATE TRIGGER `mail` BEFORE INSERT ON `general` FOR EACH ROW IF NEW.Mail_id NOT LIKE '%_@__%.__%'THEN
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'ERROR: \r\n         Enter correct email format';
END IF
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `marks1`
--

CREATE TABLE `marks1` (
  `USN` varchar(20) NOT NULL,
  `Subject_code` varchar(11) NOT NULL,
  `First_internals` int(11) DEFAULT NULL,
  `Second_internals` int(11) DEFAULT NULL,
  `Third_internals` int(11) DEFAULT NULL,
  `Final_internals` int(11) DEFAULT NULL,
  `Result` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marks1`
--

INSERT INTO `marks1` (`USN`, `Subject_code`, `First_internals`, `Second_internals`, `Third_internals`, `Final_internals`, `Result`) VALUES
('1CR17CS001', '1619', 35, 30, 21, 29, 'P'),
('1CR17CS007', '1619', 49, 30, 48, 42, 'P'),
('1CR17CS091', '1619', 49, 49, 49, 49, 'P'),
('1CR17CS091', '1664', 48, 49, 48, 48, 'P'),
('1CR17EC001', '1619', 35, 30, 21, 40, 'P'),
('1CR17EC101', '1994', 50, 40, 49, 46, 'P'),
('1CR17EC101', '1999', 50, 48, 46, 48, 'P'),
('1CR17EC200', '1619', 49, 30, 20, 33, 'P');

--
-- Triggers `marks1`
--
DELIMITER $$
CREATE TRIGGER `addition` BEFORE INSERT ON `marks1` FOR EACH ROW SET new.Final_internals=(new.First_internals+new.Second_internals+new.Third_internals)/3
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `Department_number` int(11) DEFAULT NULL,
  `Subject_code` varchar(7) NOT NULL,
  `Subject_name` varchar(20) DEFAULT NULL,
  `Semester` int(11) DEFAULT NULL,
  `Credits` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`Department_number`, `Subject_code`, `Subject_name`, `Semester`, `Credits`) VALUES
(1, '1619', 'DBMS', 4, 3),
(1, '1664', 'CN', 4, 3),
(2, '1994', 'AE', 4, 3),
(2, '1999', 'NA', 5, 4),
(3, '5453', 'EEM', 4, 3),
(5, '78945', 'FM', 4, 3),
(5, '9898', 'RTT', 4, 3);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created_at`) VALUES
(1, 'vignesh', '$2y$10$mCzpT6PwJYyQh555DhEc1OKvBT5php12igFUFwpCsRStluIKkS5g2', '2019-11-19 14:43:39'),
(2, 'guest', '$2y$10$kuGhBApNqe3nwJ2qLy.wMuyFrCjTMVTZYErHrwp4HehAUTVkRioVu', '2019-11-23 08:48:05'),
(3, 'vigu', '$2y$10$FanOStwTisFT.j/9/iRVROHh/N69VfrucLHWZ32rLS7zUHr8yrOPO', '2019-11-23 08:52:11'),
(4, 'Teacher', '$2y$10$CNLcKYfbvv79lDFZMfrEzubYikqn5r0MyFVsi4cyCeOckbwHkJp82', '2019-11-25 19:38:02');

-- --------------------------------------------------------

--
-- Table structure for table `view`
--

CREATE TABLE `view` (
  `USN` varchar(20) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Department_Number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `view`
--

INSERT INTO `view` (`USN`, `Name`, `Department_Number`) VALUES
('1CR17CS001', 'bunny', 1),
('1CR17CS007', 'Bond', 1),
('1CR17CS090', 'prayag', 6),
('1CR17CS091', 'Vignesh', 1),
('1CR17CS099', 'Rajiv', 1),
('1CR17EC001', 'Pavan', 2),
('1CR17EC002', 'Sai', 2),
('1CR17EC009', 'Pratiksha', 4),
('1CR17EC010', 'Priti', 3),
('1CR17EC077', 'Asif', 2),
('1CR17EC100', 'Mansi', 2),
('1CR17EC101', 'Mathew', 2),
('1CR17EC105', 'MAHI', 3),
('1CR17EC200', 'ashish', 2),
('1CR17IS001', 'nira', 3),
('1CR17ME001', 'shrey', 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admission`
--
ALTER TABLE `admission`
  ADD PRIMARY KEY (`USN`),
  ADD KEY `Department_number` (`Department_number`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`Department_number`);

--
-- Indexes for table `general`
--
ALTER TABLE `general`
  ADD PRIMARY KEY (`USN`);

--
-- Indexes for table `marks1`
--
ALTER TABLE `marks1`
  ADD PRIMARY KEY (`USN`,`Subject_code`),
  ADD KEY `Subject_code` (`Subject_code`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`Subject_code`),
  ADD KEY `Department_number` (`Department_number`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `view`
--
ALTER TABLE `view`
  ADD PRIMARY KEY (`USN`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admission`
--
ALTER TABLE `admission`
  ADD CONSTRAINT `admission_ibfk_1` FOREIGN KEY (`Department_number`) REFERENCES `department` (`Department_number`);

--
-- Constraints for table `general`
--
ALTER TABLE `general`
  ADD CONSTRAINT `general_ibfk_1` FOREIGN KEY (`USN`) REFERENCES `admission` (`USN`);

--
-- Constraints for table `marks1`
--
ALTER TABLE `marks1`
  ADD CONSTRAINT `marks1_ibfk_1` FOREIGN KEY (`Subject_code`) REFERENCES `subjects` (`Subject_code`),
  ADD CONSTRAINT `marks1_ibfk_2` FOREIGN KEY (`USN`) REFERENCES `admission` (`USN`);

--
-- Constraints for table `subjects`
--
ALTER TABLE `subjects`
  ADD CONSTRAINT `subjects_ibfk_1` FOREIGN KEY (`Department_number`) REFERENCES `department` (`Department_number`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
