-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : ven. 21 juin 2024 à 10:09
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
(21, 'comédie Musicale "Pub Royal"', '2024', '_images/Album/ComediePubRoyal.jpg', 14, 2),
(22, 'Pub Royal', '2024', '_images/Album/PubRoyal.jpg', 13, 1);
(21;)
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
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `albums`
--
ALTER TABLE `albums`
  MODIFY `alb_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `albums`
--
ALTER TABLE `albums`
  ADD CONSTRAINT `cs12` FOREIGN KEY (`alb_type`) REFERENCES `type` (`typ_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
