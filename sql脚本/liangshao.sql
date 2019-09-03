/*
SQLyog  v12.2.6 (64 bit)
MySQL - 5.5.56 : Database - y2_jiye
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`y2_jiye` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `y2_jiye`;

/*Table structure for table `orderdetails` */

DROP TABLE IF EXISTS `orderdetails`;

CREATE TABLE `orderdetails` (
  `billId` varchar(50) NOT NULL COMMENT '单据号码sellOrder(billId)',
  `coteMark` int(9) NOT NULL COMMENT '栏号',
  `matid` varchar(50) NOT NULL COMMENT '物料编号Materiel(matid)',
  `matname` varchar(50) NOT NULL COMMENT '物料名称',
  `matspec` varchar(50) NOT NULL COMMENT '规格型号',
  `matunit` varchar(50) NOT NULL COMMENT '单位名称',
  `number` int(11) NOT NULL COMMENT '数量',
  `agioAgoPrice` float NOT NULL COMMENT '折扣前单价',
  `agio` int(11) NOT NULL DEFAULT '100' COMMENT '折数',
  `price` float NOT NULL COMMENT '单价',
  `money` float NOT NULL COMMENT '金额',
  `cess` int(11) NOT NULL DEFAULT '17' COMMENT '税率',
  `taxmoney` float NOT NULL COMMENT '税额',
  `intaxmoney` float NOT NULL COMMENT '含税金额',
  `present` int(11) DEFAULT NULL COMMENT '赠品',
  `factCost` float DEFAULT NULL COMMENT '实际成本',
  `criterionCost` float DEFAULT NULL COMMENT '标准成本',
  `outStoreroom` date NOT NULL COMMENT '预出库日',
  `notOutNumber` int(11) NOT NULL COMMENT '未出数量',
  `sinName` varchar(50) DEFAULT NULL COMMENT '来源单别',
  `originBillId` varchar(50) DEFAULT NULL COMMENT '来源单号',
  `enables` int(11) DEFAULT NULL COMMENT '标识是否删除',
  `safetyone` varchar(50) DEFAULT NULL,
  `safetytwo` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `orderdetails` */

/*Table structure for table `otheroutdetail` */

DROP TABLE IF EXISTS `otheroutdetail`;

CREATE TABLE `otheroutdetail` (
  `otheroutid` varchar(50) NOT NULL COMMENT '单据号码(其它出库主表id)',
  `Othoutlineno` varchar(50) NOT NULL COMMENT '栏号',
  `Othoutmertialsid` varchar(50) DEFAULT NULL COMMENT '物料编号',
  `Othoutmertialname` varchar(50) DEFAULT NULL COMMENT '物料名称',
  `Othouttypes` varchar(50) DEFAULT NULL COMMENT '规格型号',
  `Othoutunits` varchar(50) DEFAULT NULL COMMENT '单位',
  `Othoutamount` varchar(50) DEFAULT NULL COMMENT '数量',
  `othoutremark` varchar(50) DEFAULT NULL COMMENT '备注',
  `clitrash` int(11) DEFAULT NULL COMMENT '是否废码',
  `safetyone` varchar(50) DEFAULT NULL,
  `safetytwo` varchar(50) DEFAULT NULL,
  `enables` int(1) DEFAULT NULL COMMENT '标识是否删除【1不删】',
  PRIMARY KEY (`otheroutid`,`Othoutlineno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `otheroutdetail` */

/*Table structure for table `otheroutmain` */

DROP TABLE IF EXISTS `otheroutmain`;

CREATE TABLE `otheroutmain` (
  `Othid` varchar(50) NOT NULL COMMENT '单据号码(系统自带)',
  `Othdate` date NOT NULL COMMENT '单据日期',
  `othouttypeid` varchar(50) DEFAULT NULL COMMENT '出入库类型id',
  `othstore` varchar(50) NOT NULL COMMENT '仓库',
  `Othoutname` varchar(50) NOT NULL COMMENT '出库人名',
  `Othdept` varchar(50) NOT NULL COMMENT '所属部门',
  `Othmakemanid` varchar(50) NOT NULL COMMENT '制单人员',
  `Othrepeatuserid` varchar(50) DEFAULT NULL COMMENT '复核人员',
  `clitrash` int(11) DEFAULT NULL COMMENT '【0入库1出库】',
  `safetyone` varchar(50) DEFAULT NULL,
  `safetytwo` varchar(50) DEFAULT NULL,
  `enables` int(11) DEFAULT NULL COMMENT '标识是否删除',
  PRIMARY KEY (`Othid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `otheroutmain` */

/*Table structure for table `quotedetails` */

DROP TABLE IF EXISTS `quotedetails`;

CREATE TABLE `quotedetails` (
  `billId` varchar(20) NOT NULL COMMENT '单据号码sellquote(billId)',
  `coteMark` int(11) NOT NULL COMMENT '栏号',
  `matid` varchar(50) NOT NULL COMMENT '物料编号Materiel(matid)',
  `matname` varchar(50) NOT NULL COMMENT '物料名称',
  `matspec` varchar(50) DEFAULT NULL COMMENT '规格型号',
  `matunit` varchar(50) NOT NULL COMMENT '单位名称',
  `quonumber` int(11) NOT NULL COMMENT '数量',
  `agioAgoPrice` float NOT NULL COMMENT '折扣前单价',
  `agio` float NOT NULL COMMENT '折数',
  `price` float NOT NULL COMMENT '单价',
  `money` float NOT NULL COMMENT '金额',
  `cess` float NOT NULL COMMENT '税率',
  `taxmoney` float NOT NULL COMMENT '税额',
  `intaxmoney` float NOT NULL COMMENT '含税金额',
  `present` varchar(4) DEFAULT NULL COMMENT '赠品',
  `factCost` int(11) DEFAULT NULL COMMENT '实际成本',
  `criterionCost` int(11) DEFAULT NULL COMMENT '标准成本',
  `enables` int(11) DEFAULT NULL COMMENT '标识是否删除',
  `safetyone` varchar(50) DEFAULT NULL,
  `safetytwo` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`billId`,`coteMark`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `quotedetails` */

/*Table structure for table `sellcancel` */

DROP TABLE IF EXISTS `sellcancel`;

CREATE TABLE `sellcancel` (
  `billId` varchar(20) NOT NULL COMMENT '单据号码',
  `billDate` date NOT NULL COMMENT '单据日期',
  `sinId` int(11) NOT NULL COMMENT '单据类型singleType(sinId)',
  `cliid` varchar(50) NOT NULL COMMENT '客户编号client(cliid)',
  `clishortname` varchar(50) NOT NULL COMMENT '客户简称',
  `cliplaceid` varchar(50) DEFAULT NULL COMMENT '地址编号',
  `Cliplace` varchar(50) DEFAULT NULL COMMENT '地址',
  `effectdate` date DEFAULT NULL COMMENT '有效日期',
  `currencyType` varchar(50) NOT NULL COMMENT '币别',
  `priceWhetherTax` varchar(50) NOT NULL COMMENT '单价是否含税',
  `stoid` varchar(50) NOT NULL COMMENT '仓库编号',
  `stoname` varchar(50) NOT NULL COMMENT '仓库名称',
  `whetheranewenterstorage` int(11) NOT NULL COMMENT '是否重新入库',
  `empid` varchar(50) NOT NULL COMMENT '业务人员编号，也就是人员编号employee(empid)',
  `empName` varchar(50) NOT NULL COMMENT '业务人员',
  `depid` varchar(50) NOT NULL COMMENT '部门编号depttab(depid)',
  `depName` varchar(50) NOT NULL COMMENT '所属部门',
  `makeEmpName` varchar(50) DEFAULT NULL COMMENT '制单人员',
  `AuditingEmpName` varchar(50) NOT NULL COMMENT '复核人员',
  `checkstate` int(11) DEFAULT NULL COMMENT '审核状态',
  `Enable` int(11) DEFAULT NULL COMMENT '标识是否删除',
  `remark` varchar(2000) DEFAULT NULL COMMENT '备注',
  `totalMoney` float DEFAULT NULL COMMENT '合计金额',
  `totalTax` float DEFAULT NULL COMMENT '合计税额',
  `totalTaxMoney` float DEFAULT NULL COMMENT '合计含税金额',
  `enables` int(11) DEFAULT NULL COMMENT '标识是否删除',
  `safetyone` varchar(50) DEFAULT NULL,
  `safetytwo` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`billId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sellcancel` */

/*Table structure for table `sellcanceldetails` */

DROP TABLE IF EXISTS `sellcanceldetails`;

CREATE TABLE `sellcanceldetails` (
  `billId` varchar(50) NOT NULL COMMENT '单据号码',
  `coteMark` int(9) NOT NULL COMMENT '栏号',
  `matid` varchar(50) NOT NULL COMMENT '物料编号',
  `matname` varchar(50) NOT NULL COMMENT '物料名称',
  `matspec` varchar(50) DEFAULT NULL COMMENT '规格型号',
  `matunit` varchar(50) NOT NULL COMMENT '单位名称',
  `number` int(11) NOT NULL COMMENT '数量',
  `agioAgoPrice` float NOT NULL COMMENT '折扣前单价',
  `agio` int(11) NOT NULL DEFAULT '100' COMMENT '折数',
  `price` float NOT NULL COMMENT '单价',
  `money` float NOT NULL COMMENT '金额',
  `cess` int(11) NOT NULL DEFAULT '17' COMMENT '税率',
  `taxmoney` float NOT NULL COMMENT '税额',
  `intaxmoney` float NOT NULL COMMENT '含税金额',
  `present` int(11) DEFAULT NULL COMMENT '赠品',
  `factCost` float DEFAULT NULL COMMENT '实际成本',
  `criterionCost` float DEFAULT NULL COMMENT '标准成本',
  `sinName` varchar(50) DEFAULT NULL COMMENT '来源单别',
  `originBillId` varchar(20) DEFAULT NULL COMMENT '来源单号',
  `enables` int(11) DEFAULT NULL COMMENT '标识是否删除',
  `safetyone` varchar(50) DEFAULT NULL,
  `safetytwo` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`billId`,`coteMark`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sellcanceldetails` */

/*Table structure for table `sellissueorder` */

DROP TABLE IF EXISTS `sellissueorder`;

CREATE TABLE `sellissueorder` (
  `billId` varchar(50) NOT NULL COMMENT '单据号码',
  `billDate` date NOT NULL COMMENT '单据日期',
  `sinId` int(11) NOT NULL COMMENT '单据类型singleType(sinId)',
  `Sinname` varchar(50) DEFAULT NULL COMMENT '单据类型singleType(sinId)',
  `cliid` varchar(50) NOT NULL COMMENT '客户编号client(cliid)',
  `clishortname` varchar(50) NOT NULL COMMENT '客户简称',
  `cliplaceid` varchar(50) DEFAULT NULL COMMENT '地址编号',
  `Cliplace` varchar(50) DEFAULT NULL COMMENT '地址',
  `effectdate` date DEFAULT NULL COMMENT '有效日期',
  `currencyType` varchar(50) NOT NULL COMMENT '币别',
  `priceWhetherTax` varchar(50) NOT NULL COMMENT '单价是否含税',
  `stoid` varchar(50) NOT NULL COMMENT '仓库编号',
  `stoname` varchar(50) NOT NULL COMMENT '仓库名称',
  `empid` varchar(50) NOT NULL COMMENT '业务人员编号，也就是人员编号employee(empid)',
  `empName` varchar(50) NOT NULL COMMENT '业务人员',
  `depid` varchar(50) NOT NULL COMMENT '部门编号depttab(depid)',
  `depName` varchar(50) NOT NULL COMMENT '所属部门',
  `makeEmpName` varchar(50) NOT NULL COMMENT '制单人员',
  `AuditingEmpName` varchar(50) DEFAULT NULL COMMENT '复核人员',
  `checkstate` int(11) NOT NULL COMMENT '审核状态',
  `remark` varchar(50) DEFAULT NULL COMMENT '备注',
  `totalMoney` float DEFAULT NULL COMMENT '合计金额',
  `totalTax` float DEFAULT NULL COMMENT '合计税额',
  `totalTaxMoney` float DEFAULT NULL COMMENT '合计含税金额',
  `enables` int(11) DEFAULT NULL COMMENT '标识是否删除',
  `safetyone` varchar(50) DEFAULT NULL,
  `safetytwo` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`billId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sellissueorder` */

/*Table structure for table `sellissueorderdetails` */

DROP TABLE IF EXISTS `sellissueorderdetails`;

CREATE TABLE `sellissueorderdetails` (
  `billId` varchar(20) NOT NULL COMMENT '单据号码',
  `coteMark` int(9) NOT NULL COMMENT '栏号',
  `matid` varchar(50) NOT NULL COMMENT '物料编号Materiel(matid)',
  `matname` varchar(50) NOT NULL COMMENT '物料名称',
  `matspec` varchar(50) NOT NULL COMMENT '规格型号',
  `matunit` varchar(50) NOT NULL COMMENT '单位名称',
  `number` int(11) NOT NULL COMMENT '数量',
  `agioAgoPrice` float NOT NULL COMMENT '折扣前单价',
  `agio` int(11) NOT NULL DEFAULT '100' COMMENT '折数',
  `price` float NOT NULL COMMENT '单价',
  `money` float NOT NULL COMMENT '金额',
  `cess` int(11) NOT NULL DEFAULT '17' COMMENT '税率',
  `taxmoney` float NOT NULL COMMENT '税额',
  `intaxmoney` float NOT NULL COMMENT '含税金额',
  `present` int(5) DEFAULT NULL COMMENT '赠品',
  `factCost` float DEFAULT NULL COMMENT '实际成本',
  `criterionCost` float DEFAULT NULL COMMENT '标准成本',
  `sinName` varchar(50) DEFAULT NULL COMMENT '来源单别',
  `originBillId` varchar(20) DEFAULT NULL COMMENT '来源单号',
  `enables` int(11) DEFAULT NULL COMMENT '标识是否删除',
  `safetyone` varchar(50) DEFAULT NULL,
  `safetytwo` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`billId`,`coteMark`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sellissueorderdetails` */

/*Table structure for table `sellorder` */

DROP TABLE IF EXISTS `sellorder`;

CREATE TABLE `sellorder` (
  `billId` varchar(50) NOT NULL COMMENT '单据号码',
  `billDate` date NOT NULL COMMENT '单据日期',
  `sinId` int(11) NOT NULL COMMENT '单据类型singleType(sinId)',
  `sinName` varchar(50) DEFAULT NULL COMMENT '单据名称',
  `cliid` varchar(50) NOT NULL COMMENT '客户编号client(cliid)',
  `cliid
clishortname` varchar(50) NOT NULL COMMENT '客户简称',
  `cliplaceid` varchar(50) DEFAULT NULL COMMENT '地址编号',
  `Cliplace` varchar(50) DEFAULT NULL COMMENT '地址',
  `orderStatus` int(11) NOT NULL COMMENT '订单状况',
  `currencyType` varchar(50) NOT NULL COMMENT '币别',
  `priceWhetherTax` varchar(50) NOT NULL COMMENT '单价是否含税',
  `empid` varchar(50) NOT NULL COMMENT '业务人员编号，也就是人员编号employee(empid)',
  `empName` varchar(50) NOT NULL COMMENT '业务人员',
  `depid` varchar(50) NOT NULL COMMENT '部门编号depttab(depid)',
  `depName` varchar(50) NOT NULL COMMENT '所属部门',
  `makeEmpName` varchar(50) NOT NULL COMMENT '制单人员',
  `AuditingEmpName` varchar(50) DEFAULT NULL COMMENT '复核人员',
  `checkstate` int(11) NOT NULL COMMENT '审核状态',
  `remark` varchar(50) DEFAULT NULL COMMENT '备注',
  `totalMoney` float DEFAULT NULL COMMENT '合计金额',
  `totalTax` float DEFAULT NULL COMMENT '合计税额',
  `totalTaxMoney` float DEFAULT NULL COMMENT '合计含税金额',
  `enables` int(11) DEFAULT NULL COMMENT '标识是否删除',
  `safetyone` varchar(50) DEFAULT NULL,
  `safetytwo` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`billId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sellorder` */

/*Table structure for table `sellquote` */

DROP TABLE IF EXISTS `sellquote`;

CREATE TABLE `sellquote` (
  `billId` varchar(20) NOT NULL COMMENT '单据号码',
  `billDate` date NOT NULL COMMENT '单据日期',
  `sinId` int(9) NOT NULL COMMENT '单据类型singleType(sinId)',
  `sinName` varchar(50) DEFAULT NULL COMMENT '单据名称',
  `cliid` varchar(50) NOT NULL COMMENT '客户编号client(cliid)',
  `clishortname` varchar(50) NOT NULL COMMENT '客户简称',
  `cliplaceid` varchar(50) DEFAULT NULL COMMENT '地址编号',
  `Cliplace` varchar(50) DEFAULT NULL COMMENT '地址',
  `effectdate` date DEFAULT NULL COMMENT '有效日期',
  `currencyType` varchar(50) NOT NULL COMMENT '币别',
  `priceWhetherTax` varchar(20) NOT NULL COMMENT '单价是否含税',
  `empid` varchar(50) NOT NULL COMMENT '业务人员编号，也就是人员编号employee(empid)',
  `empName` varchar(50) NOT NULL COMMENT '业务人员',
  `depid` varchar(50) NOT NULL COMMENT '部门编号depttab(depid)',
  `depName` varchar(50) NOT NULL COMMENT '所属部门',
  `makeEmpName` varchar(50) NOT NULL COMMENT '制单人员',
  `AuditingEmpName` varchar(50) DEFAULT NULL COMMENT '复核人员',
  `checkstate` int(9) NOT NULL COMMENT '审核状态[1审/0未审]',
  `totalMoney` int(11) DEFAULT NULL COMMENT '合计金额',
  `totalTax` int(11) DEFAULT NULL COMMENT '合计税额',
  `totalTaxMoney` int(11) DEFAULT NULL COMMENT '合计含税金额',
  `remark` varchar(2000) DEFAULT NULL COMMENT '备注',
  `enables` int(11) DEFAULT NULL COMMENT '标识是否删除',
  `Safetyone` varchar(20) DEFAULT NULL,
  `safetytow` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`billId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sellquote` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
