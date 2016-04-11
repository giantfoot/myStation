/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2016/4/1 18:50:39                            */
/*==============================================================*/


drop table if exists header;

drop table if exists manager;

drop table if exists user;

/*==============================================================*/
/* Table: header                                                */
/*==============================================================*/
create table header
(
   headerId             varchar(50) not null,
   userId               int not null,
   headerImage          blob not null,
   primary key (headerId)
);

/*==============================================================*/
/* Table: manager                                               */
/*==============================================================*/
create table manager
(
   managerId            int not null auto_increment,
   managerName          varchar(50) not null,
   state                int not null,
   primary key (managerId)
);

/*==============================================================*/
/* Table: user                                                  */
/*==============================================================*/
create table user
(
   userId               int not null auto_increment,
   username             varchar(50) not null,
   password             varchar(50) not null,
   email                varchar(50) not null,
   state                integer not null,
   registerTime         date,
   validateCode         varchar(50),
   primary key (userId)
);

alter table header add constraint FK_user_header foreign key (userId)
      references user (userId) on delete restrict on update restrict;