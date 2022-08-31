-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 28, 2019 at 10:15 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `votingdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbluserreg`
--

CREATE TABLE `tbluserreg` (
  `user_id` int(11) NOT NULL,
  `user_fname` varchar(200) NOT NULL,
  `user_lname` varchar(255) NOT NULL,
  `user_email` varchar(200) NOT NULL,
  `user_password` varchar(200) NOT NULL,
  `user_type` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbluserreg`
--

INSERT INTO `tbluserreg` (`user_id`, `user_fname`, `user_lname`, `user_email`, `user_password`, `user_type`, `image`) VALUES
(1, 'nidhi1', 'khanpara', 'nidhi@gmail.com', 'nidhi@123', 'User', 'images/5c9a0d1363a00.png'),
(2, 'nids', 'Patel', 'nids@gmail.com', 'nids@123', 'Organizer', 'images/5c7cb4d9179b7.png'),
(3, 'zeel', 'kapadia', 'zeel@gmail.com', 'zeel@123', 'Participant', 'images/5c9a0cea54d4d.png'),
(6, 'dark', 'knight', 'dark@gmail.com', 'dark@123', 'User', 'images/5c5ecba71cca2.png'),
(7, 'ruhi', 'patel', 'ruhi@gmail.com', 'ruhi@123', 'Participant', 'images/5c7bd2da762d1.png'),
(8, 'abc', 'pqr', 'abc@gmail.com', 'abc@123', 'User', 'images/5c94ec4d00424.png'),
(9, 'pqr', 'qwe', 'qwe@rty.com', '1qwe@rty', 'User', 'images/5c98da535bb74.png');

-- --------------------------------------------------------

--
-- Table structure for table `Tbl_Event_master`
--

CREATE TABLE `Tbl_Event_master` (
  `E_id` int(5) NOT NULL,
  `O_id` int(11) NOT NULL,
  `E_name` varchar(10) NOT NULL,
  `description` varchar(200) NOT NULL,
  `Banner_image` varchar(2000) NOT NULL,
  `Starting_date` date NOT NULL,
  `Ending_date` date NOT NULL,
  `E_Status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Tbl_Event_master`
--

INSERT INTO `Tbl_Event_master` (`E_id`, `O_id`, `E_name`, `description`, `Banner_image`, `Starting_date`, `Ending_date`, `E_Status`) VALUES
(11, 2, 'i', '', 'images/5c94a98b3f0a8.png', '2019-03-22', '2019-03-25', 'Running');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_follow_master`
--

CREATE TABLE `tbl_follow_master` (
  `F_id` int(11) NOT NULL,
  `Source_u_t_id` int(11) NOT NULL,
  `Target_u_t_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_follow_master`
--

INSERT INTO `tbl_follow_master` (`F_id`, `Source_u_t_id`, `Target_u_t_id`) VALUES
(1, 1, 7),
(2, 1, 7),
(3, 6, 7);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_post_checker`
--

CREATE TABLE `tbl_post_checker` (
  `P_id` int(11) NOT NULL,
  `e_id` int(11) NOT NULL,
  `pa_id` varchar(5) NOT NULL,
  `pa_name` varchar(500) NOT NULL,
  `Post_type` varchar(5) NOT NULL,
  `Image_data` varchar(200) NOT NULL,
  `video_data` varchar(200) NOT NULL,
  `Post_date` datetime NOT NULL,
  `user_id` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_post_checker`
--

INSERT INTO `tbl_post_checker` (`P_id`, `e_id`, `pa_id`, `pa_name`, `Post_type`, `Image_data`, `video_data`, `Post_date`, `user_id`) VALUES
(47, 11, '3', 'zeelkapadia', 'Image', 'images/5c94b0bc954bc.png', '', '0000-00-00 00:00:00', '1,6,8'),
(48, 11, '1', 'nidhi1khanpara', 'Image', 'images/5c98e35f36c5d.png', '', '0000-00-00 00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_result`
--

CREATE TABLE `tbl_result` (
  `R_id` int(5) NOT NULL,
  `e_id` int(11) NOT NULL,
  `pa_id` int(11) NOT NULL,
  `positive` int(11) NOT NULL,
  `negative` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_result`
--

INSERT INTO `tbl_result` (`R_id`, `e_id`, `pa_id`, `positive`, `negative`) VALUES
(1, 11, 3, 0, 3),
(2, 12, 3, 0, 2),
(3, 11, 6, 0, 2),
(4, 12, 6, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_voting_manager`
--

CREATE TABLE `tbl_voting_manager` (
  `Vm_id` int(11) NOT NULL,
  `E_id` varchar(5) NOT NULL,
  `Start_time` datetime NOT NULL,
  `End_time` datetime NOT NULL,
  `V_Status` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_voting_manager`
--

INSERT INTO `tbl_voting_manager` (`Vm_id`, `E_id`, `Start_time`, `End_time`, `V_Status`) VALUES
(12, '11', '2019-03-22 00:00:00', '2019-03-23 00:00:00', 'Running');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_voting_zone`
--

CREATE TABLE `tbl_voting_zone` (
  `Vz_id` int(11) NOT NULL,
  `E_id` varchar(5) NOT NULL,
  `Pa_id` varchar(5) NOT NULL,
  `user_id` int(11) NOT NULL,
  `poitive` int(11) NOT NULL,
  `negative` int(11) NOT NULL,
  `P_id` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_voting_zone`
--

INSERT INTO `tbl_voting_zone` (`Vz_id`, `E_id`, `Pa_id`, `user_id`, `poitive`, `negative`, `P_id`) VALUES
(2, '11', '3', 1, 0, 1, '47'),
(3, '11', '3', 6, 0, 1, '47'),
(4, '11', '3', 8, 0, 1, '47'),
(5, '12', '3', 1, 0, 1, '48'),
(6, '12', '3', 6, 0, 1, '47'),
(7, '12', '6', 6, 0, 1, '49'),
(8, '11', '6', 4, 0, 1, '49'),
(9, '11', '6', 4, 0, 1, '49');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbluserreg`
--
ALTER TABLE `tbluserreg`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `Tbl_Event_master`
--
ALTER TABLE `Tbl_Event_master`
  ADD PRIMARY KEY (`E_id`);

--
-- Indexes for table `tbl_follow_master`
--
ALTER TABLE `tbl_follow_master`
  ADD PRIMARY KEY (`F_id`);

--
-- Indexes for table `tbl_post_checker`
--
ALTER TABLE `tbl_post_checker`
  ADD PRIMARY KEY (`P_id`);

--
-- Indexes for table `tbl_result`
--
ALTER TABLE `tbl_result`
  ADD PRIMARY KEY (`R_id`);

--
-- Indexes for table `tbl_voting_manager`
--
ALTER TABLE `tbl_voting_manager`
  ADD PRIMARY KEY (`Vm_id`);

--
-- Indexes for table `tbl_voting_zone`
--
ALTER TABLE `tbl_voting_zone`
  ADD PRIMARY KEY (`Vz_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbluserreg`
--
ALTER TABLE `tbluserreg`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `Tbl_Event_master`
--
ALTER TABLE `Tbl_Event_master`
  MODIFY `E_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_follow_master`
--
ALTER TABLE `tbl_follow_master`
  MODIFY `F_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_post_checker`
--
ALTER TABLE `tbl_post_checker`
  MODIFY `P_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `tbl_result`
--
ALTER TABLE `tbl_result`
  MODIFY `R_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_voting_manager`
--
ALTER TABLE `tbl_voting_manager`
  MODIFY `Vm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_voting_zone`
--
ALTER TABLE `tbl_voting_zone`
  MODIFY `Vz_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
