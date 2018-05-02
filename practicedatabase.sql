-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 26, 2017 at 10:58 AM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `practicedatabase`
--

-- --------------------------------------------------------

--
-- Table structure for table `database`
--

CREATE TABLE `database` (
  `id` int(9) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `id` int(11) NOT NULL,
  `food` varchar(25) NOT NULL,
  `calories` int(11) NOT NULL,
  `healthy_unhealthy` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`id`, `food`, `calories`, `healthy_unhealthy`) VALUES
(1, 'PIZZA', 1000, 'u'),
(2, 'SALAD', 200, 'h');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `text` varchar(200) NOT NULL,
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `from` varchar(30) NOT NULL,
  `to` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `text`, `time`, `from`, `to`) VALUES
(1, 'xckzjhdkjvhd', '2017-04-11 19:56:01', 'a', 'a'),
(2, 'sdmfsjdm', '2017-04-11 19:57:04', 'r', 'a'),
(3, 'jahdsfj', '2017-04-11 19:57:29', 'a', 'r'),
(4, 'jahdsfj', '2017-04-11 20:06:32', 'a', 'r'),
(5, 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', '2017-04-11 20:10:24', 'a', 'a'),
(6, 'hey', '2017-04-11 22:12:45', 'a', 'r'),
(7, 'sdjkfnsdkfdfvkd\r\nsdfkjlfga\r\ndshfkj', '2017-04-11 22:13:17', 'a', 'r'),
(8, 'sdkjfhksjd', '2017-04-11 22:13:34', 'a', 'r'),
(9, 'rsdfsdfaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', '2017-04-11 22:34:49', 'r', 'r'),
(10, 'hey', '2017-04-12 01:03:45', 'a', 'r'),
(11, 'common', '2017-04-12 01:05:23', 'r', 'a'),
(12, 'kjsdfhjkdsfs', '2017-04-12 01:09:53', 'r', 'a'),
(13, 'finally', '2017-04-12 11:01:10', 'r', 'a'),
(14, 'klnskdjna', '2017-04-12 11:03:35', 'r', 'a'),
(15, 'hey user', '2017-04-12 11:10:32', 'a', 'lexi'),
(16, 'hi', '2017-04-12 11:10:49', 'lexi', 'a'),
(17, 'sdmnf', '2017-04-12 11:35:57', 'a', 'a'),
(18, 'hey', '2017-04-12 11:41:48', 'a', 'a'),
(19, 'hey', '2017-04-12 11:43:03', 'a', 'a'),
(20, 'hey', '2017-04-12 11:43:24', 'a', 'r'),
(21, 'kjsd', '2017-04-12 12:07:04', 'a', 'a'),
(22, 'ksjdhf', '2017-04-12 12:07:30', 'a', 'a'),
(23, 'hehe', '2017-04-13 13:34:38', 'a', 'a'),
(24, 'jgsjf', '2017-04-13 13:35:06', 'a', 'r'),
(25, 'a', '2017-04-14 13:22:56', 'r', 'a'),
(26, 'a', '2017-04-14 13:23:56', 'r', 'a'),
(27, 'a', '2017-04-14 13:24:32', 'r', 'a'),
(28, 'skjdhkjshgkkadga', '2017-04-18 12:22:09', 'r', 'a'),
(29, 'kjsdfhkjs', '2017-04-18 12:22:32', 'r', 'a'),
(30, 'adfkjfsjk', '2017-04-18 23:58:24', 'a', 'mohit'),
(31, 'sdfjgsjfd', '2017-04-19 00:00:10', 'r', 'a'),
(32, 'check', '2017-04-19 00:00:42', 'r', 'a'),
(33, 'check2', '2017-04-19 00:03:17', 'r', 'r'),
(34, 'jhfbkandsk', '2017-04-19 00:08:52', 'r', 'a'),
(35, 'final check', '2017-04-19 00:40:53', 'r', 'a'),
(36, 'final check', '2017-04-19 00:42:46', 'r', 'a'),
(37, 'ultimate check', '2017-04-19 00:44:37', 'r', 'a'),
(38, 'ultimate check 2', '2017-04-19 00:45:08', 'r', 'a'),
(39, 'successful', '2017-04-19 00:54:25', 'r', 'a'),
(40, 'adfad', '2017-04-19 00:56:42', 'r', 'a'),
(41, 'sdfkjsdk', '2017-04-19 00:58:04', 'r', 'a'),
(42, 'sdg', '2017-04-19 01:01:30', 'r', 'a'),
(43, 'vjb', '2017-04-19 01:02:10', 'r', 'a'),
(44, 'sd,fkjs', '2017-04-19 01:03:05', 'r', 'a'),
(45, 'sdf', '2017-04-19 01:04:15', 'r', 'a'),
(46, 'asdjhak', '2017-04-19 01:05:39', 'r', 'a'),
(47, 'hey', '2017-04-19 01:08:12', 'r', 'a'),
(48, 'sdjfs', '2017-04-19 01:12:22', 'r', 'a'),
(49, 'hgjh', '2017-04-19 01:13:35', 'r', 'a'),
(50, 'sfkjfk', '2017-04-19 01:20:38', 'r', 'a'),
(51, 'asldkjal', '2017-04-19 01:22:08', 'r', 'a'),
(52, 'ksdfsdkfk', '2017-04-19 01:22:47', 'r', 'a'),
(53, 'sjfnsa', '2017-04-19 01:24:27', 'r', 'a'),
(54, 'asafdl;sfkls', '2017-04-19 11:00:16', 'r', 'a'),
(55, 'final check', '2017-04-19 11:07:06', 'r', 'a'),
(56, 'sdmfs', '2017-04-19 11:14:18', 'r', 'a'),
(57, 'dh', '2017-04-19 11:17:06', 'r', 'a'),
(58, 'add', '2017-04-19 11:19:20', 'r', 'a'),
(59, 'check on mozilla', '2017-04-19 11:19:50', 'a', 'r'),
(60, 'failed', '2017-04-19 11:20:13', 'r', 'a'),
(61, 'check on mozilla', '2017-04-19 11:21:26', 'a', 'r'),
(62, 'check on mozilla', '2017-04-19 11:23:46', 'a', 'r'),
(63, 'check on mozilla', '2017-04-19 11:27:32', 'a', 'r'),
(64, 'check on mozilla', '2017-04-19 11:28:06', 'a', 'r'),
(65, 'check on mozilla', '2017-04-19 11:29:16', 'a', 'r'),
(66, 'check on mozilla', '2017-04-19 11:30:07', 'a', 'r'),
(67, 'check on mozilla', '2017-04-19 11:30:15', 'a', 'r'),
(68, 'check on mozilla', '2017-04-19 11:31:40', 'a', 'r'),
(69, 'check on mozilla', '2017-04-19 11:32:02', 'a', 'r'),
(70, 'check on mozilla', '2017-04-19 11:37:10', 'a', 'r'),
(71, 'check on mozilla', '2017-04-19 11:37:12', 'a', 'r'),
(72, 'check on mozilla', '2017-04-19 11:37:13', 'a', 'r'),
(73, 'check on mozilla', '2017-04-19 11:37:34', 'a', 'r'),
(74, 'check on mozilla', '2017-04-19 11:39:47', 'a', 'r'),
(75, 'sdflsk', '2017-04-19 11:40:04', 'r', 'a'),
(76, 'hsbdjgfsjd', '2017-04-19 12:02:53', 'r', 'a'),
(77, 'hsbdjgfsjd', '2017-04-19 12:03:13', 'r', 'a'),
(78, 'hsbdjgfsjd', '2017-04-19 12:03:27', 'r', 'a'),
(79, 'ksjdfhks', '2017-04-19 12:04:21', 'a', 'r'),
(80, 'ksjdfhks', '2017-04-19 12:05:51', 'a', 'r'),
(81, 'skdfhskj', '2017-04-19 12:16:59', 'r', 'a'),
(82, 'ajsj', '2017-04-19 12:17:16', 'a', 'r'),
(83, 'sdkjdfskj', '2017-04-19 12:20:21', 'a', 'r'),
(84, 'final check', '2017-04-19 12:20:36', 'r', 'a'),
(85, 'check', '2017-04-19 12:23:36', 'a', 'r'),
(86, 'received', '2017-04-19 12:23:49', 'r', 'a'),
(87, 'skjjfs', '2017-04-19 12:30:58', 'a', 'a'),
(88, 'sdjk', '2017-04-19 12:32:07', 'a', 'r'),
(89, 'ajfaj', '2017-04-19 14:29:59', 'r', 'a'),
(90, 'sjj', '2017-04-19 14:31:07', 'a', 'r'),
(91, 'asfkj', '2017-04-26 19:03:47', 'a', 'r'),
(92, 'nnn', '2017-04-26 19:04:18', 'a', 'r'),
(93, 'hi', '2017-05-11 14:02:24', 'la', 'mohit1'),
(94, 'how are you?', '2017-05-11 14:02:50', 'la', 'mohit1'),
(95, 'hi', '2017-05-11 14:15:11', 'r', 'a'),
(96, 'sdjf', '2017-05-11 14:17:04', 'r', 'a');

-- --------------------------------------------------------

--
-- Table structure for table `names`
--

CREATE TABLE `names` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `names`
--

INSERT INTO `names` (`id`, `name`) VALUES
(1, 'test test1'),
(2, 'tset tset1');

-- --------------------------------------------------------

--
-- Table structure for table `ptable1`
--

CREATE TABLE `ptable1` (
  `ID` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ptable1`
--

INSERT INTO `ptable1` (`ID`, `username`, `password`, `firstname`, `lastname`) VALUES
(1, 'mohit', 'mohit', 'mohit', 'verma'),
(2, 'a', 'sagjhkjg', 'a', 'b');

-- --------------------------------------------------------

--
-- Table structure for table `receive_message`
--

CREATE TABLE `receive_message` (
  `id` int(11) NOT NULL,
  `text` varchar(200) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `receive_message`
--

INSERT INTO `receive_message` (`id`, `text`, `time`) VALUES
(1, ' sdjsdj', '2017-04-10 19:28:39'),
(2, ' sdhjska', '2017-04-10 19:28:51'),
(3, '       kjfds     ', '2017-04-11 13:16:03'),
(4, 'kjfds', '2017-04-11 13:16:30'),
(5, 's mndnf', '2017-04-11 13:16:40'),
(6, 's mndnf', '2017-04-11 13:17:55'),
(7, 'skjdhfjsk', '2017-04-11 14:19:09'),
(8, 'skjdhfjsk', '2017-04-11 14:19:43'),
(9, 'mohit', '2017-04-11 14:19:49'),
(10, 'mohit', '2017-04-11 14:23:39'),
(11, 'sdgfsdj', '2017-04-11 14:23:48'),
(12, 'sdgfsdj', '2017-04-11 14:24:58'),
(13, 'xckzjhdkjvhd', '2017-04-11 14:26:01'),
(14, 'sdmfsjdm', '2017-04-11 14:27:04'),
(15, 'jahdsfj', '2017-04-11 14:27:29'),
(16, 'jahdsfj', '2017-04-11 14:36:32'),
(17, 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', '2017-04-11 14:40:23'),
(18, 'hey', '2017-04-11 16:42:45'),
(19, 'sdjkfnsdkfdfvkd\r\nsdfkjlfga\r\ndshfkj', '2017-04-11 16:43:17'),
(20, 'sdkjfhksjd', '2017-04-11 16:43:33'),
(21, 'rsdfsdfaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', '2017-04-11 17:04:49'),
(22, 'hey', '2017-04-11 19:33:45'),
(23, 'common', '2017-04-11 19:35:23'),
(24, 'kjsdfhjkdsfs', '2017-04-11 19:39:53'),
(25, 'finally', '2017-04-12 05:31:10'),
(26, 'klnskdjna', '2017-04-12 05:33:35'),
(27, 'hey user', '2017-04-12 05:40:32'),
(28, 'hi', '2017-04-12 05:40:49'),
(29, 'sdmnf', '2017-04-12 06:05:57'),
(30, 'hey', '2017-04-12 06:11:48'),
(31, 'hey', '2017-04-12 06:13:03'),
(32, 'hey', '2017-04-12 06:13:24'),
(33, 'dsbfsm', '2017-04-12 06:13:49'),
(34, 'msndbfm', '2017-04-12 06:18:46'),
(35, 'mnasbd', '2017-04-12 06:27:18'),
(36, 'kjsdhk', '2017-04-12 06:28:02'),
(37, 'kjsdhk', '2017-04-12 06:29:10'),
(38, 'ms', '2017-04-12 06:29:48'),
(39, 'jkrssf', '2017-04-12 06:31:55'),
(40, 'jdsbm', '2017-04-12 06:36:56'),
(41, 'kjsd', '2017-04-12 06:37:04'),
(42, 'ksjdhf', '2017-04-12 06:37:30'),
(43, 'sdjnf', '2017-04-12 06:37:50'),
(44, 'jdsf', '2017-04-12 06:41:39'),
(45, 'msdnf', '2017-04-12 06:42:00'),
(46, 'kjsdf', '2017-04-12 06:42:49'),
(47, 'msnd', '2017-04-12 06:43:51'),
(48, 'mnsdf', '2017-04-12 06:44:36'),
(49, 'hehe', '2017-04-13 08:04:38'),
(50, 'jgsjf', '2017-04-13 08:05:06'),
(51, 'a', '2017-04-14 07:52:56'),
(52, 'a', '2017-04-14 07:53:56'),
(53, 'a', '2017-04-14 07:54:32'),
(54, 'skjdhkjshgkkadga', '2017-04-18 06:52:09'),
(55, 'kjsdfhkjs', '2017-04-18 06:52:32'),
(56, 'adfkjfsjk', '2017-04-18 18:28:24'),
(57, 'sdfjgsjfd', '2017-04-18 18:30:10'),
(58, 'check', '2017-04-18 18:30:42'),
(59, 'check2', '2017-04-18 18:33:17'),
(60, 'jhfbkandsk', '2017-04-18 18:38:52'),
(61, 'final check', '2017-04-18 19:10:53'),
(62, 'final check', '2017-04-18 19:12:46'),
(63, 'ultimate check', '2017-04-18 19:14:37'),
(64, 'ultimate check 2', '2017-04-18 19:15:08'),
(65, 'successful', '2017-04-18 19:24:25'),
(66, 'adfad', '2017-04-18 19:26:42'),
(67, 'sdfkjsdk', '2017-04-18 19:28:04'),
(68, 'sdg', '2017-04-18 19:31:29'),
(69, 'vjb', '2017-04-18 19:32:10'),
(70, 'sd,fkjs', '2017-04-18 19:33:05'),
(71, 'sdf', '2017-04-18 19:34:15'),
(72, 'asdjhak', '2017-04-18 19:35:39'),
(73, 'hey', '2017-04-18 19:38:12'),
(74, 'sdjfs', '2017-04-18 19:42:22'),
(75, 'hgjh', '2017-04-18 19:43:35'),
(76, 'sfkjfk', '2017-04-18 19:50:38'),
(77, 'asldkjal', '2017-04-18 19:52:08'),
(78, 'ksdfsdkfk', '2017-04-18 19:52:47'),
(79, 'sjfnsa', '2017-04-18 19:54:27'),
(80, 'asafdl;sfkls', '2017-04-19 05:30:16'),
(81, 'sdkjgfasj', '2017-04-19 05:36:41'),
(82, 'final check', '2017-04-19 05:37:06'),
(83, 'sdmfs', '2017-04-19 05:44:18'),
(84, 'dh', '2017-04-19 05:47:06'),
(85, 'add', '2017-04-19 05:49:20'),
(86, 'check on mozilla', '2017-04-19 05:49:50'),
(87, 'failed', '2017-04-19 05:50:13'),
(88, 'check on mozilla', '2017-04-19 05:51:26'),
(89, 'check on mozilla', '2017-04-19 05:53:46'),
(90, 'check on mozilla', '2017-04-19 05:57:32'),
(91, 'check on mozilla', '2017-04-19 05:58:06'),
(92, 'check on mozilla', '2017-04-19 05:59:16'),
(93, 'check on mozilla', '2017-04-19 06:00:07'),
(94, 'check on mozilla', '2017-04-19 06:00:14'),
(95, 'check on mozilla', '2017-04-19 06:01:40'),
(96, 'check on mozilla', '2017-04-19 06:02:02'),
(97, 'check on mozilla', '2017-04-19 06:07:10'),
(98, 'check on mozilla', '2017-04-19 06:07:11'),
(99, 'check on mozilla', '2017-04-19 06:07:13'),
(100, 'check on mozilla', '2017-04-19 06:07:34'),
(101, 'check on mozilla', '2017-04-19 06:09:47'),
(102, 'sdflsk', '2017-04-19 06:10:04'),
(103, 'hsbdjgfsjd', '2017-04-19 06:32:53'),
(104, 'hsbdjgfsjd', '2017-04-19 06:33:13'),
(105, 'hsbdjgfsjd', '2017-04-19 06:33:27'),
(106, 'ksjdfhks', '2017-04-19 06:34:21'),
(107, 'ksjdfhks', '2017-04-19 06:35:51'),
(108, 'skdfhskj', '2017-04-19 06:46:59'),
(109, 'ajsj', '2017-04-19 06:47:16'),
(110, 'sdkjdfskj', '2017-04-19 06:50:21'),
(111, 'final check', '2017-04-19 06:50:36'),
(112, 'check', '2017-04-19 06:53:36'),
(113, 'received', '2017-04-19 06:53:49'),
(114, 'sdmnvbsj', '2017-04-19 06:54:00'),
(115, 'dg', '2017-04-19 06:55:01'),
(116, 'sdcbj', '2017-04-19 06:57:24'),
(117, 'skjjfs', '2017-04-19 07:00:57'),
(118, 'jzk', '2017-04-19 07:01:05'),
(119, 'jbjas', '2017-04-19 07:01:43'),
(120, 'sbk', '2017-04-19 07:02:02'),
(121, 'sdjk', '2017-04-19 07:02:07'),
(122, 'ajfaj', '2017-04-19 08:59:59'),
(123, 'sdf', '2017-04-19 09:00:16'),
(124, 'sjj', '2017-04-19 09:01:07'),
(125, 'asfkj', '2017-04-26 13:33:47'),
(126, 'sdfjgsj', '2017-04-26 13:33:54'),
(127, 'nnn', '2017-04-26 13:34:18'),
(128, 'hi', '2017-05-11 08:32:24'),
(129, 'how are you?', '2017-05-11 08:32:50'),
(130, 'hi', '2017-05-11 08:45:11'),
(131, 'sdjf', '2017-05-11 08:47:04');

-- --------------------------------------------------------

--
-- Table structure for table `sent_message`
--

CREATE TABLE `sent_message` (
  `id` int(11) NOT NULL,
  `text` varchar(200) NOT NULL,
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sent_message`
--

INSERT INTO `sent_message` (`id`, `text`, `time`) VALUES
(1, ' sdjsdj', '2017-04-11 00:58:39'),
(2, ' sdhjska', '2017-04-11 00:58:51'),
(3, '       kjfds     ', '2017-04-11 18:46:03'),
(4, 'kjfds', '2017-04-11 18:46:30'),
(5, 's mndnf', '2017-04-11 18:46:40'),
(6, 's mndnf', '2017-04-11 18:47:54'),
(7, 'skjdhfjsk', '2017-04-11 19:49:09'),
(8, 'skjdhfjsk', '2017-04-11 19:49:43'),
(9, 'mohit', '2017-04-11 19:49:49'),
(10, 'mohit', '2017-04-11 19:53:39'),
(11, 'sdgfsdj', '2017-04-11 19:53:48'),
(12, 'sdgfsdj', '2017-04-11 19:54:58'),
(13, 'xckzjhdkjvhd', '2017-04-11 19:56:01'),
(14, 'sdmfsjdm', '2017-04-11 19:57:04'),
(15, 'jahdsfj', '2017-04-11 19:57:29'),
(16, 'jahdsfj', '2017-04-11 20:06:32'),
(17, 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', '2017-04-11 20:10:23'),
(18, 'hey', '2017-04-11 22:12:44'),
(19, 'sdjkfnsdkfdfvkd\r\nsdfkjlfga\r\ndshfkj', '2017-04-11 22:13:17'),
(20, 'sdkjfhksjd', '2017-04-11 22:13:33'),
(21, 'rsdfsdfaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', '2017-04-11 22:34:48'),
(22, 'hey', '2017-04-12 01:03:45'),
(23, 'common', '2017-04-12 01:05:23'),
(24, 'kjsdfhjkdsfs', '2017-04-12 01:09:52'),
(25, 'finally', '2017-04-12 11:01:09'),
(26, 'klnskdjna', '2017-04-12 11:03:35'),
(27, 'hey user', '2017-04-12 11:10:32'),
(28, 'hi', '2017-04-12 11:10:49'),
(29, 'sdmnf', '2017-04-12 11:35:57'),
(30, 'hey', '2017-04-12 11:41:48'),
(31, 'hey', '2017-04-12 11:43:02'),
(32, 'hey', '2017-04-12 11:43:24'),
(33, 'dsbfsm', '2017-04-12 11:43:49'),
(34, 'msndbfm', '2017-04-12 11:48:46'),
(35, 'mnasbd', '2017-04-12 11:57:18'),
(36, 'kjsdhk', '2017-04-12 11:58:02'),
(37, 'kjsdhk', '2017-04-12 11:59:10'),
(38, 'ms', '2017-04-12 11:59:47'),
(39, 'jkrssf', '2017-04-12 12:01:55'),
(40, 'jdsbm', '2017-04-12 12:06:56'),
(41, 'kjsd', '2017-04-12 12:07:04'),
(42, 'ksjdhf', '2017-04-12 12:07:29'),
(43, 'sdjnf', '2017-04-12 12:07:50'),
(44, 'jdsf', '2017-04-12 12:11:39'),
(45, 'msdnf', '2017-04-12 12:12:00'),
(46, 'kjsdf', '2017-04-12 12:12:49'),
(47, 'msnd', '2017-04-12 12:13:51'),
(48, 'mnsdf', '2017-04-12 12:14:36'),
(49, 'hehe', '2017-04-13 13:34:38'),
(50, 'jgsjf', '2017-04-13 13:35:06'),
(51, 'a', '2017-04-14 13:22:55'),
(52, 'a', '2017-04-14 13:23:55'),
(53, 'a', '2017-04-14 13:24:32'),
(54, 'skjdhkjshgkkadga', '2017-04-18 12:22:09'),
(55, 'kjsdfhkjs', '2017-04-18 12:22:32'),
(56, 'adfkjfsjk', '2017-04-18 23:58:24'),
(57, 'sdfjgsjfd', '2017-04-19 00:00:10'),
(58, 'check', '2017-04-19 00:00:42'),
(59, 'check2', '2017-04-19 00:03:17'),
(60, 'jhfbkandsk', '2017-04-19 00:08:52'),
(61, 'final check', '2017-04-19 00:40:53'),
(62, 'final check', '2017-04-19 00:42:46'),
(63, 'ultimate check', '2017-04-19 00:44:36'),
(64, 'ultimate check 2', '2017-04-19 00:45:07'),
(65, 'successful', '2017-04-19 00:54:25'),
(66, 'adfad', '2017-04-19 00:56:42'),
(67, 'sdfkjsdk', '2017-04-19 00:58:04'),
(68, 'sdg', '2017-04-19 01:01:29'),
(69, 'vjb', '2017-04-19 01:02:10'),
(70, 'sd,fkjs', '2017-04-19 01:03:04'),
(71, 'sdf', '2017-04-19 01:04:15'),
(72, 'asdjhak', '2017-04-19 01:05:38'),
(73, 'hey', '2017-04-19 01:08:11'),
(74, 'sdjfs', '2017-04-19 01:12:21'),
(75, 'hgjh', '2017-04-19 01:13:34'),
(76, 'sfkjfk', '2017-04-19 01:20:38'),
(77, 'asldkjal', '2017-04-19 01:22:08'),
(78, 'ksdfsdkfk', '2017-04-19 01:22:47'),
(79, 'sjfnsa', '2017-04-19 01:24:27'),
(80, 'asafdl;sfkls', '2017-04-19 11:00:16'),
(81, 'sdkjgfasj', '2017-04-19 11:06:41'),
(82, 'final check', '2017-04-19 11:07:06'),
(83, 'sdmfs', '2017-04-19 11:14:18'),
(84, 'dh', '2017-04-19 11:17:06'),
(85, 'add', '2017-04-19 11:19:20'),
(86, 'check on mozilla', '2017-04-19 11:19:50'),
(87, 'failed', '2017-04-19 11:20:13'),
(88, 'check on mozilla', '2017-04-19 11:21:26'),
(89, 'check on mozilla', '2017-04-19 11:23:46'),
(90, 'check on mozilla', '2017-04-19 11:27:32'),
(91, 'check on mozilla', '2017-04-19 11:28:06'),
(92, 'check on mozilla', '2017-04-19 11:29:16'),
(93, 'check on mozilla', '2017-04-19 11:30:07'),
(94, 'check on mozilla', '2017-04-19 11:30:14'),
(95, 'check on mozilla', '2017-04-19 11:31:40'),
(96, 'check on mozilla', '2017-04-19 11:32:01'),
(97, 'check on mozilla', '2017-04-19 11:37:10'),
(98, 'check on mozilla', '2017-04-19 11:37:11'),
(99, 'check on mozilla', '2017-04-19 11:37:13'),
(100, 'check on mozilla', '2017-04-19 11:37:34'),
(101, 'check on mozilla', '2017-04-19 11:39:46'),
(102, 'sdflsk', '2017-04-19 11:40:04'),
(103, 'hsbdjgfsjd', '2017-04-19 12:02:52'),
(104, 'hsbdjgfsjd', '2017-04-19 12:03:13'),
(105, 'hsbdjgfsjd', '2017-04-19 12:03:27'),
(106, 'ksjdfhks', '2017-04-19 12:04:21'),
(107, 'ksjdfhks', '2017-04-19 12:05:51'),
(108, 'skdfhskj', '2017-04-19 12:16:59'),
(109, 'ajsj', '2017-04-19 12:17:16'),
(110, 'sdkjdfskj', '2017-04-19 12:20:21'),
(111, 'final check', '2017-04-19 12:20:36'),
(112, 'check', '2017-04-19 12:23:35'),
(113, 'received', '2017-04-19 12:23:49'),
(114, 'sdmnvbsj', '2017-04-19 12:24:00'),
(115, 'dg', '2017-04-19 12:25:01'),
(116, 'sdcbj', '2017-04-19 12:27:24'),
(117, 'skjjfs', '2017-04-19 12:30:57'),
(118, 'jzk', '2017-04-19 12:31:05'),
(119, 'jbjas', '2017-04-19 12:31:43'),
(120, 'sbk', '2017-04-19 12:32:01'),
(121, 'sdjk', '2017-04-19 12:32:07'),
(122, 'ajfaj', '2017-04-19 14:29:59'),
(123, 'sdf', '2017-04-19 14:30:16'),
(124, 'sjj', '2017-04-19 14:31:07'),
(125, 'asfkj', '2017-04-26 19:03:47'),
(126, 'sdfjgsj', '2017-04-26 19:03:54'),
(127, 'nnn', '2017-04-26 19:04:18'),
(128, 'hi', '2017-05-11 14:02:24'),
(129, 'how are you?', '2017-05-11 14:02:50'),
(130, 'hi', '2017-05-11 14:15:10'),
(131, 'sdjf', '2017-05-11 14:17:04');

-- --------------------------------------------------------

--
-- Table structure for table `uhqtmsdcount`
--

CREATE TABLE `uhqtmsdcount` (
  `count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `uhqtmsdcount`
--

INSERT INTO `uhqtmsdcount` (`count`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `uhqtmsdip`
--

CREATE TABLE `uhqtmsdip` (
  `ip` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `uhqtmsdip`
--

INSERT INTO `uhqtmsdip` (`ip`) VALUES
('::1');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(32) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `count` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `firstname`, `lastname`, `count`) VALUES
(1, 'test', '098f6bcd4621d373cade4e832627b4f6', 'test1', 'test2', 0),
(2, 'mohit', 'cf3b27ef58e8421ad18556857077d39f', 'mohit', 'verma', 0),
(3, 'a', '0cc175b9c0f1b6a831c399e269772661', 'a', 'a', 92),
(4, 'm', 'd8052f9e09a17e6907629e76bbd261cc', 'a', 'b', 0),
(5, 'b', '0cc175b9c0f1b6a831c399e269772661', 'b', 'a', 0),
(6, 'r', '0cc175b9c0f1b6a831c399e269772661', 'r', 'R', 82),
(7, 'mohit15', 'cf3b27ef58e8421ad18556857077d39f', 'mohit', 'verma', 0),
(8, 'mohit1', 'cf3b27ef58e8421ad18556857077d39f', 'mohit', 'verma', 2),
(9, 'la', '0cc175b9c0f1b6a831c399e269772661', 'lakshay', 'kapoor', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `names`
--
ALTER TABLE `names`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ptable1`
--
ALTER TABLE `ptable1`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `receive_message`
--
ALTER TABLE `receive_message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sent_message`
--
ALTER TABLE `sent_message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;
--
-- AUTO_INCREMENT for table `names`
--
ALTER TABLE `names`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `ptable1`
--
ALTER TABLE `ptable1`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `receive_message`
--
ALTER TABLE `receive_message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;
--
-- AUTO_INCREMENT for table `sent_message`
--
ALTER TABLE `sent_message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
