# affects handling of AUTO_INCREMENT columns
# so that only a NULL value generates the next sequence number
# useful when you mysqldump and then reload it
# because mysql normally generates new sequence numbers when it encounters 0,
# resulting in contents different from the one that was dumped in
SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

CREATE DATABASE `sequelized-api-node` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `sequelized-api-node`;

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1;