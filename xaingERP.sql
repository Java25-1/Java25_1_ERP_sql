/*
SQLyog Ultimate v12.4.1 (64 bit)
MySQL - 5.7.18-log : Database - erp
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

/*Table structure for table `accountmoneydetail` */

DROP TABLE IF EXISTS `accountmoneydetail`;

CREATE TABLE `accountmoneydetail` (
  `storageid` int(11) DEFAULT NULL COMMENT '主键ID',
  `storagedate` date DEFAULT NULL COMMENT '单据日期',
  `origintypes` varchar(50) DEFAULT NULL COMMENT '来源单别',
  `originid` varchar(50) DEFAULT NULL COMMENT '来源单号',
  `nowdate` date DEFAULT NULL COMMENT '日期',
  `clientsupply` varchar(50) DEFAULT NULL COMMENT '供货商名称',
  `citationid` varchar(50) DEFAULT NULL COMMENT '供货商ID',
  `formerlymoneys` int(11) DEFAULT NULL COMMENT '原单金额',
  `nowadaysmoneys` int(11) DEFAULT NULL COMMENT '现行余额',
  `enables` int(11) DEFAULT '1' COMMENT '标识是否删除(1不删除，0：删除)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `accountmoneydetail` */

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

/*Table structure for table `checkdetail` */

DROP TABLE IF EXISTS `checkdetail`;

CREATE TABLE `checkdetail` (
  `cheid` varchar(50) DEFAULT NULL COMMENT '盘点单的流水号check(cheid)',
  `chelineid` int(9) DEFAULT NULL COMMENT '栏号',
  `chematerielid` varchar(50) DEFAULT NULL COMMENT '物料的编号Materiel(matid)',
  `chematerielname` varchar(50) DEFAULT NULL COMMENT '物料的名称',
  `cheunitname` varchar(50) DEFAULT NULL COMMENT '单位名称',
  `cheaccountqty` int(9) DEFAULT NULL COMMENT '账面数量',
  `checheckqty` int(9) DEFAULT NULL COMMENT '盘点数量',
  `cheprofitandlossqty` int(9) DEFAULT NULL COMMENT '盈亏数量'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `checkdetail` */

/*Table structure for table `checked` */

DROP TABLE IF EXISTS `checked`;

CREATE TABLE `checked` (
  `cheid` varchar(50) DEFAULT NULL COMMENT '盘点单的流水号',
  `chestorageno` varchar(50) DEFAULT NULL COMMENT '盘点的仓库编号Storage(stoid)',
  `chestoragename` varchar(50) DEFAULT NULL COMMENT '盘点的仓库名称',
  `chedate` date DEFAULT NULL COMMENT '盘点的日期',
  `cheman` varchar(50) DEFAULT NULL COMMENT '盘点人名称',
  `chedeptname` varchar(50) DEFAULT NULL COMMENT '部门名称',
  `cherestrictman` varchar(50) DEFAULT NULL COMMENT '制单人-当前登录人',
  `cheauditingman` varchar(50) DEFAULT NULL COMMENT '审核人-当前登录人',
  `chestatu` int(5) DEFAULT NULL COMMENT '审核状态，0为未审核',
  `safetyone` varchar(50) DEFAULT NULL COMMENT '保留字段',
  `safetytwo` varchar(50) DEFAULT NULL COMMENT '保留字段',
  `enables` int(5) DEFAULT NULL COMMENT '标识是否删除'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `checked` */

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

/*Table structure for table `client` */

DROP TABLE IF EXISTS `client`;

CREATE TABLE `client` (
  `cliid` varbinary(0) DEFAULT NULL COMMENT '客户编号',
  `clitypeid` varbinary(0) DEFAULT NULL COMMENT '客户类别Id',
  `cliname` varbinary(0) DEFAULT NULL COMMENT '客户全称',
  `clishortname` varbinary(0) DEFAULT NULL COMMENT '客户简称',
  `cliaddress` varbinary(0) DEFAULT NULL COMMENT '地方(具体)',
  `cliarea` varbinary(0) DEFAULT NULL COMMENT '地区',
  `cliename` varbinary(0) DEFAULT NULL COMMENT '英文全称',
  `cliprincipal` varbinary(0) DEFAULT NULL COMMENT '负责人',
  `clilinkman` varbinary(0) DEFAULT NULL COMMENT '联系人',
  `cliphoneone` varbinary(0) DEFAULT NULL COMMENT '联系电话一',
  `cliphonetwo` varbinary(0) DEFAULT NULL COMMENT '联系电话二',
  `cliphonethree` varbinary(0) DEFAULT NULL COMMENT '联系电话三',
  `clibankaccounts` varbinary(0) DEFAULT NULL COMMENT '银行账号',
  `cliopenbank` varbinary(0) DEFAULT NULL COMMENT '开户银行',
  `empid` varbinary(0) DEFAULT NULL COMMENT '业务人员',
  `climobilephone` varbinary(0) DEFAULT NULL COMMENT '移动电话',
  `cliemail` varbinary(0) DEFAULT NULL COMMENT '电子邮件',
  `cliweb` varbinary(0) DEFAULT NULL COMMENT '网址',
  `clifaxes` varbinary(0) DEFAULT NULL COMMENT '传真号码',
  `clioldoutdate` date DEFAULT NULL COMMENT '最初销售出货日',
  `clioldintodate` date DEFAULT NULL COMMENT '最初销售退货日',
  `clinewoutdate` date DEFAULT NULL COMMENT '最近销售出货日',
  `clinewintodate` date DEFAULT NULL COMMENT '最近销售退货日',
  `clidiscount` varbinary(0) DEFAULT NULL COMMENT '折数(%)',
  `clipricestep` varbinary(0) DEFAULT NULL COMMENT '售价等级',
  `clicreatedate` date DEFAULT NULL COMMENT '客户建立日',
  `clistopdate` date DEFAULT NULL COMMENT '终止交易日',
  `clizhangkuanedu` varbinary(0) DEFAULT NULL COMMENT '账款额度',
  `cliremainedu` varbinary(0) DEFAULT NULL COMMENT '剩余额度',
  `clicondition` varbinary(0) DEFAULT NULL COMMENT '收款条件（天）',
  `climonthreckoning` date DEFAULT NULL COMMENT '每月结账日',
  `clicreditstep` varbinary(0) DEFAULT NULL COMMENT '信用等级',
  `cliqcpremoney` int(11) DEFAULT NULL COMMENT '期初预收款',
  `cliqcdealmoney` int(11) DEFAULT NULL COMMENT '期初应收款',
  `cliqmpremoney` int(11) DEFAULT NULL COMMENT '期末预收款',
  `cliotherremark` varbinary(0) DEFAULT NULL COMMENT '备注',
  `clitrash` int(11) DEFAULT NULL COMMENT '是否废码',
  `safetyone` varbinary(0) DEFAULT NULL COMMENT '保留字段',
  `safetytwo` varbinary(0) DEFAULT NULL COMMENT '保留字段二',
  `enables` int(11) DEFAULT NULL COMMENT '标识是否删除'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `client` */

insert  into `client`(`cliid`,`clitypeid`,`cliname`,`clishortname`,`cliaddress`,`cliarea`,`cliename`,`cliprincipal`,`clilinkman`,`cliphoneone`,`cliphonetwo`,`cliphonethree`,`clibankaccounts`,`cliopenbank`,`empid`,`climobilephone`,`cliemail`,`cliweb`,`clifaxes`,`clioldoutdate`,`clioldintodate`,`clinewoutdate`,`clinewintodate`,`clidiscount`,`clipricestep`,`clicreatedate`,`clistopdate`,`clizhangkuanedu`,`cliremainedu`,`clicondition`,`climonthreckoning`,`clicreditstep`,`cliqcpremoney`,`cliqcdealmoney`,`cliqmpremoney`,`cliotherremark`,`clitrash`,`safetyone`,`safetytwo`,`enables`) values 
('','','','',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('','','','',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `clienttype` */

DROP TABLE IF EXISTS `clienttype`;

CREATE TABLE `clienttype` (
  `Clitypeid` varchar(50) NOT NULL COMMENT '类别编号',
  `Clitypename` varchar(50) NOT NULL COMMENT '类别名称',
  `Clitypeename` varchar(50) NOT NULL COMMENT '英文名称',
  `Cliremark` varchar(50) DEFAULT NULL COMMENT '备注',
  `Clitypetrash` int(11) NOT NULL COMMENT '是否废码',
  `Safetyone` varchar(50) NOT NULL COMMENT '保留字段',
  `Safetytwo` varchar(50) NOT NULL COMMENT '保留字段',
  `Enable` int(11) NOT NULL COMMENT '标识是否删除',
  `Extend0` varchar(200) DEFAULT NULL COMMENT '扩展字段0',
  `Extend1` varchar(200) DEFAULT NULL COMMENT '扩展字段1',
  `Extend2` varchar(200) DEFAULT NULL COMMENT '扩展字段2',
  `Extend3` varchar(200) DEFAULT NULL COMMENT '扩展字段3',
  `Extend4` varchar(200) DEFAULT NULL COMMENT '扩展字段4'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='客户类别表';

/*Data for the table `clienttype` */

/*Table structure for table `depttab` */

DROP TABLE IF EXISTS `depttab`;

CREATE TABLE `depttab` (
  `Depid` int(11) NOT NULL COMMENT '部门编号',
  `Depname` varchar(50) NOT NULL COMMENT '部门名称',
  `Depremark` varchar(200) NOT NULL COMMENT '备注',
  `Deptrash` varchar(50) NOT NULL COMMENT '是否废码',
  `Extend0` varchar(200) DEFAULT NULL COMMENT '扩展字段0',
  `Extend1` varchar(200) DEFAULT NULL COMMENT '扩展字段1',
  `Extend2` varchar(200) DEFAULT NULL COMMENT '扩展字段2',
  `Extend3` varchar(200) DEFAULT NULL COMMENT '扩展字段3',
  `Extend4` varchar(200) DEFAULT NULL COMMENT '扩展字段4',
  PRIMARY KEY (`Depid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='部门表';

/*Data for the table `depttab` */

insert  into `depttab`(`Depid`,`Depname`,`Depremark`,`Deptrash`,`Extend0`,`Extend1`,`Extend2`,`Extend3`,`Extend4`) values 
(1,'财务部','','',NULL,NULL,NULL,NULL,NULL),
(2,'直销部','','',NULL,NULL,NULL,NULL,NULL),
(3,'渠道部','','',NULL,NULL,NULL,NULL,NULL),
(4,'服务中心','','',NULL,NULL,NULL,NULL,NULL),
(5,'渠道管理部','','',NULL,NULL,NULL,NULL,NULL),
(6,'生产部','','',NULL,NULL,NULL,NULL,NULL),
(7,'研发部','','',NULL,NULL,NULL,NULL,NULL),
(8,'储运部','','',NULL,NULL,NULL,NULL,NULL),
(9,'采购部','','',NULL,NULL,NULL,NULL,NULL),
(601,'一车间','','',NULL,NULL,NULL,NULL,NULL),
(602,'二车间','','',NULL,NULL,NULL,NULL,NULL),
(603,'三车间','','',NULL,NULL,NULL,NULL,NULL),
(604,'质保课','','',NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `employee` */

DROP TABLE IF EXISTS `employee`;

CREATE TABLE `employee` (
  `Empid` varchar(50) NOT NULL COMMENT '人员编号',
  `Empname` varchar(50) NOT NULL COMMENT '人员姓名',
  `Empename` varchar(50) NOT NULL COMMENT '英文姓名',
  `Depid` varchar(50) NOT NULL COMMENT '部门编号id',
  `Empsex` varchar(50) NOT NULL COMMENT '性别（默认男）',
  `Empcard` varchar(50) NOT NULL COMMENT '身份证号',
  `Empstate` varchar(50) NOT NULL COMMENT '就职状态id',
  `Empduty` varchar(50) NOT NULL COMMENT '职务（改字段名）',
  `Empphoneone` varchar(50) NOT NULL COMMENT '联系电话一',
  `Empphonetwo` varchar(50) NOT NULL COMMENT '联系电话二',
  `Empphonethree` varchar(50) NOT NULL COMMENT '联系电话三',
  `Empbankaccounts` varchar(50) NOT NULL COMMENT '银行账号',
  `Empbirthday` date NOT NULL COMMENT '出生日期(修改数据类型)',
  `Empjob` varchar(50) NOT NULL COMMENT '岗位',
  `Empemail` varchar(50) NOT NULL COMMENT '电子邮件（一个邮箱）',
  `Empweb` varchar(50) NOT NULL COMMENT '网址',
  `Empfaxes` varchar(50) NOT NULL COMMENT '传真号码',
  `Empopenbank` varchar(50) NOT NULL COMMENT '开户银行',
  `Emptop` varchar(50) NOT NULL COMMENT '最高学历',
  `Empdegree` varchar(50) NOT NULL COMMENT '学位',
  `Empgotime` date NOT NULL COMMENT '到期日期',
  `Empgraduatetime` varchar(50) NOT NULL COMMENT '毕业学校',
  `Emppactstarttime` date NOT NULL COMMENT '合同起始日期',
  `Emppactendtime` date NOT NULL COMMENT '合同终止日期',
  `Empnowmailid` varchar(50) NOT NULL COMMENT '现邮编',
  `Empfamilyphone` varchar(50) NOT NULL COMMENT '家庭电话',
  `Empfamilyplace` varchar(50) NOT NULL COMMENT '家庭住址',
  `Empnowphone` varchar(50) NOT NULL COMMENT '现电话',
  `Empnowplace` varchar(50) NOT NULL COMMENT '现住址',
  `Empexigenceman` varchar(50) NOT NULL COMMENT '紧急联系人',
  `Empfamilymailid` varchar(50) NOT NULL COMMENT '家庭邮编',
  `Empremark` varchar(200) NOT NULL COMMENT '备注',
  `Emptrash` int(11) NOT NULL COMMENT '是否废码',
  `Safetyone` varchar(50) NOT NULL COMMENT '保留字段',
  `Safetytwo` varchar(50) NOT NULL COMMENT '保留字段',
  `Enables` int(11) NOT NULL COMMENT '标识是否删除',
  `Extend0` varchar(200) DEFAULT NULL COMMENT '扩展字段0',
  `Extend1` varchar(200) DEFAULT NULL COMMENT '扩展字段1',
  `Extend2` varchar(200) DEFAULT NULL COMMENT '扩展字段2',
  `Extend3` varchar(200) DEFAULT NULL COMMENT '扩展字段3',
  `Extend4` varchar(200) DEFAULT NULL COMMENT '扩展字段4',
  PRIMARY KEY (`Empid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='人员表';

/*Data for the table `employee` */

insert  into `employee`(`Empid`,`Empname`,`Empename`,`Depid`,`Empsex`,`Empcard`,`Empstate`,`Empduty`,`Empphoneone`,`Empphonetwo`,`Empphonethree`,`Empbankaccounts`,`Empbirthday`,`Empjob`,`Empemail`,`Empweb`,`Empfaxes`,`Empopenbank`,`Emptop`,`Empdegree`,`Empgotime`,`Empgraduatetime`,`Emppactstarttime`,`Emppactendtime`,`Empnowmailid`,`Empfamilyphone`,`Empfamilyplace`,`Empnowphone`,`Empnowplace`,`Empexigenceman`,`Empfamilymailid`,`Empremark`,`Emptrash`,`Safetyone`,`Safetytwo`,`Enables`,`Extend0`,`Extend1`,`Extend2`,`Extend3`,`Extend4`) values 
('10001','王总','综合管理部','','男性','43000019711203001x','转正','总经理','','','','','0000-00-00','','','','','','','','0000-00-00','','0000-00-00','0000-00-00','','','','','','','','',0,'','',0,NULL,NULL,NULL,NULL,NULL),
('10005','曾会计','财务部','','女性','430000197410010001','转正','会计','','','','','0000-00-00','','','','','','','','0000-00-00','','0000-00-00','0000-00-00','','','','','','','','',0,'','',0,NULL,NULL,NULL,NULL,NULL),
('10007','王经理','直销部','','男性','430000197612080019','转正','经理','','','','','0000-00-00','','','','','','','','0000-00-00','','0000-00-00','0000-00-00','','','','','','','','',0,'','',0,NULL,NULL,NULL,NULL,NULL),
('10010','戴经理','渠道部','','男性','430000197502160015','转正','经理','','','','','0000-00-00','','','','','','','','0000-00-00','','0000-00-00','0000-00-00','','','','','','','','',0,'','',0,NULL,NULL,NULL,NULL,NULL),
('10011','欧经理','生产部','','男性','430000197108190010','转正','经理','','','','','0000-00-00','','','','','','','','0000-00-00','','0000-00-00','0000-00-00','','','','','','','','',0,'','',0,NULL,NULL,NULL,NULL,NULL),
('10012','洪主任','一车间','','女性','430000198503150029','转正','主任','','','','','0000-00-00','','','','','','','','0000-00-00','','0000-00-00','0000-00-00','','','','','','','','',0,'','',0,NULL,NULL,NULL,NULL,NULL),
('10015','邓工','研发部','','男性','43000019770924001x','转正','员工','','','','','0000-00-00','','','','','','','','0000-00-00','','0000-00-00','0000-00-00','','','','','','','','',0,'','',0,NULL,NULL,NULL,NULL,NULL),
('10016','王保管','储运部','','女性','430000197112030020','转正','保管','','','','','0000-00-00','','','','','','','','0000-00-00','','0000-00-00','0000-00-00','','','','','','','','',0,'','',0,NULL,NULL,NULL,NULL,NULL),
('10018','牛采购','采购部','','男性','43000019720516001x','转正','采购','','','','','0000-00-00','','','','','','','','0000-00-00','','0000-00-00','0000-00-00','','','','','','','','',0,'','',0,NULL,NULL,NULL,NULL,NULL),
('10019','牛质检','质保课','','男性','430000197404290013','转正','质检','','','','','0000-00-00','','','','','','','','0000-00-00','','0000-00-00','0000-00-00','','','','','','','','',0,'','',0,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `function` */

DROP TABLE IF EXISTS `function`;

CREATE TABLE `function` (
  `fid` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `fcode` varchar(50) DEFAULT NULL COMMENT '权限编码',
  `fname` varchar(50) DEFAULT NULL COMMENT '权限名称',
  `furl` varchar(50) DEFAULT NULL COMMENT '权限地址',
  `ficon` varchar(50) DEFAULT NULL COMMENT '图标',
  `fpid` int(11) DEFAULT NULL COMMENT '父菜单',
  `createdate` date DEFAULT NULL COMMENT '创建时间',
  `isTrue` int(11) DEFAULT '1' COMMENT '是否启用',
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB AUTO_INCREMENT=382 DEFAULT CHARSET=utf8;

/*Data for the table `function` */

insert  into `function`(`fid`,`fcode`,`fname`,`furl`,`ficon`,`fpid`,`createdate`,`isTrue`) values 
(1,'c000','公共资料','',NULL,0,'2019-08-31',1),
(2,'cb000','基本资料','',NULL,1,'2019-08-31',1),
(3,'cb001','部门设定',NULL,NULL,2,'2019-08-31',1),
(4,'cb001c','新增',NULL,NULL,3,'2019-08-31',1),
(5,'cb001u','修改',NULL,NULL,3,'2019-08-31',1),
(6,'cb001d','删除',NULL,NULL,3,'2019-08-31',1),
(7,'cb001r','查看',NULL,NULL,3,'2019-08-31',1),
(8,'cb002','项目设定',NULL,NULL,2,'2019-08-31',1),
(9,'cb002c','新增',NULL,NULL,8,'2019-08-31',1),
(10,'cb002u','修改',NULL,NULL,8,'2019-08-31',1),
(11,'cb002d','删除',NULL,NULL,8,'2019-08-31',1),
(12,'cb002r','查看',NULL,NULL,8,'2019-08-31',1),
(13,'cb003','地区设定',NULL,NULL,2,'2019-08-31',1),
(14,'cb003c','新增',NULL,NULL,13,'2019-08-31',1),
(15,'cb003u','修改',NULL,NULL,13,'2019-08-31',1),
(16,'cb003d','删除',NULL,NULL,13,'2019-08-31',1),
(17,'cb003r','查看',NULL,NULL,13,'2019-08-31',1),
(18,'cb004','币别设定',NULL,NULL,2,'2019-08-31',1),
(19,'cb004c','新增',NULL,NULL,18,'2019-08-31',1),
(20,'cb004u','修改',NULL,NULL,18,'2019-08-31',1),
(21,'cb004d','删除',NULL,NULL,18,'2019-08-31',1),
(22,'cb004r','查看',NULL,NULL,18,'2019-08-31',1),
(23,'cb005','税目设定',NULL,NULL,2,'2019-08-31',1),
(24,'cb005c','新增',NULL,NULL,23,'2019-08-31',1),
(25,'cb005u','修改',NULL,NULL,23,'2019-08-31',1),
(26,'cb005d','删除',NULL,NULL,23,'2019-08-31',1),
(27,'cb005r','查看',NULL,NULL,23,'2019-08-31',1),
(28,'cb006','人员主文件设定',NULL,NULL,2,'2019-08-31',1),
(29,'cb006c','新增',NULL,NULL,28,'2019-08-31',1),
(30,'cb006u','修改',NULL,NULL,28,'2019-08-31',1),
(31,'cb006d','删除',NULL,NULL,28,'2019-08-31',1),
(32,'cb006r','查看',NULL,NULL,28,'2019-08-31',1),
(33,'cb007','采购请购类型设定',NULL,NULL,2,'2019-08-31',1),
(34,'cb007c','新增',NULL,NULL,33,'2019-08-31',1),
(35,'cb007u','修改',NULL,NULL,33,'2019-08-31',1),
(36,'cb007d','删除',NULL,NULL,33,'2019-08-31',1),
(37,'cb007r','查看',NULL,NULL,33,'2019-08-31',1),
(38,'cb008','采购订单类型设定',NULL,NULL,2,'2019-08-31',1),
(39,'cb008c','新增',NULL,NULL,38,'2019-08-31',1),
(40,'cb008u','修改',NULL,NULL,38,'2019-08-31',1),
(41,'cb008d','删除',NULL,NULL,38,'2019-08-31',1),
(42,'cb008r','查看',NULL,NULL,38,'2019-08-31',1),
(43,'cb010','采购退货类型设定',NULL,NULL,2,'2019-08-31',1),
(44,'cb010c','新增',NULL,NULL,43,'2019-08-31',1),
(45,'cb010u','修改',NULL,NULL,43,'2019-08-31',1),
(46,'cb010d','删除',NULL,NULL,43,'2019-08-31',1),
(47,'cb010r','查看',NULL,NULL,43,'2019-08-31',1),
(53,'cb013','销售退货类型设定',NULL,NULL,2,'2019-08-31',1),
(54,'cb013c','新增',NULL,NULL,53,'2019-08-31',1),
(55,'cb013u','修改',NULL,NULL,53,'2019-08-31',1),
(56,'cb013d','删除',NULL,NULL,53,'2019-08-31',1),
(57,'cb013r','查看',NULL,NULL,53,'2019-08-31',1),
(58,'cb014','其它出库类型设定',NULL,NULL,2,'2019-08-31',1),
(59,'cb014c','新增',NULL,NULL,58,'2019-08-31',1),
(60,'cb014u','修改',NULL,NULL,58,'2019-08-31',1),
(61,'cb014d','删除',NULL,NULL,58,'2019-08-31',1),
(62,'cb014r','查看',NULL,NULL,58,'2019-08-31',1),
(63,'cb015','其它入库类型设定',NULL,NULL,2,'2019-08-31',1),
(64,'cb015c','新增',NULL,NULL,63,'2019-08-31',1),
(65,'cb015u','修改',NULL,NULL,63,'2019-08-31',1),
(66,'cb015d','删除',NULL,NULL,63,'2019-08-31',1),
(67,'cb015r','查看',NULL,NULL,63,'2019-08-31',1),
(68,'cm000','物料资料',NULL,NULL,1,'2019-08-31',1),
(69,'cm001','仓库设定',NULL,NULL,68,'2019-08-31',1),
(70,'cm001c','新增',NULL,NULL,69,'2019-08-31',1),
(71,'cm001u','修改',NULL,NULL,69,'2019-08-31',1),
(72,'cm001d','删除',NULL,NULL,69,'2019-08-31',1),
(73,'cm001r','查看',NULL,NULL,69,'2019-08-31',1),
(74,'cm002','物料类别设定',NULL,NULL,68,'2019-08-31',1),
(75,'cm0021c','新增',NULL,NULL,74,'2019-08-31',1),
(76,'cm002u','修改',NULL,NULL,74,'2019-08-31',1),
(77,'cm002d','删除',NULL,NULL,74,'2019-08-31',1),
(78,'cm002r','查看',NULL,NULL,74,'2019-08-31',1),
(79,'cm003','计量单位设定',NULL,NULL,68,'2019-08-31',1),
(80,'cm003c','新增',NULL,NULL,79,'2019-08-31',1),
(81,'cm003u','修改',NULL,NULL,79,'2019-08-31',1),
(82,'cm003d','删除',NULL,NULL,79,'2019-08-31',1),
(83,'cm003r','查看',NULL,NULL,79,'2019-08-31',1),
(84,'cm004','物料主文件设定',NULL,NULL,68,'2019-08-31',1),
(85,'cm004c','新增',NULL,NULL,84,'2019-08-31',1),
(86,'cm004u','修改',NULL,NULL,84,'2019-08-31',1),
(87,'cm004d','删除',NULL,NULL,84,'2019-08-31',1),
(88,'cm004r','查看',NULL,NULL,84,'2019-08-31',1),
(89,'cc000','往来资料',NULL,NULL,1,'2019-08-31',1),
(90,'cc001','客户类别设定',NULL,NULL,89,'2019-08-31',1),
(91,'cc001c','新增',NULL,NULL,90,'2019-08-31',1),
(92,'cc001u','修改',NULL,NULL,90,'2019-08-31',1),
(93,'cc001d','删除',NULL,NULL,90,'2019-08-31',1),
(94,'cc001r','查看',NULL,NULL,90,'2019-08-31',1),
(95,'cc002','潜在客户主文件设定',NULL,NULL,89,'2019-08-31',1),
(96,'cc002c','新增',NULL,NULL,95,'2019-08-31',1),
(97,'cc002u','修改',NULL,NULL,95,'2019-08-31',1),
(98,'cc002d','删除',NULL,NULL,95,'2019-08-31',1),
(99,'cc002r','查看',NULL,NULL,95,'2019-08-31',1),
(100,'cc003','客户主文件设定',NULL,NULL,89,'2019-08-31',1),
(101,'cc003c','新增',NULL,NULL,100,'2019-08-31',1),
(102,'cc0031u','修改',NULL,NULL,100,'2019-08-31',1),
(103,'cc003d','删除',NULL,NULL,100,'2019-08-31',1),
(104,'cc003r','查看',NULL,NULL,100,'2019-08-31',1),
(105,'cc004','潜在客户转正式客户',NULL,NULL,89,'2019-08-31',1),
(106,'cc004c','新增',NULL,NULL,105,'2019-08-31',1),
(107,'cc004u','修改',NULL,NULL,105,'2019-08-31',1),
(108,'cc004d','删除',NULL,NULL,105,'2019-08-31',1),
(109,'cc004r','查看',NULL,NULL,105,'2019-08-31',1),
(110,'cc005','供应商类别设定',NULL,NULL,89,'2019-08-31',1),
(111,'cc005c','新增',NULL,NULL,110,'2019-08-31',1),
(112,'cc005u','修改',NULL,NULL,110,'2019-08-31',1),
(113,'cc005d','删除',NULL,NULL,110,'2019-08-31',1),
(114,'cc005r','查看',NULL,NULL,110,'2019-08-31',1),
(115,'cc006','供应商主文件设定',NULL,NULL,89,'2019-08-31',1),
(116,'cc006c','新增',NULL,NULL,115,'2019-08-31',1),
(117,'cc006u','修改',NULL,NULL,115,'2019-08-31',1),
(118,'cc006d','删除',NULL,NULL,115,'2019-08-31',1),
(119,'cc006r','查看',NULL,NULL,115,'2019-08-31',1),
(120,'cs000','科目资料',NULL,NULL,1,'2019-08-31',1),
(121,'cs001','科目总类设定',NULL,NULL,120,'2019-08-31',1),
(122,'cs001c','新增',NULL,NULL,121,'2019-08-31',1),
(123,'cs001u','修改',NULL,NULL,121,'2019-08-31',1),
(124,'cs001d','删除',NULL,NULL,121,'2019-08-31',1),
(125,'cs001r','查看',NULL,NULL,121,'2019-08-31',1),
(126,'cs002','科目总类设定',NULL,NULL,120,'2019-08-31',1),
(127,'cs002c','新增',NULL,NULL,126,'2019-08-31',1),
(128,'cs002u','修改',NULL,NULL,126,'2019-08-31',1),
(129,'cs002d','删除',NULL,NULL,126,'2019-08-31',1),
(130,'cs002r','查看',NULL,NULL,126,'2019-08-31',1),
(131,'i000','库存管理','',NULL,0,'2019-08-31',1),
(132,'ib000','基本资料','',NULL,131,'2019-08-31',1),
(133,'ib001','入库类型设定',NULL,NULL,132,'2019-08-31',1),
(134,'ib001c','新增',NULL,NULL,133,'2019-08-31',1),
(135,'ib001u','修改',NULL,NULL,133,'2019-08-31',1),
(136,'ib001d','删除',NULL,NULL,133,'2019-08-31',1),
(137,'ib001r','查看',NULL,NULL,133,'2019-08-31',1),
(138,'ib002','出库类型设定',NULL,NULL,132,'2019-08-31',1),
(139,'ib002c','新增',NULL,NULL,138,'2019-08-31',1),
(140,'ib002u','修改',NULL,NULL,138,'2019-08-31',1),
(141,'ib002d','删除',NULL,NULL,138,'2019-08-31',1),
(142,'ib002r','查看',NULL,NULL,138,'2019-08-31',1),
(143,'io000','其他出入库作业',NULL,NULL,131,'2019-08-31',1),
(144,'io001','其他入库单',NULL,NULL,143,'2019-08-31',1),
(145,'io001c','新增',NULL,NULL,144,'2019-08-31',1),
(146,'io001u','修改',NULL,NULL,144,'2019-08-31',1),
(147,'io001d','删除',NULL,NULL,144,'2019-08-31',1),
(148,'io001r','查看',NULL,NULL,144,'2019-08-31',1),
(149,'io001s','审查',NULL,NULL,144,'2019-08-31',1),
(150,'io002','其他出库单',NULL,NULL,143,'2019-08-31',1),
(151,'io002c','新增',NULL,NULL,150,'2019-08-31',1),
(152,'io002u','修改',NULL,NULL,150,'2019-08-31',1),
(153,'io002d','删除',NULL,NULL,150,'2019-08-31',1),
(154,'io002r','查看',NULL,NULL,150,'2019-08-31',1),
(155,'io002s','审查',NULL,NULL,150,'2019-08-31',1),
(156,'ia000','调拨盘点作业',NULL,NULL,131,'2019-08-31',1),
(157,'ia001','调拨单',NULL,NULL,156,'2019-08-31',1),
(158,'ia001c','新增',NULL,NULL,157,'2019-08-31',1),
(159,'ia001u','修改',NULL,NULL,157,'2019-08-31',1),
(160,'ia001d','删除',NULL,NULL,157,'2019-08-31',1),
(161,'ia001r','查看',NULL,NULL,157,'2019-08-31',1),
(162,'ia001s','审查',NULL,NULL,157,'2019-08-31',1),
(163,'ia002','打印盘点卡',NULL,NULL,156,'2019-08-31',1),
(164,'ia002c','新增',NULL,NULL,163,'2019-08-31',1),
(165,'ia002u','修改',NULL,NULL,163,'2019-08-31',1),
(166,'ia002d','删除',NULL,NULL,163,'2019-08-31',1),
(167,'ia002r','查看',NULL,NULL,163,'2019-08-31',1),
(168,'ia003','盘点单',NULL,NULL,156,'2019-08-31',1),
(169,'ia003c','新增',NULL,NULL,168,'2019-08-31',1),
(170,'ia003u','修改',NULL,NULL,168,'2019-08-31',1),
(171,'ia003d','删除',NULL,NULL,168,'2019-08-31',1),
(172,'ia003r','查看',NULL,NULL,168,'2019-08-31',1),
(173,'ia003s','审查',NULL,NULL,168,'2019-08-31',1),
(174,'ij000','调价作业',NULL,NULL,131,'2019-08-31',1),
(175,'ij001','调价单',NULL,NULL,174,'2019-08-31',1),
(176,'ij001c','新增',NULL,NULL,175,'2019-08-31',1),
(177,'ij001u','修改',NULL,NULL,175,'2019-08-31',1),
(178,'ij001d','删除',NULL,NULL,175,'2019-08-31',1),
(179,'ij001r','查看',NULL,NULL,175,'2019-08-31',1),
(180,'ij001s','审查',NULL,NULL,175,'2019-08-31',1),
(181,'ij000','常用报表',NULL,NULL,131,'2019-08-31',1),
(182,'ij001','库存呆滞品分析',NULL,NULL,181,'2019-08-31',1),
(183,'ij001c','新增',NULL,NULL,182,'2019-08-31',1),
(184,'ij001u','修改',NULL,NULL,182,'2019-08-31',1),
(185,'ij001d','删除',NULL,NULL,182,'2019-08-31',1),
(186,'ij001r','查看',NULL,NULL,182,'2019-08-31',1),
(187,'ij002','库存进出明细查询',NULL,NULL,181,'2019-08-31',1),
(188,'ij002c','新增',NULL,NULL,187,'2019-08-31',1),
(189,'ij002u','修改',NULL,NULL,187,'2019-08-31',1),
(190,'ij002d','删除',NULL,NULL,187,'2019-08-31',1),
(191,'ij002r','查看',NULL,NULL,187,'2019-08-31',1),
(192,'ij002','库存台账查询',NULL,NULL,181,'2019-08-31',1),
(193,'ij002c','新增',NULL,NULL,192,'2019-08-31',1),
(194,'ij002u','修改',NULL,NULL,192,'2019-08-31',1),
(195,'ij002d','删除',NULL,NULL,192,'2019-08-31',1),
(196,'ij002r','查看',NULL,NULL,192,'2019-08-31',1),
(197,'s000','销售管理','',NULL,0,'2019-08-31',1),
(198,'sb000','基本资料','',NULL,197,'2019-08-31',1),
(199,'sb001','销售订单类型设定',NULL,NULL,198,'2019-08-31',1),
(200,'sb001c','新增',NULL,NULL,199,'2019-08-31',1),
(201,'sb001u','修改',NULL,NULL,199,'2019-08-31',1),
(202,'sb001d','删除',NULL,NULL,199,'2019-08-31',1),
(203,'sb001r','查看',NULL,NULL,199,'2019-08-31',1),
(204,'sb002','销售出库类型设定',NULL,NULL,198,'2019-08-31',1),
(205,'sb002c','新增',NULL,NULL,204,'2019-08-31',1),
(206,'sb002u','修改',NULL,NULL,204,'2019-08-31',1),
(207,'sb002d','删除',NULL,NULL,204,'2019-08-31',1),
(208,'sb002r','查看',NULL,NULL,204,'2019-08-31',1),
(209,'ss000','销售作业',NULL,NULL,197,'2019-08-31',1),
(210,'ss001','销售报价单',NULL,NULL,209,'2019-08-31',1),
(211,'ss001c','新增',NULL,NULL,210,'2019-08-31',1),
(212,'ss001u','修改',NULL,NULL,210,'2019-08-31',1),
(213,'ss001d','删除',NULL,NULL,210,'2019-08-31',1),
(214,'ss001r','查看',NULL,NULL,210,'2019-08-31',1),
(215,'ss001s','审查',NULL,NULL,210,'2019-08-31',1),
(216,'ss002','销售订单',NULL,NULL,209,'2019-08-31',1),
(217,'ss002c','新增',NULL,NULL,216,'2019-08-31',1),
(218,'ss002u','修改',NULL,NULL,216,'2019-08-31',1),
(219,'ss002d','删除',NULL,NULL,216,'2019-08-31',1),
(220,'ss002r','查看',NULL,NULL,216,'2019-08-31',1),
(221,'ss002s','审查',NULL,NULL,216,'2019-08-31',1),
(222,'ss003','销售出库单',NULL,NULL,209,'2019-08-31',1),
(223,'ss003c','新增',NULL,NULL,222,'2019-08-31',1),
(224,'ss003u','修改',NULL,NULL,222,'2019-08-31',1),
(225,'ss003d','删除',NULL,NULL,222,'2019-08-31',1),
(226,'ss003r','查看',NULL,NULL,222,'2019-08-31',1),
(227,'ss003s','审查',NULL,NULL,222,'2019-08-31',1),
(228,'ss004','销售退货单',NULL,NULL,209,'2019-08-31',1),
(229,'ss004c','新增',NULL,NULL,228,'2019-08-31',1),
(230,'ss004u','修改',NULL,NULL,228,'2019-08-31',1),
(231,'ss004d','删除',NULL,NULL,228,'2019-08-31',1),
(232,'ss004r','查看',NULL,NULL,228,'2019-08-31',1),
(233,'ss004s','审查',NULL,NULL,228,'2019-08-31',1),
(234,'ss005','销售发票',NULL,NULL,209,'2019-08-31',1),
(235,'ss005c','新增',NULL,NULL,234,'2019-08-31',1),
(236,'ss005u','修改',NULL,NULL,234,'2019-08-31',1),
(237,'ss005d','删除',NULL,NULL,234,'2019-08-31',1),
(238,'ss005r','查看',NULL,NULL,234,'2019-08-31',1),
(239,'ss005s','审查',NULL,NULL,234,'2019-08-31',1),
(240,'ss006','销售排行表',NULL,NULL,209,'2019-08-31',1),
(241,'ss006c','新增',NULL,NULL,240,'2019-08-31',1),
(242,'ss006u','修改',NULL,NULL,240,'2019-08-31',1),
(243,'ss006d','删除',NULL,NULL,240,'2019-08-31',1),
(244,'ss006r','查看',NULL,NULL,240,'2019-08-31',1),
(245,'sg000','金税接口',NULL,NULL,197,'2019-08-31',1),
(246,'sg001','销售发票导出',NULL,NULL,245,'2019-08-31',1),
(247,'sg001c','新增',NULL,NULL,246,'2019-08-31',1),
(248,'sg001u','修改',NULL,NULL,246,'2019-08-31',1),
(249,'sg001d','删除',NULL,NULL,246,'2019-08-31',1),
(250,'sg001r','查看',NULL,NULL,246,'2019-08-31',1),
(251,'p000','采购管理','',NULL,0,'2019-08-31',1),
(252,'pb000','基本资料','',NULL,251,'2019-08-31',1),
(253,'pb001','采购请购类型设定',NULL,NULL,252,'2019-08-31',1),
(254,'pb001c','新增',NULL,NULL,253,'2019-08-31',1),
(255,'pb001u','修改',NULL,NULL,253,'2019-08-31',1),
(256,'pb001d','删除',NULL,NULL,253,'2019-08-31',1),
(257,'pb001r','查看',NULL,NULL,253,'2019-08-31',1),
(258,'pb002','采购入库类型设定',NULL,NULL,252,'2019-08-31',1),
(259,'pb002c','新增',NULL,NULL,258,'2019-08-31',1),
(260,'pb002u','修改',NULL,NULL,258,'2019-08-31',1),
(261,'pb002d','删除',NULL,NULL,258,'2019-08-31',1),
(262,'pb002r','查看',NULL,NULL,258,'2019-08-31',1),
(263,'pb002','采购订单类型设定',NULL,NULL,252,'2019-08-31',1),
(264,'pb002c','新增',NULL,NULL,263,'2019-08-31',1),
(265,'pb002u','修改',NULL,NULL,263,'2019-08-31',1),
(266,'pb002d','删除',NULL,NULL,263,'2019-08-31',1),
(267,'pb002r','查看',NULL,NULL,263,'2019-08-31',1),
(268,'pp000','采购作业',NULL,NULL,251,NULL,1),
(269,'pp001','采购订单',NULL,NULL,268,NULL,1),
(270,'pp001c','新增',NULL,NULL,269,'2019-08-31',1),
(271,'pp001u','修改',NULL,NULL,269,'2019-08-31',1),
(272,'pp001d','删除',NULL,NULL,269,'2019-08-31',1),
(273,'pp001r','查看',NULL,NULL,269,'2019-08-31',1),
(274,'pp001s','审查',NULL,NULL,269,'2019-08-31',1),
(275,'pp002','采购询价单',NULL,NULL,268,NULL,1),
(276,'pp002c','新增',NULL,NULL,275,'2019-08-31',1),
(277,'pp002u','修改',NULL,NULL,275,'2019-08-31',1),
(278,'pp002d','删除',NULL,NULL,275,'2019-08-31',1),
(279,'pp002r','查看',NULL,NULL,275,'2019-08-31',1),
(280,'pp002s','审查',NULL,NULL,275,'2019-08-31',1),
(281,'pp003','采购请购单',NULL,NULL,268,NULL,1),
(282,'pp003c','新增',NULL,NULL,281,'2019-08-31',1),
(283,'pp003u','修改',NULL,NULL,281,'2019-08-31',1),
(284,'pp003d','删除',NULL,NULL,281,'2019-08-31',1),
(285,'pp003r','查看',NULL,NULL,281,'2019-08-31',1),
(286,'pp003s','审查',NULL,NULL,281,'2019-08-31',1),
(287,'pp004','采购入库单',NULL,NULL,268,NULL,1),
(288,'pp004c','新增',NULL,NULL,287,'2019-08-31',1),
(289,'pp004u','修改',NULL,NULL,287,'2019-08-31',1),
(290,'pp004d','删除',NULL,NULL,287,'2019-08-31',1),
(291,'pp004r','查看',NULL,NULL,287,'2019-08-31',1),
(292,'pp004s','审查',NULL,NULL,287,'2019-08-31',1),
(293,'pp005','采购退货单',NULL,NULL,268,NULL,1),
(294,'pp005c','新增',NULL,NULL,293,'2019-08-31',1),
(295,'pp005u','修改',NULL,NULL,293,'2019-08-31',1),
(296,'pp005d','删除',NULL,NULL,293,'2019-08-31',1),
(297,'pp005r','查看',NULL,NULL,293,'2019-08-31',1),
(298,'pp005s','审查',NULL,NULL,293,'2019-08-31',1),
(299,'pp006','采购发票',NULL,NULL,268,NULL,1),
(300,'pp006c','新增',NULL,NULL,299,'2019-08-31',1),
(301,'pp006u','修改',NULL,NULL,299,'2019-08-31',1),
(302,'pp006d','删除',NULL,NULL,299,'2019-08-31',1),
(303,'pp006r','查看',NULL,NULL,299,'2019-08-31',1),
(304,'pp006s','审查',NULL,NULL,299,'2019-08-31',1),
(305,'pp007','采购排行表',NULL,NULL,268,NULL,1),
(306,'pp007c','新增',NULL,NULL,305,'2019-08-31',1),
(307,'pp007u','修改',NULL,NULL,305,'2019-08-31',1),
(308,'pp007d','删除',NULL,NULL,305,'2019-08-31',1),
(309,'pp007r','查看',NULL,NULL,305,'2019-08-31',1),
(310,'ps000','分摊作业',NULL,NULL,251,NULL,1),
(311,'ps001','采购分摊作业',NULL,NULL,310,NULL,1),
(312,'ps001c','新增',NULL,NULL,311,'2019-08-31',1),
(313,'ps001u','修改',NULL,NULL,311,'2019-08-31',1),
(314,'ps001d','删除',NULL,NULL,311,'2019-08-31',1),
(315,'ps001r','查看',NULL,NULL,311,'2019-08-31',1),
(316,'ps001s','审查',NULL,NULL,310,'2019-08-31',1),
(317,'ps001','采购分摊明细表单',NULL,NULL,316,NULL,1),
(318,'ps001c','新增',NULL,NULL,316,'2019-08-31',1),
(319,'ps001u','修改',NULL,NULL,316,'2019-08-31',1),
(320,'ps001d','删除',NULL,NULL,316,'2019-08-31',1),
(321,'ps001r','查看',NULL,NULL,316,'2019-08-31',1),
(322,'c000','账款管理','',NULL,0,'2019-08-31',1),
(323,'cwb000','冲款作业','',NULL,322,'2019-08-31',1),
(324,'cw001','预收款',NULL,NULL,323,'2019-08-31',1),
(325,'cw001c','新增',NULL,NULL,324,'2019-08-31',1),
(326,'cw001u','修改',NULL,NULL,324,'2019-08-31',1),
(327,'cw001d','删除',NULL,NULL,324,'2019-08-31',1),
(328,'cw001r','查看',NULL,NULL,324,'2019-08-31',1),
(329,'cc001s','审查',NULL,NULL,324,'2019-08-31',1),
(330,'cw002','应收冲款单',NULL,NULL,323,'2019-08-31',1),
(331,'cw002c','新增',NULL,NULL,330,'2019-08-31',1),
(332,'cw002u','修改',NULL,NULL,330,'2019-08-31',1),
(333,'cw002d','删除',NULL,NULL,330,'2019-08-31',1),
(334,'cw002r','查看',NULL,NULL,330,'2019-08-31',1),
(335,'cc002s','审查',NULL,NULL,330,'2019-08-31',1),
(336,'cw003','预付款',NULL,NULL,323,'2019-08-31',1),
(337,'cw003c','新增',NULL,NULL,336,'2019-08-31',1),
(338,'cw003u','修改',NULL,NULL,336,'2019-08-31',1),
(339,'cw003d','删除',NULL,NULL,336,'2019-08-31',1),
(340,'cw003r','查看',NULL,NULL,336,'2019-08-31',1),
(341,'cc003s','审查',NULL,NULL,336,'2019-08-31',1),
(342,'cw004','应付冲款单',NULL,NULL,323,'2019-08-31',1),
(343,'cw004c','新增',NULL,NULL,342,'2019-08-31',1),
(344,'cw004u','修改',NULL,NULL,342,'2019-08-31',1),
(345,'cw004d','删除',NULL,NULL,342,'2019-08-31',1),
(346,'cw004r','查看',NULL,NULL,342,'2019-08-31',1),
(347,'cc004s','审查',NULL,NULL,342,'2019-08-31',1),
(348,'cc000','其他应收付作业',NULL,NULL,322,NULL,1),
(349,'cc001','其他应收单',NULL,NULL,348,NULL,1),
(350,'cc001c','新增',NULL,NULL,349,'2019-08-31',1),
(351,'cc001u','修改',NULL,NULL,349,'2019-08-31',1),
(352,'cc001d','删除',NULL,NULL,349,'2019-08-31',1),
(353,'cc001r','查看',NULL,NULL,349,'2019-08-31',1),
(354,'cc001s','审查',NULL,NULL,349,'2019-08-31',1),
(355,'cc002','其他应付单',NULL,NULL,348,NULL,1),
(356,'cc002c','新增',NULL,NULL,355,'2019-08-31',1),
(357,'cc002u','修改',NULL,NULL,355,'2019-08-31',1),
(358,'cc002d','删除',NULL,NULL,355,'2019-08-31',1),
(359,'cc002r','查看',NULL,NULL,355,'2019-08-31',1),
(360,'cc002s','审查',NULL,NULL,355,'2019-08-31',1),
(361,'ca000','账款报表',NULL,NULL,322,NULL,1),
(362,'ca001','应收款帐龄分析表',NULL,NULL,361,NULL,1),
(363,'ca001c','新增',NULL,NULL,362,'2019-08-31',1),
(364,'ca001u','修改',NULL,NULL,362,'2019-08-31',1),
(365,'ca001d','删除',NULL,NULL,362,'2019-08-31',1),
(366,'ca001r','查看',NULL,NULL,362,'2019-08-31',1),
(367,'ca002','客户应收款明细表',NULL,NULL,361,NULL,1),
(368,'ca002c','新增',NULL,NULL,367,'2019-08-31',1),
(369,'ca002u','修改',NULL,NULL,367,'2019-08-31',1),
(370,'ca002d','删除',NULL,NULL,367,'2019-08-31',1),
(371,'ca002r','查看',NULL,NULL,367,'2019-08-31',1),
(372,'ca003','应付款帐龄分析表',NULL,NULL,361,NULL,1),
(373,'ca003c','新增',NULL,NULL,372,'2019-08-31',1),
(374,'ca003u','修改',NULL,NULL,372,'2019-08-31',1),
(375,'ca003d','删除',NULL,NULL,372,'2019-08-31',1),
(376,'ca003r','查看',NULL,NULL,372,'2019-08-31',1),
(377,'ca004','供应商应付款明细表',NULL,NULL,361,NULL,1),
(378,'ca004c','新增',NULL,NULL,377,'2019-08-31',1),
(379,'ca004u','修改',NULL,NULL,377,'2019-08-31',1),
(380,'ca004d','删除',NULL,NULL,377,'2019-08-31',1),
(381,'ca004r','查看',NULL,NULL,377,'2019-08-31',1);

/*Table structure for table `generalledger` */

DROP TABLE IF EXISTS `generalledger`;

CREATE TABLE `generalledger` (
  `Genid` int(11) NOT NULL COMMENT '行号',
  `Genmaterielid` int(11) NOT NULL COMMENT '物料编号',
  `Genstorageno` int(11) NOT NULL COMMENT '仓库编号(伪外键)',
  `Genstoragename` int(11) NOT NULL COMMENT '仓库',
  `Genexpectstartqty` int(11) NOT NULL COMMENT '期初总数量',
  `Genstandarcost` decimal(10,2) NOT NULL COMMENT '标准成本',
  `Genallcost` decimal(10,2) NOT NULL COMMENT '标准总成本',
  `Genexpectstartallcost` decimal(10,2) NOT NULL COMMENT '期初总成本',
  `Gensafetyqty` int(11) NOT NULL COMMENT '安全数量',
  `Genavgcost` decimal(10,2) NOT NULL COMMENT '平均成本',
  `Genqty` int(11) NOT NULL COMMENT '现有总数量',
  `Gennowavgcost` decimal(10,2) NOT NULL COMMENT '现行平均成本',
  `Genstandardcostall` decimal(10,2) NOT NULL COMMENT '标准总成本（改名字）',
  `Gennowcost` decimal(10,2) NOT NULL COMMENT '现行总成本',
  `Safetyone` varchar(50) NOT NULL COMMENT '保留字段',
  `Safetytwo` varchar(50) NOT NULL COMMENT '保留字段',
  `Enables` int(11) NOT NULL COMMENT '标识是否删除',
  `Extend0` varchar(200) DEFAULT NULL COMMENT '扩展字段0',
  `Extend1` varchar(200) DEFAULT NULL COMMENT '扩展字段1',
  `Extend2` varchar(200) DEFAULT NULL COMMENT '扩展字段2',
  `Extend3` varchar(200) DEFAULT NULL COMMENT '扩展字段3',
  `Extend4` varchar(200) DEFAULT NULL COMMENT '扩展字段4'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='库存总账表';

/*Data for the table `generalledger` */

insert  into `generalledger`(`Genid`,`Genmaterielid`,`Genstorageno`,`Genstoragename`,`Genexpectstartqty`,`Genstandarcost`,`Genallcost`,`Genexpectstartallcost`,`Gensafetyqty`,`Genavgcost`,`Genqty`,`Gennowavgcost`,`Genstandardcostall`,`Gennowcost`,`Safetyone`,`Safetytwo`,`Enables`,`Extend0`,`Extend1`,`Extend2`,`Extend3`,`Extend4`) values 
(1,0,0,0,0,0.00,0.00,0.00,0,3370.00,5,0.00,0.00,0.00,'','',0,NULL,NULL,NULL,NULL,NULL),
(2,0,0,0,0,0.00,0.00,0.00,0,4190.00,1,0.00,0.00,0.00,'','',0,NULL,NULL,NULL,NULL,NULL),
(3,0,0,0,0,0.00,0.00,0.00,0,990.00,2,0.00,0.00,0.00,'','',0,NULL,NULL,NULL,NULL,NULL),
(4,0,0,0,0,0.00,0.00,0.00,0,540.00,1,0.00,0.00,0.00,'','',0,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `invoicedetails` */

DROP TABLE IF EXISTS `invoicedetails`;

CREATE TABLE `invoicedetails` (
  `storagedetailno` varchar(100) DEFAULT NULL,
  `rowno` int(100) DEFAULT NULL,
  `materielid` varchar(100) DEFAULT NULL,
  `materielname` varchar(100) DEFAULT NULL,
  `types` varchar(100) DEFAULT NULL,
  `units` varchar(100) DEFAULT NULL,
  `amount` int(100) DEFAULT NULL,
  `rebateprice` int(100) DEFAULT NULL,
  `rebate` int(100) DEFAULT NULL,
  `unitprice` int(100) DEFAULT NULL,
  `moneys` int(100) DEFAULT NULL,
  `cess` int(100) DEFAULT NULL,
  `tax` int(100) DEFAULT NULL,
  `taxmoneys` varchar(100) DEFAULT NULL,
  `originno` varchar(100) DEFAULT NULL,
  `present` varchar(100) DEFAULT NULL,
  `Lqty` int(100) DEFAULT NULL,
  `enables` int(100) DEFAULT NULL,
  `safetyone` varchar(100) DEFAULT NULL,
  `safetytwo` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `invoicedetails` */

/*Table structure for table `mainlistofpurchaseinvoices` */

DROP TABLE IF EXISTS `mainlistofpurchaseinvoices`;

CREATE TABLE `mainlistofpurchaseinvoices` (
  `storageid` varchar(50) DEFAULT NULL,
  `citationid` varchar(50) DEFAULT NULL,
  `clientsupply` varchar(50) DEFAULT NULL,
  `storagedate` date DEFAULT NULL,
  `documenttype` varchar(50) DEFAULT NULL,
  `documentint` varchar(50) DEFAULT NULL,
  `taxincluded` int(11) DEFAULT NULL,
  `invoiceint` varchar(50) DEFAULT NULL,
  `checkstatus` varchar(50) DEFAULT NULL,
  `invoicetype` varchar(50) DEFAULT NULL,
  `voucherint` varchar(50) DEFAULT NULL,
  `currency` varchar(50) DEFAULT NULL,
  `CertificateNo` varchar(50) DEFAULT NULL,
  `exchangerate` float DEFAULT NULL,
  `Purchaser` varchar(50) DEFAULT NULL,
  `subordinatedepartments` varchar(50) DEFAULT NULL,
  `attributionofaccounts` varchar(50) DEFAULT NULL,
  `termofpayment` varchar(100) DEFAULT NULL,
  `daysofpaymentterms` int(11) DEFAULT NULL,
  `dateofpayment` date DEFAULT NULL,
  `accountmonth` date DEFAULT NULL,
  `paystrike1` varchar(50) DEFAULT NULL,
  `paystrike2` varchar(50) DEFAULT NULL,
  `paystrike3` varchar(50) DEFAULT NULL,
  `paymoney1` float DEFAULT NULL,
  `paymoney2` float DEFAULT NULL,
  `paymoney3` float DEFAULT NULL,
  `systempersonnel` varchar(50) DEFAULT NULL,
  `reviewpersonne` varchar(50) DEFAULT NULL,
  `subordinateprojects` varchar(50) DEFAULT NULL,
  `enables` int(11) DEFAULT NULL,
  `isaditing` int(11) DEFAULT NULL,
  `safetytone` varchar(50) DEFAULT NULL,
  `safetytwo` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `mainlistofpurchaseinvoices` */

/*Table structure for table `mainlistofpurchaseinvoicesdetatils` */

DROP TABLE IF EXISTS `mainlistofpurchaseinvoicesdetatils`;

CREATE TABLE `mainlistofpurchaseinvoicesdetatils` (
  `invoiceddetailsid` varchar(50) DEFAULT NULL,
  `lineint` int(11) DEFAULT NULL,
  `materialint` varchar(50) DEFAULT NULL,
  `namematerial` varchar(50) DEFAULT NULL,
  `specificationtype` varchar(50) DEFAULT NULL,
  `nameofunit` varchar(50) DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  `unitprice` float DEFAULT NULL,
  `amountofmoney` float DEFAULT NULL,
  `taxrate` float DEFAULT NULL,
  `taxamount` float DEFAULT NULL,
  `taxableamount` float DEFAULT NULL,
  `unenteredquantity` int(11) DEFAULT NULL,
  `purchasingorderint` varchar(50) DEFAULT NULL,
  `notestoentries` varchar(50) DEFAULT NULL,
  `safetytone` varchar(50) DEFAULT NULL,
  `safetyttwo` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `mainlistofpurchaseinvoicesdetatils` */

/*Table structure for table `mainlistofpurchaseinvoicesdetatils2` */

DROP TABLE IF EXISTS `mainlistofpurchaseinvoicesdetatils2`;

CREATE TABLE `mainlistofpurchaseinvoicesdetatils2` (
  `invoicelist` varchar(50) DEFAULT NULL,
  `lineint` int(11) DEFAULT NULL,
  `materialint` varchar(50) DEFAULT NULL,
  `namematerial` varchar(50) DEFAULT NULL,
  `specificationtype` varchar(50) DEFAULT NULL,
  `company` varchar(50) DEFAULT NULL,
  `invoicequantity` int(11) DEFAULT NULL,
  `invoiceunitprice` float DEFAULT NULL,
  `invoiceamount` float DEFAULT NULL,
  `invoicetaxrate` float DEFAULT NULL,
  `invoicetax` float DEFAULT NULL,
  `invoicetaxableamount` float DEFAULT NULL,
  `sinkdifference` float DEFAULT NULL,
  `spread` float DEFAULT NULL,
  `standardcurrency` float DEFAULT NULL,
  `totaldifference` float DEFAULT NULL,
  `sourcelist` varchar(50) DEFAULT NULL,
  `sourceno` varchar(50) DEFAULT NULL,
  `notestoentries` varchar(50) DEFAULT NULL,
  `safetytone` varchar(50) DEFAULT NULL,
  `safetyttwo` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `mainlistofpurchaseinvoicesdetatils2` */

/*Table structure for table `materiel` */

DROP TABLE IF EXISTS `materiel`;

CREATE TABLE `materiel` (
  `Matid` varchar(50) NOT NULL COMMENT '物料编号',
  `Matname` varchar(50) NOT NULL COMMENT '物料名称',
  `Matspec` varchar(50) NOT NULL COMMENT '规格型号',
  `Mattypeid` varchar(20) NOT NULL COMMENT '物料类别（伪外键）',
  `Mattypename` varchar(50) NOT NULL COMMENT '物料类别名称',
  `Matadviceprice` decimal(10,2) NOT NULL COMMENT '建议售价',
  `Matadvicepricea` decimal(10,2) NOT NULL COMMENT '售价A',
  `Matadvicepriceb` decimal(10,2) NOT NULL COMMENT '售价B',
  `Matadvicepricec` decimal(10,2) NOT NULL COMMENT '售价C',
  `Matadvicepriced` decimal(10,2) NOT NULL COMMENT '售价D',
  `Matadvicepricee` decimal(10,2) NOT NULL COMMENT '售价E',
  `Matstandardprice` decimal(10,2) NOT NULL COMMENT '标准进价',
  `Matshape` varchar(50) NOT NULL COMMENT '物料型态',
  `Matifduty` int(11) NOT NULL COMMENT '是否含??',
  `Matdutyrate` decimal(10,2) NOT NULL COMMENT '税率',
  `Matstockaheaddate` int(11) NOT NULL COMMENT '采购提前期',
  `Matmainafford` varchar(50) NOT NULL COMMENT '主供应商',
  `Matmainaffordid` varchar(50) NOT NULL COMMENT '主供应商ID',
  `Matgawpdate` int(11) NOT NULL COMMENT '呆滞起计天数',
  `Matstopdate` date NOT NULL COMMENT '停用日期',
  `Matremark` varchar(2000) NOT NULL COMMENT '备注',
  `Matunit` varchar(50) NOT NULL COMMENT '计量单位',
  `Safetyone` varchar(50) NOT NULL COMMENT '保留字段',
  `Safetytwo` varchar(50) NOT NULL COMMENT '保留字段',
  `Enable` int(11) NOT NULL COMMENT '标识是否删除',
  `Extend0` varchar(200) DEFAULT NULL COMMENT '扩展字段0',
  `Extend1` varchar(200) DEFAULT NULL COMMENT '扩展字段1',
  `Extend2` varchar(200) DEFAULT NULL COMMENT '扩展字段2',
  `Extend3` varchar(200) DEFAULT NULL COMMENT '扩展字段3',
  `Extend4` varchar(200) DEFAULT NULL COMMENT '扩展字段4'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='物料主文件';

/*Data for the table `materiel` */

insert  into `materiel`(`Matid`,`Matname`,`Matspec`,`Mattypeid`,`Mattypename`,`Matadviceprice`,`Matadvicepricea`,`Matadvicepriceb`,`Matadvicepricec`,`Matadvicepriced`,`Matadvicepricee`,`Matstandardprice`,`Matshape`,`Matifduty`,`Matdutyrate`,`Matstockaheaddate`,`Matmainafford`,`Matmainaffordid`,`Matgawpdate`,`Matstopdate`,`Matremark`,`Matunit`,`Safetyone`,`Safetytwo`,`Enable`,`Extend0`,`Extend1`,`Extend2`,`Extend3`,`Extend4`) values 
('C01-W-HP-DC7900-307','HP DC7900CMT- NA307PA#AB2台式机','主机','PCS','采购件',3800.00,3750.00,3600.00,0.00,0.00,0.00,3370.00,'',0,0.00,0,'','',0,'0000-00-00','','','','',0,NULL,NULL,NULL,NULL,NULL),
('C01-W-HP-DC7900-308','HP DC7900CMT- NA308PA#AB2台式机','主机','PCS','采购件',4900.00,4800.00,4700.00,0.00,0.00,0.00,4190.00,'',0,0.00,0,'','',0,'0000-00-00','','','','',0,NULL,NULL,NULL,NULL,NULL),
('C02-W-HP-GS917AA-AB2','HP L1710 (17\"LCD,VGA接口,300nits,800:1,5ms)','显示器','PCS','采购件',1050.00,1040.00,1030.00,0.00,0.00,0.00,990.00,'',0,0.00,0,'','',0,'0000-00-00','','','','',0,NULL,NULL,NULL,NULL,NULL),
('C02-W-HP-PF996AA-AB2','HP V7650 17\" Flat Color Monitor','显示器','PCS','采购件',650.00,640.00,630.00,0.00,0.00,0.00,540.00,'',0,0.00,0,'','',0,'0000-00-00','','','','',0,NULL,NULL,NULL,NULL,NULL),
('C01','主机','','','',0.00,0.00,0.00,0.00,0.00,0.00,0.00,'',0,0.00,0,'','',0,'0000-00-00','','','','',0,NULL,NULL,NULL,NULL,NULL),
('C02','显示器','','','',0.00,0.00,0.00,0.00,0.00,0.00,0.00,'',0,0.00,0,'','',0,'0000-00-00','','','','',0,NULL,NULL,NULL,NULL,NULL),
('X01','塑料耗材','','','',0.00,0.00,0.00,0.00,0.00,0.00,0.00,'',0,0.00,0,'','',0,'0000-00-00','','','','',0,NULL,NULL,NULL,NULL,NULL),
('X02','通用小配件','','','',0.00,0.00,0.00,0.00,0.00,0.00,0.00,'',0,0.00,0,'','',0,'0000-00-00','','','','',0,NULL,NULL,NULL,NULL,NULL),
('Y01','CPU','','','',0.00,0.00,0.00,0.00,0.00,0.00,0.00,'',0,0.00,0,'','',0,'0000-00-00','','','','',0,NULL,NULL,NULL,NULL,NULL),
('Y02','内存','','','',0.00,0.00,0.00,0.00,0.00,0.00,0.00,'',0,0.00,0,'','',0,'0000-00-00','','','','',0,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `materieltype` */

DROP TABLE IF EXISTS `materieltype`;

CREATE TABLE `materieltype` (
  `Matypeid` varchar(50) NOT NULL COMMENT '物料类别编号',
  `Matypename` varchar(50) NOT NULL COMMENT '物料类别名称',
  `Matypeengname` varchar(50) NOT NULL COMMENT '英文名称',
  `Matyperemark` varchar(2000) NOT NULL COMMENT '备注',
  `Safetyone` varchar(50) NOT NULL COMMENT '保留字段',
  `Safetytwo` varchar(50) NOT NULL COMMENT '保留字段',
  `Enables` int(11) NOT NULL COMMENT '标识是否删除',
  `Extend0` varchar(200) DEFAULT NULL COMMENT '扩展字段0',
  `Extend1` varchar(200) DEFAULT NULL COMMENT '扩展字段1',
  `Extend2` varchar(200) DEFAULT NULL COMMENT '?┱棺侄?',
  `Extend3` varchar(200) DEFAULT NULL COMMENT '扩展字段3',
  `Extend4` varchar(200) DEFAULT NULL COMMENT '扩展字段4'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='物料类别';

/*Data for the table `materieltype` */

insert  into `materieltype`(`Matypeid`,`Matypename`,`Matypeengname`,`Matyperemark`,`Safetyone`,`Safetytwo`,`Enables`,`Extend0`,`Extend1`,`Extend2`,`Extend3`,`Extend4`) values 
('B01','主机包装物','包装物','','','',0,NULL,NULL,NULL,NULL,NULL),
('B02','彩显包装物','包装物','','','',0,NULL,NULL,NULL,NULL,NULL),
('B99','其它包装物','包装物','','','',0,NULL,NULL,NULL,NULL,NULL),
('C01','主机','库存商品','','','',0,NULL,NULL,NULL,NULL,NULL),
('C02','显示器','库存商品','','','',0,NULL,NULL,NULL,NULL,NULL),
('X01','塑料耗材','低值易耗品','','','',0,NULL,NULL,NULL,NULL,NULL),
('X02','通用小配件','低值易耗品','','','',0,NULL,NULL,NULL,NULL,NULL),
('Y01','CPU','原材料','','','',0,NULL,NULL,NULL,NULL,NULL),
('Y02','内存','原材料','','','',0,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `minusandadddetail` */

DROP TABLE IF EXISTS `minusandadddetail`;

CREATE TABLE `minusandadddetail` (
  `Minusaddid` int(11) DEFAULT NULL COMMENT '主键ID',
  `Minusdate` date DEFAULT NULL COMMENT '单据日期',
  `Matypeid` varchar(50) DEFAULT NULL COMMENT '物料编号',
  `Matypename` varchar(50) DEFAULT NULL COMMENT '物料名称',
  `Minusadd` int(11) DEFAULT NULL COMMENT '数量（+，-）',
  `Unitprice` int(11) DEFAULT NULL COMMENT '单价',
  `Moneys` double DEFAULT NULL COMMENT '金额',
  `storagedate` date DEFAULT NULL COMMENT '时间',
  `Stoid` varchar(50) DEFAULT NULL COMMENT '仓库ID',
  `Stoname` varchar(50) DEFAULT NULL COMMENT '仓库名称',
  `Origintype` varchar(50) DEFAULT NULL COMMENT '来源单别',
  `Originid` varchar(50) DEFAULT NULL COMMENT '来源单号',
  `Aftermath` int(11) DEFAULT NULL COMMENT '期末结存',
  `enables` int(11) DEFAULT '1' COMMENT '标识是否删除(1不删除，0：删除)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `minusandadddetail` */

/*Table structure for table `movedetails` */

DROP TABLE IF EXISTS `movedetails`;

CREATE TABLE `movedetails` (
  `Mdsno` varchar(55) DEFAULT NULL COMMENT '单号',
  `Mdsmseno` varchar(55) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '单据号码(单号)',
  `mdsmaterieltype` varchar(55) DEFAULT NULL COMMENT '物料编号',
  `mdsmaterielname` varchar(55) DEFAULT NULL COMMENT '物料名称',
  `mdsmaterielspecs` varchar(55) DEFAULT NULL COMMENT '物料规格',
  `mdsmaterielunit` varchar(55) DEFAULT NULL COMMENT '单位',
  `mdsmaterielnum` varchar(55) DEFAULT NULL COMMENT '数量',
  `Mdsavgcost` varchar(55) DEFAULT NULL COMMENT '现行平均成本（出库）',
  `mdscost` varchar(55) DEFAULT NULL COMMENT '总现行平均成本',
  `Mdsremark` varchar(244) DEFAULT NULL COMMENT '备注',
  `Mespreservingone` varchar(55) DEFAULT NULL COMMENT '保留字段1',
  `mespreservingtwo` varchar(55) DEFAULT NULL COMMENT '保留字段2',
  `enables` int(11) DEFAULT NULL COMMENT '标识是否删除'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `movedetails` */

/*Table structure for table `moveprice` */

DROP TABLE IF EXISTS `moveprice`;

CREATE TABLE `moveprice` (
  `movedate` date DEFAULT NULL COMMENT '单据日期',
  `moveorderNo` varchar(50) DEFAULT NULL COMMENT '单据号码',
  `moveadjust` varchar(50) DEFAULT NULL COMMENT '调整方式',
  `movestorageNo` varchar(50) DEFAULT NULL COMMENT '仓库编号',
  `movemake` varchar(50) DEFAULT NULL COMMENT '制单人员',
  `movecheck` varchar(50) DEFAULT NULL COMMENT '复核人员',
  `moveremark` varchar(200) DEFAULT NULL COMMENT '备注',
  `moveAuditingState` int(9) DEFAULT NULL COMMENT '审核状态',
  `safetyone` varchar(50) DEFAULT NULL COMMENT '保留字段',
  `safetytwo` varchar(50) DEFAULT NULL COMMENT '保留字段',
  `enables` int(11) DEFAULT NULL COMMENT '标识是否删除'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `moveprice` */

/*Table structure for table `movepricedetail` */

DROP TABLE IF EXISTS `movepricedetail`;

CREATE TABLE `movepricedetail` (
  `Moveinile` int(9) DEFAULT NULL COMMENT '行号',
  `moveorderNo` varchar(50) DEFAULT NULL COMMENT '单据号码',
  `Movematerielno` varchar(50) DEFAULT NULL COMMENT '物料编号',
  `Movematerielname` varchar(5) DEFAULT NULL COMMENT '物料名称',
  `Movespectype` varchar(50) DEFAULT NULL COMMENT '规格型号',
  `Moveunit` varchar(50) DEFAULT NULL COMMENT '单位',
  `Movestocks` int(29) DEFAULT NULL COMMENT '库存量',
  `moveaveragecost` int(22) DEFAULT NULL COMMENT '现行平均成本',
  `moveprice` int(22) DEFAULT NULL COMMENT '单价（自己填）',
  `movemoveprice` int(22) DEFAULT NULL COMMENT '调价金额',
  `safetyone` varchar(55) DEFAULT NULL COMMENT '保留字段',
  `safetytwo` varchar(55) DEFAULT NULL COMMENT '保留字段',
  `enables` int(22) DEFAULT NULL COMMENT '标识是否删除'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `movepricedetail` */

/*Table structure for table `movestorage` */

DROP TABLE IF EXISTS `movestorage`;

CREATE TABLE `movestorage` (
  `Mseno` varchar(50) DEFAULT NULL COMMENT '单据号码（单号）',
  `msedate` date DEFAULT NULL COMMENT '单据日期',
  `Mseoutstorage` varchar(55) DEFAULT NULL COMMENT '出库仓（仓库编号）',
  `mseinsertstor` varchar(55) DEFAULT NULL COMMENT '出库仓（仓库编号）',
  `mseemployee` varchar(55) DEFAULT NULL COMMENT '制作人'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `movestorage` */

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

/*Table structure for table `permission` */

DROP TABLE IF EXISTS `permission`;

CREATE TABLE `permission` (
  `pid` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `rid` int(11) DEFAULT NULL COMMENT '角色id',
  `fid` int(11) DEFAULT NULL COMMENT '权限id',
  `createdate` date DEFAULT NULL COMMENT '创建时间',
  `createby` varchar(50) DEFAULT NULL COMMENT '创建人',
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

/*Data for the table `permission` */

insert  into `permission`(`pid`,`rid`,`fid`,`createdate`,`createby`) values 
(2,1,4,'2019-09-02','admin'),
(3,1,5,NULL,NULL),
(4,1,6,NULL,NULL),
(5,1,7,NULL,NULL),
(6,2,4,NULL,NULL),
(7,2,5,NULL,NULL),
(8,2,6,NULL,NULL),
(9,2,7,NULL,NULL),
(10,1,164,NULL,NULL),
(11,1,165,NULL,NULL),
(12,1,166,NULL,NULL),
(13,1,167,NULL,NULL);

/*Table structure for table `provideinfo` */

DROP TABLE IF EXISTS `provideinfo`;

CREATE TABLE `provideinfo` (
  `Peoid` int(11) NOT NULL COMMENT '供应商编号',
  `Peoname` varchar(50) NOT NULL COMMENT '供应商全称',
  `Peoshortname` varchar(50) NOT NULL COMMENT '供应商简称',
  `Peoascription` varchar(50) NOT NULL COMMENT '帐款归属',
  `Peopeeid` varchar(50) NOT NULL COMMENT '供应商类型表id',
  `Peopeename` varchar(50) NOT NULL COMMENT '供应商类型表名称（新增）',
  `Peoarea` varchar(50) NOT NULL COMMENT '地区',
  `Peoprincipal` varchar(50) NOT NULL COMMENT '负责人',
  `Peolinkman` varchar(50) NOT NULL COMMENT '联系人',
  `Peophoneone` varchar(50) NOT NULL COMMENT '联系电话一',
  `Peophonetwo` varchar(50) NOT NULL COMMENT '联系电话二',
  `Peomobilephone` varchar(50) NOT NULL COMMENT '移动电话',
  `Peobankaccounts` varchar(50) NOT NULL COMMENT '银行帐号',
  `Peoopenbank` varchar(50) NOT NULL COMMENT '开户银行',
  `Peoempid` varchar(50) NOT NULL COMMENT '（业务人员编号）',
  `Peoempname` varchar(50) NOT NULL COMMENT '（业务人员名称）',
  `Peocalling` varchar(50) NOT NULL COMMENT '行业别',
  `Peoemail` varchar(50) NOT NULL COMMENT '电子邮件',
  `Peoweb` varchar(50) NOT NULL COMMENT '网址',
  `Peofaxes` varchar(50) NOT NULL COMMENT '传真号码',
  `Peocreatedate` varchar(50) NOT NULL COMMENT '建立日期',
  `Peocreditclass` varchar(50) NOT NULL COMMENT '信用等级',
  `Peozhangkuanedu` decimal(10,2) NOT NULL COMMENT '帐款额度',
  `Peoremainedu` decimal(10,2) NOT NULL COMMENT '剩余额度',
  `Peomonthreckoning` decimal(10,2) NOT NULL COMMENT '每月结帐日',
  `Peoqcprepaymoney` decimal(10,2) NOT NULL COMMENT '期初预付款',
  `Peoqcdealmoney` decimal(10,2) NOT NULL COMMENT '期初应付款',
  `Peoqmprepaymoney` decimal(10,2) NOT NULL COMMENT '期末预付款',
  `Peoqmdealmoney` decimal(10,2) NOT NULL COMMENT '期末应付款',
  `Peoremark` varchar(200) NOT NULL COMMENT '备注',
  `Peotrash` int(11) NOT NULL COMMENT '是否废码',
  `Safetyone` varchar(50) NOT NULL COMMENT '保留字段',
  `Safetytwo` varchar(50) NOT NULL COMMENT '保留字段',
  `Enables` int(11) NOT NULL COMMENT '标识是否删除',
  `Extend0` varchar(200) DEFAULT NULL COMMENT '扩展字段0',
  `Extend1` varchar(200) DEFAULT NULL COMMENT '扩展字段1',
  `Extend2` varchar(200) DEFAULT NULL COMMENT '扩展字段2',
  `Extend3` varchar(200) DEFAULT NULL COMMENT '扩展字段3',
  `Extend4` varchar(200) DEFAULT NULL COMMENT '扩展字段4',
  PRIMARY KEY (`Peoid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='供应商主文件表';

/*Data for the table `provideinfo` */

/*Table structure for table `providetype` */

DROP TABLE IF EXISTS `providetype`;

CREATE TABLE `providetype` (
  `Peeid` int(11) NOT NULL COMMENT '类别编号',
  `Peename` varchar(50) NOT NULL COMMENT '类别名称',
  `Peeename` varchar(50) NOT NULL COMMENT '类别英文名称',
  `Peeremark` varchar(200) DEFAULT NULL COMMENT '备注',
  `Enables` int(11) NOT NULL COMMENT '标识是否删除',
  `Extend0` varchar(200) DEFAULT NULL COMMENT '扩展字段0',
  `Extend1` varchar(200) DEFAULT NULL COMMENT '扩展字段1',
  `Extend2` varchar(200) DEFAULT NULL COMMENT '扩展字段2',
  `Extend3` varchar(200) DEFAULT NULL COMMENT '扩展字段3',
  `Extend4` varchar(200) DEFAULT NULL COMMENT '扩展字段4',
  PRIMARY KEY (`Peeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='供应商类型表';

/*Data for the table `providetype` */

insert  into `providetype`(`Peeid`,`Peename`,`Peeename`,`Peeremark`,`Enables`,`Extend0`,`Extend1`,`Extend2`,`Extend3`,`Extend4`) values 
(1,'主要供应商','',NULL,0,NULL,NULL,NULL,NULL,NULL),
(2,'一般供应商','',NULL,0,NULL,NULL,NULL,NULL,NULL),
(3,'委外厂','',NULL,0,NULL,NULL,NULL,NULL,NULL),
(4,'其它供应商','',NULL,0,NULL,NULL,NULL,NULL,NULL);

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

/*Table structure for table `recededetails` */

DROP TABLE IF EXISTS `recededetails`;

CREATE TABLE `recededetails` (
  `Recid` varchar(20) NOT NULL COMMENT '采购退货单号(stockrecede外键)',
  `Detsequ` int(11) NOT NULL COMMENT '序号(联合主键)',
  `Matid` varchar(50) NOT NULL COMMENT '物料编号(非外键)',
  `Matname` varchar(50) NOT NULL COMMENT '物料名称',
  `Matspec` varchar(20) NOT NULL COMMENT '规格型号',
  `Detnum` int(11) NOT NULL COMMENT '数量',
  `Detagioprice` decimal(10,2) NOT NULL COMMENT '折扣前单价',
  `Detdiscount` int(11) NOT NULL COMMENT '折数',
  `Detprice` decimal(19,4) NOT NULL COMMENT '单价',
  `Detamtmoney` decimal(19,4) NOT NULL COMMENT '金额',
  `Depcess` int(11) NOT NULL COMMENT '税率',
  `Depcessmoney` decimal(10,2) NOT NULL COMMENT '税额',
  `Deplargess` int(11) NOT NULL COMMENT '是否赠品',
  `Sodorigintype` varchar(20) NOT NULL COMMENT '来源单别',
  `Sodorigin` varchar(20) NOT NULL COMMENT '来源单号',
  `Enables` int(11) NOT NULL COMMENT '标识是否删除',
  `Safetyone` varchar(50) NOT NULL COMMENT '保留字段',
  `Safetytwo` varchar(50) NOT NULL COMMENT '保留字段',
  `Extend0` varchar(200) DEFAULT NULL COMMENT '扩展字段0',
  `Extend1` varchar(200) DEFAULT NULL COMMENT '扩展字段1',
  `Extend2` varchar(200) DEFAULT NULL COMMENT '扩展字段2',
  `Extend3` varchar(200) DEFAULT NULL COMMENT '扩展字段3',
  `Extend4` varchar(200) DEFAULT NULL COMMENT '扩展字段4',
  PRIMARY KEY (`Recid`,`Detsequ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='采购退货明细表';

/*Data for the table `recededetails` */

/*Table structure for table `role` */

DROP TABLE IF EXISTS `role`;

CREATE TABLE `role` (
  `rid` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `rcode` varchar(50) DEFAULT NULL COMMENT '角色编码',
  `rname` varchar(50) DEFAULT NULL COMMENT '角色名称',
  `rstatus` int(11) DEFAULT '1' COMMENT '角色状态',
  `createdate` date DEFAULT NULL COMMENT '创建时间',
  `createby` varchar(50) DEFAULT NULL COMMENT '创建人',
  PRIMARY KEY (`rid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `role` */

insert  into `role`(`rid`,`rcode`,`rname`,`rstatus`,`createdate`,`createby`) values 
(1,'1001','系统管理员',1,'2019-08-31','admin'),
(2,'1002','部门经理',1,'2019-09-02','admin');

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

/*Table structure for table `stockapply` */

DROP TABLE IF EXISTS `stockapply`;

CREATE TABLE `stockapply` (
  `Appid` varchar(20) NOT NULL COMMENT '请购单编号',
  `Appdate` date NOT NULL COMMENT '请购单日期',
  `Apptype` varchar(50) NOT NULL COMMENT '请购采购类型',
  `Appcircs` int(11) NOT NULL COMMENT '单况：已结案/未结案/无效',
  `Appperson` varchar(50) NOT NULL COMMENT '请购人员',
  `Apppersonid` varchar(50) NOT NULL COMMENT '伪外键：请购人员id',
  `Appdept` varchar(50) NOT NULL COMMENT '请购部门',
  `Appdeptid` varchar(50) NOT NULL COMMENT '伪外键：请购部门id',
  `Appmaker` varchar(50) NOT NULL COMMENT '制单人员',
  `Appauditingperson` varchar(50) NOT NULL COMMENT '复核人员',
  `Appauditing` varchar(50) NOT NULL COMMENT '审核状态：未审核/已审核/无效',
  `Stockapplyname` varchar(50) NOT NULL COMMENT '保存（“采购请购”）',
  `Enables` int(11) NOT NULL COMMENT '标识是否删除',
  `Safetyone` varchar(50) NOT NULL COMMENT '保留字段 保存（“采购请购”）',
  `Safetytwo` varchar(50) NOT NULL COMMENT '保留字段',
  `Extend0` varchar(200) DEFAULT NULL COMMENT '扩展字段0',
  `Extend1` varchar(200) DEFAULT NULL COMMENT '扩展字段1',
  `Extend2` varchar(200) DEFAULT NULL COMMENT '扩展字段2',
  `Extend3` varchar(200) DEFAULT NULL COMMENT '扩展字段3',
  `Extend4` varchar(200) DEFAULT NULL COMMENT '扩展字段4',
  PRIMARY KEY (`Appid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='采购请购主表';

/*Data for the table `stockapply` */

/*Table structure for table `stockapplydetails` */

DROP TABLE IF EXISTS `stockapplydetails`;

CREATE TABLE `stockapplydetails` (
  `Appid` varchar(20) NOT NULL COMMENT '请购单编号',
  `Apdrows` int(11) NOT NULL COMMENT '行号',
  `Apdmateridlid` varchar(50) NOT NULL COMMENT '物料编号(伪外：物料主文件)',
  `Apdmateridlname` varchar(50) NOT NULL COMMENT '物料名称',
  `Apdmodel` varchar(50) NOT NULL COMMENT '规格型号',
  `Apdunit` varchar(50) NOT NULL COMMENT '单位名称',
  `Apdnum` int(11) NOT NULL COMMENT '数量',
  `Apdstandardprice` decimal(10,2) NOT NULL COMMENT '标准进价',
  `Apdstandardmoney` decimal(10,2) NOT NULL COMMENT '标准进价金额',
  `Apdprice` decimal(10,2) NOT NULL COMMENT '单价',
  `Apdintomoney` decimal(10,2) NOT NULL COMMENT '进价金额',
  `Apddemanddate` date NOT NULL COMMENT '需求日期',
  `Apdstockdate` date NOT NULL COMMENT '建议采购日期',
  `Apdnotnum` int(11) NOT NULL COMMENT '未采购数量',
  `Apdoriginid` varchar(50) NOT NULL COMMENT '来源单别',
  `Apdorigintype` varchar(20) NOT NULL COMMENT '来源单号',
  `Apdremark` varchar(2000) NOT NULL COMMENT '备注',
  `Enables` int(11) NOT NULL COMMENT '标识是否删除',
  `Safetyone` varchar(50) NOT NULL COMMENT '保留字段',
  `Safetytwo` varchar(50) NOT NULL COMMENT '保留字段',
  `Extend0` varchar(200) DEFAULT NULL COMMENT '扩展字段0',
  `Extend1` varchar(200) DEFAULT NULL COMMENT '扩展字段1',
  `Extend2` varchar(200) DEFAULT NULL COMMENT '扩展字段2',
  `Extend3` varchar(200) DEFAULT NULL COMMENT '扩展字段3',
  `Extend4` varchar(200) DEFAULT NULL COMMENT '扩展字段4',
  PRIMARY KEY (`Appid`,`Apdrows`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='采购请购明细表';

/*Data for the table `stockapplydetails` */

/*Table structure for table `stockapplytype` */

DROP TABLE IF EXISTS `stockapplytype`;

CREATE TABLE `stockapplytype` (
  `Aptid` varchar(20) NOT NULL COMMENT '类型编号',
  `Aptname` varchar(50) NOT NULL COMMENT '类型名称',
  `Aptename` varchar(50) NOT NULL COMMENT '英文名称',
  `Aptremark` varchar(2000) NOT NULL COMMENT '备注',
  `Enable` int(11) NOT NULL COMMENT '标识是否删除',
  `Extend0` varchar(200) DEFAULT NULL COMMENT '扩展字段0',
  `Extend1` varchar(200) DEFAULT NULL COMMENT '扩展字段1',
  `Extend2` varchar(200) DEFAULT NULL COMMENT '扩展字段2',
  `Extend3` varchar(200) DEFAULT NULL COMMENT '扩展字段3',
  `Extend4` varchar(200) DEFAULT NULL COMMENT '扩展字段4',
  PRIMARY KEY (`Aptid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='采购请购类型表';

/*Data for the table `stockapplytype` */

/*Table structure for table `stockinquire` */

DROP TABLE IF EXISTS `stockinquire`;

CREATE TABLE `stockinquire` (
  `Stoid` varchar(20) NOT NULL COMMENT '询价单编号',
  `Stopname` varchar(50) NOT NULL COMMENT '供应商',
  `Stopid` varchar(50) NOT NULL COMMENT '伪外键(供应商主文件)',
  `Stopaddress` varchar(100) NOT NULL COMMENT '供应商地址',
  `Sotdate` date NOT NULL COMMENT '单据日期',
  `Stoavdate` date NOT NULL COMMENT '有效日期',
  `Stoistax` varchar(50) NOT NULL COMMENT '是否含税(含税/未含税)',
  `Stodaddress` varchar(100) NOT NULL COMMENT '送货地址',
  `Stomakeperson` varchar(50) NOT NULL COMMENT '制单人员',
  `Stoauditingperson` varchar(50) NOT NULL COMMENT '复核人员',
  `Stostockperson` varchar(50) NOT NULL COMMENT '采购人员',
  `Stopersonid` varchar(50) NOT NULL COMMENT '伪外键(请购人员外键)',
  `Stodept` varchar(50) NOT NULL COMMENT '所属部门',
  `Stodeptid` varchar(50) NOT NULL COMMENT '伪外键(所属部门外键)',
  `Stoauditing` varchar(50) NOT NULL COMMENT '审核状态：未审核/已审核/无效',
  `Stockinquirename` varchar(50) NOT NULL COMMENT '保存（“采购询价单”）',
  `Enables` int(11) NOT NULL COMMENT '标识是否删除',
  `Safetyone` varchar(50) NOT NULL COMMENT '保留字段',
  `Safetytwo` varchar(50) NOT NULL COMMENT '保留字段',
  `Extend0` varchar(200) DEFAULT NULL COMMENT '扩展字段0',
  `Extend1` varchar(200) DEFAULT NULL COMMENT '扩展字段1',
  `Extend2` varchar(200) DEFAULT NULL COMMENT '扩展字段2',
  `Extend3` varchar(200) DEFAULT NULL COMMENT '扩展字段3',
  `Extend4` varchar(200) DEFAULT NULL COMMENT '扩展字段4',
  PRIMARY KEY (`Stoid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='采购询价主表';

/*Data for the table `stockinquire` */

/*Table structure for table `stockinquiredetails` */

DROP TABLE IF EXISTS `stockinquiredetails`;

CREATE TABLE `stockinquiredetails` (
  `Stoid` varchar(20) NOT NULL COMMENT '询价单编号',
  `Sdarows` int(11) NOT NULL COMMENT '行号',
  `Sdamaterielid` varchar(50) NOT NULL COMMENT '物料编号',
  `Sdamateridlname` varchar(50) NOT NULL COMMENT '物料名称',
  `Sdamodel` varchar(50) NOT NULL COMMENT '规格型号',
  `Sdaunit` varchar(50) NOT NULL COMMENT '单位名称',
  `Sdanum` int(11) NOT NULL COMMENT '数量',
  `Sdaagioes` decimal(10,2) NOT NULL COMMENT '折前单价',
  `Sdaagiocess` int(11) NOT NULL COMMENT '折数(%)',
  `Sdaprice` decimal(10,2) NOT NULL COMMENT '单价',
  `Sdamoney` decimal(10,2) NOT NULL COMMENT '金额',
  `Sdacess` int(11) NOT NULL COMMENT '税率(%)',
  `Sdataxmoney` decimal(10,2) NOT NULL COMMENT '税额',
  `Sdataxmoneys` decimal(10,2) NOT NULL COMMENT '含税金额',
  `Sdaislargess` int(11) NOT NULL COMMENT '赠品：是/否',
  `Sdaoriginid` varchar(20) NOT NULL COMMENT '来源单号',
  `Sdaorigintype` varchar(50) NOT NULL COMMENT '来源单别',
  `Sdaremark` varchar(2000) NOT NULL COMMENT '备注',
  `Enables` int(11) NOT NULL COMMENT '标识是否删除',
  `Safetyone` varchar(50) NOT NULL COMMENT '保留字段',
  `Safetytwo` varchar(50) NOT NULL COMMENT '保留字段',
  `Extend0` varchar(200) DEFAULT NULL COMMENT '扩展字段0',
  `Extend1` varchar(200) DEFAULT NULL COMMENT '扩展字段1',
  `Extend2` varchar(200) DEFAULT NULL COMMENT '扩展字段2',
  `Extend3` varchar(200) DEFAULT NULL COMMENT '扩展字段3',
  `Extend4` varchar(200) DEFAULT NULL COMMENT '扩展字段4',
  PRIMARY KEY (`Stoid`,`Sdarows`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='采购询价明细表';

/*Data for the table `stockinquiredetails` */

/*Table structure for table `stockinvoice` */

DROP TABLE IF EXISTS `stockinvoice`;

CREATE TABLE `stockinvoice` (
  `sysid` varchar(100) DEFAULT NULL,
  `FundbillNo` varchar(100) DEFAULT NULL,
  `billdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `custflag` longtext,
  `peoid` varchar(100) DEFAULT NULL,
  `purveyname` varchar(100) DEFAULT NULL,
  `billtype` varchar(100) DEFAULT NULL,
  `Invoice` varchar(100) DEFAULT NULL,
  `Affirmstate` varchar(100) DEFAULT NULL,
  `invoiceid` varchar(100) DEFAULT NULL,
  `Voucherno` varchar(100) DEFAULT NULL,
  `Currid` varchar(100) DEFAULT NULL,
  `cvoucherNo` varchar(100) DEFAULT NULL,
  `Exchrate` varchar(100) DEFAULT NULL,
  `Total` varchar(100) DEFAULT NULL,
  `tax` varchar(100) DEFAULT NULL,
  `cashpay` varchar(100) DEFAULT NULL,
  `Visapay` varchar(100) DEFAULT NULL,
  `offset` varchar(100) DEFAULT NULL,
  `Discount` varchar(100) DEFAULT NULL,
  `Localtotal` varchar(100) DEFAULT NULL,
  `localtax` varchar(100) DEFAULT NULL,
  `Localcashpay` varchar(100) DEFAULT NULL,
  `localVisapay` varchar(100) DEFAULT NULL,
  `localoffset` varchar(100) DEFAULT NULL,
  `Prepayday` varchar(100) DEFAULT NULL,
  `dueto` varchar(100) DEFAULT NULL,
  `Saleman` varchar(100) DEFAULT NULL,
  `Mark` varchar(100) DEFAULT NULL,
  `permitter` varchar(100) DEFAULT NULL,
  `Project` varchar(100) DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL,
  `safetyone` varchar(100) DEFAULT NULL,
  `safetytwo` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `stockinvoice` */

/*Table structure for table `stockorder` */

DROP TABLE IF EXISTS `stockorder`;

CREATE TABLE `stockorder` (
  `Stoid` varchar(20) NOT NULL COMMENT '单据号',
  `Stodate` date NOT NULL COMMENT '日期',
  `Stopeoname` varchar(50) NOT NULL COMMENT '供货商',
  `Stopeoid` varchar(50) NOT NULL COMMENT '供货商编号',
  `Stopeoadress` varchar(50) NOT NULL COMMENT '供货商地址',
  `Stoistax` varchar(20) NOT NULL COMMENT '单价是否含税：1-含税，2-未税',
  `Stostate` int(11) NOT NULL COMMENT '单况：1-未结案，2-已结案，3-无效',
  `Stoadress` varchar(50) NOT NULL COMMENT '送货地址',
  `Stoempstock` varchar(50) NOT NULL COMMENT '采购人员',
  `Stopersonid` varchar(50) NOT NULL COMMENT '伪外键:采购人员id',
  `Stodept` varchar(50) NOT NULL COMMENT '采购部门',
  `Stodeptid` varchar(50) NOT NULL COMMENT '伪外键:部门id',
  `Stoempname` varchar(50) NOT NULL COMMENT '制单人员',
  `Stoempcheck` varchar(50) NOT NULL COMMENT '复核人员',
  `Stomark` varchar(2000) NOT NULL COMMENT '备注',
  `Checkstate` int(11) NOT NULL COMMENT '审核状态',
  `Stockordername` varchar(50) NOT NULL COMMENT '保存（“采购订单”）',
  `Enables` int(11) NOT NULL COMMENT '标识是否删除',
  `Safetyone` varchar(50) NOT NULL COMMENT '保留字段',
  `Safetytwo` varchar(50) NOT NULL COMMENT '保留字段',
  `Extend0` varchar(200) DEFAULT NULL COMMENT '扩展字段0',
  `Extend1` varchar(200) DEFAULT NULL COMMENT '扩展字段1',
  `Extend2` varchar(200) DEFAULT NULL COMMENT '扩展字段2',
  `Extend3` varchar(200) DEFAULT NULL COMMENT '扩展字段3',
  `Extend4` varchar(200) DEFAULT NULL COMMENT '扩展字段4'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='采购订单主表';

/*Data for the table `stockorder` */

/*Table structure for table `stockorderdetails` */

DROP TABLE IF EXISTS `stockorderdetails`;

CREATE TABLE `stockorderdetails` (
  `Sodid` varchar(20) NOT NULL COMMENT '单据号',
  `Sodlineid` int(11) NOT NULL COMMENT '栏号',
  `Sodmaterielid` varchar(50) NOT NULL COMMENT '物料编号',
  `Sodmatid` varchar(20) NOT NULL COMMENT '(物料名称)',
  `Sodspec` varchar(50) NOT NULL COMMENT '(规格型号)',
  `Sodamount` int(11) NOT NULL COMMENT '数量',
  `Sodpreprice` decimal(10,2) NOT NULL COMMENT '折扣前单价',
  `Sodagio` int(11) NOT NULL COMMENT '折数（%）',
  `Sodprice` decimal(10,2) NOT NULL COMMENT '单价',
  `Sodsum` decimal(10,2) NOT NULL COMMENT '金额',
  `Sodcess` int(11) NOT NULL COMMENT '税率（%）',
  `Sodsumcess` decimal(10,2) NOT NULL COMMENT '(税额)',
  `Sodsumprice` decimal(10,2) NOT NULL COMMENT '(含税金额）',
  `Sodpreincomestorage` date NOT NULL COMMENT '预入库日',
  `Sodpresent` varchar(4) NOT NULL COMMENT '是否赠品',
  `Sodorigintype` varchar(20) NOT NULL COMMENT '(来源单别)',
  `Sodorigin` varchar(20) NOT NULL COMMENT '(来源单号)',
  `Enables` int(11) NOT NULL COMMENT '标识是否删除',
  `Safetyone` varchar(50) NOT NULL COMMENT '保留字段',
  `Safetytwo` varchar(50) NOT NULL COMMENT '保留字段',
  `Extend0` varchar(200) DEFAULT NULL COMMENT '扩展字段0',
  `Extend1` varchar(200) DEFAULT NULL COMMENT '扩展字段1',
  `Extend2` varchar(200) DEFAULT NULL COMMENT '扩展字段2',
  `Extend3` varchar(200) DEFAULT NULL COMMENT '扩展字段3',
  `Extend4` varchar(200) DEFAULT NULL COMMENT '扩展字段4'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='采购订单明细表';

/*Data for the table `stockorderdetails` */

/*Table structure for table `stockrecede` */

DROP TABLE IF EXISTS `stockrecede`;

CREATE TABLE `stockrecede` (
  `Recid` varchar(20) NOT NULL COMMENT '采购退货单号',
  `Recdate` date NOT NULL COMMENT '单据日期',
  `Peoid` varchar(50) NOT NULL COMMENT '供应商编号',
  `Purveyname` varchar(50) NOT NULL COMMENT '供货商名称',
  `Peoaddress` varchar(50) NOT NULL COMMENT '供应商地址',
  `Stoid` varchar(20) NOT NULL COMMENT '仓库编号',
  `Depotname` varchar(20) NOT NULL COMMENT '仓库名称',
  `Containtax` int(11) NOT NULL COMMENT '单价是否含税',
  `Anewstorage` int(11) NOT NULL COMMENT '是否重新入库',
  `Stoperson` varchar(50) NOT NULL COMMENT '采购人员姓名',
  `Stopersonid` varchar(50) NOT NULL COMMENT '采购人员ID',
  `Stodept` varchar(50) NOT NULL COMMENT '请购部门',
  `Stodeptid` varchar(50) NOT NULL COMMENT '部门编号',
  `Makeperson` varchar(50) NOT NULL COMMENT '制单人员',
  `Auditingperson` varchar(50) NOT NULL COMMENT '复核人员',
  `Recremark` varchar(2000) NOT NULL COMMENT '备注',
  `Estate` varchar(50) NOT NULL COMMENT '单据状态( 是否已经审核)',
  `Stockrecedename` varchar(50) NOT NULL COMMENT '保存（“采购退货单”）',
  `Enables` int(11) NOT NULL COMMENT '标识是否删除',
  `Safetyone` varchar(50) NOT NULL COMMENT '保留字段',
  `Safetytwo` varchar(50) NOT NULL COMMENT '保留字段',
  `Extend0` varchar(200) DEFAULT NULL COMMENT '扩展字段0',
  `Extend1` varchar(200) DEFAULT NULL COMMENT '扩展字段1',
  `Extend2` varchar(200) DEFAULT NULL COMMENT '扩展字段2',
  `Extend3` varchar(200) DEFAULT NULL COMMENT '扩展字段3',
  `Extend4` varchar(200) DEFAULT NULL COMMENT '扩展字段4',
  PRIMARY KEY (`Recid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='采购退货主表';

/*Data for the table `stockrecede` */

/*Table structure for table `stockstoragedetails` */

DROP TABLE IF EXISTS `stockstoragedetails`;

CREATE TABLE `stockstoragedetails` (
  `Storagedetailno` varchar(20) NOT NULL COMMENT '引用采购入库单单号',
  `Rowno` int(11) NOT NULL COMMENT '行号',
  `Materielid` varchar(50) NOT NULL COMMENT '引用物料文件ID',
  `Materielname` varchar(50) NOT NULL COMMENT '物料名称',
  `Types` varchar(20) DEFAULT NULL COMMENT '规格型号',
  `Units` varchar(20) NOT NULL COMMENT '单位',
  `Amount` int(11) NOT NULL COMMENT '数量',
  `Rebateprice` decimal(10,2) NOT NULL COMMENT '折扣前单价',
  `Rebate` decimal(10,2) NOT NULL COMMENT '折扣',
  `Unitprice` decimal(10,2) NOT NULL COMMENT '单价',
  `Moneys` decimal(10,2) NOT NULL COMMENT '金额',
  `Cess` decimal(9,0) NOT NULL COMMENT '税率',
  `Tax` decimal(10,2) NOT NULL COMMENT '税额',
  `Taxmoneys` decimal(10,2) NOT NULL COMMENT '含税金额',
  `Origintype` varchar(20) DEFAULT NULL COMMENT '来源单别',
  `Originno` varchar(20) DEFAULT NULL COMMENT '来源单号',
  `Present` varchar(20) NOT NULL COMMENT '是否赠品',
  `Apportionmoney` decimal(10,2) NOT NULL COMMENT '分摊费用',
  `Enables` int(11) NOT NULL COMMENT '标识是否删除',
  `Safetyone` varchar(50) NOT NULL COMMENT '保留字段',
  `Safetytwo` varchar(50) NOT NULL COMMENT '保留字段',
  `Extend0` varchar(200) DEFAULT NULL COMMENT '扩展字段0',
  `Extend1` varchar(200) DEFAULT NULL COMMENT '扩展字段1',
  `Extend2` varchar(200) DEFAULT NULL COMMENT '扩展字段2',
  `Extend3` varchar(200) DEFAULT NULL COMMENT '扩展字段3',
  `Extend4` varchar(200) DEFAULT NULL COMMENT '扩展字段4',
  PRIMARY KEY (`Storagedetailno`,`Rowno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='采购入库明细';

/*Data for the table `stockstoragedetails` */

/*Table structure for table `stockstoragetable` */

DROP TABLE IF EXISTS `stockstoragetable`;

CREATE TABLE `stockstoragetable` (
  `Stockstorageno` varchar(20) NOT NULL COMMENT '单号（自动生成）',
  `Storagedate` date NOT NULL COMMENT '单据日期',
  `Purveyid` varchar(50) NOT NULL COMMENT '供货商ID',
  `Purveyname` varchar(50) NOT NULL COMMENT '供货商名称',
  `Purveyaddress` varchar(50) DEFAULT NULL COMMENT '供货商地址',
  `Depotid` varchar(50) NOT NULL COMMENT '仓库ID',
  `Depotname` varchar(50) NOT NULL COMMENT '仓库名称',
  `Pricerevenue` varchar(20) NOT NULL COMMENT '单价是否含税',
  `Stoperson` varchar(50) NOT NULL COMMENT '采购人员',
  `Stodept` varchar(50) NOT NULL COMMENT '采购人员所属部门名称',
  `Stodeptid` varchar(50) NOT NULL COMMENT '部门ID',
  `Audituserid` varchar(50) DEFAULT NULL COMMENT '审核人员ID',
  `Repeatuserid` varchar(50) DEFAULT NULL COMMENT '复核人员ID',
  `Remark` varchar(2000) DEFAULT NULL COMMENT '备注',
  `Estate` int(11) NOT NULL COMMENT '单据状态（是否以审核）',
  `Stockstoragetablename` varchar(50) DEFAULT NULL COMMENT '保存（“采购入库单”）',
  `Enables` int(11) NOT NULL COMMENT '标识是否删除',
  `Safetyone` varchar(50) NOT NULL COMMENT '保留字段',
  `Safetytwo` varchar(50) NOT NULL COMMENT '保留字段',
  `Extend0` varchar(200) DEFAULT NULL COMMENT '扩展字段0',
  `Extend1` varchar(200) DEFAULT NULL COMMENT '扩展字段1',
  `Extend2` varchar(200) DEFAULT NULL COMMENT '扩展字段2',
  `Extend3` varchar(200) DEFAULT NULL COMMENT '扩展字段3',
  `Extend4` varchar(200) DEFAULT NULL COMMENT '扩展字段4',
  PRIMARY KEY (`Stockstorageno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='采购入库主表';

/*Data for the table `stockstoragetable` */

/*Table structure for table `storage` */

DROP TABLE IF EXISTS `storage`;

CREATE TABLE `storage` (
  `Stoid` varchar(50) NOT NULL COMMENT '仓库编号',
  `Stoname` varchar(50) NOT NULL COMMENT '仓库名称',
  `Stosimplename` varchar(50) NOT NULL COMMENT '仓库简称',
  `Stoconnectper` varchar(50) NOT NULL COMMENT '联系人',
  `Stoempid` varchar(50) NOT NULL COMMENT '联系人ID(新增)',
  `Stophone` varchar(50) NOT NULL COMMENT '联系电话',
  `Stoaddress` varchar(50) NOT NULL COMMENT '仓库地址',
  `Storemark` varchar(2000) NOT NULL COMMENT '备注',
  `Safetyone` varchar(50) NOT NULL COMMENT '保留字段',
  `Safetytwo` varchar(50) NOT NULL COMMENT '保留字段',
  `Enables` int(11) NOT NULL COMMENT '标识是否删除',
  `Extend0` varchar(200) DEFAULT NULL COMMENT '扩展字段0',
  `Extend1` varchar(200) DEFAULT NULL COMMENT '扩展字段1',
  `Extend2` varchar(200) DEFAULT NULL COMMENT '扩展字段2',
  `Extend3` varchar(200) DEFAULT NULL COMMENT '扩展字段3',
  `Extend4` varchar(200) DEFAULT NULL COMMENT '扩展字段4'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='仓库表';

/*Data for the table `storage` */

insert  into `storage`(`Stoid`,`Stoname`,`Stosimplename`,`Stoconnectper`,`Stoempid`,`Stophone`,`Stoaddress`,`Storemark`,`Safetyone`,`Safetytwo`,`Enables`,`Extend0`,`Extend1`,`Extend2`,`Extend3`,`Extend4`) values 
('01','原料仓库','','','王保管','','','','','',0,NULL,NULL,NULL,NULL,NULL),
('02','成品仓','','','胡保管','','','','','',0,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `account` varchar(50) DEFAULT NULL COMMENT '账号',
  `Userpwd` varchar(50) DEFAULT NULL COMMENT '密码',
  `Deptid` varchar(30) DEFAULT NULL COMMENT '部门id',
  `deptname` varchar(50) DEFAULT NULL COMMENT '部门名称',
  `uimg` varchar(1000) DEFAULT NULL COMMENT '员工头像',
  `status` int(11) DEFAULT '1' COMMENT '员工状态',
  `empid` varchar(50) DEFAULT NULL COMMENT '人员编号',
  `empname` varchar(50) DEFAULT NULL COMMENT '人员姓名',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`uid`,`account`,`Userpwd`,`Deptid`,`deptname`,`uimg`,`status`,`empid`,`empname`) values 
(1,'admin','202cb962ac59075b964b07152d234b70','01','财务部',NULL,1,'1001','王总');

/*Table structure for table `userandrole` */

DROP TABLE IF EXISTS `userandrole`;

CREATE TABLE `userandrole` (
  `Urid` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `uId` int(11) DEFAULT NULL COMMENT '用户编号',
  `rid` int(11) DEFAULT NULL COMMENT '角色编号',
  `Createby` varchar(50) DEFAULT NULL COMMENT '创建人',
  `Createdate` date DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`Urid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `userandrole` */

insert  into `userandrole`(`Urid`,`uId`,`rid`,`Createby`,`Createdate`) values 
(1,1,1,'admin','2019-08-31'),
(2,1,2,'admin','2019-09-02');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
