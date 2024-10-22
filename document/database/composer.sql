-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mer. 26 juin 2024 à 10:08
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

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `composer`
--
ALTER TABLE `composer`
  ADD PRIMARY KEY (`com_membres`,`com_tounes`),
  ADD KEY `cs5` (`com_tounes`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `composer`
--
ALTER TABLE `composer`
  ADD CONSTRAINT `cs4` FOREIGN KEY (`com_membres`) REFERENCES `membres` (`mem_id`),
  ADD CONSTRAINT `cs5` FOREIGN KEY (`com_tounes`) REFERENCES `tounes` (`tou_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
