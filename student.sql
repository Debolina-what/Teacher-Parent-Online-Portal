-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 06, 2021 at 11:37 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `student`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminlogin`
--

CREATE TABLE `adminlogin` (
  `user` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adminlogin`
--

INSERT INTO `adminlogin` (`user`, `password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `chatbox`
--

CREATE TABLE `chatbox` (
  `id` int(50) NOT NULL,
  `sender` varchar(100) NOT NULL,
  `recevier` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `msg` varchar(2500) NOT NULL,
  `tid` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chatbox`
--

INSERT INTO `chatbox` (`id`, `sender`, `recevier`, `date`, `msg`, `tid`) VALUES
(2, 'Shantanu Wagh', 'Digvijay Phadtare', '2021-04-06', 'Good', 2);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `first` varchar(255) NOT NULL,
  `last` varchar(255) NOT NULL,
  `jdate` datetime NOT NULL,
  `add` varchar(255) NOT NULL,
  `desi` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `user` varchar(30) NOT NULL,
  `pass` varchar(30) NOT NULL,
  `confirm` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `first`, `last`, `jdate`, `add`, `desi`, `email`, `phone`, `user`, `pass`, `confirm`) VALUES
(1, 'Nivas', 'Patil', '2018-05-02 13:54:17', 'Wai', 'Devloper', 'nivas123@gmail.com', '7878766556', 'nivas', '123', '123'),
(2, 'Digvijay', 'Phadtare', '2020-03-07 00:00:00', 'Nagthane', 'Programmer', 'phadatare@gmail.com', '7887787667', 'digvijay', '123', '123');

-- --------------------------------------------------------

--
-- Table structure for table `parent`
--

CREATE TABLE `parent` (
  `id` int(11) NOT NULL,
  `first` varchar(255) NOT NULL,
  `last` varchar(255) NOT NULL,
  `jdate` datetime NOT NULL,
  `add` varchar(255) NOT NULL,
  `desi` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `user` varchar(30) NOT NULL,
  `pass` varchar(30) NOT NULL,
  `confirm` varchar(30) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `parent`
--

INSERT INTO `parent` (`id`, `first`, `last`, `jdate`, `add`, `desi`, `email`, `phone`, `user`, `pass`, `confirm`, `status`) VALUES
(1, 'Shantanu', 'Wagh', '2019-00-01 00:00:00', 'Satara', 'Programmer', 'shantanu@gmail.com', '9887788888', 'shantanu', '123', '123', 1),
(2, 'anita', 'patil', '2021-05-04 04:57:23', 'satara', '', 'anita@gmail.com', '7887878787', 'anita', '123', '123', 1),
(3, 'Dilip', 'Phanse', '2021-05-04 05:02:22', 'umbraj', '', 'pawarkrushnesh@gmail.com', '6554434567', 'dilip', '123', '123', 1),
(5, 'suman', 'Patil', '2021-04-05 00:00:00', 'wai', 'Programmer', 'pawarkrushnesh@gmail.com', '5665433434', 'suman', '123', '123', 0),
(6, 'nilesh', 'jadhav', '2021-04-05 00:00:00', 'satara', 'Programmer', 'pawarkrushnesh@gmail.com', '7667676765', 'nilesh', '123', '123', 0);

-- --------------------------------------------------------

--
-- Table structure for table `reporttable`
--

CREATE TABLE `reporttable` (
  `empid` int(11) NOT NULL,
  `empname` varchar(255) NOT NULL,
  `desig` varchar(255) NOT NULL,
  `basic` int(11) NOT NULL,
  `hra` int(11) NOT NULL,
  `da` int(11) NOT NULL,
  `ta` int(11) NOT NULL,
  `gross` int(11) NOT NULL,
  `pf` int(11) NOT NULL,
  `esic` int(11) NOT NULL,
  `pt` int(11) NOT NULL,
  `deduct` int(11) NOT NULL,
  `net` int(11) NOT NULL,
  `pday` int(11) NOT NULL,
  `hday` int(11) NOT NULL,
  `lday` int(11) NOT NULL,
  `leave` int(11) NOT NULL,
  `wday` int(11) NOT NULL,
  `totday` int(11) NOT NULL,
  `perday` int(11) NOT NULL,
  `apay` int(11) NOT NULL,
  `salword` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reporttable`
--

INSERT INTO `reporttable` (`empid`, `empname`, `desig`, `basic`, `hra`, `da`, `ta`, `gross`, `pf`, `esic`, `pt`, `deduct`, `net`, `pday`, `hday`, `lday`, `leave`, `wday`, `totday`, `perday`, `apay`, `salword`) VALUES
(1, 'Shantanu Wagh', 'Software engg', 10000, 4000, 2000, 2000, 18000, 1300, 300, 200, 1800, 16200, 25, 5, 1, 1, 28, 31, 523, 14644, 'Fourteen Thousand Six Hundred And Fourty Four');

-- --------------------------------------------------------

--
-- Table structure for table `studdata`
--

CREATE TABLE `studdata` (
  `id` int(11) NOT NULL,
  `first` varchar(255) NOT NULL,
  `last` varchar(255) NOT NULL,
  `jdate` datetime NOT NULL,
  `add` varchar(255) NOT NULL,
  `desi` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `user` varchar(30) NOT NULL,
  `pass` varchar(30) NOT NULL,
  `confirm` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `studdata`
--

INSERT INTO `studdata` (`id`, `first`, `last`, `jdate`, `add`, `desi`, `email`, `phone`, `user`, `pass`, `confirm`) VALUES
(2, 'Shantanu', 'Wagh', '2019-00-01 00:00:00', 'Satara', 'Programmer', 'shantanu@gmail.com', '9887788888', 'shantanu', '123', '123'),
(1, 'Aryan', 'jadhav', '2021-05-05 01:15:01', 'satara', 'MCA', 'arayan@gmail.com', '7887878787', 'arayan', '123', '123'),
(5, 'Isha', 'Pawar', '2020-05-02 00:00:00', 'karad', 'MCA', 'Isha@gmail.com', '5665666655', 'isha', '123', '123');

-- --------------------------------------------------------

--
-- Table structure for table `tholiday`
--

CREATE TABLE `tholiday` (
  `month` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tottable`
--

CREATE TABLE `tottable` (
  `id` int(11) DEFAULT NULL,
  `tot` bigint(21) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tottable`
--

INSERT INTO `tottable` (`id`, `tot`) VALUES
(1, 31);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
