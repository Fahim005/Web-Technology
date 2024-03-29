-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 25, 2023 at 06:30 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `orphanage_management_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `adopter`
--

CREATE TABLE `adopter` (
  `adopter_id` int(11) NOT NULL,
  `adopter_mail` varchar(50) NOT NULL,
  `password` varchar(90) NOT NULL,
  `adopter_name` varchar(50) NOT NULL,
  `adopter_phone` varchar(50) NOT NULL,
  `adopter_image` varchar(50) DEFAULT NULL,
  `adopter_profession` varchar(50) NOT NULL,
  `adopter_gender` varchar(50) NOT NULL,
  `adopter_address` varchar(50) NOT NULL,
  `adoption_status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `adopter`
--

INSERT INTO `adopter` (`adopter_id`, `adopter_mail`, `password`, `adopter_name`, `adopter_phone`, `adopter_image`, `adopter_profession`, `adopter_gender`, `adopter_address`, `adoption_status`) VALUES
(1, 'dip.kumar020@gmail.com', 'testtest1111@@', 'SUDIPTA KUMAR DAS', '01931117419', 'IMG_0003.JPG', 'Engineer', 'Male', '78/4 EAST RAMPURA, DHAKA-1219', 'Request Pending');

-- --------------------------------------------------------

--
-- Table structure for table `adoption`
--

CREATE TABLE `adoption` (
  `adoption_id` int(11) NOT NULL,
  `orphan_name` varchar(50) NOT NULL,
  `adopter_name` varchar(50) NOT NULL,
  `adopter_phone` varchar(50) NOT NULL,
  `cost` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `adoption_request`
--

CREATE TABLE `adoption_request` (
  `request_id` int(11) NOT NULL,
  `orphan_image` varchar(50) DEFAULT NULL,
  `orphan_name` varchar(50) NOT NULL,
  `orphan_gender` varchar(50) NOT NULL,
  `orphan_age` varchar(50) NOT NULL,
  `adopter_image` varchar(50) DEFAULT NULL,
  `adopter_name` varchar(50) NOT NULL,
  `adopter_mail` varchar(50) NOT NULL,
  `adopter_phone` varchar(50) NOT NULL,
  `request_date` varchar(50) NOT NULL,
  `adoption_status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `adoption_request`
--

INSERT INTO `adoption_request` (`request_id`, `orphan_image`, `orphan_name`, `orphan_gender`, `orphan_age`, `adopter_image`, `adopter_name`, `adopter_mail`, `adopter_phone`, `request_date`, `adoption_status`) VALUES
(5, 'itu.jpg', 'Itu', 'Female', '10', 'IMG_0003.JPG', 'SUDIPTA KUMAR DAS', 'dip.kumar020@gmail.com', '01931117419', '24-03-2023', 'Request Pending');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `appointment_id` int(11) NOT NULL,
  `orphan_name` varchar(50) NOT NULL,
  `adopter_name` varchar(50) NOT NULL,
  `adopter_phone` varchar(50) NOT NULL,
  `date_time` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `orphan`
--

CREATE TABLE `orphan` (
  `orphan_id` int(11) NOT NULL,
  `orphan_image` varchar(90) DEFAULT NULL,
  `orphan_mail` varchar(90) NOT NULL,
  `password` varchar(90) NOT NULL,
  `orphan_name` varchar(90) NOT NULL,
  `orphan_gender` varchar(20) NOT NULL,
  `height` varchar(20) NOT NULL,
  `date_of_birth` varchar(30) NOT NULL,
  `age` varchar(20) DEFAULT NULL,
  `body_color` varchar(20) NOT NULL,
  `adoption_status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orphan`
--

INSERT INTO `orphan` (`orphan_id`, `orphan_image`, `orphan_mail`, `password`, `orphan_name`, `orphan_gender`, `height`, `date_of_birth`, `age`, `body_color`, `adoption_status`) VALUES
(1, 'selim11343.jpg', '14.11341.7.hope.heaven@gmail.com', 'selimselim1111@@', 'Selim', 'Male', '5.7', '24-03-2011', '12', 'Moderate Brown', 'Not Adopted'),
(2, 'sarah0010.jpg', '16.11522.10.hope.heaven@gmail.com', 'sarahsarah1111@@', 'Sarah ', 'Female', '4.9', '13-07-2010', '13', 'White', 'Not Adopted'),
(3, 'udoy.jpg', '15.11342.8.hope.heaven@gmail.com', 'udoyudoy1111@@', 'Udoy', 'Male', '5.1', '24-03-2012', '11', 'White', 'Not Adopted'),
(4, 'aarian.jpg', '16.11343.9.hope.heaven@gmail.com', 'aarianaarian1111@@', 'Aarian', 'Male', '5.4', '24-03-2010', '13', 'Light brown', 'Not Adopted'),
(5, 'itu.jpg', '17.11344.1.hope.heaven@gmail.com', 'ituitu1111@@', 'Itu', 'Female', '4.10', '24-03-2013', '10', 'White', 'Request Pending'),
(6, 'shakil.jpg', '18.11345.2.hope.heaven@gmail.com', 'shakilshakil1111@@', 'Shakil', 'Male', '5.1', '24-03-2011', '12', 'Brown Dark Brown', 'Not Adopted'),
(7, 'sadia.jpg', '19.11346.3.hope.heaven@gmail.com', 'sadiasadia1111@@', 'Sadia', 'Female', '5', '24-03-2014', '9', 'Light brown', 'Not Adopted'),
(8, 'rupa.jpg', '20.11347.4.hope.heaven@gmail.com', 'ruparupa1111@@', 'Rupa', 'Female', '5.4', '24-03-2013', '10', 'Olive Moderate Brown', 'Not Adopted'),
(9, 'rumana.jpg', '21.11348.5.hope.heaven@gmail.com', 'rumanarumana1111@@', 'Rumana', 'Female', '5.1', '24-03-2010', '13', 'White', 'Not Adopted'),
(10, 'rina.jpg', '22.11349.6.hope.heaven@gmail.com', 'rinarina1111@@', 'Rina', 'Female', '5.3', '24-03-2011', '12', 'Olive Moderate Brown', 'Not Adopted'),
(11, 'ornok.jpg', '23.11350.7.hope.heaven@gmail.com', 'ornokornok1111@@', 'Ornok', 'Female', '5.1', '24-03-2013', '10', 'Moderate Brown', 'Not Adopted'),
(12, 'maria.jpg', '24.11351.8.hope.heaven@gmail.com', 'mariamaria1111@@', 'Maria', 'Female', '5.3', '24-03-2014', '9', 'Moderate Brown', 'Not Adopted'),
(13, 'maisha.jpg', '25.11352.9.hope.heaven@gmail.com', 'maishamaisha1111@@', 'Maisha', 'Female', '4.2', '24-03-2011', '12', 'Olive Moderate Brown', 'Not Adopted'),
(14, 'mahmud.jpg', '26.11353.1.hope.heaven@gmail.com', 'mahmudmahmud1111@@', 'Mahmud', 'Male', '4.6', '24-03-2013', '10', 'White', 'Not Adopted'),
(15, 'kasem.jpg', '27.11354.2.hope.heaven@gmail.com', 'kasemkasem1111@@', 'Kasem', 'Male', '4.8', '24-03-2011', '12', 'Brown Dark Brown', 'Not Adopted'),
(16, 'jannat.jpg', '28.11355.3.hope.heaven@gmail.com', 'jannatjannat1111@@', 'Jannat', 'Female', '4.9', '24-03-2016', '7', 'White', 'Not Adopted'),
(17, 'hossain.jpg', '29.11356.4.hope.heaven@gmail.com', 'hossainhossain1111@@', 'Hossain', 'Male', '4.5', '24-03-2012', '11', 'Brown Dark Brown', 'Not Adopted'),
(18, 'hasan.jpg', '30.11357.5.hope.heaven@gmail.com', 'hasanhasan1111@@', 'Hasan', 'Male', '4.8', '24-03-2013', '10', 'Brown Dark Brown', 'Not Adopted'),
(19, 'faria.jpg', '31.11358.6.hope.heaven@gmail.com', 'fariafaria1111@@', 'Faria', 'Female', '4.6', '24-03-2015', '8', 'Olive Moderate Brown', 'Not Adopted'),
(20, 'bilal.jpg', '32.11359.7.hope.heaven@gmail.com', 'bilalbilal1111@@', 'Bilal', 'Male', '4.8', '24-03-2013', '10', 'Brown Dark Brown', 'Not Adopted'),
(21, 'arif.jpg', '33.11360.8.hope.heaven@gmail.com', 'arifarif1111@@', 'Arif', 'Male', '4.9', '24-03-2012', '11', 'White', 'Not Adopted'),
(22, 'alif.jpg', '34.11361.9.hope.heaven@gmail.com', 'alifalif1111@@', 'Alif', 'Male', '5.6', '24-03-2011', '12', 'Moderate Brown', 'Not Adopted');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `room_id` int(11) NOT NULL,
  `orphan_count` varchar(50) NOT NULL,
  `floor` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `supervisor`
--

CREATE TABLE `supervisor` (
  `supervisor_id` int(11) NOT NULL,
  `supervisor_mail` varchar(50) NOT NULL,
  `password` varchar(90) NOT NULL,
  `supervisor_name` varchar(50) NOT NULL,
  `supervisor_phone` varchar(50) NOT NULL,
  `supervisor_salary` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adopter`
--
ALTER TABLE `adopter`
  ADD PRIMARY KEY (`adopter_id`);

--
-- Indexes for table `adoption`
--
ALTER TABLE `adoption`
  ADD PRIMARY KEY (`adoption_id`);

--
-- Indexes for table `adoption_request`
--
ALTER TABLE `adoption_request`
  ADD PRIMARY KEY (`request_id`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`appointment_id`);

--
-- Indexes for table `orphan`
--
ALTER TABLE `orphan`
  ADD PRIMARY KEY (`orphan_id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`room_id`);

--
-- Indexes for table `supervisor`
--
ALTER TABLE `supervisor`
  ADD PRIMARY KEY (`supervisor_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adopter`
--
ALTER TABLE `adopter`
  MODIFY `adopter_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `adoption`
--
ALTER TABLE `adoption`
  MODIFY `adoption_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `adoption_request`
--
ALTER TABLE `adoption_request`
  MODIFY `request_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `appointment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orphan`
--
ALTER TABLE `orphan`
  MODIFY `orphan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `room_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `supervisor`
--
ALTER TABLE `supervisor`
  MODIFY `supervisor_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;