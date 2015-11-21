-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.6.26-log - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
-- Dumping data for table university-database.adviser: ~0 rows (approximately)
/*!40000 ALTER TABLE `adviser` DISABLE KEYS */;
INSERT IGNORE INTO `adviser` (`id`, `deptNO`, `positionID`, `firstName`, `lastName`, `phoneNO`, `email`, `roomNO`) VALUES
	(2, 1, 2, 'Leonardo', 'DiCaprio', '8007778888', 'l.d@ttu.edu', 70);
/*!40000 ALTER TABLE `adviser` ENABLE KEYS */;

-- Dumping data for table university-database.course: ~0 rows (approximately)
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
/*!40000 ALTER TABLE `course` ENABLE KEYS */;

-- Dumping data for table university-database.department: ~0 rows (approximately)
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT IGNORE INTO `department` (`deptNO`, `deptName`) VALUES
	(1, 'Residence Office'),
	(2, 'Hall');
/*!40000 ALTER TABLE `department` ENABLE KEYS */;

-- Dumping data for table university-database.flat: ~0 rows (approximately)
/*!40000 ALTER TABLE `flat` DISABLE KEYS */;
INSERT IGNORE INTO `flat` (`flatNO`, `street`, `city`, `numOfRooms`) VALUES
	(1, '4th', 'lolcity', 3),
	(2, '4th', 'lolcity', 5);
/*!40000 ALTER TABLE `flat` ENABLE KEYS */;

-- Dumping data for table university-database.hall: ~0 rows (approximately)
/*!40000 ALTER TABLE `hall` DISABLE KEYS */;
INSERT IGNORE INTO `hall` (`hallNO`, `staffNO`, `street`, `city`, `postCode`, `phoneNO`) VALUES
	(1, 1, 'lolstreet', 'lolcity', '79415', '5123334444'),
	(2, 2, 'lolstreet2', 'lolcity', '79415', '5125556666');
/*!40000 ALTER TABLE `hall` ENABLE KEYS */;

-- Dumping data for table university-database.inspection: ~0 rows (approximately)
/*!40000 ALTER TABLE `inspection` DISABLE KEYS */;
INSERT IGNORE INTO `inspection` (`inspectionNO`, `staffNO`, `flatNO`, `inspectionDate`, `condition`, `comments`) VALUES
	(1, 1, 1, '2015-11-21', 1, NULL),
	(2, 2, 2, '2015-11-21', 0, NULL);
/*!40000 ALTER TABLE `inspection` ENABLE KEYS */;

-- Dumping data for table university-database.invoice: ~0 rows (approximately)
/*!40000 ALTER TABLE `invoice` DISABLE KEYS */;
/*!40000 ALTER TABLE `invoice` ENABLE KEYS */;

-- Dumping data for table university-database.lease: ~0 rows (approximately)
/*!40000 ALTER TABLE `lease` DISABLE KEYS */;
INSERT IGNORE INTO `lease` (`leaseNO`, `bannerNumber`, `placeNO`, `semesterDuration`, `moveInDate`, `moveOutDate`) VALUES
	(1, 1, 1, 0, '2015-11-21', '2015-11-30'),
	(2, 2, 2, 2, '2016-11-22', '2016-12-30');
/*!40000 ALTER TABLE `lease` ENABLE KEYS */;

-- Dumping data for table university-database.next-of-kin: ~0 rows (approximately)
/*!40000 ALTER TABLE `next-of-kin` DISABLE KEYS */;
/*!40000 ALTER TABLE `next-of-kin` ENABLE KEYS */;

-- Dumping data for table university-database.position: ~0 rows (approximately)
/*!40000 ALTER TABLE `position` DISABLE KEYS */;
INSERT IGNORE INTO `position` (`id`, `positionName`) VALUES
	(1, 'Hall Manager'),
	(2, 'Adviser');
/*!40000 ALTER TABLE `position` ENABLE KEYS */;

-- Dumping data for table university-database.room: ~0 rows (approximately)
/*!40000 ALTER TABLE `room` DISABLE KEYS */;
INSERT IGNORE INTO `room` (`placeNO`, `roomNO`, `rentRate`) VALUES
	(1, 21, 450),
	(2, 69, 455);
/*!40000 ALTER TABLE `room` ENABLE KEYS */;

-- Dumping data for table university-database.staff: ~0 rows (approximately)
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT IGNORE INTO `staff` (`staffNO`, `firstName`, `lastName`, `street`, `city`, `postCode`, `phoneNO`, `email`, `dob`, `gender`, `position`, `location`) VALUES
	(1, 'christoph', 'waltz', 'lol', 'lolcity', '79415', '8006969696', 'c.w@ttu.edu', '1991-02-28', 0, 1, 1),
	(2, 'jack', 'nicholson', 'lol2', 'lolcity', '79415', '8006669999', 'j.n@ttu.edu', '2015-11-21', 0, 1, 1);
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;

-- Dumping data for table university-database.student: ~0 rows (approximately)
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT IGNORE INTO `student` (`bannerNumber`, `adviserID`, `firstName`, `lastName`, `street`, `city`, `postCode`, `phoneNO`, `email`, `dob`, `gender`, `nationality`, `specialNeeds`, `comments`, `status`, `major`, `minor`, `year`) VALUES
	(1, 2, 'kace', 'echo', '4th', 'lolcity', '79415', '8305556666', 'kaceecho@ttu.edu', '2015-11-21', 0, 'American', NULL, NULL, 0, 'cs', 'math', 3),
	(2, 2, 'maurice', 'prosper', '4th', 'lolcity', '79415', '8887776666', 'maurice.prosper@ttu.edu', '2015-11-21', 0, 'American', NULL, '', 1, 'cs', 'math', 4);
/*!40000 ALTER TABLE `student` ENABLE KEYS */;

-- Dumping data for table university-database.studentcourse: ~0 rows (approximately)
/*!40000 ALTER TABLE `studentcourse` DISABLE KEYS */;
/*!40000 ALTER TABLE `studentcourse` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
