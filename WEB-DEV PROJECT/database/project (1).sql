-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 29, 2019 at 08:35 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `ads`
--

CREATE TABLE `ads` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `area` varchar(255) NOT NULL,
  `masterbed` varchar(5) NOT NULL,
  `singlebed` varchar(5) NOT NULL,
  `balcony` varchar(5) NOT NULL,
  `washroom` int(5) NOT NULL,
  `rent` varchar(200) NOT NULL,
  `ad_title` varchar(200) NOT NULL,
  `full_address` varchar(200) NOT NULL,
  `number` varchar(20) NOT NULL,
  `house_details` varchar(200) NOT NULL,
  `Image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ads`
--

INSERT INTO `ads` (`id`, `username`, `area`, `masterbed`, `singlebed`, `balcony`, `washroom`, `rent`, `ad_title`, `full_address`, `number`, `house_details`, `Image`) VALUES
(15, 'fahim', 'Bashundhara', '1', '1', '1', 1, '5000', 'afdkfkgsfhg', 'jijinin', '01778548555', '22', 'Upload/5cc5a7b8ab96c8.25695080.jpeg'),
(19, 'fahim', 'Bashundhara', '1', '1', '1', 1, '5000', 'afdkfkgsfhg', 'jijinin', '01623117783', 'asgagsfg', 'Upload/5cc682b723cb34.22357501.jpeg'),
(20, 'fahim', 'Bashundhara', '1', '1', '1', 1, '5000', 'afdkfkgsfhg', 'jijinin', '01623117783', 'asgagsfg', 'Upload/5cc6844d9eee27.07645572.jpeg'),
(21, 'fahim', 'Bashundhara', '1', '1', '1', 1, '1000', 'afdkfkgsfhg', 'jijinin', '01623117783', 'asgagsfg', 'Upload/5cc6848ac21471.64560245.jpeg'),
(22, 'fahim', 'Bashundhara', '1', '1', '1', 1, '1000', 'fffff', 'ffff', '01764004448', 'ff', 'Upload/5cc684d7ca2797.63841225.jpeg'),
(24, 'redwan22', 'Bashundhara', '1', '2', '0', 1, '15000', '2bed and 1washroom', 'kuril', '01778548555', 'asgagsfg', 'Upload/5cc68abe82f582.79060368.jpeg'),
(27, 'fahim', 'Bashundhara', '1', '1', '0', 1, '22', 'lkl', 'l', 'm', 'kn', 'Upload/5cc6902a1f4d25.13966224.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `uname` varchar(30) NOT NULL,
  `profile` varchar(200) NOT NULL,
  `portfolio` varchar(800) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`uname`, `profile`, `portfolio`) VALUES
('redwan11', '', ''),
('redwan02', '', ''),
('fahim', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('rejwan', '', ''),
('', '', ''),
('rifat', '', ''),
('', '', ''),
('shakila', '', ''),
('red', '', ''),
('Istiak420', '', ''),
('asd', '', ''),
('asd1', '', ''),
('shovon', '', ''),
('tanvir546', '', ''),
('tanvir007', '', ''),
('tanvir16', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` varchar(30) NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `password` varchar(64) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `day` int(2) NOT NULL,
  `month` varchar(10) NOT NULL,
  `year` int(5) NOT NULL,
  `mail` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `firstname`, `lastname`, `email`, `phone`, `password`, `gender`, `day`, `month`, `year`, `mail`) VALUES
('redwan02', 'redwan', 'fahim', 'red.fahim@gmail.com', '01623117783', 'asd123', 'male', 16, 'Jun', 1996, ''),
('redwan22', 'Redwan', 'Fahim', 'redwanfahim@gmail.com', '01623117783', '123123', 'male', 16, 'Feb', 1999, 'w1.jpeg'),
('fahim', 'fam', 'red', 'ff@gg.com', '01234567891', '123123', 'male', 16, 'Jan', 1995, ''),
('rejwan', 'Rejwan', 'Faisal', 'rejwan34@ymail.com', '01704955577', 'rejwan', 'male', 18, 'Oct', 2002, ''),
('rifat', 'rifat', 'fahim', 'rifat@php.com', '01623117783', '123123', 'male', 12, 'Feb', 1994, ''),
('shakila', 'shakila', 'Taskin', 'shakila@gmail.com', '01710000000', '123123', 'female', 12, 'Oct', 1996, ''),
('red', 'redwan', 'fahim', 'asdasd@asd.com', '01623117783', '123123', 'male', 12, 'Jan', 1999, 'w4 .jpeg'),
('Istiak420', 'Abdullah', 'Sajid', 'sajidabd@heda.com', '01621231236', '147147', 'male', 1, 'Jan', 1996, ''),
('asd', 'asd', 'asd', 'asd@asd.com', '01623117787', '789789', 'male', 12, 'Feb', 1996, 'kitchen .jpg'),
('asd1', 'asd', 'asd', 'asd@asd.com', '01623117787', '789789', 'male', 1, 'Feb', 1999, ''),
('shovon', 'sanjid', 'Alam', 'sanjid@shovon.com', '01793283200', 'icecream', 'male', 19, 'May', 1999, ''),
('tanvir546', 'Tanvir', 'Ahamed', 'tanvirahamed546@gmail.com', '01764004448', '123456', 'male', 20, 'Nov', 2002, ''),
('tanvir007', 'Akash', 'Ahamed', 'tanvirahamed546@gmail.com', '01764004448', '987654', 'male', 20, 'Nov', 2001, ''),
('tanvir16', 'Tanvir', 'Ahamed', 'tanvir546@gmail.com', '01764004448', '007007', 'male', 18, 'Aug', 1994, 'w1.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `userdetails`
--

CREATE TABLE `userdetails` (
  `ID` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Username` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Gender` varchar(255) NOT NULL,
  `Phone` varchar(255) NOT NULL,
  `Usertype` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `ConPassword` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userdetails`
--

INSERT INTO `userdetails` (`ID`, `Name`, `Username`, `Email`, `Gender`, `Phone`, `Usertype`, `Password`, `ConPassword`) VALUES
(3, 'Tanvir Ahamed', 'tanvir546', 'tanvir@gmail.com', 'Male', '01764004448', 'Admin', '12345', '12345'),
(4, 'Ananta', 'ananta007', 'ananta@gmail.com', 'Male', '07676017546', 'Admin', '98765', '98765');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userdetails`
--
ALTER TABLE `userdetails`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ads`
--
ALTER TABLE `ads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `userdetails`
--
ALTER TABLE `userdetails`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
