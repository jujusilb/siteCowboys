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

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `chanter`
--
ALTER TABLE `chanter`
  ADD PRIMARY KEY (`cha_membres`,`cha_tounes`),
  ADD KEY `cs14` (`cha_tounes`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `chanter`
--
ALTER TABLE `chanter`
  ADD CONSTRAINT `cs13` FOREIGN KEY (`cha_membres`) REFERENCES `membres` (`mem_id`),
  ADD CONSTRAINT `cs14` FOREIGN KEY (`cha_tounes`) REFERENCES `tounes` (`tou_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
