-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 07 Wrz 2021, 15:06
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
-- Struktura tabeli dla tabeli `budynki`
--

DROP TABLE IF EXISTS `budynki`;
CREATE TABLE `budynki` (
  `id_budynki` int(11) NOT NULL,
  `rodzaj_budynku` varchar(50) DEFAULT NULL,
  `typ_budynku` varchar(50) DEFAULT NULL,
  `lokalizacja` varchar(50) DEFAULT NULL,
  `miasto` int(11) DEFAULT NULL,
  `wlasciciel` int(11) DEFAULT NULL,
  `opis` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `bóstwa`
--

DROP TABLE IF EXISTS `bóstwa`;
CREATE TABLE `bóstwa` (
  `id_bostwa` int(11) NOT NULL,
  `nazwa` varchar(55) DEFAULT NULL,
  `dary` varchar(55) DEFAULT NULL,
  `przeklenstwa` varchar(55) DEFAULT NULL,
  `charakter` int(11) DEFAULT NULL,
  `opis` varchar(55) DEFAULT NULL
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
  `wymaga` varchar(55) DEFAULT NULL,
  `koszt` varchar(55) DEFAULT NULL,
  `efekt` varchar(55) DEFAULT NULL,
  `opis` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `czary_gracza`
--

DROP TABLE IF EXISTS `czary_gracza`;
CREATE TABLE `czary_gracza` (
  `id_czary` int(11) NOT NULL,
  `id_gracz` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `dane postaci w grze (gracze)`
--

DROP TABLE IF EXISTS `dane postaci w grze (gracze)`;
CREATE TABLE `dane postaci w grze (gracze)` (
  `id_dane_graczy` int(11) NOT NULL,
  `imie/imiona` varchar(55) DEFAULT NULL,
  `rasa` int(11) DEFAULT NULL,
  `plec` char(1) DEFAULT NULL,
  `wyznawane_bostwo` int(11) DEFAULT NULL,
  `charakter` int(11) DEFAULT NULL,
  `wiek` int(4) DEFAULT NULL,
  `biografia` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `dane postaci w grze(niezależni)`
--

DROP TABLE IF EXISTS `dane postaci w grze(niezależni)`;
CREATE TABLE `dane postaci w grze(niezależni)` (
  `id_dane_npc` int(11) NOT NULL,
  `imie/imiona` varchar(55) DEFAULT NULL,
  `unikatowa_zdolnosc` varchar(55) DEFAULT NULL,
  `sila` tinyint(4) DEFAULT NULL,
  `zrecznosc` tinyint(4) DEFAULT NULL,
  `wiedza` tinyint(4) DEFAULT NULL,
  `inteligencja` tinyint(4) DEFAULT NULL,
  `sila_zycia` int(11) DEFAULT NULL,
  `poziom_many` int(11) DEFAULT NULL,
  `rasa` int(11) DEFAULT NULL,
  `plec` char(1) DEFAULT NULL,
  `wyznawane_bostwo` int(11) DEFAULT NULL,
  `charakter` int(11) DEFAULT NULL,
  `nastawienie_do_innych_postaci` int(11) DEFAULT NULL,
  `rola_w_grze` varchar(55) DEFAULT NULL,
  `punkty_doswiadczenia` int(11) DEFAULT NULL,
  `poziom` tinyint(4) DEFAULT NULL,
  `biografia` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `efekty`
--

DROP TABLE IF EXISTS `efekty`;
CREATE TABLE `efekty` (
  `id_efekty` int(11) NOT NULL,
  `nazwa` varchar(55) DEFAULT NULL,
  `dzialanie_pozytywne` varchar(100) DEFAULT NULL,
  `dzialanie_negatywne` varchar(100) DEFAULT NULL,
  `bostwo_zsylajace` int(11) DEFAULT NULL,
  `opis` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ekwipunek_gracz`
--

DROP TABLE IF EXISTS `ekwipunek_gracz`;
CREATE TABLE `ekwipunek_gracz` (
  `id_ekwipunek` int(11) NOT NULL,
  `id_gracz` int(11) NOT NULL,
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
-- Struktura tabeli dla tabeli `gracze`
--

DROP TABLE IF EXISTS `gracze`;
CREATE TABLE `gracze` (
  `id_gracze` int(11) NOT NULL,
  `imie` varchar(55) DEFAULT NULL,
  `nazwisko` varchar(55) DEFAULT NULL,
  `e-mail` varchar(55) DEFAULT NULL,
  `haslo` varchar(55) DEFAULT NULL,
  `nazwa_gracza` varchar(55) DEFAULT NULL,
  `data_przystapienia` date DEFAULT NULL,
  `uprawnienia` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `gracz_statystyki`
--

DROP TABLE IF EXISTS `gracz_statystyki`;
CREATE TABLE `gracz_statystyki` (
  `id_statystyki` int(11) NOT NULL,
  `id_gracz` int(11) NOT NULL,
  `sila` int(11) NOT NULL,
  `zrecznosc` int(11) NOT NULL,
  `wiedza` int(11) NOT NULL,
  `inteligecja` int(11) NOT NULL,
  `punkty_zycia` int(11) DEFAULT NULL,
  `punkty_many` int(11) DEFAULT NULL,
  `punkty_doswiadczenia` int(11) DEFAULT NULL,
  `poziom` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `miejscowości`
--

DROP TABLE IF EXISTS `miejscowości`;
CREATE TABLE `miejscowości` (
  `id_miejscowosci` int(11) NOT NULL,
  `nazwa_miasta` varchar(55) DEFAULT NULL,
  `liczba_domow` int(11) DEFAULT NULL,
  `liczba_ludnosci` int(11) DEFAULT NULL,
  `region` int(11) DEFAULT NULL,
  `wladca` int(11) DEFAULT NULL,
  `dominujaca_rasa` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `przedmioty`
--

DROP TABLE IF EXISTS `przedmioty`;
CREATE TABLE `przedmioty` (
  `id_przedmioty` int(11) NOT NULL,
  `nazwa` varchar(100) DEFAULT NULL,
  `efekt_bazowy` varchar(55) DEFAULT NULL,
  `umiejscowienie` varchar(55) DEFAULT NULL,
  `opis` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `rasy`
--

DROP TABLE IF EXISTS `rasy`;
CREATE TABLE `rasy` (
  `id_rasy` int(11) NOT NULL,
  `rasa` varchar(55) DEFAULT NULL,
  `pdrasa` varchar(55) DEFAULT NULL,
  `typ` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `regiony (geograficzne)`
--

DROP TABLE IF EXISTS `regiony (geograficzne)`;
CREATE TABLE `regiony (geograficzne)` (
  `id_regiony` int(11) NOT NULL,
  `nazwa_region` varchar(55) DEFAULT NULL,
  `klimat` varchar(55) DEFAULT NULL,
  `przewazajaca_rasa` int(11) DEFAULT NULL,
  `pozostala_rasa` int(11) DEFAULT NULL,
  `znienawidzona_rasa` int(11) DEFAULT NULL,
  `wystepujacy_wrogowie` varchar(100) DEFAULT NULL,
  `wladca` int(11) DEFAULT NULL,
  `dostepne_szkoly` varchar(55) DEFAULT NULL,
  `dominujacy_kult` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `role postaci`
--

DROP TABLE IF EXISTS `role postaci`;
CREATE TABLE `role postaci` (
  `id_role_postaci` int(11) NOT NULL,
  `rola` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `umiejetnosci_gracza`
--

DROP TABLE IF EXISTS `umiejetnosci_gracza`;
CREATE TABLE `umiejetnosci_gracza` (
  `id_gracza` int(11) NOT NULL,
  `id_umiejetnosci` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `umiejętności`
--

DROP TABLE IF EXISTS `umiejętności`;
CREATE TABLE `umiejętności` (
  `id_umiejetnosci` int(11) NOT NULL,
  `nazwa` varchar(55) DEFAULT NULL,
  `wymagania_umiejatnosci` varchar(55) DEFAULT NULL,
  `umiejentowsci_negujace` varchar(55) DEFAULT NULL,
  `pozytywne_efekty` varchar(100) DEFAULT NULL,
  `negatywne_efekty` varchar(100) DEFAULT NULL,
  `ograniczenie_rasowe` varchar(100) DEFAULT NULL,
  `opis` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `budynki`
--
ALTER TABLE `budynki`
  ADD PRIMARY KEY (`id_budynki`);

--
-- Indeksy dla tabeli `bóstwa`
--
ALTER TABLE `bóstwa`
  ADD PRIMARY KEY (`id_bostwa`);

--
-- Indeksy dla tabeli `charaktery`
--
ALTER TABLE `charaktery`
  ADD PRIMARY KEY (`id_charaktery`);

--
-- Indeksy dla tabeli `czary`
--
ALTER TABLE `czary`
  ADD PRIMARY KEY (`id_czary`);

--
-- Indeksy dla tabeli `dane postaci w grze (gracze)`
--
ALTER TABLE `dane postaci w grze (gracze)`
  ADD PRIMARY KEY (`id_dane_graczy`);

--
-- Indeksy dla tabeli `dane postaci w grze(niezależni)`
--
ALTER TABLE `dane postaci w grze(niezależni)`
  ADD PRIMARY KEY (`id_dane_npc`);

--
-- Indeksy dla tabeli `efekty`
--
ALTER TABLE `efekty`
  ADD PRIMARY KEY (`id_efekty`);

--
-- Indeksy dla tabeli `ekwipunek_gracz`
--
ALTER TABLE `ekwipunek_gracz`
  ADD PRIMARY KEY (`id_ekwipunek`);

--
-- Indeksy dla tabeli `gracze`
--
ALTER TABLE `gracze`
  ADD PRIMARY KEY (`id_gracze`);

--
-- Indeksy dla tabeli `miejscowości`
--
ALTER TABLE `miejscowości`
  ADD PRIMARY KEY (`id_miejscowosci`);

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
-- Indeksy dla tabeli `regiony (geograficzne)`
--
ALTER TABLE `regiony (geograficzne)`
  ADD PRIMARY KEY (`id_regiony`);

--
-- Indeksy dla tabeli `role postaci`
--
ALTER TABLE `role postaci`
  ADD PRIMARY KEY (`id_role_postaci`);

--
-- Indeksy dla tabeli `umiejętności`
--
ALTER TABLE `umiejętności`
  ADD PRIMARY KEY (`id_umiejetnosci`);

--
-- AUTO_INCREMENT dla tabel zrzutów
--

--
-- AUTO_INCREMENT dla tabeli `budynki`
--
ALTER TABLE `budynki`
  MODIFY `id_budynki` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `bóstwa`
--
ALTER TABLE `bóstwa`
  MODIFY `id_bostwa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

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
-- AUTO_INCREMENT dla tabeli `dane postaci w grze (gracze)`
--
ALTER TABLE `dane postaci w grze (gracze)`
  MODIFY `id_dane_graczy` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `dane postaci w grze(niezależni)`
--
ALTER TABLE `dane postaci w grze(niezależni)`
  MODIFY `id_dane_npc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT dla tabeli `efekty`
--
ALTER TABLE `efekty`
  MODIFY `id_efekty` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `ekwipunek_gracz`
--
ALTER TABLE `ekwipunek_gracz`
  MODIFY `id_ekwipunek` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `gracze`
--
ALTER TABLE `gracze`
  MODIFY `id_gracze` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `miejscowości`
--
ALTER TABLE `miejscowości`
  MODIFY `id_miejscowosci` int(11) NOT NULL AUTO_INCREMENT;

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
-- AUTO_INCREMENT dla tabeli `regiony (geograficzne)`
--
ALTER TABLE `regiony (geograficzne)`
  MODIFY `id_regiony` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT dla tabeli `role postaci`
--
ALTER TABLE `role postaci`
  MODIFY `id_role_postaci` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT dla tabeli `umiejętności`
--
ALTER TABLE `umiejętności`
  MODIFY `id_umiejetnosci` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `budynki`
--
ALTER TABLE `budynki`
  ADD CONSTRAINT `budynki_ibfk_1` FOREIGN KEY (`miasto`) REFERENCES `regiony (geograficzne)` (`id_regiony`),
  ADD CONSTRAINT `budynki_ibfk_2` FOREIGN KEY (`wlasciciel`) REFERENCES `dane postaci w grze(niezależni)` (`id_dane_npc`);

--
-- Ograniczenia dla tabeli `dane postaci w grze (gracze)`
--
ALTER TABLE `dane postaci w grze (gracze)`
  ADD CONSTRAINT `dane postaci w grze (gracze)_ibfk_1` FOREIGN KEY (`rasa`) REFERENCES `rasy` (`id_rasy`),
  ADD CONSTRAINT `dane postaci w grze (gracze)_ibfk_2` FOREIGN KEY (`charakter`) REFERENCES `charaktery` (`id_charaktery`),
  ADD CONSTRAINT `dane postaci w grze (gracze)_ibfk_3` FOREIGN KEY (`wyznawane_bostwo`) REFERENCES `bóstwa` (`id_bostwa`);

--
-- Ograniczenia dla tabeli `dane postaci w grze(niezależni)`
--
ALTER TABLE `dane postaci w grze(niezależni)`
  ADD CONSTRAINT `dane postaci w grze(niezależni)_ibfk_1` FOREIGN KEY (`rasa`) REFERENCES `rasy` (`id_rasy`),
  ADD CONSTRAINT `dane postaci w grze(niezależni)_ibfk_2` FOREIGN KEY (`charakter`) REFERENCES `charaktery` (`id_charaktery`),
  ADD CONSTRAINT `dane postaci w grze(niezależni)_ibfk_3` FOREIGN KEY (`wyznawane_bostwo`) REFERENCES `bóstwa` (`id_bostwa`),
  ADD CONSTRAINT `dane postaci w grze(niezależni)_ibfk_4` FOREIGN KEY (`nastawienie_do_innych_postaci`) REFERENCES `charaktery` (`id_charaktery`);

--
-- Ograniczenia dla tabeli `efekty`
--
ALTER TABLE `efekty`
  ADD CONSTRAINT `efekty_ibfk_1` FOREIGN KEY (`bostwo_zsylajace`) REFERENCES `bóstwa` (`id_bostwa`);

--
-- Ograniczenia dla tabeli `miejscowości`
--
ALTER TABLE `miejscowości`
  ADD CONSTRAINT `miejscowości_ibfk_1` FOREIGN KEY (`region`) REFERENCES `regiony (geograficzne)` (`id_regiony`),
  ADD CONSTRAINT `miejscowości_ibfk_2` FOREIGN KEY (`wladca`) REFERENCES `dane postaci w grze(niezależni)` (`id_dane_npc`),
  ADD CONSTRAINT `miejscowości_ibfk_3` FOREIGN KEY (`dominujaca_rasa`) REFERENCES `rasy` (`id_rasy`);

--
-- Ograniczenia dla tabeli `regiony (geograficzne)`
--
ALTER TABLE `regiony (geograficzne)`
  ADD CONSTRAINT `regiony (geograficzne)_ibfk_1` FOREIGN KEY (`dominujacy_kult`) REFERENCES `bóstwa` (`id_bostwa`),
  ADD CONSTRAINT `regiony (geograficzne)_ibfk_2` FOREIGN KEY (`znienawidzona_rasa`) REFERENCES `rasy` (`id_rasy`),
  ADD CONSTRAINT `regiony (geograficzne)_ibfk_3` FOREIGN KEY (`przewazajaca_rasa`) REFERENCES `rasy` (`id_rasy`),
  ADD CONSTRAINT `regiony (geograficzne)_ibfk_4` FOREIGN KEY (`pozostala_rasa`) REFERENCES `rasy` (`id_rasy`),
  ADD CONSTRAINT `regiony (geograficzne)_ibfk_5` FOREIGN KEY (`wladca`) REFERENCES `dane postaci w grze(niezależni)` (`id_dane_npc`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
