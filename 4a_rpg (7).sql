-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 05 Paź 2021, 14:56
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
-- Struktura tabeli dla tabeli `atrybut`
--

DROP TABLE IF EXISTS `atrybut`;
CREATE TABLE `atrybut` (
  `id_atrybut` int(11) NOT NULL,
  `nazwa` varchar(33) NOT NULL,
  `opis` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `atrybut_bog`
--

DROP TABLE IF EXISTS `atrybut_bog`;
CREATE TABLE `atrybut_bog` (
  `id_att_bog` int(11) NOT NULL,
  `id_atrybut` int(11) NOT NULL,
  `id_bog` int(11) NOT NULL,
  `wartosc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `atrybut_charakter`
--

DROP TABLE IF EXISTS `atrybut_charakter`;
CREATE TABLE `atrybut_charakter` (
  `id_char_at` int(11) NOT NULL,
  `id_atrybut` int(11) NOT NULL,
  `id_charakter` int(11) NOT NULL,
  `wartosc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `atrybut_postac`
--

DROP TABLE IF EXISTS `atrybut_postac`;
CREATE TABLE `atrybut_postac` (
  `id_atrybut_postac` int(11) NOT NULL,
  `id_atrybut` int(11) NOT NULL,
  `id_postac` int(11) NOT NULL,
  `wartosc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `atrybut_przedmiot`
--

DROP TABLE IF EXISTS `atrybut_przedmiot`;
CREATE TABLE `atrybut_przedmiot` (
  `id_at_pt` int(11) NOT NULL,
  `id_przedmiot` int(11) NOT NULL,
  `id_atrybut` int(11) NOT NULL,
  `wartosc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `atrybut_rasa`
--

DROP TABLE IF EXISTS `atrybut_rasa`;
CREATE TABLE `atrybut_rasa` (
  `id_at_rasa` int(11) NOT NULL,
  `id_atrybut` int(11) NOT NULL,
  `id_rasa` int(11) NOT NULL,
  `wartosc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `atrybut_umiejetnosc`
--

DROP TABLE IF EXISTS `atrybut_umiejetnosc`;
CREATE TABLE `atrybut_umiejetnosc` (
  `id_atrybut_um` int(11) NOT NULL,
  `id_atrybut` int(11) NOT NULL,
  `id_umiejetnosc` int(11) NOT NULL,
  `wartosc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `atrybut_wymagania_przedmiot`
--

DROP TABLE IF EXISTS `atrybut_wymagania_przedmiot`;
CREATE TABLE `atrybut_wymagania_przedmiot` (
  `id_at_wym_pt` int(11) NOT NULL,
  `id_przedmiot` int(11) NOT NULL,
  `id_atrybut` int(11) NOT NULL,
  `wartosc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `atuty`
--

DROP TABLE IF EXISTS `atuty`;
CREATE TABLE `atuty` (
  `id_atut` int(11) NOT NULL,
  `nazwa` varchar(33) NOT NULL,
  `efekt` int(11) NOT NULL,
  `opis` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `atut_umiejetnosc`
--

DROP TABLE IF EXISTS `atut_umiejetnosc`;
CREATE TABLE `atut_umiejetnosc` (
  `id_att_um` int(11) NOT NULL,
  `id_atut` int(11) NOT NULL,
  `id_umiejetnosc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `bogowie`
--

DROP TABLE IF EXISTS `bogowie`;
CREATE TABLE `bogowie` (
  `id_bogowie` int(11) NOT NULL,
  `nazwa` varchar(33) NOT NULL,
  `opis` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `budynek`
--

DROP TABLE IF EXISTS `budynek`;
CREATE TABLE `budynek` (
  `id_budynek` int(11) NOT NULL,
  `typ_budynku` varchar(55) NOT NULL,
  `lokacja` int(11) NOT NULL,
  `wlasciciel` int(11) NOT NULL,
  `misato` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `charakter`
--

DROP TABLE IF EXISTS `charakter`;
CREATE TABLE `charakter` (
  `id_charakter` int(11) NOT NULL,
  `charakter` varchar(30) NOT NULL,
  `opis` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `czary`
--

DROP TABLE IF EXISTS `czary`;
CREATE TABLE `czary` (
  `id_czary` int(11) NOT NULL,
  `nazwa` varchar(33) NOT NULL,
  `wymagana_inteligencja` int(11) NOT NULL,
  `koszt` int(11) NOT NULL,
  `efekt` int(11) NOT NULL,
  `wymagany_poziom` int(11) NOT NULL,
  `opis` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `efekty`
--

DROP TABLE IF EXISTS `efekty`;
CREATE TABLE `efekty` (
  `id_efekt` int(11) NOT NULL,
  `nazwa` varchar(55) NOT NULL,
  `opis` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `klasa`
--

DROP TABLE IF EXISTS `klasa`;
CREATE TABLE `klasa` (
  `id_klasa` int(11) NOT NULL,
  `nazwa` varchar(33) NOT NULL,
  `opis` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `klasa_umiejetnosc`
--

DROP TABLE IF EXISTS `klasa_umiejetnosc`;
CREATE TABLE `klasa_umiejetnosc` (
  `id_klasa_um` int(11) NOT NULL,
  `id_umiejetnosc` int(11) NOT NULL,
  `id_klasa` int(11) NOT NULL,
  `poziom_w_klasie` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `kraina`
--

DROP TABLE IF EXISTS `kraina`;
CREATE TABLE `kraina` (
  `id_kraina` int(11) NOT NULL,
  `nazwa` varchar(33) NOT NULL,
  `opis` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ksiega_czarow`
--

DROP TABLE IF EXISTS `ksiega_czarow`;
CREATE TABLE `ksiega_czarow` (
  `id_ksiega` int(11) NOT NULL,
  `id_czary` int(11) NOT NULL,
  `id_postac` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `lokacje`
--

DROP TABLE IF EXISTS `lokacje`;
CREATE TABLE `lokacje` (
  `id_lokacja` int(11) NOT NULL,
  `nazwa` varchar(33) NOT NULL,
  `koordynaty x/y` varchar(33) NOT NULL,
  `kraina` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `miasto`
--

DROP TABLE IF EXISTS `miasto`;
CREATE TABLE `miasto` (
  `id_miasto` int(11) NOT NULL,
  `nazwa` varchar(33) NOT NULL,
  `lokacja` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `postac`
--

DROP TABLE IF EXISTS `postac`;
CREATE TABLE `postac` (
  `id_postac` int(11) NOT NULL,
  `imie/imiona` varchar(55) NOT NULL,
  `rasa` int(11) NOT NULL,
  `plec` enum('mężczyzna','kobieta','niebinarny','') NOT NULL,
  `charakter` int(11) NOT NULL,
  `wiek` int(11) NOT NULL,
  `poziom` int(11) NOT NULL,
  `doswiadczenie` int(11) NOT NULL,
  `klasa` int(11) NOT NULL,
  `max_hp` int(11) NOT NULL,
  `aktualne_hp` int(11) NOT NULL,
  `max_mp` int(11) NOT NULL,
  `aktualne_mp` int(11) NOT NULL,
  `pieniadze` int(11) NOT NULL,
  `przygoda` int(11) NOT NULL,
  `uzytkownik` int(11) NOT NULL,
  `biografia` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `postac_atut`
--

DROP TABLE IF EXISTS `postac_atut`;
CREATE TABLE `postac_atut` (
  `id_pos_atut` int(11) NOT NULL,
  `id_atut` int(11) NOT NULL,
  `id_postac` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `postac_bog`
--

DROP TABLE IF EXISTS `postac_bog`;
CREATE TABLE `postac_bog` (
  `id_postac_bog` int(11) NOT NULL,
  `id_postac` int(11) NOT NULL,
  `id_bog` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `postac_umiejetnosci`
--

DROP TABLE IF EXISTS `postac_umiejetnosci`;
CREATE TABLE `postac_umiejetnosci` (
  `id_postac_um` int(11) NOT NULL,
  `id_postac` int(11) NOT NULL,
  `id_umiejetnosc` int(11) NOT NULL,
  `poziom` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `poziomy`
--

DROP TABLE IF EXISTS `poziomy`;
CREATE TABLE `poziomy` (
  `id_poziomy` int(11) NOT NULL,
  `poziom` int(11) NOT NULL,
  `wymagane_doswiadczenie` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `przedmioty`
--

DROP TABLE IF EXISTS `przedmioty`;
CREATE TABLE `przedmioty` (
  `id_przedmioty` int(11) NOT NULL,
  `typ_przedmiotu` int(11) NOT NULL,
  `wartosc` int(11) NOT NULL,
  `obrazenia` varchar(10) NOT NULL,
  `klasa_pancerza` int(11) NOT NULL,
  `wymagany_poziom` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `przygoda`
--

DROP TABLE IF EXISTS `przygoda`;
CREATE TABLE `przygoda` (
  `id_przygoda` int(11) NOT NULL,
  `nazwa_przygody` varchar(33) NOT NULL,
  `opis` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `rasa`
--

DROP TABLE IF EXISTS `rasa`;
CREATE TABLE `rasa` (
  `id_rasa` int(11) NOT NULL,
  `rasa` varchar(33) NOT NULL,
  `opis` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `torba`
--

DROP TABLE IF EXISTS `torba`;
CREATE TABLE `torba` (
  `id_torba` int(11) NOT NULL,
  `id_postac` int(11) NOT NULL,
  `id_przedmiot` int(11) NOT NULL,
  `wyposażony` enum('1','','','') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `typ_przedmiotu`
--

DROP TABLE IF EXISTS `typ_przedmiotu`;
CREATE TABLE `typ_przedmiotu` (
  `id_typu` int(11) NOT NULL,
  `typ` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `umiejetnosc`
--

DROP TABLE IF EXISTS `umiejetnosc`;
CREATE TABLE `umiejetnosc` (
  `id_umiejetnosc` int(11) NOT NULL,
  `nazwa` varchar(33) NOT NULL,
  `efekt` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uzytkownicy`
--

DROP TABLE IF EXISTS `uzytkownicy`;
CREATE TABLE `uzytkownicy` (
  `id_uzytkownicy` int(11) NOT NULL,
  `nick` varchar(30) NOT NULL,
  `e-mail` varchar(100) NOT NULL,
  `haslo` int(30) NOT NULL,
  `data` date NOT NULL,
  `uprawnienia` enum('game-master','użytkownik','','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `atrybut`
--
ALTER TABLE `atrybut`
  ADD PRIMARY KEY (`id_atrybut`);

--
-- Indeksy dla tabeli `atrybut_bog`
--
ALTER TABLE `atrybut_bog`
  ADD PRIMARY KEY (`id_att_bog`),
  ADD KEY `id_atrybut` (`id_atrybut`),
  ADD KEY `id_bog` (`id_bog`);

--
-- Indeksy dla tabeli `atrybut_charakter`
--
ALTER TABLE `atrybut_charakter`
  ADD PRIMARY KEY (`id_char_at`),
  ADD KEY `id_atrybut` (`id_atrybut`),
  ADD KEY `id_charakter` (`id_charakter`);

--
-- Indeksy dla tabeli `atrybut_postac`
--
ALTER TABLE `atrybut_postac`
  ADD PRIMARY KEY (`id_atrybut_postac`),
  ADD KEY `id_atrybut` (`id_atrybut`),
  ADD KEY `id_postac` (`id_postac`);

--
-- Indeksy dla tabeli `atrybut_przedmiot`
--
ALTER TABLE `atrybut_przedmiot`
  ADD PRIMARY KEY (`id_at_pt`),
  ADD KEY `id_atrybut` (`id_atrybut`),
  ADD KEY `id_przedmiot` (`id_przedmiot`);

--
-- Indeksy dla tabeli `atrybut_rasa`
--
ALTER TABLE `atrybut_rasa`
  ADD PRIMARY KEY (`id_at_rasa`),
  ADD KEY `id_atrybut` (`id_atrybut`),
  ADD KEY `id_rasa` (`id_rasa`);

--
-- Indeksy dla tabeli `atrybut_umiejetnosc`
--
ALTER TABLE `atrybut_umiejetnosc`
  ADD PRIMARY KEY (`id_atrybut_um`),
  ADD KEY `id_atrybut` (`id_atrybut`),
  ADD KEY `id_umiejetnosc` (`id_umiejetnosc`);

--
-- Indeksy dla tabeli `atrybut_wymagania_przedmiot`
--
ALTER TABLE `atrybut_wymagania_przedmiot`
  ADD PRIMARY KEY (`id_at_wym_pt`),
  ADD KEY `id_atrybut` (`id_atrybut`),
  ADD KEY `id_przedmiot` (`id_przedmiot`);

--
-- Indeksy dla tabeli `atuty`
--
ALTER TABLE `atuty`
  ADD PRIMARY KEY (`id_atut`),
  ADD KEY `efekt` (`efekt`);

--
-- Indeksy dla tabeli `atut_umiejetnosc`
--
ALTER TABLE `atut_umiejetnosc`
  ADD PRIMARY KEY (`id_att_um`),
  ADD KEY `id_atut` (`id_atut`),
  ADD KEY `id_umiejetnosc` (`id_umiejetnosc`);

--
-- Indeksy dla tabeli `bogowie`
--
ALTER TABLE `bogowie`
  ADD PRIMARY KEY (`id_bogowie`);

--
-- Indeksy dla tabeli `budynek`
--
ALTER TABLE `budynek`
  ADD PRIMARY KEY (`id_budynek`),
  ADD KEY `lokacja` (`lokacja`),
  ADD KEY `misato` (`misato`),
  ADD KEY `wlasciciel` (`wlasciciel`);

--
-- Indeksy dla tabeli `charakter`
--
ALTER TABLE `charakter`
  ADD PRIMARY KEY (`id_charakter`);

--
-- Indeksy dla tabeli `czary`
--
ALTER TABLE `czary`
  ADD PRIMARY KEY (`id_czary`),
  ADD KEY `efekt` (`efekt`);

--
-- Indeksy dla tabeli `efekty`
--
ALTER TABLE `efekty`
  ADD PRIMARY KEY (`id_efekt`);

--
-- Indeksy dla tabeli `klasa`
--
ALTER TABLE `klasa`
  ADD PRIMARY KEY (`id_klasa`);

--
-- Indeksy dla tabeli `klasa_umiejetnosc`
--
ALTER TABLE `klasa_umiejetnosc`
  ADD PRIMARY KEY (`id_klasa_um`),
  ADD KEY `id_umiejetnosc` (`id_umiejetnosc`),
  ADD KEY `id_klasa` (`id_klasa`);

--
-- Indeksy dla tabeli `kraina`
--
ALTER TABLE `kraina`
  ADD PRIMARY KEY (`id_kraina`);

--
-- Indeksy dla tabeli `ksiega_czarow`
--
ALTER TABLE `ksiega_czarow`
  ADD PRIMARY KEY (`id_ksiega`),
  ADD KEY `id_czary` (`id_czary`),
  ADD KEY `id_postac` (`id_postac`);

--
-- Indeksy dla tabeli `lokacje`
--
ALTER TABLE `lokacje`
  ADD PRIMARY KEY (`id_lokacja`),
  ADD KEY `kraina` (`kraina`);

--
-- Indeksy dla tabeli `miasto`
--
ALTER TABLE `miasto`
  ADD PRIMARY KEY (`id_miasto`),
  ADD KEY `lokacja` (`lokacja`);

--
-- Indeksy dla tabeli `postac`
--
ALTER TABLE `postac`
  ADD PRIMARY KEY (`id_postac`),
  ADD KEY `rasa` (`rasa`),
  ADD KEY `charakter` (`charakter`),
  ADD KEY `poziom` (`poziom`),
  ADD KEY `klasa` (`klasa`),
  ADD KEY `przygoda` (`przygoda`),
  ADD KEY `uzytkownik` (`uzytkownik`);

--
-- Indeksy dla tabeli `postac_atut`
--
ALTER TABLE `postac_atut`
  ADD PRIMARY KEY (`id_pos_atut`),
  ADD KEY `id_atut` (`id_atut`),
  ADD KEY `id_postac` (`id_postac`);

--
-- Indeksy dla tabeli `postac_bog`
--
ALTER TABLE `postac_bog`
  ADD PRIMARY KEY (`id_postac_bog`),
  ADD KEY `id_postac` (`id_postac`),
  ADD KEY `id_bog` (`id_bog`);

--
-- Indeksy dla tabeli `postac_umiejetnosci`
--
ALTER TABLE `postac_umiejetnosci`
  ADD PRIMARY KEY (`id_postac_um`),
  ADD KEY `id_postac` (`id_postac`),
  ADD KEY `id_umiejetnosc` (`id_umiejetnosc`);

--
-- Indeksy dla tabeli `poziomy`
--
ALTER TABLE `poziomy`
  ADD PRIMARY KEY (`id_poziomy`);

--
-- Indeksy dla tabeli `przedmioty`
--
ALTER TABLE `przedmioty`
  ADD PRIMARY KEY (`id_przedmioty`),
  ADD KEY `typ_przedmiotu` (`typ_przedmiotu`);

--
-- Indeksy dla tabeli `przygoda`
--
ALTER TABLE `przygoda`
  ADD PRIMARY KEY (`id_przygoda`);

--
-- Indeksy dla tabeli `rasa`
--
ALTER TABLE `rasa`
  ADD PRIMARY KEY (`id_rasa`);

--
-- Indeksy dla tabeli `torba`
--
ALTER TABLE `torba`
  ADD PRIMARY KEY (`id_torba`),
  ADD KEY `id_postac` (`id_postac`),
  ADD KEY `id_przedmiot` (`id_przedmiot`);

--
-- Indeksy dla tabeli `typ_przedmiotu`
--
ALTER TABLE `typ_przedmiotu`
  ADD PRIMARY KEY (`id_typu`);

--
-- Indeksy dla tabeli `umiejetnosc`
--
ALTER TABLE `umiejetnosc`
  ADD PRIMARY KEY (`id_umiejetnosc`),
  ADD KEY `efekt` (`efekt`);

--
-- Indeksy dla tabeli `uzytkownicy`
--
ALTER TABLE `uzytkownicy`
  ADD PRIMARY KEY (`id_uzytkownicy`);

--
-- AUTO_INCREMENT dla tabel zrzutów
--

--
-- AUTO_INCREMENT dla tabeli `atrybut`
--
ALTER TABLE `atrybut`
  MODIFY `id_atrybut` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `atrybut_bog`
--
ALTER TABLE `atrybut_bog`
  MODIFY `id_att_bog` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `atrybut_charakter`
--
ALTER TABLE `atrybut_charakter`
  MODIFY `id_char_at` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `atrybut_postac`
--
ALTER TABLE `atrybut_postac`
  MODIFY `id_atrybut_postac` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `atrybut_przedmiot`
--
ALTER TABLE `atrybut_przedmiot`
  MODIFY `id_at_pt` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `atrybut_rasa`
--
ALTER TABLE `atrybut_rasa`
  MODIFY `id_at_rasa` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `atrybut_umiejetnosc`
--
ALTER TABLE `atrybut_umiejetnosc`
  MODIFY `id_atrybut_um` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `atrybut_wymagania_przedmiot`
--
ALTER TABLE `atrybut_wymagania_przedmiot`
  MODIFY `id_at_wym_pt` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `atuty`
--
ALTER TABLE `atuty`
  MODIFY `id_atut` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `atut_umiejetnosc`
--
ALTER TABLE `atut_umiejetnosc`
  MODIFY `id_att_um` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `bogowie`
--
ALTER TABLE `bogowie`
  MODIFY `id_bogowie` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `budynek`
--
ALTER TABLE `budynek`
  MODIFY `id_budynek` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `charakter`
--
ALTER TABLE `charakter`
  MODIFY `id_charakter` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `czary`
--
ALTER TABLE `czary`
  MODIFY `id_czary` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `efekty`
--
ALTER TABLE `efekty`
  MODIFY `id_efekt` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `klasa`
--
ALTER TABLE `klasa`
  MODIFY `id_klasa` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `klasa_umiejetnosc`
--
ALTER TABLE `klasa_umiejetnosc`
  MODIFY `id_klasa_um` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `kraina`
--
ALTER TABLE `kraina`
  MODIFY `id_kraina` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `ksiega_czarow`
--
ALTER TABLE `ksiega_czarow`
  MODIFY `id_ksiega` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `lokacje`
--
ALTER TABLE `lokacje`
  MODIFY `id_lokacja` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `miasto`
--
ALTER TABLE `miasto`
  MODIFY `id_miasto` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `postac`
--
ALTER TABLE `postac`
  MODIFY `id_postac` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `postac_atut`
--
ALTER TABLE `postac_atut`
  MODIFY `id_pos_atut` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `postac_bog`
--
ALTER TABLE `postac_bog`
  MODIFY `id_postac_bog` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `postac_umiejetnosci`
--
ALTER TABLE `postac_umiejetnosci`
  MODIFY `id_postac_um` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `poziomy`
--
ALTER TABLE `poziomy`
  MODIFY `id_poziomy` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `przedmioty`
--
ALTER TABLE `przedmioty`
  MODIFY `id_przedmioty` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `przygoda`
--
ALTER TABLE `przygoda`
  MODIFY `id_przygoda` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `rasa`
--
ALTER TABLE `rasa`
  MODIFY `id_rasa` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `torba`
--
ALTER TABLE `torba`
  MODIFY `id_torba` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `typ_przedmiotu`
--
ALTER TABLE `typ_przedmiotu`
  MODIFY `id_typu` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `umiejetnosc`
--
ALTER TABLE `umiejetnosc`
  MODIFY `id_umiejetnosc` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `uzytkownicy`
--
ALTER TABLE `uzytkownicy`
  MODIFY `id_uzytkownicy` int(11) NOT NULL AUTO_INCREMENT;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `atrybut_bog`
--
ALTER TABLE `atrybut_bog`
  ADD CONSTRAINT `atrybut_bog_ibfk_1` FOREIGN KEY (`id_atrybut`) REFERENCES `atrybut` (`id_atrybut`),
  ADD CONSTRAINT `atrybut_bog_ibfk_2` FOREIGN KEY (`id_bog`) REFERENCES `bogowie` (`id_bogowie`);

--
-- Ograniczenia dla tabeli `atrybut_charakter`
--
ALTER TABLE `atrybut_charakter`
  ADD CONSTRAINT `atrybut_charakter_ibfk_1` FOREIGN KEY (`id_atrybut`) REFERENCES `atrybut` (`id_atrybut`),
  ADD CONSTRAINT `atrybut_charakter_ibfk_2` FOREIGN KEY (`id_charakter`) REFERENCES `charakter` (`id_charakter`);

--
-- Ograniczenia dla tabeli `atrybut_postac`
--
ALTER TABLE `atrybut_postac`
  ADD CONSTRAINT `atrybut_postac_ibfk_1` FOREIGN KEY (`id_atrybut`) REFERENCES `atrybut` (`id_atrybut`),
  ADD CONSTRAINT `atrybut_postac_ibfk_2` FOREIGN KEY (`id_postac`) REFERENCES `postac` (`id_postac`);

--
-- Ograniczenia dla tabeli `atrybut_przedmiot`
--
ALTER TABLE `atrybut_przedmiot`
  ADD CONSTRAINT `atrybut_przedmiot_ibfk_1` FOREIGN KEY (`id_atrybut`) REFERENCES `atrybut` (`id_atrybut`),
  ADD CONSTRAINT `atrybut_przedmiot_ibfk_2` FOREIGN KEY (`id_przedmiot`) REFERENCES `przedmioty` (`id_przedmioty`);

--
-- Ograniczenia dla tabeli `atrybut_rasa`
--
ALTER TABLE `atrybut_rasa`
  ADD CONSTRAINT `atrybut_rasa_ibfk_1` FOREIGN KEY (`id_atrybut`) REFERENCES `atrybut` (`id_atrybut`),
  ADD CONSTRAINT `atrybut_rasa_ibfk_2` FOREIGN KEY (`id_rasa`) REFERENCES `rasa` (`id_rasa`);

--
-- Ograniczenia dla tabeli `atrybut_umiejetnosc`
--
ALTER TABLE `atrybut_umiejetnosc`
  ADD CONSTRAINT `atrybut_umiejetnosc_ibfk_1` FOREIGN KEY (`id_atrybut`) REFERENCES `atrybut` (`id_atrybut`),
  ADD CONSTRAINT `atrybut_umiejetnosc_ibfk_2` FOREIGN KEY (`id_umiejetnosc`) REFERENCES `umiejetnosc` (`id_umiejetnosc`);

--
-- Ograniczenia dla tabeli `atrybut_wymagania_przedmiot`
--
ALTER TABLE `atrybut_wymagania_przedmiot`
  ADD CONSTRAINT `atrybut_wymagania_przedmiot_ibfk_1` FOREIGN KEY (`id_atrybut`) REFERENCES `atrybut` (`id_atrybut`),
  ADD CONSTRAINT `atrybut_wymagania_przedmiot_ibfk_2` FOREIGN KEY (`id_przedmiot`) REFERENCES `przedmioty` (`id_przedmioty`);

--
-- Ograniczenia dla tabeli `atuty`
--
ALTER TABLE `atuty`
  ADD CONSTRAINT `atuty_ibfk_1` FOREIGN KEY (`efekt`) REFERENCES `efekty` (`id_efekt`);

--
-- Ograniczenia dla tabeli `atut_umiejetnosc`
--
ALTER TABLE `atut_umiejetnosc`
  ADD CONSTRAINT `atut_umiejetnosc_ibfk_1` FOREIGN KEY (`id_atut`) REFERENCES `atuty` (`id_atut`),
  ADD CONSTRAINT `atut_umiejetnosc_ibfk_2` FOREIGN KEY (`id_umiejetnosc`) REFERENCES `umiejetnosc` (`id_umiejetnosc`);

--
-- Ograniczenia dla tabeli `budynek`
--
ALTER TABLE `budynek`
  ADD CONSTRAINT `budynek_ibfk_1` FOREIGN KEY (`lokacja`) REFERENCES `lokacje` (`id_lokacja`),
  ADD CONSTRAINT `budynek_ibfk_2` FOREIGN KEY (`misato`) REFERENCES `miasto` (`id_miasto`),
  ADD CONSTRAINT `budynek_ibfk_3` FOREIGN KEY (`wlasciciel`) REFERENCES `postac` (`id_postac`);

--
-- Ograniczenia dla tabeli `czary`
--
ALTER TABLE `czary`
  ADD CONSTRAINT `czary_ibfk_1` FOREIGN KEY (`efekt`) REFERENCES `efekty` (`id_efekt`);

--
-- Ograniczenia dla tabeli `klasa_umiejetnosc`
--
ALTER TABLE `klasa_umiejetnosc`
  ADD CONSTRAINT `klasa_umiejetnosc_ibfk_1` FOREIGN KEY (`id_umiejetnosc`) REFERENCES `umiejetnosc` (`id_umiejetnosc`),
  ADD CONSTRAINT `klasa_umiejetnosc_ibfk_2` FOREIGN KEY (`id_klasa`) REFERENCES `klasa` (`id_klasa`);

--
-- Ograniczenia dla tabeli `ksiega_czarow`
--
ALTER TABLE `ksiega_czarow`
  ADD CONSTRAINT `ksiega_czarow_ibfk_1` FOREIGN KEY (`id_czary`) REFERENCES `czary` (`id_czary`),
  ADD CONSTRAINT `ksiega_czarow_ibfk_2` FOREIGN KEY (`id_postac`) REFERENCES `postac` (`id_postac`);

--
-- Ograniczenia dla tabeli `lokacje`
--
ALTER TABLE `lokacje`
  ADD CONSTRAINT `lokacje_ibfk_1` FOREIGN KEY (`kraina`) REFERENCES `kraina` (`id_kraina`);

--
-- Ograniczenia dla tabeli `miasto`
--
ALTER TABLE `miasto`
  ADD CONSTRAINT `miasto_ibfk_1` FOREIGN KEY (`lokacja`) REFERENCES `lokacje` (`id_lokacja`);

--
-- Ograniczenia dla tabeli `postac`
--
ALTER TABLE `postac`
  ADD CONSTRAINT `postac_ibfk_1` FOREIGN KEY (`rasa`) REFERENCES `rasa` (`id_rasa`),
  ADD CONSTRAINT `postac_ibfk_2` FOREIGN KEY (`charakter`) REFERENCES `charakter` (`id_charakter`),
  ADD CONSTRAINT `postac_ibfk_3` FOREIGN KEY (`poziom`) REFERENCES `poziomy` (`id_poziomy`),
  ADD CONSTRAINT `postac_ibfk_4` FOREIGN KEY (`klasa`) REFERENCES `klasa` (`id_klasa`),
  ADD CONSTRAINT `postac_ibfk_5` FOREIGN KEY (`przygoda`) REFERENCES `przygoda` (`id_przygoda`),
  ADD CONSTRAINT `postac_ibfk_6` FOREIGN KEY (`uzytkownik`) REFERENCES `uzytkownicy` (`id_uzytkownicy`);

--
-- Ograniczenia dla tabeli `postac_atut`
--
ALTER TABLE `postac_atut`
  ADD CONSTRAINT `postac_atut_ibfk_1` FOREIGN KEY (`id_atut`) REFERENCES `atuty` (`id_atut`),
  ADD CONSTRAINT `postac_atut_ibfk_2` FOREIGN KEY (`id_postac`) REFERENCES `postac` (`id_postac`);

--
-- Ograniczenia dla tabeli `postac_bog`
--
ALTER TABLE `postac_bog`
  ADD CONSTRAINT `postac_bog_ibfk_1` FOREIGN KEY (`id_postac`) REFERENCES `postac` (`id_postac`),
  ADD CONSTRAINT `postac_bog_ibfk_2` FOREIGN KEY (`id_bog`) REFERENCES `bogowie` (`id_bogowie`);

--
-- Ograniczenia dla tabeli `postac_umiejetnosci`
--
ALTER TABLE `postac_umiejetnosci`
  ADD CONSTRAINT `postac_umiejetnosci_ibfk_1` FOREIGN KEY (`id_postac`) REFERENCES `postac` (`id_postac`),
  ADD CONSTRAINT `postac_umiejetnosci_ibfk_2` FOREIGN KEY (`id_umiejetnosc`) REFERENCES `umiejetnosc` (`id_umiejetnosc`);

--
-- Ograniczenia dla tabeli `przedmioty`
--
ALTER TABLE `przedmioty`
  ADD CONSTRAINT `przedmioty_ibfk_1` FOREIGN KEY (`typ_przedmiotu`) REFERENCES `typ_przedmiotu` (`id_typu`);

--
-- Ograniczenia dla tabeli `torba`
--
ALTER TABLE `torba`
  ADD CONSTRAINT `torba_ibfk_1` FOREIGN KEY (`id_postac`) REFERENCES `postac` (`id_postac`),
  ADD CONSTRAINT `torba_ibfk_2` FOREIGN KEY (`id_przedmiot`) REFERENCES `przedmioty` (`id_przedmioty`);

--
-- Ograniczenia dla tabeli `umiejetnosc`
--
ALTER TABLE `umiejetnosc`
  ADD CONSTRAINT `umiejetnosc_ibfk_1` FOREIGN KEY (`efekt`) REFERENCES `efekty` (`id_efekt`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
