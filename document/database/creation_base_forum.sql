--
-- base de données: 'baseforum'
--
create database if not exists baseforum default character set utf8 collate utf8_general_ci;
use baseforum;
-- --------------------------------------------------------
-- creation des tables

set foreign_key_checks =0;

-- table profil
drop table if exists profil;
create table profil (
	pro_id int not null auto_increment primary key,
	pro_libelle varchar(100)	
)engine=innodb;

-- table utilisateur
drop table if exists utilisateur;
create table utilisateur (
	uti_id int not null auto_increment primary key,
	uti_login varchar(20) unique,
	uti_mdp varchar(500),
	uti_profil int not null
)engine=innodb;

-- table messages
drop table if exists messages;
create table messages (
	mes_id int not null auto_increment primary key,
	mes_auteur int not null,
	mes_datetime datetime,
	mes_text varchar(5000)	
)engine=innodb; 

set foreign_key_checks =1;

-- contraintes
alter table utilisateur add constraint cs1 foreign key (uti_profil) references profil(pro_id);
alter table messages add constraint cs2 foreign key (mes_auteur) references utilisateur(uti_id);
