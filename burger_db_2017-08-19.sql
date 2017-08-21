# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: localhost (MySQL 5.6.35)
# Database: burger_db
# Generation Time: 2017-08-20 00:49:15 +0000

# Dump of table burgers
# ------------------------------------------------------------

DROP TABLE IF EXISTS `burgers`;

CREATE TABLE `burgers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `burger_name` varchar(100) NOT NULL,
  `devoured` tinyint(1) DEFAULT '0',
  `time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

LOCK TABLES `burgers` WRITE;


INSERT INTO `burgers` (`id`, `burger_name`, `devoured`, `time_stamp`)
VALUES
	(1,'Deliciousnessess',0,'2017-08-19 19:39:48'),
	(2,'Tasty Goodness',0,'2017-08-19 19:39:48');


UNLOCK TABLES;


