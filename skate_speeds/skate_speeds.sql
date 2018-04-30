CREATE TABLE IF NOT EXISTS `skate_speeds` (
  `speed_id` int(11) NOT NULL AUTO_INCREMENT,
  `speed_kph` decimal(10,2) NOT NULL,
  `fk_session_id` int(11) NOT NULL,
  PRIMARY KEY (`speed_id`),
  KEY `fk_session_id` (`fk_session_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

ALTER TABLE `skate_speeds`
  ADD CONSTRAINT `skate_speeds_ibfk_1` FOREIGN KEY (`fk_session_id`) REFERENCES `skate_sessions` (`session_id`);
