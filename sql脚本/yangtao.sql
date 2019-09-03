/*==============================================================*/
/* Database name:  erpy2domedababase                            */
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2019-08-23 08:08:21                          */
/*==============================================================*/


drop database if exists erpy2domedababase;

/*==============================================================*/
/* Database: erpy2domedababase                                  */
/*==============================================================*/
create database erpy2domedababase;

use erpy2domedababase;

/*==============================================================*/
/* Table: client                                                */
/*==============================================================*/
create table client
(
   cliid                varbinary(0),
   clitypeid            varbinary(0),
   cliname              varbinary(0),
   clishortname         varbinary(0),
   cliaddress           varbinary(0),
   cliarea              varbinary(0),
   cliename             varbinary(0),
   cliprincipal         varbinary(0),
   clilinkman           varbinary(0),
   cliphoneone          varbinary(0),
   cliphonetwo          varbinary(0),
   cliphonethree        varbinary(0),
   clibankaccounts      varbinary(0),
   cliopenbank          varbinary(0),
   empid                varbinary(0),
   climobilephone       varbinary(0),
   cliemail             varbinary(0),
   cliweb               varbinary(0),
   clifaxes             varbinary(0),
   clioldoutdate        date,
   clioldintodate       date,
   clinewoutdate        date,
   clinewintodate       date,
   clidiscount          varbinary(0),
   clipricestep         varbinary(0),
   clicreatedate        date,
   clistopdate          date,
   clizhangkuanedu      varbinary(0),
   cliremainedu         varbinary(0),
   clicondition         varbinary(0),
   climonthreckoning    date,
   clicreditstep        varbinary(0),
   cliqcpremoney        int,
   cliqcdealmoney       int,
   cliqmpremoney        int,
   cliotherremark       varbinary(0),
   clitrash             int,
   safetyone            varbinary(0),
   safetytwo            varbinary(0),
   enables              int
);

/*==============================================================*/
/* Table: clienttype                                            */
/*==============================================================*/
create table clienttype
(
   Clitypeid            varchar(50) not null comment '类别编号',
   Clitypename          varchar(50) not null comment '类别名称',
   Clitypeename         varchar(50) not null comment '英文名称',
   Cliremark            varchar(50) default NULL comment '备注',
   Clitypetrash         int(11) not null comment '是否废码',
   Safetyone            varchar(50) not null comment '保留字段',
   Safetytwo            varchar(50) not null comment '保留字段',
   Enable               int(11) not null comment '标识是否删除',
   Extend0              varchar(200) default NULL comment '扩展字段0',
   Extend1              varchar(200) default NULL comment '扩展字段1',
   Extend2              varchar(200) default NULL comment '扩展字段2',
   Extend3              varchar(200) default NULL comment '扩展字段3',
   Extend4              varchar(200) default NULL comment '扩展字段4'
)
ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='客户类别表';

/*==============================================================*/
/* Table: depttab                                               */
/*==============================================================*/
create table depttab
(
   Depid                int(11) not null comment '部门编号',
   Depname              varchar(50) not null comment '部门名称',
   Depremark            varchar(200) not null comment '备注',
   Deptrash             varchar(50) not null comment '是否废码',
   Extend0              varchar(200) default NULL comment '扩展字段0',
   Extend1              varchar(200) default NULL comment '扩展字段1',
   Extend2              varchar(200) default NULL comment '扩展字段2',
   Extend3              varchar(200) default NULL comment '扩展字段3',
   Extend4              varchar(200) default NULL comment '扩展字段4',
   primary key (Depid)
)
ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='部门表';

/*==============================================================*/
/* Table: employee                                              */
/*==============================================================*/
create table employee
(
   Empid                varchar(50) not null comment '人员编号',
   Empname              varchar(50) not null comment '人员姓名',
   Empename             varchar(50) not null comment '英文姓名',
   Depid                varchar(50) not null comment '部门编号id',
   Empsex               varchar(50) not null comment '性别（默认男）',
   Empcard              varchar(50) not null comment '身份证号',
   Empstate             varchar(50) not null comment '就职状态id',
   Empduty              varchar(50) not null comment '职务（改字段名）',
   Empphoneone          varchar(50) not null comment '联系电话一',
   Empphonetwo          varchar(50) not null comment '联系电话二',
   Empphonethree        varchar(50) not null comment '联系电话三',
   Empbankaccounts      varchar(50) not null comment '银行账号',
   Empbirthday          date not null comment '出生日期(修改数据类型)',
   Empjob               varchar(50) not null comment '岗位',
   Empemail             varchar(50) not null comment '电子邮件（一个邮箱）',
   Empweb               varchar(50) not null comment '网址',
   Empfaxes             varchar(50) not null comment '传真号码',
   Empopenbank          varchar(50) not null comment '开户银行',
   Emptop               varchar(50) not null comment '最高学历',
   Empdegree            varchar(50) not null comment '学位',
   Empgotime            date not null comment '到期日期',
   Empgraduatetime      varchar(50) not null comment '毕业学校',
   Emppactstarttime     date not null comment '合同起始日期',
   Emppactendtime       date not null comment '合同终止日期',
   Empnowmailid         varchar(50) not null comment '现邮编',
   Empfamilyphone       varchar(50) not null comment '家庭电话',
   Empfamilyplace       varchar(50) not null comment '家庭住址',
   Empnowphone          varchar(50) not null comment '现电话',
   Empnowplace          varchar(50) not null comment '现住址',
   Empexigenceman       varchar(50) not null comment '紧急联系人',
   Empfamilymailid      varchar(50) not null comment '家庭邮编',
   Empremark            varchar(200) not null comment '备注',
   Emptrash             int(11) not null comment '是否废码',
   Safetyone            varchar(50) not null comment '保留字段',
   Safetytwo            varchar(50) not null comment '保留字段',
   Enables              int(11) not null comment '标识是否删除',
   Extend0              varchar(200) default NULL comment '扩展字段0',
   Extend1              varchar(200) default NULL comment '扩展字段1',
   Extend2              varchar(200) default NULL comment '扩展字段2',
   Extend3              varchar(200) default NULL comment '扩展字段3',
   Extend4              varchar(200) default NULL comment '扩展字段4',
   primary key (Empid)
)
ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='人员表';

/*==============================================================*/
/* Table: generalledger                                         */
/*==============================================================*/
create table generalledger
(
   Genid                int(11) not null comment '行号',
   Genmaterielid        int(11) not null comment '物料编号',
   Genstorageno         int(11) not null comment '仓库编号(伪外键)',
   Genstoragename       int(11) not null comment '仓库',
   Genexpectstartqty    int(11) not null comment '期初总数量',
   Genstandarcost       decimal(10,2) not null comment '标准成本',
   Genallcost           decimal(10,2) not null comment '标准总成本',
   Genexpectstartallcost decimal(10,2) not null comment '期初总成本',
   Gensafetyqty         int(11) not null comment '安全数量',
   Genavgcost           decimal(10,2) not null comment '平均成本',
   Genqty               int(11) not null comment '现有总数量',
   Gennowavgcost        decimal(10,2) not null comment '现行平均成本',
   Genstandardcostall   decimal(10,2) not null comment '标准总成本（改名字）',
   Gennowcost           decimal(10,2) not null comment '现行总成本',
   Safetyone            varchar(50) not null comment '保留字段',
   Safetytwo            varchar(50) not null comment '保留字段',
   Enables              int(11) not null comment '标识是否删除',
   Extend0              varchar(200) default NULL comment '扩展字段0',
   Extend1              varchar(200) default NULL comment '扩展字段1',
   Extend2              varchar(200) default NULL comment '扩展字段2',
   Extend3              varchar(200) default NULL comment '扩展字段3',
   Extend4              varchar(200) default NULL comment '扩展字段4'
)
ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='库存总账表';

/*==============================================================*/
/* Table: materiel                                              */
/*==============================================================*/
create table materiel
(
   Matid                varchar(50) not null comment '物料编号',
   Matname              varchar(50) not null comment '物料名称',
   Matspec              varchar(50) not null comment '规格型号',
   Mattypeid            varchar(20) not null comment '物料类别（伪外键）',
   Mattypename          varchar(50) not null comment '物料类别名称',
   Matadviceprice       decimal(10,2) not null comment '建议售价',
   Matadvicepricea      decimal(10,2) not null comment '售价A',
   Matadvicepriceb      decimal(10,2) not null comment '售价B',
   Matadvicepricec      decimal(10,2) not null comment '售价C',
   Matadvicepriced      decimal(10,2) not null comment '售价D',
   Matadvicepricee      decimal(10,2) not null comment '售价E',
   Matstandardprice     decimal(10,2) not null comment '标准进价',
   Matshape             varchar(50) not null comment '物料型态',
   Matifduty            int(11) not null comment '是否含税',
   Matdutyrate          decimal(10,2) not null comment '税率',
   Matstockaheaddate    int(11) not null comment '采购提前期',
   Matmainafford        varchar(50) not null comment '主供应商',
   Matmainaffordid      varchar(50) not null comment '主供应商ID',
   Matgawpdate          int(11) not null comment '呆滞起计天数',
   Matstopdate          date not null comment '停用日期',
   Matremark            varchar(2000) not null comment '备注',
   Matunit              varchar(50) not null comment '计量单位',
   Safetyone            varchar(50) not null comment '保留字段',
   Safetytwo            varchar(50) not null comment '保留字段',
   Enable               int(11) not null comment '标识是否删除',
   Extend0              varchar(200) default NULL comment '扩展字段0',
   Extend1              varchar(200) default NULL comment '扩展字段1',
   Extend2              varchar(200) default NULL comment '扩展字段2',
   Extend3              varchar(200) default NULL comment '扩展字段3',
   Extend4              varchar(200) default NULL comment '扩展字段4'
)
ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='物料主文件';

/*==============================================================*/
/* Table: materieltype                                          */
/*==============================================================*/
create table materieltype
(
   Matypeid             varchar(50) not null comment '物料类别编号',
   Matypename           varchar(50) not null comment '物料类别名称',
   Matypeengname        varchar(50) not null comment '英文名称',
   Matyperemark         varchar(2000) not null comment '备注',
   Safetyone            varchar(50) not null comment '保留字段',
   Safetytwo            varchar(50) not null comment '保留字段',
   Enables              int(11) not null comment '标识是否删除',
   Extend0              varchar(200) default NULL comment '扩展字段0',
   Extend1              varchar(200) default NULL comment '扩展字段1',
   Extend2              varchar(200) default NULL comment '扩展字段2',
   Extend3              varchar(200) default NULL comment '扩展字段3',
   Extend4              varchar(200) default NULL comment '扩展字段4'
)
ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='物料类别';

/*==============================================================*/
/* Table: provideinfo                                           */
/*==============================================================*/
create table provideinfo
(
   Peoid                int(11) not null comment '供应商编号',
   Peoname              varchar(50) not null comment '供应商全称',
   Peoshortname         varchar(50) not null comment '供应商简称',
   Peoascription        varchar(50) not null comment '帐款归属',
   Peopeeid             varchar(50) not null comment '供应商类型表id',
   Peopeename           varchar(50) not null comment '供应商类型表名称（新增）',
   Peoarea              varchar(50) not null comment '地区',
   Peoprincipal         varchar(50) not null comment '负责人',
   Peolinkman           varchar(50) not null comment '联系人',
   Peophoneone          varchar(50) not null comment '联系电话一',
   Peophonetwo          varchar(50) not null comment '联系电话二',
   Peomobilephone       varchar(50) not null comment '移动电话',
   Peobankaccounts      varchar(50) not null comment '银行帐号',
   Peoopenbank          varchar(50) not null comment '开户银行',
   Peoempid             varchar(50) not null comment '（业务人员编号）',
   Peoempname           varchar(50) not null comment '（业务人员名称）',
   Peocalling           varchar(50) not null comment '行业别',
   Peoemail             varchar(50) not null comment '电子邮件',
   Peoweb               varchar(50) not null comment '网址',
   Peofaxes             varchar(50) not null comment '传真号码',
   Peocreatedate        varchar(50) not null comment '建立日期',
   Peocreditclass       varchar(50) not null comment '信用等级',
   Peozhangkuanedu      decimal(10,2) not null comment '帐款额度',
   Peoremainedu         decimal(10,2) not null comment '剩余额度',
   Peomonthreckoning    decimal(10,2) not null comment '每月结帐日',
   Peoqcprepaymoney     decimal(10,2) not null comment '期初预付款',
   Peoqcdealmoney       decimal(10,2) not null comment '期初应付款',
   Peoqmprepaymoney     decimal(10,2) not null comment '期末预付款',
   Peoqmdealmoney       decimal(10,2) not null comment '期末应付款',
   Peoremark            varchar(200) not null comment '备注',
   Peotrash             int(11) not null comment '是否废码',
   Safetyone            varchar(50) not null comment '保留字段',
   Safetytwo            varchar(50) not null comment '保留字段',
   Enables              int(11) not null comment '标识是否删除',
   Extend0              varchar(200) default NULL comment '扩展字段0',
   Extend1              varchar(200) default NULL comment '扩展字段1',
   Extend2              varchar(200) default NULL comment '扩展字段2',
   Extend3              varchar(200) default NULL comment '扩展字段3',
   Extend4              varchar(200) default NULL comment '扩展字段4',
   primary key (Peoid)
)
ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='供应商主文件表';

/*==============================================================*/
/* Table: providetype                                           */
/*==============================================================*/
create table providetype
(
   Peeid                int(11) not null comment '类别编号',
   Peename              varchar(50) not null comment '类别名称',
   Peeename             varchar(50) not null comment '类别英文名称',
   Peeremark            varchar(200) default NULL comment '备注',
   Enables              int(11) not null comment '标识是否删除',
   Extend0              varchar(200) default NULL comment '扩展字段0',
   Extend1              varchar(200) default NULL comment '扩展字段1',
   Extend2              varchar(200) default NULL comment '扩展字段2',
   Extend3              varchar(200) default NULL comment '扩展字段3',
   Extend4              varchar(200) default NULL comment '扩展字段4',
   primary key (Peeid)
)
ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='供应商类型表';

/*==============================================================*/
/* Table: storage                                               */
/*==============================================================*/
create table storage
(
   Stoid                varchar(50) not null comment '仓库编号',
   Stoname              varchar(50) not null comment '仓库名称',
   Stosimplename        varchar(50) not null comment '仓库简称',
   Stoconnectper        varchar(50) not null comment '联系人',
   Stoempid             varchar(50) not null comment '联系人ID(新增)',
   Stophone             varchar(50) not null comment '联系电话',
   Stoaddress           varchar(50) not null comment '仓库地址',
   Storemark            varchar(2000) not null comment '备注',
   Safetyone            varchar(50) not null comment '保留字段',
   Safetytwo            varchar(50) not null comment '保留字段',
   Enables              int(11) not null comment '标识是否删除',
   Extend0              varchar(200) default NULL comment '扩展字段0',
   Extend1              varchar(200) default NULL comment '扩展字段1',
   Extend2              varchar(200) default NULL comment '扩展字段2',
   Extend3              varchar(200) default NULL comment '扩展字段3',
   Extend4              varchar(200) default NULL comment '扩展字段4'
)
ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='仓库表';

