-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 23, 2023 at 11:14 AM
-- Server version: 5.7.40
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `isil`
--

-- --------------------------------------------------------

--
-- Table structure for table `recours`
--

DROP TABLE IF EXISTS `recours`;
CREATE TABLE IF NOT EXISTS `recours` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_student` int(11) NOT NULL COMMENT 'foreign key student',
  `module` varchar(20) NOT NULL,
  `nature` enum('CC','Examen') NOT NULL COMMENT 'nature: cc ou examen',
  `note_affiche` int(11) NOT NULL,
  `note_reel` int(11) NOT NULL,
  `status` int(11) NOT NULL COMMENT '1:favorable\r\n2:defavorable',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
CREATE TABLE IF NOT EXISTS `students` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `groupe` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `nom`, `prenom`, `email`, `groupe`) VALUES
(2, 'YAHIATENE', 'tasnime', 'yahiatene.y@gmail.com', 1),
(3, 'YAHIATENE', 'youcef', 'yahiatene.y@gmail.com', 3),
(12, 'ouled', 'ayoub', 'ayoub@gmail.com', 1),
(13, 'YAHIATENErtrt', 'younes', 'yahiatene.y@gmail.com', 43),
(14, 'yanis', 'yacef', 'yanis.y@gmail.com', 2),
(18, 'morad', 'ali', 'ali@gmail.com', 2),
(19, 'morad', 'ali', 'ali@gmail.com', 2),
(20, 'Youcef', 'Maoudj', 'ali@gmail.com', 2),
(21, 'Youcef', 'Maoudj', 'ali@gmail.com', 2);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
