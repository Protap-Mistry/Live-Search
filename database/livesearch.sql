-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 31, 2021 at 06:54 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `livesearch`
--

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `registration` varchar(255) NOT NULL,
  `roll` varchar(255) NOT NULL,
  `session` varchar(255) NOT NULL,
  `batch` varchar(255) NOT NULL,
  `dept` varchar(255) NOT NULL,
  `univ` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `registration`, `roll`, `session`, `batch`, `dept`, `univ`) VALUES
(1, 'Protap Mistry', '110-029-17', '17CSE029', '2016-17', '4th', 'CSE', 'University of Barishal'),
(2, 'Mehedi Hasan Choton', '110-030-17', '17CSE030', '2014-15', '8th', 'Mathematics', 'BU'),
(3, 'Sarwar Hossain', '110-016-17', '17CSE016', '2016-17', '4th', 'Computer Science and Engineering', 'Barishal University'),
(4, 'Md. Taha Hussain', '110-021-17', '17CSE021', '2016-17', '4th', 'CSE', 'University of Barishal'),
(5, 'SK Ali Armaan', '110-033-17', '17CSE033', '2016-17', '4th', 'CSE', 'Barishal University'),
(6, 'Palash Mondal', '110-022-17', '17CSE022', '2016-17', '8th', 'Mathematics', 'University of Barishal');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
