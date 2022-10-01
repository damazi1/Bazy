-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 06 Wrz 2021, 09:33
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

--
-- Zrzut danych tabeli `budynki`
--

INSERT INTO `budynki` (`id_budynki`, `rodzaj_budynku`, `typ_budynku`, `lokalizacja`, `miasto`, `wlasciciel`, `opis`) VALUES
(2, 'mieszkalny', 'usługowy', 'centrum', NULL, NULL, NULL),
(3, 'użytkowy', 'prywatny', 'obrzeża', NULL, NULL, NULL),
(4, 'willa', 'publiczny', 'dzielnica rzemieślników', NULL, NULL, NULL),
(5, 'pałacyk', 'sklep', 'dzielnica biedoty', NULL, NULL, NULL),
(6, 'warsztat', 'szkoła', 'dzielnica portowa', NULL, NULL, NULL),
(7, 'mieszkalny', 'publiczny', 'dzielnica rzemieślników', NULL, NULL, NULL),
(8, 'mieszkalny', 'prywatny', 'centrum', NULL, NULL, NULL),
(9, 'użytkowy', 'prywatny', 'dzielnica portowa', NULL, NULL, NULL),
(10, 'pałacyk', 'usługowy', 'centrum', NULL, NULL, NULL),
(11, 'willa', 'prywatny', 'dzielnica rzemieślników', NULL, NULL, NULL),
(12, 'mieszkalny', 'sklep', 'dzielnica biedoty', NULL, NULL, NULL),
(13, 'warsztat', 'szkoła', 'dzielnica rzemieślników', NULL, NULL, NULL),
(14, 'użytkowy', 'publiczny', 'dzielnica portowa', NULL, NULL, NULL),
(15, 'pałacyk', 'sklep', 'centrum', NULL, NULL, NULL),
(16, 'pałacyk', 'szkoła', 'dzielnica biedoty', NULL, NULL, NULL),
(17, 'warsztat', 'prywatny', 'dzielnica rzemieślników', NULL, NULL, NULL),
(18, 'warsztat', 'prywatny', 'dzielnica rzemieślników', NULL, NULL, NULL),
(19, 'użytkowy', 'usługowy', 'obrzeża', NULL, NULL, NULL),
(20, 'warsztat', 'sklep', 'centrum', NULL, NULL, NULL),
(21, 'warsztat', 'usługowy', 'dzielnica portowa', NULL, NULL, NULL),
(22, 'willa', 'publiczny', 'dzielnica rzemieślników', NULL, NULL, NULL),
(23, 'warsztat', 'prywatny', 'dzielnica rzemieślników', NULL, NULL, NULL),
(24, 'willa', 'publiczny', 'centrum', NULL, NULL, NULL),
(25, 'pałacyk', 'publiczny', 'obrzeża', NULL, NULL, NULL),
(26, 'użytkowy', 'usługowy', 'centrum', NULL, NULL, NULL),
(27, 'pałacyk', 'publiczny', 'dzielnica biedoty', NULL, NULL, NULL),
(28, 'warsztat', 'szkoła', 'dzielnica rzemieślników', NULL, NULL, NULL),
(29, 'użytkowy', 'publiczny', 'dzielnica rzemieślników', NULL, NULL, NULL),
(30, 'willa', 'sklep', 'dzielnica biedoty', NULL, NULL, NULL),
(31, 'użytkowy', 'szkoła', 'dzielnica portowa', NULL, NULL, NULL),
(32, 'mieszkalny', 'usługowy', 'dzielnica rzemieślników', NULL, NULL, NULL),
(33, 'pałacyk', 'usługowy', 'dzielnica portowa', NULL, NULL, NULL),
(34, 'willa', 'sklep', 'dzielnica portowa', NULL, NULL, NULL),
(35, 'pałacyk', 'szkoła', 'dzielnica biedoty', NULL, NULL, NULL),
(36, 'willa', 'usługowy', 'dzielnica portowa', NULL, NULL, NULL),
(37, 'mieszkalny', 'szkoła', 'centrum', NULL, NULL, NULL),
(38, 'mieszkalny', 'publiczny', 'dzielnica portowa', NULL, NULL, NULL),
(39, 'willa', 'szkoła', 'centrum', NULL, NULL, NULL),
(40, 'użytkowy', 'sklep', 'dzielnica biedoty', NULL, NULL, NULL),
(41, 'mieszkalny', 'prywatny', 'dzielnica portowa', NULL, NULL, NULL),
(42, 'willa', 'publiczny', 'dzielnica biedoty', NULL, NULL, NULL),
(43, 'warsztat', 'szkoła', 'centrum', NULL, NULL, NULL),
(44, 'mieszkalny', 'prywatny', 'obrzeża', NULL, NULL, NULL),
(45, 'pałacyk', 'usługowy', 'obrzeża', NULL, NULL, NULL),
(46, 'mieszkalny', 'prywatny', 'dzielnica biedoty', NULL, NULL, NULL),
(47, 'willa', 'sklep', 'obrzeża', NULL, NULL, NULL),
(48, 'willa', 'usługowy', 'dzielnica portowa', NULL, NULL, NULL),
(49, 'mieszkalny', 'usługowy', 'dzielnica rzemieślników', NULL, NULL, NULL),
(50, 'użytkowy', 'sklep', 'centrum', NULL, NULL, NULL),
(51, 'mieszkalny', 'prywatny', 'centrum', NULL, NULL, NULL),
(52, 'mieszkalny', 'publiczny', 'dzielnica portowa', NULL, NULL, NULL),
(53, 'mieszkalny', 'publiczny', 'centrum', NULL, NULL, NULL),
(54, 'willa', 'sklep', 'dzielnica rzemieślników', NULL, NULL, NULL),
(55, 'warsztat', 'sklep', 'centrum', NULL, NULL, NULL),
(56, 'willa', 'sklep', 'dzielnica rzemieślników', NULL, NULL, NULL),
(57, 'mieszkalny', 'sklep', 'dzielnica rzemieślników', NULL, NULL, NULL),
(58, 'willa', 'sklep', 'obrzeża', NULL, NULL, NULL),
(59, 'willa', 'szkoła', 'centrum', NULL, NULL, NULL),
(60, 'użytkowy', 'publiczny', 'centrum', NULL, NULL, NULL),
(61, 'warsztat', 'publiczny', 'centrum', NULL, NULL, NULL),
(62, 'użytkowy', 'sklep', 'dzielnica rzemieślników', NULL, NULL, NULL),
(63, 'willa', 'prywatny', 'obrzeża', NULL, NULL, NULL),
(64, 'użytkowy', 'sklep', 'obrzeża', NULL, NULL, NULL),
(65, 'warsztat', 'usługowy', 'dzielnica portowa', NULL, NULL, NULL),
(66, 'willa', 'sklep', 'dzielnica biedoty', NULL, NULL, NULL),
(67, 'użytkowy', 'prywatny', 'obrzeża', NULL, NULL, NULL),
(68, 'willa', 'usługowy', 'dzielnica biedoty', NULL, NULL, NULL),
(69, 'mieszkalny', 'sklep', 'dzielnica biedoty', NULL, NULL, NULL),
(70, 'willa', 'sklep', 'dzielnica biedoty', NULL, NULL, NULL),
(71, 'mieszkalny', 'szkoła', 'dzielnica biedoty', NULL, NULL, NULL),
(72, 'warsztat', 'usługowy', 'dzielnica rzemieślników', NULL, NULL, NULL),
(73, 'użytkowy', 'szkoła', 'dzielnica portowa', NULL, NULL, NULL),
(74, 'pałacyk', 'szkoła', 'dzielnica biedoty', NULL, NULL, NULL),
(75, 'mieszkalny', 'sklep', 'dzielnica portowa', NULL, NULL, NULL),
(76, 'warsztat', 'szkoła', 'dzielnica biedoty', NULL, NULL, NULL),
(77, 'mieszkalny', 'szkoła', 'dzielnica biedoty', NULL, NULL, NULL),
(78, 'mieszkalny', 'publiczny', 'dzielnica portowa', NULL, NULL, NULL),
(79, 'mieszkalny', 'publiczny', 'dzielnica biedoty', NULL, NULL, NULL),
(80, 'pałacyk', 'prywatny', 'centrum', NULL, NULL, NULL),
(81, 'pałacyk', 'usługowy', 'obrzeża', NULL, NULL, NULL),
(82, 'pałacyk', 'szkoła', 'dzielnica biedoty', NULL, NULL, NULL),
(83, 'warsztat', 'prywatny', 'obrzeża', NULL, NULL, NULL),
(84, 'willa', 'sklep', 'dzielnica rzemieślników', NULL, NULL, NULL),
(85, 'mieszkalny', 'usługowy', 'obrzeża', NULL, NULL, NULL),
(86, 'willa', 'publiczny', 'centrum', NULL, NULL, NULL),
(87, 'pałacyk', 'prywatny', 'obrzeża', NULL, NULL, NULL),
(88, 'willa', 'publiczny', 'centrum', NULL, NULL, NULL),
(89, 'willa', 'usługowy', 'dzielnica rzemieślników', NULL, NULL, NULL),
(90, 'mieszkalny', 'usługowy', 'dzielnica rzemieślników', NULL, NULL, NULL),
(91, 'willa', 'publiczny', 'dzielnica biedoty', NULL, NULL, NULL),
(92, 'użytkowy', 'sklep', 'centrum', NULL, NULL, NULL),
(93, 'mieszkalny', 'publiczny', 'obrzeża', NULL, NULL, NULL),
(94, 'warsztat', 'sklep', 'dzielnica rzemieślników', NULL, NULL, NULL),
(95, 'willa', 'publiczny', 'centrum', NULL, NULL, NULL),
(96, 'użytkowy', 'szkoła', 'obrzeża', NULL, NULL, NULL),
(97, 'mieszkalny', 'sklep', 'centrum', NULL, NULL, NULL),
(98, 'willa', 'szkoła', 'dzielnica portowa', NULL, NULL, NULL),
(99, 'willa', 'sklep', 'dzielnica biedoty', NULL, NULL, NULL),
(100, 'willa', 'sklep', 'dzielnica rzemieślników', NULL, NULL, NULL),
(101, 'willa', 'sklep', 'dzielnica portowa', NULL, NULL, NULL),
(102, 'willa', 'szkoła', 'dzielnica biedoty', NULL, NULL, NULL),
(103, 'użytkowy', 'sklep', 'obrzeża', NULL, NULL, NULL),
(104, 'mieszkalny', 'szkoła', 'dzielnica rzemieślników', NULL, NULL, NULL),
(105, 'mieszkalny', 'szkoła', 'centrum', NULL, NULL, NULL),
(106, 'warsztat', 'szkoła', 'dzielnica portowa', NULL, NULL, NULL),
(107, 'mieszkalny', 'sklep', 'dzielnica biedoty', NULL, NULL, NULL),
(108, 'warsztat', 'usługowy', 'centrum', NULL, NULL, NULL),
(109, 'pałacyk', 'sklep', 'centrum', NULL, NULL, NULL),
(110, 'użytkowy', 'szkoła', 'obrzeża', NULL, NULL, NULL),
(111, 'willa', 'usługowy', 'dzielnica portowa', NULL, NULL, NULL),
(112, 'mieszkalny', 'publiczny', 'dzielnica biedoty', NULL, NULL, NULL),
(113, 'willa', 'szkoła', 'dzielnica biedoty', NULL, NULL, NULL),
(114, 'pałacyk', 'szkoła', 'dzielnica rzemieślników', NULL, NULL, NULL),
(115, 'willa', 'sklep', 'dzielnica portowa', NULL, NULL, NULL),
(116, 'pałacyk', 'publiczny', 'obrzeża', NULL, NULL, NULL),
(117, 'willa', 'prywatny', 'dzielnica biedoty', NULL, NULL, NULL),
(118, 'użytkowy', 'sklep', 'dzielnica portowa', NULL, NULL, NULL),
(119, 'mieszkalny', 'usługowy', 'dzielnica rzemieślników', NULL, NULL, NULL),
(120, 'warsztat', 'sklep', 'dzielnica portowa', NULL, NULL, NULL),
(121, 'willa', 'sklep', 'dzielnica rzemieślników', NULL, NULL, NULL),
(122, 'warsztat', 'prywatny', 'dzielnica portowa', NULL, NULL, NULL),
(123, 'mieszkalny', 'szkoła', 'obrzeża', NULL, NULL, NULL),
(124, 'willa', 'prywatny', 'dzielnica biedoty', NULL, NULL, NULL),
(125, 'warsztat', 'usługowy', 'obrzeża', NULL, NULL, NULL),
(126, 'mieszkalny', 'sklep', 'centrum', NULL, NULL, NULL),
(127, 'warsztat', 'usługowy', 'centrum', NULL, NULL, NULL),
(128, 'użytkowy', 'prywatny', 'dzielnica portowa', NULL, NULL, NULL),
(129, 'mieszkalny', 'prywatny', 'centrum', NULL, NULL, NULL),
(130, 'willa', 'szkoła', 'dzielnica rzemieślników', NULL, NULL, NULL),
(131, 'willa', 'prywatny', 'dzielnica biedoty', NULL, NULL, NULL),
(132, 'willa', 'publiczny', 'dzielnica portowa', NULL, NULL, NULL),
(133, 'warsztat', 'publiczny', 'dzielnica biedoty', NULL, NULL, NULL),
(134, 'pałacyk', 'sklep', 'dzielnica rzemieślników', NULL, NULL, NULL),
(135, 'użytkowy', 'prywatny', 'obrzeża', NULL, NULL, NULL),
(136, 'willa', 'szkoła', 'dzielnica biedoty', NULL, NULL, NULL),
(137, 'pałacyk', 'usługowy', 'obrzeża', NULL, NULL, NULL),
(138, 'warsztat', 'prywatny', 'obrzeża', NULL, NULL, NULL),
(139, 'mieszkalny', 'szkoła', 'centrum', NULL, NULL, NULL),
(140, 'warsztat', 'usługowy', 'dzielnica portowa', NULL, NULL, NULL),
(141, 'mieszkalny', 'szkoła', 'dzielnica biedoty', NULL, NULL, NULL),
(142, 'mieszkalny', 'sklep', 'dzielnica biedoty', NULL, NULL, NULL),
(143, 'pałacyk', 'publiczny', 'dzielnica biedoty', NULL, NULL, NULL),
(144, 'użytkowy', 'prywatny', 'centrum', NULL, NULL, NULL),
(145, 'willa', 'szkoła', 'dzielnica portowa', NULL, NULL, NULL),
(146, 'warsztat', 'usługowy', 'obrzeża', NULL, NULL, NULL),
(147, 'pałacyk', 'usługowy', 'dzielnica portowa', NULL, NULL, NULL),
(148, 'użytkowy', 'publiczny', 'obrzeża', NULL, NULL, NULL),
(149, 'warsztat', 'sklep', 'obrzeża', NULL, NULL, NULL),
(150, 'użytkowy', 'usługowy', 'obrzeża', NULL, NULL, NULL),
(151, 'użytkowy', 'prywatny', 'dzielnica biedoty', NULL, NULL, NULL),
(152, 'warsztat', 'usługowy', 'centrum', NULL, NULL, NULL),
(153, 'pałacyk', 'publiczny', 'dzielnica rzemieślników', NULL, NULL, NULL),
(154, 'warsztat', 'szkoła', 'dzielnica rzemieślników', NULL, NULL, NULL),
(155, 'willa', 'usługowy', 'obrzeża', NULL, NULL, NULL),
(156, 'warsztat', 'usługowy', 'dzielnica portowa', NULL, NULL, NULL),
(157, 'pałacyk', 'prywatny', 'obrzeża', NULL, NULL, NULL),
(158, 'willa', 'usługowy', 'dzielnica portowa', NULL, NULL, NULL),
(159, 'willa', 'publiczny', 'dzielnica portowa', NULL, NULL, NULL),
(160, 'warsztat', 'szkoła', 'centrum', NULL, NULL, NULL),
(161, 'willa', 'publiczny', 'dzielnica biedoty', NULL, NULL, NULL),
(162, 'mieszkalny', 'sklep', 'obrzeża', NULL, NULL, NULL),
(163, 'willa', 'sklep', 'obrzeża', NULL, NULL, NULL),
(164, 'pałacyk', 'szkoła', 'dzielnica biedoty', NULL, NULL, NULL),
(165, 'pałacyk', 'prywatny', 'dzielnica biedoty', NULL, NULL, NULL),
(166, 'warsztat', 'usługowy', 'obrzeża', NULL, NULL, NULL),
(167, 'warsztat', 'szkoła', 'dzielnica rzemieślników', NULL, NULL, NULL),
(168, 'willa', 'sklep', 'obrzeża', NULL, NULL, NULL),
(169, 'mieszkalny', 'sklep', 'dzielnica rzemieślników', NULL, NULL, NULL),
(170, 'willa', 'publiczny', 'dzielnica biedoty', NULL, NULL, NULL),
(171, 'mieszkalny', 'szkoła', 'centrum', NULL, NULL, NULL),
(172, 'willa', 'prywatny', 'dzielnica biedoty', NULL, NULL, NULL),
(173, 'pałacyk', 'publiczny', 'dzielnica portowa', NULL, NULL, NULL),
(174, 'użytkowy', 'usługowy', 'dzielnica biedoty', NULL, NULL, NULL),
(175, 'warsztat', 'prywatny', 'dzielnica rzemieślników', NULL, NULL, NULL),
(176, 'warsztat', 'usługowy', 'dzielnica portowa', NULL, NULL, NULL),
(177, 'mieszkalny', 'sklep', 'dzielnica portowa', NULL, NULL, NULL),
(178, 'użytkowy', 'prywatny', 'obrzeża', NULL, NULL, NULL),
(179, 'pałacyk', 'usługowy', 'obrzeża', NULL, NULL, NULL),
(180, 'warsztat', 'usługowy', 'dzielnica portowa', NULL, NULL, NULL),
(181, 'warsztat', 'szkoła', 'obrzeża', NULL, NULL, NULL),
(182, 'mieszkalny', 'usługowy', 'dzielnica biedoty', NULL, NULL, NULL),
(183, 'warsztat', 'prywatny', 'dzielnica rzemieślników', NULL, NULL, NULL),
(184, 'willa', 'usługowy', 'dzielnica biedoty', NULL, NULL, NULL),
(185, 'warsztat', 'szkoła', 'dzielnica portowa', NULL, NULL, NULL),
(186, 'pałacyk', 'sklep', 'centrum', NULL, NULL, NULL),
(187, 'warsztat', 'sklep', 'dzielnica portowa', NULL, NULL, NULL),
(188, 'willa', 'publiczny', 'dzielnica biedoty', NULL, NULL, NULL),
(189, 'willa', 'publiczny', 'obrzeża', NULL, NULL, NULL),
(190, 'mieszkalny', 'szkoła', 'obrzeża', NULL, NULL, NULL),
(191, 'warsztat', 'prywatny', 'obrzeża', NULL, NULL, NULL),
(192, 'willa', 'sklep', 'dzielnica rzemieślników', NULL, NULL, NULL),
(193, 'pałacyk', 'prywatny', 'obrzeża', NULL, NULL, NULL),
(194, 'mieszkalny', 'szkoła', 'dzielnica biedoty', NULL, NULL, NULL),
(195, 'użytkowy', 'szkoła', 'dzielnica rzemieślników', NULL, NULL, NULL),
(196, 'mieszkalny', 'prywatny', 'dzielnica rzemieślników', NULL, NULL, NULL),
(197, 'użytkowy', 'szkoła', 'dzielnica biedoty', NULL, NULL, NULL),
(198, 'mieszkalny', 'szkoła', 'obrzeża', NULL, NULL, NULL),
(199, 'użytkowy', 'sklep', 'obrzeża', NULL, NULL, NULL),
(200, 'warsztat', 'prywatny', 'obrzeża', NULL, NULL, NULL),
(201, 'willa', 'publiczny', 'dzielnica biedoty', NULL, NULL, NULL),
(202, 'willa', 'usługowy', 'obrzeża', NULL, NULL, NULL),
(203, 'użytkowy', 'szkoła', 'dzielnica biedoty', NULL, NULL, NULL),
(204, 'warsztat', 'sklep', 'obrzeża', NULL, NULL, NULL),
(205, 'pałacyk', 'publiczny', 'dzielnica rzemieślników', NULL, NULL, NULL),
(206, 'willa', 'usługowy', 'dzielnica biedoty', NULL, NULL, NULL),
(207, 'warsztat', 'prywatny', 'obrzeża', NULL, NULL, NULL),
(208, 'użytkowy', 'usługowy', 'dzielnica biedoty', NULL, NULL, NULL),
(209, 'warsztat', 'prywatny', 'dzielnica rzemieślników', NULL, NULL, NULL),
(210, 'użytkowy', 'publiczny', 'dzielnica rzemieślników', NULL, NULL, NULL),
(211, 'mieszkalny', 'szkoła', 'dzielnica biedoty', NULL, NULL, NULL),
(212, 'warsztat', 'szkoła', 'dzielnica rzemieślników', NULL, NULL, NULL),
(213, 'mieszkalny', 'sklep', 'obrzeża', NULL, NULL, NULL),
(214, 'użytkowy', 'szkoła', 'dzielnica biedoty', NULL, NULL, NULL),
(215, 'mieszkalny', 'usługowy', 'dzielnica biedoty', NULL, NULL, NULL),
(216, 'warsztat', 'sklep', 'centrum', NULL, NULL, NULL),
(217, 'warsztat', 'usługowy', 'dzielnica portowa', NULL, NULL, NULL),
(218, 'willa', 'usługowy', 'dzielnica portowa', NULL, NULL, NULL),
(219, 'mieszkalny', 'publiczny', 'obrzeża', NULL, NULL, NULL),
(220, 'willa', 'sklep', 'centrum', NULL, NULL, NULL),
(221, 'willa', 'usługowy', 'dzielnica portowa', NULL, NULL, NULL),
(222, 'pałacyk', 'publiczny', 'dzielnica biedoty', NULL, NULL, NULL),
(223, 'mieszkalny', 'prywatny', 'dzielnica biedoty', NULL, NULL, NULL),
(224, 'warsztat', 'szkoła', 'dzielnica portowa', NULL, NULL, NULL),
(225, 'mieszkalny', 'usługowy', 'obrzeża', NULL, NULL, NULL),
(226, 'willa', 'usługowy', 'dzielnica biedoty', NULL, NULL, NULL),
(227, 'willa', 'sklep', 'dzielnica biedoty', NULL, NULL, NULL),
(228, 'użytkowy', 'sklep', 'dzielnica portowa', NULL, NULL, NULL),
(229, 'warsztat', 'publiczny', 'dzielnica biedoty', NULL, NULL, NULL),
(230, 'użytkowy', 'publiczny', 'dzielnica portowa', NULL, NULL, NULL),
(231, 'mieszkalny', 'prywatny', 'centrum', NULL, NULL, NULL),
(232, 'willa', 'publiczny', 'dzielnica portowa', NULL, NULL, NULL),
(233, 'willa', 'szkoła', 'dzielnica biedoty', NULL, NULL, NULL),
(234, 'mieszkalny', 'usługowy', 'dzielnica rzemieślników', NULL, NULL, NULL),
(235, 'pałacyk', 'usługowy', 'obrzeża', NULL, NULL, NULL),
(236, 'willa', 'publiczny', 'dzielnica biedoty', NULL, NULL, NULL),
(237, 'użytkowy', 'usługowy', 'obrzeża', NULL, NULL, NULL),
(238, 'warsztat', 'prywatny', 'dzielnica rzemieślników', NULL, NULL, NULL),
(239, 'mieszkalny', 'szkoła', 'obrzeża', NULL, NULL, NULL),
(240, 'pałacyk', 'usługowy', 'dzielnica biedoty', NULL, NULL, NULL),
(241, 'warsztat', 'prywatny', 'centrum', NULL, NULL, NULL),
(242, 'willa', 'sklep', 'dzielnica rzemieślników', NULL, NULL, NULL),
(243, 'warsztat', 'publiczny', 'obrzeża', NULL, NULL, NULL),
(244, 'pałacyk', 'sklep', 'dzielnica portowa', NULL, NULL, NULL),
(245, 'warsztat', 'sklep', 'dzielnica portowa', NULL, NULL, NULL),
(246, 'użytkowy', 'szkoła', 'dzielnica biedoty', NULL, NULL, NULL),
(247, 'mieszkalny', 'usługowy', 'dzielnica biedoty', NULL, NULL, NULL),
(248, 'willa', 'sklep', 'dzielnica portowa', NULL, NULL, NULL),
(249, 'warsztat', 'szkoła', 'obrzeża', NULL, NULL, NULL),
(250, 'willa', 'publiczny', 'dzielnica biedoty', NULL, NULL, NULL),
(251, 'mieszkalny', 'szkoła', 'obrzeża', NULL, NULL, NULL),
(252, 'użytkowy', 'sklep', 'centrum', NULL, NULL, NULL),
(253, 'użytkowy', 'publiczny', 'dzielnica portowa', NULL, NULL, NULL),
(254, 'warsztat', 'publiczny', 'obrzeża', NULL, NULL, NULL),
(255, 'pałacyk', 'prywatny', 'centrum', NULL, NULL, NULL),
(256, 'pałacyk', 'usługowy', 'dzielnica biedoty', NULL, NULL, NULL),
(257, 'willa', 'publiczny', 'dzielnica biedoty', NULL, NULL, NULL),
(258, 'pałacyk', 'prywatny', 'centrum', NULL, NULL, NULL),
(259, 'willa', 'szkoła', 'dzielnica portowa', NULL, NULL, NULL),
(260, 'willa', 'usługowy', 'dzielnica portowa', NULL, NULL, NULL),
(261, 'mieszkalny', 'usługowy', 'dzielnica portowa', NULL, NULL, NULL),
(262, 'warsztat', 'usługowy', 'dzielnica portowa', NULL, NULL, NULL),
(263, 'użytkowy', 'prywatny', 'obrzeża', NULL, NULL, NULL),
(264, 'pałacyk', 'sklep', 'dzielnica rzemieślników', NULL, NULL, NULL),
(265, 'użytkowy', 'prywatny', 'centrum', NULL, NULL, NULL),
(266, 'warsztat', 'sklep', 'obrzeża', NULL, NULL, NULL),
(267, 'warsztat', 'usługowy', 'obrzeża', NULL, NULL, NULL),
(268, 'pałacyk', 'publiczny', 'dzielnica biedoty', NULL, NULL, NULL),
(269, 'mieszkalny', 'prywatny', 'centrum', NULL, NULL, NULL),
(270, 'warsztat', 'szkoła', 'centrum', NULL, NULL, NULL),
(271, 'pałacyk', 'szkoła', 'centrum', NULL, NULL, NULL),
(272, 'willa', 'szkoła', 'dzielnica rzemieślników', NULL, NULL, NULL),
(273, 'warsztat', 'usługowy', 'dzielnica biedoty', NULL, NULL, NULL),
(274, 'willa', 'publiczny', 'dzielnica rzemieślników', NULL, NULL, NULL),
(275, 'mieszkalny', 'szkoła', 'dzielnica portowa', NULL, NULL, NULL),
(276, 'użytkowy', 'prywatny', 'dzielnica rzemieślników', NULL, NULL, NULL),
(277, 'willa', 'usługowy', 'obrzeża', NULL, NULL, NULL),
(278, 'willa', 'publiczny', 'centrum', NULL, NULL, NULL),
(279, 'pałacyk', 'usługowy', 'dzielnica biedoty', NULL, NULL, NULL),
(280, 'użytkowy', 'usługowy', 'dzielnica biedoty', NULL, NULL, NULL),
(281, 'pałacyk', 'szkoła', 'centrum', NULL, NULL, NULL),
(282, 'mieszkalny', 'prywatny', 'dzielnica biedoty', NULL, NULL, NULL),
(283, 'willa', 'usługowy', 'centrum', NULL, NULL, NULL),
(284, 'użytkowy', 'sklep', 'obrzeża', NULL, NULL, NULL),
(285, 'willa', 'usługowy', 'dzielnica portowa', NULL, NULL, NULL),
(286, 'willa', 'sklep', 'centrum', NULL, NULL, NULL),
(287, 'willa', 'prywatny', 'dzielnica rzemieślników', NULL, NULL, NULL),
(288, 'willa', 'szkoła', 'dzielnica biedoty', NULL, NULL, NULL),
(289, 'warsztat', 'publiczny', 'obrzeża', NULL, NULL, NULL),
(290, 'warsztat', 'usługowy', 'obrzeża', NULL, NULL, NULL),
(291, 'użytkowy', 'prywatny', 'dzielnica portowa', NULL, NULL, NULL),
(292, 'pałacyk', 'publiczny', 'dzielnica rzemieślników', NULL, NULL, NULL),
(293, 'willa', 'sklep', 'obrzeża', NULL, NULL, NULL),
(294, 'warsztat', 'publiczny', 'dzielnica portowa', NULL, NULL, NULL),
(295, 'użytkowy', 'szkoła', 'centrum', NULL, NULL, NULL),
(296, 'willa', 'sklep', 'centrum', NULL, NULL, NULL),
(297, 'mieszkalny', 'publiczny', 'centrum', NULL, NULL, NULL),
(298, 'mieszkalny', 'sklep', 'dzielnica portowa', NULL, NULL, NULL),
(299, 'mieszkalny', 'szkoła', 'dzielnica rzemieślników', NULL, NULL, NULL),
(300, 'pałacyk', 'usługowy', 'centrum', NULL, NULL, NULL),
(301, 'pałacyk', 'prywatny', 'obrzeża', NULL, NULL, NULL),
(302, 'mieszkalny', 'usługowy', 'dzielnica portowa', NULL, NULL, NULL),
(303, 'willa', 'szkoła', 'centrum', NULL, NULL, NULL),
(304, 'warsztat', 'sklep', 'dzielnica biedoty', NULL, NULL, NULL),
(305, 'mieszkalny', 'sklep', 'centrum', NULL, NULL, NULL),
(306, 'pałacyk', 'publiczny', 'dzielnica portowa', NULL, NULL, NULL),
(307, 'pałacyk', 'szkoła', 'obrzeża', NULL, NULL, NULL),
(308, 'warsztat', 'szkoła', 'obrzeża', NULL, NULL, NULL),
(309, 'użytkowy', 'publiczny', 'dzielnica biedoty', NULL, NULL, NULL),
(310, 'warsztat', 'usługowy', 'dzielnica portowa', NULL, NULL, NULL),
(311, 'mieszkalny', 'sklep', 'centrum', NULL, NULL, NULL),
(312, 'warsztat', 'sklep', 'dzielnica portowa', NULL, NULL, NULL),
(313, 'warsztat', 'prywatny', 'dzielnica biedoty', NULL, NULL, NULL),
(314, 'pałacyk', 'szkoła', 'dzielnica biedoty', NULL, NULL, NULL),
(315, 'mieszkalny', 'publiczny', 'centrum', NULL, NULL, NULL),
(316, 'pałacyk', 'usługowy', 'dzielnica rzemieślników', NULL, NULL, NULL),
(317, 'pałacyk', 'prywatny', 'dzielnica biedoty', NULL, NULL, NULL),
(318, 'mieszkalny', 'prywatny', 'obrzeża', NULL, NULL, NULL),
(319, 'pałacyk', 'sklep', 'dzielnica portowa', NULL, NULL, NULL),
(320, 'mieszkalny', 'sklep', 'dzielnica rzemieślników', NULL, NULL, NULL),
(321, 'mieszkalny', 'sklep', 'obrzeża', NULL, NULL, NULL),
(322, 'willa', 'sklep', 'centrum', NULL, NULL, NULL),
(323, 'użytkowy', 'prywatny', 'obrzeża', NULL, NULL, NULL),
(324, 'willa', 'szkoła', 'centrum', NULL, NULL, NULL),
(325, 'warsztat', 'usługowy', 'dzielnica rzemieślników', NULL, NULL, NULL),
(326, 'mieszkalny', 'publiczny', 'dzielnica portowa', NULL, NULL, NULL),
(327, 'pałacyk', 'sklep', 'dzielnica portowa', NULL, NULL, NULL),
(328, 'mieszkalny', 'usługowy', 'centrum', NULL, NULL, NULL),
(329, 'willa', 'publiczny', 'dzielnica rzemieślników', NULL, NULL, NULL),
(330, 'warsztat', 'sklep', 'dzielnica biedoty', NULL, NULL, NULL),
(331, 'warsztat', 'publiczny', 'dzielnica biedoty', NULL, NULL, NULL),
(332, 'warsztat', 'szkoła', 'dzielnica rzemieślników', NULL, NULL, NULL),
(333, 'warsztat', 'usługowy', 'dzielnica biedoty', NULL, NULL, NULL),
(334, 'mieszkalny', 'usługowy', 'obrzeża', NULL, NULL, NULL),
(335, 'użytkowy', 'prywatny', 'dzielnica biedoty', NULL, NULL, NULL),
(336, 'willa', 'usługowy', 'centrum', NULL, NULL, NULL),
(337, 'użytkowy', 'prywatny', 'obrzeża', NULL, NULL, NULL),
(338, 'mieszkalny', 'prywatny', 'dzielnica biedoty', NULL, NULL, NULL),
(339, 'użytkowy', 'sklep', 'centrum', NULL, NULL, NULL),
(340, 'użytkowy', 'szkoła', 'dzielnica biedoty', NULL, NULL, NULL),
(341, 'pałacyk', 'prywatny', 'dzielnica biedoty', NULL, NULL, NULL),
(342, 'użytkowy', 'szkoła', 'obrzeża', NULL, NULL, NULL),
(343, 'warsztat', 'usługowy', 'dzielnica portowa', NULL, NULL, NULL),
(344, 'użytkowy', 'sklep', 'dzielnica biedoty', NULL, NULL, NULL),
(345, 'pałacyk', 'szkoła', 'dzielnica portowa', NULL, NULL, NULL),
(346, 'użytkowy', 'publiczny', 'dzielnica biedoty', NULL, NULL, NULL),
(347, 'użytkowy', 'prywatny', 'dzielnica portowa', NULL, NULL, NULL),
(348, 'willa', 'usługowy', 'obrzeża', NULL, NULL, NULL),
(349, 'użytkowy', 'szkoła', 'centrum', NULL, NULL, NULL),
(350, 'mieszkalny', 'prywatny', 'dzielnica portowa', NULL, NULL, NULL),
(351, 'pałacyk', 'publiczny', 'dzielnica rzemieślników', NULL, NULL, NULL),
(352, 'warsztat', 'publiczny', 'dzielnica rzemieślników', NULL, NULL, NULL),
(353, 'willa', 'prywatny', 'centrum', NULL, NULL, NULL),
(354, 'pałacyk', 'szkoła', 'dzielnica portowa', NULL, NULL, NULL),
(355, 'użytkowy', 'usługowy', 'dzielnica rzemieślników', NULL, NULL, NULL),
(356, 'warsztat', 'usługowy', 'obrzeża', NULL, NULL, NULL),
(357, 'willa', 'usługowy', 'dzielnica biedoty', NULL, NULL, NULL),
(358, 'pałacyk', 'publiczny', 'centrum', NULL, NULL, NULL),
(359, 'użytkowy', 'sklep', 'dzielnica rzemieślników', NULL, NULL, NULL),
(360, 'pałacyk', 'prywatny', 'obrzeża', NULL, NULL, NULL),
(361, 'willa', 'publiczny', 'dzielnica portowa', NULL, NULL, NULL),
(362, 'użytkowy', 'sklep', 'dzielnica rzemieślników', NULL, NULL, NULL),
(363, 'willa', 'prywatny', 'dzielnica rzemieślników', NULL, NULL, NULL),
(364, 'pałacyk', 'usługowy', 'dzielnica portowa', NULL, NULL, NULL),
(365, 'użytkowy', 'sklep', 'dzielnica portowa', NULL, NULL, NULL),
(366, 'warsztat', 'usługowy', 'centrum', NULL, NULL, NULL),
(367, 'mieszkalny', 'publiczny', 'dzielnica biedoty', NULL, NULL, NULL),
(368, 'warsztat', 'publiczny', 'dzielnica portowa', NULL, NULL, NULL),
(369, 'mieszkalny', 'publiczny', 'centrum', NULL, NULL, NULL),
(370, 'warsztat', 'szkoła', 'centrum', NULL, NULL, NULL),
(371, 'mieszkalny', 'sklep', 'centrum', NULL, NULL, NULL),
(372, 'użytkowy', 'publiczny', 'obrzeża', NULL, NULL, NULL),
(373, 'użytkowy', 'publiczny', 'dzielnica biedoty', NULL, NULL, NULL),
(374, 'mieszkalny', 'sklep', 'dzielnica rzemieślników', NULL, NULL, NULL),
(375, 'użytkowy', 'usługowy', 'dzielnica portowa', NULL, NULL, NULL),
(376, 'warsztat', 'usługowy', 'centrum', NULL, NULL, NULL),
(377, 'pałacyk', 'usługowy', 'dzielnica rzemieślników', NULL, NULL, NULL),
(378, 'mieszkalny', 'publiczny', 'obrzeża', NULL, NULL, NULL),
(379, 'willa', 'usługowy', 'dzielnica rzemieślników', NULL, NULL, NULL),
(380, 'pałacyk', 'publiczny', 'obrzeża', NULL, NULL, NULL),
(381, 'pałacyk', 'prywatny', 'centrum', NULL, NULL, NULL),
(382, 'użytkowy', 'publiczny', 'dzielnica biedoty', NULL, NULL, NULL),
(383, 'warsztat', 'sklep', 'dzielnica portowa', NULL, NULL, NULL),
(384, 'warsztat', 'sklep', 'dzielnica rzemieślników', NULL, NULL, NULL),
(385, 'użytkowy', 'publiczny', 'obrzeża', NULL, NULL, NULL),
(386, 'warsztat', 'szkoła', 'centrum', NULL, NULL, NULL),
(387, 'pałacyk', 'szkoła', 'dzielnica portowa', NULL, NULL, NULL),
(388, 'warsztat', 'publiczny', 'obrzeża', NULL, NULL, NULL),
(389, 'użytkowy', 'prywatny', 'dzielnica portowa', NULL, NULL, NULL),
(390, 'willa', 'sklep', 'dzielnica biedoty', NULL, NULL, NULL),
(391, 'użytkowy', 'usługowy', 'obrzeża', NULL, NULL, NULL),
(392, 'użytkowy', 'publiczny', 'centrum', NULL, NULL, NULL),
(393, 'willa', 'szkoła', 'dzielnica portowa', NULL, NULL, NULL),
(394, 'użytkowy', 'prywatny', 'centrum', NULL, NULL, NULL),
(395, 'użytkowy', 'prywatny', 'dzielnica portowa', NULL, NULL, NULL),
(396, 'użytkowy', 'sklep', 'dzielnica portowa', NULL, NULL, NULL),
(397, 'pałacyk', 'prywatny', 'dzielnica rzemieślników', NULL, NULL, NULL),
(398, 'mieszkalny', 'usługowy', 'dzielnica rzemieślników', NULL, NULL, NULL),
(399, 'warsztat', 'prywatny', 'dzielnica rzemieślników', NULL, NULL, NULL),
(400, 'willa', 'usługowy', 'obrzeża', NULL, NULL, NULL),
(401, 'użytkowy', 'prywatny', 'obrzeża', NULL, NULL, NULL),
(402, 'pałacyk', 'publiczny', 'dzielnica biedoty', NULL, NULL, NULL),
(403, 'użytkowy', 'usługowy', 'dzielnica portowa', NULL, NULL, NULL),
(404, 'pałacyk', 'sklep', 'dzielnica biedoty', NULL, NULL, NULL),
(405, 'mieszkalny', 'sklep', 'dzielnica rzemieślników', NULL, NULL, NULL),
(406, 'mieszkalny', 'szkoła', 'dzielnica biedoty', NULL, NULL, NULL),
(407, 'mieszkalny', 'usługowy', 'dzielnica biedoty', NULL, NULL, NULL),
(408, 'mieszkalny', 'sklep', 'dzielnica biedoty', NULL, NULL, NULL),
(409, 'użytkowy', 'usługowy', 'dzielnica rzemieślników', NULL, NULL, NULL),
(410, 'pałacyk', 'publiczny', 'dzielnica biedoty', NULL, NULL, NULL),
(411, 'pałacyk', 'publiczny', 'dzielnica portowa', NULL, NULL, NULL),
(412, 'willa', 'szkoła', 'centrum', NULL, NULL, NULL),
(413, 'mieszkalny', 'sklep', 'centrum', NULL, NULL, NULL),
(414, 'willa', 'usługowy', 'dzielnica portowa', NULL, NULL, NULL),
(415, 'willa', 'sklep', 'dzielnica biedoty', NULL, NULL, NULL),
(416, 'warsztat', 'usługowy', 'dzielnica biedoty', NULL, NULL, NULL),
(417, 'warsztat', 'szkoła', 'dzielnica biedoty', NULL, NULL, NULL),
(418, 'pałacyk', 'szkoła', 'centrum', NULL, NULL, NULL),
(419, 'użytkowy', 'usługowy', 'dzielnica rzemieślników', NULL, NULL, NULL),
(420, 'willa', 'publiczny', 'dzielnica portowa', NULL, NULL, NULL),
(421, 'willa', 'usługowy', 'dzielnica biedoty', NULL, NULL, NULL),
(422, 'użytkowy', 'prywatny', 'centrum', NULL, NULL, NULL),
(423, 'mieszkalny', 'sklep', 'dzielnica portowa', NULL, NULL, NULL),
(424, 'willa', 'usługowy', 'obrzeża', NULL, NULL, NULL),
(425, 'pałacyk', 'usługowy', 'dzielnica portowa', NULL, NULL, NULL),
(426, 'warsztat', 'szkoła', 'dzielnica portowa', NULL, NULL, NULL),
(427, 'mieszkalny', 'sklep', 'dzielnica portowa', NULL, NULL, NULL),
(428, 'warsztat', 'publiczny', 'dzielnica portowa', NULL, NULL, NULL),
(429, 'pałacyk', 'usługowy', 'dzielnica rzemieślników', NULL, NULL, NULL),
(430, 'warsztat', 'sklep', 'obrzeża', NULL, NULL, NULL),
(431, 'willa', 'prywatny', 'obrzeża', NULL, NULL, NULL),
(432, 'mieszkalny', 'usługowy', 'obrzeża', NULL, NULL, NULL),
(433, 'użytkowy', 'sklep', 'obrzeża', NULL, NULL, NULL),
(434, 'mieszkalny', 'usługowy', 'centrum', NULL, NULL, NULL),
(435, 'mieszkalny', 'publiczny', 'dzielnica portowa', NULL, NULL, NULL),
(436, 'użytkowy', 'usługowy', 'centrum', NULL, NULL, NULL),
(437, 'pałacyk', 'sklep', 'dzielnica portowa', NULL, NULL, NULL),
(438, 'pałacyk', 'usługowy', 'obrzeża', NULL, NULL, NULL),
(439, 'użytkowy', 'publiczny', 'centrum', NULL, NULL, NULL),
(440, 'mieszkalny', 'prywatny', 'dzielnica rzemieślników', NULL, NULL, NULL),
(441, 'użytkowy', 'szkoła', 'obrzeża', NULL, NULL, NULL),
(442, 'pałacyk', 'prywatny', 'obrzeża', NULL, NULL, NULL),
(443, 'mieszkalny', 'prywatny', 'dzielnica rzemieślników', NULL, NULL, NULL),
(444, 'mieszkalny', 'publiczny', 'dzielnica biedoty', NULL, NULL, NULL),
(445, 'użytkowy', 'sklep', 'obrzeża', NULL, NULL, NULL),
(446, 'willa', 'usługowy', 'obrzeża', NULL, NULL, NULL),
(447, 'mieszkalny', 'usługowy', 'dzielnica rzemieślników', NULL, NULL, NULL),
(448, 'mieszkalny', 'usługowy', 'dzielnica biedoty', NULL, NULL, NULL),
(449, 'mieszkalny', 'usługowy', 'dzielnica portowa', NULL, NULL, NULL),
(450, 'mieszkalny', 'prywatny', 'dzielnica biedoty', NULL, NULL, NULL),
(451, 'mieszkalny', 'prywatny', 'dzielnica portowa', NULL, NULL, NULL),
(452, 'willa', 'publiczny', 'dzielnica portowa', NULL, NULL, NULL),
(453, 'willa', 'prywatny', 'dzielnica biedoty', NULL, NULL, NULL),
(454, 'willa', 'sklep', 'centrum', NULL, NULL, NULL),
(455, 'warsztat', 'publiczny', 'dzielnica biedoty', NULL, NULL, NULL),
(456, 'użytkowy', 'szkoła', 'obrzeża', NULL, NULL, NULL),
(457, 'warsztat', 'usługowy', 'dzielnica biedoty', NULL, NULL, NULL),
(458, 'warsztat', 'usługowy', 'dzielnica portowa', NULL, NULL, NULL),
(459, 'warsztat', 'prywatny', 'dzielnica biedoty', NULL, NULL, NULL),
(460, 'pałacyk', 'publiczny', 'dzielnica biedoty', NULL, NULL, NULL),
(461, 'użytkowy', 'usługowy', 'centrum', NULL, NULL, NULL),
(462, 'willa', 'szkoła', 'dzielnica portowa', NULL, NULL, NULL),
(463, 'willa', 'szkoła', 'dzielnica biedoty', NULL, NULL, NULL),
(464, 'pałacyk', 'publiczny', 'dzielnica rzemieślników', NULL, NULL, NULL),
(465, 'warsztat', 'publiczny', 'obrzeża', NULL, NULL, NULL),
(466, 'pałacyk', 'publiczny', 'centrum', NULL, NULL, NULL),
(467, 'warsztat', 'usługowy', 'dzielnica portowa', NULL, NULL, NULL),
(468, 'użytkowy', 'usługowy', 'dzielnica rzemieślników', NULL, NULL, NULL),
(469, 'użytkowy', 'prywatny', 'dzielnica portowa', NULL, NULL, NULL),
(470, 'willa', 'sklep', 'dzielnica biedoty', NULL, NULL, NULL),
(471, 'pałacyk', 'publiczny', 'dzielnica biedoty', NULL, NULL, NULL),
(472, 'użytkowy', 'publiczny', 'dzielnica portowa', NULL, NULL, NULL),
(473, 'willa', 'szkoła', 'dzielnica portowa', NULL, NULL, NULL),
(474, 'użytkowy', 'sklep', 'obrzeża', NULL, NULL, NULL),
(475, 'użytkowy', 'prywatny', 'dzielnica portowa', NULL, NULL, NULL),
(476, 'warsztat', 'usługowy', 'dzielnica portowa', NULL, NULL, NULL),
(477, 'willa', 'sklep', 'obrzeża', NULL, NULL, NULL),
(478, 'pałacyk', 'sklep', 'dzielnica rzemieślników', NULL, NULL, NULL),
(479, 'użytkowy', 'sklep', 'dzielnica portowa', NULL, NULL, NULL),
(480, 'warsztat', 'prywatny', 'centrum', NULL, NULL, NULL),
(481, 'warsztat', 'sklep', 'centrum', NULL, NULL, NULL),
(482, 'mieszkalny', 'usługowy', 'obrzeża', NULL, NULL, NULL),
(483, 'użytkowy', 'prywatny', 'dzielnica biedoty', NULL, NULL, NULL),
(484, 'pałacyk', 'publiczny', 'dzielnica rzemieślników', NULL, NULL, NULL),
(485, 'mieszkalny', 'usługowy', 'obrzeża', NULL, NULL, NULL),
(486, 'warsztat', 'sklep', 'dzielnica biedoty', NULL, NULL, NULL),
(487, 'użytkowy', 'szkoła', 'dzielnica rzemieślników', NULL, NULL, NULL),
(488, 'pałacyk', 'publiczny', 'dzielnica rzemieślników', NULL, NULL, NULL),
(489, 'pałacyk', 'usługowy', 'obrzeża', NULL, NULL, NULL),
(490, 'warsztat', 'szkoła', 'centrum', NULL, NULL, NULL),
(491, 'pałacyk', 'prywatny', 'dzielnica rzemieślników', NULL, NULL, NULL),
(492, 'pałacyk', 'publiczny', 'dzielnica portowa', NULL, NULL, NULL),
(493, 'pałacyk', 'prywatny', 'obrzeża', NULL, NULL, NULL),
(494, 'pałacyk', 'szkoła', 'centrum', NULL, NULL, NULL),
(495, 'willa', 'sklep', 'dzielnica portowa', NULL, NULL, NULL),
(496, 'willa', 'szkoła', 'centrum', NULL, NULL, NULL),
(497, 'mieszkalny', 'prywatny', 'dzielnica biedoty', NULL, NULL, NULL),
(498, 'pałacyk', 'usługowy', 'centrum', NULL, NULL, NULL),
(499, 'mieszkalny', 'sklep', 'dzielnica rzemieślników', NULL, NULL, NULL),
(500, 'mieszkalny', 'publiczny', 'centrum', NULL, NULL, NULL),
(501, 'mieszkalny', 'usługowy', 'centrum', NULL, NULL, NULL);

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

--
-- Zrzut danych tabeli `bóstwa`
--

INSERT INTO `bóstwa` (`id_bostwa`, `nazwa`, `dary`, `przeklenstwa`, `charakter`, `opis`) VALUES
(2, 'Cudon', 'Siła +2/poziom', '-30% samopoczucie', NULL, NULL),
(3, 'Gibdros', 'Tężyzna +3%', '-10% doświadczenia', NULL, NULL),
(4, 'Upmes', 'Zręczność +1/poziom', 'neguje smocza siła', NULL, NULL),
(5, 'Sypton', 'Wiedza +2%,Inteligencja +1%', 'neguje źródło magii', NULL, NULL),
(6, 'Adur', 'Siła woli +5/co 3 poziomy', '-20% siła woli', NULL, NULL),
(7, 'Luton', 'Zręczność +3%', 'neguje skradanie', NULL, NULL),
(8, 'Magaldir', 'Siła woli +5%', 'neguje kradzież', NULL, NULL),
(9, 'Eesis', 'Inteligencja +3/na 2 poziomy', '-40% inteligencja', NULL, NULL),
(10, 'Ukjun', 'Siła +3%,Zręczność+1,5%', '-60% zasadzka', NULL, NULL),
(11, 'Pinas', 'Poziom życia +2%', '-5% poziom mana', NULL, NULL),
(12, 'Titrix', 'Poziom mana +1,5%', '-5% poziom życia', NULL, NULL),
(13, 'Utrix', 'Siła czarów +2/poziom', '-10% inteligencja', NULL, NULL),
(14, 'Iruna', 'Poziom życia +1%,Siła woli +1/poziom', 'neguje dowodzenie', NULL, NULL),
(15, 'Kuarae', 'Doświadczenie +2%', '-20 inteligencja', NULL, NULL),
(16, 'Ytris', 'Złoto +5%', '-40% szczęście', NULL, NULL),
(17, 'Ryneas', 'Umiejętność urok +5%', 'neguje urok', NULL, NULL),
(18, 'Oyja', 'Umiejętność skradanie +5%', '-30% negocjacje', NULL, NULL),
(19, 'Yfone', 'Siłą czarów + 5%', 'negacja boskich darów', NULL, NULL),
(20, 'Ypphion', 'Umiejętność szczęście +5%', '-5% wiedza', NULL, NULL),
(21, 'Cydia', 'Umiejętność negocjacji +5%', '-5% tężyzna', NULL, NULL),
(22, 'Brak', '+20 siła woli, +20 inteligencja', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `charaktery`
--

DROP TABLE IF EXISTS `charaktery`;
CREATE TABLE `charaktery` (
  `id_charaktery` int(11) NOT NULL,
  `charaktery` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `charaktery`
--

INSERT INTO `charaktery` (`id_charaktery`, `charaktery`) VALUES
(1, 'Dobry'),
(2, 'Chaotyczny'),
(3, 'Neutralny'),
(4, 'Zły'),
(5, 'Praworządny');

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

--
-- Zrzut danych tabeli `czary`
--

INSERT INTO `czary` (`id_czary`, `nazwa`, `wymaga`, `koszt`, `efekt`, `opis`) VALUES
(1, 'Nazwa', 'Wymaga ', 'Koszt (mana)', 'Efekt', 'Opis'),
(2, 'Pyro Assault', 'Magia przyrody', '49+2/poziom', NULL, NULL),
(3, 'Hellfire Blaze', 'Magia powietrza', '19+4/poziom', NULL, NULL),
(4, 'Lava Whip', 'Magia powietrza', '6+10/poziom', NULL, NULL),
(5, 'Divinity', 'Magia przyrody', '43+7/poziom', NULL, NULL),
(6, 'Tidal Wave', 'Magia ognia', '43+2/poziom', NULL, NULL),
(7, 'Burst of Elemental Rage', 'Magia powietrza', '40+2/poziom', NULL, NULL),
(8, 'Orb of Spirits', 'Magia przyrody', '7+7/poziom', NULL, NULL),
(9, 'Void of the Arcane', 'Magia ziemi', '39+7/poziom', NULL, NULL),
(10, 'Putrefaction Hymn', 'Magia wody', '26+5/poziom', NULL, NULL),
(11, 'Metamorphosis of Defense', 'Magia wody', '20+10/poziom', NULL, NULL),
(12, 'Shadow Assault', 'Magia przyrody', '38+3/poziom', NULL, NULL),
(13, 'Thunder Flux', 'Magia ziemi', '47+7/poziom', NULL, NULL),
(14, 'Molten Bolt', 'Magia przyrody', '36+5/poziom', NULL, NULL),
(15, 'Kindle Life', 'Magia ognia', '5+6/poziom', NULL, NULL),
(16, 'Kindle Life', 'Magia umysłu', '34+3/poziom', NULL, NULL),
(17, 'Calling of Magic Disruption', 'Magia powietrza', '40+8/poziom', NULL, NULL),
(18, 'Ring of Celestial Focus', 'Magia ziemi', '40+4/poziom', NULL, NULL),
(19, 'Disruption of Failures', 'Magia wody', '20+3/poziom', NULL, NULL),
(20, 'Absorption of Glory', 'Magia ognia', '38+6/poziom', NULL, NULL),
(21, 'Delay Flare ', 'Magia wody', '30+2/poziom', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `dane postaci w grze (gracze)`
--

DROP TABLE IF EXISTS `dane postaci w grze (gracze)`;
CREATE TABLE `dane postaci w grze (gracze)` (
  `id_dane_graczy` int(11) NOT NULL,
  `imie/imiona` varchar(30) DEFAULT NULL,
  `unikatowa_zdolnosc` varchar(18) DEFAULT NULL,
  `sila` varchar(4) DEFAULT NULL,
  `zrecznosc` varchar(9) DEFAULT NULL,
  `sila_czarow` varchar(11) DEFAULT NULL,
  `tezyzna` varchar(7) DEFAULT NULL,
  `wiedza` varchar(6) DEFAULT NULL,
  `inteligencja` varchar(12) DEFAULT NULL,
  `sila_woli` varchar(9) DEFAULT NULL,
  `sila_zycia` varchar(12) DEFAULT NULL,
  `poziom_many` varchar(11) DEFAULT NULL,
  `rasa` int(11) DEFAULT NULL,
  `plec` varchar(4) DEFAULT NULL,
  `wyznawane_bostwo` int(11) DEFAULT NULL,
  `charakter` int(11) DEFAULT NULL,
  `punkty_doswiadczenia` varchar(20) DEFAULT NULL,
  `poziom` varchar(6) DEFAULT NULL,
  `wiek` varchar(4) DEFAULT NULL,
  `biografia` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `dane postaci w grze (gracze)`
--

INSERT INTO `dane postaci w grze (gracze)` (`id_dane_graczy`, `imie/imiona`, `unikatowa_zdolnosc`, `sila`, `zrecznosc`, `sila_czarow`, `tezyzna`, `wiedza`, `inteligencja`, `sila_woli`, `sila_zycia`, `poziom_many`, `rasa`, `plec`, `wyznawane_bostwo`, `charakter`, `punkty_doswiadczenia`, `poziom`, `wiek`, `biografia`) VALUES
(2, 'Curtis \'the Brains\' Harmon', 'Smoczy duch', '20', '23', '19', '23', '18', '14', '25', '2046', '19762', NULL, 'M', NULL, NULL, '96901', '31', '55', NULL),
(3, 'Johnnie \'Gold Tooth\' Gregory', 'Magia powietrza', '27', '23', '14', '15', '16', '15', '18', '2795', '17415', NULL, 'K', NULL, NULL, '185072', '43', '25', NULL),
(4, 'Roland \'Songbird\' Gates', 'Walka wręcz', '19', '11', '18', '22', '11', '15', '20', '416', '3520', NULL, 'M', NULL, NULL, '7026', '8', '29', NULL),
(5, 'Fred \'Dust Devil\' Bowers', 'Negocjacja', '32', '25', '31', '24', '13', '17', '30', '2106', '23790', NULL, 'K', NULL, NULL, '68452', '26', '39', NULL),
(6, 'Jerry \'Truth\' Graves', 'Magia umysłu', '15', '9', '17', '19', '7', '12', '11', '2494', '11484', NULL, 'M', NULL, NULL, '336638', '58', '41', NULL),
(7, 'Simon \'Evil\' Crane', 'Magia umysłu', '31', '17', '28', '31', '24', '23', '23', '1817', '19837', NULL, 'M', NULL, NULL, '53039', '23', '66', NULL),
(8, 'Maurice \'Flannel Mouth\' Lowery', 'Zasadzka', '14', '15', '29', '12', '16', '20', '17', '3895', '52487', NULL, 'K', NULL, NULL, '903349', '95', '20', NULL),
(9, 'Horace \'Mystery\' Richards', 'Walka wręcz', '21', '10', '21', '26', '28', '17', '11', '3705', '23595', NULL, 'M', NULL, NULL, '422615', '65', '44', NULL),
(10, 'Hubert \'Hollow\' Hooper', 'Zasadzka', '11', '11', '21', '6', '7', '8', '7', '1232', '5544', NULL, 'K', NULL, NULL, '194547', '44', '55', NULL),
(11, 'Lee \'the Merciful\' Murphy', 'Magia wody', '19', '13', '15', '13', '14', '25', '26', '1395', '21762', NULL, 'K', NULL, NULL, '96383', '31', '25', NULL),
(12, 'Eleanor \'Hallow\' Simon', 'Magia przyrody', '13', '18', '13', '17', '9', '9', '17', '3456', '18972', NULL, 'M', NULL, NULL, '518814', '72', '51', NULL),
(13, 'May \'Painkiller\' White', 'Oburęczność', '16', '14', '22', '15', '12', '8', '22', '3150', '32340', NULL, 'M', NULL, NULL, '490033', '70', '24', NULL),
(14, 'Marion \'the Loner\' Price', 'Zawadiaka', '31', '32', '21', '18', '26', '24', '19', '567', '4721', NULL, 'M', NULL, NULL, '4986', '7', '36', NULL),
(15, 'Millie \'the Oaf\' Cobb', 'Urok', '19', '14', '19', '19', '9', '9', '29', '4628', '47748', NULL, 'K', NULL, NULL, '792865', '89', '49', NULL),
(16, 'Helen \'the Bully\' McClure', 'Urok', '22', '22', '20', '7', '23', '5', '23', '3213', '34776', NULL, 'K', NULL, NULL, '397708', '63', '62', NULL),
(17, 'Inez \'the Cheat\' Clark', 'Logistyka', '25', '27', '15', '26', '14', '10', '28', '1794', '12558', NULL, 'M', NULL, NULL, '53600', '23', '38', NULL),
(18, 'Bernice \'Poker Face\' Peters', 'Magia ziemi', '14', '17', '23', '28', '10', '26', '25', '2124', '26550', NULL, 'M', NULL, NULL, '129971', '36', '43', NULL),
(19, 'Bettie \'No Teeth\' George', 'Magia wody', '16', '16', '8', '10', '17', '23', '10', '756', '4320', NULL, 'M', NULL, NULL, '32879', '18', '51', NULL),
(20, 'Rena \'Wager\' Clayton', 'Magia powietrza', '24', '24', '30', '26', '32', '29', '27', '3256', '54054', NULL, 'M', NULL, NULL, '194533', '44', '64', NULL),
(21, 'Amanda \'Eucher\' Johnson', 'Źródło magii', '22', '8', '4', '11', '8', '4', '16', '2788', '8704', NULL, 'K', NULL, NULL, '462732', '68', '40', NULL),
(22, 'Marion \'the Loner\' Price', 'Modlitwa', '5', '2', '11', '7', '20', '8', '14', '420', '8190', NULL, 'M', NULL, NULL, '90987', '30', '44', NULL),
(23, 'Rena \'Wager\' Clayton', 'Magia wody', '15', '12', '11', '20', '17', '7', '14', '47', '245', NULL, 'K', NULL, NULL, '866', '1', '62', NULL),
(24, 'Helen \'the Bully\' McClure', 'Skradanie ', '13', '21', '20', '11', '25', '13', '17', '2250', '24650', NULL, 'M', NULL, NULL, '250183', '50', '69', NULL),
(25, 'Simon \'Evil\' Crane', 'Dobre samopoczucie', '19', '18', '10', '10', '22', '22', '10', '2068', '11880', NULL, 'M', NULL, NULL, '193904', '44', '21', NULL),
(26, 'Rena \'Wager\' Clayton', 'Negocjacja', '9', '19', '11', '17', '13', '17', '18', '360', '2952', NULL, 'M', NULL, NULL, '6525', '8', '41', NULL),
(27, 'Johnnie \'Gold Tooth\' Gregory', 'Magia wody', '13', '11', '13', '14', '13', '10', '21', '2052', '20412', NULL, 'K', NULL, NULL, '292292', '54', '33', NULL),
(28, 'Millie \'the Oaf\' Cobb', 'Negocjacja', '21', '24', '12', '25', '31', '25', '25', '7000', '85000', NULL, 'K', NULL, NULL, '1000767', '100', '37', NULL),
(29, 'Jerry \'Truth\' Graves', 'Modlitwa', '22', '25', '15', '18', '12', '15', '22', '3055', '21714', NULL, 'M', NULL, NULL, '221591', '47', '29', NULL),
(30, 'Simon \'Evil\' Crane', 'Magia ziemi', '13', '30', '22', '18', '27', '19', '22', '2562', '31416', NULL, 'M', NULL, NULL, '176662', '42', '62', NULL),
(31, 'Rena \'Wager\' Clayton', 'Szczęście', '22', '9', '5', '8', '10', '4', '15', '1833', '6697', NULL, 'M', NULL, NULL, '221367', '47', '24', NULL),
(32, 'Amanda \'Eucher\' Johnson', 'Magia powietrza', '9', '8', '9', '11', '10', '12', '19', '588', '6184', NULL, 'K', NULL, NULL, '44710', '21', '41', NULL),
(33, 'Jerry \'Truth\' Graves', 'Walka tarczą', '12', '24', '17', '16', '20', '26', '20', '312', '3780', NULL, 'M', NULL, NULL, '3899', '6', '25', NULL),
(34, 'Curtis \'the Brains\' Harmon', 'Oburęczność', '16', '11', '12', '9', '6', '13', '6', '612', '1581', NULL, 'K', NULL, NULL, '29414', '17', '57', NULL),
(35, 'Amanda \'Eucher\' Johnson', 'Szczęście', '20', '14', '10', '20', '17', '5', '14', '1188', '4928', NULL, 'K', NULL, NULL, '48689', '22', '65', NULL),
(36, 'Bernice \'Poker Face\' Peters', 'Źródło magii', '31', '29', '22', '24', '14', '26', '19', '336', '2356', NULL, 'K', NULL, NULL, '2379', '4', '46', NULL),
(37, 'Roland \'Songbird\' Gates', 'Kradzież', '13', '14', '25', '25', '19', '21', '14', '4940', '43225', NULL, 'M', NULL, NULL, '903064', '95', '26', NULL),
(38, 'Jerry \'Truth\' Graves', 'Źródło magii', '9', '19', '26', '19', '25', '22', '9', '2444', '17082', NULL, 'K', NULL, NULL, '270732', '52', '44', NULL),
(39, 'Simon \'Evil\' Crane', 'Skradanie ', '26', '28', '22', '27', '23', '13', '14', '2916', '14616', NULL, 'M', NULL, NULL, '130452', '36', '28', NULL),
(40, 'Lee \'the Merciful\' Murphy', 'Magia ognia', '26', '28', '22', '22', '14', '31', '21', '4256', '39396', NULL, 'M', NULL, NULL, '313818', '56', '19', NULL),
(41, 'Helen \'the Bully\' McClure', 'Magia ziemi', '5', '9', '10', '4', '14', '8', '9', '1350', '10800', NULL, 'K', NULL, NULL, '562926', '75', '18', NULL),
(42, 'Horace \'Mystery\' Richards', 'Magia powietrza', '14', '17', '21', '28', '16', '22', '25', '1180', '14750', NULL, 'K', NULL, NULL, '40966', '20', '44', NULL),
(43, 'Eleanor \'Hallow\' Simon', 'Szczęście', '5', '10', '19', '9', '14', '8', '16', '2280', '31160', NULL, 'K', NULL, NULL, '903011', '95', '64', NULL),
(44, 'Roland \'Songbird\' Gates', 'Dowodzenie', '18', '11', '4', '4', '20', '20', '7', '33', '154', NULL, 'M', NULL, NULL, '720', '1', '23', NULL),
(45, 'Millie \'the Oaf\' Cobb', 'Magia ognia', '29', '13', '31', '16', '16', '28', '19', '1160', '14250', NULL, 'K', NULL, NULL, '40334', '20', '40', NULL),
(46, 'Lee \'the Merciful\' Murphy', 'Zawadiaka', '22', '14', '16', '23', '27', '27', '20', '4425', '52500', NULL, 'K', NULL, NULL, '562581', '75', '55', NULL),
(47, 'Johnnie \'Gold Tooth\' Gregory', 'Modlitwa', '22', '15', '7', '15', '20', '8', '9', '3484', '10552', NULL, 'K', NULL, NULL, '449528', '67', '49', NULL),
(48, 'Eleanor \'Hallow\' Simon', 'Oburęczność', '23', '11', '26', '23', '18', '25', '26', '684', '10764', NULL, 'K', NULL, NULL, '14496', '12', '53', NULL),
(49, 'Jerry \'Truth\' Graves', 'Dobre samopoczucie', '20', '9', '22', '25', '26', '9', '17', '3996', '35853', NULL, 'M', NULL, NULL, '548231', '74', '45', NULL),
(50, 'Amanda \'Eucher\' Johnson', 'Magia wody', '15', '27', '13', '29', '16', '25', '13', '3195', '15795', NULL, 'M', NULL, NULL, '202740', '45', '39', NULL),
(51, 'Maurice \'Flannel Mouth\' Lowery', 'Logistyka', '13', '19', '11', '17', '9', '21', '22', '1911', '17589', NULL, 'K', NULL, NULL, '152244', '39', '59', NULL),
(52, 'Curtis \'the Brains\' Harmon', 'Szczęście', '33', '27', '31', '16', '20', '27', '14', '532', '3822', NULL, 'K', NULL, NULL, '5861', '7', '70', NULL),
(53, 'Simon \'Evil\' Crane', 'Magia umysłu', '23', '26', '18', '30', '16', '28', '19', '5372', '40052', NULL, 'M', NULL, NULL, '463094', '68', '33', NULL),
(54, 'Curtis \'the Brains\' Harmon', 'Magia ziemi', '22', '25', '10', '22', '9', '18', '11', '5313', '15669', NULL, 'M', NULL, NULL, '592911', '77', '62', NULL),
(55, 'Fred \'Dust Devil\' Bowers', 'Zawadiaka', '15', '19', '16', '21', '18', '34', '16', '935', '9248', NULL, 'K', NULL, NULL, '29585', '17', '47', NULL),
(56, 'Amanda \'Eucher\' Johnson', 'Negocjacja', '19', '11', '13', '24', '11', '7', '18', '3726', '19251', NULL, 'K', NULL, NULL, '476911', '69', '55', NULL),
(57, 'May \'Painkiller\' White', 'Dowodzenie', '9', '24', '18', '24', '16', '8', '24', '3990', '35280', NULL, 'M', NULL, NULL, '490491', '70', '55', NULL),
(58, 'Marion \'the Loner\' Price', 'Urok', '16', '18', '24', '16', '26', '25', '18', '2500', '33750', NULL, 'M', NULL, NULL, '250787', '50', '30', NULL),
(59, 'Bernice \'Poker Face\' Peters', 'Urok', '20', '11', '16', '18', '27', '9', '18', '2842', '27144', NULL, 'M', NULL, NULL, '336757', '58', '26', NULL),
(60, 'Bettie \'No Teeth\' George', 'Negocjacja', '27', '27', '29', '15', '18', '19', '16', '6210', '47520', NULL, 'M', NULL, NULL, '810695', '90', '45', NULL),
(61, 'Horace \'Mystery\' Richards', 'Walka wręcz', '26', '25', '19', '28', '27', '12', '15', '6557', '36105', NULL, 'K', NULL, NULL, '689188', '83', '41', NULL),
(62, 'May \'Painkiller\' White', 'Skradanie ', '16', '5', '21', '20', '20', '1', '12', '1886', '11592', NULL, 'M', NULL, NULL, '211609', '46', '62', NULL),
(63, 'Bettie \'No Teeth\' George', 'Modlitwa', '28', '25', '24', '26', '17', '18', '29', '790', '8555', NULL, 'K', NULL, NULL, '10891', '10', '47', NULL),
(64, 'Bettie \'No Teeth\' George', 'Szczęście', '11', '20', '16', '7', '6', '12', '9', '1102', '4437', NULL, 'K', NULL, NULL, '84671', '29', '24', NULL),
(65, 'Curtis \'the Brains\' Harmon', 'Magia umysłu', '18', '21', '30', '29', '27', '24', '18', '952', '10206', NULL, 'K', NULL, NULL, '20133', '14', '65', NULL),
(66, 'Jerry \'Truth\' Graves', 'Oburęczność', '15', '11', '17', '10', '18', '29', '20', '3024', '53760', NULL, 'M', NULL, NULL, '705684', '84', '21', NULL),
(67, 'Curtis \'the Brains\' Harmon', 'Szczęście', '27', '22', '30', '15', '14', '30', '29', '4672', '78329', NULL, 'K', NULL, NULL, '533716', '73', '18', NULL),
(68, 'Amanda \'Eucher\' Johnson', 'Magia powietrza', '14', '16', '21', '19', '12', '12', '18', '3185', '26325', NULL, 'K', NULL, NULL, '423182', '65', '63', NULL),
(69, 'Lee \'the Merciful\' Murphy', 'Szczęście', '8', '22', '5', '23', '8', '12', '11', '4823', '12512', NULL, 'K', NULL, NULL, '828989', '91', '29', NULL),
(70, 'Lee \'the Merciful\' Murphy', 'Negocjacja', '21', '21', '14', '21', '19', '18', '9', '252', '918', NULL, 'M', NULL, NULL, '1642', '4', '44', NULL),
(71, 'Horace \'Mystery\' Richards', 'Modlitwa', '20', '25', '34', '17', '25', '33', '33', '1984', '48576', NULL, 'K', NULL, NULL, '102850', '32', '34', NULL),
(72, 'Amanda \'Eucher\' Johnson', 'Walka tarczą', '3', '21', '14', '15', '4', '13', '9', '3432', '12276', NULL, 'K', NULL, NULL, '774622', '88', '59', NULL),
(73, 'Lee \'the Merciful\' Murphy', 'Negocjacja', '7', '23', '9', '9', '9', '22', '10', '78', '400', NULL, 'K', NULL, NULL, '1059', '2', '40', NULL),
(74, 'Marion \'the Loner\' Price', 'Oburęczność', '25', '13', '14', '19', '15', '15', '20', '285', '2200', NULL, 'M', NULL, NULL, '2950', '5', '27', NULL),
(75, 'Amanda \'Eucher\' Johnson', 'Oburęczność', '30', '23', '28', '32', '18', '28', '29', '3315', '41847', NULL, 'M', NULL, NULL, '152311', '39', '30', NULL),
(76, 'Bernice \'Poker Face\' Peters', 'Smoczy duch', '18', '15', '14', '6', '17', '12', '10', '3744', '20640', NULL, 'K', NULL, NULL, '922354', '96', '32', NULL),
(77, 'Bettie \'No Teeth\' George', 'Walka wręcz', '4', '5', '9', '9', '17', '20', '21', '108', '2898', NULL, 'K', NULL, NULL, '4093', '6', '52', NULL),
(78, 'Rena \'Wager\' Clayton', 'Zawadiaka', '13', '25', '20', '20', '22', '12', '9', '754', '3159', NULL, 'M', NULL, NULL, '17154', '13', '28', NULL),
(79, 'Amanda \'Eucher\' Johnson', 'Magia powietrza', '23', '23', '28', '23', '13', '18', '23', '1035', '10177', NULL, 'K', NULL, NULL, '22755', '15', '38', NULL),
(80, 'Inez \'the Cheat\' Clark', 'Walka tarczą', '24', '27', '12', '21', '27', '18', '27', '6624', '70794', NULL, 'M', NULL, NULL, '846886', '92', '58', NULL),
(81, 'Rena \'Wager\' Clayton', 'Zasadzka', '27', '26', '27', '13', '9', '22', '15', '594', '3915', NULL, 'K', NULL, NULL, '8991', '9', '39', NULL),
(82, 'Eleanor \'Hallow\' Simon', 'Negocjacja', '15', '24', '22', '15', '23', '20', '13', '1890', '14787', NULL, 'K', NULL, NULL, '122699', '35', '69', NULL),
(83, 'Johnnie \'Gold Tooth\' Gregory', 'Magia powietrza', '15', '21', '20', '8', '22', '6', '7', '1452', '5544', NULL, 'M', NULL, NULL, '109027', '33', '38', NULL),
(84, 'Jerry \'Truth\' Graves', 'Walka wręcz', '26', '31', '28', '31', '20', '25', '21', '1848', '16096', NULL, 'M', NULL, NULL, '44345', '21', '47', NULL),
(85, 'Millie \'the Oaf\' Cobb', 'Skradanie ', '8', '3', '16', '16', '4', '21', '6', '2025', '9225', NULL, 'M', NULL, NULL, '562967', '75', '48', NULL),
(86, 'Marion \'the Loner\' Price', 'Magia ziemi', '9', '11', '10', '8', '15', '8', '19', '56', '627', NULL, 'K', NULL, NULL, '1165', '2', '37', NULL),
(87, 'Helen \'the Bully\' McClure', 'Magia przyrody', '14', '17', '28', '18', '28', '24', '24', '196', '3840', NULL, 'K', NULL, NULL, '2301', '4', '18', NULL),
(88, 'Simon \'Evil\' Crane', 'Smoczy duch', '10', '10', '8', '18', '13', '22', '25', '2090', '29562', NULL, 'K', NULL, NULL, '303364', '55', '37', NULL),
(89, 'Maurice \'Flannel Mouth\' Lowery', 'Magia ziemi', '12', '25', '25', '17', '28', '27', '26', '432', '8320', NULL, 'M', NULL, NULL, '6966', '8', '41', NULL),
(90, 'Marion \'the Loner\' Price', 'Zawadiaka', '32', '22', '19', '26', '22', '20', '19', '3040', '22021', NULL, 'K', NULL, NULL, '145144', '38', '27', NULL),
(91, 'Johnnie \'Gold Tooth\' Gregory', 'Negocjacja', '23', '21', '23', '19', '16', '25', '19', '5481', '52896', NULL, 'K', NULL, NULL, '756958', '87', '21', NULL),
(92, 'May \'Painkiller\' White', 'Skradanie ', '19', '29', '24', '16', '18', '16', '29', '960', '12615', NULL, 'M', NULL, NULL, '23135', '15', '59', NULL),
(93, 'Horace \'Mystery\' Richards', 'Walka tarczą', '14', '17', '14', '19', '12', '25', '14', '3850', '27489', NULL, 'K', NULL, NULL, '593351', '77', '42', NULL),
(94, 'Curtis \'the Brains\' Harmon', 'Źródło magii', '16', '11', '17', '28', '28', '30', '20', '2365', '32250', NULL, 'M', NULL, NULL, '185786', '43', '22', NULL),
(95, 'Bettie \'No Teeth\' George', 'Dobre samopoczucie', '29', '31', '30', '19', '14', '13', '14', '4345', '21945', NULL, 'K', NULL, NULL, '302929', '55', '22', NULL),
(96, 'Roland \'Songbird\' Gates', 'Magia wody', '18', '15', '8', '17', '18', '19', '9', '2850', '11542', NULL, 'K', NULL, NULL, '325591', '57', '32', NULL),
(97, 'Horace \'Mystery\' Richards', 'Walka tarczą', '16', '5', '22', '16', '23', '6', '19', '2590', '33915', NULL, 'M', NULL, NULL, '490016', '70', '48', NULL),
(98, 'Millie \'the Oaf\' Cobb', 'Walka tarczą', '9', '16', '20', '19', '29', '14', '11', '220', '1732', NULL, 'K', NULL, NULL, '3224', '5', '30', NULL),
(99, 'Lee \'the Merciful\' Murphy', 'Oburęczność', '8', '18', '15', '21', '17', '22', '8', '1692', '7776', NULL, 'K', NULL, NULL, '130168', '36', '44', NULL),
(100, 'Johnnie \'Gold Tooth\' Gregory', 'Zasadzka', '19', '25', '22', '8', '23', '16', '24', '832', '11712', NULL, 'K', NULL, NULL, '26035', '16', '41', NULL),
(101, 'Johnnie \'Gold Tooth\' Gregory', 'Skradanie ', '19', '14', '2', '12', '15', '11', '14', '675', '2940', NULL, 'K', NULL, NULL, '22879', '15', '66', NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `dane postaci w grze(niezależni)`
--

DROP TABLE IF EXISTS `dane postaci w grze(niezależni)`;
CREATE TABLE `dane postaci w grze(niezależni)` (
  `id_dane_npc` int(11) NOT NULL,
  `imie/imiona` varchar(11) DEFAULT NULL,
  `unikatowa_zdolnosc` varchar(18) DEFAULT NULL,
  `sila` varchar(4) DEFAULT NULL,
  `zrecznosc` varchar(9) DEFAULT NULL,
  `sila_czarów` varchar(11) DEFAULT NULL,
  `tezyzna` varchar(7) DEFAULT NULL,
  `wiedza` varchar(6) DEFAULT NULL,
  `inteligencja` varchar(12) DEFAULT NULL,
  `sila_woli` varchar(9) DEFAULT NULL,
  `sila_zycia` varchar(12) DEFAULT NULL,
  `poziom_many` varchar(11) DEFAULT NULL,
  `rasa` int(11) DEFAULT NULL,
  `plec` varchar(4) DEFAULT NULL,
  `wyznawane_bostwo` int(11) DEFAULT NULL,
  `charakter` int(11) DEFAULT NULL,
  `nastawienie_do_innych_postaci` int(11) DEFAULT NULL,
  `rola_w_grze` varchar(11) DEFAULT NULL,
  `punkty_doswiadczenia` varchar(20) DEFAULT NULL,
  `poziom` varchar(6) DEFAULT NULL,
  `biografia` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `dane postaci w grze(niezależni)`
--

INSERT INTO `dane postaci w grze(niezależni)` (`id_dane_npc`, `imie/imiona`, `unikatowa_zdolnosc`, `sila`, `zrecznosc`, `sila_czarów`, `tezyzna`, `wiedza`, `inteligencja`, `sila_woli`, `sila_zycia`, `poziom_many`, `rasa`, `plec`, `wyznawane_bostwo`, `charakter`, `nastawienie_do_innych_postaci`, `rola_w_grze`, `punkty_doswiadczenia`, `poziom`, `biografia`) VALUES
(2, 'Trent', 'Magia powietrza', '16', '24', '13', '18', '19', '17', '16', '5278', '35672', NULL, 'K', NULL, NULL, NULL, 'Złotnik', '828256', '91', NULL),
(3, 'Yevette', 'Urok', '20', '15', '19', '27', '21', '8', '16', '5270', '32640', NULL, 'K', NULL, NULL, NULL, 'Czarownik', '723261', '85', NULL),
(4, 'Danielle', 'Dobre samopoczucie', '7', '6', '23', '7', '13', '8', '20', '1600', '35200', NULL, 'M', NULL, NULL, NULL, 'Złotnik', '640343', '80', NULL),
(5, 'May', 'Magia umysłu', '31', '27', '23', '20', '14', '24', '14', '3120', '17080', NULL, 'K', NULL, NULL, NULL, 'Czarownik', '160669', '40', NULL),
(6, 'Dede', 'Negocjacja', '18', '6', '4', '16', '12', '13', '5', '1920', '3480', NULL, 'K', NULL, NULL, NULL, 'Przewodnik', '231261', '48', NULL),
(7, 'Chu', 'Logistyka', '12', '11', '24', '26', '11', '16', '21', '637', '6961', NULL, 'K', NULL, NULL, NULL, 'Straganiarz', '17643', '13', NULL),
(8, 'Marietta', 'Magia przyrody', '28', '17', '22', '25', '22', '15', '17', '3010', '21564', NULL, 'K', NULL, NULL, NULL, 'Gwardzista', '185899', '43', NULL),
(9, 'Nana', 'Magia ognia', '17', '17', '19', '14', '23', '16', '6', '1776', '6438', NULL, 'M', NULL, NULL, NULL, 'Złotnik', '137141', '37', NULL),
(10, 'Irving', 'Oburęczność', '23', '9', '13', '11', '21', '17', '20', '602', '7140', NULL, 'K', NULL, NULL, NULL, 'Kowal', '20422', '14', NULL),
(11, 'Caroline', 'Magia ziemi', '20', '23', '9', '11', '25', '25', '9', '4374', '21505', NULL, 'K', NULL, NULL, NULL, 'Wojownik', '656590', '81', NULL),
(12, 'Brenna', 'Negocjacja', '7', '14', '26', '17', '21', '22', '12', '2356', '25668', NULL, 'M', NULL, NULL, NULL, 'Złotnik', '385242', '62', NULL),
(13, 'Stefania', 'Negocjacja', '29', '18', '24', '11', '27', '14', '13', '3538', '25772', NULL, 'K', NULL, NULL, NULL, 'Negocjator', '372541', '61', NULL),
(14, 'Dino', 'Magia powietrza', '8', '25', '17', '14', '23', '25', '9', '2585', '16087', NULL, 'K', NULL, NULL, NULL, 'Straganiarz', '303369', '55', NULL),
(15, 'Lena', 'Magia wody', '10', '14', '19', '9', '15', '14', '19', '1089', '15048', NULL, 'K', NULL, NULL, NULL, 'Zabójca', '109442', '33', NULL),
(16, 'Willy', 'Zawadiaka', '18', '7', '5', '8', '19', '12', '22', '2343', '28116', NULL, 'M', NULL, NULL, NULL, 'Straganiarz', '504100', '71', NULL),
(17, 'Anton', 'Modlitwa', '24', '10', '9', '22', '7', '23', '9', '616', '1930', NULL, 'K', NULL, NULL, NULL, 'Złodziej', '13051', '11', NULL),
(18, 'Latasha', 'Kradzież', '9', '14', '24', '13', '17', '19', '24', '540', '10800', NULL, 'M', NULL, NULL, NULL, 'Złotnik', '23041', '15', NULL),
(19, 'Leatrice', 'Logistyka', '10', '21', '25', '25', '21', '8', '19', '840', '7695', NULL, 'K', NULL, NULL, NULL, 'Straganiarz', '22563', '15', NULL),
(20, 'Dayna', 'Oburęczność', '4', '11', '7', '5', '16', '21', '20', '160', '3520', NULL, 'K', NULL, NULL, NULL, 'Szlachcic', '6910', '8', NULL),
(21, 'Clarine', 'Oburęczność', '27', '23', '13', '20', '14', '26', '18', '1400', '9540', NULL, 'K', NULL, NULL, NULL, 'Złotnik', '40225', '20', NULL),
(22, 'Bobette', 'Magia powietrza', '20', '33', '27', '17', '27', '23', '31', '5880', '100254', NULL, 'K', NULL, NULL, NULL, 'Szaman', '706083', '84', NULL),
(23, 'Ricarda', 'Walka wręcz', '26', '16', '19', '21', '22', '26', '13', '4851', '33533', NULL, 'M', NULL, NULL, NULL, 'Wojownik', '593536', '77', NULL),
(24, 'Owen', 'Magia wody', '14', '19', '32', '22', '23', '32', '30', '3465', '82215', NULL, 'K', NULL, NULL, NULL, 'Szlachcic', '396999', '63', NULL),
(25, 'Berta', 'Szczęście', '26', '27', '14', '12', '26', '25', '18', '4355', '39195', NULL, 'K', NULL, NULL, NULL, 'Straganiarz', '448901', '67', NULL),
(26, 'Ayesha', 'Dobre samopoczucie', '12', '14', '12', '8', '19', '8', '12', '1258', '8658', NULL, 'M', NULL, NULL, NULL, 'Animator', '137554', '37', NULL),
(27, 'Marisa', 'Dobre samopoczucie', '23', '15', '9', '27', '26', '22', '20', '325', '2850', NULL, 'K', NULL, NULL, NULL, 'Straganiarz', '3333', '5', NULL),
(28, 'Ludie', 'Zawadiaka', '26', '22', '25', '25', '17', '28', '12', '5913', '34020', NULL, 'M', NULL, NULL, NULL, 'Mag', '656562', '81', NULL),
(29, 'Arla', 'Smoczy duch', '33', '19', '22', '20', '32', '33', '18', '4536', '49329', NULL, 'M', NULL, NULL, NULL, 'Straganiarz', '397173', '63', NULL),
(30, 'Tasha', 'Magia wody', '18', '20', '10', '20', '16', '5', '12', '4466', '14322', NULL, 'K', NULL, NULL, NULL, 'Animator', '593099', '77', NULL),
(31, 'Barb', 'Magia ognia', '19', '25', '21', '33', '22', '21', '21', '231', '2016', NULL, 'K', NULL, NULL, NULL, 'Mag', '1793', '3', NULL),
(32, 'Jazmin', 'Zawadiaka', '27', '25', '28', '24', '9', '9', '9', '7220', '19665', NULL, 'M', NULL, NULL, NULL, 'Animator', '903023', '95', NULL),
(33, 'Edward', 'Oburęczność', '28', '12', '26', '18', '24', '11', '17', '2552', '22814', NULL, 'M', NULL, NULL, NULL, 'Złodziej', '194036', '44', NULL),
(34, 'Theo', 'Magia umysłu', '14', '23', '8', '21', '19', '14', '4', '4234', '5986', NULL, 'K', NULL, NULL, NULL, 'Mag', '533888', '73', NULL),
(35, 'Rachael', 'Walka tarczą', '5', '17', '10', '9', '7', '2', '21', '403', '2593', NULL, 'K', NULL, NULL, NULL, 'Zabójca', '16926', '13', NULL),
(36, 'Lorena', 'Źródło magii', '30', '13', '17', '31', '21', '15', '28', '814', '8162', NULL, 'M', NULL, NULL, NULL, 'Szlachcic', '12335', '11', NULL),
(37, 'Herb', 'Oburęczność', '15', '9', '13', '26', '13', '18', '21', '3750', '34650', NULL, 'M', NULL, NULL, NULL, 'Szaman', '563256', '75', NULL),
(38, 'Jayme', 'Kradzież', '15', '13', '27', '12', '22', '13', '10', '1040', '8060', NULL, 'M', NULL, NULL, NULL, 'Czarownik', '68556', '26', NULL),
(39, 'Desmond', 'Magia przyrody', '19', '24', '30', '16', '31', '21', '20', '4189', '58220', NULL, 'M', NULL, NULL, NULL, 'Kuglarz', '504532', '71', NULL),
(40, 'Sebastian', 'Oburęczność', '30', '32', '22', '35', '32', '20', '23', '3783', '33189', NULL, 'K', NULL, NULL, NULL, 'Mag', '152112', '39', NULL),
(41, 'Betty', 'Modlitwa', '12', '11', '25', '24', '9', '26', '14', '4136', '36960', NULL, 'M', NULL, NULL, NULL, 'Zabójca', '775305', '88', NULL),
(42, 'Verla', 'Magia wody', '20', '27', '27', '24', '14', '14', '32', '3195', '39600', NULL, 'M', NULL, NULL, NULL, 'Szaman', '202956', '45', NULL),
(43, 'Ciara', 'Dowodzenie', '20', '14', '12', '21', '16', '16', '8', '3740', '11968', NULL, 'K', NULL, NULL, NULL, 'Złodziej', '463089', '68', NULL),
(44, 'Fredericka', 'Zawadiaka', '21', '13', '32', '33', '27', '18', '29', '3350', '55825', NULL, 'K', NULL, NULL, NULL, 'Kuglarz', '250582', '50', NULL),
(45, 'Magnolia', 'Negocjacja', '15', '15', '21', '11', '20', '19', '26', '2747', '52260', NULL, 'K', NULL, NULL, NULL, 'Czarownik', '449629', '67', NULL),
(46, 'Malinda', 'Urok', '10', '18', '21', '27', '22', '10', '7', '3575', '12057', NULL, 'M', NULL, NULL, NULL, 'Przewodnik', '422851', '65', NULL),
(47, 'Virgil', 'Urok', '11', '25', '17', '8', '25', '23', '18', '1100', '14625', NULL, 'M', NULL, NULL, NULL, 'Złotnik', '62967', '25', NULL),
(48, 'Lennie', 'Zasadzka', '31', '22', '29', '13', '24', '18', '15', '990', '7987', NULL, 'K', NULL, NULL, NULL, 'Mag', '22892', '15', NULL),
(49, 'Willodean', 'Zawadiaka', '22', '27', '14', '29', '28', '22', '25', '6552', '67200', NULL, 'K', NULL, NULL, NULL, 'Złodziej', '706542', '84', NULL),
(50, 'Lynnette ', 'Magia umysłu', '24', '24', '17', '27', '14', '22', '13', '6375', '29282', NULL, 'K', NULL, NULL, NULL, 'Straganiarz', '722864', '85', NULL),
(51, 'Willis ', 'Kradzież', '10', '22', '18', '26', '15', '25', '10', '3828', '19140', NULL, 'K', NULL, NULL, NULL, 'Straganiarz', '435768', '66', NULL),
(52, 'Scot ', 'Dobre samopoczucie', '8', '11', '19', '13', '22', '26', '10', '2560', '26800', NULL, 'M', NULL, NULL, NULL, 'Kowal', '640495', '80', NULL),
(53, 'Ilene ', 'Magia ziemi', '14', '22', '26', '26', '23', '17', '11', '2170', '12705', NULL, 'M', NULL, NULL, NULL, 'Złotnik', '123246', '35', NULL),
(54, 'Arnetta ', 'Oburęczność', '9', '18', '9', '10', '11', '9', '6', '1628', '3828', NULL, 'M', NULL, NULL, NULL, 'Szlachcic', '194059', '44', NULL),
(55, 'Arnita ', 'Walka tarczą', '28', '28', '15', '22', '25', '20', '14', '2574', '13860', NULL, 'K', NULL, NULL, NULL, 'Kuglarz', '109267', '33', NULL),
(56, 'Corliss ', 'Walka tarczą', '13', '23', '13', '13', '13', '6', '23', '1862', '13984', NULL, 'K', NULL, NULL, NULL, 'Kuglarz', '145132', '38', NULL),
(57, 'Roma ', 'Dowodzenie', '12', '7', '17', '25', '16', '21', '23', '616', '8694', NULL, 'M', NULL, NULL, NULL, 'Gwardzista', '20571', '14', NULL),
(58, 'Chantay ', 'Magia wody', '27', '23', '29', '22', '18', '13', '15', '3744', '23400', NULL, 'K', NULL, NULL, NULL, 'Gwardzista', '271048', '52', NULL),
(59, 'Andy ', 'Magia umysłu', '16', '11', '9', '17', '11', '9', '9', '4136', '12267', NULL, 'K', NULL, NULL, NULL, 'Wojownik', '884523', '94', NULL),
(60, 'Edwardo ', 'Walka tarczą', '12', '22', '31', '25', '29', '16', '14', '590', '5320', NULL, 'K', NULL, NULL, NULL, 'Gwardzista', '10898', '10', NULL),
(61, 'Alina ', 'Magia ognia', '12', '26', '12', '23', '8', '16', '26', '3477', '26676', NULL, 'M', NULL, NULL, NULL, 'Wojownik', '325897', '57', NULL),
(62, 'Palmer ', 'Logistyka', '10', '11', '23', '18', '18', '24', '16', '273', '3640', NULL, 'K', NULL, NULL, NULL, 'Szlachcic', '5041', '7', NULL),
(63, 'Rosalinda ', 'Walka tarczą', '19', '13', '23', '13', '12', '27', '26', '270', '4836', NULL, 'M', NULL, NULL, NULL, 'Złotnik', '3902', '6', NULL),
(64, 'Ewa ', 'Negocjacja', '11', '10', '16', '12', '25', '17', '26', '2673', '61074', NULL, 'K', NULL, NULL, NULL, 'Negocjator', '656942', '81', NULL),
(65, 'Ursula ', 'Walka tarczą', '18', '24', '16', '31', '30', '22', '17', '1241', '9826', NULL, 'M', NULL, NULL, NULL, 'Gwardzista', '29233', '17', NULL),
(66, 'Malisa ', 'Walka tarczą', '19', '22', '13', '12', '18', '29', '23', '3975', '51750', NULL, 'M', NULL, NULL, NULL, 'Złotnik', '563131', '75', NULL),
(67, 'Priscila ', 'Walka wręcz', '12', '9', '20', '23', '25', '26', '21', '3300', '55912', NULL, 'M', NULL, NULL, NULL, 'Płatnerz', '563032', '75', NULL),
(68, 'Marcela ', 'Logistyka', '18', '27', '25', '18', '30', '27', '29', '3339', '63017', NULL, 'K', NULL, NULL, NULL, 'Kowal', '280901', '53', NULL),
(69, 'Arden ', 'Magia przyrody', '13', '9', '6', '20', '14', '18', '19', '3528', '30324', NULL, 'K', NULL, NULL, NULL, 'Szaman', '706036', '84', NULL),
(70, 'Arianna ', 'Smoczy duch', '31', '18', '17', '30', '25', '28', '33', '948', '13860', NULL, 'K', NULL, NULL, NULL, 'Złotnik', '14869', '12', NULL),
(71, 'Rosalia ', 'Magia wody', '28', '27', '16', '15', '13', '27', '12', '5390', '25872', NULL, 'M', NULL, NULL, NULL, 'Kowal', '593184', '77', NULL),
(72, 'Deloris ', 'Logistyka', '17', '19', '20', '26', '29', '28', '20', '2790', '34650', NULL, 'K', NULL, NULL, NULL, 'Gwardzista', '203372', '45', NULL),
(73, 'Amber ', 'Źródło magii', '29', '27', '25', '19', '27', '23', '13', '4050', '26325', NULL, 'M', NULL, NULL, NULL, 'Płatnerz', '291638', '54', NULL),
(74, 'Ha ', 'Magia przyrody', '34', '27', '34', '26', '23', '25', '29', '7395', '101065', NULL, 'K', NULL, NULL, NULL, 'Kuglarz', '722962', '85', NULL),
(75, 'Elaine ', 'Magia przyrody', '17', '21', '26', '23', '16', '25', '27', '5368', '79596', NULL, 'K', NULL, NULL, NULL, 'Kuglarz', '775226', '88', NULL),
(76, 'Ilana ', 'Szczęście', '28', '14', '9', '22', '23', '15', '23', '5312', '44861', NULL, 'K', NULL, NULL, NULL, 'Negocjator', '689256', '83', NULL),
(77, 'Ka ', 'Magia umysłu', '12', '23', '17', '16', '29', '18', '10', '2754', '17280', NULL, 'M', NULL, NULL, NULL, 'Szaman', '292407', '54', NULL),
(78, 'Adria ', 'Zasadzka', '24', '21', '24', '30', '32', '29', '28', '1425', '22610', NULL, 'K', NULL, NULL, NULL, 'Szlachcic', '36982', '19', NULL),
(79, 'Jeanelle ', 'Smoczy duch', '20', '24', '9', '26', '11', '13', '16', '4760', '17952', NULL, 'K', NULL, NULL, NULL, 'Wojownik', '463142', '68', NULL),
(80, 'Joesph ', 'Negocjacja', '25', '35', '27', '31', '28', '24', '23', '5733', '57235', NULL, 'K', NULL, NULL, NULL, 'Szaman', '397332', '63', NULL),
(81, 'Dulcie ', 'Walka tarczą', '14', '23', '33', '32', '27', '23', '13', '6624', '51792', NULL, 'K', NULL, NULL, NULL, 'Straganiarz', '922411', '96', NULL),
(82, 'Veta ', 'Magia ognia', '24', '29', '20', '20', '26', '16', '18', '6862', '52452', NULL, 'M', NULL, NULL, NULL, 'Wojownik', '884596', '94', NULL),
(83, 'Camilla ', 'Magia ziemi', '29', '31', '20', '36', '24', '36', '19', '7296', '57760', NULL, 'M', NULL, NULL, NULL, 'Negocjator', '578032', '76', NULL),
(84, 'Haley ', 'Logistyka', '23', '27', '10', '12', '11', '24', '29', '6076', '63945', NULL, 'M', NULL, NULL, NULL, 'Płatnerz', '960607', '98', NULL),
(85, 'Susan ', 'Dobre samopoczucie', '24', '22', '19', '21', '24', '21', '23', '4221', '46368', NULL, 'M', NULL, NULL, NULL, 'Kowal', '397190', '63', NULL),
(86, 'Paris ', 'Zasadzka', '2', '6', '22', '11', '11', '14', '10', '1368', '16920', NULL, 'M', NULL, NULL, NULL, 'Negocjator', '519243', '72', NULL),
(87, 'Agnus ', 'Oburęczność', '22', '26', '32', '21', '25', '28', '17', '1380', '14450', NULL, 'K', NULL, NULL, NULL, 'Kowal', '40304', '20', NULL),
(88, 'Chas ', 'Magia powietrza', '36', '17', '29', '25', '20', '30', '29', '3744', '54984', NULL, 'K', NULL, NULL, NULL, 'Animator', '230429', '48', NULL),
(89, 'Cleopatra ', 'Oburęczność', '18', '17', '16', '12', '2', '5', '20', '4183', '20470', NULL, 'M', NULL, NULL, NULL, 'Górnik', '792757', '89', NULL),
(90, 'Blair ', 'Zawadiaka', '22', '20', '7', '25', '23', '15', '10', '67', '225', NULL, 'M', NULL, NULL, NULL, 'Przewodnik', '964', '1', NULL),
(91, 'Elma ', 'Dowodzenie', '26', '11', '26', '12', '12', '27', '26', '294', '5070', NULL, 'K', NULL, NULL, NULL, 'Mag', '3936', '6', NULL),
(92, 'Zenobia ', 'Skradanie ', '12', '11', '14', '7', '20', '7', '15', '1590', '16297', NULL, 'M', NULL, NULL, NULL, 'Szaman', '281469', '53', NULL),
(93, 'Euna ', 'Dobre samopoczucie', '4', '4', '12', '16', '23', '13', '20', '792', '15840', NULL, 'K', NULL, NULL, NULL, 'Kowal', '109664', '33', NULL),
(94, 'Brett ', 'Walka wręcz', '12', '8', '10', '6', '11', '22', '24', '338', '6708', NULL, 'K', NULL, NULL, NULL, 'Płatnerz', '17603', '13', NULL),
(95, 'Maybell ', 'Kradzież', '7', '23', '15', '16', '7', '9', '9', '644', '1953', NULL, 'M', NULL, NULL, NULL, 'Animator', '20500', '14', NULL),
(96, 'Conchita ', 'Urok', '32', '23', '33', '26', '33', '24', '35', '3321', '64575', NULL, 'K', NULL, NULL, NULL, 'Szlachcic', '168123', '41', NULL),
(97, 'Hayden ', 'Dowodzenie', '14', '11', '27', '23', '14', '11', '24', '4656', '60528', NULL, 'M', NULL, NULL, NULL, 'Wojownik', '941197', '97', NULL),
(98, 'Elli ', 'Negocjacja', '17', '25', '30', '23', '23', '31', '26', '3445', '57876', NULL, 'M', NULL, NULL, NULL, 'Przewodnik', '281446', '53', NULL),
(99, 'Peter', 'Magia ziemi', '18', '22', '19', '19', '25', '31', '17', '5133', '55462', NULL, 'K', NULL, NULL, NULL, 'Kowal', '757225', '87', NULL),
(100, 'Shantel ', 'Szczęście', '29', '19', '19', '32', '23', '18', '22', '4720', '38940', NULL, 'M', NULL, NULL, NULL, 'Negocjator', '348646', '59', NULL),
(101, 'Shaina ', 'Modlitwa', '23', '5', '4', '22', '17', '15', '21', '4450', '33642', NULL, 'K', NULL, NULL, NULL, 'Przewodnik', '792598', '89', NULL),
(102, 'Ladawn ', 'Magia ziemi', '8', '13', '5', '15', '1', '12', '3', '1440', '1080', NULL, 'M', NULL, NULL, NULL, 'Czarownik', '160852', '40', NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `efekty`
--

DROP TABLE IF EXISTS `efekty`;
CREATE TABLE `efekty` (
  `id_efekty` int(11) NOT NULL,
  `nazwa` varchar(19) DEFAULT NULL,
  `dzialanie_pozytywne` varchar(46) DEFAULT NULL,
  `dzialanie_negatywne` varchar(46) DEFAULT NULL,
  `bostwo_zsylajace` int(11) DEFAULT NULL,
  `opis` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `efekty`
--

INSERT INTO `efekty` (`id_efekty`, `nazwa`, `dzialanie_pozytywne`, `dzialanie_negatywne`, `bostwo_zsylajace`, `opis`) VALUES
(2, 'Heroiczna siła', '+20 siła 2h + 1h/poziom', NULL, 0, NULL),
(3, 'Otwarty umysł', '+20 inteligencja 2h + 1h/poziom', NULL, 0, NULL),
(4, 'Niebywała zręczność', '+20 zręczności 2h + 1h/poziom', NULL, 0, NULL),
(5, 'Godzina mocy', '+20 siła,tężyzna,zręczność', '-20% wszystkie cechy niemartwi', 0, NULL),
(6, 'Nadludzka wiedza', '+30 wiedzy (2h + 0,5h/poziom)', NULL, 0, NULL),
(7, 'Szybkość', '20% bazowej szybkości (przez 3h)', '-20% bazowej szybkości przeklęci, 3h', 0, NULL),
(8, 'Szczęście', '20% do szczęścia (przez 3 h)', NULL, 0, NULL),
(9, 'Pobożność', '2x dary boskie (przez 1 h)', NULL, 0, NULL),
(10, 'Urok', '20% do zauroczenia (przez 2h)', NULL, 0, NULL),
(11, 'Klątwa', '+10% wszystkie cechy (niemartwi, 2h)', '-10% wszystkie cechy do zdjęcia', 0, NULL),
(12, 'Krwawienie', NULL, '-5% siła,życie,zręczność,tężyzna do odpoczynku', 0, NULL),
(13, 'Osłabienie', NULL, '-15% wszystkie cechy do odpoczynku', 0, NULL),
(14, 'Choroba', NULL, '-20% wszystkie cechy do wyleczenia', 0, NULL),
(15, 'Paraliż', '2x większa szybkość (gargulce, 2h + 1h/poziom)', 'skamienienie (do odczynienia)', 0, NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ekwipunek`
--

DROP TABLE IF EXISTS `ekwipunek`;
CREATE TABLE `ekwipunek` (
  `id_ekwipunek` int(11) NOT NULL,
  `nazwa` varchar(86) DEFAULT NULL,
  `efekt_bazowy` varchar(15) DEFAULT NULL,
  `umiejscowienie` varchar(14) DEFAULT NULL,
  `opis` varchar(212) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `ekwipunek`
--

INSERT INTO `ekwipunek` (`id_ekwipunek`, `nazwa`, `efekt_bazowy`, `umiejscowienie`, `opis`) VALUES
(2, 'Alarmshiv', '+9 siła', 'Prawa ręka', 'This sword\'s guard resembles a crescent moon. Its grip is of a white metal with a pattern made of waves and triangles engraved on it. The pommel bears a single alexandrite.'),
(3, 'Atomosword', '+10 siła', 'Prawa ręka', 'This sword has a blade of a black color, with a pattern made of spirals and triangles engraved on it. The guard is square-shaped. Its grip is formed like a squid with its tentacles extended and emeralds for eyes.'),
(4, 'Biglaive', '+8 siła', 'Prawa ręka', 'This sword has a blade with a red hue to it, whose form suggests an icicle. The guard resembles a pair of bird wings, inlaid with a red-colored material.'),
(5, 'Bladekiller', '+9 siła', 'Prawa ręka', 'This sword\'s guard is styled to resemble a mouth, the blade extending from it like a tongue. Its grip is formed like a shark.'),
(6, 'Broadpiercer', '+2 siła', 'Prawa ręka', 'This sword has a notched blade of a copper color, with moons engraved on it. Its pommel bears a single onyx.'),
(7, 'Coldshooter', '+9 siła', 'Prawa ręka', 'This sword has a keen blade of a gold color. Its grip is formed like an armored leg.'),
(8, 'Demonsphere', '+12 siła', 'Prawa ręka', 'This sword has a blade with bulls and sundials engraved on it. Its grip is of a gray metal set with tourmalines.'),
(9, 'Earthhammer', '+10 siła', 'Prawa ręka', 'This sword has a keen blade. The guard is rectangle-shaped.'),
(10, 'Flailshot', '+7 siła', 'Prawa ręka', 'This sword has a blade with a blue hue to it, with suns engraved on it. Its grip is of a bronze metal set with onyxes. The pommel bears a single alexandrite.'),
(11, 'Hastekris', '+11 siła', 'Prawa ręka', 'This sword has a saw-edged blade with an eye engraved on it. The guard is formed like a crescent moon, its tips pointing in the same direction as the blade. Its grip is of a gray metal set with diamonds.'),
(12, 'Hasteseeker', '+5 siła', 'Lewa ręka', NULL),
(13, 'Hexachopper', '+2 siła', 'Lewa ręka', NULL),
(14, 'Knifehacker', '+12 siła', 'Lewa ręka', NULL),
(15, 'Lashwarper', '+10 siła', 'Lewa ręka', NULL),
(16, 'Painchopper', '+4 siła', 'Lewa ręka', NULL),
(17, 'Runewing', '+7 obrona', 'Głowa', NULL),
(18, 'Rustsphere', '+12 obrona', 'Głowa', NULL),
(19, 'Shineripper', '+8 obrona', 'Głowa', NULL),
(20, 'Shocktrapper', '+7 obrona', 'Głowa', NULL),
(21, 'Smokedisk', '+2 obrona', 'Nogi', NULL),
(22, 'Snareglaive', '+3 obrona', 'Nogi', NULL),
(23, 'Soundsnare', '+3 obrona', 'Nogi', NULL),
(24, 'Spellhacker', '+4 obrona', 'Nogi', NULL),
(25, 'Truthgrabber', '+6 obrona', 'Nogi', NULL),
(26, 'Whirlzapper', '+9 obrona', 'Tors', NULL),
(27, 'Unexpected Dissimilarities in the Methods of Locomotion of the Tarasque and the Gorgon', '+12% wiedza', 'Specjalny I', NULL),
(28, 'The Kingdom\'s Political Chronicle', '+7% wiedza', 'Specjalny I', NULL),
(29, 'The Earldom\'s Present Prohpets', '+6% wiedza', 'Specjalny I', NULL),
(30, 'The Creator Gods\' Blessings', '+12% wiedza', 'Specjalny I', NULL),
(31, 'The States\' Economic Cults', '+7% wiedza', 'Specjalny I', NULL),
(32, 'A Illusionist\'s Text of Ancient Charms', '+10% wiedza', 'Specjalny I', NULL),
(33, 'Trolls\' Glandular System', '+5% wiedza', 'Specjalny I', NULL),
(34, 'The All-Knowing Medical Goddesses\' Prayers', '+2% wiedza', 'Specjalny I', NULL),
(35, 'An Expose of the Earldoms\' Forgotten Notables', '+9% wiedza', 'Specjalny I', NULL),
(36, 'The Justice Goddess\' Facts', '+4% wiedza', 'Specjalny I', NULL),
(37, 'Ancestral Soul\'s Throwing Knife', '+6 wzmocnienie', 'Specjalny I', NULL),
(38, 'Axe of the Celestial Sorcery of Earth', '+4 wzmocnienie', 'Szyja', NULL),
(39, 'Charismatic Felines\' Flute of Venom Beams', '+4 wzmocnienie', 'Szyja', NULL),
(40, 'Dire Mandolin', '+10 wzmocnienie', 'Szyja', NULL),
(41, 'Divine Arch-angels\' Bar of the Glamour of Dragon Seduction', '+2 wzmocnienie', 'Szyja', NULL),
(42, 'Drum of the Drakes\' Lust', '+9 wzmocnienie', 'Szyja', NULL),
(43, 'Drunken Fletcher\'s Bar', '+7 boski dar', 'Specjalny I', NULL),
(44, 'Electrical Axe of the Swimmer', '+10 boski dar', 'Specjalny I', NULL),
(45, 'Exceptional Gnomes\' Partisan of Transform Mana', '+7 boski dar', 'Specjalny I', NULL),
(46, 'Harpsichord of Drakes', '+12 boski dar', 'Specjalny II', NULL),
(47, 'Hellish Trident of Blood Web', '+3 boski dar', 'Specjalny II', NULL),
(48, 'Imperial Necklace of Trickery Conjuration', '+8 boski dar', 'Specjalny II', NULL),
(49, 'Lordly Defender\'s Garment', '+2 boski dar', 'Specjalny III', NULL),
(50, 'Metallic Ring Mail', '+8 boski dar', 'Specjalny III', NULL),
(51, 'Saviors\' Contraption of the Barbaric Dragon', '+2 boski dar', 'Specjalny III', NULL),
(52, 'Suit of Clever Sinners', '+2 boski dar', 'Specjalny IV', NULL),
(53, 'Throwing Axe of Sadness Assaults', '+9 boski dar', 'Specjalny IV', NULL),
(54, 'Ultimate Shuriken', '+7 boski dar', 'Specjalny IV', NULL),
(55, 'Unholy Glaive of Great Viciousness', '+4 boski dar', 'Specjalny IV', NULL),
(56, 'Unjust Kings\' Hatchet of Future Insanity Circle', '+11 boski dar', 'Specjalny IV', NULL),
(57, NULL, '+7 boski dar', 'Specjalny IV', NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `gracze`
--

DROP TABLE IF EXISTS `gracze`;
CREATE TABLE `gracze` (
  `id_gracze` int(11) NOT NULL,
  `imie` varchar(9) DEFAULT NULL,
  `drugie_imie` varchar(11) DEFAULT NULL,
  `nazwisko` varchar(13) DEFAULT NULL,
  `e-mail` varchar(28) DEFAULT NULL,
  `haslo` varchar(23) DEFAULT NULL,
  `nazwa_gracza` varchar(12) DEFAULT NULL,
  `data_przystapienia` varchar(18) DEFAULT NULL,
  `uprawnienia` varchar(13) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `gracze`
--

INSERT INTO `gracze` (`id_gracze`, `imie`, `drugie_imie`, `nazwisko`, `e-mail`, `haslo`, `nazwa_gracza`, `data_przystapienia`, `uprawnienia`) VALUES
(2, 'Tanner', 'Maryetta', 'Mcaleer', 'tm-mcaleer@address.com', 'McaleeTann1Mar', 'Excingomarus', '2017-12-16', 'administrator'),
(3, 'Patrick', 'Lacie', 'Lemaire', 'pl-lemaire@address.com', 'LPa1La', 'Tascius', '2015-2-2', 'mistrz gry'),
(4, 'Winfield', 'Phyllis', 'Phifer', 'wp-phifer@address.com', 'PhiferWi0Phyl', 'Andecarus', '2018-9-24', 'pomocnik'),
(5, 'Aldridge', 'Bree', 'Bakos', 'ab-bakos@address.com', 'BaAl6Br', 'Tauri', '2015-9-28', 'gracz'),
(6, 'Berwyn', 'Earnest', 'Elswick', 'be-elswick@address.com', 'EB1Ear', 'Caromarus', '2016-4-19', 'pomocnik'),
(7, 'Ribald', 'Verlie', 'Voorhis', 'rv-voorhis@address.com', 'VoorRiba1Ve', 'Balaesus', '2017-11-19', 'gracz'),
(8, 'Goodwin', 'Magan', 'Marenco', 'gm-marenco@address.com', 'MareGood1Magan', 'Macarius', '2018-4-23', 'pomocnik'),
(9, 'Hrani', 'Carmella', 'Colvard', 'hc-colvard@address.com', 'CoHra1Carmel', 'Caccuso', '2016-4-11', 'pomocnik'),
(10, 'Hordr', 'Meg', 'Mishler', 'hm-mishler@address.com', 'MishleHo1Me', 'Cabriabantos', '2016-11-12', 'gracz'),
(11, 'Biorn ', 'Leatha', 'Luoma', 'bl-luoma@address.com', 'LBior6Leatha', 'Trenacatus ', '2015-3-2', 'gracz'),
(12, 'Janie', 'Filiberto', 'Fuentez', 'jf-fuentez@address.com', 'FuenJa1Filiber', 'Catilia', '2015-7-17', 'gracz'),
(13, 'Caroline', 'Maxwell', 'Millikin', 'cm-millikin@address.com', 'MilliCa2Max', 'Caturica', '2016-6-13', 'gracz'),
(14, 'Tatiana', 'Tressie', 'Thiem', 'tt-thiem@address.com', 'TTat6Tre', 'Ilateuta', '2017-3-7', 'gracz'),
(15, 'Kimmy', 'Everett', 'Ennis', 'ke-ennis@address.com', 'EnnisKi6Everet', 'Inderca', '2016-11-11', 'gracz'),
(16, 'Hildeburh', 'Marquitta', 'Montoya', 'hm-montoya@address.com', 'MHil1Mar', 'Martidia', '2015-6-25', 'pomocnik'),
(17, 'Sidwell', 'Donovan', 'Delahoussaye', 'sd-delahoussaye@address.com', 'DelahouSidw6Donova', 'Alteurita', '2015-9-24', 'gracz'),
(18, 'Hiltrude', 'Robt', 'Reisch', 'hr-reisch@address.com', 'ReiscH0Rob', 'Vebrumma', '2017-11-12', 'gracz'),
(19, 'Heidi', 'Donald', 'Dockery', 'hd-dockery@address.com', 'DockeHei1Donal', 'Sama', '2016-5-5', 'gracz'),
(20, 'Eona', 'Juliann', 'Jaeger', 'ej-jaeger@address.com', 'JaegerEo0Jul', 'Diveca', '2018-11-24', 'pomocnik'),
(21, 'Vedis ', 'Arianne', 'Ament', 'va-ament@address.com', 'AV6Ariann', 'Carantina ', '2018-6-9', 'pomocnik'),
(22, 'Kimmy', 'Delsie', 'Dalton', 'kd-dalton@address.com', 'DaKim0Dels', 'Ilateuta', '2015-7-10', 'pomocnik'),
(23, 'Sidwell', 'Errol', 'Ensminger', 'se-ensminger@address.com', 'EnsmingeSi3Err', 'Balaesus', '2016-12-27', 'pomocnik'),
(24, 'Tanner', 'Ursula', 'Urso', 'tu-urso@address.com', 'UrT5Ursul', 'Caromarus', '2017-7-21', 'pomocnik'),
(25, 'Biorn ', 'Silva', 'Stutler', 'bs-stutler@address.com', 'StBiorn 1S', 'Trenacatus ', '2018-1-1', 'gracz'),
(26, 'Hrani', 'Tim', 'Turcios', 'ht-turcios@address.com', 'TurciosHran1Ti', 'Macarius', '2016-10-7', 'pomocnik'),
(27, 'Sidwell', 'Noemi', 'Nivens', 'sn-nivens@address.com', 'NivensS0No', 'Caccuso', '2018-4-22', 'gracz'),
(28, 'Vedis ', 'Keely', 'Kaul', 'vk-kaul@address.com', 'KV5Keely', 'Martidia', '2015-6-23', 'gracz'),
(29, 'Hordr', 'Annette', 'Abdo', 'ha-abdo@address.com', 'AbdoH5An', 'Sama', '2016-7-6', 'pomocnik'),
(30, 'Winfield', 'Hal', 'Hehn', 'wh-hehn@address.com', 'HeWinf5Hal', 'Caturica', '2018-4-24', 'pomocnik'),
(31, 'Vedis ', 'Tama', 'Talamantez', 'vt-talamantez@address.com', 'TaVedis4Tama', 'Martidia', '2018-12-7', 'gracz'),
(32, 'Sidwell', 'Tammie', 'Triolo', 'st-triolo@address.com', 'TriS0Tamm', 'Ilateuta', '2018-4-10', 'gracz'),
(33, 'Biorn ', 'Antonia', 'Aronowitz', 'ba-aronowitz@address.com', 'AronowitzBiorn3Anton', 'Sama', '2017-7-3', 'pomocnik'),
(34, 'Hrani', 'Deja', 'Deltoro', 'hd-deltoro@address.com', 'DeltoHran1D', 'Andecarus', '2018-9-21', 'gracz'),
(35, 'Eona', 'Lavina', 'Licon', 'el-licon@address.com', 'LEona6Lavin', 'Cabriabantos', '2017-7-6', 'pomocnik'),
(36, 'Vedis ', 'Elida', 'Escobedo', 've-escobedo@address.com', 'EscobedoV2Elida', 'Sama', '2017-10-14', 'gracz'),
(37, 'Tanner', 'Luz', 'Longino', 'tl-longino@address.com', 'LonTanner1Luz', 'Caturica', '2018-7-27', 'pomocnik'),
(38, 'Aldridge', 'Omega', 'Okamura', 'ao-okamura@address.com', 'OkamuraAl1O', 'Excingomarus', '2018-2-13', 'gracz'),
(39, 'Sidwell', 'Nancee', 'Newberry', 'sn-newberry@address.com', 'NewberrySidw2N', 'Catilia', '2016-2-4', 'pomocnik'),
(40, 'Goodwin', 'Dominica', 'Degraffenreid', 'gd-degraffenreid@address.com', 'DegrGoodw0Dom', 'Martidia', '2018-8-14', 'gracz'),
(41, 'Winfield', 'Lissa', 'Luken', 'wl-luken@address.com', 'LuWinfield6Liss', 'Excingomarus', '2016-12-28', 'pomocnik'),
(42, 'Tatiana', 'Teofila', 'Tourigny', 'tt-tourigny@address.com', 'TouriTa2T', 'Excingomarus', '2015-6-23', 'pomocnik'),
(43, 'Kimmy', 'Argelia', 'Auguste', 'ka-auguste@address.com', 'AugusKimmy1Argel', 'Caromarus', '2015-11-10', 'pomocnik'),
(44, 'Sidwell', 'Kristin', 'Kitzman', 'sk-kitzman@address.com', 'KitzmaSidwe1K', 'Ilateuta', '2018-8-13', 'pomocnik'),
(45, 'Hildeburh', 'Donetta', 'Dimond', 'hd-dimond@address.com', 'DimoH0Donet', 'Andecarus', '2018-2-2', 'gracz'),
(46, 'Caroline', 'Shu', 'Straw', 'cs-straw@address.com', 'SCarol6Sh', 'Ilateuta', '2017-5-9', 'gracz'),
(47, 'Caroline', 'Elicia', 'Everton', 'ce-everton@address.com', 'EvertCaro1Elic', 'Inderca', '2017-11-11', 'pomocnik'),
(48, 'Hrani', 'Sade', 'Shirey', 'hs-shirey@address.com', 'ShirHra0S', 'Alteurita', '2016-5-2', 'pomocnik'),
(49, 'Janie', 'Pauletta', 'Pough', 'jp-pough@address.com', 'PJ6Pauletta', 'Diveca', '2017-9-8', 'pomocnik'),
(50, 'Ribald', 'Leighann', 'Leming', 'rl-leming@address.com', 'LemiRib0Leigh', 'Caccuso', '2015-8-9', 'pomocnik'),
(51, 'Vedis ', 'Catharine', 'Cepeda', 'vc-cepeda@address.com', 'CepeVedis 0Cathar', 'Diveca', '2017-2-20', 'gracz'),
(52, 'Hrani', 'Nancee', 'Dockery', 'hn-dockery@address.com', 'DockerHrani1Nan', 'Diveca', '2016-11-11', 'gracz'),
(53, 'Sidwell', 'Hal', 'Auguste', 'sh-auguste@address.com', 'AuguSidwel1H', 'Macarius', '2016-12-16', 'gracz'),
(54, 'Janie', 'Omega', 'Straw', 'jo-straw@address.com', 'StrawJan6Omeg', 'Macarius', '2018-8-12', 'pomocnik'),
(55, 'Janie', 'Donetta', 'Kitzman', 'jd-kitzman@address.com', 'KiJan1Do', 'Diveca', '2018-11-12', 'gracz'),
(56, 'Caroline', 'Donovan', 'Ament', 'cd-ament@address.com', 'AmentCaroli6Donov', 'Cabriabantos', '2016-8-4', 'gracz'),
(57, 'Ribald', 'Antonia', 'Auguste', 'ra-auguste@address.com', 'AugusteR1Anto', 'Tauri', '2015-3-3', 'gracz'),
(58, 'Goodwin', 'Errol', 'Marenco', 'ge-marenco@address.com', 'MarenGoo1Errol', 'Macarius', '2016-2-8', 'gracz'),
(59, 'Ribald', 'Carmella', 'Cepeda', 'rc-cepeda@address.com', 'CeR0Carme', 'Inderca', '2015-2-14', 'gracz'),
(60, 'Ribald', 'Filiberto', 'Thiem', 'rf-thiem@address.com', 'ThiemR6Fil', 'Vebrumma', '2015-5-3', 'pomocnik'),
(61, 'Berwyn', 'Kristin', 'Shirey', 'bk-shirey@address.com', 'ShireBe0Kr', 'Excingomarus', '2018-7-21', 'pomocnik'),
(62, 'Eona', 'Maxwell', 'Ament', 'em-ament@address.com', 'AmE6Maxwell', 'Tascius', '2017-10-22', 'gracz'),
(63, 'Hrani', 'Robt', 'Bakos', 'hr-bakos@address.com', 'BakosH6Rob', 'Balaesus', '2017-7-23', 'gracz'),
(64, 'Caroline', 'Phyllis', 'Voorhis', 'cp-voorhis@address.com', 'VoCarol1Phylli', 'Alteurita', '2017-1-17', 'gracz'),
(65, 'Winfield', 'Juliann', 'Fuentez', 'wj-fuentez@address.com', 'FuenteWinfie1Julian', 'Inderca', '2017-8-15', 'pomocnik'),
(66, 'Eona', 'Magan', 'Colvard', 'em-colvard@address.com', 'ColvardEon1Maga', 'Vebrumma', '2015-1-6', 'pomocnik'),
(67, 'Hrani', 'Sade', 'Jaeger', 'hs-jaeger@address.com', 'JaegHra0Sade', 'Ilateuta', '2015-5-18', 'pomocnik'),
(68, 'Caroline', 'Hal', 'Turcios', 'ch-turcios@address.com', 'TuCar1Hal', 'Trenacatus ', '2018-1-1', 'gracz'),
(69, 'Tanner', 'Catharine', 'Turcios', 'tc-turcios@address.com', 'TurciosT1C', 'Ilateuta', '2017-9-21', 'gracz'),
(70, 'Patrick', 'Shu', 'Luken', 'ps-luken@address.com', 'LukPatric6S', 'Caromarus', '2018-4-2', 'gracz'),
(71, 'Vedis ', 'Tim', 'Thiem', 'vt-thiem@address.com', 'ThVedis6Ti', 'Martidia', '2015-7-24', 'gracz'),
(72, 'Tanner', 'Hal', 'Dalton', 'th-dalton@address.com', 'DaTan0Ha', 'Cabriabantos', '2018-2-28', 'pomocnik'),
(73, 'Hildeburh', 'Hal', 'Bakos', 'hh-bakos@address.com', 'BaHil6Ha', 'Caccuso', '2017-12-28', 'mistrz gry'),
(74, 'Tanner', 'Leighann', 'Triolo', 'tl-triolo@address.com', 'TrioTan0Leig', 'Catilia', '2017-6-13', 'pomocnik'),
(75, 'Hildeburh', 'Tama', 'Elswick', 'ht-elswick@address.com', 'EH1Ta', 'Diveca', '2018-7-26', 'gracz'),
(76, 'Sidwell', 'Lavina', 'Turcios', 'sl-turcios@address.com', 'TurcioSidwell1Lav', 'Alteurita', '2015-1-14', 'pomocnik'),
(77, 'Hrani', 'Marquitta', 'Montoya', 'hm-montoya@address.com', 'MontoyH1Marqu', 'Inderca', '2016-9-8', 'pomocnik'),
(78, 'Hildeburh', 'Arianne', 'Nivens', 'ha-nivens@address.com', 'NHildeburh0Ari', 'Martidia', '2018-8-6', 'pomocnik'),
(79, 'Winfield', 'Lissa', 'Urso', 'wl-urso@address.com', 'UrWinfield5Lis', 'Alteurita', '2018-11-3', 'pomocnik'),
(80, 'Sidwell', 'Everett', 'Talamantez', 'se-talamantez@address.com', 'TalaS4Everett', 'Tauri', '2016-8-4', 'pomocnik'),
(81, 'Patrick', 'Nancee', 'Thiem', 'pn-thiem@address.com', 'ThiePatrick6Nan', 'Tauri', '2016-1-13', 'pomocnik'),
(82, 'Goodwin', 'Pauletta', 'Aronowitz', 'gp-aronowitz@address.com', 'AroGo3Paule', 'Diveca', '2016-12-9', 'gracz'),
(83, 'Ribald', 'Hal', 'Montoya', 'rh-montoya@address.com', 'MoRibald1Ha', 'Inderca', '2016-8-14', 'pomocnik'),
(84, 'Hildeburh', 'Leighann', 'Dimond', 'hl-dimond@address.com', 'DimHi0L', 'Balaesus', '2016-1-11', 'pomocnik'),
(85, 'Hordr', 'Donald', 'Cepeda', 'hd-cepeda@address.com', 'CepH0Dona', 'Trenacatus ', '2018-6-13', 'pomocnik'),
(86, 'Hildeburh', 'Omega', 'Degraffenreid', 'ho-degraffenreid@address.com', 'DegraffenrHildebu0Omega', 'Andecarus', '2016-4-8', 'pomocnik'),
(87, 'Aldridge', 'Sade', 'Hehn', 'as-hehn@address.com', 'HehAldrid5S', 'Ilateuta', '2016-8-8', 'gracz'),
(88, 'Janie', 'Tammie', 'Talamantez', 'jt-talamantez@address.com', 'TaJa4Tammi', 'Inderca', '2016-8-28', 'pomocnik'),
(89, 'Berwyn', 'Verlie', 'Colvard', 'bv-colvard@address.com', 'CoBer1Ver', 'Sama', '2018-3-16', 'pomocnik'),
(90, 'Winfield', 'Magan', 'Fuentez', 'wm-fuentez@address.com', 'FuWinfie1Ma', 'Andecarus', '2016-12-7', 'pomocnik'),
(91, 'Hildeburh', 'Teofila', 'Dalton', 'ht-dalton@address.com', 'DaltonH0T', 'Andecarus', '2017-5-2', 'gracz'),
(92, 'Goodwin', 'Maxwell', 'Marenco', 'gm-marenco@address.com', 'MarGoodwin1Max', 'Andecarus', '2015-11-7', 'gracz'),
(93, 'Tatiana', 'Kristin', 'Turcios', 'tk-turcios@address.com', 'TurciTati1K', 'Inderca', '2015-10-24', 'gracz'),
(94, 'Patrick', 'Lavina', 'Licon', 'pl-licon@address.com', 'LPatr6Lav', 'Martidia', '2015-6-16', 'gracz'),
(95, 'Hildeburh', 'Tama', 'Luoma', 'ht-luoma@address.com', 'LuoHildeb6Tam', 'Tascius', '2015-4-9', 'gracz'),
(96, 'Tanner', 'Meg', 'Dimond', 'tm-dimond@address.com', 'DimoTanne0Me', 'Sama', '2016-4-2', 'gracz'),
(97, 'Vedis ', 'Donetta', 'Stutler', 'vd-stutler@address.com', 'StuVe1Done', 'Inderca', '2018-2-25', 'gracz'),
(98, 'Hordr', 'Argelia', 'Delahoussaye', 'ha-delahoussaye@address.com', 'DelahousH6A', 'Diveca', '2016-2-7', 'pomocnik'),
(99, 'Tatiana', 'Silva', 'Escobedo', 'ts-escobedo@address.com', 'EscobedoTatian2Si', 'Martidia', '2017-9-3', 'pomocnik'),
(100, 'Eona', 'Meg', 'Okamura', 'em-okamura@address.com', 'OkamurEo1Meg', 'Diveca', '2018-4-16', 'gracz'),
(101, 'Hrani', 'Juliann', 'Elswick', 'hj-elswick@address.com', 'ElswiHrani1Juliann', 'Balaesus', '2016-4-28', 'pomocnik'),
(102, 'Janie', 'Tressie', 'Mcaleer', 'jt-mcaleer@address.com', 'McaleJ1Tr', 'Andecarus', '2016-10-13', 'gracz'),
(103, 'Hiltrude', 'Leighann', 'Okamura', 'hl-okamura@address.com', 'OkaH1Leig', 'Carantina ', '2018-1-6', 'pomocnik'),
(104, 'Tanner', 'Errol', 'Thiem', 'te-thiem@address.com', 'ThiemTann6E', 'Alteurita', '2017-8-5', 'gracz'),
(105, 'Janie', 'Hal', 'Deltoro', 'jh-deltoro@address.com', 'DeltoroJani1H', 'Caromarus', '2018-2-3', 'pomocnik'),
(106, 'Janie', 'Lacie', 'Kitzman', 'jl-kitzman@address.com', 'KitzmaJa1L', 'Martidia', '2015-12-7', 'pomocnik'),
(107, 'Vedis ', 'Lacie', 'Kaul', 'vl-kaul@address.com', 'KaulVedi5Lacie', 'Sama', '2017-9-18', 'gracz'),
(108, 'Hordr', 'Marquitta', 'Cepeda', 'hm-cepeda@address.com', 'CepedHor0Ma', 'Caccuso', '2018-11-10', 'gracz'),
(109, 'Hiltrude', 'Tammie', 'Urso', 'ht-urso@address.com', 'UHilt5Tamm', 'Vebrumma', '2017-9-15', 'mistrz gry'),
(110, 'Tanner', 'Arianne', 'Auguste', 'ta-auguste@address.com', 'AugusTan1Ariann', 'Catilia', '2015-5-19', 'gracz'),
(111, 'Eona', 'Earnest', 'Urso', 'ee-urso@address.com', 'UrsoE5Earnest', 'Ilateuta', '2015-4-13', 'gracz'),
(112, 'Sidwell', 'Annette', 'Stutler', 'sa-stutler@address.com', 'SSidw1A', 'Excingomarus', '2018-3-10', 'gracz'),
(113, 'Goodwin', 'Deja', 'Licon', 'gd-licon@address.com', 'LGoodwin6De', 'Catilia', '2018-10-12', 'gracz'),
(114, 'Aldridge', 'Donald', 'Escobedo', 'ad-escobedo@address.com', 'EscobedAld2D', 'Alteurita', '2016-11-28', 'pomocnik'),
(115, 'Hiltrude', 'Annette', 'Hehn', 'ha-hehn@address.com', 'HHi5Annett', 'Caromarus', '2015-2-11', 'pomocnik'),
(116, 'Hrani', 'Catharine', 'Elswick', 'hc-elswick@address.com', 'EHrani1Cath', 'Trenacatus ', '2018-6-4', 'gracz'),
(117, 'Aldridge', 'Robt', 'Straw', 'ar-straw@address.com', 'StraAldri6Robt', 'Tauri', '2017-6-17', 'pomocnik'),
(118, 'Heidi', 'Errol', 'Aronowitz', 'he-aronowitz@address.com', 'AronowitzH3Er', 'Macarius', '2015-10-12', 'pomocnik'),
(119, 'Hordr', 'Errol', 'Pough', 'he-pough@address.com', 'PHor6Err', 'Caromarus', '2018-2-20', 'pomocnik'),
(120, 'Hildeburh', 'Catharine', 'Escobedo', 'hc-escobedo@address.com', 'EscobedHil2C', 'Macarius', '2018-11-27', 'pomocnik'),
(121, 'Patrick', 'Phyllis', 'Jaeger', 'pp-jaeger@address.com', 'JP0Phyllis', 'Catilia', '2015-10-22', 'gracz'),
(122, 'Eona', 'Silva', 'Abdo', 'es-abdo@address.com', 'AbEo5Silv', 'Tascius', '2016-7-15', 'gracz'),
(123, 'Biorn ', 'Deja', 'Dalton', 'bd-dalton@address.com', 'DaltoBior0D', 'Alteurita', '2018-10-2', 'gracz'),
(124, 'Heidi', 'Ursula', 'Everton', 'hu-everton@address.com', 'EverHeidi1Ursula', 'Sama', '2016-8-7', 'pomocnik'),
(125, 'Hiltrude', 'Errol', 'Voorhis', 'he-voorhis@address.com', 'VooHilt1Err', 'Tauri', '2017-11-9', 'gracz'),
(126, 'Ribald', 'Silva', 'Longino', 'rs-longino@address.com', 'LonginRib1Sil', 'Tauri', '2015-6-27', 'gracz'),
(127, 'Kimmy', 'Elida', 'Mishler', 'ke-mishler@address.com', 'MKim1El', 'Catilia', '2016-8-11', 'pomocnik'),
(128, 'Ribald', 'Lavina', 'Jaeger', 'rl-jaeger@address.com', 'JaRi0L', 'Catilia', '2017-4-2', 'pomocnik'),
(129, 'Vedis ', 'Elida', 'Pough', 've-pough@address.com', 'PougVedis 6Elida', 'Excingomarus', '2017-9-24', 'pomocnik'),
(130, 'Biorn ', 'Ursula', 'Escobedo', 'bu-escobedo@address.com', 'EscobedoBior2Urs', 'Alteurita', '2017-11-6', 'pomocnik'),
(131, 'Eona', 'Bree', 'Ament', 'eb-ament@address.com', 'AmE6Bre', 'Caccuso', '2018-9-17', 'pomocnik'),
(132, 'Janie', 'Magan', 'Ennis', 'jm-ennis@address.com', 'EnniJa6Magan', 'Diveca', '2016-11-17', 'gracz'),
(133, 'Vedis ', 'Teofila', 'Kaul', 'vt-kaul@address.com', 'KauV5Te', 'Vebrumma', '2018-4-17', 'gracz'),
(134, 'Goodwin', 'Tressie', 'Luken', 'gt-luken@address.com', 'LukenGo6Tre', 'Trenacatus ', '2016-3-16', 'gracz'),
(135, 'Tanner', 'Elicia', 'Nivens', 'te-nivens@address.com', 'NivTanner0Eli', 'Vebrumma', '2016-12-27', 'pomocnik'),
(136, 'Caroline', 'Antonia', 'Escobedo', 'ca-escobedo@address.com', 'EscCaroline2Anto', 'Martidia', '2016-9-13', 'pomocnik'),
(137, 'Janie', 'Maxwell', 'Colvard', 'jm-colvard@address.com', 'ColvJani1Ma', 'Macarius', '2018-4-4', 'gracz'),
(138, 'Hordr', 'Hal', 'Luken', 'hh-luken@address.com', 'LukeHord6H', 'Cabriabantos', '2018-10-17', 'pomocnik'),
(139, 'Tatiana', 'Donald', 'Hehn', 'td-hehn@address.com', 'HTatian5Donal', 'Tascius', '2017-4-25', 'pomocnik'),
(140, 'Sidwell', 'Verlie', 'Leming', 'sv-leming@address.com', 'LemingSidwe0Verl', 'Cabriabantos', '2017-4-14', 'gracz'),
(141, 'Tanner', 'Carmella', 'Degraffenreid', 'tc-degraffenreid@address.com', 'DegraffTann0Carmell', 'Carantina ', '2017-12-16', 'gracz'),
(142, 'Aldridge', 'Filiberto', 'Kaul', 'af-kaul@address.com', 'KauAldridge5Fi', 'Tascius', '2018-3-2', 'pomocnik'),
(143, 'Hildeburh', 'Catharine', 'Colvard', 'hc-colvard@address.com', 'CHi1Cathari', 'Caturica', '2015-6-6', 'pomocnik'),
(144, 'Caroline', 'Omega', 'Cepeda', 'co-cepeda@address.com', 'CCar0Om', 'Balaesus', '2017-6-4', 'pomocnik'),
(145, 'Tanner', 'Delsie', 'Reisch', 'td-reisch@address.com', 'ReiscTanne0Del', 'Balaesus', '2018-6-25', 'gracz'),
(146, 'Tatiana', 'Elicia', 'Dockery', 'te-dockery@address.com', 'DockeTatiana1El', 'Alteurita', '2017-1-4', 'pomocnik'),
(147, 'Hildeburh', 'Maxwell', 'Leming', 'hm-leming@address.com', 'LHil0Ma', 'Alteurita', '2016-5-15', 'pomocnik'),
(148, 'Biorn ', 'Arianne', 'Luoma', 'ba-luoma@address.com', 'LuomBiorn6Ar', 'Caturica', '2016-10-14', 'pomocnik'),
(149, 'Ribald', 'Ursula', 'Nivens', 'ru-nivens@address.com', 'NivenR0Ursula', 'Excingomarus', '2018-8-15', 'gracz'),
(150, 'Caroline', 'Noemi', 'Hehn', 'cn-hehn@address.com', 'HCaro5Noemi', 'Trenacatus ', '2017-9-20', 'pomocnik'),
(151, 'Hiltrude', 'Catharine', 'Deltoro', 'hc-deltoro@address.com', 'DeltoHil1C', 'Catilia', '2015-11-15', 'pomocnik');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `miejscowości`
--

DROP TABLE IF EXISTS `miejscowości`;
CREATE TABLE `miejscowości` (
  `id_miejscowosci` int(11) NOT NULL,
  `nazwa_miasta` varchar(14) DEFAULT NULL,
  `liczba_domow` varchar(12) DEFAULT NULL,
  `liczba_ludnosci` varchar(15) DEFAULT NULL,
  `region` int(11) DEFAULT NULL,
  `wladca` int(11) DEFAULT NULL,
  `dominujaca_rasa` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `miejscowości`
--

INSERT INTO `miejscowości` (`id_miejscowosci`, `nazwa_miasta`, `liczba_domow`, `liczba_ludnosci`, `region`, `wladca`, `dominujaca_rasa`) VALUES
(2, 'Everwinter', '1107', '33713', 0, 0, 0),
(3, 'Rotherhithe', '1563', '18923', 0, 0, 0),
(4, 'Orilon', '548', '9494', 0, 0, 0),
(5, 'Chaepstow', '697', '18843', 0, 0, 0),
(6, 'Wolford', '636', '15378', 0, 0, 0),
(7, 'Wigston', '336', '28582', 0, 0, 0),
(8, 'Paethsmouth', '337', '28081', 0, 0, 0),
(9, 'Aeston', '1889', '10498', 0, 0, 0),
(10, 'Auchendale', '939', '6640', 0, 0, 0),
(11, 'Banrockburn', '1186', '24523', 0, 0, 0),
(12, 'Bannockburn', '1479', '28255', 0, 0, 0),
(13, 'Ballachulish', '914', '28669', 0, 0, 0),
(14, 'Lanercoast', '345', '36518', 0, 0, 0),
(15, 'Sharpton', '810', '38096', 0, 0, 0),
(16, 'Hogsfeet', '1706', '34524', 0, 0, 0),
(17, 'Red Hawk', '1026', '15610', 0, 0, 0),
(18, 'Solime', '123', '28684', 0, 0, 0),
(19, 'Blencathra', '305', '12734', 0, 0, 0),
(20, 'Lanteglos', '1907', '26574', 0, 0, 0),
(21, 'Kirkwall', '1123', '27661', 0, 0, 0),
(22, 'Pitmerden', '836', '3145', 0, 0, 0),
(23, 'Dungannon', '1759', '3988', 0, 0, 0),
(24, 'Broken Shield', '1169', '29223', 0, 0, 0),
(25, 'Accreton', '104', '35160', 0, 0, 0),
(26, 'Old Ashton', '750', '23738', 0, 0, 0),
(27, 'Arbington', '1513', '3164', 0, 0, 0),
(28, 'Dundee', '1160', '32294', 0, 0, 0),
(29, 'Auchterarder', '1319', '7662', 0, 0, 0),
(30, 'Woodhaerst', '1505', '29045', 0, 0, 0),
(31, 'Aerilon ', '1741', '39315', 0, 0, 0),
(32, 'Goldcrest', '1560', '30517', 0, 0, 0),
(33, 'Ballater', '1118', '30218', 0, 0, 0),
(34, 'Ascot', '1721', '30296', 0, 0, 0),
(35, 'Sharnwick', '1612', '25270', 0, 0, 0),
(36, 'Bromwich', '1516', '22648', 0, 0, 0),
(37, 'Shipton', '992', '36527', 0, 0, 0),
(38, 'Palperroth', '1803', '18484', 0, 0, 0),
(39, 'Aberystwyth', '1499', '25946', 0, 0, 0),
(40, 'Stathmore', '1828', '27545', 0, 0, 0),
(41, 'Stratham', '1968', '2560', 0, 0, 0),
(42, 'Cleethorpes', '1285', '16395', 0, 0, 0),
(43, 'Durnatel', '1182', '11185', 0, 0, 0),
(44, 'Fallkirk', '757', '21618', 0, 0, 0),
(45, 'Culcheth', '54', '30042', 0, 0, 0),
(46, 'Veritas', '992', '5661', 0, 0, 0),
(47, 'Holbeck', '65', '20329', 0, 0, 0),
(48, 'Athelney', '1489', '13216', 0, 0, 0),
(49, 'Spalding', '600', '26004', 0, 0, 0),
(50, 'Peatsland', '866', '19808', 0, 0, 0),
(51, 'Iyesgarth', '987', '12641', 0, 0, 0),
(52, 'Bamborourgh', '1046', '14025', 0, 0, 0),
(53, 'Kilead', '527', '37662', 0, 0, 0),
(54, 'Ritherhithe', '855', '11632', 0, 0, 0),
(55, 'Rptherglen', '467', '8301', 0, 0, 0),
(56, 'Barnemouth', '1173', '18920', 0, 0, 0),
(57, 'Northon', '1619', '28577', 0, 0, 0),
(58, 'Scrabster', '1290', '28606', 0, 0, 0),
(59, 'Goulcrest', '195', '9598', 0, 0, 0),
(60, 'Erostey', '1875', '17639', 0, 0, 0),
(61, 'Timeston', '224', '36785', 0, 0, 0),
(62, 'Auchendinny', '170', '16280', 0, 0, 0),
(63, 'Willsden', '1168', '22454', 0, 0, 0),
(64, 'Swindmore', '1515', '34105', 0, 0, 0),
(65, 'Acrine', '1523', '2524', 0, 0, 0),
(66, 'Bradford', '983', '28365', 0, 0, 0),
(67, 'Bournemouth', '867', '38206', 0, 0, 0),
(68, 'Sheffield', '1807', '22231', 0, 0, 0),
(69, 'Veritas', '1212', '34443', 0, 0, 0),
(70, 'Porthaethwidge', '577', '17327', 0, 0, 0),
(71, 'Troutberk', '1593', '5007', 0, 0, 0),
(72, 'Ballinamallard', '46', '8120', 0, 0, 0),
(73, 'Wombourne', '1556', '29133', 0, 0, 0),
(74, 'Arkmunster', '545', '17327', 0, 0, 0),
(75, 'Bamburgh', '619', '2424', 0, 0, 0),
(76, 'Penrith', '799', '8310', 0, 0, 0),
(77, 'Bredon', '122', '28268', 0, 0, 0),
(78, 'Whitebridge', '1872', '10734', 0, 0, 0),
(79, 'Crullfeld', '1985', '16132', 0, 0, 0),
(80, 'Aelinmiley', '686', '10571', 0, 0, 0),
(81, 'Croydon', '1901', '37366', 0, 0, 0),
(82, 'Watford', '123', '25868', 0, 0, 0),
(83, 'Aston', '1887', '3848', 0, 0, 0),
(84, 'Farnfoss', '1208', '29156', 0, 0, 0),
(85, 'Kilead', '797', '11592', 0, 0, 0),
(86, 'Martslock', '63', '3140', 0, 0, 0),
(87, 'Blancathey', '1980', '14251', 0, 0, 0),
(88, 'Aroonshire', '237', '28774', 0, 0, 0),
(89, 'Glaenarm', '166', '28831', 0, 0, 0),
(90, 'Yarlford', '1781', '20291', 0, 0, 0),
(91, 'Coningsby', '667', '32422', 0, 0, 0),
(92, 'Halivaara', '904', '28838', 0, 0, 0),
(93, 'Alnerwick', '335', '38252', 0, 0, 0),
(94, 'Sheffield', '1581', '28472', 0, 0, 0),
(95, 'Stratham', '1439', '3920', 0, 0, 0),
(96, 'Mirstone', '329', '31738', 0, 0, 0),
(97, 'Caerdydd', '1852', '31367', 0, 0, 0),
(98, 'Peatsland', '1725', '1285', 0, 0, 0),
(99, 'Queenstown', '1062', '8251', 0, 0, 0),
(100, 'Chesterfield', '563', '11663', 0, 0, 0),
(101, 'Aeberuthey', '92', '38124', 0, 0, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `mikstury`
--

DROP TABLE IF EXISTS `mikstury`;
CREATE TABLE `mikstury` (
  `id_mikstury` int(11) NOT NULL,
  `nazwa` varchar(5) DEFAULT NULL,
  `skladniki` varchar(9) DEFAULT NULL,
  `efekty_pozytywne` varchar(16) DEFAULT NULL,
  `efekty_negatywne` varchar(16) DEFAULT NULL,
  `moga_uzywac` varchar(11) DEFAULT NULL,
  `szansa_niepowodzenia_wykonania` varchar(30) DEFAULT NULL,
  `jest_skladnikiem` varchar(16) DEFAULT NULL,
  `opis` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `mikstury (składniki)`
--

DROP TABLE IF EXISTS `mikstury (składniki)`;
CREATE TABLE `mikstury (składniki)` (
  `id_skladniki` int(11) NOT NULL,
  `nazwa` varchar(5) DEFAULT NULL,
  `efekty_pozytywne` varchar(15) DEFAULT NULL,
  `efekty_negatywne` varchar(15) DEFAULT NULL,
  `poziom` varchar(6) DEFAULT NULL,
  `opis` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `rasy`
--

DROP TABLE IF EXISTS `rasy`;
CREATE TABLE `rasy` (
  `id_rasy` int(11) NOT NULL,
  `rasa` varchar(12) DEFAULT NULL,
  `pdrasa` varchar(7) DEFAULT NULL,
  `typ` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `rasy`
--

INSERT INTO `rasy` (`id_rasy`, `rasa`, `pdrasa`, `typ`) VALUES
(2, 'Człowiek', 'Nie', 'Neutralna'),
(3, 'Elf', 'Nie ', 'Jasna'),
(4, 'Krasnolud', 'Nie', 'Neutralna'),
(5, 'Goblin', 'Nie', 'Ciemna'),
(6, 'Troll', 'Nie', 'Ciemna'),
(7, 'Ork', 'Nie', 'Ciemna'),
(8, 'Smok', 'Nie', 'Ciemna'),
(9, 'Gnom', 'Nie', 'Neutralna'),
(10, 'Niziołek', 'Nie', 'Jasna'),
(11, 'Mroczny elf', 'Tak', 'Ciemna'),
(12, 'Biały ork', 'Tak', 'Jasna'),
(13, 'Smokowiec', 'Tak', 'Jasna'),
(14, 'Elf leśny', 'Tak', 'jasna'),
(15, 'Orkowy troll', 'Tak', 'Ciemna');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `regiony (geograficzne)`
--

DROP TABLE IF EXISTS `regiony (geograficzne)`;
CREATE TABLE `regiony (geograficzne)` (
  `id_regiony` int(11) NOT NULL,
  `nazwa_region` varchar(13) DEFAULT NULL,
  `klimat` varchar(19) DEFAULT NULL,
  `przewazajaca_rasa` int(11) DEFAULT NULL,
  `pozostale_rasy` int(11) DEFAULT NULL,
  `znienawidzone_rasy` int(11) DEFAULT NULL,
  `wystepujacy_wrogowie` varchar(35) DEFAULT NULL,
  `wladca` int(11) DEFAULT NULL,
  `dostepne_szkoly` varchar(28) DEFAULT NULL,
  `dominujacy_kult` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `regiony (geograficzne)`
--

INSERT INTO `regiony (geograficzne)` (`id_regiony`, `nazwa_region`, `klimat`, `przewazajaca_rasa`, `pozostale_rasy`, `znienawidzone_rasy`, `wystepujacy_wrogowie`, `wladca`, `dostepne_szkoly`, `dominujacy_kult`) VALUES
(2, 'Osheica', 'mroźny', 0, 0, 0, 'tytani,łowcy,śnieżne pantery', 0, 'walki,magi wody', 0),
(3, 'Keswaestein', 'morski', 0, 0, 0, 'smoki,geniusze,kanibale', 0, 'handlowa,logityczna', 0),
(4, 'Uthen', 'morski', 0, 0, 0, 'żywiołaki wody, żywiołaki powietrza', 0, 'obrony,magi powietrza', 0),
(5, 'Tasnia', 'umiarkowany', 0, 0, 0, 'żywiołaki ziemi, żywiołaki umysłu', 0, 'interpersonalna,złodziejstwa', 0),
(6, 'Pleostein', 'tropikalny', 0, 0, 0, 'harpie,obserwatorzy', 0, 'Magi magi umysłu', 0),
(7, 'Spiycia', 'mroźny', 0, 0, 0, 'smoki', 0, 'magi ziemi, magi natury', 0),
(8, 'Eclana', 'umiarkowany', 0, 0, 0, 'trolle,gnomi zabójcy', 0, 'smoczej siły,skradania', 0),
(9, 'Afrurg', 'umiarkowany', 0, 0, 0, 'mroczne elfy', 0, 'walki,interpersonalna', 0),
(10, 'Plei Scesh', 'pustynny', 0, 0, 0, 'nekromanci,wampiry,mumie', 0, 'magi ognia,dowodzenia', 0),
(11, 'Smeo Stral', 'deszczowy', 0, 0, 0, 'żywiołaki wody, żywiołaki powietrza', 0, 'dowodzenia,magi wody', 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `role postaci`
--

DROP TABLE IF EXISTS `role postaci`;
CREATE TABLE `role postaci` (
  `id_role_postaci` int(11) NOT NULL,
  `rola` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `role postaci`
--

INSERT INTO `role postaci` (`id_role_postaci`, `rola`) VALUES
(1, 'Sprzedawca'),
(2, 'Kowal'),
(3, 'Płatnerz'),
(4, 'Złotnik'),
(5, 'Straganiarz'),
(6, 'Złodziej'),
(7, 'Zabójca'),
(8, 'Negocjator'),
(9, 'Przewodnik'),
(10, 'Wojownik'),
(11, 'Mag'),
(12, 'Czarownik'),
(13, 'Szaman'),
(14, 'Gwardzista'),
(15, 'Szlachcic'),
(16, 'Kuglarz'),
(17, 'Górnik'),
(18, 'Animator'),
(19, 'Nekromanta');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `umiejętności`
--

DROP TABLE IF EXISTS `umiejętności`;
CREATE TABLE `umiejętności` (
  `id_umiejetnosci` int(11) NOT NULL,
  `nazwa` varchar(18) DEFAULT NULL,
  `wymagania_umiejatnosci` varchar(21) DEFAULT NULL,
  `umiejentowsci_negujace` varchar(21) DEFAULT NULL,
  `pozytywne_efekty` varchar(37) DEFAULT NULL,
  `negatywne_efekty` varchar(52) DEFAULT NULL,
  `ograniczenie_rasowe` varchar(39) DEFAULT NULL,
  `opis` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `umiejętności`
--

INSERT INTO `umiejętności` (`id_umiejetnosci`, `nazwa`, `wymagania_umiejatnosci`, `umiejentowsci_negujace`, `pozytywne_efekty`, `negatywne_efekty`, `ograniczenie_rasowe`, `opis`) VALUES
(1, 'Nazwa', 'Wymagane umiejętności', 'Umiejętności negujące', 'Pozytywny efekt (modyfikacje)', 'Negatywny efekt (modyfikacje)', 'Ograniczenia rasowe', 'Opis'),
(2, 'Urok', NULL, NULL, '-5% trudności oczarowania oponenta', NULL, 'nie dla ciemnych', NULL),
(3, 'Skradanie ', NULL, NULL, '+10% zaskoczenia', NULL, NULL, NULL),
(4, 'Szczęście', NULL, 'Zawadiaka', '+7% uniku obrażeń krytycznych', NULL, NULL, NULL),
(5, 'Negocjacja', NULL, NULL, '-10% kosztów zakupu ekwipunku', NULL, 'nie dla ciemnych (wyjątek mroczne elfy)', NULL),
(6, 'Kradzież', NULL, NULL, '-12% szans na wykrycie', NULL, NULL, NULL),
(7, 'Oburęczność', NULL, NULL, 'walka na dwie ręce', '-10% zręczność', 'nie dla neutralnych', NULL),
(8, 'Walka tarczą', 'Oburęczność', NULL, '+11% do obrażeń', '-5% siła', NULL, NULL),
(9, 'Modlitwa', NULL, NULL, 'podwojenie boskich umiejętności', NULL, NULL, NULL),
(10, 'Logistyka', NULL, NULL, '+30% szybsze poruszanie', '-15% szczęście', NULL, NULL),
(11, 'Dobre samopoczucie', 'Szczęście', 'Zawadiaka', 'podwojenie efektu szczęścia', NULL, NULL, NULL),
(12, 'Zawadiaka', NULL, NULL, '+15% dowodzenia tłumem', NULL, 'tylko ciemne', NULL),
(13, 'Walka wręcz', NULL, NULL, '+30% siła w walce bez broni', '-15% siły w walce oburącz', NULL, NULL),
(14, 'Zasadzka', NULL, NULL, '150% zręczności przy zaczajeniu', NULL, NULL, NULL),
(15, 'Smoczy duch', NULL, 'Skradanie, Urok', '200% siły w walce, 150% punktów życia', '+20% trudności oczarowania oponenta, -100% skradanie', 'tylko smoki i smokowce', NULL),
(16, 'Dowodzenie', NULL, NULL, '+20% obrażeń zadawanych przez grupę', NULL, NULL, NULL),
(17, 'Magia ziemi', 'Źródło magii', 'Dowolna inna magia', '+20% dla zaklęć ', NULL, NULL, NULL),
(18, 'Magia ognia', 'Źródło magii', 'Dowolna inna magia', '+20% dla zaklęć ', NULL, NULL, NULL),
(19, 'Magia powietrza', 'Źródło magii', 'Dowolna inna magia', '+20% dla zaklęć ', NULL, NULL, NULL),
(20, 'Magia wody', 'Źródło magii', 'Dowolna inna magia', '+20% dla zaklęć ', NULL, NULL, NULL),
(21, 'Magia umysłu', 'Źródło magii', 'Dowolna inna magia', '+20% dla zaklęć ', NULL, NULL, NULL),
(22, 'Magia przyrody', 'Źródło magii', 'Dowolna inna magia', '+20% dla zaklęć ', NULL, NULL, NULL),
(23, 'Źródło magii', NULL, NULL, 'podwojenie many', NULL, NULL, NULL);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `budynki`
--
ALTER TABLE `budynki`
  ADD PRIMARY KEY (`id_budynki`),
  ADD KEY `miasto` (`miasto`),
  ADD KEY `wlasciciel` (`wlasciciel`);

--
-- Indeksy dla tabeli `bóstwa`
--
ALTER TABLE `bóstwa`
  ADD PRIMARY KEY (`id_bostwa`),
  ADD KEY `charakter` (`charakter`);

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
  ADD PRIMARY KEY (`id_dane_graczy`),
  ADD KEY `rasa` (`rasa`),
  ADD KEY `charakter` (`charakter`),
  ADD KEY `wyznawane_bostwo` (`wyznawane_bostwo`);

--
-- Indeksy dla tabeli `dane postaci w grze(niezależni)`
--
ALTER TABLE `dane postaci w grze(niezależni)`
  ADD PRIMARY KEY (`id_dane_npc`),
  ADD KEY `rasa` (`rasa`),
  ADD KEY `charakter` (`charakter`),
  ADD KEY `wyznawane_bostwo` (`wyznawane_bostwo`),
  ADD KEY `nastawienie_do_innych_postaci` (`nastawienie_do_innych_postaci`);

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
  ADD PRIMARY KEY (`id_gracze`);

--
-- Indeksy dla tabeli `miejscowości`
--
ALTER TABLE `miejscowości`
  ADD PRIMARY KEY (`id_miejscowosci`);

--
-- Indeksy dla tabeli `mikstury`
--
ALTER TABLE `mikstury`
  ADD PRIMARY KEY (`id_mikstury`);

--
-- Indeksy dla tabeli `mikstury (składniki)`
--
ALTER TABLE `mikstury (składniki)`
  ADD PRIMARY KEY (`id_skladniki`);

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
  MODIFY `id_budynki` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=502;

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
  MODIFY `id_czary` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT dla tabeli `dane postaci w grze (gracze)`
--
ALTER TABLE `dane postaci w grze (gracze)`
  MODIFY `id_dane_graczy` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT dla tabeli `dane postaci w grze(niezależni)`
--
ALTER TABLE `dane postaci w grze(niezależni)`
  MODIFY `id_dane_npc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT dla tabeli `efekty`
--
ALTER TABLE `efekty`
  MODIFY `id_efekty` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT dla tabeli `ekwipunek`
--
ALTER TABLE `ekwipunek`
  MODIFY `id_ekwipunek` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT dla tabeli `gracze`
--
ALTER TABLE `gracze`
  MODIFY `id_gracze` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- AUTO_INCREMENT dla tabeli `miejscowości`
--
ALTER TABLE `miejscowości`
  MODIFY `id_miejscowosci` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT dla tabeli `mikstury`
--
ALTER TABLE `mikstury`
  MODIFY `id_mikstury` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `mikstury (składniki)`
--
ALTER TABLE `mikstury (składniki)`
  MODIFY `id_skladniki` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
-- Ograniczenia dla tabeli `bóstwa`
--
ALTER TABLE `bóstwa`
  ADD CONSTRAINT `bóstwa_ibfk_1` FOREIGN KEY (`charakter`) REFERENCES `charaktery` (`id_charaktery`);

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
