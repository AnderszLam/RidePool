-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 04, 2018 at 07:51 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ridepool`
--

-- --------------------------------------------------------

--
-- Table structure for table `ride_posts`
--

CREATE TABLE `ride_posts` (
  `postID` int(11) NOT NULL,
  `poster` varchar(50) NOT NULL,
  `pickup` text NOT NULL,
  `dest` text NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `price` int(4) NOT NULL,
  `seats` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ride_posts`
--

INSERT INTO `ride_posts` (`postID`, `poster`, `pickup`, `dest`, `date`, `time`, `price`, `seats`) VALUES
(120, '4', 'Wilfrid Laurier University', 'University of Western Ontario', '2018-04-04', '15:00:00', 15, 4),
(134, '4', 'University of Waterloo', 'University of Toronto', '2018-04-04', '16:00:00', 20, 4),
(135, '7', 'University of Waterloo', 'University of Toronto', '2018-04-04', '16:00:00', 15, 4),
(136, '5', 'University of Toronto', 'University of Waterloo', '2018-04-04', '17:00:00', 20, 3),
(137, '6', 'University of Toronto', 'University of Western Ontario', '2018-04-04', '17:30:00', 10, 2),
(138, '5', 'University of Toronto', 'University of Waterloo', '2018-04-05', '12:00:00', 15, 3),
(139, '6', 'Wilfrid Laurier University', 'University of Toronto', '2018-04-05', '13:00:00', 10, 4),
(140, '4', 'University of Waterloo', 'University of Toronto', '2018-04-05', '13:00:00', 15, 4),
(141, '6', 'University of Toronto', 'Wilfrid Laurier University', '2018-04-05', '16:00:00', 15, 3),
(142, '5', 'University of Western Ontario', 'Wilfrid Laurier University', '2018-04-06', '12:00:00', 15, 3),
(143, '5', 'University of Waterloo', 'University of Toronto', '2018-04-06', '12:00:00', 10, 2),
(144, '5', 'Wilfrid Laurier University', 'University of Western Ontario', '2018-04-06', '14:00:00', 10, 1),
(145, '6', 'University of Waterloo', 'University of Western Ontario', '2018-04-06', '15:00:00', 20, 4),
(146, '4', 'University of Toronto', 'Wilfrid Laurier University', '2018-04-07', '16:00:00', 10, 4),
(147, '4', 'Wilfrid Laurier University', 'University of Toronto', '2018-04-07', '13:00:00', 10, 3);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `fname` text NOT NULL,
  `lname` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `fname`, `lname`, `email`, `password`, `phone`) VALUES
(3, 'john', 'john', 'doe', 'john@gmail.com', '202cb962ac59075b964b07152d234b70', '1234567890'),
(4, 'eric', 'Eric', 'Jiang', 'eric@gmail.com', '202cb962ac59075b964b07152d234b70', '9998887777'),
(5, 'Anders', 'Anders', 'Lam', 'anders@website.com', '202cb962ac59075b964b07152d234b70', '6567478383'),
(6, 'Steven', 'Steven', 'Gao', 'steven@laurier.ca', '202cb962ac59075b964b07152d234b70', '0109298383'),
(7, 'Bobqin', 'Bob', 'Qin', 'b0bby@website.ca', '202cb962ac59075b964b07152d234b70', '5678901234');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ride_posts`
--
ALTER TABLE `ride_posts`
  ADD PRIMARY KEY (`postID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ride_posts`
--
ALTER TABLE `ride_posts`
  MODIFY `postID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=148;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
