-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 08 Wrz 2021, 11:24
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
  `id_atrybuty` int(11) NOT NULL,
  `id_gracz` int(11) DEFAULT NULL,
  `id_npc` int(11) DEFAULT NULL,
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
-- Struktura tabeli dla tabeli `bóstwa`
--

DROP TABLE IF EXISTS `bóstwa`;
CREATE TABLE `bóstwa` (
  `id_bostwa` int(11) NOT NULL,
  `nazwa` varchar(55) DEFAULT NULL,
  `dary` varchar(55) DEFAULT NULL,
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
-- Struktura tabeli dla tabeli `czary_npc`
--

DROP TABLE IF EXISTS `czary_npc`;
CREATE TABLE `czary_npc` (
  `id_npc` int(11) NOT NULL,
  `id_czary` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
-- Struktura tabeli dla tabeli `gracze`
--

DROP TABLE IF EXISTS `gracze`;
CREATE TABLE `gracze` (
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
-- Struktura tabeli dla tabeli `lokacje_budynki`
--

DROP TABLE IF EXISTS `lokacje_budynki`;
CREATE TABLE `lokacje_budynki` (
  `id_lokacja` int(11) NOT NULL,
  `id_budynki` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `lokacje_wrogowie`
--

DROP TABLE IF EXISTS `lokacje_wrogowie`;
CREATE TABLE `lokacje_wrogowie` (
  `id_lokacja` int(11) NOT NULL,
  `id_wrogowie` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `npc`
--

DROP TABLE IF EXISTS `npc`;
CREATE TABLE `npc` (
  `id_dane_npc` int(11) NOT NULL,
  `imie/imiona` varchar(55) DEFAULT NULL,
  `rasa` int(11) DEFAULT NULL,
  `plec` char(1) DEFAULT NULL,
  `wyznawane_bostwo` int(11) DEFAULT NULL,
  `charakter` int(11) DEFAULT NULL,
  `nastawienie_do_innych_postaci` int(11) DEFAULT NULL,
  `rola_w_grze` int(11) DEFAULT NULL,
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
  `rasa` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `regiony (geograficzne)`
--

DROP TABLE IF EXISTS `regiony (geograficzne)`;
CREATE TABLE `regiony (geograficzne)` (
  `id_regiony` int(11) NOT NULL,
  `nazwa_region` varchar(55) DEFAULT NULL,
  `przewazajaca_rasa` int(11) DEFAULT NULL,
  `znienawidzona_rasa` int(11) DEFAULT NULL,
  `wladca` int(11) DEFAULT NULL
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
-- Struktura tabeli dla tabeli `umiejetnosci_efekty`
--

DROP TABLE IF EXISTS `umiejetnosci_efekty`;
CREATE TABLE `umiejetnosci_efekty` (
  `id_umiejetnosci` int(11) NOT NULL,
  `id_efekty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
-- Struktura tabeli dla tabeli `umiejetnosci_npc`
--

DROP TABLE IF EXISTS `umiejetnosci_npc`;
CREATE TABLE `umiejetnosci_npc` (
  `id_npc` int(11) NOT NULL,
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
  `opis` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uzytkownicy`
--

DROP TABLE IF EXISTS `uzytkownicy`;
CREATE TABLE `uzytkownicy` (
  `id_uzytkownicy` int(11) NOT NULL,
  `imie` varchar(55) DEFAULT NULL,
  `nazwisko` varchar(55) DEFAULT NULL,
  `e-mail` varchar(55) DEFAULT NULL,
  `haslo` varchar(55) DEFAULT NULL,
  `nazwa_gracza` varchar(55) DEFAULT NULL,
  `data_przystapienia` date DEFAULT NULL,
  `uprawnienia` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `atrybuty`
--
ALTER TABLE `atrybuty`
  ADD PRIMARY KEY (`id_atrybuty`);

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
-- Indeksy dla tabeli `efekty`
--
ALTER TABLE `efekty`
  ADD PRIMARY KEY (`id_efekty`);

--
-- Indeksy dla tabeli `ekwipunek`
--
ALTER TABLE `ekwipunek`
  ADD PRIMARY KEY (`id_ekwipunek`);

--
-- Indeksy dla tabeli `gracze`
--
ALTER TABLE `gracze`
  ADD PRIMARY KEY (`id_dane_graczy`);

--
-- Indeksy dla tabeli `lokacje`
--
ALTER TABLE `lokacje`
  ADD PRIMARY KEY (`id_lokacje`);

--
-- Indeksy dla tabeli `npc`
--
ALTER TABLE `npc`
  ADD PRIMARY KEY (`id_dane_npc`);

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
-- Indeksy dla tabeli `uzytkownicy`
--
ALTER TABLE `uzytkownicy`
  ADD PRIMARY KEY (`id_uzytkownicy`);

--
-- AUTO_INCREMENT dla tabel zrzutów
--

--
-- AUTO_INCREMENT dla tabeli `atrybuty`
--
ALTER TABLE `atrybuty`
  MODIFY `id_atrybuty` int(11) NOT NULL AUTO_INCREMENT;

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
-- AUTO_INCREMENT dla tabeli `efekty`
--
ALTER TABLE `efekty`
  MODIFY `id_efekty` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `ekwipunek`
--
ALTER TABLE `ekwipunek`
  MODIFY `id_ekwipunek` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `gracze`
--
ALTER TABLE `gracze`
  MODIFY `id_dane_graczy` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `lokacje`
--
ALTER TABLE `lokacje`
  MODIFY `id_lokacje` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `npc`
--
ALTER TABLE `npc`
  MODIFY `id_dane_npc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

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
-- AUTO_INCREMENT dla tabeli `uzytkownicy`
--
ALTER TABLE `uzytkownicy`
  MODIFY `id_uzytkownicy` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
