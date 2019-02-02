-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 02, 2019 at 02:43 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 5.6.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `testdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `asyncinterviews`
--

CREATE TABLE `asyncinterviews` (
  `id` int(11) NOT NULL,
  `InterviewId` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `link` text,
  `pin` int(11) DEFAULT NULL,
  `status` enum('Available','Verified','Submitted','Completed','Reviewed') DEFAULT NULL,
  `paymentstatus` enum('Pending','Success') DEFAULT NULL,
  `packageType` varchar(100) NOT NULL,
  `price` float NOT NULL,
  `discount` float NOT NULL,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `asyncinterviews`
--

INSERT INTO `asyncinterviews` (`id`, `InterviewId`, `email`, `link`, `pin`, `status`, `paymentstatus`, `packageType`, `price`, `discount`, `createdAt`, `updatedAt`) VALUES
(1, 1000, 'braj@gmail.com', 'http://abc.com', 1122, 'Available', 'Success', '', 0, 0, '0000-00-00 00:00:00', '2019-02-02 01:39:17'),
(2, 1001, 'braj@gmail.com', 'http://abc.com', 1123, 'Available', 'Success', '', 0, 0, '0000-00-00 00:00:00', '2019-02-02 01:36:51');

-- --------------------------------------------------------

--
-- Table structure for table `asyncmocks`
--

CREATE TABLE `asyncmocks` (
  `id` int(11) NOT NULL,
  `InterviewId` int(11) DEFAULT NULL,
  `q_title` varchar(255) DEFAULT NULL,
  `ano` int(11) DEFAULT NULL,
  `uid` varchar(255) DEFAULT NULL,
  `answer` varchar(255) DEFAULT NULL,
  `videoURL` text NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `email` varchar(200) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `max_count` int(11) DEFAULT NULL,
  `time_taken` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `asyncmocks`
--

INSERT INTO `asyncmocks` (`id`, `InterviewId`, `q_title`, `ano`, `uid`, `answer`, `videoURL`, `userId`, `email`, `status`, `max_count`, `time_taken`, `createdAt`, `updatedAt`) VALUES
(1, 1000, 'Hello, How are you. Tell me About yourself?', 1, 'v-3fd8d9a7-5a45-41f0-8654-d1ea06a8c2fe', 'hello new test ', '', 0, '', 0, 4, ' (1:56)', '0000-00-00 00:00:00', '2019-01-31 09:42:17'),
(2, 1000, 'What are your special skills?', 2, 'v-db9dc188-f1d4-48ba-9ef2-d05c3172a6f1', 'hello new test ', '', 0, '', 0, 4, ' (1:54)', '0000-00-00 00:00:00', '2019-01-31 09:42:47'),
(3, 1000, 'How to insert data ?', 3, 'v-d3d05caa-6ea1-47ca-91b3-8cbd63c9e3ea', 'hello new test ', '', 0, '', 0, 4, ' (1:57)', '0000-00-00 00:00:00', '2019-01-31 09:45:02'),
(4, 1000, 'What is the diff between java and .net?', 4, 'v-bda20dc0-7c7c-4363-9145-85d1d5fa466b', 'hello new test ', '', 0, '', 0, 4, ' (1:55)', '0000-00-00 00:00:00', '2019-01-31 09:45:31');

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `name`, `createdAt`, `updatedAt`) VALUES
(1, NULL, '2019-01-26 14:54:38', '2019-01-26 14:54:38'),
(2, NULL, '2019-01-26 14:56:56', '2019-01-26 14:56:56'),
(3, 'vikk', '2019-01-26 14:57:26', '2019-01-26 14:57:26'),
(4, 'vikk333', '2019-01-26 14:57:33', '2019-01-26 14:57:33');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `discounts`
--

CREATE TABLE `discounts` (
  `id` int(11) NOT NULL,
  `course_id` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fees`
--

CREATE TABLE `fees` (
  `id` int(11) NOT NULL,
  `course_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `fee` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `joinings`
--

CREATE TABLE `joinings` (
  `id` int(11) NOT NULL,
  `course_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `myexams`
--

CREATE TABLE `myexams` (
  `id` int(11) NOT NULL,
  `InterviewId` int(10) NOT NULL,
  `q_title` varchar(255) DEFAULT NULL,
  `ano` int(11) DEFAULT NULL,
  `uid` varchar(255) DEFAULT NULL,
  `answer` varchar(255) DEFAULT NULL,
  `videoURL` text NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `email` varchar(200) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `max_count` int(10) NOT NULL,
  `time_taken` varchar(10) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `myexams`
--

INSERT INTO `myexams` (`id`, `InterviewId`, `q_title`, `ano`, `uid`, `answer`, `videoURL`, `userId`, `email`, `status`, `max_count`, `time_taken`, `createdAt`, `updatedAt`) VALUES
(12, 1000, 'Hello Good Morning. Describe yourself?', 1, 'v-1738db17-c3df-40ad-9ceb-72f3e4b96811', 'hello new test ', '//www.cameratag.com/assets/v-1738db17-c3df-40ad-9ceb-72f3e4b96811/mp4.mp4', 1, 'braj@gmail.com', 0, 4, ' (55)', '0000-00-00 00:00:00', '2019-02-02 01:38:01'),
(13, 1000, 'What are your special skills?', 2, 'v-86ef91fd-35fe-4789-bb5c-7fc6b4d75688', 'hello new test ', '//www.cameratag.com/assets/v-86ef91fd-35fe-4789-bb5c-7fc6b4d75688/mp4.mp4', 1, 'braj@gmail.com', 0, 4, ' (54)', '0000-00-00 00:00:00', '2019-02-02 01:38:28'),
(14, 1000, 'How to insert data ?', 3, 'v-582583c5-59d1-48b9-9b95-16d34ed0f3c6', 'hello new test ', '//www.cameratag.com/assets/v-582583c5-59d1-48b9-9b95-16d34ed0f3c6/mp4.mp4', 1, 'braj@gmail.com', 0, 4, ' (54)', '0000-00-00 00:00:00', '2019-02-02 01:38:51'),
(15, 1000, 'What is the diff between java and dot net?', 4, 'v-8a92b4d1-051c-4f1e-b946-50102befa8f2', 'hello new test ', '//www.cameratag.com/assets/v-8a92b4d1-051c-4f1e-b946-50102befa8f2/mp4.mp4', 1, 'braj@gmail.com', 0, 4, ' (54)', '0000-00-00 00:00:00', '2019-02-02 01:39:17'),
(16, 1001, 'What do you know about Oops Concepts?', 1, 'v-d58f69ab-6635-4c4f-ac73-a59dde029614', 'hello new test ', '//www.cameratag.com/assets/v-d58f69ab-6635-4c4f-ac73-a59dde029614/mp4.mp4', 1, 'braj@gmail.com', 0, 3, ' (15)', '0000-00-00 00:00:00', '2019-02-02 01:36:08'),
(17, 1001, 'What is Machine Learning ?', 2, 'v-010c511c-8b05-4986-9ff2-19c7036a39b8', 'hello new test ', '//www.cameratag.com/assets/v-010c511c-8b05-4986-9ff2-19c7036a39b8/mp4.mp4', 1, 'braj@gmail.com', 0, 3, ' (55)', '0000-00-00 00:00:00', '2019-02-02 01:36:30'),
(18, 1001, 'What is automation testing and manual testing?', 3, 'v-d5aa20c4-eea3-4eac-b947-dec6027eee5d', 'hello new test ', '//www.cameratag.com/assets/v-d5aa20c4-eea3-4eac-b947-dec6027eee5d/mp4.mp4', 1, 'braj@gmail.com', 0, 3, ' (56)', '0000-00-00 00:00:00', '2019-02-02 01:36:51');

-- --------------------------------------------------------

--
-- Table structure for table `sequelizemeta`
--

CREATE TABLE `sequelizemeta` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sequelizemeta`
--

INSERT INTO `sequelizemeta` (`name`) VALUES
('20181225083603-create-company.js'),
('20181225103048-create-user.js'),
('20181227073353-create-course.js'),
('20181227074809-create-joining.js'),
('20181227113413-create-fee.js'),
('20181227120559-create-discount.js'),
('20190125064851-create-myexam.js'),
('20190130011853-create-async-interview.js'),
('20190131100131-create-async-mocks.js');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `createdBy` varchar(255) DEFAULT NULL,
  `updatedBy` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `asyncinterviews`
--
ALTER TABLE `asyncinterviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `asyncmocks`
--
ALTER TABLE `asyncmocks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `discounts`
--
ALTER TABLE `discounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fees`
--
ALTER TABLE `fees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `joinings`
--
ALTER TABLE `joinings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `myexams`
--
ALTER TABLE `myexams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sequelizemeta`
--
ALTER TABLE `sequelizemeta`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `asyncinterviews`
--
ALTER TABLE `asyncinterviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `asyncmocks`
--
ALTER TABLE `asyncmocks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `discounts`
--
ALTER TABLE `discounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fees`
--
ALTER TABLE `fees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `joinings`
--
ALTER TABLE `joinings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `myexams`
--
ALTER TABLE `myexams`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
