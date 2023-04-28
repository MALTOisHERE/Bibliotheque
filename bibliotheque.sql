-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 28, 2023 at 08:52 PM
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
  `id_utilisateur` int(11) NOT NULL,
  `id_livre` int(11) NOT NULL,
  `date_emprunt` date NOT NULL,
  `date_retour` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  `description` varchar(1000) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `livres`
--

INSERT INTO `livres` (`id`, `titre`, `auteur`, `annee_de_publication`, `ISBN`, `description`, `image`) VALUES
(130, 'La Nuit sacrée', 'Tahar Ben Jelloun', '1987-01-01', '978-2020091520', 'Novel telling the story of Ahmed, a young Moroccan man who discovers the identity of his father.', 'images\\130.jpg'),
(131, 'L\'enfant de sable', 'Tahar Ben Jelloun', '1985-01-01', '978-2070374506', 'Novel telling the story of Ahmed, a child born with a birth defect that makes him look like a girl.', 'images\\131.jpg'),
(132, 'Le passé simple', 'Driss Chraïbi', '1954-01-01', '978-2070361001', 'Novel telling the story of Mouloud, a young Moroccan who tries to free himself from the grip of his father.', 'images\\132.jpg'),
(133, 'L\'homme rompu', 'Abdellatif Laâbi', '1976-01-01', '978-2070297391', 'Novel telling the story of Nadia, a young Moroccan who lives under the authoritarian regime of King Hassan II.', 'images\\133.jpg'),
(134, 'Mémoire d\'une jeune fille rangée', 'Assia Djebar', '1957-01-01', '978-2253054843', 'Autobiographical novel telling the story of the author, a young Algerian girl who lives under the French colonial regime.', 'images\\134.jpg'),
(135, 'Le Pain nu', 'Mohamed Choukri', '1973-01-01', '978-2020096112', 'Autobiographical novel telling the story of the author, a young Moroccan who grew up in poverty and misery.', 'images\\135.jpg'),
(136, 'Les Boucs', 'Driss Chraïbi', '1989-01-01', '978-2020133106', 'Novel telling the story of Ahmed, a young Moroccan who rebels against the established order in his village.', 'images\\136.jpg'),
(137, 'La Répudiation', 'Rachid Boudjedra', '1969-01-01', '978-2020068135', 'Novel telling the story of Lakhdar, a young Algerian who tries to free himself from the grip of his family and his community.', 'images\\137.jpg'),
(138, 'Les Trois Mousquetaires', 'Alexandre Dumas', '1844-01-01', '978-2253004076', 'Adventure novel describing the exploits of a young man who joins the musketeers of King Louis XIII.', 'images\\138.jpg'),
(139, 'Le Comte de Monte-Cristo', 'Alexandre Dumas', '1845-01-01', '978-2253004229', 'Adventure novel describing the revenge of an unjustly imprisoned man who regains his freedom and his fortune.', 'images\\139.jpg'),
(145, 'To Kill a Mockingbird', 'Harper Lee', '1960-07-11', '978-0446310789', 'A Pulitzer Prize-winning novel that explores racial injustice in the Deep South.', 'images\\145.jpg'),
(146, 'The Great Gatsby', 'F. Scott Fitzgerald', '1925-04-10', '978-0743273565', 'A classic novel set in the Jazz Age, exploring themes of love, wealth, and the American Dream.', 'images\\146.jpg'),
(147, 'The Catcher in the Rye', 'J.D. Salinger', '1951-07-16', '978-0316769174', 'A novel that follows the story of Holden Caulfield, a teenage boy who has been expelled from prep school.', 'images\\147.jpg'),
(148, 'To the Lighthouse', 'Virginia Woolf', '1927-05-05', '978-0156907392', 'A modernist novel that explores the inner thoughts and feelings of its characters.', 'images\\148.jpg'),
(149, 'Beloved', 'Toni Morrison', '1987-09-02', '978-1400033416', 'A Pulitzer Prize-winning novel that explores the trauma of slavery and its impact on African American lives.', 'images\\149.jpg'),
(150, 'The Grapes of Wrath', 'John Steinbeck', '1939-04-14', '978-0143039433', 'A Pulitzer Prize-winning novel that tells the story of the Joad family, who migrate from Oklahoma to California during the Great Depression.', 'images\\150.jpg'),
(151, 'The Color Purple', 'Alice Walker', '1982-06-17', '978-0151191543', 'A novel that follows the life of Celie, a young African American girl who faces abuse and oppression throughout her life.', 'images\\151.jpg'),
(152, 'The Sun Also Rises', 'Ernest Hemingway', '1926-10-22', '978-0743297332', 'A novel that follows a group of expatriates as they travel from Paris to Pamplona, Spain to watch the running of the bulls.', 'images\\152.jpg'),
(153, 'One Hundred Years of Solitude', 'Gabriel García Márquez', '1967-05-30', '978-0060883287', 'A novel that tells the story of the Buendía family over the course of several generations in the fictional town of Macondo.', 'images\\153.jpg'),
(154, 'Sula', 'Toni Morrison', '1973-01-01', '978-1400033430', 'A novel that explores the friendship between two African American women, and the impact of their choices on their lives and those around them.', 'images\\154.jpg'),
(155, 'Pride and Prejudice', 'Jane Austen', '1813-01-28', '978-0141439518', 'A classic novel that follows the lives and loves of the Bennet family in rural England during the early 19th century.', 'images\\155.jpg'),
(156, 'Wuthering Heights', 'Emily Bronte', '1847-12-19', '978-0141439556', 'A novel that explores the destructive power of love and revenge, set against the backdrop of the Yorkshire moors.', 'images\\156.jpg'),
(157, '1984', 'George Orwell', '1949-06-08', '978-0451524935', 'A dystopian novel that portrays a society under the control of a totalitarian government, where individualism and free thought are suppressed.', 'images\\157.jpg'),
(158, 'Jane Eyre', 'Charlotte Bronte', '1847-10-16', '978-0141441147', 'A novel that tells the story of Jane Eyre, an orphan who becomes a governess and falls in love with her employer, Mr. Rochester.', 'images\\158.jpg'),
(159, 'Oliver Twist', 'Charles Dickens', '1839-02-01', '978-0141439747', 'A novel that tells the story of an orphan boy who runs away from a workhouse and gets caught up in the criminal underworld of London.', 'images\\159.jpg'),
(160, 'Dracula', 'Bram Stoker', '1897-05-26', '978-0486411095', 'A Gothic horror novel that tells the story of Count Dracula, a vampire who attempts to move from Transylvania to England in order to spread the undead curse.', 'images\\160.jpg'),
(161, 'Sense and Sensibility', 'Jane Austen', '1811-10-30', '978-0141439662', 'A novel that tells the story of two sisters, Elinor and Marianne Dashwood, and their experiences of love and heartbreak.', 'images\\161.jpg'),
(162, 'The Picture of Dorian Gray', 'Oscar Wilde', '1890-07-01', '978-0141442465', 'A novel that tells the story of Dorian Gray, a beautiful young man who sells his soul in order to retain his youthful appearance.', 'images\\162.jpg'),
(163, 'The Adventures of Sherlock Holmes', 'Arthur Conan Doyle', '1892-10-14', '978-0486474913', 'A collection of short stories that feature the famous detective Sherlock Holmes and his loyal companion Dr. Watson.', 'images\\163.jpg'),
(164, 'Norwegian Wood', 'Haruki Murakami', '1987-08-28', '978-0375704024', 'A novel that follows the life of a young student named Toru Watanabe, who falls in love with two women and must navigate the complexities of his relationships.', 'images\\164.jpg'),
(165, 'The Wind-Up Bird Chronicle', 'Haruki Murakami', '1994-01-01', '978-0679775430', 'A novel that tells the story of Toru Okada, a Tokyo resident who embarks on a spiritual journey after his wife goes missing.', 'images\\165.jpg'),
(166, 'Kafka on the Shore', 'Haruki Murakami', '2002-01-01', '978-1400079278', 'A novel that follows the story of Kafka Tamura, a young man who runs away from home to escape a dark prophecy and find his true self.', 'images\\166.jpg'),
(167, 'Snow Country', 'Yasunari Kawabata', '1937-01-01', '978-0679761044', 'A novel that tells the story of Shimamura, a wealthy Tokyo businessman who becomes involved in a love affair with a geisha in a remote hot spring resort.', 'images\\167.jpg'),
(168, 'The Tale of Genji', 'Murasaki Shikibu', '1008-01-01', '978-0140445391', 'A classic novel that tells the story of the life and loves of Genji, a nobleman at the imperial court of Japan during the Heian period.', 'images\\168.jpg'),
(169, 'Thousand Cranes', 'Yasunari Kawabata', '1952-01-01', '978-0679762652', 'A novel that explores the themes of beauty, tradition, and death through the story of a young man named Kikuji who becomes involved with two women.', 'images\\169.jpg'),
(170, 'Silence', 'Shusaku Endo', '1966-01-01', '978-0800871864', 'A novel that tells the story of a Jesuit missionary in 17th-century Japan who faces persecution and torture by the ruling authorities for his faith.', 'images\\170.jpg'),
(171, 'Botchan', 'Natsume Soseki', '1906-01-01', '978-1590172013', 'A novel that tells the story of a young teacher named Botchan who moves from Tokyo to the countryside and experiences a series of comical and poignant misadventures.', 'images\\171.jpg'),
(172, 'Kokoro', 'Natsume Soseki', '1914-01-01', '978-0143106036', 'A novel that explores the themes of isolation, alienation, and identity through the relationship between a young student named Sensei and a man named K.', 'images\\172.jpg'),
(174, 'Un Marocain à Paris', 'Abdellah Taïa', '1999-01-01', '978-2020469465', 'A novel that follows the story of a young Moroccan man who moves to Paris to pursue his dreams and confronts issues of identity and belonging.', 'images\\notfound.jpg'),
(179, 'Les raisins de la galère', 'Tahar Ben Jelloun', '1980-01-01', '978-2859400382', 'A novel that tells the story of a group of poor farmers in the Moroccan countryside and their struggle to survive in the face of drought, famine, and social injustice.', 'images\\179.jpg'),
(180, 'L\'étranger', 'Albert Camus', '1942-01-01', '978-2070360021', 'A classic novel that tells the story of a French Algerian man named Meursault who kills an Arab man and must confront the absurdity of his existence and the consequences of his actions.', 'images\\180.jpg');

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
(57, 'admin', 'admin@gmail.com', 'admin', '0000-00-00'),
(58, 'admin', 'admin@gmail.com', '@Admin1234', '2023-04-28');

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
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_ISBN` (`ISBN`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `livres`
--
ALTER TABLE `livres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=181;

--
-- AUTO_INCREMENT for table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

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
