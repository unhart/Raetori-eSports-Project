-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 05, 2019 at 02:04 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `raetori`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth`
--

CREATE TABLE `auth` (
  `authID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `authLVL` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `entry`
--

CREATE TABLE `entry` (
  `entryID` int(11) NOT NULL,
  `entryTypeID` int(11) NOT NULL,
  `journalID` int(11) NOT NULL,
  `entryMoodID` int(11) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `title` varchar(20) NOT NULL,
  `title_img` varchar(200) NOT NULL,
  `comment` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `entryExercise`
--

CREATE TABLE `entryExercise` (
  `entryExerciseID` int(11) NOT NULL,
  `entryID` int(11) NOT NULL,
  `entryExerciseCatID` int(11) NOT NULL,
  `reserved1` varchar(400) NOT NULL,
  `usedtime` int(3) NOT NULL,
  `reserved2` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `entryExerciseCat`
--

CREATE TABLE `entryExerciseCat` (
  `entryExerciseCatID` int(11) NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `entryFood`
--

CREATE TABLE `entryFood` (
  `entryFoodID` int(11) NOT NULL,
  `entryID` int(11) NOT NULL,
  `entyFoodCatID` int(11) NOT NULL,
  `duration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `entryFoodCat`
--

CREATE TABLE `entryFoodCat` (
  `entryFoodCatID` int(11) NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `entryGaming`
--

CREATE TABLE `entryGaming` (
  `entryGamingID` int(11) NOT NULL,
  `entryID` int(11) DEFAULT NULL,
  `entryGamingCatID` int(11) DEFAULT NULL,
  `entryGamingNameID` int(11) DEFAULT NULL,
  `usedtime` int(3) NOT NULL,
  `content` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `entryGamingCat`
--

CREATE TABLE `entryGamingCat` (
  `entryGamingCatID` int(11) NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `entryGamingNameCat`
--

CREATE TABLE `entryGamingNameCat` (
  `entryGamingNameID` int(11) NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `entryMood`
--

CREATE TABLE `entryMood` (
  `entryMoodID` int(11) NOT NULL,
  `score` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `entryText`
--

CREATE TABLE `entryText` (
  `entryTextID` int(11) NOT NULL,
  `entryID` int(11) NOT NULL,
  `title` varchar(20) NOT NULL,
  `title_img` varchar(200) NOT NULL,
  `content` varchar(4000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `entryTypeCat`
--

CREATE TABLE `entryTypeCat` (
  `entryTypeCatID` int(11) NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `journal`
--

CREATE TABLE `journal` (
  `journalID` int(11) NOT NULL,
  `userID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `msg`
--

CREATE TABLE `msg` (
  `msgID` int(11) NOT NULL,
  `msgRefID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `title` varchar(50) NOT NULL,
  `content` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `teamID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `name` varchar(20) NOT NULL,
  `slogan` varchar(20) NOT NULL,
  `img` varchar(200) NOT NULL,
  `settings` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userID` int(11) NOT NULL,
  `reserved` int(11) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_upd` datetime NOT NULL,
  `date_deactivate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `u_name` varchar(100) NOT NULL,
  `u_classid` int(7) NOT NULL,
  `u_password` varchar(100) NOT NULL,
  `u_firstname` varchar(40) NOT NULL,
  `u_lastname` varchar(40) NOT NULL,
  `phone` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth`
--
ALTER TABLE `auth`
  ADD PRIMARY KEY (`authID`),
  ADD KEY `authID` (`authID`);

--
-- Indexes for table `entry`
--
ALTER TABLE `entry`
  ADD PRIMARY KEY (`entryID`),
  ADD KEY `entryTypeID` (`entryTypeID`),
  ADD KEY `journalID` (`journalID`),
  ADD KEY `entryMoodID` (`entryMoodID`);

--
-- Indexes for table `entryExercise`
--
ALTER TABLE `entryExercise`
  ADD PRIMARY KEY (`entryExerciseID`),
  ADD KEY `entryID` (`entryID`),
  ADD KEY `entryExerciseCatID` (`entryExerciseCatID`);

--
-- Indexes for table `entryExerciseCat`
--
ALTER TABLE `entryExerciseCat`
  ADD PRIMARY KEY (`entryExerciseCatID`);

--
-- Indexes for table `entryFood`
--
ALTER TABLE `entryFood`
  ADD PRIMARY KEY (`entryFoodID`),
  ADD KEY `entryID` (`entryID`),
  ADD KEY `entyFoodCat` (`entyFoodCatID`);

--
-- Indexes for table `entryFoodCat`
--
ALTER TABLE `entryFoodCat`
  ADD PRIMARY KEY (`entryFoodCatID`);

--
-- Indexes for table `entryGaming`
--
ALTER TABLE `entryGaming`
  ADD PRIMARY KEY (`entryGamingID`),
  ADD KEY `entryGamingNameID` (`entryGamingNameID`),
  ADD KEY `entryGamingCatID` (`entryGamingCatID`),
  ADD KEY `entryID` (`entryID`);

--
-- Indexes for table `entryGamingCat`
--
ALTER TABLE `entryGamingCat`
  ADD PRIMARY KEY (`entryGamingCatID`);

--
-- Indexes for table `entryGamingNameCat`
--
ALTER TABLE `entryGamingNameCat`
  ADD PRIMARY KEY (`entryGamingNameID`);

--
-- Indexes for table `entryMood`
--
ALTER TABLE `entryMood`
  ADD PRIMARY KEY (`entryMoodID`);

--
-- Indexes for table `entryText`
--
ALTER TABLE `entryText`
  ADD PRIMARY KEY (`entryTextID`),
  ADD KEY `entryID` (`entryID`);

--
-- Indexes for table `entryTypeCat`
--
ALTER TABLE `entryTypeCat`
  ADD PRIMARY KEY (`entryTypeCatID`);

--
-- Indexes for table `journal`
--
ALTER TABLE `journal`
  ADD PRIMARY KEY (`journalID`),
  ADD KEY `userID` (`userID`);

--
-- Indexes for table `msg`
--
ALTER TABLE `msg`
  ADD PRIMARY KEY (`msgID`),
  ADD KEY `msgRefID` (`msgRefID`),
  ADD KEY `userID` (`userID`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`teamID`),
  ADD KEY `userID` (`userID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userID`),
  ADD KEY `userID` (`userID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth`
--
ALTER TABLE `auth`
  MODIFY `authID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1000;

--
-- AUTO_INCREMENT for table `entry`
--
ALTER TABLE `entry`
  MODIFY `entryID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `entryExercise`
--
ALTER TABLE `entryExercise`
  MODIFY `entryExerciseID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `entryExerciseCat`
--
ALTER TABLE `entryExerciseCat`
  MODIFY `entryExerciseCatID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `entryFood`
--
ALTER TABLE `entryFood`
  MODIFY `entryFoodID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `entryFoodCat`
--
ALTER TABLE `entryFoodCat`
  MODIFY `entryFoodCatID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `entryGaming`
--
ALTER TABLE `entryGaming`
  MODIFY `entryGamingID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `entryGamingCat`
--
ALTER TABLE `entryGamingCat`
  MODIFY `entryGamingCatID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `entryGamingNameCat`
--
ALTER TABLE `entryGamingNameCat`
  MODIFY `entryGamingNameID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `entryMood`
--
ALTER TABLE `entryMood`
  MODIFY `entryMoodID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `entryText`
--
ALTER TABLE `entryText`
  MODIFY `entryTextID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1000;

--
-- AUTO_INCREMENT for table `entryTypeCat`
--
ALTER TABLE `entryTypeCat`
  MODIFY `entryTypeCatID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `journal`
--
ALTER TABLE `journal`
  MODIFY `journalID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10000;

--
-- AUTO_INCREMENT for table `msg`
--
ALTER TABLE `msg`
  MODIFY `msgID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10000;

--
-- AUTO_INCREMENT for table `team`
--
ALTER TABLE `team`
  MODIFY `teamID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1000;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `entryExercise`
--
ALTER TABLE `entryExercise`
  ADD CONSTRAINT `entryExercise_ibfk_1` FOREIGN KEY (`entryExerciseCatID`) REFERENCES `entryExerciseCat` (`entryExerciseCatID`),
  ADD CONSTRAINT `entryExercise_ibfk_2` FOREIGN KEY (`entryID`) REFERENCES `entry` (`entryID`);

--
-- Constraints for table `entryFood`
--
ALTER TABLE `entryFood`
  ADD CONSTRAINT `entryFood_ibfk_1` FOREIGN KEY (`entryID`) REFERENCES `entry` (`entryID`),
  ADD CONSTRAINT `entryFood_ibfk_2` FOREIGN KEY (`entyFoodCatID`) REFERENCES `entryFoodCat` (`entryFoodCatID`);

--
-- Constraints for table `entryGaming`
--
ALTER TABLE `entryGaming`
  ADD CONSTRAINT `entryGaming_ibfk_1` FOREIGN KEY (`entryID`) REFERENCES `entry` (`entryID`),
  ADD CONSTRAINT `entryGaming_ibfk_2` FOREIGN KEY (`entryGamingCatID`) REFERENCES `entryGamingCat` (`entryGamingCatID`),
  ADD CONSTRAINT `entryGaming_ibfk_3` FOREIGN KEY (`entryGamingNameID`) REFERENCES `entryGamingNameCat` (`entryGamingNameID`);

--
-- Constraints for table `entryText`
--
ALTER TABLE `entryText`
  ADD CONSTRAINT `entryText_ibfk_1` FOREIGN KEY (`entryID`) REFERENCES `entry` (`entryID`);

--
-- Constraints for table `journal`
--
ALTER TABLE `journal`
  ADD CONSTRAINT `journal_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`);

--
-- Constraints for table `team`
--
ALTER TABLE `team`
  ADD CONSTRAINT `team_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `auth` (`authID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
