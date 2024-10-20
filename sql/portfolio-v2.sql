-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 20, 2024 at 01:41 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `portfolio-v2`
--

-- --------------------------------------------------------

--
-- Table structure for table `language-db`
--

CREATE TABLE `language-db` (
  `id` int(64) NOT NULL,
  `descriptor` varchar(128) NOT NULL,
  `en` text NOT NULL,
  `de` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `language-db`
--

INSERT INTO `language-db` (`id`, `descriptor`, `en`, `de`) VALUES
(1, 'test', 'not loaded', 'nicht geladen'),
(3, 'header-lang-select', 'Deutsch', 'English'),
(4, 'prelanding-left-hey', 'Hey', 'Hey'),
(5, 'prelanding-left-p1', 'My name is Max, and I study computer science.', 'Mein Name ist Max, und ich studiere Informatik.'),
(6, 'prelanding-left-p2', 'I am always excited to learn new stuff.', 'Ich freue mich darauf, neue Dinge zu lernen.'),
(7, 'prelanding-right-pbimgdes', 'That\'s me!', 'Das bin ich!'),
(8, 'prelanding-scrolldown', 'Scroll Down', 'Scrolle Runter'),
(9, 'aboutme-heading', 'About Me', 'Über Mich'),
(10, 'aboutme-paragraph', 'I started my coding journey in 2016 when I was 12 years old. I gathered my first experiences during summer course for the Arduino Microcontroller at the student research center Phaenovum in Lörrach, Germany. Throughout the following years I continued developing basic knowledge in programming and computer science. A few years later, I discovered the web languages and was excited to learn them. During that time, I was limited to our families computer, which had time restrictions, so I was never able to fully immerse into programming. In late 2019, my school bought new computers, so they took some older computers out of service, which was in my favor because I was allowed to take some computers home. With the help of a friend, I upgraded and overclocked the computer till it was usable by modern standards. That marks a caesura in my coding journey. <br>\r\nAfter that I continued learning various languages and also improving my programming skills. Some languages I learned over the past few years are listed below in the Skills section. Over the past two years I developed an interest in Machine Learning, so I started my Machine Learning journey with another course at the Phaenovum. I just finished my first Machine learning project, and I am currently working on another project on image recoginition using special aspects for feature engineering.', 'Ich habe mit dem Programmieren im Jahr 2016 mit 12 Jahren angefangen. Meine ersten Erfahrungen sammelte ich während eines Sommerkurses für den Arduino Microcontroller am Schülerforschungszentrum Phaenovum in Lörrach, Deutschland. Während den folgenden Jahren habe ich dann weiterhin grundlegende Fähigkeiten in der Programmierung und Informatik allgemein gesammelt. Ein paar Jahre später habe ich dann die Webprogrammierung für mich entdeckt, und war begeister die Websprachen zu lernen. Während dieser Zeit war auf Grund unseres Familiencomputers, mit Zeitlimits, sehr stark limitiert, weshalb ich nicht in der Lage war vollkommen in die Programmierung einzutauchen. Ende 2019 wurden dann an meiner Schule neue Computer angeschafft, weshalb dann auch ältere Geräte aussortiert wurden. Dies war in meinem Interesse, da ich dadurch die Möglichkeit (und Erlaubnis) hatte, ein paar Computer mitzunehmen. Mit der Hilfe eines Freundes habe ich dann den Computer soweit verbessert und übertaktet, bis er für heutige Standards nutzbar ist. <br>\r\nDanach habe ich dann angefangen verschiedene Programmiersprachen zu lernen, was dann auch meine Fähigkeiten im Programmieren verbessert hat. Ein paar Sprachen, die ich in den letzten Jahren gelernt habe, sind in der Fähigkeiten-Abschnitt aufgelistet. In den letzten beiden Jahren habe ich dann ein besonderees Interesse an Machine Learning entwickelt, weshalb ich dann wieder an einem Kurs im Phaenovum teilgenommen habe. Ich habe gerade mein erstes Machine Learning Projekt fertiggestellt, und bin gerade wieder an einem neuen Projekt, dass sich mit einer speziellen Art des Feature-Engineerings für Bilderkennung beschäftigt.'),
(11, 'projects-learnmore', 'Learn More', 'Erfahre Mehr'),
(12, 'projects-p-tb-des-s', 'This project is about a Trading Bot for trading crypto currencies. <br>\r\nThe application is written in Python and using the Kucoin API for requesting the market data and posting buy and sell orders. <br>\r\nThe core program represents a framework for testing different trading strategies live or backtesting.', 'Bei diesem Projekt geht es um einen Trading Bot für den Handel mit Kryptowährungen. <br>\r\nDie Anwendung ist in Python geschrieben und verwendet die Kucoin-API zum Anfordern der Marktdaten und zum Veröffentlichen von Kauf- und Verkaufsaufträgen. <br>\r\nDas Kernprogramm stellt ein Framework zum Livetesten oder Backtesting verschiedener Handelsstrategien dar.'),
(13, 'projects-p-tb-name', 'Trading Bot', 'Trading Bot'),
(14, 'projects-p-tb-des-l', 'long description', 'lange beschreibung'),
(15, 'projects-p-agc-name', 'Arduino Game Console', 'Arduino Spielekonsole'),
(16, 'projects-p-agc-des-s', 'This project is about a game console based on the Arduino platform. <br>\r\nThe console is using the arduino and two matrices for the visual representation of console games of the early gaming era, in this case Pong.', 'Bei diesem Projekt geht es um eine Spielekonsole basierend auf der Arduino-Plattform. <br>\r\nDie Konsole nutzt das Arduino und zwei Matrizen zur visuellen Darstellung von Konsolenspielen der frühen Gaming-Ära, in diesem Fall Pong.'),
(17, 'projects-p-agc-des-l', 'descirption', 'descirption'),
(18, 'projects-p-nr-name', 'Number Recognition', 'Zahlenerkennung'),
(19, 'projects-p-nr-des-s', 'This project represents my final high school thesis, for which I also received the award for Computer Science and Math at JugendForscht 2024 (student science competition). <br>\r\nIn this thesis I explored ways and algorithms for improving basic number recognition via Machine Learning on very small datasets.', 'Dieses Projekt stellt meine Abschlussarbeit am Gymnasium dar, für die ich auch den Preis für Informatik und Mathematik bei JugendForscht 2024 (Schüler-Wissenschaftswettbewerb) erhalten habe. <br>\r\nIn dieser Arbeit habe ich Möglichkeiten und Algorithmen zur Verbesserung der grundlegenden Zahlenerkennung durch maschinelles Lernen bei sehr kleinen Datensätzen untersucht.'),
(20, 'projects-p-nr-des-l', 'descirption', 'descirption'),
(21, 'projects-p-pv2-name', 'Portfolio V2', 'Portfolio V2'),
(22, 'projects-p-pv2-des-s', 'This website is my second attempt builing a portfolio website. <br>\r\nIt features the basic information about me, and is using a database for bilingual support aswell a project database for easyily maintaining this website.', 'Diese Website ist mein zweiter Versuch, eine Portfolio-Website zu erstellen. <br>\r\nEs enthält die grundlegenden Informationen über mich und verwendet eine Datenbank zur zweisprachigen Unterstützung sowie eine Projektdatenbank zur einfachen Pflege dieser Website.'),
(23, 'projects-p-pv2-des-l', 'descirption', 'descirption'),
(24, 'projects-seemore', 'Show More', 'Mehr Anzeigen'),
(25, 'projects-project', 'Projects', 'Projekte'),
(26, 'projects-select_tech', 'Select Language', 'Sprache wählen'),
(27, 'projects-p-em-name', 'Event Management System', 'Event Organisations Tool'),
(28, 'projects-p-em-des-s', 'This project is a web-based Event Management System built using PHP. It allows users to manage events efficiently, providing functionality for user authentication, event creation, and event registration. The system is designed to be responsive, ensuring it works well on different devices.', 'Bei diesem Projekt handelt es sich um ein webbasiertes Event-Management-System, das mit PHP erstellt wurde. Es ermöglicht Benutzern die effiziente Verwaltung von Ereignissen und bietet Funktionen zur Benutzerauthentifizierung, Ereigniserstellung und Ereignisregistrierung.'),
(29, 'projects-p-em-des-l', '', ''),
(30, 'projects-p-fr-name', 'Explicit Face Recognition', 'Explizite Gesichtserkennung'),
(31, 'projects-p-fr-des-s', 'This project implements a basic face recognition algorithm in Java, which also allows for the application of a bokeh effect (background blur) on the image. It is important to note that the face recognition algorithm uses color classification and edge detection for face identification, without any sophisticated machine learning methods.', 'Dieses Projekt implementiert einen grundlegenden Gesichtserkennungsalgorithmus in Java, der auch die Anwendung eines Bokeh-Effekts (Hintergrundunschärfe) auf das Bild ermöglicht. Es ist wichtig zu beachten, dass der Gesichtserkennungsalgorithmus Farbklassifizierung und Kantenerkennung zur Gesichtserkennung verwendet, ohne dass Methoden des maschinellen Lernens verwendet werden.'),
(32, 'projects-p-fr-des-l', '', ''),
(33, 'projects-p-fc-name', 'Float Classification', 'Float Klassifikation'),
(34, 'projects-p-fc-des-s', 'This project is designed to classify floating-point data using various classification techniques. It includes Java-based tools for reading CSV datasets, processing data, and applying distance-based classification algorithms. The project uses well-known datasets like the Iris dataset and a Dry Bean dataset for testing and evaluating the classification logic.\r\n', 'Dieses Projekt dient der Klassifizierung von Gleitkommadaten mithilfe verschiedener Klassifizierungstechniken. Es umfasst Java-basierte Tools zum Lesen von CSV-Datensätzen, zum Verarbeiten von Daten und zum Anwenden distanzbasierter Klassifizierungsalgorithmen. Das Projekt verwendet bekannte Datensätze wie den Iris-Datensatz und einen Dry Bean-Datensatz zum Testen und Bewerten der Klassifizierungslogik.'),
(35, 'projects-p-fc-des-l', '', ''),
(36, 'projects-p-sml-name', 'Stepper Motor Library', 'Schrittmotorbibliothek'),
(37, 'projects-p-sml-des-s', '', ''),
(38, 'projects-p-sml-des-l', '', ''),
(39, 'projects-p-webp-name', 'HTML Presentation', 'HTML Präsentation'),
(40, 'projects-p-webp-des-s', 'This minimalist web presentation template uses only HTML, CSS, and JavaScript, no frameworks needed. Ideal for creating online presentations without external libraries, it\'s compatible with most devices and easy to host. Basic HTML, CSS, and JavaScript skills are required for customization.', 'Diese minimalistische Webpräsentationsvorlage verwendet nur HTML, CSS und JavaScript, es sind keine Frameworks erforderlich. Ideal zum Erstellen von Online-Präsentationen ohne externe Bibliotheken, kompatibel mit den meisten Geräten und einfach zu hosten. Für die Anpassung sind grundlegende HTML-, CSS- und JavaScript-Kenntnisse erforderlich.'),
(41, 'projects-p-webp-des-l', '', ''),
(42, 'projects-p-pv1-name', 'Portfolio V1', 'Portfolio V1'),
(43, 'projects-p-pv1-des-s', '', ''),
(44, 'projects-p-pv1-des-l', '', ''),
(45, 'projects-p-calc-pi-name', 'Calculating Pi', 'Pi berechnen'),
(46, 'projects-p-calc-pi-des-s', '', ''),
(47, 'projects-p-calc-pi-des-l', '', ''),
(48, 'projects-p-calc-e-name', 'Calculating e', 'e berechnen'),
(49, 'projects-p-calc-e-des-s', '', ''),
(50, 'projects-p-calc-e-des-l', '', ''),
(51, 'projects-p-rwd-lp-name', 'Responsive Webdesign', 'Responsives Webdesign'),
(52, 'projects-p-rwd-lp-des-s', 'Basic concepts of webdesign.', 'Grundlegende Konzepte von Webdesign.'),
(53, 'projects-p-rwd-lp-des-l', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `project-db`
--

CREATE TABLE `project-db` (
  `id` int(100) NOT NULL,
  `descriptor` varchar(100) NOT NULL,
  `name` varchar(1000) NOT NULL,
  `technology` varchar(1000) NOT NULL,
  `description-short` varchar(1000) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `link-github` varchar(1000) NOT NULL,
  `link-webpage` varchar(1000) NOT NULL,
  `link-img` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `project-db`
--

INSERT INTO `project-db` (`id`, `descriptor`, `name`, `technology`, `description-short`, `description`, `link-github`, `link-webpage`, `link-img`) VALUES
(1, 'projects-p-tb', 'projects-p-tb-name', 'python; api; sql', 'projects-p-tb-des-s', 'projects-p-tb-des-l', '', '', 'img/img-tradingbot.jpeg'),
(2, 'projects-p-agc', 'projects-p-agc-name', 'cpp; arduino', 'projects-p-agc-des-s', 'projects-p-agc-des-l', 'https://github.com/max-acc/arduino-game-console', '', 'img/img-arduinogc.jpeg'),
(3, 'projects-p-nr', 'projects-p-nr-name', 'python; ml', 'projects-p-nr-des-s', 'projects-p-nr-des-l', '', '', 'img/img-imgrec.jpeg'),
(4, 'projects-p-pv2', 'projects-p-pv2-name', 'html; css; js; sql; php', 'projects-p-pv2-des-s', 'projects-p-pv2-des-l', 'https://github.com/max-acc/portfolio-v2', 'index.php', 'img/img-portfolio-v2.jpeg'),
(5, 'projects-p-em', 'projects-p-em-name', 'html; css; php; sql', 'projects-p-em-des-s', 'projects-p-em-des-l', 'https://github.com/max-acc/event-management', '', 'img/img-em.jpeg'),
(6, 'projects-p-fr', 'projects-p-fr-name', 'java', 'projects-p-fr-des-s', 'projects-p-fr-des-l', 'https://github.com/max-acc/java-explicit-face-recognition', '', 'img/img-fr.jpeg'),
(7, 'projects-p-fc', 'projects-p-fc-name', 'java', 'projects-p-fc-des-s', 'projects-p-fc-des-l', '', '', 'img/img-fc.jpeg'),
(8, 'projects-p-sml', 'projects-p-sml-name', 'cpp; arduino', 'projects-p-sml-des-s', 'projects-p-sml-des-l', 'https://github.com/max-acc/arduino-stepper-motor-lib', '', 'img/img-sml.jpeg'),
(9, 'projects-p-webp', 'projects-p-webp-name', 'html; css; js', 'projects-p-webp-des-s', 'projects-p-webp-des-l', 'https://github.com/max-acc/HTML-presentation-template', '', 'img/img-webp.jpeg'),
(10, 'projects-p-pv1', 'projects-p-pv1-name', 'html; css; js', 'projects-p-pv1-des-s', 'projects-p-pv1-des-l', 'https://github.com/max-acc/portfolio-v1', 'https://max-acc.github.io/portfolio-v1/', 'img/img-portfolio-v2.jpeg'),
(11, 'projects-p-calc-pi', 'projects-p-calc-pi-name', 'cpp', 'projects-p-calc-pi-des-s', 'projects-p-calc-pi-des-l', 'https://github.com/max-acc/cPlus-calcultate-pi', '', 'img/img-calc-pi.jpeg'),
(12, 'projects-p-calc-e', 'projects-p-calc-e-name', 'cpp', 'projects-p-calc-e-des-s', 'projects-p-calc-e-des-l', 'https://github.com/max-acc/cPlus-calculate-e', '', 'img/img-calc-e.jpeg'),
(13, 'projects-p-rwd-lp', 'projects-p-rwd-lp-name', 'html; css', 'projects-p-rwd-lp-des-s', 'projects-p-rwd-lp-des-l', '', '', 'img/img-rwd.jpeg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `language-db`
--
ALTER TABLE `language-db`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project-db`
--
ALTER TABLE `project-db`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `language-db`
--
ALTER TABLE `language-db`
  MODIFY `id` int(64) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `project-db`
--
ALTER TABLE `project-db`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
