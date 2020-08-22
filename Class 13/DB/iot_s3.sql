-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 22, 2020 at 03:19 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 5.6.39

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `iot_s3`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_collection`
--

CREATE TABLE `data_collection` (
  `id` int(12) NOT NULL,
  `temp` varchar(32) DEFAULT NULL,
  `hum` varchar(32) DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` int(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_collection`
--

INSERT INTO `data_collection` (`id`, `temp`, `hum`, `time`, `user_id`) VALUES
(1257, '29.40', '73.30', '2020-01-10 13:01:05', 1),
(1258, '29.00', '74.50', '2020-01-10 13:01:19', 1),
(1259, '27.90', '78.20', '2020-01-10 13:01:51', 2),
(1260, '28.90', '90.00', '2020-01-10 13:02:14', 2),
(1261, '27.80', '78.90', '2020-01-10 13:02:21', 2),
(1262, '28.90', '90.10', '2020-01-10 13:02:24', 1),
(1263, '29.20', '79.20', '2020-01-10 13:02:35', 2),
(1264, '27.70', '78.00', '2020-01-10 13:02:52', 1),
(1265, '29.30', '76.60', '2020-01-10 13:02:53', NULL),
(1266, '29.30', '75.30', '2020-01-10 13:03:04', NULL),
(1267, '29.20', '75.00', '2020-01-10 13:03:15', NULL),
(1268, '27.70', '78.80', '2020-01-10 13:03:22', NULL),
(1269, '29.10', '75.00', '2020-01-10 13:03:26', NULL),
(1270, '29.00', '75.20', '2020-01-10 13:03:39', NULL),
(1271, '28.90', '75.60', '2020-01-10 13:03:50', NULL),
(1272, '27.70', '78.30', '2020-01-10 13:03:55', NULL),
(1273, '28.70', '76.60', '2020-01-10 13:04:17', NULL),
(1274, '27.60', '78.20', '2020-01-10 13:04:26', NULL),
(1275, '28.60', '76.80', '2020-01-10 13:04:28', NULL),
(1276, '28.50', '77.10', '2020-01-10 13:04:42', NULL),
(1277, '28.40', '77.40', '2020-01-10 13:04:54', NULL),
(1278, '28.30', '77.70', '2020-01-10 13:05:08', NULL),
(1279, '28.20', '77.90', '2020-01-10 13:05:20', NULL),
(1280, '28.10', '78.40', '2020-01-10 13:05:36', NULL),
(1281, '27.50', '77.90', '2020-01-10 13:05:36', NULL),
(1282, '28.10', '78.90', '2020-01-10 13:05:48', NULL),
(1283, '28.00', '79.00', '2020-01-10 13:06:00', NULL),
(1284, '27.40', '78.80', '2020-01-10 13:06:07', NULL),
(1285, '27.90', '79.20', '2020-01-10 13:06:15', NULL),
(1286, '27.80', '80.10', '2020-01-10 13:07:13', NULL),
(1287, '27.30', '80.10', '2020-01-10 13:08:26', NULL),
(1288, '27.40', '81.60', '2020-01-10 13:08:31', NULL),
(1289, '27.40', '81.80', '2020-01-10 13:08:46', NULL),
(1290, '27.30', '81.80', '2020-01-10 13:08:56', NULL),
(1291, '27.30', '79.90', '2020-01-10 13:08:56', NULL),
(1292, '27.30', '81.80', '2020-01-10 13:09:06', NULL),
(1293, '27.30', '81.60', '2020-01-10 13:09:17', NULL),
(1294, '27.20', '81.80', '2020-01-10 13:09:44', NULL),
(1295, '27.20', '82.20', '2020-01-10 13:10:12', NULL),
(1296, '27.20', '82.00', '2020-01-10 13:10:16', NULL),
(1297, '27.10', '82.60', '2020-01-10 13:10:23', NULL),
(1298, '27.10', '83.20', '2020-01-10 13:10:37', NULL),
(1299, '27.30', '80.80', '2020-01-10 13:10:39', NULL),
(1300, '27.10', '83.20', '2020-01-10 13:10:48', NULL),
(1301, '27.10', '82.90', '2020-01-10 13:11:03', NULL),
(1302, '27.30', '80.90', '2020-01-10 13:11:13', NULL),
(1303, '27.10', '83.00', '2020-01-10 13:11:14', NULL),
(1304, '27.30', '80.00', '2020-01-10 13:11:45', NULL),
(1305, '27.10', '83.20', '2020-01-10 13:11:57', NULL),
(1306, '27.00', '83.00', '2020-01-10 13:12:08', NULL),
(1307, '27.40', '80.00', '2020-01-10 13:12:16', NULL),
(1308, '27.00', '84.70', '2020-01-10 13:12:18', NULL),
(1309, '27.00', '84.20', '2020-01-10 13:12:30', NULL),
(1310, '27.00', '86.20', '2020-01-10 13:12:41', NULL),
(1311, '27.40', '80.20', '2020-01-10 13:12:47', NULL),
(1312, '27.10', '88.70', '2020-01-10 13:12:52', NULL),
(1313, '27.30', '85.40', '2020-01-10 13:13:02', NULL),
(1314, '27.50', '83.00', '2020-01-10 13:13:12', NULL),
(1315, '27.30', '78.90', '2020-01-10 13:13:19', NULL),
(1316, '27.60', '81.70', '2020-01-10 13:13:24', NULL),
(1317, '27.60', '82.50', '2020-01-10 13:13:34', NULL),
(1318, '27.60', '81.80', '2020-01-10 13:13:45', NULL),
(1319, '28', '85', '2020-01-11 10:05:42', NULL),
(1320, '28', '85', '2020-01-11 10:06:03', NULL),
(1321, '26', '85', '2020-01-11 10:07:31', NULL),
(1322, '25', '85', '2020-01-11 10:19:56', NULL),
(1323, '26', '85', '2020-01-11 10:20:27', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `switchstate`
--

CREATE TABLE `switchstate` (
  `id` int(24) NOT NULL,
  `state` int(8) NOT NULL,
  `switchid` varchar(48) DEFAULT NULL,
  `user_id` int(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `switchstate`
--

INSERT INTO `switchstate` (`id`, `state`, `switchid`, `user_id`) VALUES
(1, 1, 'iotba25', 1),
(2, 0, 'iotba26', 1),
(3, 1, 'iotba27', 2),
(9, 0, 'iotc31654', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(32) NOT NULL,
  `username` varchar(64) NOT NULL,
  `userpass` varchar(128) NOT NULL,
  `first_name` varchar(64) DEFAULT NULL,
  `lastname` varchar(64) DEFAULT NULL,
  `email` varchar(64) DEFAULT NULL,
  `insert_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `phone` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `username`, `userpass`, `first_name`, `lastname`, `email`, `insert_time`, `phone`) VALUES
(1, 'bdnath.me@gmail.com', 'abcd', 'Bidyut', 'Debnath', 'bdnath.me@gmail.com', '2020-08-15 18:02:45', '01744555875'),
(2, 'divine@iot.com', 'abcd', 'Divine', 'Iot', 'divine@iot.com', '2020-08-15 17:03:31', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_collection`
--
ALTER TABLE `data_collection`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `switchstate`
--
ALTER TABLE `switchstate`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `switchid` (`switchid`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_collection`
--
ALTER TABLE `data_collection`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1324;

--
-- AUTO_INCREMENT for table `switchstate`
--
ALTER TABLE `switchstate`
  MODIFY `id` int(24) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
