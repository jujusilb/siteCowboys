-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : ven. 21 juin 2024 à 08:03
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

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `membres`
--
ALTER TABLE `membres`
  ADD PRIMARY KEY (`mem_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `membres`
--
ALTER TABLE `membres`
  MODIFY `mem_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
