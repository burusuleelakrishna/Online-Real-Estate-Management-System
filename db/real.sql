/*
SQLyog - Free MySQL GUI v5.13
Host - 5.0.22-community-nt : Database - real
*********************************************************************
Server version : 5.0.22-community-nt
*/

SET NAMES utf8;

SET SQL_MODE='';

create database if not exists `real`;

USE `real`;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO';

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `username` varchar(20) default NULL,
  `password` varchar(20) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `admin` */

insert into `admin` (`username`,`password`) values ('vel','vel');

/*Table structure for table `buyer` */

DROP TABLE IF EXISTS `buyer`;

CREATE TABLE `buyer` (
  `username` varchar(200) default NULL,
  `password` varchar(200) default NULL,
  `email` varchar(200) default NULL,
  `mobile` varchar(200) default NULL,
  `address` varchar(200) default NULL,
  `state` varchar(200) default NULL,
  `country` varchar(300) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `buyer` */

/*Table structure for table `property` */

DROP TABLE IF EXISTS `property`;

CREATE TABLE `property` (
  `landmark` varchar(200) default NULL,
  `location` varchar(200) default NULL,
  `amenities` varchar(300) default NULL,
  `nearby` varchar(300) default NULL,
  `vendorname` varchar(200) default NULL,
  `vendorcontact` varchar(200) default NULL,
  `vendoraddress` varchar(200) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `property` */

/*Table structure for table `seller` */

DROP TABLE IF EXISTS `seller`;

CREATE TABLE `seller` (
  `username` varchar(200) default NULL,
  `password` varchar(200) default NULL,
  `email` varchar(200) default NULL,
  `phone` varchar(200) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `seller` */

SET SQL_MODE=@OLD_SQL_MODE;