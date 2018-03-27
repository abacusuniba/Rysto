-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generato il: Feb 22, 2014 alle 10:57
-- Versione del server: 5.6.14
-- Versione PHP: 5.5.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cooking`
--
CREATE DATABASE cooking;
USE cooking;
-- --------------------------------------------------------

--
-- Struttura della tabella `bibita`
--

CREATE TABLE IF NOT EXISTS `bibita` (
  `idBibita` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) NOT NULL,
  `prezzo` decimal(3,2) unsigned NOT NULL,
  `quantita` varchar(10) NOT NULL,
  `descrizione` varchar(50) NOT NULL,
  `categoria` int(11) DEFAULT NULL,
  PRIMARY KEY (`idBibita`),
  KEY `fk_cat2` (`categoria`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dump dei dati per la tabella `bibita`
--

INSERT INTO `bibita` (`idBibita`, `nome`, `prezzo`, `quantita`, `descrizione`, `categoria`) VALUES
(1, 'Acqua Liscia', '1.50', '0.50l', 'Acqua liscia', 2),
(2, 'Coca Cola', '2.00', '0.33l', 'Della coca cola spa', 1),
(3, 'Warsteiner', '3.50', '0.33l', 'Birra Bionda', 3),
(4, 'Wellington', '5.00', '0.40L', 'Birra rossa doppio malto', 4),
(5, 'Fanta', '2.50', '0.33L', 'Lattina', 1),
(6, 'Acqua frizzante', '1.20', '0.50L', 'Acqua frizzante', 2);

-- --------------------------------------------------------

--
-- Struttura della tabella `categoria_bibita`
--

CREATE TABLE IF NOT EXISTS `categoria_bibita` (
  `idCategoriaB` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) DEFAULT NULL,
  `idSupB` int(11) DEFAULT NULL,
  PRIMARY KEY (`idCategoriaB`),
  KEY `idSupB` (`idSupB`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dump dei dati per la tabella `categoria_bibita`
--

INSERT INTO `categoria_bibita` (`idCategoriaB`, `nome`, `idSupB`) VALUES
(1, 'Bibite in Lattina', NULL),
(2, 'Acqua', NULL),
(3, 'Birre alla Spina', NULL),
(4, 'Birre in Bottiglia', NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `categoria_prodotto`
--

CREATE TABLE IF NOT EXISTS `categoria_prodotto` (
  `idCategoriaP` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) DEFAULT NULL,
  `idSupP` int(11) DEFAULT NULL,
  PRIMARY KEY (`idCategoriaP`),
  KEY `idSupP` (`idSupP`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dump dei dati per la tabella `categoria_prodotto`
--

INSERT INTO `categoria_prodotto` (`idCategoriaP`, `nome`, `idSupP`) VALUES
(1, 'Pizze Rossa', NULL),
(2, 'Pizze Bianca', NULL),
(3, 'Stuzzicheria', NULL),
(4, 'Caffetteria', NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `ingrediente`
--

CREATE TABLE IF NOT EXISTS `ingrediente` (
  `idIngrediente` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(20) NOT NULL,
  `prezzo_unitario` decimal(4,2) NOT NULL,
  PRIMARY KEY (`idIngrediente`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dump dei dati per la tabella `ingrediente`
--

INSERT INTO `ingrediente` (`idIngrediente`, `nome`, `prezzo_unitario`) VALUES
(1, 'Mozzarella', '1.25'),
(2, 'Basilico', '0.20'),
(3, 'Salsa di Pomodoro', '1.20'),
(4, 'Wurstel', '1.00'),
(6, 'Mozzarella di bufala', '1.30'),
(7, 'Acciughe', '0.50'),
(8, 'Origano', '0.05'),
(9, 'Olio', '0.10'),
(10, 'Sale', '0.01'),
(11, 'Salame piccante', '1.00'),
(12, 'Speck', '0.50'),
(13, 'Fagioli', '0.30'),
(14, 'Ciccio', '3.50'),
(15, 'Patatine fritte', '2.50');

-- --------------------------------------------------------

--
-- Struttura della tabella `ordine`
--

CREATE TABLE IF NOT EXISTS `ordine` (
  `idOrdine` int(11) NOT NULL AUTO_INCREMENT,
  `Cognome` varchar(40) DEFAULT NULL,
  `Nome` varchar(30) DEFAULT NULL,
  `Data` datetime NOT NULL,
  `Tavolo` int(11) DEFAULT NULL,
  `idUtente` int(11) DEFAULT NULL,
  `note_p` text,
  `note_b` text,
  `Pagato` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idOrdine`),
  KEY `Tavolo` (`Tavolo`),
  KEY `utente` (`idUtente`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=381 ;

--
-- Dump dei dati per la tabella `ordine`
--

INSERT INTO `ordine` (`idOrdine`, `Cognome`, `Nome`, `Data`, `Tavolo`, `idUtente`, `note_p`, `note_b`, `Pagato`) VALUES
(304, '', '', '2013-12-27 04:05:17', NULL, NULL, NULL, NULL, 1),
(305, '', '', '2013-12-27 04:26:26', NULL, NULL, NULL, NULL, 1),
(306, '', '', '2013-12-27 04:27:06', NULL, NULL, NULL, NULL, 1),
(307, '', '', '2013-12-27 05:30:06', NULL, NULL, NULL, NULL, 1),
(308, '', '', '2013-12-27 06:15:25', NULL, NULL, NULL, NULL, 1),
(309, '', '', '2013-12-27 06:37:47', NULL, NULL, NULL, NULL, 1),
(310, '', '', '2013-12-27 06:40:34', NULL, NULL, NULL, NULL, 1),
(311, '', '', '2013-12-27 06:42:33', NULL, NULL, NULL, NULL, 1),
(312, '', '', '2013-12-27 06:45:24', NULL, NULL, NULL, NULL, 1),
(313, '', '', '2013-12-27 06:46:07', NULL, NULL, NULL, NULL, 1),
(314, '', '', '2013-12-27 07:06:20', NULL, NULL, NULL, NULL, 1),
(315, '', '', '2013-12-27 07:07:26', NULL, NULL, NULL, NULL, 1),
(316, '', '', '2013-12-27 07:08:19', NULL, NULL, NULL, NULL, 1),
(317, '', '', '2013-12-27 07:14:33', NULL, NULL, NULL, NULL, 1),
(318, '', '', '2013-12-27 07:17:29', NULL, NULL, NULL, NULL, 1),
(319, '', '', '2013-12-28 09:39:58', NULL, NULL, NULL, NULL, 1),
(320, '', '', '2013-12-28 09:40:23', NULL, NULL, NULL, NULL, 1),
(321, '', '', '2013-12-28 09:50:20', NULL, NULL, NULL, NULL, 1),
(322, '', '', '2013-12-28 10:00:23', NULL, NULL, NULL, NULL, 1),
(323, '', '', '2013-12-28 10:02:22', NULL, NULL, NULL, NULL, 1),
(324, '', '', '2013-12-28 10:05:42', 1, NULL, NULL, NULL, 1),
(325, '', '', '2013-12-28 10:06:02', 4, NULL, NULL, NULL, 1),
(326, '', '', '2013-12-28 10:12:24', NULL, NULL, NULL, NULL, 1),
(327, '', '', '2013-12-28 10:12:42', NULL, NULL, NULL, NULL, 1),
(328, '', '', '2013-12-28 10:13:51', NULL, NULL, NULL, NULL, 1),
(329, '', '', '2013-12-28 10:14:21', NULL, NULL, NULL, NULL, 1),
(330, '', '', '2013-12-28 10:15:27', NULL, NULL, NULL, NULL, 1),
(331, '', '', '2013-12-28 10:20:29', 2, NULL, NULL, NULL, 1),
(332, '', '', '2013-12-28 10:20:50', 2, NULL, NULL, NULL, 1),
(333, '', '', '2013-12-28 10:21:58', 2, NULL, NULL, NULL, 1),
(334, '', '', '2013-12-28 10:23:52', 5, NULL, NULL, NULL, 1),
(335, '', '', '2013-12-28 10:24:17', 2, NULL, NULL, NULL, 1),
(336, '', '', '2013-12-28 10:24:59', 2, NULL, NULL, NULL, 1),
(337, '', '', '2013-12-28 11:06:57', 6, NULL, NULL, NULL, 1),
(338, '', '', '2013-12-28 11:16:30', NULL, NULL, NULL, NULL, 1),
(339, '', '', '2013-12-28 11:17:27', NULL, NULL, NULL, NULL, 1),
(340, '', '', '2013-12-28 11:27:52', 2, NULL, NULL, NULL, 1),
(341, '', '', '2013-12-28 11:28:15', 1, NULL, NULL, NULL, 1),
(342, '', '', '2013-12-28 11:30:09', 4, NULL, NULL, NULL, 1),
(343, '', '', '2013-12-28 11:37:52', 2, NULL, NULL, NULL, 1),
(344, '', '', '2014-01-02 12:01:49', NULL, NULL, NULL, NULL, 1),
(345, '', '', '2014-01-02 12:02:06', NULL, NULL, NULL, NULL, 1),
(346, '', '', '2014-01-02 12:29:54', NULL, NULL, NULL, NULL, 1),
(347, '', '', '2014-01-02 12:30:38', NULL, NULL, NULL, NULL, 1),
(348, '', '', '2014-01-02 12:37:56', 3, 3, '', '', 1),
(349, '', '', '2014-01-02 12:41:07', 6, NULL, NULL, NULL, 1),
(350, '', '', '2014-01-02 12:43:22', 1, NULL, NULL, NULL, 1),
(351, '', '', '2014-01-02 05:44:45', 4, 3, '', '', 1),
(352, '', '', '2014-01-02 06:14:34', 1, 3, '', '', 1),
(353, '', '', '2014-01-07 10:58:58', 2, 3, '', '', 1),
(354, '', '', '2014-01-24 11:22:40', 2, 3, '', '', 1),
(355, '', '', '2014-01-24 11:52:18', 2, 3, '', '', 1),
(356, '', '', '2014-01-24 12:17:35', 1, 3, '', '', 1),
(357, '', '', '2014-01-24 12:24:08', 1, 3, '', '', 1),
(358, '', '', '2014-01-24 12:28:08', 2, 3, '', '', 1),
(359, '', '', '2014-01-24 12:42:57', 3, 3, '', '', 1),
(360, '', '', '2014-02-12 11:20:29', 1, 3, '', '', 1),
(361, '', '', '2014-02-12 11:23:23', 2, 3, '', '', 1),
(362, '', '', '2014-02-12 11:28:20', 3, 3, '', '', 1),
(363, '', '', '2014-02-12 06:19:12', 3, 3, '', '', 1),
(364, '', '', '2014-02-12 06:23:56', 1, 3, '', '', 1),
(365, '', '', '2014-02-12 06:26:05', 1, 3, '', '', 1),
(366, '', '', '2014-02-12 06:30:16', 1, 3, '', '', 1),
(367, '', '', '2014-02-12 06:33:10', 1, 3, '', '', 1),
(368, '', '', '2014-02-12 06:38:24', 1, 3, '', '', 1),
(369, '', '', '2014-02-12 06:42:08', 1, 3, '', '', 1),
(370, '', '', '2014-02-12 06:47:04', 1, 3, '', '', 1),
(371, '', '', '2014-02-13 10:17:59', 3, 3, '', '', 0),
(372, '', '', '2014-02-13 10:39:52', 1, 3, '', '', 0),
(373, '', '', '2014-02-13 10:41:57', 2, 3, '', '', 0),
(374, '', '', '2014-02-13 10:55:06', 1, 3, '', '', 0),
(375, '', '', '2014-02-13 11:06:35', 1, 3, '', '', 0),
(376, '', '', '2014-02-13 07:08:31', 1, 3, '', '', 0),
(377, '', '', '2014-02-13 07:11:58', 1, 3, '', '', 0),
(378, '', '', '2014-02-13 07:19:23', 1, 3, '', '', 0),
(379, '', '', '2014-02-13 07:24:42', 1, 3, '', '', 0),
(380, '', '', '2014-02-14 09:16:24', 1, 3, '', '', 0);

-- --------------------------------------------------------

--
-- Struttura della tabella `ordine_bibita`
--

CREATE TABLE IF NOT EXISTS `ordine_bibita` (
  `idOrdine` int(11) NOT NULL,
  `idBibita` int(11) NOT NULL,
  `quantita` int(11) DEFAULT '0',
  KEY `idOrdine` (`idOrdine`,`idBibita`),
  KEY `idBibita` (`idBibita`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `ordine_bibita`
--

INSERT INTO `ordine_bibita` (`idOrdine`, `idBibita`, `quantita`) VALUES
(306, 3, 4),
(309, 3, 5),
(313, 3, 6),
(314, 1, 3),
(315, 3, 10),
(316, 2, 7),
(316, 5, 14),
(316, 4, 4),
(317, 3, 11),
(317, 6, 5),
(318, 6, 6),
(320, 3, 8),
(323, 3, 5),
(325, 1, 7),
(327, 6, 10),
(328, 2, 5),
(330, 6, 7),
(331, 6, 9),
(332, 6, 6),
(332, 3, 6),
(335, 3, 11),
(335, 6, 6),
(335, 1, 5),
(336, 2, 5),
(347, 2, 5),
(347, 5, 7),
(348, 4, 5),
(351, 4, 2),
(352, 3, 4);

-- --------------------------------------------------------

--
-- Struttura della tabella `ordine_prodfin`
--

CREATE TABLE IF NOT EXISTS `ordine_prodfin` (
  `idOrdine` int(11) NOT NULL,
  `idProdfin` int(11) NOT NULL,
  `quantita` int(11) DEFAULT '0',
  KEY `idOrdine` (`idOrdine`,`idProdfin`),
  KEY `idProdfin` (`idProdfin`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `ordine_prodfin`
--

INSERT INTO `ordine_prodfin` (`idOrdine`, `idProdfin`, `quantita`) VALUES
(304, 21, 7),
(304, 22, 5),
(304, 24, 5),
(305, 21, 5),
(306, 21, 5),
(309, 21, 4),
(309, 22, 3),
(309, 24, 2),
(312, 21, 5),
(313, 21, 4),
(325, 22, 5),
(325, 24, 8),
(333, 22, 6),
(342, 22, 4),
(346, 22, 30),
(347, 21, 5),
(348, 24, 5),
(349, 21, 3),
(350, 24, 5),
(351, 21, 1),
(352, 24, 1),
(353, 21, 1),
(353, 22, 1),
(354, 21, 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `prodfin_ingred`
--

CREATE TABLE IF NOT EXISTS `prodfin_ingred` (
  `prod_fin` int(11) NOT NULL,
  `ingred` int(11) NOT NULL,
  PRIMARY KEY (`prod_fin`,`ingred`),
  KEY `ingred` (`ingred`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `prodfin_ingred`
--

INSERT INTO `prodfin_ingred` (`prod_fin`, `ingred`) VALUES
(21, 1),
(22, 1),
(21, 2),
(21, 3),
(22, 3),
(21, 4),
(21, 6);

-- --------------------------------------------------------

--
-- Struttura della tabella `prodotto_finito`
--

CREATE TABLE IF NOT EXISTS `prodotto_finito` (
  `idProd` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) NOT NULL,
  `prezzo` decimal(4,2) unsigned NOT NULL,
  `descrizione` varchar(50) NOT NULL,
  `categoria` int(11) DEFAULT NULL,
  PRIMARY KEY (`idProd`),
  KEY `fk_cat` (`categoria`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

--
-- Dump dei dati per la tabella `prodotto_finito`
--

INSERT INTO `prodotto_finito` (`idProd`, `nome`, `prezzo`, `descrizione`, `categoria`) VALUES
(21, 'Pizza napoletana', '8.00', '', 1),
(22, 'Pizza aglio', '5.00', 'Aglio olio e origano', 1),
(24, 'Pizza marinara', '3.50', 'Salsa e mozzarella', 3);

-- --------------------------------------------------------

--
-- Struttura della tabella `sala`
--

CREATE TABLE IF NOT EXISTS `sala` (
  `idSala` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) NOT NULL,
  PRIMARY KEY (`idSala`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dump dei dati per la tabella `sala`
--

INSERT INTO `sala` (`idSala`, `nome`) VALUES
(1, 'Sala1'),
(2, 'Sala2'),
(3, 'Sala3');

-- --------------------------------------------------------

--
-- Struttura della tabella `supcategoria_bibita`
--

CREATE TABLE IF NOT EXISTS `supcategoria_bibita` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `supcategoria_prodotto`
--

CREATE TABLE IF NOT EXISTS `supcategoria_prodotto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `tavolo`
--

CREATE TABLE IF NOT EXISTS `tavolo` (
  `idTavolo` int(11) NOT NULL AUTO_INCREMENT,
  `prenotato` tinyint(1) DEFAULT NULL,
  `sala` int(11) NOT NULL,
  `nome` varchar(20) NOT NULL,
  PRIMARY KEY (`idTavolo`),
  KEY `sala` (`sala`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dump dei dati per la tabella `tavolo`
--

INSERT INTO `tavolo` (`idTavolo`, `prenotato`, `sala`, `nome`) VALUES
(1, 1, 1, 'Tavolo 1'),
(2, 0, 1, 'Tavolo 2'),
(3, 0, 3, 'Tavolo 3'),
(4, 0, 3, 'TavoloX'),
(5, 0, 2, 'TavoloY'),
(6, 0, 2, 'TavoloZ');

-- --------------------------------------------------------

--
-- Struttura della tabella `utente`
--

CREATE TABLE IF NOT EXISTS `utente` (
  `idUtente` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) DEFAULT NULL,
  `cognome` varchar(30) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `tipo_user` char(1) DEFAULT NULL,
  `username` varchar(30) NOT NULL,
  PRIMARY KEY (`idUtente`),
  UNIQUE KEY `nome` (`nome`,`cognome`,`password`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dump dei dati per la tabella `utente`
--

INSERT INTO `utente` (`idUtente`, `nome`, `cognome`, `password`, `tipo_user`, `username`) VALUES
(1, 'Giuseppe', 'Paradiso', '12345', 'A', 'peppe'),
(2, 'Francesco', 'Rinaldi', 'qwerty', 'C', 'f.rinaldi'),
(3, 'Giuseppe', 'Cacamo', 'qwerty1', 'A', 'g.cacamo'),
(4, 'Lucia', 'Di Savino', 'qwerty1', 'C', 'l.disavino');

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `bibita`
--
ALTER TABLE `bibita`
  ADD CONSTRAINT `bibita_ibfk_1` FOREIGN KEY (`categoria`) REFERENCES `categoria_bibita` (`idCategoriaB`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Limiti per la tabella `categoria_bibita`
--
ALTER TABLE `categoria_bibita`
  ADD CONSTRAINT `categoria_bibita_ibfk_1` FOREIGN KEY (`idSupB`) REFERENCES `supcategoria_bibita` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Limiti per la tabella `categoria_prodotto`
--
ALTER TABLE `categoria_prodotto`
  ADD CONSTRAINT `categoria_prodotto_ibfk_1` FOREIGN KEY (`idSupP`) REFERENCES `supcategoria_prodotto` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Limiti per la tabella `ordine`
--
ALTER TABLE `ordine`
  ADD CONSTRAINT `ordine_ibfk_1` FOREIGN KEY (`Tavolo`) REFERENCES `tavolo` (`idTavolo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ordine_ibfk_2` FOREIGN KEY (`idUtente`) REFERENCES `utente` (`idUtente`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Limiti per la tabella `ordine_bibita`
--
ALTER TABLE `ordine_bibita`
  ADD CONSTRAINT `ordine_bibita_ibfk_1` FOREIGN KEY (`idOrdine`) REFERENCES `ordine` (`idOrdine`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ordine_bibita_ibfk_2` FOREIGN KEY (`idBibita`) REFERENCES `bibita` (`idBibita`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `ordine_prodfin`
--
ALTER TABLE `ordine_prodfin`
  ADD CONSTRAINT `ordine_prodfin_ibfk_1` FOREIGN KEY (`idOrdine`) REFERENCES `ordine` (`idOrdine`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ordine_prodfin_ibfk_2` FOREIGN KEY (`idProdfin`) REFERENCES `prodotto_finito` (`idProd`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `prodfin_ingred`
--
ALTER TABLE `prodfin_ingred`
  ADD CONSTRAINT `prodfin_ingred_ibfk_1` FOREIGN KEY (`prod_fin`) REFERENCES `prodotto_finito` (`idProd`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `prodfin_ingred_ibfk_2` FOREIGN KEY (`ingred`) REFERENCES `ingrediente` (`idIngrediente`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `prodotto_finito`
--
ALTER TABLE `prodotto_finito`
  ADD CONSTRAINT `prodotto_finito_ibfk_1` FOREIGN KEY (`categoria`) REFERENCES `categoria_prodotto` (`idCategoriaP`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Limiti per la tabella `tavolo`
--
ALTER TABLE `tavolo`
  ADD CONSTRAINT `tavolo_ibfk_1` FOREIGN KEY (`sala`) REFERENCES `sala` (`idSala`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
