-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 24, 2023 at 11:29 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bibliotheque`
--

-- --------------------------------------------------------

--
-- Table structure for table `emprunts`
--

CREATE TABLE `emprunts` (
  `id` int(11) NOT NULL,
  `id_utilisateur` int(11) DEFAULT NULL,
  `id_livre` int(11) DEFAULT NULL,
  `date_emprunt` date DEFAULT NULL,
  `date_retour` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `emprunts`
--

INSERT INTO `emprunts` (`id`, `id_utilisateur`, `id_livre`, `date_emprunt`, `date_retour`) VALUES
(17, 27, 72, '2023-04-23', '2023-05-23'),
(22, 47, 74, '2023-04-23', '2023-05-23'),
(23, 47, 69, '2023-04-23', '2023-05-23'),
(28, 34, 66, '2023-04-23', '2023-05-23'),
(29, 25, 65, '2023-04-24', '2023-05-24'),
(30, 25, 71, '2023-04-24', '2023-05-24'),
(31, 25, 70, '2023-04-24', '2023-05-24');

-- --------------------------------------------------------

--
-- Table structure for table `livres`
--

CREATE TABLE `livres` (
  `id` int(11) NOT NULL,
  `titre` varchar(40) DEFAULT NULL,
  `auteur` varchar(40) DEFAULT NULL,
  `annee_de_publication` date DEFAULT NULL,
  `ISBN` varchar(30) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `livres`
--

INSERT INTO `livres` (`id`, `titre`, `auteur`, `annee_de_publication`, `ISBN`, `description`) VALUES
(65, 'Le Rouge et le Noir', 'Stendhal', '1830-01-01', '978-2253004222', 'Roman historique décrivant les aventures de Julien Sorel, ambitieux jeune homme de la petite bourgeoisie provinciale française.'),
(66, 'Madame Bovary', 'Gustave Flaubert', '1857-01-01', '978-2081385791', 'Roman réaliste décrivant la vie de la jeune Emma Bovary, qui rêve d\'échapper à sa vie provinciale ennuyeuse.'),
(67, 'Les Misérables', 'Victor Hugo', '1862-01-01', '978-2080703488', 'Roman historique décrivant la vie de Jean Valjean, un ancien forçat, et son combat pour le rachat et la rédemption.'),
(68, 'Vingt Mille Lieues sous les mers', 'Jules Verne', '1870-01-01', '978-2010003281', 'Roman d\'aventures décrivant le voyage du professeur Aronnax et de son équipage à bord du Nautilus, un sous-marin futuriste.'),
(69, 'La Guerre des mondes', 'H.G. Wells', '1898-01-01', '978-2080703426', 'Roman de science-fiction décrivant l\'invasion de la Terre par des Martiens belliqueux.'),
(70, 'Le Portrait de Dorian Gray', 'Oscar Wilde', '1890-01-01', '978-2290306971', 'Roman fantastique décrivant la vie de Dorian Gray, un jeune homme d\'une beauté extraordinaire qui vend son âme au diable pour rester jeune et beau éternellement.'),
(71, 'À la recherche du temps perdu', 'Marcel Proust', '1913-01-01', '978-2070401041', 'Roman autobiographique décrivant la vie de l\'auteur et sa quête pour retrouver le temps perdu de son enfance.'),
(72, 'Ulysse', 'James Joyce', '1922-01-01', '978-2070403885', 'Roman expérimental décrivant la journée de Leopold Bloom à Dublin, en Irlande.'),
(73, 'Les Raisins de la colère', 'John Steinbeck', '1939-01-01', '978-2070360127', 'Roman social décrivant la vie des fermiers de l\'Oklahoma pendant la Grande Dépression.'),
(74, 'Le Blanc et le noir', 'Stendhal', '1830-01-01', '978-2253664222', 'Roman historique décrivant les aventures de Julien Sorel, ambitieux jeune homme de la petite bourgeoisie provinciale française.');

-- --------------------------------------------------------

--
-- Table structure for table `utilisateurs`
--

CREATE TABLE `utilisateurs` (
  `id` int(11) NOT NULL,
  `nom` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `mot_de_passe` varchar(20) NOT NULL,
  `date_de_creation` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `utilisateurs`
--

INSERT INTO `utilisateurs` (`id`, `nom`, `email`, `mot_de_passe`, `date_de_creation`) VALUES
(25, 'Alice', 'alice@example.com', 'motdepasse1', '2023-04-23'),
(26, 'Bob', 'bob@example.com', 'motdepasse2', '2023-04-23'),
(27, 'Charlie', 'charlie@example.com', 'motdepasse3', '2023-04-23'),
(28, 'David', 'david@example.com', 'motdepasse4', '2023-04-23'),
(29, 'Eva', 'eva@example.com', 'motdepasse5', '2023-04-23'),
(30, 'Frank', 'frank@example.com', 'motdepasse6', '2023-04-23'),
(31, 'Grace', 'grace@example.com', 'motdepasse7', '2023-04-23'),
(32, 'Henry', 'henry@example.com', 'motdepasse8', '2023-04-23'),
(33, 'Isabelle', 'isabelle@example.com', 'motdepasse9', '2023-04-23'),
(34, 'John', 'john@example.com', 'motdepasse10', '2023-04-23'),
(35, 'Karen', 'karen@example.com', 'motdepasse11', '2023-04-23'),
(36, 'Laura', 'laura@example.com', 'motdepasse12', '2023-04-23'),
(37, 'Mike', 'mike@example.com', 'motdepasse13', '2023-04-23'),
(38, 'Nina', 'nina@example.com', 'motdepasse14', '2023-04-23'),
(39, 'Oliver', 'oliver@example.com', 'motdepasse15', '2023-04-23'),
(40, 'Penny', 'penny@example.com', 'motdepasse16', '2023-04-23'),
(41, 'Quentin', 'quentin@example.com', 'motdepasse17', '2023-04-23'),
(42, 'Rachel', 'rachel@example.com', 'motdepasse18', '2023-04-23'),
(43, 'Sam', 'sam@example.com', 'motdepasse19', '2023-04-23'),
(44, 'Tina', 'tina@example.com', 'motdepasse20', '2023-04-23'),
(45, 'mohammed', 'mohammed@gmail.com', '123456789', '2023-04-23'),
(46, 'fatimazahra', 'biblioTest@gmail.com', '123456789', '2023-04-23'),
(47, 'Mustapha', 'mus.aitoua@gmail.com', '123456789', '2023-04-23'),
(48, 'Mohamed AIT OUAÂRAB', 'profMohamed@gmail.com', 'mohammed', '2023-04-23'),
(49, 'MALTO', 'malto@gmail.com', '123456789', '2023-04-23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `emprunts`
--
ALTER TABLE `emprunts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_utilisateur` (`id_utilisateur`),
  ADD KEY `id_livre` (`id_livre`);

--
-- Indexes for table `livres`
--
ALTER TABLE `livres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `emprunts`
--
ALTER TABLE `emprunts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `livres`
--
ALTER TABLE `livres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `emprunts`
--
ALTER TABLE `emprunts`
  ADD CONSTRAINT `emprunts_ibfk_1` FOREIGN KEY (`id_utilisateur`) REFERENCES `utilisateurs` (`id`),
  ADD CONSTRAINT `emprunts_ibfk_2` FOREIGN KEY (`id_livre`) REFERENCES `livres` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
