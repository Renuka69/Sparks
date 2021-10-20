-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 20, 2021 at 05:51 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sparks`
--

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `srno` int(40) NOT NULL,
  `sender` varchar(40) NOT NULL,
  `receiver` varchar(40) NOT NULL,
  `balance` int(40) NOT NULL,
  `datetime` datetime(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`srno`, `sender`, `receiver`, `balance`, `datetime`) VALUES
(1, 'Monica Dilip wanjari', 'ram', 10, '0000-00-00 00:00:00.000000'),
(2, 'sonali jadhav', 'ram', 1000, '0000-00-00 00:00:00.000000'),
(3, 'Monica Dilip wanjari', 'sonali jadhav', 220, '0000-00-00 00:00:00.000000'),
(4, 'sonali jadhav', 'ram', 420, '2021-09-25 21:38:13.228884'),
(5, 'ram', 'Monica Dilip wanjari', 60, '2021-09-25 21:40:39.864330'),
(6, 'suraj', 'ram', 1200, '2021-09-28 11:04:23.533333'),
(7, 'manoj', 'suraj', 420, '2021-09-28 11:11:58.954533'),
(8, 'rohini', 'manoj', 1000, '2021-09-28 21:32:27.219474');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(40) NOT NULL,
  `name` varchar(40) NOT NULL,
  `email` varchar(20) NOT NULL,
  `balance` int(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `balance`) VALUES
(1, 'Monica Dilip wanjari', 'wanjari.monica1998@g', 1030),
(2, 'ram', 'ram@gmail.com', 12570),
(3, 'sonali jadhav', 'Jsonali@gmail.com', 14040),
(4, 'suraj', 'suraj@gmail.com', 45120),
(5, 'manoj', 'manoj@gmail.com', 13070),
(6, 'rohini', 'rohini@gmail.com', 13770);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`srno`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `srno` int(40) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(40) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
