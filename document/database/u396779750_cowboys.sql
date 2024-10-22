SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE DATABASE IF NOT EXISTS `cowboys` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `u396779750_cowboys`;

drop table if exists utilisateur;
create table utilisateur(
    uti_id int not null auto_increment primary key,
    uti_pseudo varchar(30),
    uti_mdp varchar(255) not null, 
    uti_profil int
)engine=innodb;


drop table if exists profil;
create table profil(
    pro_id int not null auto_increment primary key,
    pro_libelle varchar(15),
    pro_specialite varchar(15)
)engine=innodb;
insert into profil values (1, "Admin", "tout")
insert into profil values (2, "Admin", "relation");
insert into profil values (3, "Admin", "entite");
insert into profil values (5, "Guests", "tout");


DROP TABLE IF EXISTS tounes;
CREATE TABLE tounes (
  tou_id int(11) NOT NULL,
  tou_libelle varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
INSERT INTO tounes (tou_id, tou_libelle) VALUES (1, 'Les routes du bonheur');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (2, 'Awikatchikaen');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (3, 'Evangeline');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (4, 'Cass de pouelle');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (5, 'L\'Agacepesie');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (6, 'Dieudonne Rastapopoulos');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (7, 'Plattsburg');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (8, 'Willie Jos Hachey');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (9, 'Gaetane');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (10, 'Repentigny-by-the-sea');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (11, 'Le hurlot');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (12, 'Impala blues');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (13, 'Marcel Galarneau');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (14, 'Le plombier');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (15, 'Special #6');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (16, 'Maurice au bistro');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (17, 'Goldie');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (18, 'Denise Martinez');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (19, 'Mon pays');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (20, 'Le Reel Des Aristocrates');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (21, 'Le quai de Berthier');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (22, 'Grosse femme');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (23, 'La gosse 0 Comeau');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (24, 'La culbute');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (25, 'Banlieue');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (26, 'Su\' mon big Wheel');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (27, 'Quebecois de souche');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (28, 'M\'a vivre avec toi');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (29, 'Le shack a Hector');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (30, 'Rue Chapdelaine');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (31, 'Voyou');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (32, 'Leopold');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (33, 'Le temps perdu');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (34, 'Le gars de la compagnie');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (35, 'Le pouceux');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (36, 'Un p\'tit tour');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (37, 'En berne');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (38, 'La tete a Papineau');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (39, 'Toune d\'automne');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (40, 'Heavy metal');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (41, 'La manifestation');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (42, 'Break Syndical');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (43, 'L\'hiver approche');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (44, 'A polyvalente');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (45, 'La noce');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (46, 'Quand je r\'garde');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (47, 'Mon Chum R0mi');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (48, 'Salut Mon Ron');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (49, 'Joyeux calvaire');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (50, 'Ruelle Laurier');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (51, 'La toune cachee');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (52, 'La sainte paix');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (53, 'Le gourmand');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (54, 'Karaoke');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (55, 'Karaok0 version karaok0');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (56, 'Robert Bob Bourgoin');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (57, 'Le Roi Katsh0 1ere');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (58, 'Le Roi Katsh0 2e');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (59, 'intro');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (60, 'Les etoiles filantes');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (61, 'Ti-Cul');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (62, '8 secondes');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (63, 'Plus rien');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (64, 'Hannah');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (65, 'Symphonie pour Caza');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (66, 'La Reine');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (67, 'En attendant');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (68, 'Lettre a Levesque');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (69, 'Ces temps-ci');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (70, 'Ma belle Sophie');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (71, 'Shish Taouk');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (72, 'Camping Ste-Germaine');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (73, 'Si la vie vous interesse');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (74, 'Epilogue');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (75, 'Le Pharmacien');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (76, 'Le Retour Du Roi Katshé');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (77, 'Voir Du Pays');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (78, 'Tendresse');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (79, 'Les Bons Légumes');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (80, 'Le Réel De La Patate Pilée');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (81, 'Droit devant');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (82, 'Chene et roseau');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (83, 'Entre deux taxis');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (84, 'La Catherine');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (85, 'Histoire de p0che');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (86, 'Bobo');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (87, 'Rue des souvenirs');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (88, 'Monsieur');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (89, 'La tete haute');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (90, 'Les hirondelles');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (91, 'Tant qu\'on aura de l\'amour');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (92, 'La bonne pomme');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (93, 'Train de vie');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (94, 'Une autre journee qui se l0ve');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (95, 'Chanteur pop');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (96, 'Beau-frere');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (97, 'La ballade de Jipi Labrosse');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (98, 'Sur un air de deja-vu');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (99, 'Par chez nous');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (100, 'Sans tambour ni trompette');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (101, 'Normal Tremblay');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (102, '1994');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (103, 'Pittoresque !');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (104, 'Vacances 31');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (105, 'le blues de la vie');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (106, 'Titi Tancr0de / Le reel d\'la fesse');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (107, 'Rentre a pied');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (108, 'Quand tu pars');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (109, 'Au pays des sapins geants');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (110, 'Doner au suivant');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (111, 'T0l0');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (112, 'Paris-Montreal');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (113, 'Marilou s\'en fout');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (114, 'L\'horloge');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (115, 'Que du vent');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (116, 'Classe moyenne');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (117, 'Comme Joe Dassin');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (118, 'Hasbeen');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (119, 'Party!');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (120, 'Shooters');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (121, 'On tient l\'coup');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (122, 'Octobre');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (123, 'Bye bye Lou');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (124, 'La la la');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (125, 'Les vers de terre');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (126, 'Pizza Galaxie');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (127, 'Les feuilles mortes');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (128, 'So so');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (129, 'La cave');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (130, 'Marine martounde');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (131, 'Oktoberfest');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (132, 'La devisse');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (133, 'Mon grand-pere');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (134, 'Louis Hebert');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (135, 'Pub Royal');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (136, 'L\'Am0rique pleure');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (137, 'Les maisons toutes pareilles');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (138, 'Suzie Prudhomme');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (139, 'Ici-bas');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (140, 'Saint-profond');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (141, 'Mononc\' Andr0');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (142, 'La travers0e (de l\'Atlantique en 1774)');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (143, 'D\'une tristesse');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (144, 'Johnny pou');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (145, 'Sur mon 0paule');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (146, 'En business');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (147, '0pique 0ric');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (148, 'Les Nuits de Repentigny');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (149, 'Le P\'tit Tommy');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (150, 'Le Long d\'la 20');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (151, 'Anguille sous roche');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (152, 'Vid0o de la Pointe');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (153, 'La Gripp');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (154, 'Fin d\'hiver');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (155, 'Le Clochard et la Lune');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (156, 'Portrait #4');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (157, 'ous-sol');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (158, 'Autodium');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (159, 'Rock camisole');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (160, 'Party d\'pouel');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (161, 'No0l brun');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (162, 'Paul');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (163, 'La Louisiane');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (164, 'Fille de club');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (165, 'Pizza Barbas');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (166, 'Dans son ciel');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (167, 'Le C0ur battant');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (168, 'Graseille');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (169, 'Des espoirs de cause');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (170, 'Bienvenue chez nous');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (171, 'Loulou vs Loulou');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (172, 'Y\'est 3 heures on ferme!');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (173, 'La fin du show');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (174, 'On fait quoi maintenant?');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (175, 'Questions sans r0ponses');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (176, 'Vie et mort de Gina Pinard');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (177, 'Loulou (partie II)');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (178, '(re)Bienvenue chez vous');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (179, 'Les cheveux blancs');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (180, 'Merci ben!');
INSERT INTO tounes (tou_id, tou_libelle) VALUES (181, 'Les bonnes continuations');


drop table if exists albums;
CREATE TABLE `albums` (
  `alb_id` int(11) NOT NULL,
  `alb_libelle` varchar(100) DEFAULT NULL,
  `alb_annee` varchar(100) DEFAULT NULL,
  `alb_pochette` varchar(100) DEFAULT NULL,
  `alb_piste` int(11) DEFAULT NULL,
  `alb_type` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
INSERT INTO albums (alb_id, alb_libelle, alb_annee, alb_pochette, alb_piste, alb_type) VALUES (1, '12 Grandes tounes', '1997', '_images/Album/12GrandesChansons.jpg', 12, 1);
INSERT INTO albums (alb_id, alb_libelle, alb_annee, alb_pochette, alb_piste, alb_type) VALUES (2, 'Sur Mon canapé', '1998', '_images/Album/SurMonCanape.jpg', 12, 1);
INSERT INTO albums (alb_id, alb_libelle, alb_annee, alb_pochette, alb_piste, alb_type) VALUES (3, 'Motel Capri', '2000', '_images/Album/MotelCapri.jpg', 16, 1);
INSERT INTO albums (alb_id, alb_libelle, alb_annee, alb_pochette, alb_piste, alb_type) VALUES (4, 'Enfin Réunis', '2000', '_images/Album/EnfinReunis.jpg', 0, 1);
INSERT INTO albums (alb_id, alb_libelle, alb_annee, alb_pochette, alb_piste, alb_type) VALUES (5, 'Break Syndical', '2002', '_images/Album/BreakSyndical.jpg', 14, 1);
INSERT INTO albums (alb_id, alb_libelle, alb_annee, alb_pochette, alb_piste, alb_type) VALUES (6, 'Heures Supplémentaires', '2002', '_images/Album/HeuresSupplementaires.jpg', 4, 1);
INSERT INTO albums (alb_id, alb_libelle, alb_annee, alb_pochette, alb_piste, alb_type) VALUES (7, 'Attache Ta Tuque', '2002', '_images/Album/AttacheTaTuque.jpg', 30, 2);
INSERT INTO albums (alb_id, alb_libelle, alb_annee, alb_pochette, alb_piste, alb_type) VALUES (8, 'Centre Belle 30 décembre 2003', '2004', '_images/Album/AuCentreBell.jpg', 0, 2);
INSERT INTO albums (alb_id, alb_libelle, alb_annee, alb_pochette, alb_piste, alb_type) VALUES (9, 'La Grand-Messe', '2004', '_images/Album/LaGrandMesse.jpg', 16, 1);
INSERT INTO albums (alb_id, alb_libelle, alb_annee, alb_pochette, alb_piste, alb_type) VALUES (10, 'Au Grand Théatre de Québec', '2007', '_images/Album/AuGrandTheatreDeQuebec.jpg', 23, 2);
INSERT INTO albums (alb_id, alb_libelle, alb_annee, alb_pochette, alb_piste, alb_type) VALUES (11, 'Les insucces en Spectacle', '2000', '_images/Album/LesInsuccesEnSpectacle.webp', 19, 2);
INSERT INTO albums (alb_id, alb_libelle, alb_annee, alb_pochette, alb_piste, alb_type) VALUES (12, 'L\'expédition', '2008', '_images/Album/LExpedition.jpg', 14, 1);
INSERT INTO albums (alb_id, alb_libelle, alb_annee, alb_pochette, alb_piste, alb_type) VALUES (13, 'Sur Un Air De Déjà Vu', '2008', '_images/Album/SurUnAirDeDejaVu.jpg', 16, 1);
INSERT INTO albums (alb_id, alb_libelle, alb_annee, alb_pochette, alb_piste, alb_type) VALUES (14, 'Au Zénith de Paris', '2010', '_images/Album/AuZenithDeParis.jpg', 13, 2);
INSERT INTO albums (alb_id, alb_libelle, alb_annee, alb_pochette, alb_piste, alb_type) VALUES (15, 'Que Du Vent', '2011', '_images/Album/QueDuVent.jpg', 11, 1);
INSERT INTO albums (alb_id, alb_libelle, alb_annee, alb_pochette, alb_piste, alb_type) VALUES (16, 'Octobre', '2015', '_images/Album/Octobre.jpg', 14, 1);
INSERT INTO albums (alb_id, alb_libelle, alb_annee, alb_pochette, alb_piste, alb_type) VALUES (17, 'Les Antipodes', '2019', '_images/Album/LesAntipodes.jpg', 10, 1);
INSERT INTO albums (alb_id, alb_libelle, alb_annee, alb_pochette, alb_piste, alb_type) VALUES (18, 'Les Nuits De Repentigny', '2021', '_images/Album/LesNuitsDeRepentigny.jpg', 23, 1);
INSERT INTO albums (alb_id, alb_libelle, alb_annee, alb_pochette, alb_piste, alb_type) VALUES (19, 'L\'Amérique Pleure\'', '2021', '_images/Album/AmeriquePleure.jpg', 20, 3);
INSERT INTO albums (alb_id, alb_libelle, alb_annee, alb_pochette, alb_piste, alb_type) VALUES (20, 'Avec l\'Orchestre Symphonique de Montréal', '2022', '_images/Album/CowboysFringantsOSM.jpg', 18, 2);
INSERT INTO albums (alb_id, alb_libelle, alb_annee, alb_pochette, alb_piste, alb_type) VALUES (21, 'Pub Royal', '2024', '_images/Album/PubRoyal.jpg', 13, 1);

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
inc_piste varchar(11),
inc_albums int,
inc_tounes int,
inc_duree varchar(8),
primary key(inc_albums, inc_tounes)
)engine=innodb;
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(1, 1, 1, "3:36");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(2, 1, 2, "2:50");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(3, 1, 3, "3:40");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(4, 1, 4, "3:23");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(5, 1, 5, "3:16");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(6, 1, 6, "3:52");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(7, 1, 7, "3:39");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(8, 1, 8, "2:34");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(9, 1, 9, "4:38");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(10, 1, 10, "2:39");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(11, 1, 11, "3:20");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(12, 1, 12, "4:46");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(1, 2, 13, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(2, 2, 14, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(3, 2, 15, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(4, 2, 16, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(5, 2, 17, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(6, 2, 18, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(7, 2, 19, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(7, 2, 20, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(8, 2, 21, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(9, 2, 22, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(10, 2, 23, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(11, 2, 24, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(12, 2, 25, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(1, 3, 26, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(2, 3, 14, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(3, 3, 27, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(4, 3, 2, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(5, 3, 16, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(6, 3, 28, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(7, 3, 29, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(8, 3, 13, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(9, 3, 19, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(9, 3, 20, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(10, 3, 30, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(11, 3, 25, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(12, 3, 31, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(13, 3, 32, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(13, 3, 33, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(14, 3, 34, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(15, 3, 35, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(16, 3, 36, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(1, 5, 37, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(2, 5, 38, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(3, 5, 39, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(4, 5, 40, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(5, 5, 41, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(6, 5, 42, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(7, 5, 43, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(8, 5, 44, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(9, 5, 45, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(10, 5, 46, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(11, 5, 47, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(12, 5, 48, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(12, 5, 54, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(13, 5, 49, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(14, 5, 50, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(14, 5, 51, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(1, 6, 52, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(2, 6, 53, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(3, 6, 54, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(4, 6, 55, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(1, 9, 59, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(2, 9, 60, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(3, 9, 61, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(4, 9, 62, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(5, 9, 63, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(6, 9, 64, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(7, 9, 65, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(8, 9, 66, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(9, 9, 67, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(10, 9, 68, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(11, 9, 69, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(12, 9, 70, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(13, 9, 71, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(14, 9, 72, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(15, 9, 73, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(16, 9, 74, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(1, 12, 81, "4:45");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(2, 12, 82, "2:12");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(3, 12, 83, "3:32");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(4, 12, 84, "3:03");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(5, 12, 85, "3:09");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(6, 12, 86, "3:37");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(7, 12, 87, "2:50");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(8, 12, 88, "3:54");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(9, 12, 89, "4:32");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(10, 12, 90, "4:33");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(11, 12, 91, "2:45");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(12, 12, 92, "3:30");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(13, 12, 93, "2:47");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(14, 12, 94, "5:33");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(1, 13, 95, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(2, 13, 96, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(3, 13, 97, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(4, 13, 98, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(5, 13, 99, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(6, 13, 100, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(7, 13, 101, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(8, 13, 102, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(9, 13, 103, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(10, 13, 104, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(11, 13, 105, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(12, 13, 106, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(13, 13, 107, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(14, 13, 108, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(15, 13, 109, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(16, 13, 110, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(1, 15, 111, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(2, 15, 112, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(3, 15, 113, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(4, 15, 114, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(5, 15, 115, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(6, 15, 116, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(7, 15, 117, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(8, 15, 118, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(9, 15, 119, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(10, 15, 120, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(11, 15, 121, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(1, 16, 122, "3:36");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(2, 16, 123, "3:41");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(3, 16, 124, "2:41");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(4, 16, 125, "4:17");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(5, 16, 126, "4:25");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(6, 16, 127, "3:59");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(7, 16, 128, "3:08");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(8, 16, 129, "3:03");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(9, 16, 130, "4:25");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(10, 16, 131, "1:02");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(11, 16, 132, "4:22");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(12, 16, 133, "4:16");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(13, 16, 134, "4:19");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(14, 16, 135, "3:42");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(1, 17, 136, "4:44");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(2, 17, 137, "3:59");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(3, 17, 138, "4:34");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(4, 17, 139, "4:07");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(5, 17, 140, "3:54");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(6, 17, 141, "3:17");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(7, 17, 142, "3:40");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(8, 17, 143, "3:51");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(9, 17, 144, "3:06");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(10, 17, 145, "3:24");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(1, 18, 146, "2:04");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(2, 18, 147, "3:43");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(3, 18, 148, "3:43");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(4, 18, 149, "2:22");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(5, 18, 150, "3:02");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(6, 18, 151, "1:07");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(7, 18, 152, "1:07");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(8, 18, 153, "0:52");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(9, 18, 154, "2:40");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(10, 18, 155, "2:55");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(11, 18, 156, "2:27");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(12, 18, 157, "3:46");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(13, 18, 158, "0:46");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(14, 18, 159, "2:17");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(15, 18, 160, "2:18");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(16, 18, 161, "4:15");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(17, 18, 162, "0:28");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(18, 18, 163, "3:20");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(19, 18, 164, "2:25");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(20, 18, 165, "0:32");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(21, 18, 166, "3:03");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(22, 18, 167, "2:43");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(23, 18, 168, "3:46");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(1, 21, 169, "1:03");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(2, 21, 170, "4:16");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(3, 21, 171, "5:14");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(4, 21, 172, "3:39");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(5, 21, 173, "7:16");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(6, 21, 174, "1:20");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(7, 21, 175, "2:34");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(8, 21, 176, "4:23");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(9, 21, 177, "1:04");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(10, 21, 178, "2:24");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(11, 21, 179, "3:44");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(12, 21, 180, "4:01");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(13, 21, 181, "1:39");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(1, 7, 40, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(2, 7, 27, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(3, 7, 35, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(4, 7, 47, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(5, 7, 48, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(6, 7, 33, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(7, 7, 34, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(8, 7, 32, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(9, 7, 29, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(10, 7, 14, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(11, 7, 39, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(12, 7, 19, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(13, 7, 20, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(14, 7, 38, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(15, 7, 50, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(16, 7, 41, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(17, 7, 16, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(18, 7, 25, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(19, 7, 52, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(20, 7, 56, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(21, 7, 26, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(22, 7, 2, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(23, 7, 57, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(24, 7, 49, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(25, 7, 58, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(26, 7, 12, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(27, 7, 37, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(28, 7, 43, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(29, 7, 51, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(30, 7, 36, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(1, 10, 61, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(2, 10, 67, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(3, 10, 72, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(4, 10, 69, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(5, 10, 49, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(6, 10, 34, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(7, 10, 64, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(8, 10, 75, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(9, 10, 62, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(10, 10, 43, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(11, 10, 73, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(12, 10, 41, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(13, 10, 66, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(14, 10, 13, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(15, 10, 76, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(15, 10, 2, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(16, 10, 25, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(17, 10, 65, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(18, 10, 68, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(19, 10, 37, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(20, 10, 74, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(21, 10, 70, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(22, 10, 63, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(23, 10, 60, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(1, 11, 77, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(2, 11, 24, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(3, 11, 4, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(4, 11, 78, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(4, 11, 162, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(5, 11, 79, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(6, 11, 3, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(7, 11, 168, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(8, 11, 30, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(9, 11, 28, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(10, 11, 80, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(11, 11, 1, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(12, 11, 9, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(13, 11, 45, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(14, 11, 7, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(15, 11, 11, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(16, 11, 5, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(17, 11, 8, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(18, 11, 6, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(19, 11, 10, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(1, 14, 81, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(2, 14, 66, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(3, 14, 41, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(4, 14, 83, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(5, 14, 85, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(6, 14, 84, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(7, 14, 88, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(8, 14, 89, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(9, 14, 94, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(10, 14, 62, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(11, 14, 63, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(12, 14, 91, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(13, 14, 60, "0");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(1, 20, 37, "4:20");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(2, 20, 125, "4:15");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(3, 20, 66, "3:14");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(4, 20, 62, "4:38");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(5, 20, 89, "5:06");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(6, 20, 137, "3:38");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(7, 20, 34, "3:59");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(8, 20, 63, "3:58");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(9, 20, 122, "3:44");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(10, 20, 43, "5:15");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(11, 20, 94, "5:31");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(12, 20, 145, "3:47");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(13, 20, 49, "3:20");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(14, 20, 130, "4:22");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(15, 20, 143, "4:03");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(16, 20, 135, "3:37");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(17, 20, 136, "4:33");
insert into inclure (inc_piste, inc_albums, inc_tounes, inc_duree) values(18, 20, 60, "5:09");

drop table if exists membres;
create table membres(
mem_id int not null auto_increment primary key ,
mem_prenom varchar(100),
mem_nom varchar(100),
mem_photo varchar(100),
mem_naissance date
)engine=innodb;
INSERT INTO `membres` (`mem_id`, `mem_prenom`, `mem_nom`, `mem_photo`, `mem_naissance`) VALUES (1, 'Karl', 'Tremblay', '_images/Membres/Karl.webp', '1976-10-28');
INSERT INTO `membres` (`mem_id`, `mem_prenom`, `mem_nom`, `mem_photo`, `mem_naissance`) VALUES (2, 'Jean-Francois', 'PAUZÉ', '_images/Membres/JF.webp', '1975-09-12');
INSERT INTO `membres` (`mem_id`, `mem_prenom`, `mem_nom`, `mem_photo`, `mem_naissance`) VALUES (3, 'Marie-Annick', 'LÉPINE', '_images/Membres/Marie.webp', '1978-11-05');
INSERT INTO `membres` (`mem_id`, `mem_prenom`, `mem_nom`, `mem_photo`, `mem_naissance`) VALUES (4, 'Jérôme', 'DUPRAS', '_images/Membres/Jerome.webp', '1979-11-03');
INSERT INTO `membres` (`mem_id`, `mem_prenom`, `mem_nom`, `mem_photo`, `mem_naissance`) VALUES (5, 'Dominique', 'LEBEAU', '_images/Membres/Domlebo.webp', '1975-06-01');


drop table if exists chanter;
create table chanter(
cha_membres int,
cha_tounes int,
primary key(cha_membres, cha_tounes)
)engine=innodb;
insert into chanter values(1,1);
insert into chanter values(1,2);
insert into chanter values(1,3);
insert into chanter values(1,4);
insert into chanter values(1,5);
insert into chanter values(1,6);
insert into chanter values(1,7);
insert into chanter values(1,8);
insert into chanter values(1,9);
insert into chanter values(1,10);
insert into chanter values(1,11);
insert into chanter values(1,12);

drop table if exists ecrire;
create table ecrire(
ecr_membres int,
ecr_tounes int,
primary key(ecr_membres, ecr_tounes)
)engine=innodb;
insert into ecrire values(1,1);
insert into ecrire values(1,2);
insert into ecrire values(1,3);
insert into ecrire values(1,4);
insert into ecrire values(1,5);
insert into ecrire values(1,6);
insert into ecrire values(1,7);
insert into ecrire values(1,8);
insert into ecrire values(1,9);
insert into ecrire values(1,10);
insert into ecrire values(1,11);
insert into ecrire values(1,12);
insert into ecrire values(2,1);
insert into ecrire values(2,2);
insert into ecrire values(2,3);
insert into ecrire values(2,4);
insert into ecrire values(2,5);
insert into ecrire values(2,6);
insert into ecrire values(2,7);
insert into ecrire values(2,8);
insert into ecrire values(2,9);
insert into ecrire values(2,10);
insert into ecrire values(2,11);
insert into ecrire values(2,12);

drop table if exists composer;
create table composer(
com_membres int,
com_tounes int,
primary key (com_membres, com_tounes)
)engine=innodb;
insert into composer values(1,1);
insert into composer values(1,2);
insert into composer values(1,3);
insert into composer values(1,4);
insert into composer values(1,5);
insert into composer values(1,6);
insert into composer values(1,7);
insert into composer values(1,8);
insert into composer values(1,9);
insert into composer values(1,10);
insert into composer values(1,11);
insert into composer values(1,12);
insert into composer values(2,1);
insert into composer values(2,2);
insert into composer values(2,3);
insert into composer values(2,4);
insert into composer values(2,5);
insert into composer values(2,6);
insert into composer values(2,7);
insert into composer values(2,8);
insert into composer values(2,9);
insert into composer values(2,10);
insert into composer values(2,11);
insert into composer values(2,12);










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
insert into jouer  (jou_membres, jou_instruments) values (1, 1),(1, 2),(1, 8);
insert into jouer  (jou_membres, jou_instruments) values (2, 1),(2, 2);
insert into jouer  (jou_membres, jou_instruments) values (3, 1),(3, 5),(3, 6),(3, 10),(3, 7),(3, 9);
insert into jouer  (jou_membres, jou_instruments) values (4, 4);
insert into jouer  (jou_membres, jou_instruments) values (5, 1),(5, 3);



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



