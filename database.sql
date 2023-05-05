-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Jeu 26 Octobre 2017 à 13:53
-- Version du serveur :  5.7.19-0ubuntu0.16.04.1
-- Version de PHP :  7.0.22-0ubuntu0.16.04.1





--
-- Base de données :  `simple-mvc`
--

-- --------------------------------------------------------
--
-- Structure de la table 'race'
--

CREATE TABLE IF NOT EXISTS `race` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `race` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


INSERT INTO `race` (`id`, `race`) VALUES
(1, 'Labrador'),
(2, 'Berger'),
(3, 'Husky Labrador'),
(4, 'Staff');
-- --------------------------------------------------------
--
--
-- Structure de la table `pet`
--
CREATE TABLE IF NOT EXISTS `pet`(
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `birth_date` DATETIME NOT NULL,
  `is_dog` TINYINT NOT NULL,
  `is_cat` TINYINT NOT NULL,
  `description` VARCHAR(200) NOT NULL,
  `picture` VARCHAR(100) NULL,
  `race_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_pet_race_idx` (`race_id` ASC) VISIBLE,
  CONSTRAINT `fk_pet_race`
    FOREIGN KEY (`race_id`)
    REFERENCES `race` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


--
-- Contenu de la table 'Pet'
--

INSERT INTO `pet` (`id`, `name`, `birth_date`,`is_dog`, `is_cat` , `description`, `picture`, `race_id`) VALUES
(1, 'Diesel', '2011:01:07', 1, 0, 'A besoin de présence et il lui faut un jardin clos.', 'Diesel.jpg', 3),
(2, 'Buzz', '2022:04:12', 1, 0, 'Trouvé dans la rue.<br>Adorable, demande de l''affection.<br>
PAS OK CHIENS;<br> PAS OK CHATS<br> OK ENFANTS<br>
A besoin d''être éduqué.
Il lui faut un jardin clos.', 'Buzz.jpg', 1),
(3, 'Pepite', '2019:05:19', 1, 0, 'Chien de catégorie.<br>Il faut un permis.<br>
Adoption sous réserve
d''être en règle :
mairie, assurance,
attestion de capacité.<br>Il lui faut un jardin clos. ', 'Pepite.jpg', 4);

-- --------------------------------------------------------



--
-- Structure de la table `item`
--

CREATE TABLE `item` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `item`
--

INSERT INTO `item` (`id`, `title`) VALUES
(1, 'Stuff'),
(2, 'Doodads');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `item`
--
ALTER TABLE `item`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
