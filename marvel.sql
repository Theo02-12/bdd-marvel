-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : db
-- Généré le : mer. 14 juin 2023 à 12:28
-- Version du serveur : 8.0.29
-- Version de PHP : 8.0.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `marvel`
--

-- --------------------------------------------------------

--
-- Structure de la table `Acteur_actrice`
--

CREATE TABLE `Acteur_actrice` (
  `id_Acteur_actrice` int NOT NULL,
  `nom_Acteur_actrice` varchar(128) DEFAULT NULL,
  `prenom_Acteur_actrice` varchar(128) DEFAULT NULL,
  `role_Acteur_actrice` varchar(128) DEFAULT NULL,
  `dateNaissance_Acteur_actrice` date DEFAULT NULL,
  `date_creation` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_modif` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `Acteur_actrice`
--

INSERT INTO `Acteur_actrice` (`id_Acteur_actrice`, `nom_Acteur_actrice`, `prenom_Acteur_actrice`, `role_Acteur_actrice`, `dateNaissance_Acteur_actrice`, `date_creation`, `date_modif`) VALUES
(2, 'Holland', 'Tom', 'Spiderman', '1996-06-01', '2023-06-14 12:01:27', '2023-06-14 12:01:41'),
(3, 'Hemsworth', 'Chris', 'Thor', '1983-08-11', '2023-06-14 12:01:27', '2023-06-14 12:01:41'),
(4, 'Evans', 'Chris', 'Captain America', '1981-06-13', '2023-06-14 12:01:27', '2023-06-14 12:01:41'),
(5, 'Ruffalo', 'Mark', 'Hulk', '1967-11-22', '2023-06-14 12:05:12', '2023-06-14 12:05:12'),
(6, 'Renner', 'Jeremy', 'oeil de faucon', '1971-01-07', '2023-06-14 12:06:31', '2023-06-14 12:06:31');

-- --------------------------------------------------------

--
-- Structure de la table `films`
--

CREATE TABLE `films` (
  `id_films` int NOT NULL,
  `titre_Entite` varchar(128) DEFAULT NULL,
  `anneeSortie_Films` varchar(4) DEFAULT NULL,
  `duree_Films` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `films`
--

INSERT INTO `films` (`id_films`, `titre_Entite`, `anneeSortie_Films`, `duree_Films`) VALUES
(1, 'Avengers End Game', '2019', '120'),
(2, 'spiderman', '2020', '120'),
(3, 'Spiderman 2', '2016', '145'),
(4, 'Iron Man', '2009', '139');

-- --------------------------------------------------------

--
-- Structure de la table `film_pref`
--

CREATE TABLE `film_pref` (
  `id_films` int NOT NULL,
  `id_Utilisateurs` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `film_pref`
--

INSERT INTO `film_pref` (`id_films`, `id_Utilisateurs`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `joue`
--

CREATE TABLE `joue` (
  `id_films` int NOT NULL,
  `id_Acteur_actrice` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `joue`
--

INSERT INTO `joue` (`id_films`, `id_Acteur_actrice`) VALUES
(1, 2),
(2, 2),
(3, 2);

-- --------------------------------------------------------

--
-- Structure de la table `Realisateur`
--

CREATE TABLE `Realisateur` (
  `id_Realisateur` int NOT NULL,
  `nom_Realisateur` varchar(128) DEFAULT NULL,
  `prenom_Realisateur` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `Realisateur`
--

INSERT INTO `Realisateur` (`id_Realisateur`, `nom_Realisateur`, `prenom_Realisateur`) VALUES
(1, 'Lee', 'Stan');

-- --------------------------------------------------------

--
-- Structure de la table `realise_`
--

CREATE TABLE `realise_` (
  `id_films` int NOT NULL,
  `id_Realisateur` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `realise_`
--

INSERT INTO `realise_` (`id_films`, `id_Realisateur`) VALUES
(2, 1);

-- --------------------------------------------------------

--
-- Structure de la table `Utilisateurs`
--

CREATE TABLE `Utilisateurs` (
  `id_Utilisateurs` int NOT NULL,
  `nom_Utilisateurs` varchar(128) DEFAULT NULL,
  `prenom_Utilisateurs` varchar(128) DEFAULT NULL,
  `emaill_Utilisateurs` varchar(128) DEFAULT NULL,
  `mdp_Utilisateurs` varchar(128) DEFAULT NULL,
  `role_Utilisateurs` int DEFAULT NULL,
  `date_naissance_Utilisateurs` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `Utilisateurs`
--

INSERT INTO `Utilisateurs` (`id_Utilisateurs`, `nom_Utilisateurs`, `prenom_Utilisateurs`, `emaill_Utilisateurs`, `mdp_Utilisateurs`, `role_Utilisateurs`, `date_naissance_Utilisateurs`) VALUES
(1, 'couvelard', 'theo', 'theo@gmail.com', 'theo62', 1, '2002-12-02');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `Acteur_actrice`
--
ALTER TABLE `Acteur_actrice`
  ADD PRIMARY KEY (`id_Acteur_actrice`);

--
-- Index pour la table `films`
--
ALTER TABLE `films`
  ADD PRIMARY KEY (`id_films`);

--
-- Index pour la table `film_pref`
--
ALTER TABLE `film_pref`
  ADD PRIMARY KEY (`id_films`,`id_Utilisateurs`),
  ADD KEY `id_Utilisateurs` (`id_Utilisateurs`);

--
-- Index pour la table `joue`
--
ALTER TABLE `joue`
  ADD PRIMARY KEY (`id_Acteur_actrice`,`id_films`),
  ADD KEY `id_films` (`id_films`);

--
-- Index pour la table `Realisateur`
--
ALTER TABLE `Realisateur`
  ADD PRIMARY KEY (`id_Realisateur`);

--
-- Index pour la table `realise_`
--
ALTER TABLE `realise_`
  ADD PRIMARY KEY (`id_Realisateur`,`id_films`),
  ADD KEY `id_films` (`id_films`);

--
-- Index pour la table `Utilisateurs`
--
ALTER TABLE `Utilisateurs`
  ADD PRIMARY KEY (`id_Utilisateurs`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `Acteur_actrice`
--
ALTER TABLE `Acteur_actrice`
  MODIFY `id_Acteur_actrice` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `films`
--
ALTER TABLE `films`
  MODIFY `id_films` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `film_pref`
--
ALTER TABLE `film_pref`
  MODIFY `id_films` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `Realisateur`
--
ALTER TABLE `Realisateur`
  MODIFY `id_Realisateur` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `Utilisateurs`
--
ALTER TABLE `Utilisateurs`
  MODIFY `id_Utilisateurs` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `film_pref`
--
ALTER TABLE `film_pref`
  ADD CONSTRAINT `film_pref_ibfk_1` FOREIGN KEY (`id_films`) REFERENCES `films` (`id_films`),
  ADD CONSTRAINT `film_pref_ibfk_2` FOREIGN KEY (`id_Utilisateurs`) REFERENCES `Utilisateurs` (`id_Utilisateurs`);

--
-- Contraintes pour la table `joue`
--
ALTER TABLE `joue`
  ADD CONSTRAINT `joue_ibfk_1` FOREIGN KEY (`id_films`) REFERENCES `films` (`id_films`),
  ADD CONSTRAINT `joue_ibfk_2` FOREIGN KEY (`id_Acteur_actrice`) REFERENCES `Acteur_actrice` (`id_Acteur_actrice`);

--
-- Contraintes pour la table `realise_`
--
ALTER TABLE `realise_`
  ADD CONSTRAINT `realise__ibfk_1` FOREIGN KEY (`id_films`) REFERENCES `films` (`id_films`),
  ADD CONSTRAINT `realise__ibfk_2` FOREIGN KEY (`id_Realisateur`) REFERENCES `Realisateur` (`id_Realisateur`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
