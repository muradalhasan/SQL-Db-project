-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 20, 2024 at 10:46 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lfbsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(200) DEFAULT NULL,
  `UserName` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Address` varchar(200) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `AdminRegdate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Address`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'admin', 'admin', 5689784592, '', 'admin@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2022-12-04 11:58:35');

-- --------------------------------------------------------

--
-- Table structure for table `tbldesk`
--

CREATE TABLE `tbldesk` (
  `id` int(11) NOT NULL,
  `deskNumber` varchar(120) DEFAULT NULL,
  `laptopChargerScoket` varchar(10) DEFAULT NULL,
  `isOccupied` char(1) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbldesk`
--

INSERT INTO `tbldesk` (`id`, `deskNumber`, `laptopChargerScoket`, `isOccupied`, `postingDate`) VALUES
(1, 'SP-01', 'Yes', '', '2022-12-04 10:38:52'),
(11, 'SP-02', 'Yes', NULL, '2024-09-20 07:52:40'),
(12, 'SP-03', NULL, NULL, '2024-09-20 07:52:56'),
(13, 'SP-04', NULL, NULL, '2024-09-20 07:53:07'),
(14, 'SP-05', 'Yes', NULL, '2024-09-20 07:54:20'),
(15, 'GM-01', 'Yes', NULL, '2024-09-20 07:55:09'),
(16, 'GM-02', 'Yes', NULL, '2024-09-20 07:55:20'),
(17, 'GM-03', 'Yes', NULL, '2024-09-20 07:55:32'),
(18, 'GM-04', 'Yes', NULL, '2024-09-20 07:55:46'),
(19, 'GM-05', 'Yes', NULL, '2024-09-20 07:55:59'),
(20, 'GM-06', 'Yes', NULL, '2024-09-20 07:56:09');

-- --------------------------------------------------------

--
-- Table structure for table `tbldeskhistory`
--

CREATE TABLE `tbldeskhistory` (
  `id` int(11) NOT NULL,
  `stduentId` int(11) DEFAULT NULL,
  `deaskId` int(11) DEFAULT NULL,
  `assignRemark` mediumtext DEFAULT NULL,
  `assignDate` timestamp NULL DEFAULT current_timestamp(),
  `unassignDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `unassignedRemark` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbldeskhistory`
--

INSERT INTO `tbldeskhistory` (`id`, `stduentId`, `deaskId`, `assignRemark`, `assignDate`, `unassignDate`, `unassignedRemark`) VALUES
(4, 2, 3, 'NA', '2022-12-04 13:38:14', '2022-12-04 13:59:21', 'NA'),
(6, 5, 3, 'Assigned', '2022-12-04 14:00:31', '2024-09-20 07:49:04', 'unassigned'),
(7, 2, 1, 'Desk assigned.', '2022-12-07 16:00:32', '2022-12-07 16:11:38', 'Student want to shift to the new desk.'),
(8, 9, 9, 'Desk assigned.', '2022-12-07 17:59:23', '2022-12-07 17:59:51', 'unassigned.'),
(9, 9, 6, 'New seat assigned.', '2022-12-07 18:00:30', '2024-09-20 07:48:43', 'Unassigned');

-- --------------------------------------------------------

--
-- Table structure for table `tblstudents`
--

CREATE TABLE `tblstudents` (
  `id` int(11) NOT NULL,
  `registrationNumber` varchar(8) NOT NULL,
  `studentName` varchar(150) DEFAULT NULL,
  `studentContactNo` bigint(12) DEFAULT NULL,
  `studentEmailId` varchar(120) DEFAULT NULL,
  `studentQualification` varchar(200) DEFAULT NULL,
  `studentAddress` mediumtext DEFAULT NULL,
  `regDate` timestamp NULL DEFAULT current_timestamp(),
  `isActive` int(11) DEFAULT NULL,
  `isDeskAssign` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblstudents`
--

INSERT INTO `tblstudents` (`id`, `registrationNumber`, `studentName`, `studentContactNo`, `studentEmailId`, `studentQualification`, `studentAddress`, `regDate`, `isActive`, `isDeskAssign`) VALUES
(2, '20301132', 'Tasmia Hasan', 1839573835, 'tasmia.hasan2@g.bracu.ac.bd', 'BBA', 'Dhanmondi 4', '2022-12-04 12:35:01', 1, NULL),
(5, '75594594', 'Mahmud Hasan', 1425362536, 'mahmud.hasan3@gbracu.ac.bd', 'BBA', '83/4 Uttara Sector 7', '2022-12-04 13:12:33', 1, ''),
(7, '17480451', 'Rafiul Karim', 4152635241, 'rafiul.karim1@g.bracu.ac.bd', 'CSE', 'NA', '2022-12-07 16:16:08', 1, NULL),
(8, '31775005', 'Adnan Karim', 4859632102, 'adnan.karim@gmail.com', 'CSE', 'Dhanmondi 15/A ', '2022-12-07 16:16:40', 1, NULL),
(9, '18495466', 'Nayem Bin Omar', 1231234560, 'nayem.bin.omar@g,bracu.ac.bd', 'CS', 'Khilgaon ', '2022-12-07 17:57:53', 1, ''),
(10, '19003873', 'Wasi Anan Anisha', 173134236, 'wasi.anan.anisha@g.bracu.ac.bd', 'BBA', 'Mohammadpur', '2024-09-18 21:50:19', 1, NULL),
(11, '28111649', 'n,m.jm.', 7357577567, 'whot038@gmail.com', 'BBA', '079 Collins Avenue', '2024-09-18 21:58:33', 1, NULL),
(12, '21052861', 'ADDASDN', 8523672923, 'zeesadpixel@gmail.com', 'CS', 'Dhanmondi', '2024-09-18 22:57:03', 1, NULL),
(13, '14220785', 'Arpita Saha', 8523672923, 'arpita.saha1@g.bracu.ac.bd', 'CSE', 'Rampura', '2024-09-18 23:10:07', 1, NULL),
(14, '20301158', 'Zeehan Ahmed', 8523672923, 'zeehan.ahmed@gmail.com', 'CSE', 'Khilgaon', '2024-09-20 08:22:12', 1, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbldesk`
--
ALTER TABLE `tbldesk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbldeskhistory`
--
ALTER TABLE `tbldeskhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblstudents`
--
ALTER TABLE `tblstudents`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbldesk`
--
ALTER TABLE `tbldesk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbldeskhistory`
--
ALTER TABLE `tbldeskhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblstudents`
--
ALTER TABLE `tblstudents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
