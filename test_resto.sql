-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  mar. 27 août 2019 à 18:33
-- Version du serveur :  10.1.38-MariaDB
-- Version de PHP :  7.2.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `test_resto`
--

-- --------------------------------------------------------

--
-- Structure de la table `horaire`
--

CREATE TABLE `horaire` (
  `id` int(11) NOT NULL,
  `day` smallint(6) NOT NULL,
  `begin_hour_am` time DEFAULT NULL,
  `end_hour_am` time DEFAULT NULL,
  `begin_hour_pm` time DEFAULT NULL,
  `end_hour_pm` time DEFAULT NULL,
  `restaurant_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `horaire`
--

INSERT INTO `horaire` (`id`, `day`, `begin_hour_am`, `end_hour_am`, `begin_hour_pm`, `end_hour_pm`, `restaurant_id`) VALUES
(3, 1, '11:30:00', '14:00:00', '18:30:00', '22:00:00', 3),
(4, 2, '11:30:00', '14:00:00', '18:30:00', '22:00:00', 3),
(5, 3, '11:30:00', '14:00:00', '18:30:00', '22:00:00', 3),
(6, 4, '11:30:00', '14:00:00', NULL, NULL, 3),
(7, 5, '11:30:00', '14:00:00', '18:30:00', '22:00:00', 3),
(8, 6, '11:30:00', '14:00:00', '19:00:00', '23:00:00', 3),
(10, 7, NULL, NULL, NULL, NULL, 3),
(11, 1, '11:30:00', '14:00:00', '18:30:00', '22:00:00', 10),
(12, 2, '11:30:00', '14:00:00', '18:30:00', '22:00:00', 10),
(13, 3, '11:30:00', '14:00:00', '18:30:00', '22:00:00', 10),
(14, 4, '11:30:00', '14:00:00', NULL, NULL, 10),
(15, 5, '11:30:00', '14:00:00', '18:30:00', '22:00:00', 10),
(16, 6, '11:30:00', '14:00:00', '19:00:00', '23:00:00', 10),
(17, 7, NULL, NULL, NULL, NULL, 10),
(18, 1, '11:30:00', '14:00:00', '18:30:00', '22:00:00', 9),
(19, 2, '11:30:00', '14:00:00', '18:30:00', '22:00:00', 9),
(20, 3, '11:30:00', '14:00:00', '18:30:00', '22:00:00', 9),
(21, 4, '11:30:00', '14:00:00', NULL, NULL, 9),
(22, 5, '11:30:00', '14:00:00', '18:30:00', '22:00:00', 9),
(23, 6, '11:30:00', '14:00:00', '19:00:00', '23:00:00', 9),
(24, 7, NULL, NULL, NULL, NULL, 9),
(25, 1, '11:30:00', '14:00:00', '18:30:00', '22:00:00', 6),
(26, 2, '11:30:00', '14:00:00', '18:30:00', '22:00:00', 6),
(27, 3, '11:30:00', '14:00:00', '18:30:00', '22:00:00', 6),
(28, 4, '11:30:00', '14:00:00', NULL, NULL, 6),
(29, 5, '11:30:00', '14:00:00', '18:30:00', '22:00:00', 6),
(30, 6, '11:30:00', '14:00:00', '19:00:00', '23:00:00', 6),
(31, 7, NULL, NULL, NULL, NULL, 6),
(32, 1, '11:30:00', '14:00:00', '18:30:00', '22:00:00', 7),
(33, 2, '11:30:00', '14:00:00', '18:30:00', '22:00:00', 7),
(34, 3, '11:30:00', '14:00:00', '18:30:00', '22:00:00', 7),
(35, 4, '11:30:00', '14:00:00', NULL, NULL, 7),
(36, 5, '11:30:00', '14:00:00', '18:30:00', '22:00:00', 7),
(37, 6, '11:30:00', '14:00:00', '19:00:00', '23:00:00', 7),
(38, 7, NULL, NULL, NULL, NULL, 7),
(39, 1, '11:30:00', '14:00:00', '18:30:00', '22:00:00', 4),
(40, 2, '11:30:00', '14:00:00', '18:30:00', '22:00:00', 4),
(41, 3, '11:30:00', '14:00:00', '18:30:00', '22:00:00', 4),
(42, 4, '11:30:00', '14:00:00', NULL, NULL, 4),
(43, 5, '11:30:00', '14:00:00', '18:30:00', '22:00:00', 4),
(44, 6, '11:30:00', '14:00:00', '19:00:00', '23:00:00', 4),
(45, 7, NULL, NULL, NULL, NULL, 4),
(46, 1, '11:30:00', '14:00:00', '18:30:00', '22:00:00', 5),
(47, 2, '11:30:00', '14:00:00', '18:30:00', '22:00:00', 5),
(48, 3, '11:30:00', '14:00:00', '18:30:00', '22:00:00', 5),
(49, 4, '11:30:00', '14:00:00', NULL, NULL, 5),
(50, 5, '11:30:00', '14:00:00', '18:30:00', '22:00:00', 5),
(51, 6, '11:30:00', '14:00:00', '19:00:00', '23:00:00', 5),
(52, 7, NULL, NULL, NULL, NULL, 5),
(53, 1, '11:30:00', '14:00:00', '18:30:00', '22:00:00', 8),
(54, 2, '11:30:00', '14:00:00', '18:30:00', '22:00:00', 8),
(55, 3, '11:30:00', '14:00:00', '18:30:00', '22:00:00', 8),
(56, 4, '11:30:00', '14:00:00', NULL, NULL, 8),
(57, 5, '11:30:00', '14:00:00', '18:30:00', '22:00:00', 8),
(58, 6, '11:30:00', '14:00:00', '19:00:00', '23:00:00', 8),
(59, 7, NULL, NULL, NULL, NULL, 8),
(60, 1, '11:30:00', '14:00:00', '18:30:00', '22:00:00', 2),
(61, 2, '11:30:00', '14:00:00', '18:30:00', '22:00:00', 2),
(62, 3, '11:30:00', '14:00:00', '18:30:00', '22:00:00', 2),
(63, 4, '11:30:00', '14:00:00', NULL, NULL, 2),
(64, 5, '11:30:00', '14:00:00', '18:30:00', '22:00:00', 2),
(65, 6, '11:30:00', '14:00:00', '19:00:00', '23:00:00', 2),
(66, 7, NULL, NULL, NULL, NULL, 2),
(67, 1, '11:30:00', '14:00:00', '18:30:00', '22:00:00', 1),
(68, 2, '11:30:00', '14:00:00', '18:30:00', '22:00:00', 1),
(69, 3, '11:30:00', '14:00:00', '18:30:00', '22:00:00', 1),
(70, 4, '11:30:00', '14:00:00', NULL, NULL, 1),
(71, 5, '11:30:00', '14:00:00', '18:30:00', '22:00:00', 1),
(72, 6, '11:30:00', '14:00:00', '19:00:00', '23:00:00', 1),
(73, 7, NULL, NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Structure de la table `migration_versions`
--

CREATE TABLE `migration_versions` (
  `version` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `executed_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migration_versions`
--

INSERT INTO `migration_versions` (`version`, `executed_at`) VALUES
('20190827124630', '2019-08-27 12:46:55'),
('20190827125249', '2019-08-27 12:52:59'),
('20190827125733', '2019-08-27 12:57:51');

-- --------------------------------------------------------

--
-- Structure de la table `restaurant`
--

CREATE TABLE `restaurant` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `restaurant`
--

INSERT INTO `restaurant` (`id`, `name`) VALUES
(1, 'SoGood'),
(2, 'Pomme de Pain'),
(3, 'Alexens'),
(4, 'Made In Me'),
(5, 'Nostrum'),
(6, 'Kok Piraat'),
(7, 'Le Switch Ou Bien'),
(8, 'Pick It Up'),
(9, 'Kilometre 200'),
(10, 'En Famille');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `horaire`
--
ALTER TABLE `horaire`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_BBC83DB6B1E7706E` (`restaurant_id`);

--
-- Index pour la table `migration_versions`
--
ALTER TABLE `migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `horaire`
--
ALTER TABLE `horaire`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT pour la table `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `horaire`
--
ALTER TABLE `horaire`
  ADD CONSTRAINT `FK_BBC83DB6B1E7706E` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurant` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
