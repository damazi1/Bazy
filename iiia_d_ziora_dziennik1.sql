-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 17 Mar 2021, 14:37
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
-- Baza danych: `iiia_d_ziora_dziennik`
--
CREATE DATABASE IF NOT EXISTS `iiia_d_ziora_dziennik` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `iiia_d_ziora_dziennik`;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `adres_zamieszkania`
--

DROP TABLE IF EXISTS `adres_zamieszkania`;
CREATE TABLE `adres_zamieszkania` (
  `id_adres_zamieszkania` int(11) NOT NULL,
  `ulica` varchar(50) NOT NULL,
  `miasto` varchar(50) NOT NULL,
  `kod_pocztowy` char(6) NOT NULL,
  `wojewodztwo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `adres_zamieszkania`
--

INSERT INTO `adres_zamieszkania` (`id_adres_zamieszkania`, `ulica`, `miasto`, `kod_pocztowy`, `wojewodztwo`) VALUES
(1, 'ulica 1', 'miasto 1', '42-800', 'województwo 1'),
(2, 'ulica 2', 'miasto 2', '69-420', 'województwo 2'),
(3, 'ulica 3', 'miasto 3', '70-333', 'województwo 3'),
(4, 'ulica 4', 'miasto 4', '55-555', 'województwo 4'),
(5, 'ulica 5', 'miasto 5', '33-333', 'województwo 5'),
(6, 'ulica 6', 'miasto 6', '33-333', 'województwo 6'),
(7, 'ulica 7', 'miasto 7', '33-333', 'województwo 7'),
(8, 'ulica 8', 'miasto 8', '33-333', 'województwo 8'),
(9, 'ulica 9', 'miasto 9', '33-333', 'województwo 9'),
(10, 'ulica 10', 'miasto 10', '33-333', 'województwo 10'),
(11, 'ulica 11', 'miasto 11', '33-333', 'województwo 11'),
(12, 'ulica 12', 'miasto 12', '33-333', 'województwo 12'),
(13, 'ulica 13', 'miasto 13', '33-333', 'województwo 13'),
(14, 'ulica 14', 'miasto 14', '33-333', 'województwo 14'),
(15, 'ulica 15', 'miasto 15', '33-333', 'województwo 15');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `klasa`
--

DROP TABLE IF EXISTS `klasa`;
CREATE TABLE `klasa` (
  `id_klasa` int(11) NOT NULL,
  `litera` char(3) NOT NULL,
  `rocznik` year(4) NOT NULL,
  `id_nauczyciel_wychowawca` int(11) DEFAULT NULL,
  `id_uczen_przewodniczacy` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `klasa`
--

INSERT INTO `klasa` (`id_klasa`, `litera`, `rocznik`, `id_nauczyciel_wychowawca`, `id_uczen_przewodniczacy`) VALUES
(1, 'A', 2003, 4, 18),
(2, 'B', 2001, 2, 20),
(3, 'C', 2002, 5, 1),
(4, 'D', 2002, 1, 8),
(5, 'E', 2003, 3, 9);

-- --------------------------------------------------------

--
-- Zastąpiona struktura widoku `klasa_info`
-- (Zobacz poniżej rzeczywisty widok)
--
DROP VIEW IF EXISTS `klasa_info`;
CREATE TABLE `klasa_info` (
`id_klasa` int(11)
,`litera` char(3)
,`rocznik` year(4)
,`nazwisko nauczyciela` varchar(50)
,`nazwisko ucznia` varchar(50)
);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `legitymacja`
--

DROP TABLE IF EXISTS `legitymacja`;
CREATE TABLE `legitymacja` (
  `id_legitymacja` int(11) NOT NULL,
  `numer` int(11) NOT NULL,
  `data_wydania` date NOT NULL,
  `data_waznosci` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `legitymacja`
--

INSERT INTO `legitymacja` (`id_legitymacja`, `numer`, `data_wydania`, `data_waznosci`) VALUES
(1, 1, '2021-03-01', '2022-03-08'),
(2, 2, '2021-03-16', '2023-03-23'),
(3, 3, '2021-03-17', '2024-03-08'),
(4, 4, '2021-03-16', '2022-04-08'),
(5, 5, '2021-03-16', '2022-05-08'),
(6, 6, '2021-03-16', '2025-03-08'),
(7, 7, '2021-03-16', '2022-03-11'),
(8, 8, '2021-03-16', '2021-12-08'),
(9, 9, '2021-03-16', '2022-03-31'),
(10, 10, '2021-03-16', '2022-03-07'),
(11, 11, '2021-03-01', '2022-03-27'),
(12, 12, '2021-03-01', '2022-03-27'),
(13, 13, '2021-03-01', '2022-03-27'),
(14, 14, '2021-03-01', '2022-03-27'),
(15, 15, '2021-03-01', '2022-03-27'),
(16, 16, '2021-03-01', '2022-03-27'),
(17, 17, '2021-03-01', '2022-03-27'),
(18, 18, '2021-03-01', '2022-03-27'),
(19, 19, '2021-03-01', '2022-03-27'),
(20, 20, '2021-03-01', '2022-03-27'),
(21, 21, '2021-03-01', '2022-03-27'),
(22, 22, '2021-03-01', '2022-03-27'),
(23, 23, '2021-03-01', '2022-03-27'),
(24, 24, '2021-03-01', '2022-03-27'),
(25, 25, '2021-03-01', '2022-03-27'),
(26, 26, '2021-03-01', '2022-03-27'),
(27, 27, '2021-03-01', '2022-03-27'),
(28, 28, '2021-03-01', '2022-03-27'),
(29, 29, '2021-03-01', '2022-03-27'),
(30, 30, '2021-03-01', '2022-03-27');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `nauczyciel`
--

DROP TABLE IF EXISTS `nauczyciel`;
CREATE TABLE `nauczyciel` (
  `id_nauczyciel` int(11) NOT NULL,
  `imie` varchar(50) NOT NULL,
  `nazwisko` varchar(50) NOT NULL,
  `kontakt` varchar(20) NOT NULL,
  `id_adres_zamieszkania` int(11) NOT NULL,
  `id_umowa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `nauczyciel`
--

INSERT INTO `nauczyciel` (`id_nauczyciel`, `imie`, `nazwisko`, `kontakt`, `id_adres_zamieszkania`, `id_umowa`) VALUES
(1, 'Natalia', 'Szczepanik', '+99 999 999 999', 1, 1),
(2, 'Napoleon', 'Będzieszyński', '+55 444 333 222', 4, 2),
(3, 'Adam', 'Ryży', '+42 069 555 555', 3, 5),
(4, 'Lelum', 'Polelum', '+44 444 444 444', 2, 6),
(5, 'Hektor', 'Łamignat', '+48 671 988 273', 1, 7);

-- --------------------------------------------------------

--
-- Zastąpiona struktura widoku `nauczyciel_info`
-- (Zobacz poniżej rzeczywisty widok)
--
DROP VIEW IF EXISTS `nauczyciel_info`;
CREATE TABLE `nauczyciel_info` (
`id_nauczyciel` int(11)
,`imie` varchar(50)
,`nazwisko` varchar(50)
,`kontakt` varchar(20)
,`miasto` varchar(50)
,`Numer umowy` int(11)
);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `obecnosc`
--

DROP TABLE IF EXISTS `obecnosc`;
CREATE TABLE `obecnosc` (
  `id_obecnosc` int(11) NOT NULL,
  `id_uczen` int(11) NOT NULL,
  `data` date NOT NULL,
  `id_przedmiot` int(11) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `obecnosc`
--

INSERT INTO `obecnosc` (`id_obecnosc`, `id_uczen`, `data`, `id_przedmiot`, `status`) VALUES
(1, 1, '2021-03-01', 1, 'Obecna'),
(2, 2, '2021-03-01', 1, 'obecny'),
(3, 3, '2021-03-01', 1, 'obecny'),
(4, 4, '2021-03-01', 1, 'obecny'),
(5, 5, '2021-03-01', 1, 'obecny'),
(6, 6, '2021-03-01', 1, 'nieobecny'),
(7, 7, '2021-03-01', 2, 'obecny'),
(8, 8, '2021-03-01', 2, 'obecny'),
(9, 9, '2021-03-01', 2, 'obecny'),
(10, 10, '2021-03-01', 2, 'obecny'),
(11, 11, '2021-03-01', 2, 'zwolniony'),
(12, 12, '2021-03-01', 2, 'obecny'),
(13, 13, '2021-03-01', 3, 'obecny'),
(14, 14, '2021-03-01', 3, 'obecny'),
(15, 15, '2021-03-01', 3, 'obecny'),
(16, 16, '2021-03-01', 3, 'obecny'),
(17, 17, '2021-03-01', 3, 'zwolniony'),
(18, 18, '2021-03-01', 3, 'obecny'),
(19, 19, '2021-03-01', 4, 'obecny'),
(20, 20, '2021-03-01', 4, 'obecny'),
(21, 21, '2021-03-01', 4, 'obecny'),
(22, 22, '2021-03-01', 4, 'obecny'),
(23, 23, '2021-03-01', 4, 'zwolniony'),
(24, 24, '2021-03-01', 4, 'obecny'),
(25, 25, '2021-03-01', 5, 'obecny'),
(26, 26, '2021-03-01', 5, 'obecny'),
(27, 27, '2021-03-01', 5, 'obecny'),
(28, 28, '2021-03-01', 5, 'obecny'),
(29, 29, '2021-03-01', 5, 'zwolniony'),
(30, 30, '2021-03-01', 5, 'nieobecny');

-- --------------------------------------------------------

--
-- Zastąpiona struktura widoku `obecnosc_info`
-- (Zobacz poniżej rzeczywisty widok)
--
DROP VIEW IF EXISTS `obecnosc_info`;
CREATE TABLE `obecnosc_info` (
`id_obecnosc` int(11)
,`nazwisko ucznia` varchar(50)
,`data` date
,`nazwa` varchar(50)
,`status` varchar(50)
);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ocenatouczen`
--

DROP TABLE IF EXISTS `ocenatouczen`;
CREATE TABLE `ocenatouczen` (
  `id_Ocenatouczen` int(11) NOT NULL,
  `id_uczen` int(11) NOT NULL,
  `id_przedmiot` int(11) NOT NULL,
  `Ocenatouczen` tinyint(1) NOT NULL,
  `data` date NOT NULL,
  `waga` tinyint(1) NOT NULL,
  `typ` varchar(50) NOT NULL,
  `opis` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `ocenatouczen`
--

INSERT INTO `ocenatouczen` (`id_Ocenatouczen`, `id_uczen`, `id_przedmiot`, `Ocenatouczen`, `data`, `waga`, `typ`, `opis`) VALUES
(1, 1, 1, 5, '2021-03-01', 3, 'Sprawdzian', 'Sprawdzian ze stron internetowych'),
(2, 2, 1, 5, '2021-03-01', 3, 'Sprawdzian', 'Sprawdzian ze stron internetowych'),
(3, 3, 1, 5, '2021-03-01', 3, 'Sprawdzian', 'Sprawdzian ze stron internetowych'),
(4, 4, 1, 4, '2021-03-01', 3, 'Sprawdzian', 'Sprawdzian ze stron internetowych'),
(5, 5, 1, 5, '2021-03-01', 3, 'Sprawdzian', 'Sprawdzian ze stron internetowych'),
(6, 6, 1, 5, '2021-03-01', 3, 'Sprawdzian', 'Sprawdzian ze stron internetowych'),
(7, 7, 2, 5, '2021-03-01', 3, 'Sprawdzian', 'Robienie reklamy'),
(8, 8, 2, 2, '2021-03-01', 3, 'Sprawdzian', 'Robienie reklamy'),
(9, 9, 2, 4, '2021-03-01', 3, 'Sprawdzian', 'Robienie reklamy'),
(10, 10, 2, 3, '2021-03-01', 3, 'Sprawdzian', 'Robienie reklamy'),
(11, 11, 2, 5, '2021-03-01', 3, 'Sprawdzian', 'Robienie reklamy'),
(12, 12, 2, 4, '2021-03-01', 3, 'Sprawdzian', 'Robienie reklamy'),
(13, 13, 3, 1, '2021-03-01', 3, 'Sprawdzian', 'Robienie zdjęć'),
(14, 14, 3, 1, '2021-03-01', 5, 'Sprawdzian', 'Robienie zdjęć'),
(15, 15, 3, 5, '2021-03-01', 5, 'Sprawdzian', 'Robienie zdjęć'),
(16, 16, 3, 3, '2021-03-01', 5, 'Sprawdzian', 'Robienie zdjęć'),
(17, 17, 3, 1, '2021-03-01', 5, 'Sprawdzian', 'Robienie zdjęć'),
(18, 18, 3, 2, '2021-03-01', 5, 'Sprawdzian', 'Robienie zdjęć'),
(19, 19, 4, 6, '2021-03-01', 5, 'Sprawdzian', 'Badanie żaby (martwiej)'),
(20, 20, 4, 5, '2021-03-01', 5, 'Sprawdzian', 'Badanie żaby (martwiej)'),
(21, 21, 4, 5, '2021-03-01', 5, 'Sprawdzian', 'Badanie żaby (martwiej)'),
(22, 22, 4, 5, '2021-03-01', 5, 'Sprawdzian', 'Badanie żaby (martwiej)'),
(23, 23, 4, 4, '2021-03-01', 5, 'Sprawdzian', 'Badanie żaby (martwiej)'),
(24, 24, 4, 6, '2021-03-01', 5, 'Sprawdzian', 'Badanie żaby (martwiej)'),
(25, 25, 5, 2, '2021-03-01', 2, 'Sprawdzian', 'Starożytnosć w świecie nowożytnym'),
(26, 26, 5, 2, '2021-03-01', 2, 'Sprawdzian', 'Starożytnosć w świecie nowożytnym'),
(27, 27, 5, 3, '2021-03-01', 2, 'Sprawdzian', 'Starożytnosć w świecie nowożytnym'),
(28, 28, 5, 1, '2021-03-01', 2, 'Sprawdzian', 'Starożytnosć w świecie nowożytnym'),
(29, 29, 5, 1, '2021-03-01', 2, 'Sprawdzian', 'Starożytnosć w świecie nowożytnym'),
(30, 30, 5, 2, '2021-03-01', 2, 'Sprawdzian', 'Starożytnosć w świecie nowożytnym');

-- --------------------------------------------------------

--
-- Zastąpiona struktura widoku `ocenatouczen_info`
-- (Zobacz poniżej rzeczywisty widok)
--
DROP VIEW IF EXISTS `ocenatouczen_info`;
CREATE TABLE `ocenatouczen_info` (
`id_Ocenatouczen` int(11)
,`nazwisko ucznia` varchar(50)
,`nazwa` varchar(50)
,`Ocenatouczen` tinyint(1)
,`data` date
,`waga` tinyint(1)
,`typ` varchar(50)
,`opis` varchar(255)
);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `osoby`
--

DROP TABLE IF EXISTS `osoby`;
CREATE TABLE `osoby` (
  `id_osoby` int(11) NOT NULL,
  `imie_osoby` varchar(50) NOT NULL,
  `nazwisko_osoby` varchar(50) NOT NULL,
  `id_adres_zamieszkania` int(11) NOT NULL,
  `PESEL` char(11) NOT NULL,
  `data_urodzenia` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `przedmiot`
--

DROP TABLE IF EXISTS `przedmiot`;
CREATE TABLE `przedmiot` (
  `id_przedmiot` int(11) NOT NULL,
  `nazwa` varchar(50) NOT NULL,
  `id_nauczyciel` int(11) NOT NULL,
  `czy_zawodowy` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `przedmiot`
--

INSERT INTO `przedmiot` (`id_przedmiot`, `nazwa`, `id_nauczyciel`, `czy_zawodowy`) VALUES
(1, 'Informatyka', 2, 'Tak'),
(2, 'Reklama', 3, 'Tak'),
(3, 'Fotografia', 4, 'Tak'),
(4, 'Weterynaria', 5, 'Tak'),
(5, 'Polski', 1, 'Nie'),
(6, 'Matematyka', 1, 'Nie');

-- --------------------------------------------------------

--
-- Zastąpiona struktura widoku `przedmiot_info`
-- (Zobacz poniżej rzeczywisty widok)
--
DROP VIEW IF EXISTS `przedmiot_info`;
CREATE TABLE `przedmiot_info` (
`id_przedmiot` int(11)
,`nazwa` varchar(50)
,`Nazwisko osoby prowadzącej` varchar(50)
,`czy_zawodowy` varchar(50)
);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uczen`
--

DROP TABLE IF EXISTS `uczen`;
CREATE TABLE `uczen` (
  `id_uczen` int(11) NOT NULL,
  `imie` varchar(50) NOT NULL,
  `nazwisko` varchar(50) NOT NULL,
  `id_klasa` int(11) NOT NULL,
  `data_urodzenia` date NOT NULL,
  `id_adres_zamieszkania` int(11) NOT NULL,
  `imie_matki` varchar(50) DEFAULT NULL,
  `imie_ojca` varchar(50) DEFAULT NULL,
  `PESEL` char(11) NOT NULL,
  `id_legitymacja` int(11) NOT NULL,
  `kierunek_specjalizacja` varchar(50) NOT NULL,
  `punkty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `uczen`
--

INSERT INTO `uczen` (`id_uczen`, `imie`, `nazwisko`, `id_klasa`, `data_urodzenia`, `id_adres_zamieszkania`, `imie_matki`, `imie_ojca`, `PESEL`, `id_legitymacja`, `kierunek_specjalizacja`, `punkty`) VALUES
(1, 'Natalia', 'Przykładka', 1, '2002-02-10', 1, 'mama 1', 'tata 1', '02023123321', 1, 'IT', 111),
(2, 'uczen_imie 2', 'uczen_nazwisko 2', 1, '2002-02-11', 2, 'mama 2', 'tata 2', '02023123322', 2, 'IT', 112),
(3, 'uczen_imie 3', 'uczen_nazwisko 3', 1, '2002-03-11', 3, 'mama 3', 'tata 3', '02023123323', 3, 'IT', 123),
(4, 'uczen_imie 4', 'uczen_nazwisko 4', 1, '2002-04-11', 4, 'mama 4', 'tata 4', '02023123324', 4, 'IT', 102),
(5, 'uczen_imie 5', 'uczen_nazwisko 5', 1, '2002-05-11', 5, 'mama 5', 'tata 5', '02023123325', 5, 'IT', 143),
(6, 'uczen_imie 6', 'uczen_nazwisko 6', 1, '2002-06-11', 6, 'mama 6', 'tata 6', '02023123326', 6, 'IT', 152),
(7, 'uczen_imie 7', 'uczen_nazwisko 7', 2, '2001-07-11', 7, 'mama 7', 'tata 7', '01023123327', 7, 'Fotografia', 103),
(8, 'uczen_imie 8', 'uczen_nazwisko 8', 2, '2001-08-11', 8, 'mama 8', 'tata 8', '01023123328', 8, 'Fotografia', 182),
(9, 'uczen_imie 9', 'uczen_nazwisko 9', 2, '2001-09-11', 9, 'mama 9', 'tata 9', '01023123329', 9, 'Fotografia', 173),
(10, 'uczen_imie 10', 'uczen_nazwisko 10', 2, '2001-10-11', 10, 'mama 10', 'tata 10', '01023123310', 10, 'Fotografia', 99),
(11, 'uczen_imie 11', 'uczen_nazwisko 11', 2, '2001-11-11', 11, 'mama 11', 'tata 11', '01023123311', 11, 'Fotografia', 88),
(12, 'uczen_imie 12', 'uczen_nazwisko 12', 2, '2001-12-11', 12, 'mama 12', 'tata 12', '01023123312', 12, 'Fotografia', 111),
(13, 'uczen_imie 13', 'uczen_nazwisko 13', 3, '2003-11-11', 13, 'mama 13', 'tata 13', '03023123312', 13, 'Weterynaria', 117),
(14, 'uczen_imie 14', 'uczen_nazwisko 14', 3, '2003-10-11', 14, 'mama 14', 'tata 14', '03023123312', 14, 'Weterynaria', 116),
(15, 'uczen_imie 15', 'uczen_nazwisko 15', 3, '2003-09-11', 15, 'mama 15', 'tata 15', '03023123312', 15, 'Weterynaria', 115),
(16, 'uczen_imie 16', 'uczen_nazwisko 16', 3, '2003-08-11', 1, 'mama 16', 'tata 16', '03023123312', 16, 'Weterynaria', 114),
(17, 'uczen_imie 17', 'uczen_nazwisko 17', 3, '2003-07-11', 2, 'mama 17', 'tata 17', '03023123312', 17, 'Weterynaria', 113),
(18, 'uczen_imie 18', 'uczen_nazwisko 18', 3, '2003-06-11', 3, 'mama 18', 'tata 18', '03023123312', 18, 'Weterynaria', 112),
(19, 'uczen_imie 19', 'uczen_nazwisko 19', 4, '2002-05-11', 4, 'mama 19', 'tata 19', '02023123312', 19, 'Reklama', 121),
(20, 'uczen_imie 20', 'uczen_nazwisko 20', 4, '2002-04-11', 5, 'mama 20', 'tata 20', '02023123312', 20, 'Reklama', 122),
(21, 'uczen_imie 21', 'uczen_nazwisko 21', 4, '2002-03-11', 6, 'mama 21', 'tata 21', '02023123312', 21, 'Reklama', 123),
(22, 'uczen_imie 22', 'uczen_nazwisko 22', 4, '2002-02-11', 7, 'mama 22', 'tata 22', '02023123312', 22, 'Reklama', 124),
(23, 'uczen_imie 23', 'uczen_nazwisko 23', 4, '2002-01-11', 8, 'mama 23', 'tata 23', '02023123312', 23, 'Reklama', 125),
(24, 'uczen_imie 24', 'uczen_nazwisko 24', 4, '2002-04-12', 9, 'mama 24', 'tata 24', '02023123312', 24, 'Reklama', 126),
(25, 'uczen_imie 25', 'uczen_nazwisko 25', 5, '2003-04-11', 10, 'mama 25', 'tata 25', '03023123312', 25, 'IT', 132),
(26, 'uczen_imie 26', 'uczen_nazwisko 26', 5, '2003-05-11', 11, 'mama 26', 'tata 26', '03023123312', 26, 'IT', 133),
(27, 'uczen_imie 27', 'uczen_nazwisko 27', 5, '2003-06-11', 12, 'mama 27', 'tata 27', '03023123312', 27, 'IT', 134),
(28, 'uczen_imie 28', 'uczen_nazwisko 28', 5, '2003-07-11', 13, 'mama 28', 'tata 28', '03023123312', 28, 'IT', 135),
(29, 'uczen_imie 29', 'uczen_nazwisko 29', 5, '2003-08-11', 14, 'mama 29', 'tata 29', '03023123312', 29, 'IT', 136),
(30, 'uczen_imie 30', 'uczen_nazwisko 30', 5, '2003-09-11', 15, 'mama 30', 'tata 30', '03023123312', 30, 'IT', 137);

-- --------------------------------------------------------

--
-- Zastąpiona struktura widoku `uczen_info`
-- (Zobacz poniżej rzeczywisty widok)
--
DROP VIEW IF EXISTS `uczen_info`;
CREATE TABLE `uczen_info` (
`id_uczen` int(11)
,`imie` varchar(50)
,`nazwisko` varchar(50)
,`litera` char(3)
,`data_urodzenia` date
,`miasto` varchar(50)
,`imie_matki` varchar(50)
,`imie_ojca` varchar(50)
,`PESEL` char(11)
,`numer` int(11)
,`kierunek_specjalizacja` varchar(50)
,`punkty` int(11)
);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `umowa`
--

DROP TABLE IF EXISTS `umowa`;
CREATE TABLE `umowa` (
  `id_umowa` int(11) NOT NULL,
  `numer` int(11) NOT NULL,
  `data_rozpoczecia` date NOT NULL,
  `data_zakonczenia` date NOT NULL,
  `stawka` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `umowa`
--

INSERT INTO `umowa` (`id_umowa`, `numer`, `data_rozpoczecia`, `data_zakonczenia`, `stawka`) VALUES
(1, 1, '2020-01-01', '2025-01-01', '3341.73'),
(2, 2, '2021-02-14', '2023-04-30', '4193.23'),
(5, 3, '2021-03-18', '2024-03-27', '3333.21'),
(6, 4, '2021-03-02', '2023-03-20', '7190.80'),
(7, 5, '2021-03-10', '2022-03-13', '6500.99');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uwaga`
--

DROP TABLE IF EXISTS `uwaga`;
CREATE TABLE `uwaga` (
  `id_uwaga` int(11) NOT NULL,
  `opis` varchar(255) NOT NULL,
  `id_nauczyciel` int(11) NOT NULL,
  `id_uczen` int(11) NOT NULL,
  `waga` int(11) NOT NULL,
  `punkty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `uwaga`
--

INSERT INTO `uwaga` (`id_uwaga`, `opis`, `id_nauczyciel`, `id_uczen`, `waga`, `punkty`) VALUES
(1, 'Stanął na krześle i zaczął robić śmigło', 4, 10, 10, -10),
(2, 'udaje robaka na lekcji informatyki', 3, 21, 6, -6),
(3, 'Nie wykonuje poleceń nauczyciela', 2, 29, 7, -7);

-- --------------------------------------------------------

--
-- Zastąpiona struktura widoku `uwaga_info`
-- (Zobacz poniżej rzeczywisty widok)
--
DROP VIEW IF EXISTS `uwaga_info`;
CREATE TABLE `uwaga_info` (
`id_uwaga` int(11)
,`opis` varchar(255)
,`nazwisko nauczyciela` varchar(50)
,`nazwisko ucznia` varchar(50)
,`waga` int(11)
,`punkty` int(11)
);

-- --------------------------------------------------------

--
-- Struktura widoku `klasa_info`
--
DROP TABLE IF EXISTS `klasa_info`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `klasa_info`  AS  select distinct `klasa`.`id_klasa` AS `id_klasa`,`klasa`.`litera` AS `litera`,`klasa`.`rocznik` AS `rocznik`,`nauczyciel`.`nazwisko` AS `nazwisko nauczyciela`,`uczen`.`nazwisko` AS `nazwisko ucznia` from ((`klasa` join `uczen`) join `nauczyciel`) where `klasa`.`id_nauczyciel_wychowawca` = `nauczyciel`.`id_nauczyciel` and `klasa`.`id_uczen_przewodniczacy` = `uczen`.`id_uczen` ;

-- --------------------------------------------------------

--
-- Struktura widoku `nauczyciel_info`
--
DROP TABLE IF EXISTS `nauczyciel_info`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `nauczyciel_info`  AS  select distinct `nauczyciel`.`id_nauczyciel` AS `id_nauczyciel`,`nauczyciel`.`imie` AS `imie`,`nauczyciel`.`nazwisko` AS `nazwisko`,`nauczyciel`.`kontakt` AS `kontakt`,`adres_zamieszkania`.`miasto` AS `miasto`,`umowa`.`numer` AS `Numer umowy` from ((`adres_zamieszkania` join `umowa`) join `nauczyciel`) where `nauczyciel`.`id_adres_zamieszkania` = `adres_zamieszkania`.`id_adres_zamieszkania` and `nauczyciel`.`id_umowa` = `umowa`.`id_umowa` ;

-- --------------------------------------------------------

--
-- Struktura widoku `obecnosc_info`
--
DROP TABLE IF EXISTS `obecnosc_info`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `obecnosc_info`  AS  select distinct `obecnosc`.`id_obecnosc` AS `id_obecnosc`,`uczen`.`nazwisko` AS `nazwisko ucznia`,`obecnosc`.`data` AS `data`,`przedmiot`.`nazwa` AS `nazwa`,`obecnosc`.`status` AS `status` from ((`obecnosc` join `uczen`) join `przedmiot`) where `obecnosc`.`id_uczen` = `uczen`.`id_uczen` and `obecnosc`.`id_przedmiot` = `przedmiot`.`id_przedmiot` ;

-- --------------------------------------------------------

--
-- Struktura widoku `ocenatouczen_info`
--
DROP TABLE IF EXISTS `ocenatouczen_info`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `ocenatouczen_info`  AS  select distinct `ocenatouczen`.`id_Ocenatouczen` AS `id_Ocenatouczen`,`uczen`.`nazwisko` AS `nazwisko ucznia`,`przedmiot`.`nazwa` AS `nazwa`,`ocenatouczen`.`Ocenatouczen` AS `Ocenatouczen`,`ocenatouczen`.`data` AS `data`,`ocenatouczen`.`waga` AS `waga`,`ocenatouczen`.`typ` AS `typ`,`ocenatouczen`.`opis` AS `opis` from ((`ocenatouczen` join `uczen`) join `przedmiot`) where `ocenatouczen`.`id_uczen` = `uczen`.`id_uczen` and `ocenatouczen`.`id_przedmiot` = `przedmiot`.`id_przedmiot` ;

-- --------------------------------------------------------

--
-- Struktura widoku `przedmiot_info`
--
DROP TABLE IF EXISTS `przedmiot_info`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `przedmiot_info`  AS  select distinct `przedmiot`.`id_przedmiot` AS `id_przedmiot`,`przedmiot`.`nazwa` AS `nazwa`,`nauczyciel`.`nazwisko` AS `Nazwisko osoby prowadzącej`,`przedmiot`.`czy_zawodowy` AS `czy_zawodowy` from (`przedmiot` join `nauczyciel`) where `przedmiot`.`id_nauczyciel` = `nauczyciel`.`id_nauczyciel` ;

-- --------------------------------------------------------

--
-- Struktura widoku `uczen_info`
--
DROP TABLE IF EXISTS `uczen_info`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `uczen_info`  AS  select distinct `uczen`.`id_uczen` AS `id_uczen`,`uczen`.`imie` AS `imie`,`uczen`.`nazwisko` AS `nazwisko`,`klasa`.`litera` AS `litera`,`uczen`.`data_urodzenia` AS `data_urodzenia`,`adres_zamieszkania`.`miasto` AS `miasto`,`uczen`.`imie_matki` AS `imie_matki`,`uczen`.`imie_ojca` AS `imie_ojca`,`uczen`.`PESEL` AS `PESEL`,`legitymacja`.`numer` AS `numer`,`uczen`.`kierunek_specjalizacja` AS `kierunek_specjalizacja`,`uczen`.`punkty` AS `punkty` from (((`uczen` join `klasa`) join `adres_zamieszkania`) join `legitymacja`) where `uczen`.`id_klasa` = `klasa`.`id_klasa` and `uczen`.`id_adres_zamieszkania` = `adres_zamieszkania`.`id_adres_zamieszkania` and `uczen`.`id_legitymacja` = `legitymacja`.`id_legitymacja` ;

-- --------------------------------------------------------

--
-- Struktura widoku `uwaga_info`
--
DROP TABLE IF EXISTS `uwaga_info`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `uwaga_info`  AS  select distinct `uwaga`.`id_uwaga` AS `id_uwaga`,`uwaga`.`opis` AS `opis`,`nauczyciel`.`nazwisko` AS `nazwisko nauczyciela`,`uczen`.`nazwisko` AS `nazwisko ucznia`,`uwaga`.`waga` AS `waga`,`uwaga`.`punkty` AS `punkty` from ((`uwaga` join `nauczyciel`) join `uczen`) where `uwaga`.`id_nauczyciel` = `nauczyciel`.`id_nauczyciel` and `uwaga`.`id_uczen` = `uczen`.`id_uczen` ;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `adres_zamieszkania`
--
ALTER TABLE `adres_zamieszkania`
  ADD PRIMARY KEY (`id_adres_zamieszkania`);

--
-- Indeksy dla tabeli `klasa`
--
ALTER TABLE `klasa`
  ADD PRIMARY KEY (`id_klasa`),
  ADD KEY `id_nauczyciel_wychowawca` (`id_nauczyciel_wychowawca`),
  ADD KEY `id_uczen_przewodniczacy` (`id_uczen_przewodniczacy`);

--
-- Indeksy dla tabeli `legitymacja`
--
ALTER TABLE `legitymacja`
  ADD PRIMARY KEY (`id_legitymacja`);

--
-- Indeksy dla tabeli `nauczyciel`
--
ALTER TABLE `nauczyciel`
  ADD PRIMARY KEY (`id_nauczyciel`),
  ADD KEY `id_adres_zamieszkania` (`id_adres_zamieszkania`),
  ADD KEY `id_umowa` (`id_umowa`);

--
-- Indeksy dla tabeli `obecnosc`
--
ALTER TABLE `obecnosc`
  ADD PRIMARY KEY (`id_obecnosc`),
  ADD KEY `id_uczen` (`id_uczen`),
  ADD KEY `id_przedmiot` (`id_przedmiot`);

--
-- Indeksy dla tabeli `ocenatouczen`
--
ALTER TABLE `ocenatouczen`
  ADD PRIMARY KEY (`id_Ocenatouczen`),
  ADD KEY `id_przedmiot` (`id_przedmiot`),
  ADD KEY `id_uczen` (`id_uczen`);

--
-- Indeksy dla tabeli `osoby`
--
ALTER TABLE `osoby`
  ADD PRIMARY KEY (`id_osoby`);

--
-- Indeksy dla tabeli `przedmiot`
--
ALTER TABLE `przedmiot`
  ADD PRIMARY KEY (`id_przedmiot`),
  ADD KEY `id_nauczyciel` (`id_nauczyciel`);

--
-- Indeksy dla tabeli `uczen`
--
ALTER TABLE `uczen`
  ADD PRIMARY KEY (`id_uczen`),
  ADD KEY `id_klasa` (`id_klasa`),
  ADD KEY `id_adres_zamieszkania` (`id_adres_zamieszkania`),
  ADD KEY `id_legitymacja` (`id_legitymacja`);

--
-- Indeksy dla tabeli `umowa`
--
ALTER TABLE `umowa`
  ADD PRIMARY KEY (`id_umowa`);

--
-- Indeksy dla tabeli `uwaga`
--
ALTER TABLE `uwaga`
  ADD PRIMARY KEY (`id_uwaga`),
  ADD KEY `id_uczen` (`id_uczen`),
  ADD KEY `id_nauczyciel` (`id_nauczyciel`);

--
-- AUTO_INCREMENT dla tabel zrzutów
--

--
-- AUTO_INCREMENT dla tabeli `adres_zamieszkania`
--
ALTER TABLE `adres_zamieszkania`
  MODIFY `id_adres_zamieszkania` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT dla tabeli `klasa`
--
ALTER TABLE `klasa`
  MODIFY `id_klasa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT dla tabeli `legitymacja`
--
ALTER TABLE `legitymacja`
  MODIFY `id_legitymacja` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT dla tabeli `nauczyciel`
--
ALTER TABLE `nauczyciel`
  MODIFY `id_nauczyciel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT dla tabeli `obecnosc`
--
ALTER TABLE `obecnosc`
  MODIFY `id_obecnosc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT dla tabeli `ocenatouczen`
--
ALTER TABLE `ocenatouczen`
  MODIFY `id_Ocenatouczen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT dla tabeli `osoby`
--
ALTER TABLE `osoby`
  MODIFY `id_osoby` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `przedmiot`
--
ALTER TABLE `przedmiot`
  MODIFY `id_przedmiot` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT dla tabeli `uczen`
--
ALTER TABLE `uczen`
  MODIFY `id_uczen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT dla tabeli `umowa`
--
ALTER TABLE `umowa`
  MODIFY `id_umowa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT dla tabeli `uwaga`
--
ALTER TABLE `uwaga`
  MODIFY `id_uwaga` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `klasa`
--
ALTER TABLE `klasa`
  ADD CONSTRAINT `klasa_ibfk_1` FOREIGN KEY (`id_nauczyciel_wychowawca`) REFERENCES `nauczyciel` (`id_nauczyciel`),
  ADD CONSTRAINT `klasa_ibfk_2` FOREIGN KEY (`id_uczen_przewodniczacy`) REFERENCES `uczen` (`id_uczen`);

--
-- Ograniczenia dla tabeli `nauczyciel`
--
ALTER TABLE `nauczyciel`
  ADD CONSTRAINT `nauczyciel_ibfk_1` FOREIGN KEY (`id_adres_zamieszkania`) REFERENCES `adres_zamieszkania` (`id_adres_zamieszkania`),
  ADD CONSTRAINT `nauczyciel_ibfk_2` FOREIGN KEY (`id_umowa`) REFERENCES `umowa` (`id_umowa`);

--
-- Ograniczenia dla tabeli `obecnosc`
--
ALTER TABLE `obecnosc`
  ADD CONSTRAINT `obecnosc_ibfk_1` FOREIGN KEY (`id_uczen`) REFERENCES `uczen` (`id_uczen`),
  ADD CONSTRAINT `obecnosc_ibfk_2` FOREIGN KEY (`id_przedmiot`) REFERENCES `przedmiot` (`id_przedmiot`);

--
-- Ograniczenia dla tabeli `ocenatouczen`
--
ALTER TABLE `ocenatouczen`
  ADD CONSTRAINT `ocenatouczen_ibfk_1` FOREIGN KEY (`id_przedmiot`) REFERENCES `przedmiot` (`id_przedmiot`),
  ADD CONSTRAINT `ocenatouczen_ibfk_2` FOREIGN KEY (`id_uczen`) REFERENCES `uczen` (`id_uczen`);

--
-- Ograniczenia dla tabeli `przedmiot`
--
ALTER TABLE `przedmiot`
  ADD CONSTRAINT `przedmiot_ibfk_1` FOREIGN KEY (`id_nauczyciel`) REFERENCES `nauczyciel` (`id_nauczyciel`);

--
-- Ograniczenia dla tabeli `uczen`
--
ALTER TABLE `uczen`
  ADD CONSTRAINT `uczen_ibfk_1` FOREIGN KEY (`id_klasa`) REFERENCES `klasa` (`id_klasa`),
  ADD CONSTRAINT `uczen_ibfk_2` FOREIGN KEY (`id_adres_zamieszkania`) REFERENCES `adres_zamieszkania` (`id_adres_zamieszkania`),
  ADD CONSTRAINT `uczen_ibfk_3` FOREIGN KEY (`id_legitymacja`) REFERENCES `legitymacja` (`id_legitymacja`);

--
-- Ograniczenia dla tabeli `uwaga`
--
ALTER TABLE `uwaga`
  ADD CONSTRAINT `uwaga_ibfk_1` FOREIGN KEY (`id_uczen`) REFERENCES `uczen` (`id_uczen`),
  ADD CONSTRAINT `uwaga_ibfk_2` FOREIGN KEY (`id_nauczyciel`) REFERENCES `nauczyciel` (`id_nauczyciel`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
