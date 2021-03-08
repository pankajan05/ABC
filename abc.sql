-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 08, 2021 at 10:30 AM
-- Server version: 5.7.26
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `abc`
--

-- --------------------------------------------------------

--
-- Table structure for table `lecturer`
--

DROP TABLE IF EXISTS `lecturer`;
CREATE TABLE IF NOT EXISTS `lecturer` (
  `EmployeeId` varchar(6) NOT NULL,
  `LecturerName` varchar(200) NOT NULL,
  `Faculty` varchar(100) NOT NULL,
  `Department` varchar(100) NOT NULL,
  `Center` varchar(100) NOT NULL,
  `Building` varchar(100) NOT NULL,
  `Level` int(11) NOT NULL,
  `Rank` varchar(20) NOT NULL,
  PRIMARY KEY (`EmployeeId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lecturer`
--

INSERT INTO `lecturer` (`EmployeeId`, `LecturerName`, `Faculty`, `Department`, `Center`, `Building`, `Level`, `Rank`) VALUES
('000123', 'Sankara', 'Business', 'Marketing', 'Malabe', 'A-Block', 1, '1.000123'),
('000155', 'chachinn', 'Humanities And Sciences', 'Social', 'Jaffna', 'B-Block', 2, '2.000155');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
CREATE TABLE IF NOT EXISTS `location` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `BuildingName` varchar(50) NOT NULL,
  `RoomName` varchar(50) NOT NULL,
  `Capacity` int(11) NOT NULL,
  `RoomType` varchar(50) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`Id`, `BuildingName`, `RoomName`, `Capacity`, `RoomType`) VALUES
(2, 'ElecBuilding', 'Kanangara', 100, 'LectureHall');

-- --------------------------------------------------------

--
-- Table structure for table `new`
--

DROP TABLE IF EXISTS `new`;
CREATE TABLE IF NOT EXISTS `new` (
  `SubjectName` varchar(200) NOT NULL,
  `LecturerName` varchar(200) NOT NULL,
  `RoomName` varchar(200) NOT NULL,
  `Id` int(11) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `new`
--

INSERT INTO `new` (`SubjectName`, `LecturerName`, `RoomName`, `Id`) VALUES
('Software Fundamental', 'Sankara', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

DROP TABLE IF EXISTS `session`;
CREATE TABLE IF NOT EXISTS `session` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Lecturer1Id` varchar(6) NOT NULL,
  `Lecturer2Id` varchar(6) NOT NULL,
  `SubjectCode` varchar(10) NOT NULL,
  `GroupId` varchar(30) NOT NULL,
  `Tag` varchar(10) NOT NULL,
  `Room` int(11) NOT NULL,
  `TotalStudent` int(11) NOT NULL,
  `Duration` int(11) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `session`
--

INSERT INTO `session` (`Id`, `Lecturer1Id`, `Lecturer2Id`, `SubjectCode`, `GroupId`, `Tag`, `Room`, `TotalStudent`, `Duration`) VALUES
(2, '000123', '000123', 'IT1113', 'Y1S1.IT.1', 'tute', 2, 100, 1),
(3, '000155', '000155', 'IT1133', 'Y1S2.CSSE.1', 'lect', 2, 122, 3);

-- --------------------------------------------------------

--
-- Table structure for table `studentgroub`
--

DROP TABLE IF EXISTS `studentgroub`;
CREATE TABLE IF NOT EXISTS `studentgroub` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `AcadamicYearSem` varchar(20) NOT NULL,
  `Program` varchar(20) NOT NULL,
  `GroupNo` int(11) NOT NULL,
  `SubGroupNo` int(11) NOT NULL,
  `GroupId` varchar(30) NOT NULL,
  `SubGroupId` varchar(30) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `studentgroub`
--

INSERT INTO `studentgroub` (`Id`, `AcadamicYearSem`, `Program`, `GroupNo`, `SubGroupNo`, `GroupId`, `SubGroupId`) VALUES
(1, 'Y1S1', 'IT', 1, 1, 'Y1S1.IT.1', 'Y1S1.IT.1.1'),
(3, 'Y1S2', 'CSSE', 1, 2, 'Y1S2.CSSE.1', 'Y1S2.CSSE.1.2');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

DROP TABLE IF EXISTS `subject`;
CREATE TABLE IF NOT EXISTS `subject` (
  `SubjectCode` varchar(10) NOT NULL,
  `SubjectName` varchar(100) NOT NULL,
  `OfferedYear` int(11) NOT NULL,
  `OfferedSem` int(11) NOT NULL,
  `LectureHour` int(11) NOT NULL,
  `LabHour` int(11) NOT NULL,
  `TuteHour` int(11) NOT NULL,
  `EvaluationHour` int(11) NOT NULL,
  PRIMARY KEY (`SubjectCode`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`SubjectCode`, `SubjectName`, `OfferedYear`, `OfferedSem`, `LectureHour`, `LabHour`, `TuteHour`, `EvaluationHour`) VALUES
('IT1113', 'Information System', 1, 1, 2, 1, 1, 3),
('IT1133', 'Software Fundamental', 1, 1, 2, 0, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

DROP TABLE IF EXISTS `tag`;
CREATE TABLE IF NOT EXISTS `tag` (
  `TagCode` int(11) NOT NULL,
  `TagName` varchar(10) NOT NULL,
  `RelatedTag` varchar(30) NOT NULL,
  PRIMARY KEY (`TagCode`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tag`
--

INSERT INTO `tag` (`TagCode`, `TagName`, `RelatedTag`) VALUES
(1, 'lect', 'Lecture'),
(2, 'tute', 'Tutorial');

-- --------------------------------------------------------

--
-- Table structure for table `workingday`
--

DROP TABLE IF EXISTS `workingday`;
CREATE TABLE IF NOT EXISTS `workingday` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `WorkingDays` tinyint(1) NOT NULL,
  `Monday` tinyint(1) NOT NULL,
  `Tuesday` tinyint(1) NOT NULL,
  `Wednesday` tinyint(1) NOT NULL,
  `Thursday` tinyint(1) NOT NULL,
  `Friday` tinyint(1) NOT NULL,
  `Saturday` tinyint(1) NOT NULL,
  `Sunday` tinyint(1) NOT NULL,
  `Hours` int(11) NOT NULL,
  `Minutes` int(11) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `workingday`
--

INSERT INTO `workingday` (`Id`, `WorkingDays`, `Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Friday`, `Saturday`, `Sunday`, `Hours`, `Minutes`) VALUES
(1, 5, 1, 1, 1, 1, 1, 0, 0, 8, 0),
(2, 3, 1, 1, 1, 0, 0, 0, 0, 4, 30);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
