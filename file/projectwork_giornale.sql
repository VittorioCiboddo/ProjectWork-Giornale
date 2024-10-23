-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Creato il: Ott 23, 2024 alle 10:56
-- Versione del server: 10.1.8-MariaDB
-- Versione PHP: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projectwork_giornale`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `ruolo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`, `email`, `ruolo`) VALUES
(1, 'vitto95', 'ciao123?', 'vitto95@gmail.com', 'a'),
(2, 'rick96', 'ciao123?', 'rick96@gmail.com', 'aa'),
(3, 'ale00', 'ciao123?', 'ale00@gmail.com', 'aaa'),
(4, 'marco99', 'ciao123?', 'marco99@gmail.com', 'aaaa'),
(5, 'vito04', 'ciao123?', 'vito04@gmail.com', 'aaaaa');

-- --------------------------------------------------------

--
-- Struttura della tabella `categoria`
--

CREATE TABLE `categoria` (
  `id_categoria` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `categoria`
--

INSERT INTO `categoria` (`id_categoria`, `nome`) VALUES
(1, 'Tecnologia'),
(2, 'Sport'),
(3, 'Politica');

-- --------------------------------------------------------

--
-- Struttura della tabella `evento`
--

CREATE TABLE `evento` (
  `id_evento` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `luogo` varchar(50) NOT NULL,
  `data_evento` datetime NOT NULL,
  `fk_id_categoria` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `evento`
--

INSERT INTO `evento` (`id_evento`, `nome`, `luogo`, `data_evento`, `fk_id_categoria`) VALUES
(1, 'Cyber day', 'Roma', '2024-10-23 11:00:00', 3),
(2, 'Coding 4 all', 'Milano', '2024-09-28 10:15:00', 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `notizia`
--

CREATE TABLE `notizia` (
  `id_notizia` int(11) NOT NULL,
  `titolo` varchar(50) NOT NULL,
  `descrizione` varchar(100) NOT NULL,
  `data_pubblicazione` date NOT NULL,
  `immagine` varchar(100) NOT NULL,
  `link_video` varchar(50) DEFAULT NULL,
  `fk_id_categoria` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `notizia`
--

INSERT INTO `notizia` (`id_notizia`, `titolo`, `descrizione`, `data_pubblicazione`, `immagine`, `link_video`, `fk_id_categoria`) VALUES
(1, 'Nuovo I-Phone', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n', '2024-10-10', 'Vivamus iaculis mi sed sagittis dignissim.', NULL, 1),
(2, 'Nuovo libro Tolkien generato da IA', 'Phasellus eu diam quis dui ornare semper eu non metus. Suspendisse ut mauris sit amet nulla dignissi', '2024-08-15', 'Maecenas ultrices ultricies elit eget egestas.', NULL, 1),
(3, 'L''I.A. al VAR: via libera dalla FIFA dal 2025', 'Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.', '2024-07-17', 'Vivamus ornare consectetur finibus. ', NULL, 2);

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indici per le tabelle `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indici per le tabelle `evento`
--
ALTER TABLE `evento`
  ADD PRIMARY KEY (`id_evento`),
  ADD KEY `fk_id_categoria` (`fk_id_categoria`),
  ADD KEY `fk_id_categoria_2` (`fk_id_categoria`);

--
-- Indici per le tabelle `notizia`
--
ALTER TABLE `notizia`
  ADD PRIMARY KEY (`id_notizia`),
  ADD KEY `fk_id_categoria` (`fk_id_categoria`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT per la tabella `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT per la tabella `evento`
--
ALTER TABLE `evento`
  MODIFY `id_evento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT per la tabella `notizia`
--
ALTER TABLE `notizia`
  MODIFY `id_notizia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `evento`
--
ALTER TABLE `evento`
  ADD CONSTRAINT `evento_categoria` FOREIGN KEY (`fk_id_categoria`) REFERENCES `categoria` (`id_categoria`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `notizia`
--
ALTER TABLE `notizia`
  ADD CONSTRAINT `notizia_categoria` FOREIGN KEY (`fk_id_categoria`) REFERENCES `categoria` (`id_categoria`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
