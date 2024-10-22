-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mer. 26 juin 2024 à 10:07
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

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `ecrire`
--
ALTER TABLE `ecrire`
  ADD PRIMARY KEY (`ecr_membres`,`ecr_tounes`),
  ADD KEY `cs3` (`ecr_tounes`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `ecrire`
--
ALTER TABLE `ecrire`
  ADD CONSTRAINT `cs2` FOREIGN KEY (`ecr_membres`) REFERENCES `membres` (`mem_id`),
  ADD CONSTRAINT `cs3` FOREIGN KEY (`ecr_tounes`) REFERENCES `tounes` (`tou_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
