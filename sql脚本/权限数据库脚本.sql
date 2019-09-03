/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2019-08-30 16:45:46                          */
/*==============================================================*/


drop table if exists RoleandUser;

drop table if exists permission;

drop table if exists permissionAndRoleRelation;

drop table if exists role;

drop table if exists user;

/*==============================================================*/
/* Table: RoleandUser                                           */
/*==============================================================*/
create table RoleandUser
(
   id                   int not null,
   users_id             int,
   roles_id             int,
   and_User             int,
   and_date             date,
   primary key (id)
);

/*==============================================================*/
/* Table: permission                                            */
/*==============================================================*/
create table permission
(
   permission_id        int not null,
   permission_name      VBIN20,
   f_id                 int,
   permission_icon      VBIN200,
   permission_path      VBIN200,
   permission_bool      int,
   permission_code      VBIN20,
   primary key (permission_id)
);

/*==============================================================*/
/* Table: permissionAndRoleRelation                             */
/*==============================================================*/
create table permissionAndRoleRelation
(
   prid                 int not null,
   Permissionid         int,
   Roleid               int,
   primary key (prid)
);

/*==============================================================*/
/* Table: role                                                  */
/*==============================================================*/
create table role
(
   role_id              int not null,
   role_name            VBIN20,
   role_state           int,
   role_date            date,
   role_code            VBIN20,
   role_user            int,
   primary key (role_id)
);

/*==============================================================*/
/* Table: user                                                  */
/*==============================================================*/
create table user
(
   users_id             int,
   user_name            VBIN20,
   user_imge            text,
   user_acction         VBIN20,
   user_pwd             VBIN600
);

