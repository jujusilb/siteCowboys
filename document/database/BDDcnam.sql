SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE DATABASE IF NOT EXISTS `cowboys` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `cowboys`;


drop table if exists tounes;
create table tounes(
tou_id int not null auto_increment primary key ,
tou_libelle varchar(100),
tou_duree int
)engine=innodb;
insert into tounes values(null, "Les routes du bonheur", 1); 
insert into tounes values(null, "Awikatchikaen", 1); 
insert into tounes values(null, "Evangeline", 1); 
insert into tounes values(null, "Cass de pouelle", 1); 
insert into tounes values(null, "L'Agaspecsie", 1); 
insert into tounes values(null, "Dieudonne Rastapopoulos", 1); 
insert into tounes values(null, "Plattsburg", 1); 
insert into tounes values(null, "Willie Jos Hachey", 1); 
insert into tounes values(null, "Gaetane", 1); 
insert into tounes values(null, "Repentigny-by-the-sea", 1); 
insert into tounes values(null, "Le hurlot", 1); 
insert into tounes values(null, "Impala blues", 1); 
insert into tounes values(null, "Marcel Galarneau", 1); 
insert into tounes values(null, "Le plombier", 1); 
insert into tounes values(null, "Special #6", 1); 
insert into tounes values(null, "Maurice au bistro", 1); 
insert into tounes values(null, "Goldie", 1); 
insert into tounes values(null, "Denise Martinez", 1); 
insert into tounes values(null, "Mon pays", 1); 
insert into tounes values(null, "Le quai de Berthier", 1); 
insert into tounes values(null, "Grosse femme", 1); 
insert into tounes values(null, "La gosse a Comeau", 1); 
insert into tounes values(null, "La culbute", 1); 
insert into tounes values(null, "Banlieue", 1); 
insert into tounes values(null, "Su' mon big Wheel", 1);
insert into tounes values(null, "Quebecois de souche", 1);
insert into tounes values(null, "M'a vivre avec toi", 1);
insert into tounes values(null, "Le shack a Hector", 1);
insert into tounes values(null, "Rue toupdelaine", 1);
insert into tounes values(null, "Voyou", 1);
insert into tounes values(null, "Leopold", 1);
insert into tounes values(null, "Le temps perdu", 1);
insert into tounes values(null, "Le gars de la compagnie", 1);
insert into tounes values(null, "Le pouceux", 1);
insert into tounes values(null, "Un p'tit tour", 1);
insert into tounes values(null, "En berne", 1);
insert into tounes values(null, "La tete a Papineau", 1);
insert into tounes values(null, "Toune d'automne", 1);
insert into tounes values(null, "Heavy metal", 1);
insert into tounes values(null, "La manifestation", 1);
insert into tounes values(null, "L'hiver approche", 1);
insert into tounes values(null, "A polyvalente", 1);
insert into tounes values(null, "La noce", 1);
insert into tounes values(null, "Quand je r'garde", 1);
insert into tounes values(null, "Mon chum Remi", 1);
insert into tounes values(null, "Salut mon Ron", 1);
insert into tounes values(null, "Joyeux calvaire", 1);
insert into tounes values(null, "Ruelle Laurier", 1);
insert into tounes values(null, "La toune cachee", 1);
insert into tounes values(null, "La sainte paix", 1);
insert into tounes values(null, "Le gourmand", 1);
insert into tounes values(null, "Karaoke", 1);
insert into tounes values(null, "Karaoké version karaoké", 1);
insert into tounes values(null, "Les etoiles filantes", 1);
insert into tounes values(null, "Ti-Cul", 1);
insert into tounes values(null, "8 secondes", 1);
insert into tounes values(null, "Plus rien", 1);
insert into tounes values(null, "Hannah", 1);
insert into tounes values(null, "Symphonie pour Caza", 1);
insert into tounes values(null, "La Reine", 1);
insert into tounes values(null, "En attendant", 1);
insert into tounes values(null, "Lettre a Levesque", 1);
insert into tounes values(null, "Ces temps-ci", 1);
insert into tounes values(null, "Ma belle Sophie", 1);
insert into tounes values(null, "Camping Ste-Germaine", 1);
insert into tounes values(null, "Si la vie vous interesse", 1);
insert into tounes values(null, "Epilogue", 1);
insert into tounes values(null, "Droit devant", 1);
insert into tounes values(null, "Chene et roseau", 1);
insert into tounes values(null, "Entre deux taxis", 1);
insert into tounes values(null, "La Catherine", 1);
insert into tounes values(null, "Histoire de peche", 1);
insert into tounes values(null, "Bobo", 1);
insert into tounes values(null, "Rue des souvenirs", 1);
insert into tounes values(null, "Monsieur", 1);
insert into tounes values(null, "La tete haute", 1);
insert into tounes values(null, "Les hirondelles", 1);
insert into tounes values(null, "Tant qu'on aura de l'amour", 1);
insert into tounes values(null, "La bonne pomme", 1);
insert into tounes values(null, "Train de vie", 1);
insert into tounes values(null, "Une autre journee qui se leve", 1);
insert into tounes values(null, "tounteur pop", 1);
insert into tounes values(null, "Beau-frere", 1);
insert into tounes values(null, "La ballade de Jipi Labrosse", 1);
insert into tounes values(null, "Sur un air de deja-vu", 1);
insert into tounes values(null, "Par chez nous", 1);
insert into tounes values(null, "Sans tambour ni trompette", 1);
insert into tounes values(null, "Normal Tremblay", 1);
insert into tounes values(null, "1994", 1);
insert into tounes values(null, "Pittoresque !", 1);
insert into tounes values(null, "Vacances 31", 1);
insert into tounes values(null, "le blues de la vie", 1);
insert into tounes values(null, "Titi Tancrede", 1);
insert into tounes values(null, "Rentre a pied", 1);
insert into tounes values(null, "Quand tu pars", 1);
insert into tounes values(null, "Au pays des sapins geants", 1);
insert into tounes values(null, "Doner au suivant", 1);
insert into tounes values(null, "Télé", 1);
insert into tounes values(null, "Paris-Montreal", 1);
insert into tounes values(null, "Marilou s'en fout", 1);
insert into tounes values(null, "L'horloge", 1);
insert into tounes values(null, "Que du vent", 1);
insert into tounes values(null, "Classe moyenne", 1);
insert into tounes values(null, "Comme Joe Dassin", 1);
insert into tounes values(null, "Hasbeen", 1);
insert into tounes values(null, "Party!", 1);
insert into tounes values(null, "Shooters", 1);
insert into tounes values(null, "On tient l'coup", 1);
insert into tounes values(null, "Bye bye Lou", 1);
insert into tounes values(null, "La la la", 1);
insert into tounes values(null, "Les vers de terre", 1);
insert into tounes values(null, "Pizza Galaxie", 1);
insert into tounes values(null, "Les feuilles mortes", 1);
insert into tounes values(null, "So so", 1);
insert into tounes values(null, "La cave", 1);
insert into tounes values(null, "Marine martounde", 1);
insert into tounes values(null, "La devisse", 1);
insert into tounes values(null, "Mon grand-pere", 1);
insert into tounes values(null, "Louis Hebert", 1);
insert into tounes values(null, "Pub Royal", 1);



drop table if exists albums;
create table albums(
alb_id int not null auto_increment primary key ,
alb_libelle varchar(100),
alb_année varchar(100),
alb_pochette varchar(100),
aln_piste int(11),
alb_type int
)engine=innodb;
insert into albums values(null, "12 Grandes tounes", 1997, "_images/Album/12GrandesChansons.jpg",20, 1);
insert into albums values(null, "Sur Mon canapé", 1998, "_images/Album/SurMonCanape.jpg",20, 1);
insert into albums values(null, "Motel Capri", 2000, "_images/Album/MotelCapri.jpg",20, 1);
insert into albums values(null, "Enfin Réunis", 2000, "_images/Album/EnfinReunis.jpg",20, 1);
insert into albums values(null, "Break Syndical", 2002, "_images/Album/BreakSyndical.jpg",20, 1);
insert into albums values(null, "Heures Supplémentaires", 2002, "_images/Album/HeuresSupplementaires.jpg",20, 1);
insert into albums values(null, "Attache Ta Tuque", 2002, "_images/Album/AttacheTaTuque.jpg",20, 2);
insert into albums values(null, "Centre Belle 30 décembre 2003", 2004, "_images/Album/AuCentreBell.jpg",20, 2);
insert into albums values(null, "La Grand-Messe", 2004, "_images/Album/LaGrandMesse.jpg",20, 1);
insert into albums values(null, "Au Grand Théatre de Québec", 2007, "_images/Album/AuGrandTheatreDeQuebec.jpg",20, 2);
insert into albums values(null, "Les insucces en Spectacle", 2000, "_images/Album/LesInsuccesEnSpectacle.jpg",20, 2);
insert into albums values(null, "L'expédition", 2008, "_images/Album/LExpedition.jpg",20, 1);
insert into albums values(null, "Sur Un Air De Déjà Vu", 2008, "_images/Album/SurUnAirDeDejaVu.jpg",20, 1);
insert into albums values(null, "Au Zénith de Paris", 2010, "_images/Album/AuZenithDeParis.jpg",20, 2);
insert into albums values(null, "Que Du Vent", 2011, "_images/Album/QueDuVent.jpg",20, 1);
insert into albums values(null, "Octobre", 2015, "_images/Album/Octobre.jpg",20, 1);
insert into albums values(null, "Les Antipodes", 2019, "_images/Album/LesAntipodes.jpg",20, 1);
insert into albums values(null, "Les Nuits De Repentigny", 2021, "LesNuitsDeRepentigny.jpg",20, 1);
insert into albums values(null, "L'Amérique Pleure'", 2021, "_images/Album/AmeriquePleure.jpg",20, 3);
insert into albums values(null, "Avec l'Orchestre Symphonique de Montréal", 2022, "_images/Album/CowboysFringantsOSM.jpg",20, 2);
insert into albums values(null, "Pub Royal", 2024, "_images/Album/PubRoyal.jpg",20, 1);


drop table if exists type;
create table type(
typ_id int not null auto_increment primary key ,
typ_libelle varchar(100)
)engine=innodb;
insert into type values(null, "studio");
insert into type values(null, "live");
insert into type values(null, "Bande Orginale");

drop table if exists inclure;
create table inclure(
inc_idd int not null auto_increment primary key ,
inc_piste varchar(11),
inc_albums int,
inc_tounes int,
)engine=innodb;

drop table if exists membres;
create table membres(
mem_id int not null auto_increment primary key ,
mem_prenom varchar(100),
mem_nom varchar(100),
mem_photo varchar(100),
mem_naissance date
)engine=innodb;
insert into membres values(null, "Karl", "Tremblay", "", 19700101);
insert into membres values(null, "Jean-Francois", "PAUZÉ", "", 19700101);
insert into membres values(null, "Marie-Annick", "LÉPINE", "", 19700101);
insert into membres values(null, "Jérôme", "DUPRAS", "", 19700101);
insert into membres values(null, "Dominique", "LEBEAU", "", 19700101);

drop table if exists chanter;
create table chanter(
cha_membres int,
cha_tounes int,
primary key(cha_membres, cha_tounes)
)engine=innodb;

drop table if exists ecrire;
create table ecrire(
ecr_membres int,
ecr_tounes int,
primary key(ecr_membres, ecr_tounes)
)engine=innodb;

drop table if exists composer;
create table composer(
com_membres int,
com_tounes int,
primary key (com_membres, com_tounes)
)engine=innodb;

drop table if exists personnages;
create table personnages(
per_id int not null auto_increment primary key ,
per_prenom varchar(100),
per_nom varchar(100),
per_bio varchar(500)
)engine=innodb;
insert into personnages (per_id, per_prenom, per_nom) values (null, "Loulou", "LAPIERRE");
insert into personnages (per_id, per_prenom, per_nom) values (null, "J-P", "LABROSSE");
insert into personnages (per_id, per_prenom, per_nom) values (null, "Gina", "PINARD");
insert into personnages (per_id, per_prenom, per_nom) values (null, "Maurice", "");
insert into personnages (per_id, per_prenom, per_nom) values (null, "Rémi", "");
insert into personnages (per_id, per_prenom, per_nom) values (null, "Mononc'", "André");
insert into personnages (per_id, per_prenom, per_nom) values (null, "vves", "");
insert into personnages (per_id, per_prenom, per_nom) values (null, "Catherine", "");
insert into personnages (per_id, per_prenom, per_nom) values (null, "Normamd", "");
insert into personnages (per_id, per_prenom, per_nom) values (null, "Robert Bob", "BOURGOIN");


drop table if exists apparaitre;
create table apparaitre(
app_personnages int,
app_tounes int,
primary key(app_personnages, app_tounes)
)engine=innodb;

drop table if exists instruments;
create table instruments(
ins_id int not null auto_increment primary key ,
ins_libelle varchar(100),
ins_famille int
)engine=innodb;
insert into instruments values (null, "voix", 1);
insert into instruments values (null, "guitare", 2);
insert into instruments values (null, "batterie", 4);
insert into instruments values (null, "basse", 2);
insert into instruments values (null, "mandoline", 2);
insert into instruments values (null, "piano", 2);
insert into instruments values (null, "accordeon", 3);
insert into instruments values (null, "kazoo", 3);
insert into instruments values (null, "flûte", 3);



drop table if exists jouer;
create table jouer(
jou_membres int,
jou_instruments int,
primary key(jou_membres, jou_instruments)
)engine=innodb;



drop table if exists famille;
create table famille(
fam_id int not null auto_increment primary key ,
fam_libelle varchar(100)
)engine=innodb;
insert into famille values(null, "vocal");
insert into famille values(null, "cordes");
insert into famille values(null, "vent");
insert into famille values(null, "percussion");


alter table instruments add constraint cs1 foreign key (ins_famille) references famille (fam_id);
alter table ecrire add constraint cs2 foreign key (ecr_membres) references membres (mem_id);
alter table ecrire add constraint cs3 foreign key (ecr_tounes) references tounes (tou_id);
alter table composer add constraint cs4 foreign key (com_membres) references membres (mem_id);
alter table composer add constraint cs5 foreign key (com_tounes) references tounes (tou_id);
alter table apparaitre add constraint cs6 foreign key (app_personnages) references personnages (per_id);
alter table apparaitre add constraint cs7 foreign key (app_tounes) references tounes (tou_id);
alter table jouer add constraint cs8 foreign key (jou_membres) references membres (mem_id);
alter table jouer add constraint cs9 foreign key (jou_instruments) references instruments (ins_id);
alter table inclure add constraint cs10 foreign key (inc_albums) references albums (alb_id);
alter table inclure add constraint cs11 foreign key (inc_tounes) references tounes (tou_id);
alter table albums add constraint cs12 foreign key (alb_type) references type (typ_id);
alter table chanter add constraint cs13 foreign key (cha_membres) references membres (mem_id);
alter table chanter add constraint cs14 foreign key (cha_tounes) references tounes (tou_id);



ALBUMS
MEMBRES
PERSONNAGES
INSTRUMENT
TYPE
tounes
FAMILLES

chanter:
membres0,n
tounes0,n

composer:
membres0,n
tounes1,n

ecrire:
membres0,n
tounes1,n

jouer:
membres1,n
instruments0,n

inclure:
albums1,n
tounes1,n

apparaitre:
personnages1,n
tounes 0,n

appartenir:
instruments 1,1
famille0,n

categoriser:
albums1,1
type 0,n



