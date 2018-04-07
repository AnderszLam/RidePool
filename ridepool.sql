-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 07, 2018 at 09:56 AM
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
-- Table structure for table `riderlog`
--

CREATE TABLE `riderlog` (
  `logID` int(11) NOT NULL,
  `postID` int(11) NOT NULL,
  `userID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `riderlog`
--

INSERT INTO `riderlog` (`logID`, `postID`, `userID`) VALUES
(4, 150, 8),
(6, 148, 11),
(7, 147, 11),
(8, 155, 11),
(9, 155, 11),
(10, 140, 11),
(11, 155, 4),
(12, 134, 10),
(13, 142, 5),
(14, 152, 7),
(15, 139, 5),
(16, 142, 8),
(17, 140, 5),
(18, 151, 11),
(19, 154, 6),
(20, 154, 9),
(21, 152, 9),
(22, 147, 6),
(23, 146, 4),
(24, 152, 9),
(25, 141, 7),
(26, 144, 8),
(27, 153, 4),
(28, 142, 5),
(29, 145, 7),
(30, 135, 6),
(31, 136, 10),
(32, 148, 6),
(33, 145, 3),
(34, 149, 5),
(35, 152, 9),
(36, 146, 6),
(37, 154, 9),
(38, 150, 5),
(39, 144, 11),
(40, 137, 6),
(41, 134, 9),
(42, 150, 6),
(43, 146, 11),
(44, 139, 3),
(45, 149, 7),
(46, 136, 4),
(47, 139, 3),
(48, 135, 4),
(49, 153, 5),
(50, 135, 11),
(52, 140, 3),
(53, 144, 9),
(54, 147, 3),
(55, 138, 5),
(56, 149, 5),
(57, 148, 3),
(58, 142, 9),
(59, 138, 4),
(60, 145, 11),
(61, 153, 9),
(62, 149, 10),
(63, 146, 7),
(64, 138, 7),
(65, 148, 10),
(66, 155, 6),
(67, 154, 11),
(68, 146, 7),
(70, 153, 6),
(71, 147, 10),
(72, 149, 7),
(73, 149, 6),
(74, 139, 8),
(75, 155, 4),
(76, 151, 5),
(77, 140, 10),
(78, 152, 11),
(80, 171, 5),
(111, 148, 5),
(124, 155, 7);

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
(140, '4', 'University of Waterloo', 'University of Toronto', '2018-04-05', '13:00:00', 15, 3),
(141, '6', 'University of Toronto', 'Wilfrid Laurier University', '2018-04-05', '16:00:00', 15, 3),
(142, '5', 'University of Western Ontario', 'Wilfrid Laurier University', '2018-04-06', '12:00:00', 15, 3),
(143, '5', 'University of Waterloo', 'University of Toronto', '2018-04-06', '12:00:00', 10, 2),
(144, '5', 'Wilfrid Laurier University', 'University of Western Ontario', '2018-04-06', '14:00:00', 10, 1),
(145, '6', 'University of Waterloo', 'University of Western Ontario', '2018-04-06', '15:00:00', 20, 4),
(146, '4', 'University of Toronto', 'Wilfrid Laurier University', '2018-04-07', '16:00:00', 10, 4),
(147, '4', 'Wilfrid Laurier University', 'University of Toronto', '2018-04-07', '13:00:00', 10, 2),
(148, '8', 'Wilfrid Laurier University', 'University of Toronto', '2018-04-04', '13:00:00', 10, 1),
(149, '8', 'Wilfrid Laurier University', 'University of Toronto', '2018-04-04', '17:00:00', 10, 0),
(150, '8', 'Wilfrid Laurier University', 'University of Toronto', '2018-04-04', '20:00:00', 20, 1),
(151, '4', 'Wilfrid Laurier University', 'University of Western Ontario', '2018-04-04', '12:00:00', 10, 0),
(152, '10', 'Wilfrid Laurier University', 'University of Western Ontario', '2018-04-05', '15:00:00', 10, 0),
(153, '11', 'Wilfrid Laurier University', 'Wilfrid Laurier University', '2018-04-07', '12:00:00', 10, 1),
(154, '11', 'Wilfrid Laurier University', 'University of Toronto', '2018-04-06', '17:00:00', 10, 0),
(155, '11', 'Wilfrid Laurier University', 'University of Toronto', '2018-04-07', '12:00:00', 10, 1),
(159, '5', 'University of Waterloo', 'University of Western Ontario', '2018-04-07', '20:30:55', 15, 3),
(161, '5', 'Wilfrid Laurier University', 'University of Waterloo', '2018-04-07', '16:04:08', 15, 1),
(162, '9', 'University of Waterloo', 'Wilfrid Laurier University', '2018-04-07', '18:50:43', 15, 4),
(165, '6', 'University of Western Ontario', 'University of Toronto', '2018-04-07', '20:12:22', 10, 4),
(169, '6', 'University of Western Ontario', 'University of Toronto', '2018-04-07', '14:23:27', 12, 1),
(170, '8', 'Wilfrid Laurier University', 'Wilfrid Laurier University', '2018-04-07', '22:37:37', 13, 4),
(171, '10', 'Wilfrid Laurier University', 'University of Waterloo', '2018-04-07', '15:15:40', 14, 2),
(172, '7', 'University of Waterloo', 'University of Toronto', '2018-04-07', '12:00:23', 15, 2),
(181, '7', 'Wilfrid Laurier University', 'University of Western Ontario', '2018-04-07', '20:15:52', 20, 4),
(184, '10', 'Wilfrid Laurier University', 'Wilfrid Laurier University', '2018-04-07', '17:17:26', 10, 2),
(187, '9', 'University of Waterloo', 'Wilfrid Laurier University', '2018-04-07', '14:20:37', 15, 4),
(190, '3', 'University of Western Ontario', 'University of Waterloo', '2018-04-07', '17:12:59', 20, 2),
(191, '4', 'University of Western Ontario', 'Wilfrid Laurier University', '2018-04-07', '09:24:19', 10, 2),
(194, '9', 'University of Toronto', 'Wilfrid Laurier University', '2018-04-07', '17:44:57', 13, 1),
(195, '10', 'Wilfrid Laurier University', 'Wilfrid Laurier University', '2018-04-07', '19:23:11', 14, 2),
(198, '9', 'University of Toronto', 'University of Waterloo', '2018-04-07', '16:45:37', 17, 4),
(211, '8', 'University of Waterloo', 'University of Waterloo', '2018-04-08', '21:36:20', 20, 3),
(213, '6', 'Wilfrid Laurier University', 'University of Toronto', '2018-04-08', '20:57:45', 18, 2),
(214, '11', 'Wilfrid Laurier University', 'University of Waterloo', '2018-04-08', '17:52:34', 11, 4),
(217, '6', 'University of Western Ontario', 'University of Western Ontario', '2018-04-08', '14:41:38', 20, 1),
(219, '5', 'Wilfrid Laurier University', 'University of Toronto', '2018-04-08', '14:01:39', 10, 2),
(220, '4', 'University of Waterloo', 'University of Waterloo', '2018-04-08', '09:09:17', 13, 2),
(226, '4', 'University of Waterloo', 'University of Western Ontario', '2018-04-08', '11:14:47', 13, 3),
(235, '9', 'University of Toronto', 'University of Western Ontario', '2018-04-08', '14:08:03', 18, 1),
(241, '8', 'Wilfrid Laurier University', 'University of Western Ontario', '2018-04-08', '09:45:53', 15, 2),
(242, '9', 'University of Western Ontario', 'University of Waterloo', '2018-04-08', '10:30:54', 12, 2),
(248, '7', 'University of Waterloo', 'Wilfrid Laurier University', '2018-04-08', '20:16:22', 19, 3),
(250, '6', 'Wilfrid Laurier University', 'University of Western Ontario', '2018-04-08', '11:16:42', 10, 1),
(254, '8', 'University of Toronto', 'Wilfrid Laurier University', '2018-04-08', '13:24:09', 18, 4),
(256, '9', 'University of Waterloo', 'University of Western Ontario', '2018-04-08', '09:01:19', 12, 3),
(268, '3', 'University of Toronto', 'Wilfrid Laurier University', '2018-04-08', '20:23:09', 13, 4),
(274, '6', 'University of Toronto', 'University of Toronto', '2018-04-08', '20:22:41', 18, 2),
(277, '8', 'Wilfrid Laurier University', 'University of Western Ontario', '2018-04-08', '20:31:30', 11, 4),
(279, '6', 'Wilfrid Laurier University', 'Wilfrid Laurier University', '2018-04-08', '21:58:05', 12, 3),
(281, '11', 'Wilfrid Laurier University', 'University of Western Ontario', '2018-04-08', '18:00:39', 16, 3),
(282, '7', 'Wilfrid Laurier University', 'Wilfrid Laurier University', '2018-04-08', '18:53:09', 15, 3),
(283, '9', 'University of Waterloo', 'University of Toronto', '2018-04-08', '11:28:24', 14, 2),
(285, '8', 'University of Toronto', 'University of Western Ontario', '2018-04-08', '14:16:14', 11, 3),
(289, '5', 'University of Western Ontario', 'University of Toronto', '2018-04-08', '14:38:13', 15, 1),
(294, '10', 'University of Toronto', 'University of Toronto', '2018-04-08', '16:23:34', 10, 1),
(295, '11', 'University of Waterloo', 'University of Toronto', '2018-04-08', '09:56:29', 17, 4),
(300, '7', 'Wilfrid Laurier University', 'University of Toronto', '2018-04-08', '09:04:43', 11, 3),
(302, '7', 'Wilfrid Laurier University', 'University of Western Ontario', '2018-04-08', '20:51:32', 14, 4),
(315, '10', 'University of Waterloo', 'University of Toronto', '2018-04-08', '22:35:39', 10, 4),
(319, '8', 'University of Toronto', 'University of Western Ontario', '2018-04-08', '11:36:49', 11, 2),
(320, '4', 'University of Toronto', 'Wilfrid Laurier University', '2018-04-08', '17:48:02', 10, 2),
(321, '6', 'Wilfrid Laurier University', 'Wilfrid Laurier University', '2018-04-08', '22:55:08', 12, 4),
(323, '8', 'University of Western Ontario', 'University of Western Ontario', '2018-04-08', '21:30:58', 15, 2),
(324, '8', 'University of Western Ontario', 'Wilfrid Laurier University', '2018-04-08', '18:55:16', 11, 4),
(327, '4', 'University of Toronto', 'University of Western Ontario', '2018-04-08', '13:17:26', 10, 2),
(332, '7', 'University of Western Ontario', 'University of Toronto', '2018-04-08', '19:42:56', 11, 4),
(334, '5', 'University of Toronto', 'Wilfrid Laurier University', '2018-04-08', '12:56:02', 16, 4),
(337, '10', 'University of Waterloo', 'University of Western Ontario', '2018-04-08', '15:42:13', 19, 3),
(338, '5', 'University of Waterloo', 'Wilfrid Laurier University', '2018-04-08', '15:28:02', 20, 3),
(341, '4', 'University of Western Ontario', 'University of Western Ontario', '2018-04-08', '19:39:39', 13, 2),
(344, '10', 'University of Toronto', 'University of Waterloo', '2018-04-08', '10:36:54', 10, 2),
(351, '8', 'University of Waterloo', 'University of Waterloo', '2018-04-08', '17:44:58', 11, 1),
(352, '9', 'University of Waterloo', 'University of Toronto', '2018-04-08', '16:20:07', 16, 1),
(354, '7', 'University of Waterloo', 'University of Waterloo', '2018-04-08', '20:47:33', 16, 3),
(357, '4', 'University of Waterloo', 'University of Waterloo', '2018-04-09', '20:12:40', 18, 1),
(358, '8', 'Wilfrid Laurier University', 'University of Toronto', '2018-04-09', '13:09:42', 16, 3),
(360, '8', 'University of Waterloo', 'Wilfrid Laurier University', '2018-04-09', '16:59:27', 15, 3),
(362, '3', 'University of Waterloo', 'University of Western Ontario', '2018-04-09', '11:52:14', 10, 1),
(363, '4', 'University of Western Ontario', 'University of Toronto', '2018-04-09', '17:32:27', 12, 2),
(364, '6', 'University of Toronto', 'University of Western Ontario', '2018-04-09', '10:39:54', 19, 3),
(365, '3', 'University of Western Ontario', 'University of Toronto', '2018-04-09', '19:19:54', 16, 4),
(370, '3', 'Wilfrid Laurier University', 'University of Western Ontario', '2018-04-09', '20:33:32', 17, 3),
(372, '5', 'University of Western Ontario', 'University of Western Ontario', '2018-04-09', '16:26:55', 14, 2),
(380, '11', 'University of Toronto', 'University of Waterloo', '2018-04-09', '17:02:04', 20, 4),
(384, '3', 'University of Toronto', 'University of Western Ontario', '2018-04-09', '15:20:33', 15, 3),
(389, '11', 'University of Western Ontario', 'University of Toronto', '2018-04-09', '11:58:17', 15, 3),
(391, '11', 'University of Western Ontario', 'University of Western Ontario', '2018-04-09', '10:49:59', 13, 2),
(399, '6', 'University of Western Ontario', 'University of Toronto', '2018-04-09', '16:38:21', 11, 4),
(405, '6', 'University of Toronto', 'University of Toronto', '2018-04-09', '14:57:31', 14, 1),
(410, '8', 'University of Western Ontario', 'University of Western Ontario', '2018-04-09', '14:40:44', 12, 1),
(411, '6', 'Wilfrid Laurier University', 'Wilfrid Laurier University', '2018-04-09', '11:57:53', 15, 1),
(413, '3', 'Wilfrid Laurier University', 'University of Toronto', '2018-04-09', '19:06:01', 12, 3),
(414, '5', 'University of Western Ontario', 'Wilfrid Laurier University', '2018-04-09', '10:56:43', 16, 2),
(415, '9', 'University of Waterloo', 'University of Waterloo', '2018-04-09', '18:30:44', 17, 4),
(416, '4', 'University of Waterloo', 'University of Toronto', '2018-04-09', '18:01:08', 17, 3),
(427, '6', 'Wilfrid Laurier University', 'Wilfrid Laurier University', '2018-04-09', '13:03:59', 11, 2),
(429, '7', 'University of Waterloo', 'University of Waterloo', '2018-04-09', '11:50:47', 15, 1),
(433, '3', 'University of Waterloo', 'University of Western Ontario', '2018-04-09', '18:19:16', 11, 2),
(439, '8', 'Wilfrid Laurier University', 'University of Toronto', '2018-04-09', '09:43:05', 12, 2),
(441, '3', 'University of Waterloo', 'Wilfrid Laurier University', '2018-04-09', '22:35:31', 14, 3),
(443, '3', 'University of Waterloo', 'University of Toronto', '2018-04-09', '16:54:17', 18, 2),
(450, '9', 'University of Waterloo', 'University of Toronto', '2018-04-09', '22:21:42', 17, 3),
(453, '3', 'University of Toronto', 'University of Toronto', '2018-04-09', '20:46:39', 19, 1),
(461, '7', 'Wilfrid Laurier University', 'University of Western Ontario', '2018-04-09', '13:13:13', 17, 3),
(462, '6', 'University of Toronto', 'University of Toronto', '2018-04-09', '17:41:34', 11, 4),
(463, '6', 'University of Western Ontario', 'Wilfrid Laurier University', '2018-04-09', '09:39:44', 11, 3),
(468, '3', 'University of Toronto', 'University of Western Ontario', '2018-04-09', '14:45:31', 17, 1),
(472, '5', 'University of Waterloo', 'Wilfrid Laurier University', '2018-04-09', '20:58:25', 15, 1),
(473, '4', 'University of Toronto', 'University of Western Ontario', '2018-04-09', '09:51:29', 14, 4),
(477, '3', 'University of Waterloo', 'Wilfrid Laurier University', '2018-04-09', '22:01:12', 15, 3),
(478, '8', 'University of Toronto', 'Wilfrid Laurier University', '2018-04-09', '14:38:33', 18, 4),
(486, '11', 'University of Western Ontario', 'University of Toronto', '2018-04-09', '14:01:00', 11, 3),
(488, '6', 'University of Western Ontario', 'University of Toronto', '2018-04-09', '09:40:11', 20, 2),
(494, '9', 'University of Waterloo', 'University of Western Ontario', '2018-04-09', '10:31:16', 18, 4),
(495, '8', 'University of Toronto', 'University of Waterloo', '2018-04-09', '22:24:43', 19, 3),
(501, '9', 'Wilfrid Laurier University', 'Wilfrid Laurier University', '2018-04-09', '10:53:47', 17, 1),
(503, '10', 'University of Western Ontario', 'University of Toronto', '2018-04-09', '17:37:34', 16, 1),
(505, '9', 'Wilfrid Laurier University', 'University of Western Ontario', '2018-04-09', '10:28:11', 18, 2),
(506, '5', 'University of Western Ontario', 'University of Toronto', '2018-04-09', '22:29:18', 10, 4),
(507, '8', 'University of Western Ontario', 'University of Western Ontario', '2018-04-09', '10:22:55', 14, 1),
(510, '5', 'University of Western Ontario', 'University of Waterloo', '2018-04-10', '10:37:25', 13, 2),
(512, '10', 'University of Toronto', 'University of Western Ontario', '2018-04-10', '16:54:13', 12, 1),
(522, '9', 'University of Toronto', 'University of Western Ontario', '2018-04-10', '18:32:31', 17, 3),
(524, '6', 'University of Toronto', 'University of Western Ontario', '2018-04-10', '22:25:57', 11, 3),
(525, '9', 'Wilfrid Laurier University', 'Wilfrid Laurier University', '2018-04-10', '20:21:18', 20, 1),
(530, '4', 'University of Western Ontario', 'University of Waterloo', '2018-04-10', '21:57:26', 15, 1),
(531, '6', 'University of Waterloo', 'University of Toronto', '2018-04-10', '14:17:17', 15, 4),
(532, '6', 'University of Waterloo', 'Wilfrid Laurier University', '2018-04-10', '14:34:10', 13, 2),
(539, '4', 'University of Western Ontario', 'University of Waterloo', '2018-04-10', '09:03:50', 11, 4),
(540, '6', 'University of Western Ontario', 'University of Waterloo', '2018-04-10', '15:25:53', 13, 2),
(542, '11', 'University of Waterloo', 'University of Toronto', '2018-04-10', '11:06:57', 15, 4),
(543, '5', 'University of Toronto', 'Wilfrid Laurier University', '2018-04-10', '22:18:16', 19, 2),
(547, '5', 'University of Toronto', 'University of Waterloo', '2018-04-10', '16:40:20', 12, 3),
(548, '8', 'University of Western Ontario', 'Wilfrid Laurier University', '2018-04-10', '19:40:06', 18, 3),
(553, '4', 'University of Western Ontario', 'Wilfrid Laurier University', '2018-04-10', '22:18:09', 17, 3),
(557, '3', 'University of Waterloo', 'University of Waterloo', '2018-04-10', '19:36:33', 16, 4),
(562, '8', 'University of Western Ontario', 'University of Toronto', '2018-04-10', '21:01:31', 11, 4),
(567, '7', 'Wilfrid Laurier University', 'University of Toronto', '2018-04-10', '15:23:24', 18, 3),
(575, '10', 'University of Western Ontario', 'University of Toronto', '2018-04-10', '18:50:08', 10, 4),
(578, '4', 'University of Western Ontario', 'Wilfrid Laurier University', '2018-04-10', '18:51:27', 20, 2),
(580, '5', 'University of Western Ontario', 'University of Western Ontario', '2018-04-10', '21:11:33', 13, 2),
(581, '3', 'University of Toronto', 'University of Toronto', '2018-04-10', '11:22:58', 14, 4),
(586, '3', 'Wilfrid Laurier University', 'Wilfrid Laurier University', '2018-04-10', '18:23:20', 17, 3),
(587, '4', 'Wilfrid Laurier University', 'Wilfrid Laurier University', '2018-04-10', '13:25:37', 17, 4),
(593, '7', 'University of Toronto', 'University of Western Ontario', '2018-04-10', '20:34:52', 15, 4),
(596, '5', 'University of Waterloo', 'University of Western Ontario', '2018-04-10', '14:51:57', 12, 2),
(601, '5', 'University of Waterloo', 'Wilfrid Laurier University', '2018-04-10', '14:36:21', 18, 1),
(602, '10', 'University of Waterloo', 'University of Toronto', '2018-04-10', '12:34:58', 16, 2),
(604, '8', 'University of Waterloo', 'University of Toronto', '2018-04-10', '09:03:09', 18, 3),
(605, '5', 'Wilfrid Laurier University', 'Wilfrid Laurier University', '2018-04-10', '19:51:51', 17, 4),
(606, '6', 'University of Waterloo', 'University of Toronto', '2018-04-10', '12:04:06', 20, 1),
(607, '3', 'University of Waterloo', 'University of Western Ontario', '2018-04-10', '22:01:37', 17, 3),
(608, '9', 'Wilfrid Laurier University', 'University of Western Ontario', '2018-04-10', '22:44:32', 10, 1),
(609, '8', 'University of Western Ontario', 'University of Western Ontario', '2018-04-10', '21:24:07', 10, 1),
(610, '11', 'University of Waterloo', 'University of Waterloo', '2018-04-10', '15:09:34', 10, 2),
(622, '8', 'University of Toronto', 'Wilfrid Laurier University', '2018-04-10', '18:47:52', 17, 1),
(624, '5', 'University of Waterloo', 'Wilfrid Laurier University', '2018-04-10', '14:44:30', 14, 4),
(625, '10', 'Wilfrid Laurier University', 'Wilfrid Laurier University', '2018-04-10', '18:13:11', 13, 3),
(626, '9', 'University of Waterloo', 'University of Western Ontario', '2018-04-10', '19:58:58', 15, 4),
(634, '3', 'University of Toronto', 'University of Waterloo', '2018-04-10', '20:41:22', 18, 2),
(635, '6', 'Wilfrid Laurier University', 'University of Western Ontario', '2018-04-10', '21:28:22', 16, 4),
(648, '6', 'University of Waterloo', 'Wilfrid Laurier University', '2018-04-10', '21:15:47', 13, 4),
(655, '10', 'University of Toronto', 'University of Western Ontario', '2018-04-10', '09:58:47', 12, 2),
(657, '6', 'University of Western Ontario', 'University of Waterloo', '2018-04-10', '18:50:16', 18, 3),
(659, '4', 'University of Toronto', 'University of Toronto', '2018-04-10', '13:07:44', 17, 3),
(660, '7', 'University of Waterloo', 'University of Waterloo', '2018-04-11', '20:16:46', 18, 3),
(669, '8', 'University of Western Ontario', 'Wilfrid Laurier University', '2018-04-11', '20:29:59', 17, 2),
(673, '7', 'Wilfrid Laurier University', 'University of Toronto', '2018-04-11', '13:24:26', 13, 2),
(675, '9', 'University of Toronto', 'University of Toronto', '2018-04-11', '09:56:54', 14, 3),
(676, '8', 'Wilfrid Laurier University', 'University of Western Ontario', '2018-04-11', '11:12:59', 18, 4),
(683, '4', 'University of Western Ontario', 'University of Waterloo', '2018-04-11', '21:53:39', 14, 4),
(687, '5', 'University of Western Ontario', 'Wilfrid Laurier University', '2018-04-11', '14:59:13', 16, 2),
(690, '11', 'University of Waterloo', 'University of Waterloo', '2018-04-11', '09:20:10', 20, 2),
(694, '5', 'University of Waterloo', 'University of Toronto', '2018-04-11', '15:07:14', 14, 2),
(695, '5', 'Wilfrid Laurier University', 'University of Waterloo', '2018-04-11', '10:47:35', 20, 4),
(696, '3', 'University of Western Ontario', 'University of Waterloo', '2018-04-11', '15:06:09', 14, 2),
(697, '11', 'University of Toronto', 'Wilfrid Laurier University', '2018-04-11', '18:49:41', 18, 3),
(698, '5', 'University of Toronto', 'University of Waterloo', '2018-04-11', '18:13:08', 12, 3),
(703, '3', 'Wilfrid Laurier University', 'University of Waterloo', '2018-04-11', '17:09:22', 16, 4),
(706, '10', 'University of Toronto', 'University of Toronto', '2018-04-11', '13:27:02', 18, 1),
(708, '6', 'University of Waterloo', 'University of Toronto', '2018-04-11', '22:11:16', 16, 4),
(710, '9', 'University of Toronto', 'University of Waterloo', '2018-04-11', '21:59:39', 19, 2),
(711, '10', 'University of Western Ontario', 'Wilfrid Laurier University', '2018-04-11', '16:26:41', 15, 4),
(713, '6', 'University of Waterloo', 'University of Toronto', '2018-04-11', '22:10:55', 18, 2),
(714, '6', 'University of Western Ontario', 'University of Toronto', '2018-04-11', '19:26:45', 16, 2),
(718, '6', 'Wilfrid Laurier University', 'University of Waterloo', '2018-04-11', '14:43:40', 11, 2),
(719, '3', 'University of Waterloo', 'University of Toronto', '2018-04-11', '17:59:44', 18, 3),
(723, '9', 'University of Western Ontario', 'Wilfrid Laurier University', '2018-04-11', '14:34:28', 10, 4),
(732, '9', 'University of Western Ontario', 'University of Western Ontario', '2018-04-11', '19:58:29', 13, 2),
(734, '9', 'University of Toronto', 'University of Western Ontario', '2018-04-11', '20:39:44', 16, 4),
(735, '3', 'University of Toronto', 'University of Waterloo', '2018-04-11', '11:32:55', 12, 2),
(739, '5', 'University of Western Ontario', 'University of Toronto', '2018-04-11', '15:55:45', 18, 3),
(740, '9', 'University of Waterloo', 'Wilfrid Laurier University', '2018-04-11', '15:00:04', 16, 2),
(741, '3', 'Wilfrid Laurier University', 'Wilfrid Laurier University', '2018-04-11', '12:19:21', 11, 2),
(742, '10', 'University of Toronto', 'University of Waterloo', '2018-04-11', '19:21:40', 13, 1),
(746, '9', 'Wilfrid Laurier University', 'University of Western Ontario', '2018-04-11', '15:10:19', 17, 3),
(747, '6', 'University of Western Ontario', 'University of Toronto', '2018-04-11', '20:18:15', 14, 3),
(750, '10', 'University of Waterloo', 'Wilfrid Laurier University', '2018-04-11', '18:57:41', 18, 4),
(752, '11', 'University of Toronto', 'University of Toronto', '2018-04-11', '19:57:11', 12, 2),
(755, '8', 'Wilfrid Laurier University', 'University of Waterloo', '2018-04-11', '22:52:38', 10, 2),
(757, '11', 'Wilfrid Laurier University', 'University of Toronto', '2018-04-11', '13:40:21', 19, 2),
(758, '4', 'University of Toronto', 'University of Toronto', '2018-04-11', '18:59:55', 10, 2),
(761, '5', 'University of Toronto', 'University of Waterloo', '2018-04-11', '16:03:51', 20, 4),
(763, '5', 'Wilfrid Laurier University', 'University of Waterloo', '2018-04-11', '14:09:58', 14, 2),
(767, '9', 'University of Western Ontario', 'University of Western Ontario', '2018-04-11', '18:29:25', 14, 2),
(768, '8', 'University of Waterloo', 'Wilfrid Laurier University', '2018-04-11', '09:42:45', 20, 4),
(770, '9', 'University of Toronto', 'University of Western Ontario', '2018-04-11', '18:30:31', 12, 2),
(771, '8', 'University of Toronto', 'University of Western Ontario', '2018-04-11', '09:30:35', 12, 2),
(772, '9', 'University of Waterloo', 'University of Western Ontario', '2018-04-11', '19:57:01', 14, 4),
(774, '4', 'University of Western Ontario', 'University of Toronto', '2018-04-11', '22:20:56', 10, 3),
(780, '4', 'University of Western Ontario', 'Wilfrid Laurier University', '2018-04-11', '17:28:37', 10, 4),
(782, '7', 'University of Western Ontario', 'Wilfrid Laurier University', '2018-04-11', '11:30:44', 10, 3),
(784, '6', 'University of Waterloo', 'Wilfrid Laurier University', '2018-04-11', '21:15:18', 12, 3),
(789, '9', 'University of Toronto', 'University of Western Ontario', '2018-04-11', '14:56:15', 17, 4),
(790, '4', 'University of Western Ontario', 'Wilfrid Laurier University', '2018-04-11', '19:01:38', 15, 2),
(792, '11', 'Wilfrid Laurier University', 'University of Western Ontario', '2018-04-11', '21:36:34', 10, 4),
(796, '9', 'Wilfrid Laurier University', 'University of Toronto', '2018-04-11', '14:10:58', 18, 4),
(797, '3', 'Wilfrid Laurier University', 'University of Western Ontario', '2018-04-11', '18:55:38', 19, 4),
(809, '5', 'University of Toronto', 'Wilfrid Laurier University', '2018-04-11', '11:32:10', 20, 4),
(812, '8', 'University of Toronto', 'University of Waterloo', '2018-04-12', '09:50:03', 13, 3),
(814, '10', 'Wilfrid Laurier University', 'University of Waterloo', '2018-04-12', '19:16:06', 17, 2),
(815, '4', 'University of Toronto', 'Wilfrid Laurier University', '2018-04-12', '20:40:21', 19, 1),
(816, '4', 'Wilfrid Laurier University', 'University of Western Ontario', '2018-04-12', '21:45:58', 11, 1),
(823, '3', 'University of Toronto', 'Wilfrid Laurier University', '2018-04-12', '21:38:14', 13, 2),
(826, '8', 'University of Toronto', 'University of Toronto', '2018-04-12', '10:59:02', 14, 2),
(829, '10', 'Wilfrid Laurier University', 'University of Toronto', '2018-04-12', '10:13:36', 19, 4),
(832, '8', 'University of Toronto', 'University of Western Ontario', '2018-04-12', '15:47:44', 13, 4),
(834, '3', 'University of Waterloo', 'University of Western Ontario', '2018-04-12', '11:28:14', 19, 3),
(836, '9', 'University of Waterloo', 'Wilfrid Laurier University', '2018-04-12', '18:53:01', 12, 4),
(838, '11', 'University of Toronto', 'Wilfrid Laurier University', '2018-04-12', '17:14:57', 18, 1),
(840, '4', 'University of Western Ontario', 'Wilfrid Laurier University', '2018-04-12', '14:24:40', 15, 3),
(844, '3', 'Wilfrid Laurier University', 'University of Waterloo', '2018-04-12', '09:48:14', 12, 4),
(849, '3', 'University of Waterloo', 'University of Waterloo', '2018-04-12', '21:13:24', 14, 3),
(850, '6', 'University of Toronto', 'Wilfrid Laurier University', '2018-04-12', '11:42:27', 10, 4),
(851, '8', 'University of Waterloo', 'University of Toronto', '2018-04-12', '14:54:36', 14, 3),
(856, '9', 'Wilfrid Laurier University', 'Wilfrid Laurier University', '2018-04-12', '15:56:12', 17, 1),
(857, '9', 'Wilfrid Laurier University', 'University of Waterloo', '2018-04-12', '16:04:09', 20, 4),
(862, '4', 'University of Waterloo', 'University of Waterloo', '2018-04-12', '12:13:36', 17, 2),
(865, '10', 'University of Western Ontario', 'University of Toronto', '2018-04-12', '18:15:48', 17, 1),
(869, '11', 'University of Toronto', 'University of Toronto', '2018-04-12', '18:11:07', 17, 1),
(870, '10', 'University of Toronto', 'University of Toronto', '2018-04-12', '14:15:40', 13, 2),
(871, '5', 'Wilfrid Laurier University', 'University of Waterloo', '2018-04-12', '16:56:19', 16, 1),
(872, '8', 'University of Waterloo', 'University of Toronto', '2018-04-12', '19:07:54', 13, 4),
(873, '5', 'University of Western Ontario', 'Wilfrid Laurier University', '2018-04-12', '20:32:10', 14, 1),
(877, '3', 'Wilfrid Laurier University', 'University of Western Ontario', '2018-04-12', '15:15:03', 18, 2),
(880, '6', 'Wilfrid Laurier University', 'Wilfrid Laurier University', '2018-04-12', '19:03:48', 13, 2),
(885, '11', 'Wilfrid Laurier University', 'University of Waterloo', '2018-04-12', '13:11:17', 19, 1),
(888, '10', 'University of Waterloo', 'University of Western Ontario', '2018-04-12', '09:51:10', 16, 2),
(889, '7', 'University of Toronto', 'University of Waterloo', '2018-04-12', '17:22:48', 12, 2),
(891, '6', 'University of Waterloo', 'University of Western Ontario', '2018-04-12', '18:30:54', 17, 2),
(892, '3', 'University of Western Ontario', 'University of Western Ontario', '2018-04-12', '09:48:01', 19, 2),
(900, '3', 'University of Western Ontario', 'University of Toronto', '2018-04-12', '22:18:21', 13, 1),
(904, '11', 'Wilfrid Laurier University', 'Wilfrid Laurier University', '2018-04-12', '21:44:06', 18, 1),
(907, '6', 'University of Western Ontario', 'University of Western Ontario', '2018-04-12', '11:18:09', 12, 2),
(909, '5', 'University of Waterloo', 'University of Toronto', '2018-04-12', '15:11:37', 10, 1),
(910, '3', 'University of Toronto', 'Wilfrid Laurier University', '2018-04-12', '18:11:47', 11, 2),
(911, '5', 'Wilfrid Laurier University', 'University of Toronto', '2018-04-12', '13:09:56', 12, 4),
(913, '9', 'University of Waterloo', 'University of Waterloo', '2018-04-12', '22:38:31', 10, 2),
(915, '4', 'University of Toronto', 'Wilfrid Laurier University', '2018-04-12', '16:00:29', 15, 2),
(918, '5', 'University of Toronto', 'University of Waterloo', '2018-04-12', '12:34:34', 15, 1),
(921, '5', 'Wilfrid Laurier University', 'University of Waterloo', '2018-04-12', '20:32:35', 19, 1),
(930, '9', 'Wilfrid Laurier University', 'University of Western Ontario', '2018-04-12', '21:12:01', 12, 4),
(931, '3', 'University of Waterloo', 'University of Toronto', '2018-04-12', '18:23:56', 12, 2),
(932, '8', 'University of Western Ontario', 'University of Toronto', '2018-04-12', '11:40:42', 13, 2),
(937, '5', 'University of Waterloo', 'Wilfrid Laurier University', '2018-04-12', '20:11:43', 20, 4),
(940, '4', 'Wilfrid Laurier University', 'Wilfrid Laurier University', '2018-04-12', '09:35:15', 14, 2),
(942, '3', 'University of Toronto', 'University of Toronto', '2018-04-12', '20:52:12', 18, 2),
(943, '11', 'University of Western Ontario', 'University of Western Ontario', '2018-04-12', '19:37:09', 16, 3),
(945, '7', 'Wilfrid Laurier University', 'University of Western Ontario', '2018-04-12', '21:55:20', 13, 2),
(947, '6', 'University of Toronto', 'Wilfrid Laurier University', '2018-04-12', '15:20:47', 18, 4),
(950, '11', 'Wilfrid Laurier University', 'Wilfrid Laurier University', '2018-04-12', '12:16:34', 20, 2),
(952, '8', 'University of Toronto', 'Wilfrid Laurier University', '2018-04-12', '09:33:34', 18, 2),
(954, '7', 'Wilfrid Laurier University', 'Wilfrid Laurier University', '2018-04-12', '20:52:18', 16, 4),
(956, '3', 'University of Waterloo', 'University of Western Ontario', '2018-04-12', '21:32:46', 14, 2),
(959, '8', 'University of Waterloo', 'University of Waterloo', '2018-04-12', '15:50:34', 12, 3),
(960, '11', 'University of Toronto', 'University of Toronto', '2018-04-12', '20:36:05', 18, 2),
(964, '3', 'University of Waterloo', 'University of Western Ontario', '2018-04-12', '17:07:07', 10, 1);

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
(7, 'Bobqin', 'Bob', 'Qin', 'b0bby@website.ca', '202cb962ac59075b964b07152d234b70', '5678901234'),
(8, 'Sam', 'Sam', 'Woo', 'sam@website.com', '202cb962ac59075b964b07152d234b70', '12324657890'),
(9, 'Tom', 'Tom', 'Don', 'tom@website.ca', '202cb962ac59075b964b07152d234b70', '12312321233'),
(10, 'tommy', 'Tommy', 'Tommy', 'tommy@laurier.ca', '202cb962ac59075b964b07152d234b70', '1231231234'),
(11, 'Dave', 'Dave', 'Johnson', 'dave@laurier.ca', '70b9f55c5b2ab6ab9e5a3fed086f1ce7', '4167642309');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `riderlog`
--
ALTER TABLE `riderlog`
  ADD PRIMARY KEY (`logID`);

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
-- AUTO_INCREMENT for table `riderlog`
--
ALTER TABLE `riderlog`
  MODIFY `logID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT for table `ride_posts`
--
ALTER TABLE `ride_posts`
  MODIFY `postID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=965;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
