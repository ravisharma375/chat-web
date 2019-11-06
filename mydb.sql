-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 06, 2019 at 09:22 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mydb`
--

-- --------------------------------------------------------

--
-- Table structure for table `alerttable`
--

CREATE TABLE `alerttable` (
  `id` int(11) NOT NULL,
  `time` varchar(255) NOT NULL,
  `alertaccept` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `token` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contact_no` varchar(10) NOT NULL,
  `x` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `alerttable`
--

INSERT INTO `alerttable` (`id`, `time`, `alertaccept`, `status`, `token`, `name`, `address`, `email`, `contact_no`, `x`) VALUES
(1, '2019-10-04 10:17:02.284', 'Sat Oct 05 2019 10:23:28 GMT+0530 (India Standard Time)', 1, '', '', '', '', '', 0),
(2, '2019-10-04 10:19:03.403', 'Sun Oct 06 2019 13:28:04 GMT+0530 (India Standard Time)', 1, '', '', '', '', '', 0),
(3, '2019-10-04 12:02:45.126', 'Fri Oct 04 2019 12:04:16 GMT+0530 (India Standard Time)', 1, '', '', '', '', '', 0),
(4, '2019-10-04 17:27:53.471', '', 1, '', '', '', '', '', 0),
(5, '2019-10-04 17:33:52.847', 'Sat Oct 05 2019 14:45:21 GMT+0530 (India Standard Time)', 1, '', '', '', '', '', 0),
(6, '2019-10-04 17:34:08.802', '', 1, '', '', '', '', '', 0),
(7, '2019-10-04 18:02:28.752', '', 1, '', '', '', '', '', 0),
(8, '2019-10-04 18:06:47.189', 'Sun Oct 06 2019 20:35:17 GMT+0530 (India Standard Time)', 1, '', '', '', '', '', 0),
(9, '2019-10-04 18:06:53.800', 'Sun Oct 06 2019 20:21:31 GMT+0530 (India Standard Time)', 1, '', '', '', '', '', 0),
(10, '2019-10-04 18:06:57.372', 'Sun Oct 06 2019 13:35:40 GMT+0530 (India Standard Time)', 1, '', '', '', '', '', 0),
(11, '2019-10-04 18:07:11.182', 'Sat Oct 05 2019 10:07:19 GMT+0530 (India Standard Time)', 1, '', '', '', '', '', 0),
(12, '2019-10-05 10:15:02.542', 'Sat Oct 05 2019 11:04:50 GMT+0530 (India Standard Time)', 1, '', '', '', '', '', 0),
(14, '2019-10-05 10:26:58.379', 'Sat Oct 05 2019 14:22:53 GMT+0530 (India Standard Time)', 1, '', '', '', '', '', 0),
(15, '2019-10-05 14:22:10.237', 'Mon Oct 07 2019 14:00:11 GMT+0530 (India Standard Time)', 1, '', '', '', '', '', 0),
(16, '2019-10-05 14:22:10.774', '', 1, '', '', '', '', '', 0),
(17, '2019-10-05 14:22:10.982', '', 1, '', '', '', '', '', 0),
(18, '2019-10-05 14:22:14.588', '', 1, '', '', '', '', '', 0),
(19, '2019-10-05 14:22:15.924', '', 1, '', '', '', '', '', 0),
(20, '2019-10-05 14:22:16.185', '', 1, '', '', '', '', '', 0),
(21, '2019-10-05 14:22:20.027', '', 1, '', '', '', '', '', 0),
(22, '2019-10-05 14:22:21.054', 'Sat Oct 05 2019 14:58:57 GMT+0530 (India Standard Time)', 1, '', '', '', '', '', 0),
(23, '2019-10-05 16:01:37.188', '', 1, '', '', '', '', '', 0),
(24, '2019-10-05 16:01:38.962', '', 1, '', '', '', '', '', 0),
(25, '2019-10-05 16:01:40.559', 'Mon Oct 07 2019 14:02:20 GMT+0530 (India Standard Time)', 1, '', '', '', '', '', 0),
(26, '2019-10-05 16:01:43.944', '', 1, '', '', '', '', '', 0),
(27, '2019-10-05 18:44:03.250', '', 1, '', '', '', '', '', 0),
(28, '2019-10-05 19:01:23.527', '', 1, '', '', '', '', '', 0),
(29, '2019-10-06 20:14:31.872', '', 1, '', '', '', '', '', 0),
(30, '2019-10-06 20:43:50.510', '', 1, '', '', '', '', '', 0),
(31, '2019-10-06 21:47:21.041', '', 1, '', '', '', '', '', 0),
(32, '2019-10-06 21:56:41.520', '', 1, '', '', '', '', '', 0),
(33, '2019-10-07 13:19:19.570', '', 1, '', '', '', '', '', 0),
(34, '2019-10-07 13:38:41.770', '', 1, '', '', '', '', '', 0),
(35, '2019-10-07 13:53:03.624', 'Mon Oct 14 2019 16:16:25 GMT+0530 (India Standard Time)', 1, '', '', '', '', '', 0),
(36, '2019-10-07 13:59:51.098', 'Mon Oct 14 2019 16:12:24 GMT+0530 (India Standard Time)', 1, '', '', '', '', '', 0),
(37, '2019-10-14 15:40:47.101', 'Mon Oct 14 2019 15:41:15 GMT+0530 (India Standard Time)', 1, 'cnuoCDWVRCI:APA91bEajEvIeEHQ_4gJ6qHaFfdMCABQgninOcB0GeVh0xhMccKqJJAom8pv9UeBeCS2II9IzSzcnoIEl75thLfHpmEn8jMMyt4EfAnhJXL-iogM3vgMZqqgPajydCLWib5mPbcLkUC7', '', '', '', '', 0),
(38, '2019-10-14 16:11:26.430', 'Mon Oct 14 2019 16:11:37 GMT+0530 (India Standard Time)', 1, 'cnuoCDWVRCI:APA91bEajEvIeEHQ_4gJ6qHaFfdMCABQgninOcB0GeVh0xhMccKqJJAom8pv9UeBeCS2II9IzSzcnoIEl75thLfHpmEn8jMMyt4EfAnhJXL-iogM3vgMZqqgPajydCLWib5mPbcLkUC7', '', '', '', '', 0),
(39, '2019-10-14 16:20:33.764', 'Mon Oct 14 2019 16:20:51 GMT+0530 (India Standard Time)', 1, 'cnuoCDWVRCI:APA91bEajEvIeEHQ_4gJ6qHaFfdMCABQgninOcB0GeVh0xhMccKqJJAom8pv9UeBeCS2II9IzSzcnoIEl75thLfHpmEn8jMMyt4EfAnhJXL-iogM3vgMZqqgPajydCLWib5mPbcLkUC7', '', '', '', '', 0),
(40, '2019-10-14 16:21:15.796', 'Mon Oct 14 2019 16:21:22 GMT+0530 (India Standard Time)', 1, 'cnuoCDWVRCI:APA91bEajEvIeEHQ_4gJ6qHaFfdMCABQgninOcB0GeVh0xhMccKqJJAom8pv9UeBeCS2II9IzSzcnoIEl75thLfHpmEn8jMMyt4EfAnhJXL-iogM3vgMZqqgPajydCLWib5mPbcLkUC7', '', '', '', '', 0),
(41, '2019-10-14 16:25:03.583', 'Mon Oct 14 2019 16:25:14 GMT+0530 (India Standard Time)', 1, 'cnuoCDWVRCI:APA91bEajEvIeEHQ_4gJ6qHaFfdMCABQgninOcB0GeVh0xhMccKqJJAom8pv9UeBeCS2II9IzSzcnoIEl75thLfHpmEn8jMMyt4EfAnhJXL-iogM3vgMZqqgPajydCLWib5mPbcLkUC7', '', '', '', '', 0),
(42, '2019-10-14 16:25:50.090', 'Mon Oct 14 2019 16:25:56 GMT+0530 (India Standard Time)', 1, 'cnuoCDWVRCI:APA91bEajEvIeEHQ_4gJ6qHaFfdMCABQgninOcB0GeVh0xhMccKqJJAom8pv9UeBeCS2II9IzSzcnoIEl75thLfHpmEn8jMMyt4EfAnhJXL-iogM3vgMZqqgPajydCLWib5mPbcLkUC7', '', '', '', '', 0),
(43, '2019-10-14 16:27:13.557', 'Mon Oct 14 2019 16:27:21 GMT+0530 (India Standard Time)', 1, 'cnuoCDWVRCI:APA91bEajEvIeEHQ_4gJ6qHaFfdMCABQgninOcB0GeVh0xhMccKqJJAom8pv9UeBeCS2II9IzSzcnoIEl75thLfHpmEn8jMMyt4EfAnhJXL-iogM3vgMZqqgPajydCLWib5mPbcLkUC7', '', '', '', '', 0),
(44, '2019-10-14 16:32:33.704', 'Mon Oct 14 2019 16:32:49 GMT+0530 (India Standard Time)', 1, 'cnuoCDWVRCI:APA91bEajEvIeEHQ_4gJ6qHaFfdMCABQgninOcB0GeVh0xhMccKqJJAom8pv9UeBeCS2II9IzSzcnoIEl75thLfHpmEn8jMMyt4EfAnhJXL-iogM3vgMZqqgPajydCLWib5mPbcLkUC7', '', '', '', '', 0),
(45, '2019-10-14 16:34:57.216', 'Mon Oct 14 2019 16:35:08 GMT+0530 (India Standard Time)', 1, 'cnuoCDWVRCI:APA91bEajEvIeEHQ_4gJ6qHaFfdMCABQgninOcB0GeVh0xhMccKqJJAom8pv9UeBeCS2II9IzSzcnoIEl75thLfHpmEn8jMMyt4EfAnhJXL-iogM3vgMZqqgPajydCLWib5mPbcLkUC7', '', '', '', '', 0),
(46, '2019-10-14 16:35:15.358', 'Mon Oct 14 2019 16:35:30 GMT+0530 (India Standard Time)', 1, 'cnuoCDWVRCI:APA91bEajEvIeEHQ_4gJ6qHaFfdMCABQgninOcB0GeVh0xhMccKqJJAom8pv9UeBeCS2II9IzSzcnoIEl75thLfHpmEn8jMMyt4EfAnhJXL-iogM3vgMZqqgPajydCLWib5mPbcLkUC7', '', '', '', '', 0),
(47, '2019-10-14 19:29:19.637', 'Mon Oct 14 2019 19:30:06 GMT+0530 (India Standard Time)', 1, 'cbgg52xrxhM:APA91bEPMn5DLQIgYweLokEG3WYojqzvUiEm5vlelyFg8_zIsGP9jbYGDoLMojJDBzRaem45GOqd1CFJYs6BZKop6_RYmpSiN4qGjO9O5Fd2ktMy4c7XKmP6ZGTkNV6jgemtdXvdA767', 'Foxy Lady', 'Mississippi', 'foxy.jimi@gmail.com', '8542356986', 0);

-- --------------------------------------------------------

--
-- Table structure for table `userdata`
--

CREATE TABLE `userdata` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `contact_no` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userdata`
--

INSERT INTO `userdata` (`id`, `name`, `email`, `address`, `contact_no`) VALUES
(94, 'Nikita Bane', 'nikita.bane@gmail.com', 'Dadar, West.', '8596325698'),
(95, 'Rishabh More', 'more.rushabh1@gmail.com', 'Eerr', '9003121212'),
(96, 'ravi', 'ravisharama375@gmail.com', 'Ramwadi', '874123682'),
(97, '', '', ' rejaijoi', '542154216'),
(98, '', '454hkg', ' rejaijoi', '542154216'),
(99, '', '454hgfgfrfkg', ' rejaijoi', '542154216'),
(100, 'ravi', 'raviunknow@gmail.com', 'jogeshwari', '542154216'),
(101, 'ravi', 'raviunknowlll@gmail.com', 'jogeshwari', '542154216'),
(102, 'ravi', 'raviunknowll11122l@gmail.com', 'jogeshwari', '542154216'),
(103, 'Whisky Cat', 'whisky.kitty@gmail.com', 'Jalander', '8547623568'),
(104, 'Dr. Strange', 'stephen.strange@gmail.com', 'New York', '8475236598'),
(105, 'Foxy Lady', 'foxy.jimi@gmail.com', 'Mississippi', '8542356986');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `OTP` int(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `verify`
--

CREATE TABLE `verify` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `OTP` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `verify`
--

INSERT INTO `verify` (`id`, `email`, `OTP`) VALUES
(5, 'rddubey31@gmail.com', '472918'),
(6, 'rddubey31@gmail.com', '472918');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alerttable`
--
ALTER TABLE `alerttable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userdata`
--
ALTER TABLE `userdata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `verify`
--
ALTER TABLE `verify`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alerttable`
--
ALTER TABLE `alerttable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `userdata`
--
ALTER TABLE `userdata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `verify`
--
ALTER TABLE `verify`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
