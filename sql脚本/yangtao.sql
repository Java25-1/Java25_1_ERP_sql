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
   Clitypeid            varchar(50) not null comment '�����',
   Clitypename          varchar(50) not null comment '�������',
   Clitypeename         varchar(50) not null comment 'Ӣ������',
   Cliremark            varchar(50) default NULL comment '��ע',
   Clitypetrash         int(11) not null comment '�Ƿ����',
   Safetyone            varchar(50) not null comment '�����ֶ�',
   Safetytwo            varchar(50) not null comment '�����ֶ�',
   Enable               int(11) not null comment '��ʶ�Ƿ�ɾ��',
   Extend0              varchar(200) default NULL comment '��չ�ֶ�0',
   Extend1              varchar(200) default NULL comment '��չ�ֶ�1',
   Extend2              varchar(200) default NULL comment '��չ�ֶ�2',
   Extend3              varchar(200) default NULL comment '��չ�ֶ�3',
   Extend4              varchar(200) default NULL comment '��չ�ֶ�4'
)
ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='�ͻ�����';

/*==============================================================*/
/* Table: depttab                                               */
/*==============================================================*/
create table depttab
(
   Depid                int(11) not null comment '���ű��',
   Depname              varchar(50) not null comment '��������',
   Depremark            varchar(200) not null comment '��ע',
   Deptrash             varchar(50) not null comment '�Ƿ����',
   Extend0              varchar(200) default NULL comment '��չ�ֶ�0',
   Extend1              varchar(200) default NULL comment '��չ�ֶ�1',
   Extend2              varchar(200) default NULL comment '��չ�ֶ�2',
   Extend3              varchar(200) default NULL comment '��չ�ֶ�3',
   Extend4              varchar(200) default NULL comment '��չ�ֶ�4',
   primary key (Depid)
)
ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='���ű�';

/*==============================================================*/
/* Table: employee                                              */
/*==============================================================*/
create table employee
(
   Empid                varchar(50) not null comment '��Ա���',
   Empname              varchar(50) not null comment '��Ա����',
   Empename             varchar(50) not null comment 'Ӣ������',
   Depid                varchar(50) not null comment '���ű��id',
   Empsex               varchar(50) not null comment '�Ա�Ĭ���У�',
   Empcard              varchar(50) not null comment '���֤��',
   Empstate             varchar(50) not null comment '��ְ״̬id',
   Empduty              varchar(50) not null comment 'ְ�񣨸��ֶ�����',
   Empphoneone          varchar(50) not null comment '��ϵ�绰һ',
   Empphonetwo          varchar(50) not null comment '��ϵ�绰��',
   Empphonethree        varchar(50) not null comment '��ϵ�绰��',
   Empbankaccounts      varchar(50) not null comment '�����˺�',
   Empbirthday          date not null comment '��������(�޸���������)',
   Empjob               varchar(50) not null comment '��λ',
   Empemail             varchar(50) not null comment '�����ʼ���һ�����䣩',
   Empweb               varchar(50) not null comment '��ַ',
   Empfaxes             varchar(50) not null comment '�������',
   Empopenbank          varchar(50) not null comment '��������',
   Emptop               varchar(50) not null comment '���ѧ��',
   Empdegree            varchar(50) not null comment 'ѧλ',
   Empgotime            date not null comment '��������',
   Empgraduatetime      varchar(50) not null comment '��ҵѧУ',
   Emppactstarttime     date not null comment '��ͬ��ʼ����',
   Emppactendtime       date not null comment '��ͬ��ֹ����',
   Empnowmailid         varchar(50) not null comment '���ʱ�',
   Empfamilyphone       varchar(50) not null comment '��ͥ�绰',
   Empfamilyplace       varchar(50) not null comment '��ͥסַ',
   Empnowphone          varchar(50) not null comment '�ֵ绰',
   Empnowplace          varchar(50) not null comment '��סַ',
   Empexigenceman       varchar(50) not null comment '������ϵ��',
   Empfamilymailid      varchar(50) not null comment '��ͥ�ʱ�',
   Empremark            varchar(200) not null comment '��ע',
   Emptrash             int(11) not null comment '�Ƿ����',
   Safetyone            varchar(50) not null comment '�����ֶ�',
   Safetytwo            varchar(50) not null comment '�����ֶ�',
   Enables              int(11) not null comment '��ʶ�Ƿ�ɾ��',
   Extend0              varchar(200) default NULL comment '��չ�ֶ�0',
   Extend1              varchar(200) default NULL comment '��չ�ֶ�1',
   Extend2              varchar(200) default NULL comment '��չ�ֶ�2',
   Extend3              varchar(200) default NULL comment '��չ�ֶ�3',
   Extend4              varchar(200) default NULL comment '��չ�ֶ�4',
   primary key (Empid)
)
ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='��Ա��';

/*==============================================================*/
/* Table: generalledger                                         */
/*==============================================================*/
create table generalledger
(
   Genid                int(11) not null comment '�к�',
   Genmaterielid        int(11) not null comment '���ϱ��',
   Genstorageno         int(11) not null comment '�ֿ���(α���)',
   Genstoragename       int(11) not null comment '�ֿ�',
   Genexpectstartqty    int(11) not null comment '�ڳ�������',
   Genstandarcost       decimal(10,2) not null comment '��׼�ɱ�',
   Genallcost           decimal(10,2) not null comment '��׼�ܳɱ�',
   Genexpectstartallcost decimal(10,2) not null comment '�ڳ��ܳɱ�',
   Gensafetyqty         int(11) not null comment '��ȫ����',
   Genavgcost           decimal(10,2) not null comment 'ƽ���ɱ�',
   Genqty               int(11) not null comment '����������',
   Gennowavgcost        decimal(10,2) not null comment '����ƽ���ɱ�',
   Genstandardcostall   decimal(10,2) not null comment '��׼�ܳɱ��������֣�',
   Gennowcost           decimal(10,2) not null comment '�����ܳɱ�',
   Safetyone            varchar(50) not null comment '�����ֶ�',
   Safetytwo            varchar(50) not null comment '�����ֶ�',
   Enables              int(11) not null comment '��ʶ�Ƿ�ɾ��',
   Extend0              varchar(200) default NULL comment '��չ�ֶ�0',
   Extend1              varchar(200) default NULL comment '��չ�ֶ�1',
   Extend2              varchar(200) default NULL comment '��չ�ֶ�2',
   Extend3              varchar(200) default NULL comment '��չ�ֶ�3',
   Extend4              varchar(200) default NULL comment '��չ�ֶ�4'
)
ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='������˱�';

/*==============================================================*/
/* Table: materiel                                              */
/*==============================================================*/
create table materiel
(
   Matid                varchar(50) not null comment '���ϱ��',
   Matname              varchar(50) not null comment '��������',
   Matspec              varchar(50) not null comment '����ͺ�',
   Mattypeid            varchar(20) not null comment '�������α�����',
   Mattypename          varchar(50) not null comment '�����������',
   Matadviceprice       decimal(10,2) not null comment '�����ۼ�',
   Matadvicepricea      decimal(10,2) not null comment '�ۼ�A',
   Matadvicepriceb      decimal(10,2) not null comment '�ۼ�B',
   Matadvicepricec      decimal(10,2) not null comment '�ۼ�C',
   Matadvicepriced      decimal(10,2) not null comment '�ۼ�D',
   Matadvicepricee      decimal(10,2) not null comment '�ۼ�E',
   Matstandardprice     decimal(10,2) not null comment '��׼����',
   Matshape             varchar(50) not null comment '������̬',
   Matifduty            int(11) not null comment '�Ƿ�˰',
   Matdutyrate          decimal(10,2) not null comment '˰��',
   Matstockaheaddate    int(11) not null comment '�ɹ���ǰ��',
   Matmainafford        varchar(50) not null comment '����Ӧ��',
   Matmainaffordid      varchar(50) not null comment '����Ӧ��ID',
   Matgawpdate          int(11) not null comment '�����������',
   Matstopdate          date not null comment 'ͣ������',
   Matremark            varchar(2000) not null comment '��ע',
   Matunit              varchar(50) not null comment '������λ',
   Safetyone            varchar(50) not null comment '�����ֶ�',
   Safetytwo            varchar(50) not null comment '�����ֶ�',
   Enable               int(11) not null comment '��ʶ�Ƿ�ɾ��',
   Extend0              varchar(200) default NULL comment '��չ�ֶ�0',
   Extend1              varchar(200) default NULL comment '��չ�ֶ�1',
   Extend2              varchar(200) default NULL comment '��չ�ֶ�2',
   Extend3              varchar(200) default NULL comment '��չ�ֶ�3',
   Extend4              varchar(200) default NULL comment '��չ�ֶ�4'
)
ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='�������ļ�';

/*==============================================================*/
/* Table: materieltype                                          */
/*==============================================================*/
create table materieltype
(
   Matypeid             varchar(50) not null comment '���������',
   Matypename           varchar(50) not null comment '�����������',
   Matypeengname        varchar(50) not null comment 'Ӣ������',
   Matyperemark         varchar(2000) not null comment '��ע',
   Safetyone            varchar(50) not null comment '�����ֶ�',
   Safetytwo            varchar(50) not null comment '�����ֶ�',
   Enables              int(11) not null comment '��ʶ�Ƿ�ɾ��',
   Extend0              varchar(200) default NULL comment '��չ�ֶ�0',
   Extend1              varchar(200) default NULL comment '��չ�ֶ�1',
   Extend2              varchar(200) default NULL comment '��չ�ֶ�2',
   Extend3              varchar(200) default NULL comment '��չ�ֶ�3',
   Extend4              varchar(200) default NULL comment '��չ�ֶ�4'
)
ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='�������';

/*==============================================================*/
/* Table: provideinfo                                           */
/*==============================================================*/
create table provideinfo
(
   Peoid                int(11) not null comment '��Ӧ�̱��',
   Peoname              varchar(50) not null comment '��Ӧ��ȫ��',
   Peoshortname         varchar(50) not null comment '��Ӧ�̼��',
   Peoascription        varchar(50) not null comment '�ʿ����',
   Peopeeid             varchar(50) not null comment '��Ӧ�����ͱ�id',
   Peopeename           varchar(50) not null comment '��Ӧ�����ͱ����ƣ�������',
   Peoarea              varchar(50) not null comment '����',
   Peoprincipal         varchar(50) not null comment '������',
   Peolinkman           varchar(50) not null comment '��ϵ��',
   Peophoneone          varchar(50) not null comment '��ϵ�绰һ',
   Peophonetwo          varchar(50) not null comment '��ϵ�绰��',
   Peomobilephone       varchar(50) not null comment '�ƶ��绰',
   Peobankaccounts      varchar(50) not null comment '�����ʺ�',
   Peoopenbank          varchar(50) not null comment '��������',
   Peoempid             varchar(50) not null comment '��ҵ����Ա��ţ�',
   Peoempname           varchar(50) not null comment '��ҵ����Ա���ƣ�',
   Peocalling           varchar(50) not null comment '��ҵ��',
   Peoemail             varchar(50) not null comment '�����ʼ�',
   Peoweb               varchar(50) not null comment '��ַ',
   Peofaxes             varchar(50) not null comment '�������',
   Peocreatedate        varchar(50) not null comment '��������',
   Peocreditclass       varchar(50) not null comment '���õȼ�',
   Peozhangkuanedu      decimal(10,2) not null comment '�ʿ���',
   Peoremainedu         decimal(10,2) not null comment 'ʣ����',
   Peomonthreckoning    decimal(10,2) not null comment 'ÿ�½�����',
   Peoqcprepaymoney     decimal(10,2) not null comment '�ڳ�Ԥ����',
   Peoqcdealmoney       decimal(10,2) not null comment '�ڳ�Ӧ����',
   Peoqmprepaymoney     decimal(10,2) not null comment '��ĩԤ����',
   Peoqmdealmoney       decimal(10,2) not null comment '��ĩӦ����',
   Peoremark            varchar(200) not null comment '��ע',
   Peotrash             int(11) not null comment '�Ƿ����',
   Safetyone            varchar(50) not null comment '�����ֶ�',
   Safetytwo            varchar(50) not null comment '�����ֶ�',
   Enables              int(11) not null comment '��ʶ�Ƿ�ɾ��',
   Extend0              varchar(200) default NULL comment '��չ�ֶ�0',
   Extend1              varchar(200) default NULL comment '��չ�ֶ�1',
   Extend2              varchar(200) default NULL comment '��չ�ֶ�2',
   Extend3              varchar(200) default NULL comment '��չ�ֶ�3',
   Extend4              varchar(200) default NULL comment '��չ�ֶ�4',
   primary key (Peoid)
)
ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='��Ӧ�����ļ���';

/*==============================================================*/
/* Table: providetype                                           */
/*==============================================================*/
create table providetype
(
   Peeid                int(11) not null comment '�����',
   Peename              varchar(50) not null comment '�������',
   Peeename             varchar(50) not null comment '���Ӣ������',
   Peeremark            varchar(200) default NULL comment '��ע',
   Enables              int(11) not null comment '��ʶ�Ƿ�ɾ��',
   Extend0              varchar(200) default NULL comment '��չ�ֶ�0',
   Extend1              varchar(200) default NULL comment '��չ�ֶ�1',
   Extend2              varchar(200) default NULL comment '��չ�ֶ�2',
   Extend3              varchar(200) default NULL comment '��չ�ֶ�3',
   Extend4              varchar(200) default NULL comment '��չ�ֶ�4',
   primary key (Peeid)
)
ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='��Ӧ�����ͱ�';

/*==============================================================*/
/* Table: storage                                               */
/*==============================================================*/
create table storage
(
   Stoid                varchar(50) not null comment '�ֿ���',
   Stoname              varchar(50) not null comment '�ֿ�����',
   Stosimplename        varchar(50) not null comment '�ֿ���',
   Stoconnectper        varchar(50) not null comment '��ϵ��',
   Stoempid             varchar(50) not null comment '��ϵ��ID(����)',
   Stophone             varchar(50) not null comment '��ϵ�绰',
   Stoaddress           varchar(50) not null comment '�ֿ��ַ',
   Storemark            varchar(2000) not null comment '��ע',
   Safetyone            varchar(50) not null comment '�����ֶ�',
   Safetytwo            varchar(50) not null comment '�����ֶ�',
   Enables              int(11) not null comment '��ʶ�Ƿ�ɾ��',
   Extend0              varchar(200) default NULL comment '��չ�ֶ�0',
   Extend1              varchar(200) default NULL comment '��չ�ֶ�1',
   Extend2              varchar(200) default NULL comment '��չ�ֶ�2',
   Extend3              varchar(200) default NULL comment '��չ�ֶ�3',
   Extend4              varchar(200) default NULL comment '��չ�ֶ�4'
)
ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='�ֿ��';

