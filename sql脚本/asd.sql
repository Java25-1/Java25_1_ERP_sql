/*
SQLyog Ultimate v12.08 (64 bit)
MySQL - 5.7.17-log : Database - erp
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`erp` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `erp`;

/*Table structure for table `advance` */

DROP TABLE IF EXISTS `advance`;

CREATE TABLE `advance` (
  `advid` varchar(50) DEFAULT NULL,
  `advdate` date DEFAULT NULL,
  `Advnum` varchar(50) DEFAULT NULL,
  `Proofnumber` varchar(50) DEFAULT NULL,
  `purveyid` varchar(50) DEFAULT NULL,
  `enddate` date DEFAULT NULL,
  `purveyname` varchar(50) DEFAULT NULL,
  `advstrike1` varchar(50) DEFAULT NULL,
  `advstrike2` varchar(50) DEFAULT NULL,
  `advstrike3` varchar(50) DEFAULT NULL,
  `advmoney1` float DEFAULT NULL,
  `advmoney2` float DEFAULT NULL,
  `advmoney3` float DEFAULT NULL,
  `advmakeing` varchar(50) DEFAULT NULL,
  `stodept` varchar(50) DEFAULT NULL,
  `stodeptid` varchar(50) DEFAULT NULL,
  `advcheckman` varchar(50) DEFAULT NULL,
  `advremark` varchar(50) DEFAULT NULL,
  `isaditing` int(11) DEFAULT NULL,
  `enables` int(11) DEFAULT NULL,
  `safetyone` varchar(50) DEFAULT NULL,
  `safetytwo` varchar(50) DEFAULT NULL,
  `issafetyone` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `advance` */

/*Table structure for table `advancedetails` */

DROP TABLE IF EXISTS `advancedetails`;

CREATE TABLE `advancedetails` (
  `advdetmoney` float DEFAULT NULL,
  `advdetoddtype` varchar(50) DEFAULT NULL,
  `advdetoddid` varchar(50) DEFAULT NULL,
  `advdetdegest` varchar(200) DEFAULT NULL,
  `enables` int(11) DEFAULT NULL,
  `safetyone` varchar(50) DEFAULT NULL,
  `safetytwo` varchar(50) DEFAULT NULL,
  `advid` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `advancedetails` */

/*Table structure for table `advancegather` */

DROP TABLE IF EXISTS `advancegather`;

CREATE TABLE `advancegather` (
  `billId` varchar(50) DEFAULT NULL,
  `billDate` date DEFAULT NULL,
  `sinId` int(11) DEFAULT NULL,
  `Cliid` varchar(50) DEFAULT NULL,
  `clishortname` varchar(50) DEFAULT NULL,
  `currencyType` varchar(50) DEFAULT NULL,
  `ReckonTypeF` varchar(50) DEFAULT NULL,
  `ReckonTypeS` varchar(50) DEFAULT NULL,
  `ReckonTypeT` varchar(50) DEFAULT NULL,
  `ReckonMoneyF` float DEFAULT '0',
  `ReckonMoneyS` float DEFAULT '0',
  `ReckonMoneyT` float DEFAULT '0',
  `GatherDiscount` float DEFAULT '0',
  `GatherendaccountMonth` date DEFAULT NULL,
  `Empid` varchar(50) DEFAULT NULL,
  `empName` varchar(50) DEFAULT NULL,
  `Depid` varchar(50) DEFAULT NULL,
  `depName` varchar(50) DEFAULT NULL,
  `makeEmpName` varchar(50) DEFAULT NULL,
  `AuditingEmpName` varchar(50) DEFAULT NULL,
  `checkstate` int(11) DEFAULT NULL,
  `Remark` varchar(200) DEFAULT NULL,
  `enables` int(11) DEFAULT NULL,
  `safetyone` varchar(50) DEFAULT NULL,
  `safetytwo` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `advancegather` */

/*Table structure for table `advancegatherdetails` */

DROP TABLE IF EXISTS `advancegatherdetails`;

CREATE TABLE `advancegatherdetails` (
  `billId` varchar(50) DEFAULT NULL,
  `coteMark` int(11) DEFAULT NULL,
  `PromisedMoney` float DEFAULT NULL,
  `advanceMoney` float DEFAULT NULL,
  `sinName` varchar(50) DEFAULT NULL,
  `originBillId` int(11) DEFAULT NULL,
  `summary` varchar(50) DEFAULT NULL,
  `enables` int(11) DEFAULT NULL,
  `safetyone` varchar(50) DEFAULT NULL,
  `safetytwo` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `advancegatherdetails` */

/*Table structure for table `clashfund` */

DROP TABLE IF EXISTS `clashfund`;

CREATE TABLE `clashfund` (
  `billId` varchar(50) DEFAULT NULL,
  `billDate` date DEFAULT NULL,
  `sinId` int(11) DEFAULT NULL,
  `cliid` varchar(50) DEFAULT NULL,
  `clishortname` varchar(50) DEFAULT NULL,
  `currencyType` varchar(50) DEFAULT NULL,
  `ReckonTypeF` varchar(50) DEFAULT '汇票',
  `ReckonTypeS` varchar(50) DEFAULT '支票',
  `ReckonTypeT` varchar(50) DEFAULT NULL,
  `ReckonMoneyF` float DEFAULT '0',
  `ReckonMoneyS` float DEFAULT '0',
  `ReckonMoneyT` float DEFAULT '0',
  `GatherDiscount` float DEFAULT '0',
  `GatherendaccountMonth` date DEFAULT NULL,
  `empid` varchar(50) DEFAULT NULL,
  `empName` varchar(50) DEFAULT NULL,
  `depid` varchar(50) DEFAULT NULL,
  `depName` varchar(50) DEFAULT NULL,
  `makeEmpName` varchar(50) DEFAULT NULL,
  `AuditingEmpName` varchar(50) DEFAULT NULL,
  `checkstate` int(11) DEFAULT NULL,
  `remark` varchar(50) DEFAULT NULL,
  `enables` int(11) DEFAULT NULL,
  `safetyone` varchar(50) DEFAULT NULL,
  `safetytwo` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `clashfund` */

/*Table structure for table `clashfunddetails` */

DROP TABLE IF EXISTS `clashfunddetails`;

CREATE TABLE `clashfunddetails` (
  `billId` int(11) DEFAULT NULL,
  `coteMark` varchar(50) DEFAULT NULL,
  `sinName` varchar(50) DEFAULT NULL,
  `originBillId` varchar(50) DEFAULT NULL,
  `originoddDate` date DEFAULT NULL,
  `originoddMoney` float DEFAULT NULL,
  `currentlybalance` float DEFAULT NULL,
  `discountMoney` float DEFAULT NULL,
  `clashMoney` float DEFAULT NULL,
  `Offsetbytheamountof` float DEFAULT NULL,
  `enables` int(11) DEFAULT NULL,
  `invoicenumber` varchar(50) DEFAULT NULL,
  `tradingobject` varchar(50) DEFAULT NULL,
  `tradingname` varchar(50) DEFAULT NULL,
  `Departmentnumber` varchar(50) DEFAULT NULL,
  `departmentname` varchar(50) DEFAULT NULL,
  `buyer` varchar(50) DEFAULT NULL,
  `projectname` varchar(50) DEFAULT NULL,
  `Currency` varchar(50) DEFAULT NULL,
  `exchangerate` float DEFAULT NULL,
  `afetyone` varchar(50) DEFAULT NULL,
  `safetytwo` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `clashfunddetails` */

/*Table structure for table `payment` */

DROP TABLE IF EXISTS `payment`;

CREATE TABLE `payment` (
  `payid` varchar(50) DEFAULT NULL,
  `paydate` date DEFAULT NULL,
  `purveyid` varchar(50) DEFAULT NULL,
  `purveyname` varchar(50) DEFAULT NULL,
  `paystrike1` varchar(50) DEFAULT NULL,
  `paystrike2` varchar(50) DEFAULT NULL,
  `exchangerate` float DEFAULT NULL,
  `paystrike3` varchar(50) DEFAULT NULL,
  `Enddate` date DEFAULT NULL,
  `discountrate` float DEFAULT NULL,
  `paymoney1` float DEFAULT NULL,
  `paymoney2` float DEFAULT NULL,
  `paymoney3` float DEFAULT NULL,
  `paymakeing` varchar(50) DEFAULT NULL,
  `paydept` varchar(50) DEFAULT NULL,
  `stodeptid` varchar(50) DEFAULT NULL,
  `paycheckman` varchar(50) DEFAULT NULL,
  `payremark` varchar(50) DEFAULT NULL,
  `Currency` varchar(50) DEFAULT NULL,
  `isaditing` int(50) DEFAULT NULL,
  `enables` int(50) DEFAULT NULL,
  `safetyone` varchar(50) DEFAULT NULL,
  `safetytwo` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `payment` */

/*Table structure for table `paymentdetails` */

DROP TABLE IF EXISTS `paymentdetails`;

CREATE TABLE `paymentdetails` (
  `billId` varchar(50) DEFAULT NULL,
  `coteMark` int(11) DEFAULT NULL,
  `sinName` varchar(50) DEFAULT NULL,
  `originBillId` varchar(50) DEFAULT NULL,
  `originoddDate` date DEFAULT NULL,
  `originoddMoney` float DEFAULT NULL,
  `currentlybalance` float DEFAULT NULL,
  `discountMoney` float DEFAULT NULL,
  `clashMoney` float DEFAULT NULL,
  `Offsetbytheamountof` float DEFAULT NULL,
  `enables` int(11) DEFAULT NULL,
  `invoicenumber` varchar(50) DEFAULT NULL,
  `tradingobject` varbinary(50) DEFAULT NULL,
  `tradingname` varchar(50) DEFAULT NULL,
  `Departmentnumber` varchar(50) DEFAULT NULL,
  `departmentname` varchar(50) DEFAULT NULL,
  `buyer` varchar(50) DEFAULT NULL,
  `projectname` varchar(50) DEFAULT NULL,
  `Currency` varchar(50) DEFAULT NULL,
  `exchangerate` float DEFAULT NULL,
  `afetyone` varchar(50) DEFAULT NULL,
  `afetytwo` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `paymentdetails` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
