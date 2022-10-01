-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 10 Lut 2021, 10:22
-- Wersja serwera: 10.4.14-MariaDB
-- Wersja PHP: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `wedkowanie`
--
CREATE DATABASE IF NOT EXISTS `wedkowanie` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `wedkowanie`;

-- --------------------------------------------------------

--
-- Zastąpiona struktura widoku `informacje_o_rybach`
-- (Zobacz poniżej rzeczywisty widok)
--
DROP VIEW IF EXISTS `informacje_o_rybach`;
CREATE TABLE `informacje_o_rybach` (
`nazwa` text
,`styl_zycia` varchar(13)
,`akewn` text
,`rodzaj` varchar(7)
);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `lowisko`
--

DROP TABLE IF EXISTS `lowisko`;
CREATE TABLE `lowisko` (
  `id` int(11) NOT NULL,
  `ryby_id` int(11) NOT NULL,
  `akewn` text NOT NULL,
  `wojewodztwo` text NOT NULL,
  `rodzaj` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `lowisko`
--

INSERT INTO `lowisko` (`id`, `ryby_id`, `akewn`, `wojewodztwo`, `rodzaj`) VALUES
(1, 1, 'duzy', 'slask', 1),
(2, 2, 'średni', 'Mazowsze', 2),
(3, 3, 'maly', 'slask', 3),
(4, 4, 'takie se', 'slask', 4),
(5, 5, 'ogromny', 'slask', 5),
(6, 6, 'nie za duzy nie za maly', 'łodzkie', 1);

-- --------------------------------------------------------

--
-- Zastąpiona struktura widoku `lowisko_info`
-- (Zobacz poniżej rzeczywisty widok)
--
DROP VIEW IF EXISTS `lowisko_info`;
CREATE TABLE `lowisko_info` (
`id` int(11)
,`nazwa` text
,`akewn` text
,`wojewodztwo` text
,`rodzaj` int(11)
);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `okres_ochrony`
--

DROP TABLE IF EXISTS `okres_ochrony`;
CREATE TABLE `okres_ochrony` (
  `id` int(11) NOT NULL,
  `ryby_id` int(11) NOT NULL,
  `od_miesiaca` int(11) NOT NULL,
  `do_miesiaca` int(11) NOT NULL,
  `wymiar_ochronny` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `okres_ochrony`
--

INSERT INTO `okres_ochrony` (`id`, `ryby_id`, `od_miesiaca`, `do_miesiaca`, `wymiar_ochronny`) VALUES
(7, 1, 3, 6, 66),
(8, 2, 4, 7, 67),
(9, 3, 1, 3, 2),
(10, 4, 2, 3, 68),
(11, 5, 10, 12, 3),
(12, 6, 7, 10, 9);

-- --------------------------------------------------------

--
-- Zastąpiona struktura widoku `okres_ochrony_info`
-- (Zobacz poniżej rzeczywisty widok)
--
DROP VIEW IF EXISTS `okres_ochrony_info`;
CREATE TABLE `okres_ochrony_info` (
`id` int(11)
,`nazwa` text
,`od_miesiaca` int(11)
,`do_miesiaca` int(11)
,`wymiar_ochronny` int(11)
);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ryby`
--

DROP TABLE IF EXISTS `ryby`;
CREATE TABLE `ryby` (
  `id` int(11) NOT NULL,
  `nazwa` text NOT NULL,
  `wystepowanie` text NOT NULL,
  `styl_zycia` int(11) NOT NULL,
  `dobowe_limit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `ryby`
--

INSERT INTO `ryby` (`id`, `nazwa`, `wystepowanie`, `styl_zycia`, `dobowe_limit`) VALUES
(1, 'pstrag', 'morze', 1, 2),
(2, 'okon', 'ocean', 2, 3),
(3, 'wieloryb', 'staw przed domem', 2, 4),
(4, 'wegorz', 'jezioro', 1, 5),
(5, 'Potwor z loch-ness', 'zalew w Poraju', 1, 2),
(6, 'karp', 'jeziora słodkie', 2, 3);

-- --------------------------------------------------------

--
-- Struktura widoku `informacje_o_rybach`
--
DROP TABLE IF EXISTS `informacje_o_rybach`;

DROP VIEW IF EXISTS `informacje_o_rybach`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `informacje_o_rybach`  AS  select distinct `ryby`.`nazwa` AS `nazwa`,case when `ryby`.`styl_zycia` = 1 then 'nie drapiezna' else 'drapiezna' end AS `styl_zycia`,`lowisko`.`akewn` AS `akewn`,case when `lowisko`.`rodzaj` = 1 then 'morze' when `lowisko`.`rodzaj` = 2 then 'jezioro' when `lowisko`.`rodzaj` = 3 then 'rzeka' when `lowisko`.`rodzaj` = 4 then 'zalew' else 'staw' end AS `rodzaj` from (`ryby` join `lowisko`) where `lowisko`.`ryby_id` = `ryby`.`id` ;

-- --------------------------------------------------------

--
-- Struktura widoku `lowisko_info`
--
DROP TABLE IF EXISTS `lowisko_info`;

DROP VIEW IF EXISTS `lowisko_info`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `lowisko_info`  AS  select distinct `lowisko`.`id` AS `id`,`ryby`.`nazwa` AS `nazwa`,`lowisko`.`akewn` AS `akewn`,`lowisko`.`wojewodztwo` AS `wojewodztwo`,`lowisko`.`rodzaj` AS `rodzaj` from (`ryby` join `lowisko`) where `lowisko`.`ryby_id` = `ryby`.`id` ;

-- --------------------------------------------------------

--
-- Struktura widoku `okres_ochrony_info`
--
DROP TABLE IF EXISTS `okres_ochrony_info`;

DROP VIEW IF EXISTS `okres_ochrony_info`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `okres_ochrony_info`  AS  select distinct `okres_ochrony`.`id` AS `id`,`ryby`.`nazwa` AS `nazwa`,`okres_ochrony`.`od_miesiaca` AS `od_miesiaca`,`okres_ochrony`.`do_miesiaca` AS `do_miesiaca`,`okres_ochrony`.`wymiar_ochronny` AS `wymiar_ochronny` from (`okres_ochrony` join `ryby`) where `okres_ochrony`.`ryby_id` = `ryby`.`id` ;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `lowisko`
--
ALTER TABLE `lowisko`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ryby_id` (`ryby_id`);

--
-- Indeksy dla tabeli `okres_ochrony`
--
ALTER TABLE `okres_ochrony`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ryby_id` (`ryby_id`);

--
-- Indeksy dla tabeli `ryby`
--
ALTER TABLE `ryby`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `lowisko`
--
ALTER TABLE `lowisko`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT dla tabeli `okres_ochrony`
--
ALTER TABLE `okres_ochrony`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT dla tabeli `ryby`
--
ALTER TABLE `ryby`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `lowisko`
--
ALTER TABLE `lowisko`
  ADD CONSTRAINT `lowisko_ibfk_1` FOREIGN KEY (`ryby_id`) REFERENCES `ryby` (`id`);

--
-- Ograniczenia dla tabeli `okres_ochrony`
--
ALTER TABLE `okres_ochrony`
  ADD CONSTRAINT `okres_ochrony_ibfk_1` FOREIGN KEY (`ryby_id`) REFERENCES `ryby` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
