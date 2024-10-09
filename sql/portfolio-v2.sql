-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 09. Okt 2024 um 17:46
-- Server-Version: 10.4.17-MariaDB
-- PHP-Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `portfolio-v2`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `language-db`
--

CREATE TABLE `language-db` (
  `id` int(64) NOT NULL,
  `descriptor` varchar(128) NOT NULL,
  `en` text NOT NULL,
  `de` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `language-db`
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
(12, 'projects-p-tb-des-s', 'This project is about a Trading Bot for trading crypto currencies. <br>\r\nThe application is written in Python and using the Kucoin API for requesting the market data and posting buy and sell orders. <br>\r\nThe core program represents a framework for testing different trading strategies live or backtesting.', 'Trading Bot kurze Beschreibung'),
(13, 'projects-p-tb-name', 'Trading Bot', 'Trading Bot'),
(14, 'projects-p-tb-des-l', 'long description', 'lange beschreibung'),
(15, 'projects-p-agc-name', 'Arduino Game Console', 'Arduino Spielekonsole'),
(16, 'projects-p-agc-des-s', 'This project is about a game console based on the Arduino platform. <br>\r\nThe console is using the arduino and two matrices for the visual representation of console games of the early gaming era, in this case Pong.', 'descirption'),
(17, 'projects-p-agc-des-l', 'descirption', 'descirption'),
(18, 'projects-p-nr-name', 'Number Recognition', 'Zahlenerkennung'),
(19, 'projects-p-nr-des-s', 'This project represents my final high school thesis, for which I also received the award for Computer Science and Math at JugendForscht 2024 (student science competition). <br>\r\nIn this thesis I explored ways and algorithms for improving basic number recognition via Machine Learning on very small datasets.', 'descirption'),
(20, 'projects-p-nr-des-l', 'descirption', 'descirption'),
(21, 'projects-p-pv2-name', 'Portfolio V2', 'Portfolio V2'),
(22, 'projects-p-pv2-des-s', 'This website is my second attempt builing a portfolio website. <br>\r\nIt features the basic information about me, and is using a database for bilingual support aswell a project database for easyily maintaining this website.', 'descirption'),
(23, 'projects-p-pv2-des-l', 'descirption', 'descirption'),
(24, 'projects-seemore', 'Show More', 'Mehr Anzeigen'),
(25, 'projects-project', 'Projects', 'Projekte'),
(26, 'projects-select_tech', 'Select Language', 'Sprache wählen');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `project-db`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `project-db`
--

INSERT INTO `project-db` (`id`, `descriptor`, `name`, `technology`, `description-short`, `description`, `link-github`, `link-webpage`, `link-img`) VALUES
(1, 'projects-p-tb', 'projects-p-tb-name', 'python; api; sql', 'projects-p-tb-des-s', 'projects-p-tb-des-l', '', '', 'img/img-tradingbot.jpeg'),
(2, 'projects-p-agc', 'projects-p-agc-name', 'cpp; arduino', 'projects-p-agc-des-s', 'projects-p-agc-des-l', 'https://github.com/max-acc/arduino-game-console', '', 'img/img-arduinogc.jpeg'),
(3, 'projects-p-nr', 'projects-p-nr-name', 'python; ml', 'projects-p-nr-des-s', 'projects-p-nr-des-l', '', '', 'img/img-imgrec.jpeg'),
(4, 'projects-p-pv2', 'projects-p-pv2-name', 'html; css; js; sql; php', 'projects-p-pv2-des-s', 'projects-p-pv2-des-l', 'https://github.com/max-acc/portfolio-v2', 'index.php', 'img/img-portfolio-v2.jpeg'),
(5, 'projects-p-em', 'projects-p-em-name', 'html; css; php; sql', 'projects-p-em-des-s', 'projects-p-em-des-l', 'https://github.com/max-acc/event-management', '', ''),
(6, 'projects-p-fr', 'projects-p-fr-name', 'java', 'projects-p-fr-des-s', 'projects-p-fr-des-l', 'https://github.com/max-acc/java-explicit-face-recognition', '', ''),
(7, 'projects-p-fc', 'projects-p-fc-name', 'java', 'projects-p-fc-des-s', 'projects-p-fc-des-l', '', '', ''),
(8, 'projects-p-sml', 'projects-p-sml-name', 'cpp; arduino', 'projects-p-sml-des-s', 'projects-p-sml-des-l', 'https://github.com/max-acc/arduino-stepper-motor-lib', '', ''),
(9, 'projects-p-webp', 'projects-p-webp-name', 'html; css; js', 'projects-p-webp-des-s', 'projects-p-webp-des-l', 'https://github.com/max-acc/HTML-presentation-template', '', ''),
(10, 'projects-p-pv1', 'projects-p-pv1-name', 'html; css; js', 'projects-p-pv1-des-s', 'projects-p-pv1-des-l', 'https://github.com/max-acc/portfolio-v1', 'max-acc.github.io/portfolio-v1/', ''),
(11, 'projects-p-calc-pi', 'projects-p-calc-pi-name', 'cpp', 'projects-p-calc-pi-des-s', 'projects-p-calc-pi-des-l', 'https://github.com/max-acc/cPlus-calcultate-pi', '', ''),
(12, 'projects-p-calc-e', 'projects-p-calc-e-name', 'cpp', 'projects-p-calc-e-des-s', 'projects-p-calc-e-des-l', 'https://github.com/max-acc/cPlus-calculate-e', '', ''),
(13, 'projects-p-rwd-lp', 'projects-p-rwd-lp-name', 'html; css', 'projects-p-rwd-lp-des-s', 'projects-p-rwd-lp-des-l', '', '', '');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `language-db`
--
ALTER TABLE `language-db`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `project-db`
--
ALTER TABLE `project-db`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `language-db`
--
ALTER TABLE `language-db`
  MODIFY `id` int(64) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT für Tabelle `project-db`
--
ALTER TABLE `project-db`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
