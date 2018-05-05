SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;


CREATE TABLE IF NOT EXISTS `approved_devices` (
  `device_id` int(11) NOT NULL AUTO_INCREMENT,
  `device_name` varchar(50) NOT NULL,
  `device_pass` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` char(62) NOT NULL,
  PRIMARY KEY (`device_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS `skate_sessions` (
  `session_id` int(11) NOT NULL AUTO_INCREMENT,
  `session_start` datetime NOT NULL,
  `session_end` datetime NOT NULL,
  `session_distance` decimal(10,2) NOT NULL,
  `fk_device_id` int(11) NOT NULL,
  PRIMARY KEY (`session_id`),
  KEY `fk_device_id` (`fk_device_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS `skate_speeds` (
  `speed_id` int(11) NOT NULL AUTO_INCREMENT,
  `speed_kph` decimal(10,2) NOT NULL,
  `fk_session_id` int(11) NOT NULL,
  PRIMARY KEY (`speed_id`),
  KEY `fk_session_id` (`fk_session_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;


ALTER TABLE `skate_sessions`
  ADD CONSTRAINT `skate_sessions_ibfk_1` FOREIGN KEY (`fk_device_id`) REFERENCES `approved_devices` (`device_id`);

ALTER TABLE `skate_speeds`
  ADD CONSTRAINT `skate_speeds_ibfk_1` FOREIGN KEY (`fk_session_id`) REFERENCES `skate_sessions` (`session_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
