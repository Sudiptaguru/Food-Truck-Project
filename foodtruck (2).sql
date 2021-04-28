-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 28, 2021 at 07:57 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `foodtruck`
--

-- --------------------------------------------------------

--
-- Table structure for table `chef`
--

CREATE TABLE `chef` (
  `id` int(10) UNSIGNED NOT NULL,
  `chef_name` varchar(100) NOT NULL,
  `chef_detail` text NOT NULL,
  `chef_image` text DEFAULT NULL,
  `status` char(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL,
  `uid` int(10) UNSIGNED NOT NULL COMMENT 'fodtruckuser id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chef`
--

INSERT INTO `chef` (`id`, `chef_name`, `chef_detail`, `chef_image`, `status`, `created_on`, `updated_on`, `uid`) VALUES
(1, 'Mark', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore', 'cherry-blossoms-301253_640.jpg', '1', '2021-04-19 18:50:23', '2021-04-19 18:50:23', 2),
(2, 'Sunil', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore', 'daisy-5237787_640.jpg', '1', '2021-04-19 19:09:07', '2021-04-19 19:09:07', 2),
(5, 'Sudhir', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore', NULL, '1', '2021-04-20 23:07:57', '2021-04-20 23:07:57', 2),
(6, 'Anil', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore', NULL, '1', '2021-04-20 23:09:26', '2021-04-20 23:09:26', 2),
(7, 'ChefA', 'lorem ipsum is absolute.', NULL, '1', '2021-04-22 16:04:19', '2021-04-22 16:04:19', 12),
(8, 'Sudip Chef A', 'lorem ipsum is absolue', NULL, '1', '2021-04-22 17:02:20', '2021-04-22 17:02:20', 13);

-- --------------------------------------------------------

--
-- Table structure for table `cms_master`
--

CREATE TABLE `cms_master` (
  `cms_id` int(11) NOT NULL,
  `page_slug` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `content` longtext COLLATE utf8mb4_bin NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '1->Active,0->Inactive',
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` int(11) NOT NULL,
  `created_datetime` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `cms_master`
--

INSERT INTO `cms_master` (`cms_id`, `page_slug`, `title`, `content`, `status`, `delete_status`, `created_by`, `created_datetime`, `updated_by`, `updated_datetime`) VALUES
(11, 'effgedf', 'The Manta Ray Inn', '<p>ddxffv</p>\r\n', 1, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(12, 'hell', 'The Manta Ray Inn', '<p>dfdsfsdfdsfds</p>\r\n', 1, 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `foodtruck_schedule`
--

CREATE TABLE `foodtruck_schedule` (
  `id` int(10) UNSIGNED NOT NULL,
  `day` varchar(10) NOT NULL,
  `start_time` varchar(20) NOT NULL,
  `end_time` varchar(10) NOT NULL,
  `location` text NOT NULL,
  `truck_owner_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `foodtruck_schedule`
--

INSERT INTO `foodtruck_schedule` (`id`, `day`, `start_time`, `end_time`, `location`, `truck_owner_id`) VALUES
(15, 'MON', '1:00', '1:00', 'New York, NY, USA', 2),
(16, 'TUE', '1:00', '1:00', 'Kentucky Horse Park, Iron Works Parkway, Lexington, KY, USA', 2),
(17, 'WED', '1:00', '1:00', 'California City, CA, USA', 2),
(18, 'THU', '0:30', '0:30', 'Georgia Aquarium, Baker Street Northwest, Atlanta, GA, USA', 2),
(19, 'FRI', '1:00', '1:30', 'Washington, D.C., DC, USA', 2),
(20, 'SAT', '0:30', '1:00', 'California City, CA, USA', 2),
(21, 'SUN', '0:00', '0:30', 'Key West, FL, USA', 2),
(22, 'MON', '0:00', '23:30', 'California City, CA, USA', 10),
(23, 'TUE', '7:00', '23:00', 'California City, CA, USA', 10),
(24, 'WED', '6:00', '20:30', 'Texas, USA', 10),
(25, 'THU', '4:00', '21:30', 'Florida, USA', 10),
(26, 'FRI', '12:30', '15:00', 'Kent, WA, USA', 10),
(27, 'SAT', '4:00', '20:30', 'Washington, D.C., DC, USA', 10),
(28, 'SUN', '8:00', '18:00', 'Kent, WA, USA', 10),
(29, 'MONDAY', '0:00', '14:30', 'Washington D.C., DC, USA', 11),
(30, 'TUESDAY', '14:00', '7:00', 'New York, NY, USA', 11),
(31, 'WEDNESDAY', '14:00', '16:00', 'San Francisco, CA, USA', 11),
(32, 'THURSDAY', '7:00', '18:00', 'Florida, USA', 11),
(33, 'FRIDAY', '0:30', '9:30', 'New York, NY, USA', 11),
(34, 'SATURDAY', '2:00', '2:30', 'California City, CA, USA', 11),
(35, 'SUNDAY', '0:00', '2:00', 'Los Angeles, CA, USA', 11),
(36, 'MONDAY', '0:00', '19:30', 'California City, CA, USA', 12),
(37, 'TUESDAY', '8:00', '18:30', 'Washington D.C., DC, USA', 12),
(38, 'WEDNESDAY', '9:00', '15:00', 'Florida, USA', 12),
(39, 'THURSDAY', '7:30', '18:00', 'New York, NY, USA', 12),
(40, 'FRIDAY', '4:30', '11:00', 'Los Angeles, CA, USA', 12),
(41, 'SATURDAY', '12:30', '13:30', 'Los Angeles, CA, USA', 12),
(42, 'SUNDAY', '4:30', '10:30', 'Los Angeles, CA, USA', 12),
(43, 'MONDAY', '0:00', '5:30', 'New York, NY, USA', 13),
(44, 'TUESDAY', '2:00', '9:30', 'New York, NY, USA', 13),
(45, 'WEDNESDAY', '16:30', '20:30', 'New York, NY, USA', 13),
(46, 'THURSDAY', '13:00', '20:00', 'Los Angeles, CA, USA', 13),
(47, 'FRIDAY', '10:00', '15:00', 'Los Angeles, CA, USA', 13),
(48, 'SATURDAY', '8:30', '16:00', 'Los Angeles, CA, USA', 13),
(49, 'SUNDAY', '7:00', '9:30', 'Los Angeles, CA, USA', 13);

-- --------------------------------------------------------

--
-- Table structure for table `food_menu`
--

CREATE TABLE `food_menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `images` text NOT NULL,
  `status` char(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `food_menu`
--

INSERT INTO `food_menu` (`id`, `user_id`, `images`, `status`) VALUES
(1, 2, 'cherry-blossoms-301253_640.jpg', '1'),
(2, 2, 'cherry-blossoms-301253_6401.jpg', '1'),
(3, 10, 'cherry-blossoms-301253_6402.jpg', '1'),
(4, 10, 'cherry-blossoms-301253_6403.jpg', '1'),
(5, 12, 'cherry-blossoms-301253_6404.jpg', '1'),
(6, 12, 'cherry-blossoms-301253_6405.jpg', '1');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `menu_id` int(11) NOT NULL,
  `menu_name` varchar(255) NOT NULL,
  `menu_icon` varchar(255) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `menu_url` varchar(255) NOT NULL,
  `date_of_creation` datetime NOT NULL,
  `date_of_update` datetime NOT NULL,
  `menu_rank` decimal(10,2) DEFAULT 10.00
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`menu_id`, `menu_name`, `menu_icon`, `parent_id`, `menu_url`, `date_of_creation`, `date_of_update`, `menu_rank`) VALUES
(1, 'Dashboard', '<i class=\"nav-icon fas fa-tachometer-alt\"></i>', 0, 'administrator/User/back', '2021-03-19 14:16:30', '2021-03-19 14:16:30', '1.00'),
(2, 'User Management', '<i class=\"nav-icon fas fa-user\"></i>', 0, 'administrator/User', '2021-03-19 14:16:30', '2021-03-19 14:16:30', '2.00'),
(6, 'Food Truck Management', '<i class=\"nav-icon fas fa-truck\"></i>', 0, 'administrator/Foodtruck', '2021-03-19 14:25:32', '2021-03-19 14:25:32', '10.00'),
(7, 'Customer Management', '<i class=\"nav-icon fa fa-users\" aria-hidden=\"true\"></i>', 0, 'administrator/User/back', '2021-03-19 14:25:32', '2021-03-19 14:25:32', '11.00'),
(8, 'CMS', '<i class=\"nav-icon fas fa-tasks\"></i>', 0, 'administrator/User/back', '2021-03-19 14:25:32', '2021-03-19 14:25:32', '11.10'),
(9, 'Subscription Plan', '<i class=\"nav-icon  fa fa-calendar\" aria-hidden=\"true\"></i>', 0, 'administrator/User/back', '2021-03-19 14:25:32', '2021-03-19 14:25:32', '11.20'),
(10, 'Advertisment  Subscription', '<i class=\"nav-icon  fas fa-ad\"></i>', 0, 'administrator/User/back', '2021-03-19 14:25:32', '2021-03-19 14:25:32', '11.30'),
(11, 'Reports', '<i class=\"nav-icon fa fa-user\" aria-hidden=\"true\"></i>', 0, '', '2021-03-19 14:25:32', '2021-03-19 14:25:32', '11.40'),
(12, 'Transaction History', '<i class=\"nav-icon fas fa-history\"></i>', 11, 'administrator/User/back', '2021-03-19 14:25:32', '2021-03-19 14:25:32', '12.00'),
(13, 'Subscription Report', '<i class=\"nav-icon fas fa-credit-card\"></i>', 11, 'administrator/User/back', '2021-03-19 14:25:32', '2021-03-19 14:25:32', '13.00'),
(14, 'Notification', '<i class=\"nav-icon fas fa-bell\"></i>', 0, 'administrator/User/back', '2021-03-19 14:25:32', '2021-03-19 14:25:32', '14.00'),
(15, 'Support Ticket', '<i class=\"nav-icon fas fa-ticket-alt\"></i>', 0, 'administrator/User/back', '2021-03-19 14:25:32', '2021-03-19 14:25:32', '15.00'),
(18, 'Add Food Truck', '<i class=\"nav-icon fa fa-plus\"></i>', 6, 'administrator/Foodtruck/add', '2021-04-16 12:20:52', '2021-04-16 12:20:52', '10.00'),
(19, 'Manage Food Truck', '<i class=\"nav-icon fa fa-tasks\"></i>', 6, 'administrator/Foodtruck', '2021-04-16 12:20:52', '2021-04-16 12:20:52', '10.00');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `group_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date_of_creation` datetime NOT NULL,
  `date_of_update` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`group_id`, `name`, `status`, `date_of_creation`, `date_of_update`) VALUES
(1, 'Super Admin', 1, '2020-08-19 14:54:53', '2018-08-30 15:16:36'),
(2, 'Provider', 1, '2018-07-27 04:08:02', '2021-03-23 21:52:11'),
(3, 'Customer', 1, '2021-04-08 14:53:08', '2021-04-08 14:53:08');

-- --------------------------------------------------------

--
-- Table structure for table `role_menu`
--

CREATE TABLE `role_menu` (
  `role_menu_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role_menu`
--

INSERT INTO `role_menu` (`role_menu_id`, `role_id`, `menu_id`) VALUES
(81, 1, 1),
(82, 1, 2),
(83, 1, 6),
(84, 1, 18),
(85, 1, 19),
(86, 1, 7),
(87, 1, 8),
(88, 1, 9),
(89, 1, 10),
(90, 1, 11),
(91, 1, 12),
(92, 1, 13),
(93, 1, 14),
(94, 1, 15);

-- --------------------------------------------------------

--
-- Table structure for table `slug`
--

CREATE TABLE `slug` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `slug`
--

INSERT INTO `slug` (`id`, `name`, `slug`, `created`, `updated`) VALUES
(1, 'Sudipta Guru', 'hghg', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `truck_details`
--

CREATE TABLE `truck_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `truck_name` varchar(100) NOT NULL,
  `facebook` text NOT NULL,
  `twitter` text NOT NULL,
  `linkedin` text NOT NULL,
  `website` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `truck_details`
--

INSERT INTO `truck_details` (`id`, `user_id`, `truck_name`, `facebook`, `twitter`, `linkedin`, `website`, `created_at`, `updated_at`) VALUES
(6, 2, 'Truck2', 'fb1', 'ff0d34e409a13ef56eea54c52a291126', 'ln1', 'www.test.iz', '2021-04-16 23:14:31', '2021-04-16 23:14:31'),
(7, 10, 'Good truck', 'facebook', 'b73c2d22763d1ce2143a3755c1d0ad3a', 'linkedin', 'www.goodtruck.com', '2021-04-16 20:55:52', '2021-04-16 20:55:52'),
(8, 12, 'Atul Truck', 'Atul facebook', 'Atul twitter', 'Atul linkedin', 'www.atul.co', '2021-04-22 16:00:08', '2021-04-22 16:00:08'),
(9, 13, 'Sudip Truck', 'sudip facebook', 'sudip twitter', 'sudip linkedin', 'www.sudip.co', '2021-04-22 16:58:55', '2021-04-22 16:58:55');

-- --------------------------------------------------------

--
-- Table structure for table `truck_images`
--

CREATE TABLE `truck_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `truck_details_id` int(10) UNSIGNED NOT NULL,
  `image` text NOT NULL,
  `status` char(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `truck_images`
--

INSERT INTO `truck_images` (`id`, `user_id`, `truck_details_id`, `image`, `status`) VALUES
(6, 2, 6, 'cherry-blossoms-301253_640.jpg', '1'),
(7, 2, 6, 'cherry-blossoms-301253_6401.jpg', '1'),
(8, 10, 7, 'cherry-blossoms-301253_6402.jpg', '1'),
(9, 10, 7, 'cherry-blossoms-301253_6403.jpg', '1'),
(11, 13, 9, 'cherry-blossoms-301253_6406.jpg', '1'),
(12, 13, 9, 'cherry-blossoms-301253_6407.jpg', '1');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) UNSIGNED NOT NULL,
  `group_id` int(1) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `profile_pic` text NOT NULL,
  `status` char(1) DEFAULT '1' COMMENT '0=>Not Active, 1=>Active,2=>waiting for approval,3=>deleted',
  `created_by` int(11) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  `deleted_on` datetime DEFAULT NULL,
  `is_deleted` int(1) DEFAULT 0 COMMENT '0=>No, 1=>Yes'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `group_id`, `first_name`, `last_name`, `mobile`, `email`, `password`, `profile_pic`, `status`, `created_by`, `created_on`, `updated_on`, `deleted_on`, `is_deleted`) VALUES
(1, 1, 'Super', 'Admin', '1234567890', 'admin@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', '1', 0, '2019-09-17 11:53:32', '2021-03-03 01:05:22', NULL, 0),
(2, 2, 'Ajay', 'Kumar', '1234567894', 'ajay@mail.com', '$2y$10$76EsQVov3PgiJoHH.ok8OeN8O0IbqCCELi/YszQ5BQZajve7vVf9S', '', '1', 1, '2021-03-26 20:56:49', '2021-04-22 20:33:16', NULL, 1),
(3, 3, 'John', 'Mark', NULL, 'jmark@gmail.com', '$2y$10$76EsQVov3PgiJoHH.ok8OeN8O0IbqCCELi/YszQ5BQZajve7vVf9S', '', '1', 1, '2021-04-08 20:19:24', '2021-04-08 20:20:14', NULL, 0),
(9, 3, 'Anil', 'Kumar', '1234567891', 'anil@mail.com', '$2y$10$76EsQVov3PgiJoHH.ok8OeN8O0IbqCCELi/YszQ5BQZajve7vVf9S', '', NULL, NULL, NULL, NULL, NULL, 0),
(10, 2, 'Mark', 'Jones', NULL, 'mark@mail.com', '$2y$10$76EsQVov3PgiJoHH.ok8OeN8O0IbqCCELi/YszQ5BQZajve7vVf9S', '', '1', 1, '2021-04-16 20:54:29', '2021-04-16 20:54:29', NULL, 0),
(11, 2, 'Sujit', 'Kumar', '1234567890', 'suji@mail.com', '$2y$10$8DEYkiY7zHvxipbqdKJfhOunBINfsskHXmzcvoAs1CItDIGK./A9K', '', '1', NULL, NULL, NULL, NULL, 0),
(12, 2, 'Atul', 'Kumar', '1234567890', 'atul@mail.com', '$2y$10$KsL1kLy1IZ9JyNZKSRmLO.EnPK0m2Ovhl6aeVYMINHjeFhi85xZq6', '', '1', NULL, NULL, NULL, NULL, 0),
(13, 2, 'Sudip', 'Kumar', '2343234567', 'sudip@mail.com', '$2y$10$WG5MCeCoJOOT4o.JRysK7eZZkAc0E4fNwz2s.BBDeDcustnb8PEoS', '', '1', NULL, NULL, NULL, NULL, 0),
(14, NULL, 'fbgfgbfg', 'gfggfg', '425425', NULL, NULL, '', '1', NULL, NULL, NULL, NULL, 0),
(15, 2, 'refrfgtrgt', 'grggv', '123456', 'qw@mail.com', 'f108a6bd72f03b5811809abbdba5f044', '', '1', NULL, '2021-04-27 22:45:04', NULL, NULL, 0),
(16, 2, 'a', 'b', '0423467583', 'qw@mail.com', '92eb5ffee6ae2fec3ad71c777531578f', '', '1', NULL, '2021-04-27 22:45:04', NULL, NULL, 0),
(17, 2, 'fgfg', '4rttr4rt', '123456', 'qw@mail.com', '0a135375d0f8322351095c993a7ef4b1', '', '1', NULL, '2021-04-27 22:52:04', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_profile`
--

CREATE TABLE `user_profile` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `profile_image` text NOT NULL,
  `country` int(11) NOT NULL,
  `state` int(11) NOT NULL,
  `city` int(11) NOT NULL,
  `lat` int(11) NOT NULL,
  `lon` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chef`
--
ALTER TABLE `chef`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_master`
--
ALTER TABLE `cms_master`
  ADD PRIMARY KEY (`cms_id`);

--
-- Indexes for table `foodtruck_schedule`
--
ALTER TABLE `foodtruck_schedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `food_menu`
--
ALTER TABLE `food_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`menu_id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`group_id`);

--
-- Indexes for table `role_menu`
--
ALTER TABLE `role_menu`
  ADD PRIMARY KEY (`role_menu_id`);

--
-- Indexes for table `slug`
--
ALTER TABLE `slug`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `truck_details`
--
ALTER TABLE `truck_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `truck_images`
--
ALTER TABLE `truck_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chef`
--
ALTER TABLE `chef`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `cms_master`
--
ALTER TABLE `cms_master`
  MODIFY `cms_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `foodtruck_schedule`
--
ALTER TABLE `foodtruck_schedule`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `food_menu`
--
ALTER TABLE `food_menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `role_menu`
--
ALTER TABLE `role_menu`
  MODIFY `role_menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `slug`
--
ALTER TABLE `slug`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `truck_details`
--
ALTER TABLE `truck_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `truck_images`
--
ALTER TABLE `truck_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
