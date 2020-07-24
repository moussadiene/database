-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le :  ven. 03 juil. 2020 à 18:11
-- Version du serveur :  10.3.16-MariaDB
-- Version de PHP :  7.2.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `banquepeuple`
--

-- --------------------------------------------------------

--
-- Structure de la table `adresse`
--

CREATE TABLE `adresse` (
  `id` int(11) UNSIGNED NOT NULL,
  `ville` varchar(20) NOT NULL,
  `dep` varchar(20) DEFAULT NULL,
  `com` varchar(20) DEFAULT NULL,
  `rue` varchar(20) DEFAULT NULL,
  `villa` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `adresse`
--

INSERT INTO `adresse` (`id`, `ville`, `dep`, `com`, `rue`, `villa`) VALUES
(1, 'Dakar', 'Pikine', 'Keur Massar', NULL, '11111'),
(2, 'Dakar', 'Pikine', 'Keur Massar', NULL, '22222');

-- --------------------------------------------------------

--
-- Structure de la table `affecter`
--

CREATE TABLE `affecter` (
  `id` int(11) UNSIGNED NOT NULL,
  `mat` varchar(11) NOT NULL,
  `numAgence` varchar(11) NOT NULL,
  `dateAffecter` date NOT NULL,
  `matAffecteur` varchar(11) NOT NULL,
  `etat` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `affecter`
--

INSERT INTO `affecter` (`id`, `mat`, `numAgence`, `dateAffecter`, `matAffecteur`, `etat`) VALUES
(1, 'RES00000', 'AGENCE01', '2020-06-26', '', 1);

-- --------------------------------------------------------

--
-- Structure de la table `agence`
--

CREATE TABLE `agence` (
  `numero` varchar(11) NOT NULL,
  `adrAgence` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `agence`
--

INSERT INTO `agence` (`numero`, `adrAgence`) VALUES
('AGENCE01', 1),
('AGENCE02', 2);

-- --------------------------------------------------------

--
-- Structure de la table `compte`
--

CREATE TABLE `compte` (
  `numero` varchar(11) NOT NULL,
  `mat` varchar(11) DEFAULT NULL,
  `id_entreprise` int(10) UNSIGNED DEFAULT NULL,
  `rib` int(3) NOT NULL,
  `solde` double(10,5) NOT NULL,
  `dateOuverture` date NOT NULL,
  `agios` double(10,5) DEFAULT NULL,
  `fraisOuverture` double(10,5) DEFAULT NULL,
  `remuneration` double(10,5) DEFAULT NULL,
  `dateDebut` date DEFAULT NULL,
  `dateFin` date DEFAULT NULL,
  `typeCompte` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `compte`
--

INSERT INTO `compte` (`numero`, `mat`, `id_entreprise`, `rib`, `solde`, `dateOuverture`, `agios`, `fraisOuverture`, `remuneration`, `dateDebut`, `dateFin`, `typeCompte`) VALUES
('11111', 'client1', NULL, 12, 1.00000, '1222-12-12', NULL, 10000.00000, 1000.00000, NULL, NULL, 1),
('3GNKMBEP', 'C3C9G7MJ', NULL, 1, 0.00000, '2020-06-30', NULL, 25000.00000, 10000.00000, '2020-06-10', '2020-06-29', 3),
('99DFUWJ3', 'WNKVVDDP', NULL, 1, 0.00000, '2020-06-30', NULL, 25000.00000, 10000.00000, NULL, NULL, 1),
('AZZEER', 'client1', NULL, 1, 0.00000, '1992-02-04', NULL, 15000.00000, 10000.00000, NULL, NULL, 1),
('BEPRK49T', 'VTAJ3UWJ', NULL, 1, 0.00000, '2020-06-30', 10000.00000, NULL, NULL, NULL, NULL, 2),
('ECHAAE6H', 'MAKH4VKE', NULL, 1, 0.00000, '2020-06-30', NULL, 25000.00000, 10000.00000, NULL, NULL, 1),
('G9B9BFFM', 'KUEVN8D9', NULL, 1, 0.00000, '2020-06-30', NULL, 25000.00000, 10000.00000, NULL, NULL, 1),
('HTMVAP22', NULL, 1, 1, 0.00000, '2020-07-01', NULL, 25000.00000, 10000.00000, NULL, NULL, 1),
('HVJMGDGG', 'N722N2CH', NULL, 1, 0.00000, '2020-07-01', NULL, 25000.00000, 10000.00000, NULL, NULL, 1),
('N99372CA', 'CF3FTPRW', NULL, 1, 0.00000, '2020-07-01', NULL, 25000.00000, 10000.00000, NULL, NULL, 1),
('PNBJBVFD', 'CWWU4RDF', NULL, 1, 0.00000, '2020-07-01', 10000.00000, NULL, NULL, NULL, NULL, 2),
('PVTUK8N6', '7P6A63VR', NULL, 1, 0.00000, '2020-07-01', NULL, 25000.00000, 10000.00000, NULL, NULL, 1),
('R37J6TU8', NULL, 2, 1, 0.00000, '2020-07-01', NULL, 20000.00000, 7500.00000, '2020-07-23', '2020-07-26', 3),
('VFHR62V7', 'J3HAVR9N', NULL, 1, 0.00000, '2020-06-30', NULL, 25000.00000, 10000.00000, '2020-06-10', '2020-06-29', 3),
('WMFUVF7B', NULL, 6, 1, 0.00000, '2020-07-01', NULL, 25000.00000, 10000.00000, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Structure de la table `entreprise`
--

CREATE TABLE `entreprise` (
  `id` int(11) UNSIGNED NOT NULL,
  `nom` varchar(20) NOT NULL,
  `tel` varchar(20) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `login` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `budget` double(50,5) NOT NULL,
  `adrEntreprise` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `entreprise`
--

INSERT INTO `entreprise` (`id`, `nom`, `tel`, `email`, `login`, `password`, `budget`, `adrEntreprise`) VALUES
(1, 'simplon', '771232332', 'mosila2138@gmail.com', NULL, NULL, 20000.00000, 1),
(2, 'simplon2', '777777777', 'mosila2138@gmail.com', NULL, NULL, 50000.00000, 1),
(4, 'simplon', '771234543', 'mosila2138@gmail.com', NULL, NULL, 2020202.00000, 1),
(5, 'simplon', '771234543', 'mosila2138@gmail.com', NULL, NULL, 2020202.00000, 1),
(6, 'simplon5', '771232323', 'mosila2138@gmail.com', NULL, NULL, 20000.00000, 1);

-- --------------------------------------------------------

--
-- Structure de la table `etat`
--

CREATE TABLE `etat` (
  `id` int(11) UNSIGNED NOT NULL,
  `libelle` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `etat`
--

INSERT INTO `etat` (`id`, `libelle`) VALUES
(1, 'actif'),
(2, 'ferme'),
(3, 'bloque'),
(4, 'geler');

-- --------------------------------------------------------

--
-- Structure de la table `etatcompte`
--

CREATE TABLE `etatcompte` (
  `id` int(11) UNSIGNED NOT NULL,
  `numcompte` varchar(11) NOT NULL,
  `etatcompte` int(11) UNSIGNED NOT NULL,
  `dateAffecter` date NOT NULL,
  `matAffecteur` varchar(11) NOT NULL,
  `etat` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `operation`
--

CREATE TABLE `operation` (
  `id` int(11) UNSIGNED NOT NULL,
  `matEmpl` varchar(11) NOT NULL,
  `numcompte` varchar(11) NOT NULL,
  `dateOperation` date NOT NULL,
  `montant` double(10,5) NOT NULL,
  `numcomptevir` varchar(11) DEFAULT NULL,
  `taxe` double(10,5) DEFAULT NULL,
  `taxesms` double(10,5) DEFAULT NULL,
  `dateD` date DEFAULT NULL,
  `dateF` date DEFAULT NULL,
  `typeOperation` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `personne`
--

CREATE TABLE `personne` (
  `matricule` varchar(11) NOT NULL,
  `cin` varchar(20) DEFAULT NULL,
  `nom` varchar(20) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `sexe` varchar(10) NOT NULL,
  `dateNaiss` date NOT NULL,
  `telephone` varchar(20) NOT NULL,
  `adrPersonne` int(11) UNSIGNED DEFAULT NULL,
  `email` varchar(20) NOT NULL,
  `raison_sociale` varchar(50) DEFAULT NULL,
  `salaire` double(10,2) DEFAULT NULL,
  `nom_employeur` varchar(50) DEFAULT NULL,
  `adr_employeur` varchar(50) DEFAULT NULL,
  `login` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `personne`
--

INSERT INTO `personne` (`matricule`, `cin`, `nom`, `prenom`, `sexe`, `dateNaiss`, `telephone`, `adrPersonne`, `email`, `raison_sociale`, `salaire`, `nom_employeur`, `adr_employeur`, `login`, `password`) VALUES
('7762APFV', '1234567891234', 'diene', 'moussa', 'masculin', '2020-07-14', '771223322', 1, 'mosila2138@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL),
('7CPH4NC2', '12345678912344', 'diene', 'sdffgvd', 'masculin', '2020-07-14', '771232323', 1, 'mosila2138@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL),
('7P6A63VR', '1234567891234', 'diene', 'moussa', 'masculin', '2020-07-13', '771232321', 1, 'mosila2138@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL),
('AC89796M', '1234567891234', 'FALL', 'KHADY', 'masculin', '2020-07-14', '771234567', 1, 'mosila2138@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL),
('ARR3P36J', '1234567891234', 'diene', 'moussa', 'masculin', '2020-07-11', '771234567', 1, 'mosila2138@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL),
('B9CA64HR', '1234567891234', 'diene', 'moussa', 'masculin', '2020-07-13', '771234567', 1, 'mosila2138@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL),
('BABRJVKA', '123456789123', 'diene', 'moussa', 'masculin', '2020-06-16', 'zersdgv', 1, 'mosila2138@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL),
('C3C9G7MJ', '123456789123', 'diene', 'moussa', 'masculin', '2020-06-17', 'zersdgv', 1, 'mosila2138@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL),
('CF3FTPRW', '1234567891234', 'diene', 'moussa', 'masculin', '2020-07-13', '771233434', 1, 'mosila2138@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL),
('client1', '123456677', 'Moussa', 'DIENE', 'm', '2012-11-11', '771222222', 1, 'mosila2138@gmail.com', NULL, NULL, NULL, NULL, 'Mosila', 'passer123'),
('CWWU4RDF', '1234567891234', 'dffg', 'moussa', 'masculin', '2020-07-21', '771212122', 1, 'mosila2138@gmail.com', 'raisonsocila', 20000.00, 'MTECH', '2', NULL, NULL),
('DH4TE6F7', '1234567891233', 'diene', 'ok', 'masculin', '2020-07-06', '772333444', 1, 'mosila2138@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL),
('DKPG7RD6', '1234567891234', 'diene', 'moussa', 'masculin', '2020-07-14', '771223232', 1, 'mosila2138@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL),
('E8P3PJKU', '123456789123', 'diene', 'moussa', 'masculin', '2020-06-16', '771231232', 1, 'mosila2138@gmail.com', NULL, NULL, NULL, NULL, '', ''),
('EDCDCJDA', '1234567891234', 'diene', 'moussa', 'masculin', '2020-07-16', '771234322', 1, 'mosila2138@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL),
('G7BB6GW3', '1234567891234', 'diene', 'moussa', 'masculin', '2020-07-13', '771232324', 1, 'mosila2138@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL),
('G7W86GND', '123456789123', 'diene', 'moussa', 'masculin', '2020-06-16', '111111111', 1, 'mosila2138@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL),
('J3HAVR9N', '123456789123', 'diene', 'moussa', 'masculin', '2020-06-17', 'zersdgv', 1, 'mosila2138@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL),
('K9JGMRCG', '1234567891234', 'diene', 'moussa', 'masculin', '2020-07-13', '771234567', 1, 'mosila2138@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL),
('KUEVN8D9', '123456789123', 'diene', 'moussa', 'masculin', '2020-06-10', 'zersdgv', 1, 'mosila2138@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL),
('MAKH4VKE', '123456789123', 'diene', 'moussa', 'masculin', '2020-06-16', 'zersdgv', 1, 'mosila2138@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL),
('N722N2CH', '1234567891234', 'diene', 'moussa', 'masculin', '2020-07-11', '771234567', 1, 'mosila2138@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL),
('N74C666V', '1234567891234', 'dffg', 'moussa', 'masculin', '2020-07-21', '771212122', 1, 'mosila2138@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL),
('RES00000', NULL, 'DIENE', 'Moussa', 'masculin', '2003-07-01', '771390927', 1, 'mosila2138@gmail.com', NULL, NULL, NULL, NULL, 'djine', 'passer123'),
('UK4TAE7N', '1234567891234', 'diene', 'moussa', 'masculin', '2020-07-13', '771232324', 1, 'mosila2138@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL),
('VTAJ3UWJ', '123456789123', 'diene', 'moussa', 'masculin', '2020-06-16', 'zersdgv', 1, 'mosila2138@gmail.com', 'raisonnnn', 20000.00, 'banque du peuple', 'keur massar', NULL, NULL),
('WNKVVDDP', '123456789123', 'diene', 'moussa', 'masculin', '2020-06-09', 'zersdgv', 1, 'mosila2138@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `profil`
--

CREATE TABLE `profil` (
  `id` int(11) UNSIGNED NOT NULL,
  `libelle` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `profil`
--

INSERT INTO `profil` (`id`, `libelle`) VALUES
(1, 'Administrateur'),
(2, 'Responsable des comptes'),
(3, 'Charger de compte'),
(4, 'Caissiere'),
(5, 'Client');

-- --------------------------------------------------------

--
-- Structure de la table `typecompte`
--

CREATE TABLE `typecompte` (
  `id` int(11) UNSIGNED NOT NULL,
  `libelle` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `typecompte`
--

INSERT INTO `typecompte` (`id`, `libelle`) VALUES
(1, 'courant'),
(2, 'simple'),
(3, 'bloque');

-- --------------------------------------------------------

--
-- Structure de la table `typeoperation`
--

CREATE TABLE `typeoperation` (
  `id` int(11) UNSIGNED NOT NULL,
  `libelle` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `typeoperation`
--

INSERT INTO `typeoperation` (`id`, `libelle`) VALUES
(1, 'virement'),
(2, 'depot'),
(3, 'retrait'),
(4, 'releve');

-- --------------------------------------------------------

--
-- Structure de la table `userrole`
--

CREATE TABLE `userrole` (
  `id` int(11) UNSIGNED NOT NULL,
  `mat` varchar(11) NOT NULL,
  `idProfil` int(11) UNSIGNED NOT NULL,
  `dateAffecter` date NOT NULL,
  `matAffecteur` varchar(11) NOT NULL,
  `etat` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `userrole`
--

INSERT INTO `userrole` (`id`, `mat`, `idProfil`, `dateAffecter`, `matAffecteur`, `etat`) VALUES
(1, 'RES00000', 2, '2020-06-26', '', 1);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `adresse`
--
ALTER TABLE `adresse`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `affecter`
--
ALTER TABLE `affecter`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mat` (`mat`),
  ADD KEY `numAgence` (`numAgence`);

--
-- Index pour la table `agence`
--
ALTER TABLE `agence`
  ADD PRIMARY KEY (`numero`),
  ADD KEY `adrAgence` (`adrAgence`);

--
-- Index pour la table `compte`
--
ALTER TABLE `compte`
  ADD PRIMARY KEY (`numero`),
  ADD KEY `numAgence` (`mat`),
  ADD KEY `typeCompte` (`typeCompte`),
  ADD KEY `id_entreprise` (`id_entreprise`);

--
-- Index pour la table `entreprise`
--
ALTER TABLE `entreprise`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adrEntreprise` (`adrEntreprise`);

--
-- Index pour la table `etat`
--
ALTER TABLE `etat`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `etatcompte`
--
ALTER TABLE `etatcompte`
  ADD PRIMARY KEY (`id`),
  ADD KEY `numcompte` (`numcompte`),
  ADD KEY `etatcompte` (`etatcompte`);

--
-- Index pour la table `operation`
--
ALTER TABLE `operation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `matEmpl` (`matEmpl`),
  ADD KEY `numcompte` (`numcompte`),
  ADD KEY `typeOperation` (`typeOperation`);

--
-- Index pour la table `personne`
--
ALTER TABLE `personne`
  ADD PRIMARY KEY (`matricule`),
  ADD KEY `adrPersonne` (`adrPersonne`);

--
-- Index pour la table `profil`
--
ALTER TABLE `profil`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `typecompte`
--
ALTER TABLE `typecompte`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `typeoperation`
--
ALTER TABLE `typeoperation`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `userrole`
--
ALTER TABLE `userrole`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mat` (`mat`),
  ADD KEY `idProfil` (`idProfil`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `adresse`
--
ALTER TABLE `adresse`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `affecter`
--
ALTER TABLE `affecter`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `entreprise`
--
ALTER TABLE `entreprise`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `etat`
--
ALTER TABLE `etat`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `etatcompte`
--
ALTER TABLE `etatcompte`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `operation`
--
ALTER TABLE `operation`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `profil`
--
ALTER TABLE `profil`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `typecompte`
--
ALTER TABLE `typecompte`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `typeoperation`
--
ALTER TABLE `typeoperation`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `userrole`
--
ALTER TABLE `userrole`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `affecter`
--
ALTER TABLE `affecter`
  ADD CONSTRAINT `affecter_ibfk_1` FOREIGN KEY (`mat`) REFERENCES `personne` (`matricule`),
  ADD CONSTRAINT `affecter_ibfk_2` FOREIGN KEY (`numAgence`) REFERENCES `agence` (`numero`);

--
-- Contraintes pour la table `agence`
--
ALTER TABLE `agence`
  ADD CONSTRAINT `agence_ibfk_1` FOREIGN KEY (`adrAgence`) REFERENCES `adresse` (`id`);

--
-- Contraintes pour la table `compte`
--
ALTER TABLE `compte`
  ADD CONSTRAINT `compte_ibfk_1` FOREIGN KEY (`mat`) REFERENCES `personne` (`matricule`),
  ADD CONSTRAINT `compte_ibfk_2` FOREIGN KEY (`typeCompte`) REFERENCES `typecompte` (`id`),
  ADD CONSTRAINT `compte_ibfk_3` FOREIGN KEY (`id_entreprise`) REFERENCES `entreprise` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `entreprise`
--
ALTER TABLE `entreprise`
  ADD CONSTRAINT `entreprise_ibfk_1` FOREIGN KEY (`adrEntreprise`) REFERENCES `adresse` (`id`);

--
-- Contraintes pour la table `etatcompte`
--
ALTER TABLE `etatcompte`
  ADD CONSTRAINT `etatcompte_ibfk_1` FOREIGN KEY (`numcompte`) REFERENCES `compte` (`numero`),
  ADD CONSTRAINT `etatcompte_ibfk_2` FOREIGN KEY (`etatcompte`) REFERENCES `etat` (`id`);

--
-- Contraintes pour la table `operation`
--
ALTER TABLE `operation`
  ADD CONSTRAINT `operation_ibfk_1` FOREIGN KEY (`matEmpl`) REFERENCES `personne` (`matricule`),
  ADD CONSTRAINT `operation_ibfk_2` FOREIGN KEY (`numcompte`) REFERENCES `compte` (`numero`),
  ADD CONSTRAINT `operation_ibfk_3` FOREIGN KEY (`typeOperation`) REFERENCES `typeoperation` (`id`);

--
-- Contraintes pour la table `personne`
--
ALTER TABLE `personne`
  ADD CONSTRAINT `personne_ibfk_1` FOREIGN KEY (`adrPersonne`) REFERENCES `adresse` (`id`);

--
-- Contraintes pour la table `userrole`
--
ALTER TABLE `userrole`
  ADD CONSTRAINT `userrole_ibfk_1` FOREIGN KEY (`mat`) REFERENCES `personne` (`matricule`),
  ADD CONSTRAINT `userrole_ibfk_2` FOREIGN KEY (`idProfil`) REFERENCES `profil` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
