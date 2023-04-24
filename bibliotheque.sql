-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 25, 2023 at 12:22 AM
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
(130, 'La Nuit sacrée', 'Tahar Ben Jelloun', '1987-01-01', '978-2020091520', 'Roman racontant l\'histoire de Ahmed, un jeune homme marocain qui découvre l\'identité de son père.'),
(131, 'L\'enfant de sable', 'Tahar Ben Jelloun', '1985-01-01', '978-2070374506', 'Roman racontant l\'histoire d\'Ahmed, un enfant né avec une malformation congénitale qui le fait ressembler à une fille.'),
(132, 'Le passé simple', 'Driss Chraïbi', '1954-01-01', '978-2070361001', 'Roman racontant l\'histoire de Mouloud, un jeune marocain qui tente de se libérer de l\'emprise de son père.'),
(133, 'L\'homme rompu', 'Abdellatif Laâbi', '1976-01-01', '978-2070297391', 'Roman racontant l\'histoire de Nadia, une jeune marocaine qui vit sous le régime autoritaire du roi Hassan II.'),
(134, 'Mémoire d\'une jeune fille rangée', 'Assia Djebar', '1957-01-01', '978-2253054843', 'Roman autobiographique racontant l\'histoire de l\'auteure, une jeune fille algérienne qui vit sous le régime colonial français.'),
(135, 'Le Pain nu', 'Mohamed Choukri', '1973-01-01', '978-2020096112', 'Roman autobiographique racontant l\'histoire de l\'auteur, un jeune marocain qui a grandi dans la pauvreté et la misère.'),
(136, 'Les Boucs', 'Tahar Ben Jelloun', '1989-01-01', '978-2020133106', 'Roman racontant l\'histoire de Ahmed, un jeune marocain qui se rebelle contre l\'ordre établi dans son village.'),
(137, 'La Répudiation', 'Rachid Boudjedra', '1969-01-01', '978-2020068135', 'Roman racontant l\'histoire de Lakhdar, un jeune algérien qui tente de se libérer de l\'emprise de sa famille et de sa communauté.'),
(138, 'Les Trois Mousquetaires', 'Alexandre Dumas', '1844-01-01', '978-2253004076', 'Roman d\'aventure décrivant les exploits d\'un jeune homme qui rejoint les mousquetaires du roi Louis XIII.'),
(139, 'Le Comte de Monte-Cristo', 'Alexandre Dumas', '1845-01-01', '978-2253004229', 'Roman d\'aventure décrivant la vengeance d\'un homme injustement emprisonné qui retrouve sa liberté et sa fortune.'),
(145, 'To Kill a Mockingbird', 'Harper Lee', '1960-07-11', '978-0446310789', 'A Pulitzer Prize-winning novel that explores racial injustice in the Deep South.'),
(146, 'The Great Gatsby', 'F. Scott Fitzgerald', '1925-04-10', '978-0743273565', 'A classic novel set in the Jazz Age, exploring themes of love, wealth, and the American Dream.'),
(147, 'The Catcher in the Rye', 'J.D. Salinger', '1951-07-16', '978-0316769174', 'A novel that follows the story of Holden Caulfield, a teenage boy who has been expelled from prep school.'),
(148, 'To the Lighthouse', 'Virginia Woolf', '1927-05-05', '978-0156907392', 'A modernist novel that explores the inner thoughts and feelings of its characters.'),
(149, 'Beloved', 'Toni Morrison', '1987-09-02', '978-1400033416', 'A Pulitzer Prize-winning novel that explores the trauma of slavery and its impact on African American lives.'),
(150, 'The Grapes of Wrath', 'John Steinbeck', '1939-04-14', '978-0143039433', 'A Pulitzer Prize-winning novel that tells the story of the Joad family, who migrate from Oklahoma to California during the Great Depression.'),
(151, 'The Color Purple', 'Alice Walker', '1982-06-17', '978-0151191543', 'A novel that follows the life of Celie, a young African American girl who faces abuse and oppression throughout her life.'),
(152, 'The Sun Also Rises', 'Ernest Hemingway', '1926-10-22', '978-0743297332', 'A novel that follows a group of expatriates as they travel from Paris to Pamplona, Spain to watch the running of the bulls.'),
(153, 'One Hundred Years of Solitude', 'Gabriel García Márquez', '1967-05-30', '978-0060883287', 'A novel that tells the story of the Buendía family over the course of several generations in the fictional town of Macondo.'),
(154, 'Sula', 'Toni Morrison', '1973-01-01', '978-1400033430', 'A novel that explores the friendship between two African American women, and the impact of their choices on their lives and those around them.'),
(155, 'Pride and Prejudice', 'Jane Austen', '1813-01-28', '978-0141439518', 'A classic novel that follows the lives and loves of the Bennet family in rural England during the early 19th century.'),
(156, 'Wuthering Heights', 'Emily Bronte', '1847-12-19', '978-0141439556', 'A novel that explores the destructive power of love and revenge, set against the backdrop of the Yorkshire moors.'),
(157, '1984', 'George Orwell', '1949-06-08', '978-0451524935', 'A dystopian novel that portrays a society under the control of a totalitarian government, where individualism and free thought are suppressed.'),
(158, 'Jane Eyre', 'Charlotte Bronte', '1847-10-16', '978-0141441147', 'A novel that tells the story of Jane Eyre, an orphan who becomes a governess and falls in love with her employer, Mr. Rochester.'),
(159, 'Oliver Twist', 'Charles Dickens', '1839-02-01', '978-0141439747', 'A novel that tells the story of an orphan boy who runs away from a workhouse and gets caught up in the criminal underworld of London.'),
(160, 'Dracula', 'Bram Stoker', '1897-05-26', '978-0486411095', 'A Gothic horror novel that tells the story of Count Dracula, a vampire who attempts to move from Transylvania to England in order to spread the undead curse.'),
(161, 'Sense and Sensibility', 'Jane Austen', '1811-10-30', '978-0141439662', 'A novel that tells the story of two sisters, Elinor and Marianne Dashwood, and their experiences of love and heartbreak.'),
(162, 'The Picture of Dorian Gray', 'Oscar Wilde', '1890-07-01', '978-0141442465', 'A novel that tells the story of Dorian Gray, a beautiful young man who sells his soul in order to retain his youthful appearance.'),
(163, 'The Adventures of Sherlock Holmes', 'Arthur Conan Doyle', '1892-10-14', '978-0486474913', 'A collection of short stories that feature the famous detective Sherlock Holmes and his loyal companion Dr. Watson.'),
(164, 'Norwegian Wood', 'Haruki Murakami', '1987-08-28', '978-0375704024', 'A novel that follows the life of a young student named Toru Watanabe, who falls in love with two women and must navigate the complexities of his relationships.'),
(165, 'The Wind-Up Bird Chronicle', 'Haruki Murakami', '1994-01-01', '978-0679775430', 'A novel that tells the story of Toru Okada, a Tokyo resident who embarks on a spiritual journey after his wife goes missing.'),
(166, 'Kafka on the Shore', 'Haruki Murakami', '2002-01-01', '978-1400079278', 'A novel that follows the story of Kafka Tamura, a young man who runs away from home to escape a dark prophecy and find his true self.'),
(167, 'Snow Country', 'Yasunari Kawabata', '1937-01-01', '978-0679761044', 'A novel that tells the story of Shimamura, a wealthy Tokyo businessman who becomes involved in a love affair with a geisha in a remote hot spring resort.'),
(168, 'The Tale of Genji', 'Murasaki Shikibu', '1008-01-01', '978-0140445391', 'A classic novel that tells the story of the life and loves of Genji, a nobleman at the imperial court of Japan during the Heian period.'),
(169, 'Thousand Cranes', 'Yasunari Kawabata', '1952-01-01', '978-0679762652', 'A novel that explores the themes of beauty, tradition, and death through the story of a young man named Kikuji who becomes involved with two women.'),
(170, 'Silence', 'Shusaku Endo', '1966-01-01', '978-0800871864', 'A novel that tells the story of a Jesuit missionary in 17th-century Japan who faces persecution and torture by the ruling authorities for his faith.'),
(171, 'Botchan', 'Natsume Soseki', '1906-01-01', '978-1590172013', 'A novel that tells the story of a young teacher named Botchan who moves from Tokyo to the countryside and experiences a series of comical and poignant misadventures.'),
(172, 'Kokoro', 'Natsume Soseki', '1914-01-01', '978-0143106036', 'A novel that explores the themes of isolation, alienation, and identity through the relationship between a young student named Sensei and a man named K.'),
(173, 'Le pain nu', 'Mohammed Choukri', '1973-01-01', '978-2070367358', 'An autobiographical novel that tells the story of the author\'s childhood and youth in Tangier, Morocco.'),
(174, 'Un Marocain à Paris', 'Abdellah Taïa', '1999-01-01', '978-2020469465', 'A novel that follows the story of a young Moroccan man who moves to Paris to pursue his dreams and confronts issues of identity and belonging.'),
(175, 'Mémoire d\'une jeune fille rangée', 'Assia Djebar', '1957-01-01', '978-2253039095', 'An autobiographical novel that tells the story of a young Algerian girl growing up in French-occupied Algeria and her struggle to reconcile her identity with the expectations of her culture and religion.'),
(176, 'L\'homme rompu', 'Tahar Ben Jelloun', '1994-01-01', '978-2020206821', 'A novel that tells the story of a Moroccan man who is imprisoned and tortured by the authorities for his political beliefs, and his struggle to find meaning and redemption.'),
(177, 'Les Boucs', 'Tahar Ben Jelloun', '1989-01-01', '978-2226025611', 'A novel that explores the themes of power, corruption, and violence in Moroccan society through the story of a group of men who come together to perform a ritual sacrifice.'),
(178, 'La Nuit sacrée', 'Tahar Ben Jelloun', '1987-01-01', '978-2020108646', 'A novel that continues the story of the protagonist in Ben Jelloun\'s earlier novel, L\'enfant de sable, and explores themes of identity, sexuality, and the search for spiritual enlightenment.'),
(179, 'Les raisins de la galère', 'Mohammed Khaïr-Eddine', '1980-01-01', '978-2859400382', 'A novel that tells the story of a group of poor farmers in the Moroccan countryside and their struggle to survive in the face of drought, famine, and social injustice.'),
(180, 'L\'étranger', 'Albert Camus', '1942-01-01', '978-2070360021', 'A classic novel that tells the story of a French Algerian man named Meursault who kills an Arab man and must confront the absurdity of his existence and the consequences of his actions.');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `livres`
--
ALTER TABLE `livres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=181;

--
-- AUTO_INCREMENT for table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

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
