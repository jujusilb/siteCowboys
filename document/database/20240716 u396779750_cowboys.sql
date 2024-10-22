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
-- Structure de la table `apparaitre`
--

CREATE TABLE `apparaitre` (
  `app_personnages` int(11) NOT NULL,
  `app_tounes` int(11) NOT NULL,
  `app_commentaire` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


--
-- Structure de la table `chanter`
--

CREATE TABLE `chanter` (
  `cha_membres` int(11) NOT NULL,
  `cha_tounes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


--
-- Structure de la table `composer`
--

CREATE TABLE `composer` (
  `com_membres` int(11) NOT NULL,
  `com_tounes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Structure de la table `ecrire`
--

CREATE TABLE `ecrire` (
  `ecr_membres` int(11) NOT NULL,
  `ecr_tounes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Structure de la table `famille`
--

CREATE TABLE `famille` (
  `fam_id` int(11) NOT NULL,
  `fam_libelle` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Structure de la table `instruments`
--

CREATE TABLE `instruments` (
  `ins_id` int(11) NOT NULL,
  `ins_libelle` varchar(100) DEFAULT NULL,
  `ins_famille` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Structure de la table `jouer`
--

CREATE TABLE `jouer` (
  `jou_membres` int(11) NOT NULL,
  `jou_instruments` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


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
-- Structure de la table `personnages`
--

CREATE TABLE `personnages` (
  `per_id` int(11) NOT NULL,
  `per_nom` varchar(100) DEFAULT NULL,
  `per_bio` varchar(4000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Structure de la table `profil`
--

CREATE TABLE `profil` (
  `pro_id` int(11) NOT NULL,
  `pro_libelle` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Structure de la table `tounes`
--

CREATE TABLE `tounes` (
  `tou_id` int(11) NOT NULL,
  `tou_libelle` varchar(100) DEFAULT NULL,
  `tou_commentaire` varchar(5000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Structure de la table `type`
--

CREATE TABLE `type` (
  `typ_id` int(11) NOT NULL,
  `typ_libelle` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
