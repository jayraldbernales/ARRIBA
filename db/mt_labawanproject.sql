-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 06, 2025 at 11:18 AM
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
-- Database: `mt.labawanproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `active_tours`
--

CREATE TABLE `active_tours` (
  `at_id` int(11) NOT NULL,
  `tour_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gender`
--

CREATE TABLE `gender` (
  `Gender_ID` int(11) NOT NULL,
  `Gender` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gender`
--

INSERT INTO `gender` (`Gender_ID`, `Gender`) VALUES
(1, 'Male'),
(2, 'Female'),
(3, 'Gay'),
(5, 'Lesbian'),
(6, 'Transgender'),
(7, 'Bisexual'),
(8, 'Asexual'),
(9, 'Pansexual'),
(10, 'Non-Binary');

-- --------------------------------------------------------

--
-- Table structure for table `tour`
--

CREATE TABLE `tour` (
  `TourID` int(100) NOT NULL,
  `Tour_Number` int(11) NOT NULL,
  `TouristID` int(100) NOT NULL,
  `TourGuideID` int(100) NOT NULL,
  `StartDateTime` date NOT NULL,
  `EndDateTime` date NOT NULL,
  `StartTime` time NOT NULL,
  `EndTime` time NOT NULL,
  `Duration` time NOT NULL,
  `Blood_Pressure` varchar(8) NOT NULL,
  `Status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tour`
--

INSERT INTO `tour` (`TourID`, `Tour_Number`, `TouristID`, `TourGuideID`, `StartDateTime`, `EndDateTime`, `StartTime`, `EndTime`, `Duration`, `Blood_Pressure`, `Status`) VALUES
(144, 1, 56, 1, '2024-12-03', '2024-12-03', '15:19:09', '15:19:13', '00:00:04', '120/80', '1'),
(145, 2, 56, 1, '2024-12-03', '2024-12-03', '15:19:26', '15:21:19', '00:01:53', '120/80', '1'),
(146, 3, 56, 1, '2024-12-03', '2025-01-11', '15:21:29', '14:21:37', '838:59:59', '120/80', '1'),
(147, 4, 58, 2, '2025-01-11', '2025-01-11', '11:24:04', '14:21:40', '02:57:36', '120/80', '1'),
(148, 4, 59, 2, '2025-01-11', '2025-01-11', '11:24:04', '14:21:40', '02:57:36', '120/80', '1'),
(149, 4, 60, 2, '2025-01-11', '2025-01-11', '11:24:04', '14:21:40', '02:57:36', '120/80', '1'),
(150, 5, 57, 5, '2025-01-11', '2025-01-11', '11:24:15', '14:21:41', '02:57:26', '120/80', '1'),
(151, 6, 62, 8, '2025-01-11', '2025-01-11', '11:38:03', '14:21:43', '02:43:40', '120/80', '1'),
(152, 7, 56, 1, '2025-01-11', '0000-00-00', '14:22:20', '00:00:00', '00:00:00', '120/80', '0'),
(153, 8, 58, 2, '2025-01-11', '0000-00-00', '14:22:30', '00:00:00', '00:00:00', '120/80', '0'),
(154, 9, 59, 3, '2025-01-11', '0000-00-00', '14:22:39', '00:00:00', '00:00:00', '120/80', '0'),
(155, 10, 57, 5, '2025-01-11', '0000-00-00', '14:22:50', '00:00:00', '00:00:00', '120/80', '0'),
(156, 11, 60, 6, '2025-01-11', '0000-00-00', '14:22:59', '00:00:00', '00:00:00', '120/80', '0'),
(157, 12, 61, 7, '2025-01-11', '0000-00-00', '14:23:09', '00:00:00', '00:00:00', '120/80', '0'),
(158, 13, 62, 8, '2025-01-13', '0000-00-00', '23:25:10', '00:00:00', '00:00:00', '120/80', '0'),
(159, 14, 64, 4, '2025-01-14', '2025-01-14', '10:57:24', '10:57:53', '00:00:29', '120/80', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tourist`
--

CREATE TABLE `tourist` (
  `TouristID` int(100) NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `Age` int(200) NOT NULL,
  `GenderID` int(11) NOT NULL,
  `Nationality` varchar(50) NOT NULL,
  `TouristTypeID` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tourist`
--

INSERT INTO `tourist` (`TouristID`, `FirstName`, `LastName`, `Age`, `GenderID`, `Nationality`, `TouristTypeID`) VALUES
(56, 'Mark', 'Angelo', 24, 1, 'Filipino (Philippines)', 1),
(57, 'Jay', 'Rald', 21, 1, 'Filipino (Philippines)', 2),
(58, 'Angela', 'Martinez', 21, 2, 'Indonesian (Indonesia)', 3),
(59, 'Christian', 'Olandria', 20, 1, 'Australian (Australia)', 6),
(60, 'Junre', 'Gamutan', 21, 3, 'Russian (Russia)', 9),
(61, 'Myla', 'Lerio', 21, 2, 'Canadian (Canada)', 6),
(62, 'Rald', 'Jay', 21, 10, 'Chinese (China)', 3),
(64, 'Christian', 'Martinez', 23, 1, 'Filipino (Philippines)', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tourist_type`
--

CREATE TABLE `tourist_type` (
  `TouristTypeID` int(100) NOT NULL,
  `Class` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tourist_type`
--

INSERT INTO `tourist_type` (`TouristTypeID`, `Class`) VALUES
(1, 'Local Mabini'),
(2, 'Local Bohol'),
(3, 'International Asia'),
(4, 'Regional Cebu'),
(5, 'Regional Manila'),
(6, 'Foreign'),
(9, 'Europe');

-- --------------------------------------------------------

--
-- Table structure for table `tour_guide`
--

CREATE TABLE `tour_guide` (
  `TourGuideID` int(100) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Age` int(100) NOT NULL,
  `Address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tour_guide`
--

INSERT INTO `tour_guide` (`TourGuideID`, `Name`, `Age`, `Address`) VALUES
(1, 'Jayrald N. Bernales', 21, 'Cawayanan, Mabini, Bohol'),
(2, 'Juan Dela Cruz', 34, 'Cogtong, Candijay, Bohol'),
(3, 'Maria Santos', 28, 'Tangkigan, Mabini, Bohol'),
(4, 'Josefa Reyes', 40, 'Tagbilaran City'),
(5, 'Andres Bernaldez', 36, 'Carmen, Bohol'),
(6, 'Gerald Aquino', 55, 'Batuan, Bohol'),
(7, 'Rizalito Alonzo', 30, 'Pilar, Bohol'),
(8, 'Ligaya Sarmiento', 25, 'Talibon, Bohol'),
(9, 'Jyle Aquino', 45, 'Alicia, Bohol'),
(14, 'Chris Olandria', 24, '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UserID` int(100) NOT NULL,
  `Username` varchar(200) NOT NULL,
  `Password` varchar(200) NOT NULL,
  `Role` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UserID`, `Username`, `Password`, `Role`) VALUES
(1, 'Bernalesj28@gmail.com', '12345', 'Admin'),
(2, 'chan1231@gmail.com', '123', 'User');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `active_tours`
--
ALTER TABLE `active_tours`
  ADD PRIMARY KEY (`at_id`),
  ADD KEY `tour_id` (`tour_id`);

--
-- Indexes for table `gender`
--
ALTER TABLE `gender`
  ADD PRIMARY KEY (`Gender_ID`);

--
-- Indexes for table `tour`
--
ALTER TABLE `tour`
  ADD PRIMARY KEY (`TourID`),
  ADD KEY `fk_touristGuideID` (`TourGuideID`),
  ADD KEY `fk_tourTouristID` (`TouristID`);

--
-- Indexes for table `tourist`
--
ALTER TABLE `tourist`
  ADD PRIMARY KEY (`TouristID`),
  ADD KEY `fk_touristTypeId` (`TouristTypeID`),
  ADD KEY `GenderID` (`GenderID`);

--
-- Indexes for table `tourist_type`
--
ALTER TABLE `tourist_type`
  ADD PRIMARY KEY (`TouristTypeID`);

--
-- Indexes for table `tour_guide`
--
ALTER TABLE `tour_guide`
  ADD PRIMARY KEY (`TourGuideID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `active_tours`
--
ALTER TABLE `active_tours`
  MODIFY `at_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gender`
--
ALTER TABLE `gender`
  MODIFY `Gender_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tour`
--
ALTER TABLE `tour`
  MODIFY `TourID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;

--
-- AUTO_INCREMENT for table `tourist`
--
ALTER TABLE `tourist`
  MODIFY `TouristID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `tourist_type`
--
ALTER TABLE `tourist_type`
  MODIFY `TouristTypeID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tour_guide`
--
ALTER TABLE `tour_guide`
  MODIFY `TourGuideID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `UserID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `active_tours`
--
ALTER TABLE `active_tours`
  ADD CONSTRAINT `active_tours_ibfk_1` FOREIGN KEY (`tour_id`) REFERENCES `tour` (`TourID`);

--
-- Constraints for table `tour`
--
ALTER TABLE `tour`
  ADD CONSTRAINT `fk_tourTouristID` FOREIGN KEY (`TouristID`) REFERENCES `tourist` (`TouristID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_touristGuideID` FOREIGN KEY (`TourGuideID`) REFERENCES `tour_guide` (`TourGuideID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tourist`
--
ALTER TABLE `tourist`
  ADD CONSTRAINT `fk_touristTypeId` FOREIGN KEY (`TouristTypeID`) REFERENCES `tourist_type` (`TouristTypeID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tourist_ibfk_1` FOREIGN KEY (`GenderID`) REFERENCES `gender` (`Gender_ID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
