-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mar. 16 juil. 2024 à 10:38
-- Version du serveur : 10.11.8-MariaDB-cll-lve
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
-- Structure de la table `albums`
--

CREATE TABLE `albums` (
  `alb_id` int(11) NOT NULL,
  `alb_libelle` varchar(100) DEFAULT NULL,
  `alb_annee` varchar(100) DEFAULT NULL,
  `alb_pochette` varchar(100) DEFAULT NULL,
  `alb_piste` int(11) DEFAULT NULL,
  `alb_type` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `albums`
--

INSERT INTO `albums` (`alb_id`, `alb_libelle`, `alb_annee`, `alb_pochette`, `alb_piste`, `alb_type`) VALUES
(1, '12 Grandes tounes', '1997', '_images/Album/12GrandesChansons.jpg', 12, 1),
(2, 'Sur Mon canapé', '1998', '_images/Album/SurMonCanape.jpg', 12, 1),
(3, 'Motel Capri', '2000', '_images/Album/MotelCapri.jpg', 16, 1),
(4, 'Enfin Réunis', '2000', '_images/Album/EnfinReunis.jpg', 0, 1),
(5, 'Break Syndical', '2002', '_images/Album/BreakSyndical.jpg', 14, 1),
(6, 'Heures Supplémentaires', '2002', '_images/Album/HeuresSupplementaires.jpg', 4, 1),
(7, 'Attache Ta Tuque', '2002', '_images/Album/AttacheTaTuque.jpg', 30, 2),
(8, 'Centre Belle 30 décembre 2003', '2004', '_images/Album/AuCentreBell.jpg', 0, 2),
(9, 'La Grand-Messe', '2004', '_images/Album/LaGrandMesse.jpg', 16, 1),
(10, 'Au Grand Théatre de Québec', '2007', '_images/Album/AuGrandTheatreDeQuebec.jpg', 23, 2),
(11, 'Les insucces en Spectacle', '2000', '_images/Album/LesInsuccesEnSpectacle.webp', 19, 2),
(12, 'L\'expédition', '2008', '_images/Album/LExpedition.jpg', 14, 1),
(13, 'Sur Un Air De Déjà Vu', '2008', '_images/Album/SurUnAirDeDejaVu.jpg', 16, 1),
(14, 'Au Zénith de Paris', '2010', '_images/Album/AuZenithDeParis.jpg', 13, 2),
(15, 'Que Du Vent', '2011', '_images/Album/QueDuVent.jpg', 11, 1),
(16, 'Octobre', '2015', '_images/Album/Octobre.jpg', 14, 1),
(17, 'Les Antipodes', '2019', '_images/Album/LesAntipodes.jpg', 10, 1),
(18, 'Les Nuits De Repentigny', '2021', '_images/Album/LesNuitsDeRepentigny.jpg', 23, 1),
(19, 'L\'Amérique Pleure\'', '2021', '_images/Album/AmeriquePleure.jpg', 20, 3),
(20, 'Avec l\'Orchestre Symphonique de Montréal', '2022', '_images/Album/CowboysFringantsOSM.jpg', 18, 2),
(21, 'comédie Musicale \"Pub Royal\"', '2024', '_images/Album/ComediePubRoyal.jpg', 14, 2),
(22, 'Pub Royal', '2024', '_images/Album/PubRoyal.jpg', 13, 1);

-- --------------------------------------------------------

--
-- Structure de la table `apparaitre`
--

CREATE TABLE `apparaitre` (
  `app_personnages` int(11) NOT NULL,
  `app_tounes` int(11) NOT NULL,
  `app_commentaire` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `apparaitre`
--

INSERT INTO `apparaitre` (`app_personnages`, `app_tounes`, `app_commentaire`) VALUES
(1, 1, ''),
(1, 45, ''),
(2, 23, ''),
(3, 17, ''),
(4, 41, ''),
(5, 48, ''),
(6, 11, ''),
(7, 41, ''),
(8, 35, ''),
(9, 31, ''),
(10, 48, ''),
(11, 11, ''),
(12, 65, ''),
(13, 12, ''),
(14, 38, ''),
(15, 9, ''),
(15, 25, ''),
(16, 54, ''),
(17, 28, ''),
(18, 31, ''),
(19, 40, ''),
(20, 36, ''),
(21, 23, ''),
(22, 61, ''),
(23, 16, ''),
(24, 45, ''),
(25, 45, ''),
(26, 44, ''),
(27, 72, ''),
(28, 25, ''),
(29, 13, ''),
(30, 13, ''),
(31, 45, ''),
(32, 13, ''),
(33, 48, ''),
(34, 23, ''),
(35, 13, ''),
(36, 40, ''),
(37, 2, ''),
(38, 48, ''),
(39, 41, ''),
(40, 72, ''),
(41, 3, ''),
(42, 30, ''),
(43, 23, ''),
(44, 2, ''),
(45, 14, ''),
(46, 54, ''),
(47, 72, ''),
(48, 48, ''),
(49, 6, ''),
(50, 72, ''),
(51, 40, ''),
(52, 7, ''),
(53, 72, ''),
(54, 38, ''),
(55, 9, ''),
(56, 13, ''),
(57, 45, ''),
(58, 51, ''),
(59, 1, ''),
(60, 12, ''),
(60, 45, ''),
(60, 54, ''),
(61, 17, ''),
(62, 53, ''),
(63, 61, ''),
(64, 72, ''),
(65, 54, ''),
(66, 25, ''),
(67, 4, ''),
(68, 17, ''),
(69, 8, ''),
(70, 64, ''),
(71, 18, ''),
(72, 29, ''),
(73, 41, ''),
(74, 48, ''),
(75, 14, ''),
(76, 45, ''),
(77, 17, ''),
(78, 2, ''),
(79, 17, ''),
(80, 44, ''),
(81, 4, ''),
(82, 45, ''),
(82, 72, ''),
(83, 14, ''),
(84, 14, ''),
(85, 2, ''),
(86, 27, ''),
(87, 25, ''),
(88, 25, ''),
(89, 68, ''),
(90, 32, ''),
(91, 45, ''),
(92, 12, ''),
(93, 1, ''),
(93, 24, ' (\"voisine de paluer\")'),
(93, 30, ''),
(93, 49, ''),
(94, 1, ''),
(95, 24, ''),
(96, 1, ''),
(97, 27, ''),
(98, 18, ''),
(99, 4, ''),
(100, 45, ''),
(101, 16, ''),
(103, 45, ''),
(104, 30, ''),
(105, 29, ''),
(106, 45, ''),
(107, 72, ''),
(108, 17, ''),
(109, 19, ''),
(110, 15, ''),
(111, 29, ''),
(111, 48, ''),
(112, 4, ''),
(113, 17, ''),
(114, 38, ''),
(115, 61, ''),
(116, 66, ''),
(117, 54, ''),
(118, 6, ''),
(120, 48, ''),
(121, 5, ''),
(121, 24, ''),
(121, 35, ''),
(121, 45, ''),
(121, 72, ''),
(122, 17, ''),
(123, 45, ''),
(124, 35, ''),
(125, 49, ''),
(126, 6, ''),
(127, 30, ''),
(128, 6, ''),
(129, 1, ''),
(130, 35, ''),
(131, 30, ''),
(132, 17, ''),
(133, 66, ''),
(134, 47, ''),
(135, 3, ''),
(136, 29, ''),
(137, 48, ''),
(138, 30, ''),
(139, 39, ''),
(140, 39, ''),
(141, 21, ''),
(142, 70, ''),
(143, 54, ''),
(144, 7, ''),
(144, 54, ''),
(145, 5, ''),
(145, 29, ''),
(146, 29, ''),
(147, 7, ''),
(148, 61, ''),
(149, 21, ''),
(150, 5, ''),
(151, 30, ''),
(152, 24, ''),
(153, 5, ''),
(154, 5, ''),
(155, 17, ''),
(156, 41, ''),
(157, 48, ''),
(158, 4, ''),
(159, 17, ''),
(160, 24, ''),
(161, 30, ''),
(162, 31, ''),
(163, 24, ''),
(164, 3, ''),
(164, 54, ''),
(165, 3, '');

-- --------------------------------------------------------

--
-- Structure de la table `chanter`
--

CREATE TABLE `chanter` (
  `cha_membres` int(11) NOT NULL,
  `cha_tounes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `chanter`
--

INSERT INTO `chanter` (`cha_membres`, `cha_tounes`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 14),
(1, 19),
(1, 21),
(1, 25),
(1, 26),
(1, 27),
(1, 30),
(1, 32),
(1, 34),
(1, 35),
(1, 36),
(1, 37),
(1, 39),
(1, 41),
(1, 43),
(1, 44),
(1, 47),
(1, 56),
(1, 60),
(1, 63),
(1, 69);

-- --------------------------------------------------------

--
-- Structure de la table `composer`
--

CREATE TABLE `composer` (
  `com_membres` int(11) NOT NULL,
  `com_tounes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `composer`
--

INSERT INTO `composer` (`com_membres`, `com_tounes`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(2, 5),
(2, 6),
(2, 7),
(2, 8),
(2, 9),
(2, 10),
(2, 11),
(2, 12),
(2, 14),
(2, 19),
(2, 25),
(2, 26),
(2, 30),
(2, 34),
(2, 35),
(2, 36),
(2, 37),
(2, 39),
(2, 41),
(2, 43),
(2, 44),
(2, 47),
(2, 60),
(2, 63),
(2, 69),
(3, 34),
(3, 39),
(3, 42),
(3, 43),
(5, 21),
(5, 27),
(5, 32),
(5, 42),
(5, 56);

-- --------------------------------------------------------

--
-- Structure de la table `ecrire`
--

CREATE TABLE `ecrire` (
  `ecr_membres` int(11) NOT NULL,
  `ecr_tounes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `ecrire`
--

INSERT INTO `ecrire` (`ecr_membres`, `ecr_tounes`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 21),
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(2, 5),
(2, 6),
(2, 7),
(2, 8),
(2, 9),
(2, 10),
(2, 11),
(2, 12),
(2, 14),
(2, 19),
(2, 21),
(2, 25),
(2, 26),
(2, 30),
(2, 34),
(2, 35),
(2, 36),
(2, 37),
(2, 39),
(2, 41),
(2, 43),
(2, 44),
(2, 47),
(2, 60),
(2, 63),
(2, 69),
(5, 21),
(5, 27),
(5, 32),
(5, 36),
(5, 56);

-- --------------------------------------------------------

--
-- Structure de la table `famille`
--

CREATE TABLE `famille` (
  `fam_id` int(11) NOT NULL,
  `fam_libelle` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `famille`
--

INSERT INTO `famille` (`fam_id`, `fam_libelle`) VALUES
(1, 'vocal'),
(2, 'cordes'),
(3, 'vent'),
(4, 'percussion');

-- --------------------------------------------------------

--
-- Structure de la table `inclure`
--

CREATE TABLE `inclure` (
  `inc_piste` varchar(11) DEFAULT NULL,
  `inc_albums` int(11) NOT NULL,
  `inc_tounes` int(11) NOT NULL,
  `inc_duree` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `inclure`
--

INSERT INTO `inclure` (`inc_piste`, `inc_albums`, `inc_tounes`, `inc_duree`) VALUES
('1', 1, 1, '3:36'),
('2', 1, 2, '2:50'),
('3', 1, 3, '3:40'),
('4', 1, 4, '3:23'),
('5', 1, 5, '3:16'),
('6', 1, 6, '3:52'),
('7', 1, 7, '3:39'),
('8', 1, 8, '2:34'),
('9', 1, 9, '4:38'),
('10', 1, 10, '2:39'),
('11', 1, 11, '3:20'),
('12', 1, 12, '4:46'),
('1', 2, 13, '0'),
('2', 2, 14, '0'),
('3', 2, 15, '0'),
('4', 2, 16, '0'),
('5', 2, 17, '0'),
('6', 2, 18, '0'),
('7', 2, 19, '0'),
('7', 2, 20, '0'),
('8', 2, 21, '0'),
('9', 2, 22, '0'),
('10', 2, 23, '0'),
('11', 2, 24, '0'),
('12', 2, 25, '0'),
('4', 3, 2, '0'),
('8', 3, 13, '0'),
('2', 3, 14, '0'),
('5', 3, 16, '0'),
('9', 3, 19, '0'),
('9', 3, 20, '0'),
('11', 3, 25, '0'),
('1', 3, 26, '0'),
('3', 3, 27, '0'),
('6', 3, 28, '0'),
('7', 3, 29, '0'),
('10', 3, 30, '0'),
('12', 3, 31, '0'),
('13', 3, 32, '0'),
('13', 3, 33, '0'),
('14', 3, 34, '0'),
('15', 3, 35, '0'),
('16', 3, 36, '0'),
('1', 5, 37, '0'),
('2', 5, 38, '0'),
('3', 5, 39, '0'),
('4', 5, 40, '0'),
('5', 5, 41, '0'),
('6', 5, 42, '0'),
('7', 5, 43, '0'),
('8', 5, 44, '0'),
('9', 5, 45, '0'),
('10', 5, 46, '0'),
('11', 5, 47, '0'),
('12', 5, 48, '0'),
('13', 5, 49, '0'),
('14', 5, 50, '0'),
('14', 5, 51, '0'),
('12', 5, 54, '0'),
('1', 6, 52, '0'),
('2', 6, 53, '0'),
('3', 6, 54, '0'),
('4', 6, 55, '0'),
('22', 7, 2, '0'),
('26', 7, 12, '0'),
('10', 7, 14, '0'),
('17', 7, 16, '0'),
('12', 7, 19, '0'),
('13', 7, 20, '0'),
('18', 7, 25, '0'),
('21', 7, 26, '0'),
('2', 7, 27, '0'),
('9', 7, 29, '0'),
('8', 7, 32, '0'),
('6', 7, 33, '0'),
('7', 7, 34, '0'),
('3', 7, 35, '0'),
('30', 7, 36, '0'),
('27', 7, 37, '0'),
('14', 7, 38, '0'),
('11', 7, 39, '0'),
('1', 7, 40, '0'),
('16', 7, 41, '0'),
('28', 7, 43, '0'),
('4', 7, 47, '0'),
('5', 7, 48, '0'),
('24', 7, 49, '0'),
('15', 7, 50, '0'),
('29', 7, 51, '0'),
('19', 7, 52, '0'),
('20', 7, 56, '0'),
('23', 7, 57, '0'),
('25', 7, 58, '0'),
('1', 9, 59, '0'),
('2', 9, 60, '0'),
('3', 9, 61, '0'),
('4', 9, 62, '0'),
('5', 9, 63, '0'),
('6', 9, 64, '0'),
('7', 9, 65, '0'),
('8', 9, 66, '0'),
('9', 9, 67, '0'),
('10', 9, 68, '0'),
('11', 9, 69, '0'),
('12', 9, 70, '0'),
('13', 9, 71, '0'),
('14', 9, 72, '0'),
('15', 9, 73, '0'),
('16', 9, 74, '0'),
('15', 10, 2, '0'),
('14', 10, 13, '0'),
('16', 10, 25, '0'),
('6', 10, 34, '0'),
('19', 10, 37, '0'),
('12', 10, 41, '0'),
('10', 10, 43, '0'),
('5', 10, 49, '0'),
('23', 10, 60, '0'),
('1', 10, 61, '0'),
('9', 10, 62, '0'),
('22', 10, 63, '0'),
('7', 10, 64, '0'),
('17', 10, 65, '0'),
('13', 10, 66, '0'),
('2', 10, 67, '0'),
('18', 10, 68, '0'),
('4', 10, 69, '0'),
('21', 10, 70, '0'),
('3', 10, 72, '0'),
('11', 10, 73, '0'),
('20', 10, 74, '0'),
('8', 10, 75, '0'),
('15', 10, 76, '0'),
('11', 11, 1, '0'),
('6', 11, 3, '0'),
('3', 11, 4, '0'),
('16', 11, 5, '0'),
('18', 11, 6, '0'),
('14', 11, 7, '0'),
('17', 11, 8, '0'),
('12', 11, 9, '0'),
('19', 11, 10, '0'),
('15', 11, 11, '0'),
('2', 11, 24, '0'),
('9', 11, 28, '0'),
('8', 11, 30, '0'),
('13', 11, 45, '0'),
('1', 11, 77, '0'),
('4', 11, 78, '0'),
('5', 11, 79, '0'),
('10', 11, 80, '0'),
('4', 11, 162, '0'),
('7', 11, 168, '0'),
('1', 12, 81, '4:45'),
('2', 12, 82, '2:12'),
('3', 12, 83, '3:32'),
('4', 12, 84, '3:03'),
('5', 12, 85, '3:09'),
('6', 12, 86, '3:37'),
('7', 12, 87, '2:50'),
('8', 12, 88, '3:54'),
('9', 12, 89, '4:32'),
('10', 12, 90, '4:33'),
('11', 12, 91, '2:45'),
('12', 12, 92, '3:30'),
('13', 12, 93, '2:47'),
('14', 12, 94, '5:33'),
('1', 13, 95, '0'),
('2', 13, 96, '0'),
('3', 13, 97, '0'),
('4', 13, 98, '0'),
('5', 13, 99, '0'),
('6', 13, 100, '0'),
('7', 13, 101, '0'),
('8', 13, 102, '0'),
('9', 13, 103, '0'),
('10', 13, 104, '0'),
('11', 13, 105, '0'),
('12', 13, 106, '0'),
('13', 13, 107, '0'),
('14', 13, 108, '0'),
('15', 13, 109, '0'),
('16', 13, 110, '0'),
('3', 14, 41, '0'),
('13', 14, 60, '0'),
('10', 14, 62, '0'),
('11', 14, 63, '0'),
('2', 14, 66, '0'),
('1', 14, 81, '0'),
('4', 14, 83, '0'),
('6', 14, 84, '0'),
('5', 14, 85, '0'),
('7', 14, 88, '0'),
('8', 14, 89, '0'),
('12', 14, 91, '0'),
('9', 14, 94, '0'),
('1', 15, 111, '0'),
('2', 15, 112, '0'),
('3', 15, 113, '0'),
('4', 15, 114, '0'),
('5', 15, 115, '0'),
('6', 15, 116, '0'),
('7', 15, 117, '0'),
('8', 15, 118, '0'),
('9', 15, 119, '0'),
('10', 15, 120, '0'),
('11', 15, 121, '0'),
('1', 16, 122, '3:36'),
('2', 16, 123, '3:41'),
('3', 16, 124, '2:41'),
('4', 16, 125, '4:17'),
('5', 16, 126, '4:25'),
('6', 16, 127, '3:59'),
('7', 16, 128, '3:08'),
('8', 16, 129, '3:03'),
('9', 16, 130, '4:25'),
('10', 16, 131, '1:02'),
('11', 16, 132, '4:22'),
('12', 16, 133, '4:16'),
('13', 16, 134, '4:19'),
('14', 16, 135, '3:42'),
('1', 17, 136, '4:44'),
('2', 17, 137, '3:59'),
('3', 17, 138, '4:34'),
('4', 17, 139, '4:07'),
('5', 17, 140, '3:54'),
('6', 17, 141, '3:17'),
('7', 17, 142, '3:40'),
('8', 17, 143, '3:51'),
('9', 17, 144, '3:06'),
('10', 17, 145, '3:24'),
('1', 18, 146, '2:04'),
('2', 18, 147, '3:43'),
('3', 18, 148, '3:43'),
('4', 18, 149, '2:22'),
('5', 18, 150, '3:02'),
('6', 18, 151, '1:07'),
('7', 18, 152, '1:07'),
('8', 18, 153, '0:52'),
('9', 18, 154, '2:40'),
('10', 18, 155, '2:55'),
('11', 18, 156, '2:27'),
('12', 18, 157, '3:46'),
('13', 18, 158, '0:46'),
('14', 18, 159, '2:17'),
('15', 18, 160, '2:18'),
('16', 18, 161, '4:15'),
('17', 18, 162, '0:28'),
('18', 18, 163, '3:20'),
('19', 18, 164, '2:25'),
('20', 18, 165, '0:32'),
('21', 18, 166, '3:03'),
('22', 18, 167, '2:43'),
('23', 18, 168, '3:46'),
('7', 20, 34, '3:59'),
('1', 20, 37, '4:20'),
('10', 20, 43, '5:15'),
('13', 20, 49, '3:20'),
('18', 20, 60, '5:09'),
('4', 20, 62, '4:38'),
('8', 20, 63, '3:58'),
('3', 20, 66, '3:14'),
('5', 20, 89, '5:06'),
('11', 20, 94, '5:31'),
('9', 20, 122, '3:44'),
('2', 20, 125, '4:15'),
('14', 20, 130, '4:22'),
('16', 20, 135, '3:37'),
('17', 20, 136, '4:33'),
('6', 20, 137, '3:38'),
('15', 20, 143, '4:03'),
('12', 20, 145, '3:47'),
('3', 21, 49, '0'),
('13', 21, 63, '0'),
('7', 21, 73, '0'),
('4', 21, 120, '0'),
('9', 21, 135, '0'),
('6', 21, 136, '0'),
('5', 21, 137, '0'),
('8', 21, 142, '9'),
('2', 21, 143, '0'),
('1', 21, 170, '0'),
('10', 21, 171, '9'),
('12', 21, 173, '0'),
('11', 21, 175, '0'),
('14', 21, 178, '0'),
('1', 22, 169, '1:03'),
('2', 22, 170, '4:16'),
('3', 22, 171, '5:14'),
('4', 22, 172, '3:39'),
('5', 22, 173, '7:16'),
('6', 22, 174, '1:20'),
('7', 22, 175, '2:34'),
('8', 22, 176, '4:23'),
('9', 22, 177, '1:04'),
('10', 22, 178, '2:24'),
('11', 22, 179, '3:44'),
('12', 22, 180, '4:01'),
('13', 22, 181, '1:39');

-- --------------------------------------------------------

--
-- Structure de la table `instruments`
--

CREATE TABLE `instruments` (
  `ins_id` int(11) NOT NULL,
  `ins_libelle` varchar(100) DEFAULT NULL,
  `ins_famille` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `instruments`
--

INSERT INTO `instruments` (`ins_id`, `ins_libelle`, `ins_famille`) VALUES
(1, 'voix', 1),
(2, 'guitare', 2),
(3, 'batterie', 4),
(4, 'basse', 2),
(5, 'mandoline', 2),
(6, 'piano', 2),
(7, 'accordeon', 3),
(8, 'kazoo', 3),
(9, 'flûte', 3),
(10, 'violon', 2);

-- --------------------------------------------------------

--
-- Structure de la table `jouer`
--

CREATE TABLE `jouer` (
  `jou_membres` int(11) NOT NULL,
  `jou_instruments` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `jouer`
--

INSERT INTO `jouer` (`jou_membres`, `jou_instruments`) VALUES
(1, 1),
(1, 2),
(1, 8),
(2, 1),
(2, 2),
(3, 1),
(3, 5),
(3, 6),
(3, 7),
(3, 9),
(3, 10),
(4, 4),
(5, 1),
(5, 3);

-- --------------------------------------------------------

--
-- Structure de la table `membres`
--

CREATE TABLE `membres` (
  `mem_id` int(11) NOT NULL,
  `mem_prenom` varchar(100) DEFAULT NULL,
  `mem_nom` varchar(100) DEFAULT NULL,
  `mem_photo` varchar(100) DEFAULT NULL,
  `mem_naissance` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `membres`
--

INSERT INTO `membres` (`mem_id`, `mem_prenom`, `mem_nom`, `mem_photo`, `mem_naissance`) VALUES
(1, 'Karl', 'Tremblay', '_images/Membres/Karl.webp', '1976-10-28'),
(2, 'Jean-Francois', 'PAUZÉ', '_images/Membres/JF.webp', '1975-09-12'),
(3, 'Marie-Annick', 'LÉPINE', '_images/Membres/Marie.webp', '1978-11-05'),
(4, 'Jérôme', 'DUPRAS', '_images/Membres/Jerome.webp', '1979-11-03'),
(5, 'Dominique', 'LEBEAU', '_images/Membres/Domlebo.webp', '1975-06-01');

-- --------------------------------------------------------

--
-- Structure de la table `personnages`
--

CREATE TABLE `personnages` (
  `per_id` int(11) NOT NULL,
  `per_nom` varchar(100) DEFAULT NULL,
  `per_bio` varchar(4000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `personnages`
--

INSERT INTO `personnages` (`per_id`, `per_nom`, `per_bio`) VALUES
(1, 'le beau Andre', 'Apparaissant dans la première chanson composée par Karl et J-F, il était presque sombré dans l\'oubli total jusqu\'au jour où il refit surface dans La noce en tant que membre de l\'obscur groupe Carignan avec son comparse de toujours, Le grand Gerry et Jimmy le chanteur de noces.'),
(2, 'Le Grand Antonio', 'Montréalais mythique décédé en 2003. Le Grand Antonio a fasciné l\'univers collectif québécois en réalisant nombre d\'exploits relatifs à sa force physique (Il a tiré des autobus avec ses cheveux, soulevé des voitures avec son petit doigt... etc...) Les Cowboys y font référence dans la chanson La gosse à Comeau.'),
(3, 'Les Beatles', 'Groupe anglais de musique pop fondé à Liverpool en 1962 et dissous en 1970 à Londres. Goldie affirme les avoir connu dans la chanson qui porte son nom.'),
(4, 'Les Beatniks', 'Adeptes de la beat generation, un mouvement qui naquit dans les années 50 et qui s\'affirmait en prenant le contre-pied du mode de vie américain traditionnel. Ce mouvement a été par la suite associé au peace and love des années 60. Dans La manifestation, les beatniks (aussi appelés hippies) sont représentés par une horde de manifestants issus du cégep du Vieux-Montréal.'),
(5, 'Bob Beers', 'Gardien de but fictif qui connut de nombreux déboires dont celui de s\'être fait « passer dessus par l\'autobus de l\'équipe ». Aux dernières nouvelles, il serait maintenant propriétaire de la salle de bowling pour laquelle il travaillait, à Saskatoon.'),
(6, 'Momon Bleau', 'Concierge au collège de L\'Assomption et ancien collègue de travail de J-F Pauzé, Raymond Bleau de son vrai nom fait partie intégrante de l\'œuvre des Cowboys Fringants. Bien que son nom ne soit nommé qu\'une seule fois dans une chanson (Le hurlot), il serait à l\'origine de plusieurs personnages de l\'œuvre des CF et son célèbre leitmotiv« À va être bonne à\' soir » est la pierre angulaire de la chanson Le shack à Hector. On l\'a aussi connu comme interprète de Marcel Galarneau dans le vidéo clip du même nom.'),
(7, 'les Bœufs', 'Expression populaire québécoise pour désigner les policiers. Dans La manifestation les « bœufs » sont fidèles à leur réputation et « rentrent dans le tas ».'),
(8, 'un Bonhomme de Cap-Chat', 'Personnage à la voix éteinte qui embarque le « pouceux » en auto-stop sur une route de Gaspésie. On sait de lui qu\'il conduit une « vieille Nissan Sentra avec des sièges en styro-mousse », qu\'il n\'est pas jasant et qu\'il est originaire de Cap-Chat...'),
(9, 'une Bourgeoise au cul ben gros', 'Femme aux attraits généreux qui se fait arnaquer par le voyou de la chanson du même nom. Celui-ci vivra quelques temps à son crochet avant qu\'il ne se lasse de cet existence dorée.'),
(10, 'Brisebois', 'Patrice de son prénom. Joueur de hockey professionnel qui porte les couleurs du Canadien de Montréal (2002) et qui a fait face à plusieurs critiques et rumeurs de transactions au cours de sa carrière. Les CF y font référence dans la chanson Salut mon Ron, un portrait humoristique des émissions de ligne ouvertes sportives sur les ondes radiophoniques.'),
(11, 'Brown Sugar', 'Nom que porte le cheval dans la chanson Le hurlot.'),
(12, 'Vincent Caza', '(auteur-compositeur-interprète, acteur, ex-roadie, gars de party)\r\nVéritable mythe sur deux pattes (ou à quatre pattes selon sa consommation d\'\'alcool), Vincent Caza est dans l\'entourage des Cowboys Fringants depuis plus de 10 ans. Ami de longue date, il composera en 1998 la musique de la chanson Grosse Femme (Sur mon Canapé) et fit un caméo remarqué dans le clip de Marcel Galarneau. Crevant litéralement l\'\'écran, il obtint en 2002 le rôle-titre du vidéo Mon chum Rémi. Un premier triomphe en tant qu\'\'\'acteur !\r\nMais c\'\'est comme « roadie » des Cowboys que le « Gentil Vagabond » obtiendra la consécration alors qu\'\'il se voit ovationné chaque fois qu\'il entre sur scène pour accorder les guitares. Après seulement quelques spectacles, il est nommé « roadie le plus populaire au Québec » par l\'équipe technique. En tournée, il repoussera les limites de la pochetronnerie en écumant les bars et les tripots les plus louches du Québec au rythme des pérépéties toujours plus loufoques les unes que les autres. Il mit cependant un terme à sa carrière de « roadie » en 2003 après plusieurs catastrophes scéniques et autres anecdotes de boisson qui font désormais partie du « folklore Caza. » En avril 2004, tel un Guy Lafleur dans l\'\'uniforme des Rangers, il reprend du service pour un spectacle en France. C\'\'est le dernier tour de piste pour le « bum de St-Gérard. » Il finit sa carrière en beauté après s\'\'être vu expulsé coup sur coup de la tour Eiffel et du Sacré-Cœur pour ivresse sur la voie publique. Un fantôme d\'hôtel lui portera le coup de grâce en lui faisant comprendre dans un dialecte inconnu qu\'\'il doit réorienter sa carrière.\r\nL\'\'incorrigible gars de party travaille aujourd\'hui à la préparation de son premier album solo qui promet. Une autre étape dans la vie de cette légende vivante. À suivre...'),
(13, 'Chantal', 'Fille qui s\'est fait embrasser sur le siège d\'un Continental et qui est parti pour rejoindre le Grand Gerry. On en sait malheureusement très peu sur elle...'),
(14, 'la Chanteuse conne', 'Ne vise personne en particulier mais on en connaît plusieurs à qui le qualificatif de « chanteuse conne » collerait parfaitement. Un clin d\'œil à ces bulletins de nouvelles qui présentent des nouvelles qui n\'en sont pas vraiment...'),
(15, 'la p\'\'tite Chartrand', 'Premier amour de J-F alors qu\'\'il avait 9-10 ans. Selon ses dires, elle ne l\'\'a cependant jamais su...'),
(16, 'le Chico', 'Imbécile qui a payé le prix pour avoir ridiculisé un gars plus costaud que lui. Comme on dit, il s\'\'est fait sacrer une bonne volée !'),
(17, 'mes Chums d\'\'la Baie James', 'Amis du personnage central de la chanson M\'\'a vivre avec toi. En référence aux grands travaux des années 70 à la Baie James où des gens de partout au Québec furent engagés pour y travailler. Ils devaient alors s\'\'exiler au nord du Québec, loin de leur patelin pour participer à l\'\'érection des grands barrages hydro-électriques.'),
(18, 'mes Chums d\'\'la rue Cuvillier', 'Amis plus ou moins recommandables du voyou originaires de cette rue qui est située au cœur du quartier défavorisé d\'\'Hochelaga-Maisonneuve, à Montréal.'),
(19, 'Cindy', 'Héroïne de la chanson Heavy métal. Dans les années 80, elle a vécu une liaison sporadique qui a « duré le temps d\'\'un été » avec un fan de musique heavy métal. On la reconnaissait à « ses Adidas Gazelle » et ses « cheveux longs avec des tresses qui pendaient jusqu\'\'aux fesses ». Elle subira cependant un changement de look drastique quelques mois plus tard, troquant ses vêtements de « rockeuse » pour des habits aux couleurs pastel. On n\'\'a pas de nouvelles d\'\'elle depuis 1987...'),
(20, 'mon Coloc', 'Colocataire du personnage de la chanson Un p\'\'tit tour dont seule information disponible à son sujet est qu\'\'il \'\'travaille su\'\'l shift de nuit \'\'.'),
(21, 'Comeau', 'Personnage central de La gosse à Comeau dont les déboires reliés à l\'\'hypertrophie d\'\'un de ses testicules le conduisirent partout à travers le monde. Après avoir acquis une notoriété planétaire, il mourut en 1980, léguant sa gosse à la science. On sait aujourd\'\'hui ce que les chercheurs y ont trouvé : il avait en fait une gosse de cheval !'),
(22, 'sa Copine', 'Copine de Ti-Cul. Elle encouragera ce dernier à faire le choix de vivre pour sa passion.'),
(23, 'Yves Corbeil', 'Animateur d\'\'émissions de télévision affiliées à Loto-Québec (tirages en tout genres) qui a fait sa renommée avec des phrases aussi célèbres que « le six avec la petite barre en dessous ». Il est aussi connu comme doubleur au cinéma et prête sa voix à plusieurs acteurs non sans provoquer certains éclats de rire. Il est cité tout à fait gratuitement dans la chanson Maurice au bistro et selon J-F Pauzé, c\'\'est la pire rime de l\'\'histoire des Cowboys Fringants (ex aequo avec The Box et Juke-box dans La culbute).'),
(24, 'le Cousin policier', 'Discute avec le député dans La noce. Comme quoi dans un party les policiers on des affinités avec les politiciens...'),
(25, 'le Curé Boilard', 'Curé qui ne déteste guère le vice et les plaisirs charnels. Il a d\'\'ailleurs fait souvent l\'\'objet d\'\'enquête par le Vatican pour ses a,finalement la vie cléricale pour convoler en juste noce avec la mère de la mariée !'),
(26, 'Alexandre Daigle', 'Ancien premier choix de la ligue nationale de hockey qui était voué à une carrière glorieuse mais qui a abandonné après quelques années par manque de passion et de volonté. Les CF y font un clin d\'\'œil dans la chanson La polyvalente.'),
(27, 'Paul Daraîche', 'Paul Daraîche est dans le domaine de la musique country depuis environ 30 ans. Membre de la célèbre famille Daraîche, véritable institution de la musique country québécoise, il a ammorcé sa carrière il y a plus de 30 ans au sein de groupes pop dont Les Loups Blancs, les Sinners et Le Soleil pour ensuite contribuer aux albums de sa soeur Julie Daraîche, la « Reine du country ». Ils font carrière ensemble depuis plusieurs années avec la fille de Paul, Katia et celle de Julie, Dani. Sa complicité de longue date avec Patrick Norman et Joey Tardif ainsi que sa générosité artistique font du « Joe Cocker du country québécois » un véritable incontournable.'),
(28, 'Dédé', 'Inspiré par la mort d\'\'une connaissance de J-F arrivée subitement en juin 1993 quelques temps après la conquête de la coupe Stanley par les Canadiens de Montréal. Dédé est un mélange de quelques personnes cotoyées par J-F lors de son adolescence.'),
(29, 'le vieux bonhomme Delage', 'Le bonhomme Delage est tout simplement un vieux caractériel à la personnalité limite qui n\'\'hésiterait pas à tuer quelqu\'\'un pour une niaiserie comme en fait foi la chanson Marcel Galarneau. Ses années dans une milice d\'\'extrême-droite lui ont valu d\'\'être amputé des deux pieds puisqu\'\'il aurait marché sur une mine lors d\'\'un entraînement militaire. C\'\'est pour cette raison qu\'\'il se déplace aujourd\'\'hui à l\'\'aide d\'\'une « marchette ».'),
(30, 'la fille du vieux bonhomme Delage', 'Femme un peu naïve qui a été élevé dans la terreur d\'\'un père fou. Elle s\'\'en fait « passer une petite vite » par Marcel Galarneau qui lui vend une Chevette au lieu d\'\'une Corvette...'),
(31, 'le Député', 'En vrai politicien, le député de La noce serre la main à tous les gens en présence pour « s\'\'acheter » des votes aux prochaines élections. Ce personnage est aussi inspiré de plusieurs politiciens qui ne détestent pas l\'\'alcool... Et comme la justice est souvent différente pour les juges, les policiers et les politiciens, notre bon député se tirera d\'\'affaire après avoir frappé un piéton alors qu\'\'il était au volant « de son char paqueté ». Il a même été réélu comme quoi, la mémoire collective est déficiente au Québec...'),
(32, 'l\'\'abée Desmarais', 'Curé dans Marcel Galarneau. On ne lui connaît pas de caractéristiques spécifiques sinon que ses sermons sont de véritables somnifères.'),
(33, 'Gilbert Dionne', 'Ex-joueur de hockey qui évolua notamment pour le Canadien de Montréal au début des années 90. Reconnu pour ses commentaires loufoques beaucoup plus que pour son talent, celui qu\'\'on surnommait « le king » est aujourd\'\'hui sombré dans l\'\'oubli le plus total.'),
(34, 'le Docteur', 'Portrait typique du docteur de campagne québécois qui se déplaçait à domicile pour soigner ses patients. Et comme tous les docteurs de l\'\'époque, il avait une certaine difficulté à émettre un bon diagnostic...'),
(35, 'le Douanier', 'C\'\'est ce douanier zélé qui fit la découverte de la fameuse contrebande de soie dentaire de Marcel Galarneau.'),
(36, 'Mario Dubé', 'Meilleur ami du personnage central de la chanson Heavy métal, Mario Dubé est un de ces faire-valoir classique qui accompagnent les héros. Petit et laid, il rêve d\'\'avoir une blonde (voire une relation sexuelle) mais se fait toujours devancer par ses amis. Il faut dire que son flagrant manque de subtilité ne l\'\'aide guère. Il fait toujours des « lifts » à ses amis avec son Duster et ceux-ci ne lui payent jamais d\'\'essence. Il pourrait se sentir exploité mais non : Mario est heureux car il se contente des petits plaisirs de la vie tels qu\'\'un gros joint, une cassette de Ozzy et un bon hot-chicken au restaurant Broadway à trois heures du matin.'),
(37, 'Claude Dubois', 'Chanteur québécois qui a marqué plusieurs générations avec ses innombrables succès (La rue Sanguinet, Comme un million de gens, Bébé j\'\'a joue la toune etc...) et qui défraya les manchettes pour ses nombreuses frasques reliées à la drogue. Celui qu\'\'on surnommait « le bum » est cité tout à fait gratuitement dans Awikatchikaën.'),
(38, 'Reggie Dunlop', 'Personnage incarné par Paul Newman dans le film  Lancé frappé (v.f. de Slap-shot) où il joue le rôle d\'\'un joueur et entraîneur d\'\'une équipe de fiers-à-bras.'),
(39, 'les Écolos', 'Assistés sociaux qui sont de toutes les manifestations pro-écologiques. Ils distribuent des tracts de Greenpeace aux gens présents et s\'\'en retournent chez eux sans que quoi que ce soit ait changé. Ils peuvent au moins se dire qu\'\'ils ont essayé, eux...'),
(40, 'Elvis', '(Elvis Presley) Chanteur et acteur de cinema américain (Tupelo 1935 - Memphis 1977). Celui que l\'\'on surnommait le « King » connut une immense popularité dès 1956 et influença profondément les goûts musicaux de la jeunesse de son époque. Son nom est cité comme référence dans la chanson Camping Ste-Germaine.'),
(41, 'Évangéline', 'Fille au caractère bouillant et ancienne fanatique du groupe Kashtin, elle est l\'\'héroïne de la chanson qui porte son nom. Serveuse de restaurant de carrière (Mandarin, Red Lobster, St-Hubert) elle est devenue très aigrie avec le temps puisqu\'\'elle a le sentiment d\'\'avoir raté sa vie. Aujourd\'\'hui célibataire, elle ne veut plus rien savoir des hommes et passe ses soirées dans les bars de karaoké à chanter les chansons de son idole Lara Fabian...'),
(42, 'un Ex-prisonnier', 'Il est de retour « en dedans » depuis quelques mois après une altercation dans un bar. Il a pris deux ans de prison pour voies de faits graves pour avoir tabasser un chico...'),
(43, 'la Femme à barbe', 'Dans l\'\'univers des cirques et des freaks shows, le cliché de la femme à barbe à été véhiculé autant que ceux de l\'\'homme éléphant et des nains à moignons. Les Cowboys n\'\'y ont donc pas fait exception et ils y font référence dans La gosse à Comeau.'),
(44, 'une Femme rondelette', 'Personnage qui, dans l\'\'univers un peu surréaliste d\'\'Awikatchikaën, a fait cuire « 4-5000 omelettes ».'),
(45, 'le géant Ferré', 'Célèbre lutteur des années 70 et 80 qui contribuera à l\'\'âge d\'\'or de la lutte. Qui ne se souvient pas de ses combats d\'\'anthologie avec entre autres Hulk Hogan et de ses fameux coups de pieds. Atteint de gigantisme il est décédé il y a quelques années.'),
(46, 'Ange-Albert Filion', 'Propriétaire du Resto-bar Les Champions, haut lieu du karaoké.'),
(47, 'un Forain', 'Escroc qui a détroussé le pauvre Jay-Pee Labrosse au jeu du gun à plomb.'),
(48, 'Ron Fournier', 'Ancien arbitre de la ligue nationale de hockey et animateur d\'\'émission de lignes ouvertes sportives à la radio, Ron Fournier est un personnage coloré aux opinions franches. Son expression célèbre « pas pire, pas pire, pas pire... » et son sens de l\'\'humour font de lui un incontournable du monde du sport. La chanson « Salut mon Ron » lui rend d\'\'ailleurs hommage.'),
(49, 'Fu Man Chu Laï Lou', 'Fu Man Chu est un personnage assez mystérieux issu de la période 1996-97 des CF (celle de l\'\'écriture des textes en une demi-heure !). Vivant dans un égout et étant selon la chanson « un Chinois très très fou », il causera malgré lui le suicide de Dieudonné Rastapopoulos après avoir gagné à la Mini... Un personnage qu\'\'on ne devrait plus revoir.'),
(50, 'Gars aux cheveux grichous', '...(qui n\'\'avait pas de dentier et qui portait un chandail de loup) Champion de pétanque, de fers et du jeu de poches qui a battu Jay-Pee Labrosse lors de l\'\'épique « tournoi de pétanque annuel du maire ». C\'\'est aussi lui le propriétaire du « Station Wagon peinturé au rouleau » qui a servi de véhicule à Gina Pinard pour quitter le camping en catimini. Une rumeur veut que son véritable nom soit Mario Dubé...'),
(51, 'un Gars avec une « coupe champignon »', 'Personnage qui possède cette coupe de cheveux affreuse qui marqua une partie des années 80 et 90. On en sait peu sur lui sinon qu\'\'il joue de la guitare-piano et qu\'\'il a mis enceinte Cindy. Des rumeurs persistantes voudraient cependant qu\'\'il se prénomme Gerry et qu\'\'il soit grand...'),
(52, 'le Gars de Donaconna', 'Un tata qui est originaire de Donnacona et qui demeure maintenant à Platsburgh.'),
(53, 'les Gars de l\'\'équipe de balle donnée', 'Coéquipiers de Jay-Pee Labrosse qui ont, bien malgré eux, causé le départ de Gina.'),
(54, 'le Gars des nouvelles', 'Lecteur de nouvelles (qui n\'\'en sont pas vraiment) qui voit sa vie se terminer abruptement sur les rails de la station de métro Frontenac.'),
(55, 'Gaétane', 'Personnage mythique de la chanson du même nom qui fut le premier grand succès du groupe. Le destin de Gaétane est très nébuleux depuis qu\'\'elle est partie  « par un soir de pluie ». En fait, personne ne sait ce qu\'\'elle est devenue. Une rumeur veut que Gaétane soit un pseudonyme et qu\'\'elle vive aujourd\'\'hui sous sa véritable identitée. Elle reste à ce jour la plus grande énigme de l\'\'histoire des Cowboys Fringants. On l\'\'aurait aperçue un soir à la brasserie chez Willie...'),
(56, 'Marcel Galarneau', 'Garagiste et vendeur de « chars usagés », la renommée de Marcel Galarneau n\'\'est plus à faire. Connu par tous pour ses arnaques minables et ses combines cousues de fil blanc, le garagiste de St-Hilaire est aujourd\'\'hui en probation pour cinq ans après avoir purgé une peine de 2 mois de prison pour contrebande.'),
(57, 'le Gérant de la caisse populaire', 'Type un peu emmerdant comme on en rencontre trop souvent. Le genre de gars pas habitué d\'\'être saoul qui tente de te vendre un RÉER en plein party de noces. La seule façon de se défaire de ce genre d\'\'individu est de « feinter l\'\'envie de pisser » et d\'\'espérer qu\'\'il ne te dise pas qu\'\'il a lui aussi envie...'),
(58, 'notre Gérant', 'Claude Larivée de son vrai nom est immortalisé à jamais dans La toune cachée. Gérant des Cowboys et véritable force obscure de l\'\'industrie musicale québécoise, il est aussi à la tête des disques de la Tribu. Peu de gens peuvent se vanter d\'\'avoir vu Claude Larivée qui, selon le mythe, préserverait son mystérieux aura. Il ne serait en fait qu\'\'une voix qui parle au téléphone...'),
(59, 'le grand Gerry', 'Musicien du groupe Carignan (il joue de la guitare-piano), le grand Gerry a fait sa renommée comme étant le plus grand coureur de jupons au nord du Rio Grande. Chaud lapin, il a plusieurs conquêtes à son actif dont les plus connues sont la belle Lucille (Les routes du Bonheur) et Chantal (Impala blues). Son palmarès compte aussi des filles comme Évangéline, Gina Pinard et la femme à Yves Corbeil...'),
(60, 'le beau Gino', 'Personnage ambigu qui aime bien imiter des filles en chantant mais qui est à la base un spectaculaire étalon. Son vieux truc fonctionne toujours : Il se rend au Resto-bar « Les Champions » et chante du Isabelle Boulay au karaoké. Ensuite, il regarde une fille droit dans les yeux et lui demande : « As-tu 25 cents ? Parce que j\'\'avais toujours dit à ma mère que je lui téléphonerais quand je rencontrerais la femme de ma vie. ». À ce moment, la fille craque et il l\'\'emmène au motel « le Flambeau » où il a des rabais tellement il est bon client !'),
(61, 'Goldie', 'Figure connue dans le jet set international Goldie aurait une trentaine d\'\'albums à son actif. Au cours des années, il aurait fréquenté les grands de ce monde et vendu des millions de disques. Même si ses belles années sont derrière lui, le nom de Goldie ferait encore frémir les femmes lorsqu\'\'il est prononcé. Il vit toujours dans sa villa de St-Sauveur avec Richard Michel, son amant (il n\'\'a pas fait son comming out mais c\'\'est un scoop qu\'\'on vous donne : il est gai!) et prépare sa grande vente de garage où il vendra entre autres, sa « grosse Ford de l\'\'année » offerte par Guy, son gérant, en 1968. Georges-Hébert Germain est en train d\'\'écrire sa biographie non autorisée où on apprendra que toutes ses blondes de l\'\'époque étaient en fait des façades pour masquer son homosexualité. On verra que c\'\'est Guy qui payait les filles pour qu\'\'elles fassent semblant de sortir avec lui. Et selon ce qu\'\'on a appris, Guy aurait même organisé son mariage pour faire taire les rumeurs de sa relation avec Michel Girouard qui commençaient à circuler. Il a d\'\'ailleurs fait beaucoup d\'\'argent en vendant les cassettes de ce mariage... Sacré Guy !'),
(62, 'le Gourmand', 'Inspiré de l\'\'homme le plus pesant de l\'\'histoire (selon le livre Guiness des records) qui était si gros qu\'\'on dû démolir le mur de sa chambre pour le sortir à sa mort.'),
(63, 'son Grand frère', '(Frère de Ti-Cul) Jeune homme dans la vingtaine travaillant dans le domaine de la téléphonie sans fil. Il a pour valeurs le confort, l\'\'argent, la surconsommation et apprécie les petits plaisirs de la vie comme les portions géantes du Burger King, regarder les émissions de poursuites policières et acheter des vêtements griffés fabriqués par de jeunes Taïwanais sous-payés. Il ne recycle pas et a voté ADQ aux dernières élections. Ses hobbies préférés sont : acheter des cossins inutiles, impressionner les filles moches avec son char et écouter Jeff Fillion. Il ne connaît pas la capitale de la France mais croît que les Américains forment un beau peuple. Si vous êtes intéressés par cette perle rare, laissez-lui un message sur l\'\'une de ses boîtes vocales, sur son paget ou sur l\'\'un de ses 24 comptes de rencontre en ligne !'),
(64, 'le Gros drummer d\'\'l\'\'orchestre St-Sipoplette', 'Batteur de groupes populaires et/ou inconnus (Windstorm, Les Rockers, Pat pis Rémi, St-Sipoplette, Les Cowboys Fringants, Les p\'\'tits Coucous, Les Presqu\'\'assis) qui a jadis eu une réputation de charmeur. Celui que l\'\'on connaît aussi sous le nom d\'\'artiste de « Domlebo » est non seulement devenu très sérieux mais n\'\'est même plus gros. Cependant, son lourd passé resurgit à l\'\'occasion lorsqu\'\'on doit parler de Gina Pinard...'),
(65, 'un Gros gars tatoué', 'C\'\'est le même gars que dans Rue Chapdelaine (l\'\'ex-prisonnier). Il passe sa vie à entrer et sortir de prison. Quand il est dehors, il vit avec sa vieille mère dépressive...'),
(66, 'Guilbeault', 'Voisin et ami d\'\'enfance de J-F, Stéphane Guilbeault existe vraiment. Il est immortalisé dans la chanson Banlieue en souvenir des journées de pluie à jouer au Colleco dans son sous-sol.'),
(67, 'Gilles Guilbeault', 'Homme de hockey de la série « Lance et compte » interprété par Michel Forget. Renommé pour sa moustache et pour sa faculté à envoyer promener les livreurs de poulet.'),
(68, 'Guy', 'Gérant de Goldie qui l\'\'a propulsé vers les plus hauts sommets de popularité. Le « Guy » en question est une allusion au célèbre gérant d\'\'artistes Guy Cloutier.'),
(69, 'Willie Joe Hachey', 'Cow-boy solitaire qui dévalise les banques et qui brise le cœur des filles. Un genre de Lucky Luke « cheap ». (Il faut noter que ce personnage est le seul que les CF renient)'),
(70, 'Hannah', 'Personnage central de la chanson Hannah. Oui, elle existe vraiment et pas seulement virtuellement.'),
(71, 'Henriette', 'Mère de Denise Martinez.'),
(72, 'Hector (mononc\'\')', 'Propriétaire du célèbre shack à Hector qui aurait dû en fait s\'\'appeler Harold (les CF ayant fait de véritables virées au chalet à Harold, le beau-père des frères Talbot). Mais comme les rimes en « old » sont rares, il s\'\'est appelé Hector.'),
(73, 'les Hippies', 'Voir les Beatniks.'),
(74, 'Bronco Horvatt', 'Ancien défenseur des Bruins de Boston qui est cité en référence dans la chanson Salut mon Ron.'),
(75, 'Jaromir Jagr', 'Joueur vedette de la ligue nationale de hockey originaire de la République Tchèque qui a longtemps porté la « coupe Longueuil » au grand plaisir des CF. (autres noms pour la « coupe Longueuil » : Coupe Jaromir Jagr (évidemment !), coupe Météore, coupe 2-4-6, coupe Carignan, coupe Motocross, coupe St-Basile, coupe « business in front party in the back », toast, toast Melba, Mulletard, Mullet, coupe Dany etc...'),
(76, 'Jimmy le chanteur de noces', 'Chanteur et figure de proue du groupe Carignan, il roule sa bosse depuis des années en effectuant des contrats de mariage et des spectacles dans des bars miteux. Le répertoire de Jimmy est vaste mais il se spécialise surtout dans les reprises des Doobies Brothers, de Richard Séguin et d\'\'Offenbach.'),
(77, 'Johnny', 'Le Johnny mentionné dans la chanson serait en l\'\'occurrence Johnny Farago ! Mais personne ne comprend pourquoi Goldie va faire un pèlerinage à Memphis pour « pleurer Johnny ». En plus Memphis rimait parfaitement avec Elvis ! Sûrement un caprice d\'\'auteur...'),
(78, 'ma chum Josée', 'Amie obscure du personnage principal de la chanson. Elle est probablement morte d\'\'une overdose de whisky avec Gaston Landry dans une piquerie de Granby.'),
(79, 'Julie à Longueuil', 'Une des nombreuses pseudo conquêtes de Goldie... Elle demeure toujours à Longueuil avec un gars qui a une moustache, des survêtements d\'\'entraînement et « une coupe Motocross » (cheveux aplatis sur le dessus et bien revitalisés en arrière).'),
(80, 'le King de la polyvalente', 'Type qui était l\'\'idole de tous à l ‘époque du secondaire mais dont les choix de vie et les malchances l\'\'ont conduit à devenir un raté.'),
(81, 'Sergeï Koulikov', 'Dans la série télévisée « Lance et compte », joueur de hockey Russe qui rêvait de « passer à l\'\'ouest ».'),
(82, 'Jay-Pee Labrosse', 'Cousin pas mal sur le party, Jay-Pee Labrosse est un bon vivant de nature. Camionneur de profession, il vient d\'\'épouser Gina Pinard (on connaît le faible de Gina pour les camionneurs) qui est sa troisième épouse. Ils prévoyaient un voyage de noces à Old Orchard pour leur lune de miel mais les moyens financiers de Jay-Pee étant restreints depuis la chute des actions de Bombardier, ils optèrent pour le camping Ste-Germaine à St-Sipoplette dans le comté de Caltor.\r\nMais comme la vie fait mal les choses, l\'\'éternel cocu qu\'\'il est s\'\'est encore fait jouer un tour : Gina, « sa belle », s\'\'est poussé avec un autre type en plein voyage de noces (Camping Ste-Germaine, 2004). Certes, on pouvait s\'\'y attendre puisque Jay-Pee participait trop activement à la vie communautaire du camping... Aujourd\'\'hui, Jay-Pee Labrosse vit en permanance dans sa roulotte au Camping Ste-Germaine. Chaque soir de pleine lune, il met sa cassette de Marcel Martel et il hurle comme un loup en espérant que « sa belle » revienne...'),
(83, 'Guy Lafleur', 'Personnage caricatural à « la craque de fesse à l\'\'air », Guy Lafleur - le plombier - a vécu toute sa vie dans l\'\'ombre de son célèbre homonyme joueur de hockey. À la fois cocasse et désolant, on peut reconnaître en lui le côté pathétique de l\'\'humain mais également une certaine fragilité et cette solitude qui l\'\'habite depuis que « sa femme était morte ». Le genre de type qu\'\'on prend en pitié mais qui est finalement si accaparant et encombrant qu\'\'on a hâte qu\'\'il s\'\'en aille au plus sacrant !'),
(84, 'le vrai Guy Lafleur', 'Ex-joueur de hockey célèbre qu\'\'on surnommait le « Démon blond ». Dominant les années 70, il remportera quatre coupes Stanley au cours de sa glorieuse carrière avec Montréal. Il terminera sa carrière après un fulgurant retour avec New-York et finalement Québec.'),
(85, 'Gaston Landry', 'Éponge humaine originaire de Granby qui se saoule avec 4-5000 whiskys...'),
(86, 'Fabienne Larouche', 'Auteure prolifique de séries télévisées (Virginie, Fortier, Urgence, etc...). Elle omniprésente depuis quelques années à la télé québécoise.'),
(87, 'la sœur à Lavallée', 'C\'\'était plutôt la sœur à Provencher...'),
(88, 'la mère à Lepage', 'C\'\'était en fait la mère à Brodeur...'),
(89, 'René Lévesque', 'De tous les chefs qui marquèrent le Québec moderne, nul ne changea la face de l\'\'état autant que René Lévesque. Qu\'\'on soit en accord ou non avec ses objectifs politiques, on ne peut qu\'\'admirer l\'\'intégrité, l\'\'honnêteté, le courage et les qualités de démocrate de cet homme qui gouverna le Québec pendant neuf ans. René Lévesque a atteint un statut mythique depuis son décès. Mais qui était donc cet homme?\r\nJournaliste et homme politique québécois né à New-Carlisle en 1922. Ministre libéral de 1960 à 1966 et important acteur de la révolution tranquille, il sera l\'\'un des grands responsables de la nationalisation de l\'\'électricité et de la fondation d\'\'Hydro-Québec. Après avoir claqué la porte du parti libéral, il fondera le mouvement souveraineté-association (1967), organisation préconisant l\'\'indépendance politique du Québec et son association économique avec le reste du Canada. En 1968, le MSA devient le Parti Québécois. Après deux échecs consécutifs lors des élections de 1970 et 1973, René Lévesque devient premier-ministre du Québec en novembre 1976. Après l\'\'échec référendaire de mai 1980, le PQ est néanmoins reporté au pouvoir en 1981 avec une majorité accrue. Lévesque convient toutefois de mettre sur la glace le projet de la souveraineté (le beau-risque), provoquant une crise au sein du parti qui l\'\'obligera à démissionner en 1985. Il est mort des suites d\'\'un infarctus en novembre 1987.\r\nL\'\'héritage de René Lévesque est grand. Outre la nationalisation de l\'\'électricité et le projet souverainiste, on lui doit la loi sur le financement des partis politiques, l\'\'augmentation des allocations familiales, le système national d\'\'adoption, la gratuité des soins de santé pour les assistés-sociaux, la bonification des programmes d\'\'aide aux familles monoparentales, l\'\'entrée en vigueur de la loi sur l\'\'assurance-automobile et la loi 101 qui fait du français la langue officielle du Québec.'),
(90, 'Léopold', 'Personnage gai qui a émergé de l\'\'imaginaire de Dominique lors d\'\'un voyage en Gaspésie, en regardant le Rocher Percé. Comme quoi le Rocher Percé peut être une source d\'\'inspiration pour n\'\'importe quoi!'),
(91, 'ma cousine Lise', 'C\'\'est la mariée dans La noce. Tout ce qu\'\'on sait sur elle c\'\'est qu\'\'elle est divorcé et qu\'\'elle s\'\'est remariée avec un Libanais quelques temps après. Elle demeure aujourd\'\'hui à Beyrouth et porte un voile islamique...'),
(92, 'Lola', 'Héroïne d\'\'Impala Blues, elle se poussera « avec le flot pis l\'\'Impala » dès le deuxième couplet de la chanson, pavant la voie aux innombrables déboires de son ex-amoureux. À la fin de la chanson, on la voit faire le trottoir. Selon nos sources, elle serait morte du SIDA il y une quinzaine d\'\'années.'),
(93, 'Loulou Lapierre', 'Lapierre de son nom de famille. Originaire de Waterloo, elle déménagera plus tard sur la rue Chapdelaine. Tout d\'\'abord voisine de palier (La culbute, 30);, on la découvre de façon plus profonde dans Joyeux Calvaire ! Personnage qui en arrache dans la vie, elle garde un bon moral et aspire en quelque sorte à un meilleur sort. Malgré le côté glauque de son existence, son attitude est à elle seule un message d\'\'espoir.'),
(94, 'Lucille', 'Habitante de Nashville, elle fut la première flamme du Grand Gerry.'),
(95, 'Macramé Mike', 'Issu d\'\'une époque où le plaisir de Karl et J-F était d\'\'inventer des noms imbéciles (Soup bol Richard, Balançoire Annie, Fenêtre Sophie, etc...), Macramé Mike est le seul qu\'\'ils ont osé inclure dans une chanson. Le chanceux a par le fait même eu l\'\'honneur de se farcir la belle Gina Pinard. Et pas n\'\'importe où à part de ça : « Sur mon canapé... » !'),
(96, 'Marguerite', 'La célèbre Marguerite de St-Tite qui a succombé au charme de Beau André il y a de ça très longtemps...'),
(97, 'Marjo', 'Rockeuse québécoise qui débuta sa carrière avec le groupe Corbeau et qui connut ses plus grands succès en solo (Chats Sauvages, Provocante, etc...). Elle est cité à titre de référence dans la chanson Québécois de souche.'),
(98, 'Denise Martinez', 'Femme qui possède des attributs virils tels la moustache et une  « voix de Mad Dog Vachon ». Championne incontestée des coups de circuits dans les ligue de balle molle féminine et de baseball masculine, elle terminera sa carrière dans la peau de la mascotte officielle des Expos de Montréal, le très bizarre Youppi !'),
(99, 'Marussia', 'Dans la série télévisée « Lance et compte », c\'\'est la mère de Pierre Lambert et l\'\'épouse de Gilles Guilbeault.'),
(100, 'mes Matantes', 'Absolument impertinentes, les matantes de La noce ne sont que d\'\'incorigibles commères à l\'\'affût d\'\'un potin croustillant. Pas question pour le personnage de leur apprendre qu\'\'il est « su\'\'l B.S. » !'),
(101, 'Maurice', 'Paumé par excellence, le gros Maurice « en a plein le dos » et raconte ses déboires à son pote « devant un bock de bière flate ». Inspiré d\'\'une histoire vraie (celle d\'\'un dénommé Jean, alias « Johnny », qui faisait des travaux communautaires au collège de l\'\'Assomption à l\'\'époque où Jean-François y était employé), on reconnaît tous en Maurice un oncle ou une connaissance qui a quelque peu raté sa vie.'),
(102, 'Mère, maman', 'plusieurs chansons)\r\nLa thématique de la mère ou de la maman revient dans plusieurs chansons. Il serait trop long de les énumérer ici.'),
(103, 'la Mère de la mariée', 'C\'\'est elle qui succombera au sex-apeal du curé Boilard et qui finira dans « le back-store » avec ce dernier. Elle finira par divorcer de son mari et épousera l\'\'ex-curé qui décide de son côté d\'\'abandonner définitivement la vie cléricale pour convoler en juste noce.'),
(104, 'une Mère monoparentale', 'Danseuse nue de carrière, elle est une mère irresponsable qui « ne s\'\'occupe pas de ses trois morveux ». Elle aurait jadis connu Gina Pinard au bar « topless » le Lion d\'\'Or mais une chicane à propos du grand Gerry les auraient séparées à jamais.'),
(105, 'Miss January', 'Poupoune à poil sur un calendrier du shack à Hector... Y paraît qu\'\'elle a un beau cul !'),
(106, 'des Mononcs\'\' bedonnants', 'Pas vraiment importants, ils sont là par parure dans la chanson. Non mais sérieusement, qui a envie de parler à ses mononcs\'\' bedonnants quand en plus ça fait dix ans que tu ne les a pas vus ?'),
(107, 'Marilyn Monroe', 'Actrice américaine (Los Angeles 1926 – Los Angeles 1962) qui incarna le mythe de la star hollywoodienne dans toute sa beauté et sa vulnérabilité. Son nom est cité comme référence dans la chanson Camping Ste-Germaine.'),
(108, 'Roger Moore', 'Acteur qui personnifia James Bond au grand écran et qui, selon la chanson, aimait bien « les vieux long jeux » de Goldie...'),
(109, 'Montcalm', 'Louis-Joseph, dit le Marquis de Montcalm était le général de l\'\'armée Française au moment de la bataille des Plaines d\'\'Abraham (1759) où il luttait pour repousser les Anglais. Il y fut d\'\'ailleurs blessé mortellement en défendant Québec. Les CF y font référence dans la chanson Mon pays.'),
(110, 'le Nain', 'Sylvain de son véritable nom est un personnage mythique qui fascine les Repentignois depuis maintenant plusieurs années. Toujours au pas de course avec les écouteurs de son « walk-man » sur les oreilles, il arpente les rues de la ville de Repentigny, suivant un itinéraire qui le mène dans les différents centres d\'\'achats où il « scène » le plus clair de son temps. Grand fan de Coca-Cola et il discute avec les vendeuses des différentes boutiques, leur donnant parfois un coup de main. Une question persiste cependant : qu\'\'écoute-t-il dans son « walk-man » ?'),
(111, 'Mats Naslund', 'Ancien joueur de hockey d\'\'origine suédoise qui a évolué pour le Canadien de Montréal au cours des années 80. Grâce à son style électrisant, il fut une idole pour les jeunes de l\'\'époque et il aida le Canadien à remporter la Coupe Stanley de 1986. Son nom est cité à quelques reprises dans les chansons des CF.'),
(112, 'Natasha', 'Femme d\'\'origine russe qui avait toujours les seins à l\'\'air dans la série « Lance et compte ». Sûrement un des nombreux fantasmes de Réjean Tremblay...'),
(113, 'le Pape', 'D\'\'origine polonaise, Jean-Paul II, alias Karol Wojtyla, est pape de puis 1978. Goldie l\'\'a rencontré mais « il n\'\'y a pas parlé »...'),
(114, 'Papineau', '(Louis-Joseph) Homme politique qui fut président de l\'\'Assemblée de 1815 à 1823. À partir de 1825 jusqu\'\'à 1837, il soutînt la cause des Canadiens français et fut l\'\'un des artisans de la rébellion des Patriotes de 1837. Grâce à son éloquence et ses qualités d\'\'orateur, les gens buvaient littéralement ses paroles et il passait pour quelqu\'\'un de très intelligent. Ainsi naquit l\'\'expression populaire « ça prends pas la tête à Papineau », qui signifie qu\'\'il ne faut pas une grande intelligence pour comprendre une situation donnée. (exemple : Ça prends pas la tête à Papineau pour savoir que 2 et 2 donnent 4)'),
(115, 'ses Parents', 'Père et mère de Ti-Cul. Comme bien des parents, ils font la sourde oreille aux rêves, aux besoins et aux ambitions de leur enfant au détriment de ce qu\'\'ils aspirent pour lui.'),
(116, 'Paulo', 'Chauffeur de taxi montréalais qui dit connaître l\'\'histoire de celle que l\'\'on surnomme la Reine.'),
(117, 'le Pauvre gars', 'Paumé ultime et victime des « vidéo-pokers », il passe toute ses payes dans ces maudites machines. Quand il a découvert son char avec un sabot de Denver, il n\'\'a pu payer la contravention. Les autorités on saisi son véhicule et selon ce que nous avons appris, la banque aurait mandaté un huissier de saisir sa maison et son mobilier. Il suit présentement une thérapie aux « Gamblers Anonymes ».'),
(118, 'le Pêcheur d\'\'écrevisse', 'Probablement le personnage le plus inutile de tous les temps créé par les Cowboys... En fait, cette chanson est elle-même inutile...'),
(119, 'Père', '(se retrouve dans plusieurs chansons)\r\nLa thématique du père revient dans plusieurs chanson et il serait long de tout énumérer ici.'),
(120, 'Jean Perron', 'Ex-entraîneur des Canadiens de Montréal qui remporta la coupe Stanley en 1986. Depuis plusieurs années on le voit comme intervenant dans diverses émissions sportives, tant à la radio qu\'\'à la télé. Il est également reconnu pour ses célèbres « Perronismes » (« C\'\'est la pointe de l\'\'asperge », « Il n\'\'y est pas allé avec le dos de la main morte », « il y a une guerre intestinale au sein de l\'\'équipe », etc...) qui ont fait de lui un personnage plus ou moins pris au sérieux...'),
(121, 'Gina Pinard', 'Sans conteste le plus célèbre de tous les personnages de l\'\'histoire des Cowboys Fringants, Gina Pinard divertit les gens depuis 1997 alors qu\'\'elle effectuait sa toute première apparition dans la chanson L\'\'Agacepésie. C\'\'est comme danseuse nue au bar « topless » le Lion d\'\'Or qu\'\'on commence à la connaître. On y découvre alors un fille à la cuisse légère qui n\'\'hésite guère à suivre quiconque pour partir à l\'\'aventure. C\'\'est aussi à cette époque que l\'\'on se rend compte de son attraction quasi maladive pour les camionneurs. Après avoir perdu sa trace quelque part en Abitibi, on la retrouve plus tard (1998) dans La culbute, une chanson qui lui est entièrement consacrée. Après une « culbute » dans le Cavalier et une autre avec Macramé Mike sur le canapé, elle s\'\'évapore dans la nature avec un « trucker » qui « descendait à Kitchener », en Ontario.\r\nPuis, coup de théâtre ! Après un court exil en Ontario, on la retrouve Trois-Rivières Ouest (2000) « au beau milieu d\'\'une partie de fesse ». Établie au Cap-de-la-Madeleine, depuis peu, elle est couverte de dettes et doit fuir la région... Elle s\'\'en ira vers Montréal en y abandonnant au passage le pauvre « pouceux », sur une route près de Yamaska. Puis on perd encore sa trace.\r\nOn la retrouve dans La noce (2002) au bras de Jay-Pee Labrosse lors du mariage de la cousine Lise. Selon la rumeur, Jay-Pee - qui est camionneur - l\'\'aurait ramassé dans un relais pour routiers en bordure de l\'\'autoroute 40. Il aurait décidé de l\'\'aider à se remettre sur le droit chemin. Pour la première fois de sa vie, Gina tombe en amour. Ils décident de se marier. Est-ce que tout ça durera ?\r\nMalheureusement, le mariage foire lors de la lune de miel dans Camping Ste-Germaine (2004). Gina s\'\'emmerde avec Jay-Pee dans ce camping miteux. Celui-ci, bien qu\'\'amoureux, préfère picoler et jouer aux fers plutôt que de s\'\'occuper d\'\'elle. Il ne lui en fallait pas plus pour tomber dans les bras du premier venu qui s\'\'avérait être le batteur du groupe St-Sipoplette, une vieille connaissance qu\'\'elle avait « croisée » à Woodstock en Beauce en 2001... Leurs retrouvailles furent cependant brèves puisque le batteur en question devait quitter pour un autre festival le soir-même. Prise de panique, elle ramassa rapidement ses effets dans la roulotte et fila à l\'\'anglaise avec un champion du jeu de poches qui, à défaut d\'\'avoir des dents, arborait fièrement le chandail de loup. Après lui avoir fait les poches, elle l\'\'abandonna dans sa chambre du Motel Capri. On a reperdu sa trace depuis ce temps. Encore.\r\nLe personnage de Gina Pinard mérite d\'\'être approfondi. On ne connaît rien de son enfance et des circonstances qui ont fait qu\'\'elle soit devenue ce qu\'\'elle est aujourd\'\'hui. Depuis le début, on la connaît en surface mais qu\'\'en est-il de ses sentiments ? Est-elle profondément malheureuse ou simplement tête en l\'\'air ? Au cours des prochaines années, nous en saurons certainement plus sur elle.'),
(122, 'Plamondon', '(Luc) Parolier québécois né à St-Raymond-de-Portneuf. Jeune auteur, il fut propulsé grâce à son association avec Diane Dufresne au cours des années 70. Après d\'\'innombrables succès et des comédies musicales à succès (Starmania, La légende de Jimmy, Notre-Dame-de-Paris), il est aujourd\'\'hui reconnu au Québec et en Europe comme étant un « génie des mots » (!)\r\nN.D.L.R. Sachez qu\'\'en tant que biographe des Cowboys, je me disocie complètement de cette dernière affirmation. Je ne fais que rapporter les citations de certains confrères journalistes qui se sont un peu emporté...'),
(123, 'le Pôpa d\'\'la mariée', 'Homme émotif et mou (dans tous les sens du mot) qui se met à brailler lorsque sa fille lance le bouquet. Il verra sa carrière de mari se terminer abruptement à cause du curé Boilard qui le rendra cocu dans le « back-store » avec sa femme. Après une période douloureuse où il a abandonné son emploi d\'\'ingénieur, il reprendrait goût en la vie, notamment grâce à ses cours de druidisme et son intérêt marqué pour les sciences occultes.'),
(124, 'le Pouceux', 'Personnage passablement paumé qui revient de Gaspésie sur le pouce (il faut le faire !). Un des nombreux chanceux a avoir pu profiter de la grande expérience sexuelle de Gina Pinard. Si on découvre à la fin de la chanson qu\'\'il est « sans famille et qu\'\'il s\'\'appelle Rémi », il ne faudrait pas le méprendre avec celui de la chanson Mon chum Rémi. Ce sont deux personnages distincts. Par contre, le « Rémi » du Pouceux serait toujours sur le bord du chemin à Yamaska...'),
(125, 'le Pouvlo', 'Connard qui sert de chum à Loulou. Irresponsable et colérique, il est à la veille de se faire sacrer là... si ce n\'\'est pas déjà fait !'),
(126, 'le Proprio du buffet Walhy', 'Aussi inutile que le pêcheur d\'\'écrevisses... Le buffet Walhy est par contre un véritable établissement situé à Pointe-Aux-Trembles.'),
(127, 'un Pusher', 'C\'\'est un gars qui vend du hasch sur la rue Chapdelaine. On ne sait rien d\'\'autre sur lui à part qu\'\'il serait possiblement gai.'),
(128, 'DieudonnéRastapopoulos', 'Inspiré d\'\'un pakistanais qui travaillait à La Casa Grecque de Repentigny, le personnage est en fait le croisement d\'\'un père grec et d\'\'une mère haïtienne. Il a la peau noire de sa mère mais les cheveux lisses du son père. Il ressemble donc à un pakistanais mais il est en fait Greco-Haïtien d\'\'origine. Sa vie fut minable, il aura été pauvre tout au long de son existence et il se suicidera « avec un fusil, un fusil, un fusiiiiiiil » dans des circonstances étranges et pour des raisons fort nébuleuses... Bref, un grand incompris ! J-F affirmera d\'\'ailleurs qu\'\'il ne comprend toujours pas cette chanson et surtout, pour quelle raison ils l\'\'ont enregistrée !'),
(129, 'Raymonde', '« Waitresss » au Bar de l\'\'Ô à Charlemagne, la belle Raymonde est celle qui fit retrouver le bonheur au chauffeur de van !'),
(130, 'Réal, le pouilleux de Trois-Rivières', 'Un des derniers irréductibles à rouler encore en « Trans-Am » à notre époque et à porter un « coat à zippers » comme Michael Jackson. Il possède une solide coupe « météore » et se met un produit dans les cheveux pour qu\'\'ils aient l\'\'air mouillés en permanence. Jadis batteur de la formation « Kill with an Hammer  » avec laquelle le guitariste Steve Bergeron de Charlemagne évoluait, il est aujourd\'\'hui aiguiseur de patins au « pro shop » de l\'\'aréna de T-R Ouest.'),
(131, 'le vieux Régis', 'Vieil ivrogne qui « passe ses étés sur le balcon, en camisole pis en caleçons avec une O\'\'Keefe entre les deux cuisses ». Il espionne les allées et venues des voisins, regarde passer les taxis et, bien sûr, vit de l\'\'assistance sociale...'),
(132, 'la Reine', 'Vieille peau frigide qui orne le côté « face » de la monnaie « canayenne ».'),
(133, 'la Reine', 'Personnage principal de la chanson qui porte son nom (son surnom en fait), la Reine est inspirée directement de ces gens qui consacrent leur vie pour venir en aide aux plus démunis (le père Emmet Jones « Pops » entre autres). Mais a-t-elle existé vraiment ? L\'\'auteur du texte vous dira qu\'\'il l\'\'espère vraiment.'),
(134, 'Rémi', 'Personnage qui passe un mauvais coton et qui se fait remonter le moral tant bien que mal par un copain. Inspiré de deux ou trois personnes de l\'\'entourage de J-F et possiblement un peu de lui-même.'),
(135, 'mon vieux chum Richard', 'Dans le même registre d\'\'individus que le vieux Régis, Richard tète sa bière au bar dès l\'\'heure du dîner et s\'\'en va vers trois heures du matin en oubliant son dentier sur le comptoir...'),
(136, 'Roger', 'Évadé de prison qui se terre au shack à Hector, il profitera de l\'\'état d\'\'ébriété avancé des gens en présence pour s\'\'enfuir avec « leur char, leur linge, leur argent et leurs clés » ! Les policiers sont toujours à sa recherche et avertissent la population qu\'\'il est très dangereux. On le connaît aussi sous le nom du « tueur au tournevis »...'),
(137, 'dany Ross', 'Personnage interprété par Roch Voisine dans la série télévisée « Lance et compte ».'),
(138, 'un Schizophrène', 'Schizo qui reste « dans l\'\'bout d\'\'la rue Chapdelaine »...'),
(139, 'Simon', 'Copain ou ex-copain de la p\'\'tite sœur de Toune d\'\'automne.'),
(140, 'ma p\'\'tite Sœur', 'Inspiré d\'\'une fille que J-F n\'\'a jamais vue mais dont les parents lui ont beaucoup parlé d\'\'elle... « J\'\'espère qu\'\'elle a r\'\'trouvé l\'\'bonheur dans son trip au Canada », affirme J-F. La petite sœur en question, c\'\'est l\'\'histoire de bien des jeunes Québécois et Québécoises qui partent dans l\'\'ouest ou ailleurs pour chercher un bonheur qu\'\'ils ne trouveront pas ailleurs que chez eux...'),
(141, 'Sophie', 'Inspiré de la Sophie de la « Guerre des Tuques », elle demeurerait toujours à Berthier et travaillerait comme réceptionniste au musée Gilles-Villeneuve.'),
(142, 'Sophie', 'Fille ayant perdu sa mère évoquée dans la chanson Ma belle Sophie. À noter, il ne s\'\'agit pas de la même Sophie que dans le Quai de Berthier!'),
(143, 'le Sosie du capitaine dans Guiligan', 'Gros bonhomme qui ressemble au capitaine de la vieille série « Les joyeux naufragés ». Il s\'\'est « claqué une embolie en chantant une toune de la Chicane » et évite depuis ce temps les soirées karaoké...'),
(144, 'Sylvain (l\'\'animateur et la moustache de pas fin)', 'Moustachu originaire de Crabtree qui organise aujourd\'\'hui des disco-mobiles et qui a une compagnie de clowns. Il est également l\'\'animateur du karaoké du samedi soir au resto-bar Les Champions. Amateurs de blagues cochones, Sylvain est votre homme !'),
(145, 'Marc Talbot', 'Ami de longue date, Marc Talbot est immortalisé à tout jamais dans les chansons des Cowboys Fringants. Ayant un rôle plus secondaire dans L\'\'Agacepésie (où on fait référence à son talent de mécano) il est au premier plan dans le Shack à Hector dans son rôle de gars saoul. Une chanson qui s\'\'intitule La cave à Talbot, relatant l\'\'époque du Louboy (lieu mythique qui servait de tanière à une bande de paumés) à même vu le jour et sera peut-être disponible un jour. C\'\'est pour dire à quel point Marc Talbot est non seulement un ami, mais une inspiration constante pour les CF.'),
(146, 'les frères Talbot', 'Les frères Talbot sont : Marc (voir Marc Talbot), Mathieu, le rusé de la famille et Jean-Luc, le fâché dont le patois « Beu lààà ! » est désormais célèbre. Il faut aussi noter l\'\'originalité de leurs parents dans leur choix de nom : les quatre évangélistes y sont nommés c\'\'est à dire Saint-Jean, Saint-Luc, Saint-Marc et Saint-Mathieu. Non mais quelle anecdote !'),
(147, 'Ti-Mousse Tanguay', 'Camionneur gai qui aime bien « pogner les cuisses » des jeunes garçons qu\'\'il fait monter dans son camion.');
INSERT INTO `personnages` (`per_id`, `per_nom`, `per_bio`) VALUES
(148, 'Ti-Cul', 'Personnage central de la chanson du même nom, Ti-Cul est un jeune homme qui fait face à un dilemme. Étudiant au cégep en sciences humaines, il rêve de devenir comédien mais hésite à faire le grand saut dans l\'\'univers précaire du domaine artistique puisque les gens de son entourage ne l\'\'encouragent pas en ce sens. Histoire banale comme on en voit tant d\'\'un gars qui, à l\'\'aube de la vie adulte, se voit confronté à des choix difficiles et qui décidera finalement de faire ce qu\'\'il veut vraiment : être acteur ! Aux dernières nouvelles, il n\'\'avait toujours pas décroché de rôle...'),
(149, 'Ti-Louis', 'Ami du personnage principal du Quai de Berthier. C\'\'est avec lui qu\'\'il a passé sa jeunesse « dans les carcasses de char » et qu\'\'il a « pogné de la barbotte en buvant du Coke et en mangeant des peanuts » sur la quai de Berthier... Ti-Louis demeure toujours dans cette ville.'),
(150, 'Tito', 'Il remporte la palme d\'\'être le personnage le plus inconnu de toute l\'\'œuvre des Cowboys Fringants. Qui est-il ? Même les membres du groupe ne le savent pas ! À part avoir « passé une grosse Bleue » au personnage central de la chanson, on ne sait pas ce qu\'\'il fait dans la vie...'),
(151, 'les 4-5 Tripeux de Repentigny', 'Non ce ne sont pas, comme le veut la croyance populaire, une allusion aux membres des Cowboys Fringants. Le band de country en question est celui de Clavi-Éric, un jeune claviériste à la « coupe Dany » et de ses musiciens. D\'\'ailleurs, vous pouvez voir ce groupe en spectacle toutes les semaines au Bar de l\'\'Ô, à Charlemagne.'),
(152, 'Trucker que descendait à Kitchener', 'Glenn Kowalsky, camionneur de Guelph en Ontario qui a fait un « lift » et bien d\'\'autres choses à Gina...'),
(153, 'un Trucker qui r\'\'montait en Abitibi', 'Camionneur qui a lui aussi culbuté Gina dans la cabine de son « truck ». Il s\'\'appelait Gérald Ouimet et était connu sous le surnom de Grand Gerry...'),
(154, 'le Tueur au tournevis', 'Voir Roger.'),
(155, 'Turgeon', 'Acteur et ancien président de l\'\'union des artistes qui, selon la chanson, aurait sorti Goldie du trouble lorsqu\'\'il vivait des moments pénibles dans sa carrière et sa vie personnelle.'),
(156, 'Types extrémistes', 'Comme on en voit souvent dans les manifs, des petits casseurs qui brisent des vitrines et qui foutent le trouble. Le genre d\'\'individus qui, par leur attitude anarchique, font malheureusement pencher l\'\'opinion publique en faveur des forces de l\'\'ordre. Leur action est toutefois essentielle à la démocratie quand elle demeure dans les limites de l\'\'acceptable.'),
(157, 'Craig Vargas', 'Personnage extrêmement obscur de la série « Lance et compte » qui évolue pour les Saints de Chicoutimi, le club école du National.'),
(158, 'Boris Vasiliev', 'Personnage de la série « Lance et compte » qui fut expédié en Sibérie après une tentative ratée de « passer à l\'\'ouest ».'),
(159, 'Stéphane Venne', 'Auteur compositeur québécois très prolifique au cours des années 60 et 70 dont les chansons évoquaient l\'\'espoir et l\'\'esprit de renouveau qui régnait alors (C\'\'est le début d\'\'un temps nouveau, Le temps est bon, etc...). Il fut associé à plusieurs artistes et écrivit les thèmes de la Super Francofête, de l\'\'Expo 67 et de la série télévisée « Les Plouffes ». Il quittera la vie artistique pour amorcer une carrière de fonctionnaire à la ville de Montréal au cours des années 70.'),
(160, 'la Voisine de palier', 'Première apparition de Loulou Lapierre (sans qu\'\'à l\'\'époque on sache son nom'),
(161, 'une Voisine qui m\'\'fait du ketchup', 'On ne sait pas son nom. Mais elle fait du très bon Ketchup...'),
(162, 'le Voyou', 'Originaire de la Rue Ontario dans le quartier Hochelaga-Maisonneuve, le voyou en question est un petit délinquant qui, entre ses courts séjours dans les écoles de réforme et en prison, survit grâce a de petits rackets de prostitutions, des cambriolages et des vols de voitures. Malgré qu\'\'il tente à l\'\'occasion de prendre le droit chemin et de devenir un honnête citoyen, il finit toujours par retomber dans le monde glauque de la rue. On peut dire qu\'\'il est en ce sens irrécupérable. Probablement marqué par une enfance où la violence était présente au quotidien (père alcoolique, violent et incestueux), le voyou se voit confronté à un avenir sans soleil, ce qu\'\'il sait pertinemment : s\'\'il n\'\'a rien à perdre il est aussi conscient qu\'\'il n\'\'a rien à gagner. Sans espoir de s\'\'élever socialement et sans instruction, il se résigne finalement à son sort nous laissant sur ces paroles qui veulent tout dire : « Adieu la vie, salut mes potes, chu revenu dans Hochelaga, avec mon couteau, mon sac de pot, mon chat pis mon secondaire trois ».'),
(163, 'la Waitress', 'Serveuse de la brasserie Chez Willy. Elle y travaille depuis 21 ans et commence à être vraiment blasée de jaser avec des ivrognes incohérents comme mon chum Richard et le vieux Régis ainsi qu\'\'avec des gars déprimés comme le gros Maurice et Rémi.'),
(164, 'la Waitress de restaurant', 'La « jolie Évangéline » a bien mal vieillie : amère face à la vie et frustrée par les hommes, elle est célibataire depuis cinq ans et accepte mal d\'\'être une serveuse alors qu\'\'intérieurement, c\'\'est une artiste qu\'\'elle aurait voulu devenir. Déprimée, elle se rend chanter dans les bars de karaoké plusieurs fois par semaine et se saoule au Pina Colada en pleurant sur son sort...'),
(165, 'Yvon', 'Homme à l\'\'origine du divorce d\'\'Évangéline. Elle ne l\'\'a vu qu\'\'une seule fois mais on peut vous affirmer qu\'\'il lui avait menti sur sa véritable identité. Il s\'\'agissait en fait du Grand Gerry qui était dans une mission « under cover ». Chaud lapin va...'),
(166, 'Robert Bob BOURGOIN', ''),
(167, 'Mononc\' André', ''),
(168, 'vves', ''),
(169, 'Catherine', ''),
(170, 'Normamd', ''),
(171, 'louis Hebert', ''),
(172, 'normal Tremblay', ''),
(173, 'Suzie Prudhomme', ''),
(174, 'Johnny Pou', ''),
(175, 'le p\'tit Tommy', ''),
(176, 'Rosaire Légaré', '');

-- --------------------------------------------------------

--
-- Structure de la table `profil`
--

CREATE TABLE `profil` (
  `pro_id` int(11) NOT NULL,
  `pro_libelle` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `profil`
--

INSERT INTO `profil` (`pro_id`, `pro_libelle`) VALUES
(1, 'Admin'),
(2, 'Guests');

-- --------------------------------------------------------

--
-- Structure de la table `tounes`
--

CREATE TABLE `tounes` (
  `tou_id` int(11) NOT NULL,
  `tou_libelle` varchar(100) DEFAULT NULL,
  `tou_commentaire` varchar(5000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `tounes`
--

INSERT INTO `tounes` (`tou_id`, `tou_libelle`, `tou_commentaire`) VALUES
(1, 'Les routes du bonheur', ''),
(2, 'Awikatchikaen', 'Par Alain Star;Plusieurs rumeurs ou légendes ont été véhiculées à propos de la chanson Awikatchikaën.;Qu’en est-il en vérité ?;Est-ce un mot issu d’un dialecte amérindien ?;Karl a-t-il vraiment été frappé d’une vision;le jour où il a composé cette chanson qui, à la base, semble anodine ?;Quel est le mystère entourant le fameux « pays d’Awikatchikaën »;et de son shaman Katschë dont Karl parle toujours en spectacle ?;Et pourquoi cette chanson si simplette provoque encore et toujours,;après tant d’années, le déchaînement collectif lorsque J-F en gratte les premiers accords lors des spectacles ?;Toutes des questions où il m’a été bien difficile d’avoir des réponses précises.;Puisqu’à la lumière des informations recueillies,;il semble flotter un véritable mystère autour de cette pièce.;Selon J-F, la musique de la chanson a été inspirée d’une gigue que Willy Lamothe;interprétait dans le film québécois des années 70,;Mustang;(la scène se passait dans une cuisine où les gens presque en transe et alignés le long des murs,;tapaient du pied pendant que Willy y interprétait une chanson au dialecte inconnu.;Une scène très bizarre !).;Bref, J-F fait alors écouter cette nouvelle musique à Karl lors d’une soirée qui, selon mes sources,;ne se déroulait pas sans abus de stupéfiants.;Dès la première écoute, Karl entonne instinctivement le fameux « Wan tchikatan tchikatan tchikatan..etc… ».;Ils la joueront pendant des heures.;Le temps semblait s’être arrêté et les effets de la drogue avaient mis les deux jeunes hommes dans une autre dimension.;Soudain, Karl prit une feuille et un crayon et écrivit automatiquement la chanson en cinq minutes.;Ils la chanteront jusqu’à épuisement, Karl tombant même dans un semi-coma où, selon J-F, il hallucina Katschë,;le shaman du pays d’Awikatchikaën.;Ce dernier lui aurait dit quelque chose du genre :;« Avant qu’ils sombrent dans le néant, tu les feras danser jusqu’à la nuit des temps ».;À partir de ce moment, ils savaient qu’ils avaient une mission dans la vie et ont arrêté toute consommation de drogue.;Mais Karl et J-F resteront marqués par l’événement.;Ils n’en parlent d’ailleurs que de façon évasive, ne s’attardant pas sur le sujet.;On ne sait pas si l’histoire est vraie en partie ou en totalité. Nous ne le saurons probablement jamais…'),
(3, 'Evangeline', ''),
(4, 'Cass de pouelle', ''),
(5, 'L\'Agacepesie', ''),
(6, 'Dieudonne Rastapopoulos', ''),
(7, 'Plattsburg', ''),
(8, 'Willie Jos Hachey', ''),
(9, 'Gaetane', ''),
(10, 'Repentigny-by-the-sea', ''),
(11, 'Le hurlot', ''),
(12, 'Impala blues', ''),
(13, 'Marcel Galarneau', ''),
(14, 'Le plombier', 'Chanson dont l’idée de base fut inspirée d’un;« Econoline jacké deux tons, rouillé / patché avec d’la potée »;stationné en permanence sur le boulevard Iberville, à Repentigny.;Pendant plusieurs mois je passais devant ce camion;et je me disais que je devais faire une chanson en son honneur.;Mais je ne savais pas trop où diriger mon idée;jusqu’au jour où j’ai décidé de recourir aux services de Karl;qui travaillait au club vidéo De la Pointe.;Je lui ai demandé de m’écrire sur un papier;une dizaine de mots absurdes que je serais obligé d’inclure dans mon texte.;C’est ainsi qu’il me griffonna entre autres les mots;« coupe Jaromir Jagr », « craque de fesse », « velveeta », etc;En voyant le mot « craque de fesse »;et en pensant au camion rouillé,;le déclic s’est fait : faire une toune sur un plombier !;Et c’est ainsi qu’est né Guy Lafleur, le plombier.;Et par un curieux hasard, on a eu ouï dire;qu’un plombier du nom de Guy Lafleur existerait bel et bien à Varennes.;Ça reste cependant à être confirmé…'),
(15, 'Special #6', ''),
(16, 'Maurice au bistro', ''),
(17, 'Goldie', ''),
(18, 'Denise Martinez', ''),
(19, 'Mon pays', 'Propos de J-F Pauzé recueillis par Alain Star;Au début, je voulais faire une chanson sur l’histoire d’Alexis le trotteur.;Je tripais pas mal folklore à l’époque.;Finalement, je ne sais pour quelle raison,;je me suis mis en tête d’écrire une chanson qui retracerait;les grandes lignes de l’histoire du Québec;mais de façon un peu humoristique.;Je suis donc parti de la thèse fictive;(quoique non démentie par les historiens !);qui dit que les Français ont perdu la bataille des Plaines;à cause d’une beuverie monumentale.;Puis j’ai tenté par la suite de bien isoler;les événements marquants de notre histoire,;les associant à chaque fois à la pseudo ivrognerie du peuple Québécois.;Résultat ? J’avoue bien aimer la chanson;mais c’était mes premiers balbutiements;dans l’univers de la chanson sociale.;C’est une bonne chanson mais aujourd’hui,;je ne l’aurais pas écrite de cette façon;je l’aurais probablement plus travaillée.;À vrai dire, je la trouve un peu bâclée…;Pas étonnant puisque je l’ai écrite en une demi-heure,;un dimanche matin, avant une pratique chez Jérôme !'),
(20, 'Le Reel Des Aristocrates', ''),
(21, 'Le quai de Berthier', 'Propos de Dominique Lebeau;recueillis par Alain Star;Alain Star: Parle-nous donc du Quai de Berthier.;Oh lala! le fameux quai!;La musique inspirée d’un genre de folklore celte,;des paroles comme « face de Lucky Luke »,;« Mike Liut » et « carcasses de chars ».;Ces dernières ont d’ailleurs été le point de départ;de la chanson qui devait d’abord se passer au Lac Saint-Jean;c’est probablement vers St-Prime ou Roberval,;en voyant un paquet de vieux camions rouillés;sur le terrain des gens que l’idée du « quai » était née:;l’enfance racontée à travers ces jeux de p’tits gars, etc…;Au même moment Jean écrivait une chanson un peu plus forte;au niveau du texte mais qui racontait un peu ça aussi, la chanson « banlieue ».;De souvenir, les refrains du quai, ou certains d’entre eux,;viennent de Karl et Jean.;Alain Star: Et qui est Guy Dubuc?;J’étais au carré coin Berri et Ste-Catherine,;le groupe Basta devait jouer sur une scène extérieure.;Un gars est venu au micro et a dit:« on cherche Guy Dubuc, si quelqu’un a vu Guy Dubuc… »;Quel bon nom ai-je pensé!;3-4 ans plus tard on a rencontré le gars en question,;pianiste et chef d’orchestre sur le show de « Gilidor ».;Je lui ai raconté l’histoire, il s’en souvenait,;c’est lui qui avait programmé des trucs pour Basta;et ce soir-là la machine ne fonctionnait pas…;Ah oui, il n’a pas une face de Lucky Luke.'),
(22, 'Grosse femme', ''),
(23, 'La gosse 0 Comeau', ''),
(24, 'La culbute', ''),
(25, 'Banlieue', 'Propos de J-F Pauzé;recueillis pas Alain Star;le 20 janvier 2003, « On était en septembre 1998.;J’avais 22 ans et je vivais depuis le mois de juillet une peine d’amour.;Le pire était passé, vous savez ces moments pénibles des premiers jours;où on ne mange pas, on ne dort pas…;Bref, je commençais à m’en remettre, comme on dit.;Je venais d’annoncer à mes parents;que je lâchais l’école pour m’occuper du groupe;(ou était-ce par manque de motivation ?;Peut-être bien !) et j’étais un peu nostalgique;du temps où j’étais un ti-cul qui n’avait;rien à penser d’autre que de jouer au hockey dans la rue.;Je fumais une cigarette dans la cour arrière de la maison de mes parents,;c’était une belle soirée d’automne;et les lueurs de la pleine lune reflétaient sur l’eau de la piscine.;Des sentiments partagés m’envahissaient.;Je balançais entre la nostalgie du temps passé,;la tristesse et un espoir certain.;La soirée était vraiment apaisante;et je suis resté dehors une bonne partie de la nuit à réfléchir.;C’est là que m’est venue l’idée de la chanson Banlieue.;J’avais, comme c’est souvent le cas,;une phrase qui me trottait dans la tête depuis l’été :;C’est comme si t’avais pris une paire de cutters /;Pis qu’t\'avais coupé le cordon de mon coeur…;Elle m’était venue quelques temps après m’être fait larguer;mais je ne savais pas comment l’inclure dans une chanson.;De toute façon, la plaie était trop vive;et je n’avais pas envie de travailler des textes.;J’avais gardé cette phrase en mémoire;elle s’est finalement insérée automatiquement dans le texte de >Banlieue.;Une chanson un peu maladroite certes,;mais qui m’a fait du bien… et m’a permis de reprendre;avec la fille en question parce qu’elle pleurait;chaque fois qu’elle l’écoutait.;Ça a du bon parfois d’être un paumé qui compose des tounes… »'),
(26, 'Su\' mon big Wheel', 'L’histoire derrière cette chanson est très simple.;Elle fut composée très tard dans la nuit;lors d’un party chez Marc Talbot;au moment où les gens en présence avaient;un taux d’alcoolémie passablement élevé.;J’avais pris ma guitare et je grattais pour le fun;mais la cousine de Marc, qui s’appelait Josiane,;n’arrêtait pas de me gosser pour que;je lui joue une vieille chanson plate;que nous avions composée et qui s’intitulait Voir du pays.;Comme j’en avais absolument pas envie;et qu’elle commençait à m’énerver,;je lui ai improvisé cette chanson;pour qu’elle se ferme la boîte et,;l’alcool aidant, le monde l’a trouvée bien drôle.;Si bien qu’au bout d’une demi-heure,;tous la chantaient en chœur et la cousine;de Marc recommençait à m’achaler pour que cette fois,;je lui joue la « chanson du Big Wheel. »;On a décidé de l’inclure sur l’album Motel Capri en blague.;On trouvait ça drôle que tout le texte;de la chanson se retrouve dans le titre.;Ce qui est plate, c’est qu’on oublie;toujours de la jouer en spectacle…'),
(27, 'Quebecois de souche', 'Propos de Dominique Lebeau;recueillis par Alain Star;J’ai à une époque travaillé sur un camion,;je livrais dans les secteurs industriels pour ro-na.;Je côtoyais toute sorte d’hommes surtout;avec des langages des plus colorés;et des plus remplis d’anglicismes…;Je me suis dit que ça pouvait être une toune.;Le titre au départ devait être « à‘a shop »;et se dérouler autour de ça avant que les choses aillent plus loin,;que j’en fasse une chanson sur;l’ensemble des colons que nous sommes au Québec.;On se vante d’être des vrais, des « de souche », hum…;Alain Star: Je vous ai entendu dire que l’homme du peuple;y était pour quelque chose pour ce qui est des paroles?;J’ai effectivement lâché un coup d’fil à Marc Talbot;pour ce qui est des pièces d’auto;spark-plugs et gallipers sont probablement de ses suggestions.;Il m’a ensuite suffit de glisser;les noms de Marjo et de Fabienne Larouche;puis les mots « la loi 101 tatouée sur la bouche »;pour en faire un hymne ridicule avant lequel Karl peut crier:;« Y a-t-il des Québécois de souche ici ce soir! »'),
(28, 'M\'a vivre avec toi', ''),
(29, 'Le shack a Hector', ''),
(30, 'Rue Chapdelaine', 'Propos de Dominique Lebeau;recueillis par Alain Star;Je viens de voir que dans Môtel Capri;je n’avais pas de crédit de collaboration;au texte pour celle-là, un si grand succès…;Ce dont je me souviens c’est de Jean avec moi;dans le sous-sol de mes parents (ou était-ce pour le pouceux?);avec toutes ses paperasses, ses textes et sa guitare.;Il lui manquait quelques lignes pour « rue Chapdelaine ».;En fait il ne manquait pas grand chose:;leggings et joggings (quelle rime!);et parler de 4-5 trippeux de Repentigny;qui jouent dans un band de country.;Alfred Hitchcock n’aurait pas fait mieux comme caméo!;Anecdote: dans sa première version on jouait un refrain disco;(a danse dans un club de Laval) et l’autre western.;Finalement les 2 sont disco.;Les bruits de la rue sont en fait ceux de l’avenue de La Roche;entre Rosemont et Bellechasse devant le studio de Louis-Simon Hétu;qui nous avait fait une rallonge pour le micro d’environ 100 pieds!;« ôte-toé d’dans rue! » Ah, que de souvenirs…'),
(31, 'Voyou', ''),
(32, 'Leopold', 'C’était en 1997,;quelques semaines après la sortie non remarquée de;«12 grandes chansons».;Question de «road-tester» notre cassette,;je pars vers la Gaspésie avec une amie,;sa belle voiture (une Mazda 323 je crois);et toute notre jeunesse prête à découvrir le monde.;Ainsi, par une fin d’après-midi,;le soleil est sur le point de se coucher;et nous sommes étendus dans l’herbe, sur le bord de l’eau.;J’ai un air en tête et je regarde le Rocher Percé qui est à 2-300 mètres.;J’me dis: il faudrait qu’on joue un genre de toune d’amour à la Elvis,;mais le punch serait que le prénom en soit un de gars!;Pas de farce, je voulais écrire une chanson;pour nos plus belles voix, je pense à Sylvain Pelletier,;Bruno Cossette (et la qualité des couplets;tout comme les rimes du refrain en témoignent…).;Le concept de la chanson Léopold,;qui s’appelait à l’époque «Ton prénom», était né.;Je n’ai eu qu’à glisser «le nectar que sont tes baisers»,;un superbe «mais pointé vers le ciel», faire rimer;«amour» et «toujours» et le tour était joué!;Le résultat: une chanson quétaine à souhait;sans dénigrer ceux qui préfèrent s’aimer différemment…'),
(33, 'Le temps perdu', ''),
(34, 'Le gars de la compagnie', 'Propos de J-F Pauzé;recueillis par Alain Star;J’avais visionné une dizaine de fois L’Erreur Boréale,;le film de Desjardins et Monderie sur la déforestation.;J’en avais les jambes sciées.;Ce film a vraiment marqué ma vie.;En tant que jeune auteur, je voulais écrire;quelque chose sur le sujet mais j’étais ambivalent :;s’attaquer à ce sujet après qu’il ait été traité;de si belle façon et par Desjardins en plus !;Bref, je ne savais pas quoi faire.;nDepuis plus de six mois, j’avais deux phrases qui me trottaient en tête :; « Et le gars d’la compagnie rit dans sa barbe /;C’est qui le con qui a dit que l’argent poussait pas dins arbres ».; Mais impossible de trouver quoi que ce soit d’autre.;Bref, nous avions déjà fait la pré-production;pour l’album Motel Capri mais nous n’avions;que la musique de la chanson et les deux phrases !;Il fallait opérer au plus vite avant qu’on entre définitivement en studio.;Marie venait de trouver un reel de violon endiablé;mais de mon côté, j’étais toujours incapable d’écrire des paroles à cette chr… de chanson !;Finalement, le 31 décembre 1999,;quelques heures avant l’an 2000, l’inspiration arriva !;Assis dans ma cuisine du 99 Archambault à L’Assomption,;le texte a été écrit environ en deux heures;et n’a même pas été retouché.;Je le trouvais clair, précis et concis.;Il n’aurait pu être plus long.;Il disait tout ! Bref, l’attente a été longue mais en valait la chandelle.;C’est une de mes chansons préférées et je ne me lasserai jamais de la jouer en spectacle…'),
(35, 'Le pouceux', 'Propos de J-F Pauzé;recueillis par Alain Star;Cet insuccès qu’est le Pouceux (je ne comprends d’ailleurs pas pourquoi;on la joue invariablement à chaque spectacle…);a quand même une histoire intéressante.;Quand m’est venue l’idée de faire une chanson sur un gars qui faisait du pouce,;partant de la Gaspésie jusqu’à Montréal,;j’ai décidé de le faire sans erreur géographique.;Je voulais que ça se tienne.;J’ai donc composé la chanson avec une carte routière du Québec.;C’est alors que m’est venue l’idée de faire dormir le personnage de la chanson;dans un guichet automatique (j’y tenais vraiment car mon pote Caza;le faisait souvent après des soirées trop arrosées à La Ripaille…).;Donc, ça prenait une rime avec un nom de ville qui finit en « ique ».;Il fallait aussi que la ville soit en Gaspésie;car c’était là qu’on était rendu dans le périple.;Deux choix s’imposaient : St-Ulric et le Bic…;Pas assez de syllabes pour Bic, on ne se questionne pas plus longtemps,;c’est St-Ulric qui aura la chance d’être immortalisée dans le Pouceux (!).;Le hic c’est qu’on a appris un an après la sortie de l’album;qu’il n’y avait pas de guichet automatique à St-Ulric…;Comment pouvais-je imaginer qu’en 1999 il y ait encore des villes;n’ayant pas de guichet automatique ?;Bref, la chanson sera sûrement actualisée un jour.;Ils vont bien finir par avoir un guichet !;Autre chose, si vous remarquez, la fin du texte a vraiment été botchée.;En fait, je n’arrivais pas à trouver de fin.;Dom est venu chez nous et m’a dit : « ben y’a pas de fin, c’est tout.;On va finir en disant;Si vous passez dans c’te bout-là /;Embarquez-moi !!! ».;On a aussi pensé au clin d’oeil en rapport au dessin animé Rémi;(je suis sans famille etc…).;On a trouvé ça ben drôle et on a bâclé ça là ! (rires).'),
(36, 'Un p\'tit tour', 'Je venais d’emménager dans mon premier appartement au 99 Archambault à L’assomption.;Il n’y avait pas de calorifère dans tout l’appart.;Seulement une grosse chauffrette dans le passage;qui prenait plus d’une heure pour réchauffer tout le logement.;Il y faisait tellement froid que parfois, j’allais lire à côté du four,;la porte ouverte à 325 degrés.;J’avais composé les paroles du refrain et quelques phrases du couplet;lorsque Dom m’arriva avec d’autres paroles pour les couplets.;Finalement, les couplets sont un mélange du texte à Dom et du mien.;Ça a donné une p’tite chanson assez naïve écrite pour une fille qui était;(et qui est toujours) très chère pour moi.;P.S. « Mon coloc qui travaille su’l shift de nuit »,;c’était en fait UNE coloc puisque j’habitais avec Karine, la sœur de Karl.;Mais elle ne travaille plus su’l shift de nuit depuis quelques semaines.'),
(37, 'En berne', '« J’étais sur la rue St-Denis à Montréal;et une mélodie m’est soudainement venue en tête.;C’était le riff de mandoline de ce qui est devenu plus tard En berne.;Donc, pour ne pas l’oublier, j’ai appelé chez moi;et je me suis fredonné l’air sur mon répondeur.;J’ai donc commencé à travailler un texte qui s’intitulait « La belle province »;(pour faire un lien avec l’ancienne devise du Québec;et le restaurant de fast-food) et qui traitait de toutes sortes de sujets.;Un genre de melting-pot de tout ce qui me faisait chier;dans la société québécoise actuelle.;Je me suis retrouvé avec une dizaine de pages;remplies de ratures et un texte beaucoup trop long ;qui faisait en sorte que la pièce aurait duré 8 minutes…;Comme je voulais faire une synthèse et avoir un texte;qui ne laissait pas d’ambiguïtés dans le message,;j’ai commencé un casse-tête qui m’a pris deux mois à terminer :;je prenais une phrase pour la mettre ailleurs,;j’inversais des couplets, je changeais des mots etc…;Finalement, au bout de quelques semaines j’étais satisfait;mais un autre problème subsistait :;je n’avais pas de paroles pour le refrain !;Si c’est ça l’Québec mon chum », « C’est tu ça pour toi l’Québec »… etc…;Rien à faire, pas une christ d’idée qui avait de l’allure !;Puis, un soir où je souffrais d’insomnie;pendant que ma blonde de l’époque ronflait à mes côtés,;j’ai pensé à « Si c’est ça l’Québec moderne… ».;Là je me suis dit que ça sonnait bien et que c’était un bon début.;Je me suis levé et j’ai fouillé dans mon dictionnaire de rimes;pour trouver des rimes en « ERNE ».;C’est là que j’ai vu « en berne ». Mettre un drapeau en berne…;Quelle belle image ça ferait !;« Si c’est ça l’Québec moderne /;ben moi j’mets mon drapeau en berne »;En me relisant, je trouvais que ça sonnait;comme un slogan de parti politique mais que dans ce cas-ci,;on se servait du slogan pour justement décrier le laxisme des québécois,;de leurs institutions et de leur classe politique…;Sans vouloir être prétentieux, je peux vous dire que cette nuit-là;j’étais ben fier de mon coup !;Bref, j’ai eu de la misère en tabar… avec cette chanson;mais ça valait le coup d’y mettre du temps !;Dire que je vais bientôt devoir me remettre à composer…;Des nuits d’insomnie en perspective… »'),
(38, 'La tete a Papineau', ''),
(39, 'Toune d\'automne', 'L’idée de cette chanson m’est venue de façon un peu malhonnête.;Comme je n’ai pas de sœur, je n’aurais jamais pensé écrire ce texte un jour.;Mais le hasard et une trop grande curiosité font parfois de belles chansons.;Voici l’histoire :;L’an passé, j’habitais dans un appartement au sous-sol d’une luxueuse maison située près du fleuve à St-Sulpice.;Les propriétaires, des gens très gentils et affables, aimaient bien me piquer un brin de jasette lorsque je les croisais.;Il leur est arrivé à quelques reprises de me parler de leur fille qui était partie dans l’ouest canadien depuis plusieurs mois.;Ils semblaient s’ennuyer d’elle énormément.;Toujours est-il que dans cet appartement, il y avait de l’interférence sur la ligne téléphonique et parfois,;lorsque je décrochais le récepteur, je pouvais entendre les conversations de mes propriétaires.;Habituellement, je n’écoutais pas par simple respect mais quand je suis tombé sur une conversation avec leur fille qui était dans l’ouest,;je n’ai eu d’autre choix que de faire mon écornifleux.;Je ne raconterai pas ce que disait la conversation mais je peux vous dire que ça m’a grandement inspiré pour la chanson.;Bref, j’ai demeuré à cet endroit un an et je n’ai jamais vu la fille.;J’ai déménagé avant qu’elle revienne.;Mais même si je ne la connais pas vraiment, j’espère juste, comme le dit la chanson, qu’elle a repris le dessus…'),
(40, 'Heavy metal', ''),
(41, 'La manifestation', 'Si je me souviens bien, l’idée de la chanson m’est venue après que;je me sois pointé avec Dom à une manifestation contre la déforestation et les coupes à blanc,;devant le siège social de la compagnie Domtar.;Nous étions arrivés là naïvement, croyant qu’avec les retombées de;« L’erreur boréale » de Desjardins et Monderie,;nous aurions droit à une manif monstre où le citoyen crierait son indignation dans la rue…;Quelle ne fut pas notre étonnement de voir à notre arrivée,;quelques hippies complètement givrés qui jouaient du tam-tam,;des assistés sociaux en manque d’activité, des militants « fumeurs de clopes »;aux propos communistes et un vieil hurluberlu complètement disjoncté qui ressemblait à Castro.;En tout, une quarantaine de personnes pour ce qui devait être une manifestation énorme.;Et comme il faisait un froid de tous les diables, les gens désertaient massivement les lieux après une heure.;Alain Star : Plusieurs personnes vous ont posé la question suivante :;est-ce que la chanson met en doute la pertinence des manifestations ou est-ce un appel à continuer le combat ?;Je dirais que je suis ambivalent.;C’est certain que pour la santé de la démocratie (ou du peu qu’il en reste !),;les phénomènes de contestation sont nécessaires, voire impératifs.;Mais en bout de ligne, ça ne change jamais rien. La contestation, c’est quitter l’ignorance.;Un peuple qui ne conteste pas, est un peuple ignare mais qui ne sait pas qu’il se fait fourrer.;Un peuple qui conteste en est un plus éveillé mais qui se fait fourrer tout autant…;Mais pour répondre à la question, oui, le texte de « La manifestation » est à double sens.;Je l’ai écrit en pleine désillusion face à la capacité des citoyens de changer les choses.;Mais c’est aussi un appel à tous les pantouflards qui ont le cul assis sur leur sofa de se lever pour une fois.;Comme quoi je suis extrêmement naïf…'),
(42, 'Break Syndical', 'Propos de Dominique Lebeau;recueillis par Alain Star;Un beau morceau trouvé au piano.;Je me disais qu’avec un bon beat puis le violon de Marie;ça pourrait éventuellement devenir une musique de fond pour un texte pas de sens de Karl, genre « spoken-word ».;On l’a fait en spectacle, Karl parlait pendant près de 15 minutes…;On a abandonné l’idée du texte parlé mais gardé le musical.;Je pense que c’est Karl qui a trouvé le titre (et qui plus tard l’a suggéré comme titre d’album),;qui a bien du sens, c’est une pause qui fait du bien avant de répartir de plus belle!'),
(43, 'L\'hiver approche', 'Propos de J-F Pauzé;recueillis par Alain Star;« C’est un soir de février 2001 qu’a commencé à germer l’idée de la chanson L’hiver approche.;Je n’avais rien à faire et j’étais allé passer le temps au club vidéo de la Pointe, où travaillait Karl.;Une soirée bien ordinaire.;Plus ordinaire que ça tu meures.;Bref, entre deux clopes et quelques discussions insignifiantes, je suis tombé sur un article, dans un journal X,;qui traitait de l’emprise que la publicité et la consommation ont dans nos vies d’occidentaux.;Un très bon article que j’aurais d’ailleurs dû garder…;En revenant à la maison, je me suis mis à penser à la condition de l’être humain en général et j’étais, je dois l’avouer, un peu down.;Il faut dire qu’à l’époque, je n’avais pas un rond puisque j’avais décidé quelques mois auparavant de ne plus travailler.;Décision qui avait plusieurs avantages mais qui apportait également des inconvénients d’ordre monétaire (rires).;J’étais donc tiraillé entre deux visions :;celle d’une vie pépère qui allait m’apporter un certain confort sans me poser trop de questions et celle d’un humain libre,;qui fait ses propres choix, en allant un peu à contre-courant du système établi.;C’est là que me sont venues les paroles;J’loue ma vie à un employeur /;À coup d’journées et d’gouttes de sueur /;Quand j’pense qu’on fait tout’ la putain /;Pour pouvoir s’payer des cossins /etc…;Bref, j’ai rassemblé mes idées et la toune est née comme ça. Cette chanson représente une époque de ma vie qui fut assez difficile.;Une époque où je rêvais de gagner ma vie avec la musique, où je passais d’une jobine à une autre,;où mon entourage me disait que ça n’avait pas d’allure d’exercer un emploi si précaire…;Et toujours cet automne qui me ruinait financièrement avec les maudits pneus d’hiver,;le permis de conduire à payer, les plaques, les assurances de char et le maudit gaz qui augmentait…;Pour moi , quand l’hiver approche, c’est synonyme d’être cassé… C’était encore plus vrai cette année-là !'),
(44, 'A polyvalente', '« Quelques jours avant d’entrer en studio pour Break Syndical,;j’étais dans mon bureau et je regardais par la fenêtre d’où je peux apercevoir le collège où je suis allé au secondaire.;Je me suis mis à penser au chemin que j’avais parcouru depuis ce temps et également à me demander ce qui était advenu des gens que je côtoyais à l’époque…;Comme je n’étais pas vraiment dans la clique des gars « cool » de l’école et que je ne pouvais jamais sortir avec les belles filles (!);qui leur étaient réservées – faut dire que je mesurais 4 pieds 9 jusqu’en secondaire 4 – , j’ai commencé à griffonner un texte pour me venger !;Je me suis dit qu’il devait bien y avoir un de ces gars-là qui avait mal viré !;J’ai donc écrit cette chansonnette en une demi-heure et je l’ai présentée au groupe le soir même.;Comme les chansons de l’album étaient pratiquement choisies et coulées dans le béton,;on a dû lui faire une petite place car nous la trouvions bonne et franchement ludique…;Je suis allé par la suite à une soirée de retrouvailles au collège et j’y ai vu effectivement des personnes qui n’avaient pas trop bien viré.;D’autres qui brillaient par leur absence.;Certains, au contraire, sont demeurés les « winners » qu’ils étaient à l’époque.;Et plusieurs parmi ceux qui m’ignoraient dans le temps étaient soudainement devenus mes grands chums !;J’en ai pas fait de cas mais je riais un peu dans ma barbe… Christ que le monde est hypocrite !;(rires) »'),
(45, 'La noce', ''),
(46, 'Quand je r\'garde', ''),
(47, 'Mon Chum R0mi', 'Propos de J-F Pauzé;recueillis par Alain Star;Vieille chanson qui traînait dans mes tiroirs depuis des années.;J’avais composé la musique et les paroles du refrain en 1998.;Cette chanson était inspirée à la base d’un de mes chums (dont je vais taire le vrai nom) et qui avait une mauvaise passe.;Je n’avais jamais oublié cette mélodie et je m’étais bien juré de l’utiliser un jour.;Ce qu’il y a de bon, c’est que pendant les années où elle était en stand-by dans mon tiroir,;j’ai vu plusieurs camarades passer par des moments difficiles.;Je dirais même que certains passages de la chanson sont aussi inspirés de ma propre vie.;Bref, Mon chum Rémi, c’est l’histoire de plein de gens à la fois…;Alors, quand j’ai commencé à travailler le texte des couplets, à l’été 2001, je me disais que ça irait vite…;Mais Mon chum Rémi a bien failli ne jamais être sur Break Syndical !Je n’ai jamais eu autant de difficulté avec une chanson. Incroyable !;Il y a eu au moins 30 versions différentes et quand je relis ça aujourd’hui je me dis qu’elle aurait pu être très quétaine !;C’était pathétique ! (rires) J’avais même abandonné l’idée jusqu’à temps que Marie-Annick réussisse à me convaincre de la retravailler.;Finalement, c’est lors d’un soir de canicule du mois d’août que je l’ai récrite au complet… en une demi-heure !;je suis allé voir Marie et lui ai dit : « Ça va être ça ou rien ».;Elle a pleuré en l’écoutant.;J’ai dit : « O.k. c’est ce que je voulais ! » (rires)'),
(48, 'Salut Mon Ron', ''),
(49, 'Joyeux calvaire', ''),
(50, 'Ruelle Laurier', ''),
(51, 'La toune cachee', ''),
(52, 'La sainte paix', ''),
(53, 'Le gourmand', ''),
(54, 'Karaoke', ''),
(55, 'Karaok0 version karaok0', ''),
(56, 'Robert Bob Bourgoin', 'Propos de Dominique Lebeau;recueillis par Alain Star;Primo, j’étais avec djieff à québec pour une conférence de presse ou quelque chose du genre.;un type nous arrête dans la rue – « pouvez-vous signer ma pétition pour j’sais-pus-quoi? ».;ok, djieff signe, moi j’écris (pour rire) robert bourgouin, ottawa.;j’dis ça à dji, on riait.;secondo, quelques semaines plus tard, on est avec des têtes dirigeantes de louboy;(popol, karl, françois xavier, moi-même et peut-être djieff), on décide de faire un film:;LES COPAINS. en gros, je jouais robert bourgouin,;banlieusard qui invitait ses chums à zigonner après la piscine, le cabanon, le moteur de l’auto, etc…;françois xavier était le gars avec des théories du genre;« l’huile c’est comme le sang du moteur » ou encore « le backwash c’est comme le sang du filtreur ».;il passait son temps à m’appeler bob et moi à lui dire « non, c’est robert ».;popol arrivait toujours (puisque c’était en 5 scènes semblables;genre accumulation de running-gags poches) au bon moment avec le bon outil.;il promenait son chien aussi.;karl ne disait rien du film sauf à la fin.;après qu’on ait réparé la télé il sort: « heille, juste à temps pour regarder la game de balle! ».;quelle mauvaise réplique… faux fou rire général puis générique.;le film a dû être effacé le lendemain tellement c’était pitoyable.;la toune, ben, c’est ça, c’est à cause du film que personne ne verra jamais!;« quand j’ai 2-3 cossins à réparer dehors, s’pointent LES COPAINS et puis on jase de chars. »'),
(57, 'Le Roi Katsh0 1ere', ''),
(58, 'Le Roi Katsh0 2e', ''),
(59, 'intro', ''),
(60, 'Les etoiles filantes', 'Ça devait bien faire deux ans que j’avais cette maudite mélodie en tête.;Je la chantais toujours en voiture en y glissant des paroles incohérentes puisque le texte n’était pas écrit.;Et je ne savais pas non plus dans quelle direction l’amener au niveau musical.;Mais je l’avais toujours dans la tête.;C’est bon signe dans ce temps-là !;Puis un jour, je me suis dit qu’il fallait peut-être commencer par la base et écrire un texte.;Ce que j’ai fait.;C’est l’histoire simple, voire banale d’un gars qui, à l’aube de la trentaine,;porte un regard sur le chemin parcouru;et qui fait un espèce de bilan en se questionnant au passage sur le sens de sa vie.;Le tout sous forme de confidences faites à une amie dans un bar, rue St-Denis.;Voilà pour le canevas.;Musicalement, j’avais une petite idée mais c’est vraiment avec les autres Cowboys que Les étoiles filantes ont pris forme.;On ne savait pas trop où s’en aller en studio.;J’avais l’air d’accordéon en tête mais il manquait quelque chose.;Marie a alors ajouté une très belle ligne de piano et de la flûte traversière qui accentuent le côté mélancolique de la chanson.;Jérôme l’a agrémentée d’une superbe ligne de contrebasse,;j’ai fait trois pistes de guitares en contretemps et Dom y a ajouté des percussions.;Puis nous avons décidé de faire une intro qui serait comme un espèce de crescendo d’intensité;nous menant à l’entrée de l’accordéon et de la grosse caisse.;Puis Marie est arrivée avec son intro de piano;qui s’est mariée parfaitement avec le reste.;On a écouté le tout et… nous avions enfin une chanson qui se tenait !;Le résultat était à notre goût.;J’aime beaucoup cette chanson.;Pour moi, elle est dans mon top 2 avec L’hiver approche.;Pour le reste, je remercie cette belle étoile qui m’a inspiré le texte de la chanson un soir, dans un bar de la rue St-Denis.;Il y a de ces histoires qui n’aboutissent pas mais qu’on n’oubliera jamais.'),
(61, 'Ti-Cul', ''),
(62, '8 secondes', ''),
(63, 'Plus rien', 'C’est en revenant d’une conférence d’Hubert Reeves à Châteauguay qu’a commencé à germer l’idée de la chanson Plus rien.;L’astrophysicien avait commencé sa présentation en disant quelque chose du genre :;« (…) dans l’histoire de la planète terre, il y a eu cinq extinctions majeures;(celle qu’on connaît le plus est celle des dinosaures) et elles ont toutes été la conséquence de phénomènes naturels;(météorites, changements de température, etc…).;La sixième extinction pourrait bien être celle de l’être humain.;Et ce sera la première fois qu’une espèce sera directement responsable de son extinction (…) »;J’étais dans ma voiture avec Jérôme et je réfléchissais à tout ça.;Même si ce sont des hypothèses, je ne sais pas pourquoi;mais j’ai plus tendance à croire les prévisions environnementales d’un Hubert Reeves que celles de Georges W.;Bush, Paul Martin ou autres PDG de multinationales.;Je lui ai alors dit qu’il fallait absolument faire une chanson à ce sujet.;C’est resté là.;Quelques jours plus tard, j’ai pensé écrire un texte dont le narrateur serait le dernier humain de la terre.;Dans la chanson, il exprimerait son grand désarroi face à la catastrophe qui n’a pu être évitée,;tout en relatant les faits historiques hypothétiques qui ont conduit à cette catastrophe.;Je trouvais l’idée excellente !;Tellement que j’ai composé la chanson en une heure.;Quand je l’ai fait écouter aux autres, ils étaient bouche bée.;Ils disaient que c’était très beau mais aussi très sombre.;Moi, j’étais tellement excité que je n’avais pas vu à quel point le texte était dramatique.;C’est quelques jours plus tard que je me suis rendu compte de la lourdeur du récit.;Mais bon que je me suis dit, on ne peut pas toujours parler de Gina Pinard dans la vie !'),
(64, 'Hannah', ''),
(65, 'Symphonie pour Caza', ''),
(66, 'La Reine', ''),
(67, 'En attendant', ''),
(68, 'Lettre a Levesque', ''),
(69, 'Ces temps-ci', 'Nous étions à la fin de la tournée Break Syndical, été 2003.;J’étais fatigué et comme ça arrive parfois dans une vie,;j’avais quelques petits problèmes personnels.;Je n’entre pas dans les détails.;Pas vraiment important et surtout, chose du passé.;J’étais dans une chambre de motel, nous venions de faire un spectacle et je n’avais pas sommeil.;À mes côtés dormait une gentille fille que j’avais croisée quelques fois depuis le début de l’été et je savais pertinemment que je ne la reverrais plus après cette nuit.;Ça me faisait un petit pincement au cœur.;Sa présence m’avait fait du bien.;C’est en égrenant les secondes de cette nuit interminable que j’ai pensé écrire Ces temps-ci.;Puis je me suis assoupi pour quelques heures.;Le lendemain je revenais chez moi avec mon pack-sac et mon char accidenté;(j’avais pogné un accident deux jours plus tôt ayant presque tué Caza et Titi Tancrède.;Je vous jure que c’était vraiment une belle époque…);et je me suis arrêté à Québec pour faire une sieste dans un hôtel car je sentais que j’allais m’endormir au volant.;C’est là, sur des feuilles de papier avec l’entête de l’hôtel, que j’ai griffonné le dernier couplet /;refrain de Ces temps-ci.;Le reste de la chanson est venu quelques semaines plus tard.;J’ai lu un jour que le fait d’écouter des chansons tristes lorsque nous sommes déprimés a un effet bénéfique sur le moral.;Je sais maintenant qu’en écrire est aussi une bonne façon de retrouver le sourire.;Ça permet de sortir le méchant et de faire un trait sur des moments un peu pénibles.;Je n’ai pas réinventé la roue mais j’aime beaucoup cette chanson.'),
(70, 'Ma belle Sophie', ''),
(71, 'Shish Taouk', ''),
(72, 'Camping Ste-Germaine', ''),
(73, 'Si la vie vous interesse', ''),
(74, 'Epilogue', ''),
(75, 'Le Pharmacien', ''),
(76, 'Le Retour Du Roi Katshé', ''),
(77, 'Voir Du Pays', ''),
(78, 'Tendresse', ''),
(79, 'Les Bons Légumes', ''),
(80, 'Le Réel De La Patate Pilée', ''),
(81, 'Droit devant', ''),
(82, 'Chene et roseau', ''),
(83, 'Entre deux taxis', ''),
(84, 'La Catherine', ''),
(85, 'Histoire de p0che', ''),
(86, 'Bobo', ''),
(87, 'Rue des souvenirs', ''),
(88, 'Monsieur', ''),
(89, 'La tete haute', ''),
(90, 'Les hirondelles', ''),
(91, 'Tant qu\'on aura de l\'amour', ''),
(92, 'La bonne pomme', ''),
(93, 'Train de vie', ''),
(94, 'Une autre journee qui se l0ve', ''),
(95, 'Chanteur pop', ''),
(96, 'Beau-frere', ''),
(97, 'La ballade de Jipi Labrosse', ''),
(98, 'Sur un air de deja-vu', ''),
(99, 'Par chez nous', ''),
(100, 'Sans tambour ni trompette', ''),
(101, 'Normal Tremblay', ''),
(102, '1994', ''),
(103, 'Pittoresque !', ''),
(104, 'Vacances 31', ''),
(105, 'le blues de la vie', ''),
(106, 'Titi Tancr0de / Le reel d\'la fesse', ''),
(107, 'Rentre a pied', ''),
(108, 'Quand tu pars', ''),
(109, 'Au pays des sapins geants', ''),
(110, 'Doner au suivant', ''),
(111, 'T0l0', ''),
(112, 'Paris-Montreal', ''),
(113, 'Marilou s\'en fout', ''),
(114, 'L\'horloge', ''),
(115, 'Que du vent', ''),
(116, 'Classe moyenne', ''),
(117, 'Comme Joe Dassin', ''),
(118, 'Hasbeen', ''),
(119, 'Party!', ''),
(120, 'Shooters', ''),
(121, 'On tient l\'coup', ''),
(122, 'Octobre', ''),
(123, 'Bye bye Lou', ''),
(124, 'La la la', ''),
(125, 'Les vers de terre', ''),
(126, 'Pizza Galaxie', ''),
(127, 'Les feuilles mortes', ''),
(128, 'So so', ''),
(129, 'La cave', ''),
(130, 'Marine martounde', ''),
(131, 'Oktoberfest', ''),
(132, 'La devisse', ''),
(133, 'Mon grand-pere', ''),
(134, 'Louis Hebert', ''),
(135, 'Pub Royal', ''),
(136, 'L\'Am0rique pleure', ''),
(137, 'Les maisons toutes pareilles', ''),
(138, 'Suzie Prudhomme', ''),
(139, 'Ici-bas', ''),
(140, 'Saint-profond', ''),
(141, 'Mononc\' Andr0', ''),
(142, 'La travers0e (de l\'Atlantique en 1774)', ''),
(143, 'D\'une tristesse', ''),
(144, 'Johnny pou', ''),
(145, 'Sur mon 0paule', ''),
(146, 'En business', ''),
(147, '0pique 0ric', ''),
(148, 'Les Nuits de Repentigny', ''),
(149, 'Le P\'tit Tommy', ''),
(150, 'Le Long d\'la 20', ''),
(151, 'Anguille sous roche', ''),
(152, 'Vid0o de la Pointe', ''),
(153, 'La Gripp', ''),
(154, 'Fin d\'hiver', ''),
(155, 'Le Clochard et la Lune', ''),
(156, 'Portrait #4', ''),
(157, 'ous-sol', ''),
(158, 'Autodium', ''),
(159, 'Rock camisole', ''),
(160, 'Party d\'pouel', ''),
(161, 'No0l brun', ''),
(162, 'Paul', ''),
(163, 'La Louisiane', ''),
(164, 'Fille de club', ''),
(165, 'Pizza Barbas', ''),
(166, 'Dans son ciel', ''),
(167, 'Le C0ur battant', ''),
(168, 'Graseille', ''),
(169, 'Des espoirs de cause', ''),
(170, 'Bienvenue chez nous', ''),
(171, 'Loulou vs Loulou', ''),
(172, 'Y\'est 3 heures on ferme!', ''),
(173, 'La fin du show', ''),
(174, 'On fait quoi maintenant?', ''),
(175, 'Questions sans r0ponses', ''),
(176, 'Vie et mort de Gina Pinard', ''),
(177, 'Loulou (partie II)', ''),
(178, '(re)Bienvenue chez vous', ''),
(179, 'Les cheveux blancs', ''),
(180, 'Merci ben!', ''),
(181, 'Les bonnes continuations', '');

-- --------------------------------------------------------

--
-- Structure de la table `type`
--

CREATE TABLE `type` (
  `typ_id` int(11) NOT NULL,
  `typ_libelle` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `type`
--

INSERT INTO `type` (`typ_id`, `typ_libelle`) VALUES
(1, 'studio'),
(2, 'live'),
(3, 'Bande Orginale');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `uti_id` int(11) NOT NULL,
  `uti_pseudo` varchar(30) DEFAULT NULL,
  `uti_email` varchar(30) DEFAULT NULL,
  `uti_mdp` varchar(255) NOT NULL,
  `uti_profil` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`uti_id`, `uti_pseudo`, `uti_email`, `uti_mdp`, `uti_profil`) VALUES
(1, 'Admin', '', '$2y$10$Wnjlonje3e2EXOy9ZQ2mZeuzCg5M5UbMdWReT3qr6288iLVui7qgK', 1),
(2, 'test', '', '$2y$10$s/G8V/1AczeGhGwiCfGwru.O4TPwxZv8IIwik9MzdniC0S0076dbS', 2),
(3, 'juju', '', '$2y$10$BRbnBxfG3NyhXkwYjOs3KeVhf9t82TFpT6KISHXwHWZDf9exFUYYu', 2);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`alb_id`),
  ADD KEY `cs12` (`alb_type`);

--
-- Index pour la table `apparaitre`
--
ALTER TABLE `apparaitre`
  ADD PRIMARY KEY (`app_personnages`,`app_tounes`);

--
-- Index pour la table `chanter`
--
ALTER TABLE `chanter`
  ADD PRIMARY KEY (`cha_membres`,`cha_tounes`),
  ADD KEY `cs14` (`cha_tounes`);

--
-- Index pour la table `composer`
--
ALTER TABLE `composer`
  ADD PRIMARY KEY (`com_membres`,`com_tounes`),
  ADD KEY `cs5` (`com_tounes`);

--
-- Index pour la table `ecrire`
--
ALTER TABLE `ecrire`
  ADD PRIMARY KEY (`ecr_membres`,`ecr_tounes`),
  ADD KEY `cs3` (`ecr_tounes`);

--
-- Index pour la table `famille`
--
ALTER TABLE `famille`
  ADD PRIMARY KEY (`fam_id`);

--
-- Index pour la table `inclure`
--
ALTER TABLE `inclure`
  ADD PRIMARY KEY (`inc_albums`,`inc_tounes`),
  ADD KEY `cs11` (`inc_tounes`);

--
-- Index pour la table `instruments`
--
ALTER TABLE `instruments`
  ADD PRIMARY KEY (`ins_id`),
  ADD KEY `cs1` (`ins_famille`);

--
-- Index pour la table `jouer`
--
ALTER TABLE `jouer`
  ADD PRIMARY KEY (`jou_membres`,`jou_instruments`),
  ADD KEY `cs9` (`jou_instruments`);

--
-- Index pour la table `membres`
--
ALTER TABLE `membres`
  ADD PRIMARY KEY (`mem_id`);

--
-- Index pour la table `personnages`
--
ALTER TABLE `personnages`
  ADD PRIMARY KEY (`per_id`);

--
-- Index pour la table `profil`
--
ALTER TABLE `profil`
  ADD PRIMARY KEY (`pro_id`);

--
-- Index pour la table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`typ_id`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`uti_id`),
  ADD KEY `cs15` (`uti_profil`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `albums`
--
ALTER TABLE `albums`
  MODIFY `alb_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT pour la table `famille`
--
ALTER TABLE `famille`
  MODIFY `fam_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `instruments`
--
ALTER TABLE `instruments`
  MODIFY `ins_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `membres`
--
ALTER TABLE `membres`
  MODIFY `mem_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `personnages`
--
ALTER TABLE `personnages`
  MODIFY `per_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=177;

--
-- AUTO_INCREMENT pour la table `profil`
--
ALTER TABLE `profil`
  MODIFY `pro_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `type`
--
ALTER TABLE `type`
  MODIFY `typ_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `uti_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `albums`
--
ALTER TABLE `albums`
  ADD CONSTRAINT `cs12` FOREIGN KEY (`alb_type`) REFERENCES `type` (`typ_id`);

--
-- Contraintes pour la table `chanter`
--
ALTER TABLE `chanter`
  ADD CONSTRAINT `cs13` FOREIGN KEY (`cha_membres`) REFERENCES `membres` (`mem_id`),
  ADD CONSTRAINT `cs14` FOREIGN KEY (`cha_tounes`) REFERENCES `tounes` (`tou_id`);

--
-- Contraintes pour la table `composer`
--
ALTER TABLE `composer`
  ADD CONSTRAINT `cs4` FOREIGN KEY (`com_membres`) REFERENCES `membres` (`mem_id`),
  ADD CONSTRAINT `cs5` FOREIGN KEY (`com_tounes`) REFERENCES `tounes` (`tou_id`);

--
-- Contraintes pour la table `ecrire`
--
ALTER TABLE `ecrire`
  ADD CONSTRAINT `cs2` FOREIGN KEY (`ecr_membres`) REFERENCES `membres` (`mem_id`),
  ADD CONSTRAINT `cs3` FOREIGN KEY (`ecr_tounes`) REFERENCES `tounes` (`tou_id`);

--
-- Contraintes pour la table `inclure`
--
ALTER TABLE `inclure`
  ADD CONSTRAINT `cs10` FOREIGN KEY (`inc_albums`) REFERENCES `albums` (`alb_id`),
  ADD CONSTRAINT `cs11` FOREIGN KEY (`inc_tounes`) REFERENCES `tounes` (`tou_id`);

--
-- Contraintes pour la table `instruments`
--
ALTER TABLE `instruments`
  ADD CONSTRAINT `cs1` FOREIGN KEY (`ins_famille`) REFERENCES `famille` (`fam_id`);

--
-- Contraintes pour la table `jouer`
--
ALTER TABLE `jouer`
  ADD CONSTRAINT `cs8` FOREIGN KEY (`jou_membres`) REFERENCES `membres` (`mem_id`),
  ADD CONSTRAINT `cs9` FOREIGN KEY (`jou_instruments`) REFERENCES `instruments` (`ins_id`);

--
-- Contraintes pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD CONSTRAINT `cs15` FOREIGN KEY (`uti_profil`) REFERENCES `profil` (`pro_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
