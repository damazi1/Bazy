-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 14 Wrz 2021, 15:04
-- Wersja serwera: 10.4.11-MariaDB
-- Wersja PHP: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `4a_rpg`
--
CREATE DATABASE IF NOT EXISTS `4a_rpg` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `4a_rpg`;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `atrybuty`
--

DROP TABLE IF EXISTS `atrybuty`;
CREATE TABLE `atrybuty` (
  `id_atrybut` int(11) NOT NULL,
  `nazwa` int(11) NOT NULL,
  `opis` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `atrybut_przedmiot`
--

DROP TABLE IF EXISTS `atrybut_przedmiot`;
CREATE TABLE `atrybut_przedmiot` (
  `id_przedmiot_atrybut` int(11) NOT NULL,
  `id_przedmiotu` int(11) NOT NULL,
  `id_atrybutu` int(11) NOT NULL,
  `ilosc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `budynki`
--

DROP TABLE IF EXISTS `budynki`;
CREATE TABLE `budynki` (
  `id_budynki` int(11) NOT NULL,
  `typ_budynku` varchar(50) DEFAULT NULL,
  `miasto` int(11) DEFAULT NULL,
  `wlasciciel` int(11) DEFAULT NULL,
  `opis` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `charaktery`
--

DROP TABLE IF EXISTS `charaktery`;
CREATE TABLE `charaktery` (
  `id_charaktery` int(11) NOT NULL,
  `charaktery` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `czary`
--

DROP TABLE IF EXISTS `czary`;
CREATE TABLE `czary` (
  `id_czary` int(11) NOT NULL,
  `nazwa` varchar(55) DEFAULT NULL,
  `wymagania` int(11) DEFAULT NULL,
  `koszt` varchar(55) DEFAULT NULL,
  `efekt` varchar(55) DEFAULT NULL,
  `opis` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ekwipunek`
--

DROP TABLE IF EXISTS `ekwipunek`;
CREATE TABLE `ekwipunek` (
  `id_ekwipunek` int(11) NOT NULL,
  `id_gracz` int(11) DEFAULT NULL,
  `id_npc` int(11) DEFAULT NULL,
  `prawa_reka` int(11) DEFAULT NULL,
  `lewa_reka` int(11) DEFAULT NULL,
  `glowa` int(11) DEFAULT NULL,
  `tlow` int(11) DEFAULT NULL,
  `nogi` int(11) DEFAULT NULL,
  `akcesorium_pierwsze` int(11) DEFAULT NULL,
  `akcesorium_drugie` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ksiega_czarow`
--

DROP TABLE IF EXISTS `ksiega_czarow`;
CREATE TABLE `ksiega_czarow` (
  `id_czary` int(11) NOT NULL,
  `id_postac` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `lokacje`
--

DROP TABLE IF EXISTS `lokacje`;
CREATE TABLE `lokacje` (
  `id_lokacje` int(11) NOT NULL,
  `nazwa_miasta` varchar(55) DEFAULT NULL,
  `region` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `postacie`
--

DROP TABLE IF EXISTS `postacie`;
CREATE TABLE `postacie` (
  `id_postac` int(11) NOT NULL,
  `id_uzytkownika` int(11) NOT NULL,
  `imie/imiona` varchar(55) DEFAULT NULL,
  `rasa` int(11) DEFAULT NULL,
  `plec` char(1) DEFAULT NULL,
  `charakter` int(11) DEFAULT NULL,
  `wiek` int(4) DEFAULT NULL,
  `biografia` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `przedmioty`
--

DROP TABLE IF EXISTS `przedmioty`;
CREATE TABLE `przedmioty` (
  `id_przedmioty` int(11) NOT NULL,
  `nazwa` varchar(100) DEFAULT NULL,
  `obrazenia` int(11) NOT NULL,
  `klasa_pancerza` int(11) NOT NULL,
  `opis` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `rasy`
--

DROP TABLE IF EXISTS `rasy`;
CREATE TABLE `rasy` (
  `id_rasy` int(11) NOT NULL,
  `rasa` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uzytkownicy`
--

DROP TABLE IF EXISTS `uzytkownicy`;
CREATE TABLE `uzytkownicy` (
  `id_uzytkownicy` int(11) NOT NULL,
  `nick` varchar(55) DEFAULT NULL,
  `e-mail` varchar(55) DEFAULT NULL,
  `haslo` varchar(55) DEFAULT NULL,
  `data_przystapienia` date DEFAULT NULL,
  `uprawnienia` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wymagania`
--

DROP TABLE IF EXISTS `wymagania`;
CREATE TABLE `wymagania` (
  `id_wymagania` int(11) NOT NULL,
  `sila` int(11) NOT NULL,
  `zrecznosc` int(11) NOT NULL,
  `wiedza` int(11) NOT NULL,
  `inteligecja` int(11) NOT NULL,
  `id_przedmiot` int(11) NOT NULL,
  `id_czaru` int(11) NOT NULL,
  `id_umiejetnosci` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `atrybuty`
--
ALTER TABLE `atrybuty`
  ADD PRIMARY KEY (`id_atrybut`);

--
-- Indeksy dla tabeli `budynki`
--
ALTER TABLE `budynki`
  ADD PRIMARY KEY (`id_budynki`),
  ADD KEY `miasto` (`miasto`);

--
-- Indeksy dla tabeli `charaktery`
--
ALTER TABLE `charaktery`
  ADD PRIMARY KEY (`id_charaktery`);

--
-- Indeksy dla tabeli `czary`
--
ALTER TABLE `czary`
  ADD PRIMARY KEY (`id_czary`),
  ADD KEY `wymagania` (`wymagania`);

--
-- Indeksy dla tabeli `ekwipunek`
--
ALTER TABLE `ekwipunek`
  ADD PRIMARY KEY (`id_ekwipunek`),
  ADD KEY `akcesorium_drugie` (`akcesorium_drugie`),
  ADD KEY `akcesorium_pierwsze` (`akcesorium_pierwsze`),
  ADD KEY `glowa` (`glowa`),
  ADD KEY `id_gracz` (`id_gracz`),
  ADD KEY `lewa_reka` (`lewa_reka`),
  ADD KEY `prawa_reka` (`prawa_reka`),
  ADD KEY `nogi` (`nogi`),
  ADD KEY `tlow` (`tlow`);

--
-- Indeksy dla tabeli `ksiega_czarow`
--
ALTER TABLE `ksiega_czarow`
  ADD KEY `id_czary` (`id_czary`),
  ADD KEY `id_gracz` (`id_postac`);

--
-- Indeksy dla tabeli `lokacje`
--
ALTER TABLE `lokacje`
  ADD PRIMARY KEY (`id_lokacje`);

--
-- Indeksy dla tabeli `postacie`
--
ALTER TABLE `postacie`
  ADD PRIMARY KEY (`id_postac`),
  ADD KEY `rasa` (`rasa`),
  ADD KEY `id_uzytkownika` (`id_uzytkownika`);

--
-- Indeksy dla tabeli `przedmioty`
--
ALTER TABLE `przedmioty`
  ADD PRIMARY KEY (`id_przedmioty`);

--
-- Indeksy dla tabeli `rasy`
--
ALTER TABLE `rasy`
  ADD PRIMARY KEY (`id_rasy`);

--
-- Indeksy dla tabeli `uzytkownicy`
--
ALTER TABLE `uzytkownicy`
  ADD PRIMARY KEY (`id_uzytkownicy`);

--
-- Indeksy dla tabeli `wymagania`
--
ALTER TABLE `wymagania`
  ADD PRIMARY KEY (`id_wymagania`),
  ADD KEY `id_czaru` (`id_czaru`);

--
-- AUTO_INCREMENT dla tabel zrzutów
--

--
-- AUTO_INCREMENT dla tabeli `atrybuty`
--
ALTER TABLE `atrybuty`
  MODIFY `id_atrybut` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `budynki`
--
ALTER TABLE `budynki`
  MODIFY `id_budynki` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `charaktery`
--
ALTER TABLE `charaktery`
  MODIFY `id_charaktery` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT dla tabeli `czary`
--
ALTER TABLE `czary`
  MODIFY `id_czary` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `ekwipunek`
--
ALTER TABLE `ekwipunek`
  MODIFY `id_ekwipunek` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `lokacje`
--
ALTER TABLE `lokacje`
  MODIFY `id_lokacje` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `postacie`
--
ALTER TABLE `postacie`
  MODIFY `id_postac` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `przedmioty`
--
ALTER TABLE `przedmioty`
  MODIFY `id_przedmioty` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `rasy`
--
ALTER TABLE `rasy`
  MODIFY `id_rasy` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT dla tabeli `uzytkownicy`
--
ALTER TABLE `uzytkownicy`
  MODIFY `id_uzytkownicy` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `wymagania`
--
ALTER TABLE `wymagania`
  MODIFY `id_wymagania` int(11) NOT NULL AUTO_INCREMENT;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `budynki`
--
ALTER TABLE `budynki`
  ADD CONSTRAINT `budynki_ibfk_1` FOREIGN KEY (`miasto`) REFERENCES `lokacje` (`id_lokacje`);

--
-- Ograniczenia dla tabeli `czary`
--
ALTER TABLE `czary`
  ADD CONSTRAINT `czary_ibfk_1` FOREIGN KEY (`wymagania`) REFERENCES `wymagania` (`id_wymagania`);

--
-- Ograniczenia dla tabeli `ekwipunek`
--
ALTER TABLE `ekwipunek`
  ADD CONSTRAINT `ekwipunek_ibfk_1` FOREIGN KEY (`akcesorium_drugie`) REFERENCES `przedmioty` (`id_przedmioty`),
  ADD CONSTRAINT `ekwipunek_ibfk_2` FOREIGN KEY (`akcesorium_pierwsze`) REFERENCES `przedmioty` (`id_przedmioty`),
  ADD CONSTRAINT `ekwipunek_ibfk_3` FOREIGN KEY (`glowa`) REFERENCES `przedmioty` (`id_przedmioty`),
  ADD CONSTRAINT `ekwipunek_ibfk_4` FOREIGN KEY (`id_gracz`) REFERENCES `postacie` (`id_postac`),
  ADD CONSTRAINT `ekwipunek_ibfk_6` FOREIGN KEY (`lewa_reka`) REFERENCES `przedmioty` (`id_przedmioty`),
  ADD CONSTRAINT `ekwipunek_ibfk_7` FOREIGN KEY (`prawa_reka`) REFERENCES `przedmioty` (`id_przedmioty`),
  ADD CONSTRAINT `ekwipunek_ibfk_8` FOREIGN KEY (`nogi`) REFERENCES `przedmioty` (`id_przedmioty`),
  ADD CONSTRAINT `ekwipunek_ibfk_9` FOREIGN KEY (`tlow`) REFERENCES `przedmioty` (`id_przedmioty`);

--
-- Ograniczenia dla tabeli `ksiega_czarow`
--
ALTER TABLE `ksiega_czarow`
  ADD CONSTRAINT `ksiega_czarow_ibfk_1` FOREIGN KEY (`id_czary`) REFERENCES `czary` (`id_czary`),
  ADD CONSTRAINT `ksiega_czarow_ibfk_2` FOREIGN KEY (`id_postac`) REFERENCES `postacie` (`id_postac`);

--
-- Ograniczenia dla tabeli `postacie`
--
ALTER TABLE `postacie`
  ADD CONSTRAINT `postacie_ibfk_1` FOREIGN KEY (`charakter`) REFERENCES `charaktery` (`id_charaktery`),
  ADD CONSTRAINT `postacie_ibfk_2` FOREIGN KEY (`rasa`) REFERENCES `rasy` (`id_rasy`),
  ADD CONSTRAINT `postacie_ibfk_4` FOREIGN KEY (`id_uzytkownika`) REFERENCES `uzytkownicy` (`id_uzytkownicy`);

--
-- Ograniczenia dla tabeli `wymagania`
--
ALTER TABLE `wymagania`
  ADD CONSTRAINT `wymagania_ibfk_2` FOREIGN KEY (`id_czaru`) REFERENCES `czary` (`id_czary`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
