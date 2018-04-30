CREATE TABLE IF NOT EXISTS `skate_sessions` (
  `session_id` int(11) NOT NULL AUTO_INCREMENT,
  `session_start` datetime NOT NULL,
  `session_end` datetime NOT NULL,
  `session_distance` decimal(10,2) NOT NULL,
  `fk_device_id` int(11) NOT NULL,
  PRIMARY KEY (`session_id`),
  KEY `fk_device_id` (`fk_device_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

ALTER TABLE `skate_sessions`
  ADD CONSTRAINT `skate_sessions_ibfk_1` FOREIGN KEY (`fk_device_id`) REFERENCES `approved_devices` (`device_id`);
