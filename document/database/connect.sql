drop table if exists utilisateur;
create table utilisateur(
    uti_id int not null auto_increment primary key,
    uti_pseudo varchar(30),
    uti_email varchar(30),
    uti_mdp varchar(255) not null, 
    uti_profil int
)engine=innodb;


drop table if exists profil;
create table profil(
    pro_id int not null auto_increment primary key,
    pro_libelle varchar(15)
)engine=innodb;
insert into profil values (1, "Admin");
insert into profil values (2, "Guests");
