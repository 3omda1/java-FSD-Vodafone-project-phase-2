-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3308
-- Generation Time: Mar 02, 2023 at 09:58 PM
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
-- Database: `learners_academy_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `id` int(11) NOT NULL,
  `starting_date` varchar(50) NOT NULL,
  `ending_date` varchar(50) NOT NULL,
  `Time` varchar(50) NOT NULL,
  `subID` int(11) NOT NULL,
  `teacherID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`id`, `starting_date`, `ending_date`, `Time`, `subID`, `teacherID`) VALUES
(1, 'SUN [5-3-2023]', 'THU [9-3-2023]', '1:00PM-UTC', 2, 2),
(2, 'TUE [7-3-2023]', 'FRI [10-3-2023]', '1:00PM-UTC', 4, 6),
(3, 'MON [13-3-2023]', 'FRI [17-3-2023]', '1:00PM-UTC', 3, 4),
(4, 'SUN [5-3-2023]', 'THU [9-3-2023]', '1:00PM-UTC', 2, 4),
(5, 'MON [20-3-2023]', 'FRI [24-3-2023]', '2:00PM-UTC', 6, 4),
(6, 'WEN [8-3-2023]', 'TUE [14-3-2023]', '2:00PM-UTC', 4, 3),
(7, 'TUE [7-3-2023]', 'MON [13-3-2023]', '1:00PM-UTC', 6, 5),
(8, 'MON [20-3-2023]', 'FRI [24-3-2023]', '2:00PM-UTC', 5, 2);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `req_sub_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `email`, `req_sub_id`, `class_id`) VALUES
(1, 'Ahmed Mousa', 'ahmed.mousa@vodafone.com', 2, 4),
(2, 'Rana Samir', 'rana.samir@vodafone.com', 4, 2),
(3, 'Mohamed Kamal', 'mohamed.kamal@vodafone.com', 5, 8),
(4, 'Mina David', 'mina.david@vodafone.com', 3, 3),
(5, 'John Well', 'john.well@vodafone.com', 6, 5),
(6, 'Yara Mahmoud', 'yara.mahamoud@vodafone.com', 3, 3),
(7, 'Juan Gonzalo', 'juan.gonzalo@vodafone.com', 2, 1),
(8, 'Mai Mohamed', 'mai.mohamed@vodafone.com', 6, 7),
(9, 'Rola Zidan', 'rola.zidan@vodafone.com', 5, 8),
(10, 'Nayera Hany', 'nayera.hany@vodafone.com', 4, 2),
(11, 'Paolo Gonzalo', 'paolo.gonzalo@vodafone.com', 2, 1),
(12, 'Ahmed Fekry', 'ahemd.fekry@vodafone.com', 5, 8),
(13, 'Nael Kamal', 'nael.kamal@vodafone.com', 4, 6),
(14, 'Mona Mahmoud', 'mona.mahamoud@vodafone.com', 3, 3),
(15, 'Assem Metwaly', 'assem.metwaly@vodafone.com', 6, 5),
(16, 'Mohammed Ahmed', 'mohamed.ahmed@vodafone.com', 6, 7),
(17, 'Rafaat Kamal', 'rafaat.kamal@vodafone.com', 4, 6),
(18, 'Youmna Mahmoud', 'youmna.mahamoud@vodafone.com', 2, 4);

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(11) NOT NULL,
  `subName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `subName`) VALUES
(1, 'NULL'),
(2, 'HTML'),
(3, 'CSS'),
(4, 'SQL'),
(5, 'JSP'),
(6, 'Java');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `name`) VALUES
(1, 'NULL'),
(2, 'Hossam Taha'),
(3, 'Ahmed Emad'),
(4, 'Nader Alaa'),
(5, 'Fatma Alaa'),
(6, 'Abdelrahman Moustafa');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subID` (`subID`),
  ADD KEY `teacherID` (`teacherID`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `class_id` (`class_id`),
  ADD KEY `req_sub_id` (`req_sub_id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `classes`
--
ALTER TABLE `classes`
  ADD CONSTRAINT `classes_ibfk_1` FOREIGN KEY (`subID`) REFERENCES `subjects` (`id`),
  ADD CONSTRAINT `classes_ibfk_2` FOREIGN KEY (`teacherID`) REFERENCES `teachers` (`id`);

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_ibfk_1` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`),
  ADD CONSTRAINT `students_ibfk_2` FOREIGN KEY (`req_sub_id`) REFERENCES `subjects` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
