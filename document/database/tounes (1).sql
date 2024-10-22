-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : ven. 21 juin 2024 à 10:18
-- Version du serveur : 10.11.7-MariaDB-cll-lve
-- Version de PHP : 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `u396779750_cowboys`
--

-- --------------------------------------------------------

--
-- Structure de la table `tounes`
--

CREATE TABLE `tounes` (
  `tou_id` int(11) NOT NULL,
  `tou_libelle` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `tounes`
--

INSERT INTO `tounes` (`tou_id`, `tou_libelle`) VALUES
(1, 'Les routes du bonheur'),
(2, 'Awikatchikaen'),
(3, 'Evangeline'),
(4, 'Cass de pouelle'),
(5, 'L\'Agacepesie'),
(6, 'Dieudonne Rastapopoulos'),
(7, 'Plattsburg'),
(8, 'Willie Jos Hachey'),
(9, 'Gaetane'),
(10, 'Repentigny-by-the-sea'),
(11, 'Le hurlot'),
(12, 'Impala blues'),
(13, 'Marcel Galarneau'),
(14, 'Le plombier'),
(15, 'Special #6'),
(16, 'Maurice au bistro'),
(17, 'Goldie'),
(18, 'Denise Martinez'),
(19, 'Mon pays'),
(20, 'Le Reel Des Aristocrates'),
(21, 'Le quai de Berthier'),
(22, 'Grosse femme'),
(23, 'La gosse 0 Comeau'),
(24, 'La culbute'),
(25, 'Banlieue'),
(26, 'Su\' mon big Wheel'),
(27, 'Quebecois de souche'),
(28, 'M\'a vivre avec toi'),
(29, 'Le shack a Hector'),
(30, 'Rue Chapdelaine'),
(31, 'Voyou'),
(32, 'Leopold'),
(33, 'Le temps perdu'),
(34, 'Le gars de la compagnie'),
(35, 'Le pouceux'),
(36, 'Un p\'tit tour'),
(37, 'En berne'),
(38, 'La tete a Papineau'),
(39, 'Toune d\'automne'),
(40, 'Heavy metal'),
(41, 'La manifestation'),
(42, 'Break Syndical'),
(43, 'L\'hiver approche'),
(44, 'A polyvalente'),
(45, 'La noce'),
(46, 'Quand je r\'garde'),
(47, 'Mon Chum R0mi'),
(48, 'Salut Mon Ron'),
(49, 'Joyeux calvaire'),
(50, 'Ruelle Laurier'),
(51, 'La toune cachee'),
(52, 'La sainte paix'),
(53, 'Le gourmand'),
(54, 'Karaoke'),
(55, 'Karaok0 version karaok0'),
(56, 'Robert Bob Bourgoin'),
(57, 'Le Roi Katsh0 1ere'),
(58, 'Le Roi Katsh0 2e'),
(59, 'intro'),
(60, 'Les etoiles filantes'),
(61, 'Ti-Cul'),
(62, '8 secondes'),
(63, 'Plus rien'),
(64, 'Hannah'),
(65, 'Symphonie pour Caza'),
(66, 'La Reine'),
(67, 'En attendant'),
(68, 'Lettre a Levesque'),
(69, 'Ces temps-ci'),
(70, 'Ma belle Sophie'),
(71, 'Shish Taouk'),
(72, 'Camping Ste-Germaine'),
(73, 'Si la vie vous interesse'),
(74, 'Epilogue'),
(75, 'Le Pharmacien'),
(76, 'Le Retour Du Roi Katshé'),
(77, 'Voir Du Pays'),
(78, 'Tendresse'),
(79, 'Les Bons Légumes'),
(80, 'Le Réel De La Patate Pilée'),
(81, 'Droit devant'),
(82, 'Chene et roseau'),
(83, 'Entre deux taxis'),
(84, 'La Catherine'),
(85, 'Histoire de p0che'),
(86, 'Bobo'),
(87, 'Rue des souvenirs'),
(88, 'Monsieur'),
(89, 'La tete haute'),
(90, 'Les hirondelles'),
(91, 'Tant qu\'on aura de l\'amour'),
(92, 'La bonne pomme'),
(93, 'Train de vie'),
(94, 'Une autre journee qui se l0ve'),
(95, 'Chanteur pop'),
(96, 'Beau-frere'),
(97, 'La ballade de Jipi Labrosse'),
(98, 'Sur un air de deja-vu'),
(99, 'Par chez nous'),
(100, 'Sans tambour ni trompette'),
(101, 'Normal Tremblay'),
(102, '1994'),
(103, 'Pittoresque !'),
(104, 'Vacances 31'),
(105, 'le blues de la vie'),
(106, 'Titi Tancr0de / Le reel d\'la fesse'),
(107, 'Rentre a pied'),
(108, 'Quand tu pars'),
(109, 'Au pays des sapins geants'),
(110, 'Doner au suivant'),
(111, 'T0l0'),
(112, 'Paris-Montreal'),
(113, 'Marilou s\'en fout'),
(114, 'L\'horloge'),
(115, 'Que du vent'),
(116, 'Classe moyenne'),
(117, 'Comme Joe Dassin'),
(118, 'Hasbeen'),
(119, 'Party!'),
(120, 'Shooters'),
(121, 'On tient l\'coup'),
(122, 'Octobre'),
(123, 'Bye bye Lou'),
(124, 'La la la'),
(125, 'Les vers de terre'),
(126, 'Pizza Galaxie'),
(127, 'Les feuilles mortes'),
(128, 'So so'),
(129, 'La cave'),
(130, 'Marine martounde'),
(131, 'Oktoberfest'),
(132, 'La devisse'),
(133, 'Mon grand-pere'),
(134, 'Louis Hebert'),
(135, 'Pub Royal'),
(136, 'L\'Am0rique pleure'),
(137, 'Les maisons toutes pareilles'),
(138, 'Suzie Prudhomme'),
(139, 'Ici-bas'),
(140, 'Saint-profond'),
(141, 'Mononc\' Andr0'),
(142, 'La travers0e (de l\'Atlantique en 1774)'),
(143, 'D\'une tristesse'),
(144, 'Johnny pou'),
(145, 'Sur mon 0paule'),
(146, 'En business'),
(147, '0pique 0ric'),
(148, 'Les Nuits de Repentigny'),
(149, 'Le P\'tit Tommy'),
(150, 'Le Long d\'la 20'),
(151, 'Anguille sous roche'),
(152, 'Vid0o de la Pointe'),
(153, 'La Gripp'),
(154, 'Fin d\'hiver'),
(155, 'Le Clochard et la Lune'),
(156, 'Portrait #4'),
(157, 'ous-sol'),
(158, 'Autodium'),
(159, 'Rock camisole'),
(160, 'Party d\'pouel'),
(161, 'No0l brun'),
(162, 'Paul'),
(163, 'La Louisiane'),
(164, 'Fille de club'),
(165, 'Pizza Barbas'),
(166, 'Dans son ciel'),
(167, 'Le C0ur battant'),
(168, 'Graseille'),
(169, 'Des espoirs de cause'),
(170, 'Bienvenue chez nous'),
(171, 'Loulou vs Loulou'),
(172, 'Y\'est 3 heures on ferme!'),
(173, 'La fin du show'),
(174, 'On fait quoi maintenant?'),
(175, 'Questions sans r0ponses'),
(176, 'Vie et mort de Gina Pinard'),
(177, 'Loulou (partie II)'),
(178, '(re)Bienvenue chez vous'),
(179, 'Les cheveux blancs'),
(180, 'Merci ben!'),
(181, 'Les bonnes continuations');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `tounes`
--
ALTER TABLE `tounes`
  ADD PRIMARY KEY (`tou_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `tounes`
--
ALTER TABLE `tounes`
  MODIFY `tou_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=182;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
