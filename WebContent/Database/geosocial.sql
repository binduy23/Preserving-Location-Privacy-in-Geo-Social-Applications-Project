/*
SQLyog Community v8.4 RC2
MySQL - 5.5.29 : Database - geosocial
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`geosocial` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `geosocial`;

/*Table structure for table `loc_data` */

DROP TABLE IF EXISTS `loc_data`;

CREATE TABLE `loc_data` (
  `id` int(11) NOT NULL,
  `user` varchar(500) NOT NULL,
  `toUser` varchar(500) NOT NULL,
  `lat` varchar(500) NOT NULL,
  `lon` varbinary(500) NOT NULL,
  `content` longtext NOT NULL,
  `secret` varchar(500) NOT NULL,
  `ekey` varchar(500) NOT NULL DEFAULT 'non',
  `cmt` varchar(500) NOT NULL DEFAULT 'non',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `loc_data` */


/*Table structure for table `register` */

DROP TABLE IF EXISTS `register`;

CREATE TABLE `register` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `zip` varchar(50) NOT NULL,
  `phone` varchar(14) NOT NULL,
  `email` varchar(50) NOT NULL,
  `un` varchar(50) NOT NULL,
  `pwd` varchar(50) NOT NULL,
  PRIMARY KEY (`email`,`un`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `register` */


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
