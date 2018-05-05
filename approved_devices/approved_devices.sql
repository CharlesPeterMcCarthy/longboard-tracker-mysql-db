CREATE TABLE IF NOT EXISTS `approved_devices` (
  `device_id` int(11) NOT NULL AUTO_INCREMENT,
  `device_name` varchar(50) NOT NULL,
  `device_pass` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` char(62) NOT NULL,
  PRIMARY KEY (`device_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;
