CREATE TABLE IF NOT EXISTS `genres` (
  `gnr_id` int(11) NOT NULL AUTO_INCREMENT,
  `gnr_name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`gnr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS `movies` (
  `mv_id` int(11) NOT NULL AUTO_INCREMENT,
  `mv_title` varchar(200) DEFAULT NULL,
  `mv_year_released` date DEFAULT NULL,
  PRIMARY KEY (`mv_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE IF NOT EXISTS `images` (
  `img_id` int(11) NOT NULL AUTO_INCREMENT,
  `img_path` varchar(200) DEFAULT NULL,
  `img_ref_movie` int(11) DEFAULT NULL,
  PRIMARY KEY (`img_id`),
  KEY `fk_img_ref_movie` (`img_ref_movie`),
  CONSTRAINT `fk_img_ref_movie` FOREIGN KEY (`img_ref_movie`) REFERENCES `movies` (`mv_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE IF NOT EXISTS `mv_genres` (
  `mvg_id` int(11) NOT NULL AUTO_INCREMENT,
  `mvg_ref_genre` int(11) DEFAULT NULL,
  `mvg_ref_movie` int(11) DEFAULT NULL,
  PRIMARY KEY (`mvg_id`),
  KEY `fk_mvg_ref_genre` (`mvg_ref_genre`),
  KEY `fk_mvg_ref_movie` (`mvg_ref_movie`),
  CONSTRAINT `fk_mvg_ref_genre` FOREIGN KEY (`mvg_ref_genre`) REFERENCES `genres` (`gnr_id`) ON DELETE CASCADE,
  CONSTRAINT `fk_mvg_ref_movie` FOREIGN KEY (`mvg_ref_movie`) REFERENCES `movies` (`mv_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(200) NOT NULL DEFAULT '',
  `password` varchar(200) NOT NULL DEFAULT '',
  `name` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

