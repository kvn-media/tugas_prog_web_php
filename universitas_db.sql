-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.32-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.6.0.6765
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for universitas
DROP DATABASE IF EXISTS `universitas`;
CREATE DATABASE IF NOT EXISTS `universitas` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `universitas`;

-- Dumping structure for table universitas.mahasiswa
DROP TABLE IF EXISTS `mahasiswa`;
CREATE TABLE IF NOT EXISTS `mahasiswa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) NOT NULL,
  `nim` varchar(255) NOT NULL,
  `jenis_kelamin` enum('laki-laki','perempuan') NOT NULL,
  `kelas` varchar(255) NOT NULL,
  `program_studi` varchar(255) NOT NULL,
  `angkatan` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table universitas.mahasiswa: ~20 rows (approximately)
DELETE FROM `mahasiswa`;
INSERT INTO `mahasiswa` (`id`, `nama`, `nim`, `jenis_kelamin`, `kelas`, `program_studi`, `angkatan`) VALUES
	(1, 'John Doe', '1234567890', 'laki-laki', 'IF-41-08', 'Informatika', '2018'),
	(2, 'Jane Smith', '1234567891', 'perempuan', 'IF-41-08', 'Informatika', '2018'),
	(3, 'Bob Johnson', '1234567892', 'laki-laki', 'IF-41-08', 'Informatika', '2018'),
	(4, 'Alice Williams', '1234567893', 'perempuan', 'IF-41-08', 'Informatika', '2018'),
	(5, 'Charlie Brown', '1234567894', 'laki-laki', 'IF-41-08', 'Informatika', '2018'),
	(6, 'Diana Davis', '1234567895', 'perempuan', 'IF-41-08', 'Informatika', '2018'),
	(7, 'Ethan Miller', '1234567896', 'laki-laki', 'IF-41-08', 'Informatika', '2018'),
	(8, 'Fiona Wilson', '1234567897', 'perempuan', 'IF-41-08', 'Informatika', '2018'),
	(9, 'George Moore', '1234567898', 'laki-laki', 'IF-41-08', 'Informatika', '2018'),
	(10, 'Hannah Taylor', '1234567899', 'perempuan', 'IF-41-08', 'Informatika', '2018'),
	(11, 'Ian Anderson', '1234567800', 'laki-laki', 'IF-41-08', 'Informatika', '2018'),
	(12, 'Julia Thomas', '1234567801', 'perempuan', 'IF-41-08', 'Informatika', '2018'),
	(13, 'Kevin Jackson', '1234567802', 'laki-laki', 'IF-41-08', 'Informatika', '2018'),
	(14, 'Laura White', '1234567803', 'perempuan', 'IF-41-08', 'Informatika', '2018'),
	(15, 'Michael Harris', '1234567804', 'laki-laki', 'IF-41-08', 'Informatika', '2018'),
	(16, 'Nancy Martin', '1234567805', 'perempuan', 'IF-41-08', 'Informatika', '2018'),
	(17, 'Oliver Thompson', '1234567806', 'laki-laki', 'IF-41-08', 'Informatika', '2018'),
	(18, 'Patricia Garcia', '1234567807', 'perempuan', 'IF-41-08', 'Informatika', '2018'),
	(19, 'Quincy Martinez', '1234567808', 'laki-laki', 'IF-41-08', 'Informatika', '2018'),
	(20, 'Rita Robinson', '1234567809', 'perempuan', 'IF-41-08', 'Informatika', '2018');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
