-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 03-Out-2023 às 14:51
-- Versão do servidor: 10.5.15-MariaDB-0+deb11u1
-- versão do PHP: 8.2.0RC7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `controleCir`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipoProcessadores`
--

CREATE TABLE `tipoProcessadores` (
  `idTipoProcessador` int(11) NOT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `statusTipo` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tipoProcessadores`
--

INSERT INTO `tipoProcessadores` (`idTipoProcessador`, `descricao`, `statusTipo`) VALUES
(1, 'AMD 64 X2 DUAL CORE 4000+ - 2.11GHz', 'ativo'),
(2, 'AMD 9850 QUAD-CORE - 2.50GHz', 'ativo'),
(3, 'AMD A10 - 7860K RADEON R7 - 3.60GHz', 'ativo'),
(4, 'AMD A10 7860K - 3.60GHz', 'ativo'),
(5, 'AMD A4 - 3400 APU WITH RADEON HD GRAPHICS ', 'ativo'),
(6, 'AMD A4 - 4000 APU WITH RADEON HD GRAPHICS ', 'ativo'),
(7, 'AMD ATHLON - 1.0GHz', 'ativo'),
(8, 'AMD ATHLON - 1.49GHz', 'ativo'),
(9, 'AMD ATHLON - 1.4GHz', 'ativo'),
(10, 'AMD ATHLON - 1.6GHz', 'ativo'),
(11, 'AMD ATHLON - 2.0GHz', 'ativo'),
(12, 'AMD ATHLON - 2800+ - 1800', 'ativo'),
(13, 'AMD ATHLON - 3000+ - 1800', 'ativo'),
(14, 'AMD ATHLON - 3000+ - 2000', 'ativo'),
(15, 'AMD ATHLON - 3200+ - 2000', 'ativo'),
(16, 'AMD ATHLON - 3200+ - 2200', 'ativo'),
(17, 'AMD ATHLON - 3400+ - 2200', 'ativo'),
(18, 'AMD ATHLON - 3400+ - 2400', 'ativo'),
(19, 'AMD ATHLON - 3500+ - 2200', 'ativo'),
(20, 'AMD ATHLON - 3700+ - 2200', 'ativo'),
(21, 'AMD ATHLON - 3700+ - 2400', 'ativo'),
(22, 'AMD ATHLON - 3800+ - 2400', 'ativo'),
(23, 'AMD ATHLON - 4000+ - 2400', 'ativo'),
(24, 'AMD ATHLON - 4000+ - 2600', 'ativo'),
(25, 'AMD ATHLON 2200', 'ativo'),
(26, 'AMD ATHLON 64 - 2.8GHz', 'ativo'),
(27, 'AMD ATHLON 64 - 3.0GHz', 'ativo'),
(28, 'AMD ATHLON 64 - 3.2GHz', 'ativo'),
(29, 'AMD ATHLON 64 - 3.5GHz', 'ativo'),
(30, 'AMD ATHLON 64 - 4.2GHz', 'ativo'),
(31, 'AMD ATHLON 64 5200', 'ativo'),
(32, 'AMD ATHLON 64 X2 5200', 'ativo'),
(33, 'AMD ATHLON 64 X2 6000+ - 3.0GHz', 'ativo'),
(34, 'AMD ATHLON 64 X2 DUAL - 2.11GHz', 'ativo'),
(35, 'AMD ATHLON 64 X2 DUAL - 2.31GHz', 'ativo'),
(36, 'AMD ATHLON 64 X2 DUAL - 5.200GHz', 'ativo'),
(37, 'AMD ATHLON 64 X2 DUAL 2.11GHz', 'ativo'),
(38, 'AMD ATHLON 64 X2 DUAL 5200', 'ativo'),
(39, 'AMD ATHLON 64 X2 DUAL CORE 4000+', 'ativo'),
(40, 'AMD ATHLON 64 X2 DUAL CORE 4200+', 'ativo'),
(41, 'AMD ATHLON 64 X2 DUAL CORE 4400+', 'ativo'),
(42, 'AMD ATHLON 64 X2 DUAL CORE 5000+', 'ativo'),
(43, 'AMD ATHLON 64 X2 DUAL CORE 5200+', 'ativo'),
(44, 'AMD ATHLON 64 X2 DUAL CORE 6000+ - 3.0GHz', 'ativo'),
(45, 'AMD ATHLON 900 MHz', 'ativo'),
(46, 'AMD ATHLON DUAL CORE 4050 - 2.11GHz', 'ativo'),
(47, 'AMD ATHLON FX-51 - 2200', 'ativo'),
(48, 'AMD ATHLON FX-53 - 2400', 'ativo'),
(49, 'AMD ATHLON FX-55 - 2600', 'ativo'),
(50, 'AMD ATHLON FX-57 - 2800', 'ativo'),
(51, 'AMD ATHLON FX-60 - 2600', 'ativo'),
(52, 'AMD ATHLON FX-62 - 2800', 'ativo'),
(53, 'AMD ATHLON FX-70 - 2600', 'ativo'),
(54, 'AMD ATHLON FX-72 - 2800', 'ativo'),
(55, 'AMD ATHLON FX-74 - 3000', 'ativo'),
(56, 'AMD ATHLON II X2 - 215 - 2.7GHz', 'ativo'),
(57, 'AMD ATHLON II X2 - 220 - 2.8GHz', 'ativo'),
(58, 'AMD ATHLON II X2 - 235E - 2.7GHz', 'ativo'),
(59, 'AMD ATHLON II X2 - 240 - 2.8GHz', 'ativo'),
(60, 'AMD ATHLON II X2 - 240E - 2.8GHz', 'ativo'),
(61, 'AMD ATHLON II X2 - 245 C3 - 2.9GHz', 'ativo'),
(62, 'AMD ATHLON II X2 - 245E - 2.9GHz', 'ativo'),
(63, 'AMD ATHLON II X2 - 250 C3 - 3.0GHz', 'ativo'),
(64, 'AMD ATHLON II X2 - 250E - 3.0GHz', 'ativo'),
(65, 'AMD ATHLON II X2 - 255 C3 - 3.1GHz', 'ativo'),
(66, 'AMD ATHLON II X2 - 260 - 3.2GHz', 'ativo'),
(67, 'AMD ATHLON II X2 - 260U - 1.6GHz', 'ativo'),
(68, 'AMD ATHLON II X2 - 260U - 1.8GHz', 'ativo'),
(69, 'AMD ATHLON II X2 - 3.40GHz', 'ativo'),
(70, 'AMD ATHLON II X2 - B22 - 2.8GHz', 'ativo'),
(71, 'AMD ATHLON II X2 - B24 - 3.0GHz', 'ativo'),
(72, 'AMD ATHLON II X2 - 250 - 3.0GHz', 'ativo'),
(73, 'AMD ATHLON II X2 - 270', 'ativo'),
(74, 'AMD ATHLON II X2 - 3.40GHz', 'ativo'),
(75, 'AMD ATHLON II X2 - B24', 'ativo'),
(76, 'AMD ATHLON II X2 - B28', 'ativo'),
(77, 'AMD ATHLON II X3 - 400E - 2.2GHz', 'ativo'),
(78, 'AMD ATHLON II X3 - 405E C3 - 2.3GHz', 'ativo'),
(79, 'AMD ATHLON II X3 - 415E - 2.5GHz', 'ativo'),
(80, 'AMD ATHLON II X3 - 425 - 2.7GHz', 'ativo'),
(81, 'AMD ATHLON II X3 - 435 C3 - 2.9GHz', 'ativo'),
(82, 'AMD ATHLON II X3 - 440 C3 - 3.0GHz', 'ativo'),
(83, 'AMD ATHLON II X3 - 445 - 3.1GHz', 'ativo'),
(84, 'AMD ATHLON II X3 - 450 - 3.2GHz', 'ativo'),
(85, 'AMD ATHLON II X4 - 600E - 2.2GHz', 'ativo'),
(86, 'AMD ATHLON II X4 - 605E C3 - 2.3GHz', 'ativo'),
(87, 'AMD ATHLON II X4 - 620 - 2.6GHz', 'ativo'),
(88, 'AMD ATHLON II X4 - 630 C3 - 2.8GHz', 'ativo'),
(89, 'AMD ATHLON II X4 - 635 C3 - 2.9GHz', 'ativo'),
(90, 'AMD ATHLON LE - 1600 - 2200', 'ativo'),
(91, 'AMD ATHLON LE - 1620 - 2400', 'ativo'),
(92, 'AMD ATHLON LE - 1640 - 2700', 'ativo'),
(93, 'AMD ATHLON LE - 1660 - 2800', 'ativo'),
(94, 'AMD ATHLON X2 4400 - 2.3GHz', 'ativo'),
(95, 'AMD ATHLON X2 DUAL CORE 3250 - 1.50GHz', 'ativo'),
(96, 'AMD ATHLON X2 DUAL CORE 3250E ', 'ativo'),
(97, 'AMD ATHLON X2 DUAL-CORE - 3600+ - 1900', 'ativo'),
(98, 'AMD ATHLON X2 DUAL-CORE - 3800+ - 2000', 'ativo'),
(99, 'AMD ATHLON X2 DUAL-CORE - 4000+ - 2000', 'ativo'),
(100, 'AMD ATHLON X2 DUAL-CORE - 4000+ - 2100', 'ativo'),
(101, 'AMD ATHLON X2 DUAL-CORE - 4050E - 2100', 'ativo'),
(102, 'AMD ATHLON X2 DUAL-CORE - 4200+ - 2200', 'ativo'),
(103, 'AMD ATHLON X2 DUAL-CORE - 4400+ - 2200', 'ativo'),
(104, 'AMD ATHLON X2 DUAL-CORE - 4400+ - 2300', 'ativo'),
(105, 'AMD ATHLON X2 DUAL-CORE - 4450E - 2300', 'ativo'),
(106, 'AMD ATHLON X2 DUAL-CORE - 4600+ - 2400', 'ativo'),
(107, 'AMD ATHLON X2 DUAL-CORE - 4800+ - 2400', 'ativo'),
(108, 'AMD ATHLON X2 DUAL-CORE - 4800+ - 2500', 'ativo'),
(109, 'AMD ATHLON X2 DUAL-CORE - 4850E - 2500', 'ativo'),
(110, 'AMD ATHLON X2 DUAL-CORE - 5000+ - 2600', 'ativo'),
(111, 'AMD ATHLON X2 DUAL-CORE - 5200+ - 2600', 'ativo'),
(112, 'AMD ATHLON X2 DUAL-CORE - 5200+ - 2700', 'ativo'),
(113, 'AMD ATHLON X2 DUAL-CORE - 5400+ - 2800', 'ativo'),
(114, 'AMD ATHLON X2 DUAL-CORE - 5600+ - 2800', 'ativo'),
(115, 'AMD ATHLON X2 DUAL-CORE - 5600+ - 2900', 'ativo'),
(116, 'AMD ATHLON X2 DUAL-CORE - 6000+ - 3100', 'ativo'),
(117, 'AMD ATHLON X2 DUAL-CORE - 6400+ - 3200', 'ativo'),
(118, 'AMD ATHLON X2 DUAL-CORE - BE - 2300 - 1900', 'ativo'),
(119, 'AMD ATHLON X2 DUAL-CORE - BE - 2350 - 2100', 'ativo'),
(120, 'AMD ATHLON X2 DUAL-CORE - BE - 2400 - 2300', 'ativo'),
(121, 'AMD ATHLON XP - 1.0GHz', 'ativo'),
(122, 'AMD ATHLON XP - 1.2GHz', 'ativo'),
(123, 'AMD ATHLON XP - 1.7GHz', 'ativo'),
(124, 'AMD ATHLON XP - 1.8GHz', 'ativo'),
(125, 'AMD ATHLON XP - 2.0GHz', 'ativo'),
(126, 'AMD ATHLON XP - 2.2GHz', 'ativo'),
(127, 'AMD ATHLON XP - 2.4GHz', 'ativo'),
(128, 'AMD ATHLON XP - 2.6GHz', 'ativo'),
(129, 'AMD ATHLON XP - 2.8GHz', 'ativo'),
(130, 'AMD ATHLON XP 1500 1.01GHz', 'ativo'),
(131, 'AMD ATLHON 1.4GHz', 'ativo'),
(132, 'AMD ATLHON 1.6GHz', 'ativo'),
(133, 'AMD ATLHON 2.0GHz', 'ativo'),
(134, 'AMD ATLHON 64 3.5GHz', 'ativo'),
(135, 'AMD ATLHON 64 BITS 3.2GHz', 'ativo'),
(136, 'AMD BUSINESS CLASS ATHLON - 1640B - 2700', 'ativo'),
(137, 'AMD BUSINESS CLASS ATHLON - X2 DUAL-CORE - 4450B - 2300', 'ativo'),
(138, 'AMD BUSINESS CLASS ATHLON - X2 DUAL-CORE - 4850B - 2500', 'ativo'),
(139, 'AMD BUSINESS CLASS ATHLON - X2 DUAL-CORE - 5000B - 2600', 'ativo'),
(140, 'AMD BUSINESS CLASS ATHLON - X2 DUAL-CORE - 5200B - 2700', 'ativo'),
(141, 'AMD BUSINESS CLASS ATHLON - X2 DUAL-CORE - 5400B - 2800', 'ativo'),
(142, 'AMD BUSINESS CLASS ATHLON - X2 DUAL-CORE - 5600B - 2900', 'ativo'),
(143, 'AMD BUSINESS CLASS PHENOM -  X3 - TRIPLE - CORE - 8600B - 2300', 'ativo'),
(144, 'AMD BUSINESS CLASS PHENOM - X3 - TRIPLE - CORE - 8750B - 2400', 'ativo'),
(145, 'AMD BUSINESS CLASS PHENOM - X4 - QUAD-CORE - 9600B - 2300', 'ativo'),
(146, 'AMD BUSINESS CLASS PHENOM - X4 - QUAD-CORE - 9750B - 2400', 'ativo'),
(147, 'AMD C - 50 - 1.33GHz', 'ativo'),
(148, 'AMD C-70 APU WITH RADEON HD GRAPHICS ', 'ativo'),
(149, 'AMD DUAL CORE 5200', 'ativo'),
(150, 'AMD DUROM - 1.150GHz', 'ativo'),
(151, 'AMD DUROM - 1.1GHz', 'ativo'),
(152, 'AMD DUROM - 1.2GHz', 'ativo'),
(153, 'AMD DUROM - 1.6GHz', 'ativo'),
(154, 'AMD DUROM - 800MHz', 'ativo'),
(155, 'AMD DUROM - 850MHz', 'ativo'),
(156, 'AMD DUROM - 950MHz', 'ativo'),
(157, 'AMD DUROM - 995MHz', 'ativo'),
(158, 'AMD DUROM - 1.3GHz', 'ativo'),
(159, 'AMD E - 350 1.60GHz', 'ativo'),
(160, 'AMD FX - 6300 SIX - CORE', 'ativo'),
(161, 'AMD FX - 8300 EIGHT-CORE', 'ativo'),
(162, 'AMD FX - 8350 EIGHT-CORE', 'ativo'),
(163, 'AMD OPTERON DE SEGUNDA GERACAO - 1210 - 1800', 'ativo'),
(164, 'AMD OPTERON DE SEGUNDA GERACAO - 1210HE - 1800', 'ativo'),
(165, 'AMD OPTERON DE SEGUNDA GERACAO - 1212 - 2000', 'ativo'),
(166, 'AMD OPTERON DE SEGUNDA GERACAO - 1212HE - 2000', 'ativo'),
(167, 'AMD OPTERON DE SEGUNDA GERACAO - 1214 - 2200', 'ativo'),
(168, 'AMD OPTERON DE SEGUNDA GERACAO - 1214HE - 2200', 'ativo'),
(169, 'AMD OPTERON DE SEGUNDA GERACAO - 1216 - 2400', 'ativo'),
(170, 'AMD OPTERON DE SEGUNDA GERACAO - 1216HE - 2400', 'ativo'),
(171, 'AMD OPTERON DE SEGUNDA GERACAO - 1218 - 2600', 'ativo'),
(172, 'AMD OPTERON DE SEGUNDA GERACAO - 1218HE - 2600', 'ativo'),
(173, 'AMD OPTERON DE SEGUNDA GERACAO - 1220 - 2800', 'ativo'),
(174, 'AMD OPTERON DE SEGUNDA GERACAO - 1220SE - 2800', 'ativo'),
(175, 'AMD OPTERON DE SEGUNDA GERACAO - 1222 - 3000', 'ativo'),
(176, 'AMD OPTERON DE SEGUNDA GERACAO - 1222SE - 3000', 'ativo'),
(177, 'AMD OPTERON DE SEGUNDA GERACAO - 2210 - 1800', 'ativo'),
(178, 'AMD OPTERON DE SEGUNDA GERACAO - 2210HE - 1800', 'ativo'),
(179, 'AMD OPTERON DE SEGUNDA GERACAO - 2212 - 2000', 'ativo'),
(180, 'AMD OPTERON DE SEGUNDA GERACAO - 2212HE - 2000', 'ativo'),
(181, 'AMD OPTERON DE SEGUNDA GERACAO - 2214 - 2200', 'ativo'),
(182, 'AMD OPTERON DE SEGUNDA GERACAO - 2214HE - 2200', 'ativo'),
(183, 'AMD OPTERON DE SEGUNDA GERACAO - 2216 - 2400', 'ativo'),
(184, 'AMD OPTERON DE SEGUNDA GERACAO - 2216HE - 2400', 'ativo'),
(185, 'AMD OPTERON DE SEGUNDA GERACAO - 2218 - 2600', 'ativo'),
(186, 'AMD OPTERON DE SEGUNDA GERACAO - 2218HE - 2600', 'ativo'),
(187, 'AMD OPTERON DE SEGUNDA GERACAO - 2220 - 2800', 'ativo'),
(188, 'AMD OPTERON DE SEGUNDA GERACAO - 2220SE - 2800', 'ativo'),
(189, 'AMD OPTERON DE SEGUNDA GERACAO - 2222 - 3000', 'ativo'),
(190, 'AMD OPTERON DE SEGUNDA GERACAO - 2222SE - 3000', 'ativo'),
(191, 'AMD OPTERON DE SEGUNDA GERACAO - 2224SE - 3200', 'ativo'),
(192, 'AMD OPTERON DE SEGUNDA GERACAO - 8212 - 2000', 'ativo'),
(193, 'AMD OPTERON DE SEGUNDA GERACAO - 8212HE - 2000', 'ativo'),
(194, 'AMD OPTERON DE SEGUNDA GERACAO - 8214 - 2200', 'ativo'),
(195, 'AMD OPTERON DE SEGUNDA GERACAO - 8214HE - 2200', 'ativo'),
(196, 'AMD OPTERON DE SEGUNDA GERACAO - 8216 - 2400', 'ativo'),
(197, 'AMD OPTERON DE SEGUNDA GERACAO - 8216HE - 2400', 'ativo'),
(198, 'AMD OPTERON DE SEGUNDA GERACAO - 8218 - 2600', 'ativo'),
(199, 'AMD OPTERON DE SEGUNDA GERACAO - 8218HE - 2600', 'ativo'),
(200, 'AMD OPTERON DE SEGUNDA GERACAO - 8220 - 2800', 'ativo'),
(201, 'AMD OPTERON DE SEGUNDA GERACAO - 8220SE - 2800', 'ativo'),
(202, 'AMD OPTERON DE SEGUNDA GERACAO - 8222 - 3000', 'ativo'),
(203, 'AMD OPTERON DE SEGUNDA GERACAO - 8222SE - 3000', 'ativo'),
(204, 'AMD OPTERON DE SEGUNDA GERACAO - 8224SE - 3200', 'ativo'),
(205, 'AMD OPTERON DE TERCEIRA GERACAO - 1352 - 2100', 'ativo'),
(206, 'AMD OPTERON DE TERCEIRA GERACAO - 1354 - 2200', 'ativo'),
(207, 'AMD OPTERON DE TERCEIRA GERACAO - 1356 - 2300', 'ativo'),
(208, 'AMD OPTERON DE TERCEIRA GERACAO - 2344HE - 1700', 'ativo'),
(209, 'AMD OPTERON DE TERCEIRA GERACAO - 2346HE - 1800', 'ativo'),
(210, 'AMD OPTERON DE TERCEIRA GERACAO - 2347 - 1900', 'ativo'),
(211, 'AMD OPTERON DE TERCEIRA GERACAO - 2347HE - 1900', 'ativo'),
(212, 'AMD OPTERON DE TERCEIRA GERACAO - 2350 - 2000', 'ativo'),
(213, 'AMD OPTERON DE TERCEIRA GERACAO - 2352 - 2100', 'ativo'),
(214, 'AMD OPTERON DE TERCEIRA GERACAO - 2354 - 2200', 'ativo'),
(215, 'AMD OPTERON DE TERCEIRA GERACAO - 2356 - 2300', 'ativo'),
(216, 'AMD OPTERON DE TERCEIRA GERACAO - 2358SE - 2400', 'ativo'),
(217, 'AMD OPTERON DE TERCEIRA GERACAO - 2360SE - 2500', 'ativo'),
(218, 'AMD OPTERON DE TERCEIRA GERACAO - 8346HE - 1800', 'ativo'),
(219, 'AMD OPTERON DE TERCEIRA GERACAO - 8347 - 1900', 'ativo'),
(220, 'AMD OPTERON DE TERCEIRA GERACAO - 8347HE - 1900', 'ativo'),
(221, 'AMD OPTERON DE TERCEIRA GERACAO - 8350 - 2000', 'ativo'),
(222, 'AMD OPTERON DE TERCEIRA GERACAO - 8354 - 2200', 'ativo'),
(223, 'AMD OPTERON DE TERCEIRA GERACAO - 8356 - 2300', 'ativo'),
(224, 'AMD OPTERON DE TERCEIRA GERACAO - 8358SE - 2400', 'ativo'),
(225, 'AMD OPTERON DE TERCEIRA GERACAO - 8360SE - 2500', 'ativo'),
(226, 'AMD PHENOM 8450 TRIPLE - CORE', 'ativo'),
(227, 'AMD PHENOM 8650 TRIPLE - CORE', 'ativo'),
(228, 'AMD PHENOM 9650 - 2.30GHz', 'ativo'),
(229, 'AMD PHENOM II X2 - 545 BE - 3.0GHz', 'ativo'),
(230, 'AMD PHENOM II X2 - 550 BE - 3.1GHz', 'ativo'),
(231, 'AMD PHENOM II X2 - 555 BE C3 - 3.2GHz', 'ativo'),
(232, 'AMD PHENOM II X2 - B53 - 2.8GHz', 'ativo'),
(233, 'AMD PHENOM II X2 - B55 - 3.0GHz', 'ativo'),
(234, 'AMD PHENOM II X2 - 555 3.20GHz', 'ativo'),
(235, 'AMD PHENOM II X3 - 700E - 2.4GHz', 'ativo'),
(236, 'AMD PHENOM II X3 - 705E - 2.5GHz', 'ativo'),
(237, 'AMD PHENOM II X3 - 710 BE - 2.6GHz', 'ativo'),
(238, 'AMD PHENOM II X3 - 715 - 2.8GHz', 'ativo'),
(239, 'AMD PHENOM II X3 - 720 BE - 2.8GHz', 'ativo'),
(240, 'AMD PHENOM II X3 - 740 BE - 3.0GHz', 'ativo'),
(241, 'AMD PHENOM II X3 - B73 - 2.8GHz', 'ativo'),
(242, 'AMD PHENOM II X3 - B75 - 3.0GHz', 'ativo'),
(243, 'AMD PHENOM II X4 - 805 - 2.5GHz', 'ativo'),
(244, 'AMD PHENOM II X4 - 810 - 2.6GHz', 'ativo'),
(245, 'AMD PHENOM II X4 - 820 - 2.8GHz', 'ativo'),
(246, 'AMD PHENOM II X4 - 900E - 2.4GHz', 'ativo'),
(247, 'AMD PHENOM II X4 - 905E - 2.5GHz', 'ativo'),
(248, 'AMD PHENOM II X4 - 910 - 2.6GHz', 'ativo'),
(249, 'AMD PHENOM II X4 - 910E C3 - 2.6GHz', 'ativo'),
(250, 'AMD PHENOM II X4 - 920 - 2.8GHz', 'ativo'),
(251, 'AMD PHENOM II X4 - 925 - 2.8GHz', 'ativo'),
(252, 'AMD PHENOM II X4 - 940 - 3.0GHz', 'ativo'),
(253, 'AMD PHENOM II X4 - 945 - 3.0GHz', 'ativo'),
(254, 'AMD PHENOM II X4 - 945 C3 - 3.0GHz', 'ativo'),
(255, 'AMD PHENOM II X4 - 955 BE C3 - 3.2GHz', 'ativo'),
(256, 'AMD PHENOM II X4 - 960T - 3.0GHz', 'ativo'),
(257, 'AMD PHENOM II X4 - 965 BE - 3.4GHz', 'ativo'),
(258, 'AMD PHENOM II X4 - 965 BE C3 - 3.4GHz', 'ativo'),
(259, 'AMD PHENOM II X4 - 975 - 3.6GHz', 'ativo'),
(260, 'AMD PHENOM II X6 - 1035T - 2.6GHz', 'ativo'),
(261, 'AMD PHENOM II X6 - 1055T - 2.8GHz', 'ativo'),
(262, 'AMD PHENOM II X6 - 1075T - 3.0GHz', 'ativo'),
(263, 'AMD PHENOM II X6 - 1090T - 3.2GHz', 'ativo'),
(264, 'AMD PHENOM TRIPLE - CORE - 2.31GHz', 'ativo'),
(265, 'AMD PHENOM X3 - TRIPLE - CORE - 8250E - 1.9GHz', 'ativo'),
(266, 'AMD PHENOM X3 - TRIPLE - CORE - 8400 - 2100', 'ativo'),
(267, 'AMD PHENOM X3 - TRIPLE - CORE - 8450 - 2.1GHz', 'ativo'),
(268, 'AMD PHENOM X3 - TRIPLE - CORE - 8450E - 2.1GHz', 'ativo'),
(269, 'AMD PHENOM X3 - TRIPLE - CORE - 8600 - 2300', 'ativo'),
(270, 'AMD PHENOM X3 - TRIPLE - CORE - 8650 - 2.3GHz', 'ativo'),
(271, 'AMD PHENOM X3 - TRIPLE - CORE - 8650 - 2300', 'ativo'),
(272, 'AMD PHENOM X3 - TRIPLE - CORE - 8750 - 2.4GHz', 'ativo'),
(273, 'AMD PHENOM X3 - TRIPLE - CORE - 8750 - 2400', 'ativo'),
(274, 'AMD PHENOM X4 - QUAD-CORE - 9150E - 1.8GHz', 'ativo'),
(275, 'AMD PHENOM X4 - QUAD-CORE - 9350E - 2.0GHz', 'ativo'),
(276, 'AMD PHENOM X4 - QUAD-CORE - 9500 - 2.2GHz', 'ativo'),
(277, 'AMD PHENOM X4 - QUAD-CORE - 9550 - 2.2GHz', 'ativo'),
(278, 'AMD PHENOM X4 - QUAD-CORE - 9600 - 2300', 'ativo'),
(279, 'AMD PHENOM X4 - QUAD-CORE - 9650 - 2.3GHz', 'ativo'),
(280, 'AMD PHENOM X4 - QUAD-CORE - 9750 - 2.4GHz', 'ativo'),
(281, 'AMD PHENOM X4 - QUAD-CORE - 9850 - 2.5GHz', 'ativo'),
(282, 'AMD PHENOM X4 - QUAD-CORE - 9950 - 2.6GHz', 'ativo'),
(283, 'AMD PHENON II X4 - 830 2.8GHz', 'ativo'),
(284, 'AMD RYZEN 7 2700', 'ativo'),
(285, 'AMD RYZEN 7 PRO 5750G 3.8GHz', 'ativo'),
(286, 'AMD SEMPROM - 1.6GHz', 'ativo'),
(287, 'AMD SEMPROM - 2.11GHz', 'ativo'),
(288, 'AMD SEMPROM - 2.2GHz', 'ativo'),
(289, 'AMD SEMPROM - 2.4GHz', 'ativo'),
(290, 'AMD SEMPROM - 2.5GHz', 'ativo'),
(291, 'AMD SEMPROM - 2.6GHz', 'ativo'),
(292, 'AMD SEMPROM - 2.8GHz', 'ativo'),
(293, 'AMD SEMPROM - 3.0GHz', 'ativo'),
(294, 'AMD SEMPROM 2600 - 1.6GHz', 'ativo'),
(295, 'AMD SEMPROM 2800 - 1.6GHz', 'ativo'),
(296, 'AMD SEMPROM 3.0GHz', 'ativo'),
(297, 'AMD SEMPROM LE 1100', 'ativo'),
(298, 'AMD SEMPRON - 2800+ - 1600', 'ativo'),
(299, 'AMD SEMPRON - 3000+ - 1600', 'ativo'),
(300, 'AMD SEMPRON - 3000+ - 1800', 'ativo'),
(301, 'AMD SEMPRON - 3100+ - 1800', 'ativo'),
(302, 'AMD SEMPRON - 3200+ - 1800', 'ativo'),
(303, 'AMD SEMPRON - 3300+ - 2000', 'ativo'),
(304, 'AMD SEMPRON - 3400+ - 1800', 'ativo'),
(305, 'AMD SEMPRON - 3400+ - 2000', 'ativo'),
(306, 'AMD SEMPRON - 3500+ - 2000', 'ativo'),
(307, 'AMD SEMPRON - 3600+ - 2000', 'ativo'),
(308, 'AMD SEMPRON - 3800+ - 2200', 'ativo'),
(309, 'AMD SEMPRON - 1.5GHz', 'ativo'),
(310, 'AMD SEMPRON 1100', 'ativo'),
(311, 'AMD SEMPRON 140', 'ativo'),
(312, 'AMD SEMPRON 145', 'ativo'),
(313, 'AMD SEMPRON 3000', 'ativo'),
(314, 'AMD SEMPRON 3400 - 1.80GHz', 'ativo'),
(315, 'AMD SEMPRON 64 2800', 'ativo'),
(316, 'AMD SEMPRON LE - 1100 - 1900', 'ativo'),
(317, 'AMD SEMPRON LE - 1150 - 2000', 'ativo'),
(318, 'AMD SEMPRON LE - 1200 - 2100', 'ativo'),
(319, 'AMD SEMPRON LE - 1250 - 2200', 'ativo'),
(320, 'AMD SEMPRON X1 - 140 - 2.7GHz', 'ativo'),
(321, 'AMD SEMPRON X1 - 145 - 2.8GHz', 'ativo'),
(322, 'AMD SEMPRON X1 - 180', 'ativo'),
(323, 'AMD V120 ', 'ativo'),
(324, 'AMD X2 250 - 3000MHz', 'ativo'),
(325, 'AMD X2 250 - 3100MHz', 'ativo'),
(326, 'INTEL CELERON G470 - 2.00GHz', 'ativo'),
(327, 'INTEL CELERON 927UE - 1.50GHz', 'ativo'),
(328, 'INTEL CELERON 887 - 1.50GHz', 'ativo'),
(329, 'INTEL CELERON B830 - 1.80GHz', 'ativo'),
(330, 'INTEL CELERON G465 - 1.90GHz', 'ativo'),
(331, 'INTEL CELERON G550T - 2.20GHz', 'ativo'),
(332, 'INTEL CELERON G555 - 2.70GHz', 'ativo'),
(333, 'INTEL CELERON 807 - 1.50GHz', 'ativo'),
(334, 'INTEL CELERON 877 - 1.40GHz', 'ativo'),
(335, 'INTEL CELERON B820 - 1.70GHz', 'ativo'),
(336, 'INTEL CELERON G540T - 2.10GHz', 'ativo'),
(337, 'INTEL CELERON G550 - 2.60GHz', 'ativo'),
(338, 'INTEL CELERON 725C - 1.30GHz', 'ativo'),
(339, 'INTEL CELERON 797 - 1.40GHz', 'ativo'),
(340, 'INTEL CELERON 867 - 1.30GHz', 'ativo'),
(341, 'INTEL CELERON B720 - 1.70GHz', 'ativo'),
(342, 'INTEL CELERON B815 - 1.60GHz', 'ativo'),
(343, 'INTEL CELERON G460 - 1.80GHz', 'ativo'),
(344, 'INTEL CELERON 807UE - 1.00GHz', 'ativo'),
(345, 'INTEL CELERON B840 - 1.90GHz', 'ativo'),
(346, 'INTEL CELERON G440 - 1.60GHz', 'ativo'),
(347, 'INTEL CELERON G530 - 2.40GHz', 'ativo'),
(348, 'INTEL CELERON G530T - 2.00GHz', 'ativo'),
(349, 'INTEL CELERON G540 - 2.50GHz', 'ativo'),
(350, 'INTEL CELERON 787 - 1.30GHz', 'ativo'),
(351, 'INTEL CELERON 827E - 1.40GHz', 'ativo'),
(352, 'INTEL CELERON B710 - 1.60GHz', 'ativo'),
(353, 'INTEL CELERON 857 - 1.20GHz', 'ativo'),
(354, 'INTEL CELERON 847 - 1.10GHz', 'ativo'),
(355, 'INTEL CELERON 847E - 1.10GHz', 'ativo'),
(356, 'INTEL CELERON B800 - 1.50GHz', 'ativo'),
(357, 'INTEL CELERON B810E - 1.60GHz', 'ativo'),
(358, 'INTEL CELERON B810 - 1.60GHz', 'ativo'),
(359, 'INTEL CELERON 925 - 2.30GHz', 'ativo'),
(360, 'INTEL CELERON U3600 - 1.20GHz', 'ativo'),
(361, 'INTEL CELERON ULV 763 - 1.40GHz', 'ativo'),
(362, 'INTEL CELERON E3500 - 2.70GHz', 'ativo'),
(363, 'INTEL CELERON P4600 - 2.00GHz', 'ativo'),
(364, 'INTEL CELERON T3500 - 2.10GHz', 'ativo'),
(365, 'INTEL CELERON U3400 - 1.06GHz', 'ativo'),
(366, 'INTEL CELERON P4500 - 1.86GHz', 'ativo'),
(367, 'INTEL CELERON E3400 - 2.60GHz', 'ativo'),
(368, 'INTEL CELERON P1053 - 1.33GHz', 'ativo'),
(369, 'INTEL CELERON P4505 - 1.86GHz', 'ativo'),
(370, 'INTEL CELERON T3300 - 2.00GHz', 'ativo'),
(371, 'INTEL CELERON U3405 - 1.06GHz', 'ativo'),
(372, 'INTEL CELERON M ULV 743 - 1.30GHz', 'ativo'),
(373, 'INTEL CELERON SU2300 - 1.20GHz', 'ativo'),
(374, 'INTEL CELERON E3200 - 2.40GHz', 'ativo'),
(375, 'INTEL CELERON E3300 - 2.50GHz', 'ativo'),
(376, 'INTEL CELERON T3100 - 1.90GHz', 'ativo'),
(377, 'INTEL CELERON ULV 573 - 1.00GHz', 'ativo'),
(378, 'INTEL CELERON E1600 - 2.40GHz', 'ativo'),
(379, 'INTEL CELERON 900 - 2.20GHz', 'ativo'),
(380, 'INTEL CELERON T1600 - 1.66GHz', 'ativo'),
(381, 'INTEL CELERON T1700 - 1.83GHz', 'ativo'),
(382, 'INTEL CELERON E1500 - 2.20GHz', 'ativo'),
(383, 'INTEL CELERON M ULV 722 - 1.20GHz', 'ativo'),
(384, 'INTEL CELERON 450 - 2.20GHz', 'ativo'),
(385, 'INTEL CELERON M ULV 723 - 1.20GHz', 'ativo'),
(386, 'INTEL CELERON 575 - 2.00GHz', 'ativo'),
(387, 'INTEL CELERON 585 - 2.16GHz', 'ativo'),
(388, 'INTEL CELERON E1400 - 2.00GHz', 'ativo'),
(389, 'INTEL CELERON 570 - 2.26GHz', 'ativo'),
(390, 'INTEL CELERON E1200 - 1.60GHz', 'ativo'),
(391, 'INTEL CELERON 560 - 2.13GHz', 'ativo'),
(392, 'INTEL CELERON 220 - 1.20GHz', 'ativo'),
(393, 'INTEL CELERON M ULV 523 - 930 MHz', 'ativo'),
(394, 'INTEL CELERON 540 - 1.86GHz', 'ativo'),
(395, 'INTEL CELERON 420 - 1.60GHz', 'ativo'),
(396, 'INTEL CELERON 430 - 1.80GHz', 'ativo'),
(397, 'INTEL CELERON 440 - 2.00GHz', 'ativo'),
(398, 'INTEL CELERON M 530 - 1.73GHz', 'ativo'),
(399, 'INTEL CELERON 530 - 1.73GHz', 'ativo'),
(400, 'INTEL CELERON de 1.83GHz - cache de 1M - barramento frontal de 667 MHz - 1.83GHz', 'ativo'),
(401, 'INTEL CELERON D 365 - 3.60GHz', 'ativo'),
(402, 'INTEL CELERON M 520 - 1.60GHz', 'ativo'),
(403, 'INTEL CELERON de 1.66GHz - cache de 1M - barramento frontal de 667 MHz - 1.66GHz', 'ativo'),
(404, 'INTEL CELERON D 347 - 3.06GHz', 'ativo'),
(405, 'INTEL CELERON D 360 - 3.46GHz', 'ativo'),
(406, 'INTEL CELERON M 440 - 1.86GHz', 'ativo'),
(407, 'INTEL CELERON 550 - 2.00GHz', 'ativo'),
(408, 'INTEL CELERON D 352 - 3.20GHz', 'ativo'),
(409, 'INTEL CELERON D 356 - 3.33GHz', 'ativo'),
(410, 'INTEL CELERON M ULV 423 - 1.06GHz', 'ativo'),
(411, 'INTEL CELERON D 310 - 2.13GHz', 'ativo'),
(412, 'INTEL CELERON D 355 - 3.33GHz', 'ativo'),
(413, 'INTEL CELERON D 341 - 2.93GHz', 'ativo'),
(414, 'INTEL CELERON D 350 - 3.20GHz', 'ativo'),
(415, 'INTEL CELERON D 350/350J - 3.20GHz', 'ativo'),
(416, 'INTEL CELERON D 351 - 3.20GHz', 'ativo'),
(417, 'INTEL CELERON M 370 - 1.50GHz', 'ativo'),
(418, 'INTEL CELERON M ULV 373 - 1.00GHz', 'ativo'),
(419, 'INTEL CELERON D 325J - 2.53GHz', 'ativo'),
(420, 'INTEL CELERON D 330 - 2.66GHz', 'ativo'),
(421, 'INTEL CELERON D 330J - 2.66GHz', 'ativo'),
(422, 'INTEL CELERON D 335J - 2.80GHz', 'ativo'),
(423, 'INTEL CELERON D 340 - 2.93GHz', 'ativo'),
(424, 'INTEL CELERON D 340J - 2.93GHz', 'ativo'),
(425, 'INTEL CELERON D 345 - 3.06GHz', 'ativo'),
(426, 'INTEL CELERON D 345J - 3.06GHz', 'ativo'),
(427, 'INTEL CELERON D 315 - 2.26GHz', 'ativo'),
(428, 'INTEL CELERON D 335 - 2.80GHz', 'ativo'),
(429, 'INTEL CELERON D 315/315J - 2.26GHz', 'ativo'),
(430, 'INTEL CELERON D 320 - 2.40GHz', 'ativo'),
(431, 'INTEL CELERON D 325 - 2.53GHz', 'ativo'),
(432, 'INTEL CELERON D 325/325J - 2.53GHz', 'ativo'),
(433, 'INTEL CELERON D 326 - 2.53GHz', 'ativo'),
(434, 'INTEL CELERON D 330/330J - 2.66GHz', 'ativo'),
(435, 'INTEL CELERON D 335/335J - 2.80GHz', 'ativo'),
(436, 'INTEL CELERON M 320 - 1.30GHz', 'ativo'),
(437, 'INTEL CELERON 1005M - 1.90GHz', 'ativo'),
(438, 'INTEL CELERON 1017U - 1.60GHz', 'ativo'),
(439, 'INTEL CELERON 1019Y - 1.00GHz', 'ativo'),
(440, 'INTEL CELERON 1000M - 1.80GHz', 'ativo'),
(441, 'INTEL CELERON 1007U - 1.50GHz', 'ativo'),
(442, 'INTEL CELERON 1020E - 2.20GHz', 'ativo'),
(443, 'INTEL CELERON 1020M - 2.10GHz', 'ativo'),
(444, 'INTEL CELERON 1037U - 1.80GHz', 'ativo'),
(445, 'INTEL CELERON 1047UE - 1.40GHz', 'ativo'),
(446, 'INTEL CELERON 2970M - 2.20GHz', 'ativo'),
(447, 'INTEL CELERON 2000E - 2.20GHz', 'ativo'),
(448, 'INTEL CELERON 2002E - 1.50GHz', 'ativo'),
(449, 'INTEL CELERON 2957U - 1.40GHz', 'ativo'),
(450, 'INTEL CELERON 2961Y - 1.10GHz', 'ativo'),
(451, 'INTEL CELERON 2981U - 1.60GHz', 'ativo'),
(452, 'INTEL CELERON 2950M - 2.00GHz', 'ativo'),
(453, 'INTEL CELERON 2955U - 1.40GHz', 'ativo'),
(454, 'INTEL CELERON 2980U - 1.60GHz', 'ativo'),
(455, 'INTEL CELERON 3867U - 1.80GHz', 'ativo'),
(456, 'INTEL CELERON 3965Y - 1.50GHz', 'ativo'),
(457, 'INTEL CELERON 3865U - 1.80GHz', 'ativo'),
(458, 'INTEL CELERON 3965U - 2.20GHz', 'ativo'),
(459, 'INTEL CELERON 3855U - 1.60GHz', 'ativo'),
(460, 'INTEL CELERON 3955U - 2.00GHz', 'ativo'),
(461, 'INTEL CELERON 3215U - 1.70GHz', 'ativo'),
(462, 'INTEL CELERON 3765U - 1.90GHz', 'ativo'),
(463, 'INTEL CELERON 3205U - 1.50GHz', 'ativo'),
(464, 'INTEL CELERON 3755U - 1.70GHz', 'ativo'),
(465, 'INTEL CELERON 4305U - 2.20GHz', 'ativo'),
(466, 'INTEL CELERON 4205U - 1.80GHz', 'ativo'),
(467, 'INTEL CELERON 4305UE - 2.00GHz', 'ativo'),
(468, 'INTEL CELERON 5305U - 2.30GHz', 'ativo'),
(469, 'INTEL CELERON 5205U - 1.90GHz', 'ativo'),
(470, 'INTEL CELERON 6600HE - 2.60GHz', 'ativo'),
(471, 'INTEL CELERON 6305E - 1.80GHz', 'ativo'),
(472, 'INTEL CELERON 7305L - 1.10GHz', 'ativo'),
(473, 'INTEL CELERON N4500 - 1.10GHz', 'ativo'),
(474, 'INTEL CELERON N4505 - 2.00GHz', 'ativo'),
(475, 'INTEL CELERON N5100 - 1.10GHz', 'ativo'),
(476, 'INTEL CELERON N5105 - 2.00GHz', 'ativo'),
(477, 'INTEL CELERON N6211 - 1.20GHz', 'ativo'),
(478, 'INTEL CELERON N4020 - 1.10GHz', 'ativo'),
(479, 'INTEL CELERON N4120 - 1.10GHz', 'ativo'),
(480, 'INTEL CELERON N3350E - 1.10GHz', 'ativo'),
(481, 'INTEL CELERON N4000 - 1.10GHz', 'ativo'),
(482, 'INTEL CELERON N4100 - 1.10GHz', 'ativo'),
(483, 'INTEL CELERON N3350 - 1.10GHz', 'ativo'),
(484, 'INTEL CELERON N3450 - 1.10GHz', 'ativo'),
(485, 'INTEL CELERON N3010 - 1.04GHz', 'ativo'),
(486, 'INTEL CELERON N3060 - 1.60GHz', 'ativo'),
(487, 'INTEL CELERON N3160 - 1.60GHz', 'ativo'),
(488, 'INTEL CELERON N3000 - 1.04GHz', 'ativo'),
(489, 'INTEL CELERON N3050 - 1.60GHz', 'ativo'),
(490, 'INTEL CELERON N3150 - 1.60GHz', 'ativo'),
(491, 'INTEL CELERON N2808 - 1.58GHz', 'ativo'),
(492, 'INTEL CELERON N2840 - 2.16GHz', 'ativo'),
(493, 'INTEL CELERON N2940 - 1.83GHz', 'ativo'),
(494, 'INTEL CELERON N2807 - 1.58GHz', 'ativo'),
(495, 'INTEL CELERON N2830 - 2.16GHz', 'ativo'),
(496, 'INTEL CELERON N2930 - 1.83GHz', 'ativo'),
(497, 'INTEL CELERON N2806 - 1.60GHz', 'ativo'),
(498, 'INTEL CELERON N2815 - 1.86GHz', 'ativo'),
(499, 'INTEL CELERON N2820 - 2.13GHz', 'ativo'),
(500, 'INTEL CELERON N2920 - 1.86GHz', 'ativo'),
(501, 'INTEL CELERON N2805 - 1.46GHz', 'ativo'),
(502, 'INTEL CELERON N2810 - 2.00GHz', 'ativo'),
(503, 'INTEL CELERON N2910 - 1.60GHz', 'ativo'),
(504, 'INTEL CELERON J6412 - 2.00GHz', 'ativo'),
(505, 'INTEL CELERON J6413 - 1.80GHz', 'ativo'),
(506, 'INTEL CELERON J4025 - 2.00GHz', 'ativo'),
(507, 'INTEL CELERON J4125 - 2.00GHz', 'ativo'),
(508, 'INTEL CELERON J3355E - 2.00GHz', 'ativo'),
(509, 'INTEL CELERON J3455E - 1.50GHz', 'ativo'),
(510, 'INTEL CELERON J4005 - 2.00GHz', 'ativo'),
(511, 'INTEL CELERON J4105 - 1.50GHz', 'ativo'),
(512, 'INTEL CELERON J3355 - 2.00GHz', 'ativo'),
(513, 'INTEL CELERON J3455 - 1.50GHz', 'ativo'),
(514, 'INTEL CELERON J3060 - 1.60GHz', 'ativo'),
(515, 'INTEL CELERON J3160 - 1.60GHz', 'ativo'),
(516, 'INTEL CELERON J1800 - 2.41GHz', 'ativo'),
(517, 'INTEL CELERON J1900 - 2.00GHz', 'ativo'),
(518, 'INTEL CELERON J1750 - 2.41GHz', 'ativo'),
(519, 'INTEL CELERON J1850 - 2.00GHz', 'ativo'),
(520, 'INTEL CELERON G5905 - 3.50GHz', 'ativo'),
(521, 'INTEL CELERON G5905T - 3.30GHz', 'ativo'),
(522, 'INTEL CELERON G5925 - 3.60GHz', 'ativo'),
(523, 'INTEL CELERON G5900 - 3.40GHz', 'ativo'),
(524, 'INTEL CELERON G5900E - 3.20GHz', 'ativo'),
(525, 'INTEL CELERON G5900T - 3.20GHz', 'ativo'),
(526, 'INTEL CELERON G5900TE - 3.00GHz', 'ativo'),
(527, 'INTEL CELERON G5920 - 3.50GHz', 'ativo'),
(528, 'INTEL CELERON G4930E - 2.40GHz', 'ativo'),
(529, 'INTEL CELERON G4932E - 1.90GHz', 'ativo'),
(530, 'INTEL CELERON G4930 - 3.20GHz', 'ativo'),
(531, 'INTEL CELERON G4930T - 3.00GHz', 'ativo'),
(532, 'INTEL CELERON G4950 - 3.30GHz', 'ativo'),
(533, 'INTEL CELERON G4900 - 3.10GHz', 'ativo'),
(534, 'INTEL CELERON G4900T - 2.90GHz', 'ativo'),
(535, 'INTEL CELERON G4920 - 3.20GHz', 'ativo'),
(536, 'INTEL CELERON G3930E - 2.90GHz', 'ativo'),
(537, 'INTEL CELERON G3930TE - 2.70GHz', 'ativo'),
(538, 'INTEL CELERON G3930 - 2.90GHz', 'ativo'),
(539, 'INTEL CELERON G3930T - 2.70GHz', 'ativo'),
(540, 'INTEL CELERON G3950 - 3.00GHz', 'ativo'),
(541, 'INTEL CELERON G3900E - 2.40GHz', 'ativo'),
(542, 'INTEL CELERON G3902E - 1.60GHz', 'ativo'),
(543, 'INTEL CELERON G3900 - 2.80GHz', 'ativo'),
(544, 'INTEL CELERON G3900T - 2.60GHz', 'ativo'),
(545, 'INTEL CELERON G3900TE - 2.30GHz', 'ativo'),
(546, 'INTEL CELERON G3920 - 2.90GHz', 'ativo'),
(547, 'INTEL CELERON G1840 - 2.80GHz', 'ativo'),
(548, 'INTEL CELERON G1840T - 2.50GHz', 'ativo'),
(549, 'INTEL CELERON G1850 - 2.90GHz', 'ativo'),
(550, 'INTEL CELERON G1820TE - 2.20GHz', 'ativo'),
(551, 'INTEL CELERON G1820 - 2.70GHz', 'ativo'),
(552, 'INTEL CELERON G1820T - 2.40GHz', 'ativo'),
(553, 'INTEL CELERON G1830 - 2.80GHz', 'ativo'),
(554, 'INTEL CELERON G1620T - 2.40GHz', 'ativo'),
(555, 'INTEL CELERON G1630 - 2.80GHz', 'ativo'),
(556, 'INTEL CELERON G1610 - 2.60GHz', 'ativo'),
(557, 'INTEL CELERON G1610T - 2.30GHz', 'ativo'),
(558, 'INTEL CELERON G1620 - 2.70GHz', 'ativo'),
(559, 'INTEL 2 DUO E7300 2.6GHz', 'ativo'),
(560, 'INTEL 2140 1.60GHz', 'ativo'),
(561, 'INTEL ATOM D425 - 1.80GHz', 'ativo'),
(562, 'INTEL ATOM D510 - 1.66GHz', 'ativo'),
(563, 'INTEL ATOM N550 - 1.50GHz', 'ativo'),
(564, 'INTEL CORE 2 - 2.40GHz', 'ativo'),
(565, 'INTEL CORE 2 4400 - 2.00GHz', 'ativo'),
(566, 'INTEL CORE 2 6300 - 1.86GHz', 'ativo'),
(567, 'INTEL CORE 2 DUO - 2.4GHz', 'ativo'),
(568, 'INTEL CORE 2 DUO - 2.20GHz', 'ativo'),
(569, 'INTEL CORE 2 DUO - 2.4GHz', 'ativo'),
(570, 'INTEL CORE 2 DUO E2200 - 2.2GHz', 'ativo'),
(571, 'INTEL CORE 2 DUO E4500 - 2.20GHz', 'ativo'),
(572, 'INTEL CORE 2 DUO E4500 - 2.2GHz', 'ativo'),
(573, 'INTEL CORE 2 DUO E4600 - 2.40GHz', 'ativo'),
(574, 'INTEL CORE 2 DUO E4700 - 2.60GHz', 'ativo'),
(575, 'INTEL CORE 2 DUO E6550 - 2.33GHz', 'ativo'),
(576, 'INTEL CORE 2 DUO E6750 - 2.66GHz', 'ativo'),
(577, 'INTEL CORE 2 DUO E7200 - 2.53GHz', 'ativo'),
(578, 'INTEL CORE 2 DUO E7300 - 2.66GHz', 'ativo'),
(579, 'INTEL CORE 2 DUO E7400 - 2.55GHz', 'ativo'),
(580, 'INTEL CORE 2 DUO E7400 - 2.80GHz', 'ativo'),
(581, 'INTEL CORE 2 DUO E7500 - 2.93GHz', 'ativo'),
(582, 'INTEL CORE 2 DUO E8200 - 2.6GHz', 'ativo'),
(583, 'INTEL CORE 2 DUO E8400 - 3.00GHz', 'ativo'),
(584, 'INTEL CORE 2 DUO T5450 - 1.66GHz', 'ativo'),
(585, 'INTEL CORE 2 DUO T7700 - 2.40GHz', 'ativo'),
(586, 'INTEL CORE 2 QUAD - 2.4GHz', 'ativo'),
(587, 'INTEL CORE 2 QUAD Q6600 - 2.40GHz', 'ativo'),
(588, 'INTEL CORE 2 QUAD Q8200 - 2.33GHz', 'ativo'),
(589, 'INTEL CORE 2 QUAD Q8300 - 2.50GHz', 'ativo'),
(590, 'INTEL CORE 2 QUAD Q8400 - 2.66GHz', 'ativo'),
(591, 'INTEL CORE 2 QUAD Q9550 - 2.83GHz', 'ativo'),
(592, 'INTEL CORE DUO - 2.53GHz', 'ativo'),
(593, 'INTEL CORE DUO B400 - 3.00GHz', 'ativo'),
(594, 'INTEL CORE DUO E4500 - 2.200GHz', 'ativo'),
(595, 'INTEL CORE DUO E7500 - 2.93GHz', 'ativo'),
(596, 'INTEL CORE E6550 - 2.33GHz', 'ativo'),
(597, 'INTEL CORE I3 - 10100 3.60GHz', 'ativo'),
(598, 'INTEL CORE I3 - 2100 - 3.10GHz', 'ativo'),
(599, 'INTEL CORE I3 - 2105 - 3.10GHz', 'ativo'),
(600, 'INTEL CORE I3 - 2120 - 3.30GHz', 'ativo'),
(601, 'INTEL CORE I3 - 2130 - 3.40GHz', 'ativo'),
(602, 'INTEL CORE I3 - 3.0GHz', 'ativo'),
(603, 'INTEL CORE I3 - 3220 - 3.30GHz', 'ativo'),
(604, 'INTEL CORE I3 - 3240 - 3.40GHz', 'ativo'),
(605, 'INTEL CORE I3 - 3250 - 3.50GHz', 'ativo'),
(606, 'INTEL CORE I3 - 4150 - 3.50GHz', 'ativo'),
(607, 'INTEL CORE I3 - 4160 - 3.60GHz', 'ativo'),
(608, 'INTEL CORE I3 - 4170 - 3.70GHz', 'ativo'),
(609, 'INTEL CORE I3 - 530 - 2.93GHz', 'ativo'),
(610, 'INTEL CORE I3 - 540 - 3.07GHz', 'ativo'),
(611, 'INTEL CORE I3 - 550 - 3.20GHz', 'ativo'),
(612, 'INTEL CORE I3 - 6100U - 2.30GHz', 'ativo'),
(613, 'INTEL CORE I3 - 7100 - 3.90GHz', 'ativo'),
(614, 'INTEL CORE I3 - 7100U - 2.40GHz', 'ativo'),
(615, 'INTEL CORE I3 - 7350K - 4.20GHz', 'ativo'),
(616, 'INTEL CORE I3 - 8100 - 3.60GHz', 'ativo'),
(617, 'INTEL CORE I3 - M 370 - 2.40GHz', 'ativo'),
(618, 'INTEL CORE I5 - 10210 - 1.60GHz', 'ativo'),
(619, 'INTEL CORE I5 - 12400 - 2.50GHz', 'ativo'),
(620, 'INTEL CORE I5 - 2300 - 2.80GHz', 'ativo'),
(621, 'INTEL CORE I5 - 2310 - 2.90GHz', 'ativo'),
(622, 'INTEL CORE I5 - 2320 - 3.00GHz', 'ativo'),
(623, 'INTEL CORE I5 - 2400 - 3.10GHz', 'ativo'),
(624, 'INTEL CORE I5 - 2500 - 3.30GHz', 'ativo'),
(625, 'INTEL CORE I5 - 2537M - 1.40GHz', 'ativo'),
(626, 'INTEL CORE I5 - 3.20GHz', 'ativo'),
(627, 'INTEL CORE I5 - 3230M - 2.60GHz', 'ativo'),
(628, 'INTEL CORE I5 - 3330 - 3.00GHz', 'ativo'),
(629, 'INTEL CORE I5 - 3330S - 2.70GHz', 'ativo'),
(630, 'INTEL CORE I5 - 3470 - 3.20GHz', 'ativo'),
(631, 'INTEL CORE I5 - 3470S - 2.90GHz', 'ativo'),
(632, 'INTEL CORE I5 - 3570 - 3.40GHz', 'ativo'),
(633, 'INTEL CORE I5 - 4430 - 3.00GHz', 'ativo'),
(634, 'INTEL CORE I5 - 4440 - 3.10GHz', 'ativo'),
(635, 'INTEL CORE I5 - 4440S - 2.80GHz', 'ativo'),
(636, 'INTEL CORE I5 - 4460 - 3.20GHz', 'ativo'),
(637, 'INTEL CORE I5 - 4460S - 2.90GHz', 'ativo'),
(638, 'INTEL CORE I5 - 4570 - 3.20GHz', 'ativo'),
(639, 'INTEL CORE I5 - 4590 - 3.30GHz', 'ativo'),
(640, 'INTEL CORE I5 - 4690T - 2.50GHz', 'ativo'),
(641, 'INTEL CORE I5 - 5200U - 2.20GHz', 'ativo'),
(642, 'INTEL CORE I5 - 6400 - 2.70GHz', 'ativo'),
(643, 'INTEL CORE I5 - 650 - 3.20GHz', 'ativo'),
(644, 'INTEL CORE I5 - 7400 - 3.00GHz', 'ativo'),
(645, 'INTEL CORE I5 - 750 - 2.67GHz', 'ativo'),
(646, 'INTEL CORE I5 - 7500 - 3.40GHz', 'ativo'),
(647, 'INTEL CORE I5 - 760 - 2.80GHz', 'ativo'),
(648, 'INTEL CORE I5 - 8400 - 4.00GHz', 'ativo'),
(649, 'INTEL CORE I5 - 9400 - 2.90GHz', 'ativo'),
(650, 'INTEL CORE I5 - 9400 - 4.10GHz', 'ativo'),
(651, 'INTEL CORE I5 - 9500T - 2.20GHz', 'ativo'),
(652, 'INTEL CORE I7 - 10700K - 3.80GHz', 'ativo'),
(653, 'INTEL CORE I7 - 11700 - 4.90GHz', 'ativo'),
(654, 'INTEL CORE I7 - 2600 - 3.40GHz', 'ativo'),
(655, 'INTEL CORE I7 - 4790 - 3.60GHz', 'ativo'),
(656, 'INTEL CORE I7 - 4790S - 3.20GHz', 'ativo'),
(657, 'INTEL CORE I7 - 6700 - 3.40GHz', 'ativo'),
(658, 'INTEL CORE I7 - 7700 - 3.60GHz', 'ativo'),
(659, 'INTEL CORE I7 - 870 - 2.93GHz', 'ativo'),
(660, 'INTEL CORE I7 - 9700 - 3.00GHz', 'ativo'),
(661, 'INTEL CORE I7 - 9700F - 4.70GHz', 'ativo'),
(662, 'INTEL DUAL CORE - 1.86GHz', 'ativo'),
(663, 'INTEL DUAL CORE - 2.13GHz', 'ativo'),
(664, 'INTEL DUAL CORE - 2.60GHz', 'ativo'),
(665, 'INTEL DUAL CORE - 3.00GHz', 'ativo'),
(666, 'INTEL DUAL CORE - E2220 - 2.40GHz', 'ativo'),
(667, 'INTEL DUAL CORE 2 4300 - 1.8GHz', 'ativo'),
(668, 'INTEL DUAL CORE E 5300', 'ativo'),
(669, 'INTEL DUAL E2220 - 2.40GHz', 'ativo'),
(670, 'INTEL G630 - 2.70GHz', 'ativo'),
(671, 'INTEL GENUINE 2140 - 1.60GHz', 'ativo'),
(672, 'INTEL PENTIUM DUAL - 1.60GHz', 'ativo'),
(673, 'INTEL PENTIUM DUAL - 1.80GHz', 'ativo'),
(674, 'INTEL PENTIUM DUAL - 3.4GHz', 'ativo'),
(675, 'INTEL PENTIUM DUAL CORE E5200 - 2.50GHz', 'ativo'),
(676, 'INTEL PENTIUM DUAL CORE E5300 - 2.60GHz', 'ativo'),
(677, 'INTEL PENTIUM DUAL CORE E5700 - 3.00GHz', 'ativo'),
(678, 'INTEL PENTIUM DUAL CORE - 1.8GHz', 'ativo'),
(679, 'INTEL PENTIUM DUAL CORE - 2.00GHz', 'ativo'),
(680, 'INTEL PENTIUM DUAL CORE 2140 - 1.60GHz', 'ativo'),
(681, 'INTEL PENTIUM DUAL CORE E2200 - 2.20GHz', 'ativo'),
(682, 'INTEL PENTIUM DUAL CORE E5200 - 2.50GHz', 'ativo'),
(683, 'INTEL PENTIUM DUAL CORE E5300 - 2.60GHz', 'ativo'),
(684, 'INTEL PENTIUM DUAL CORE E5300Q - 2.60GHz', 'ativo'),
(685, 'INTEL PENTIUM DUAL CORE E5700 - 3.00GHz', 'ativo'),
(686, 'INTEL PENTIUM DUAL CORE E5800 - 3.20GHz', 'ativo'),
(687, 'INTEL PENTIUM DUAL E2160 - 1.80GHz', 'ativo'),
(688, 'INTEL PENTIUM DUAL E2180 - 2.00GHz', 'ativo'),
(689, 'INTEL PENTIUM DUAL E2200 - 2.20GHz', 'ativo'),
(690, 'INTEL PENTIUM DUAL E2220Q - 240GHz', 'ativo'),
(691, 'INTEL PENTIUM DUAL CORE E5200 - 2.50GHz', 'ativo'),
(692, 'INTEL PENTIUM DUAL CORE E5300 - 2.60GHz', 'ativo'),
(693, 'INTEL PENTIUM DUAL CORE E5400 - 2.70GHz', 'ativo'),
(694, 'INTEL PENTIUM DUAL CORE E5700 - 3.00GHz', 'ativo'),
(695, 'INTEL PENTIUM DUAL CORE E5800 - 3.20GHz', 'ativo'),
(696, 'INTEL PENTIUM DUAL CORE T4400 - 2.20GHz', 'ativo'),
(697, 'INTEL PENTIUM DUAL CORE T4500 - 2.30GHz', 'ativo'),
(698, 'INTEL PENTIUM E2180 - 2.00GHz', 'ativo'),
(699, 'INTEL PENTIUM E550 - 2.80GHz', 'ativo'),
(700, 'INTEL PENTIUM F - 3.06GHz', 'ativo'),
(701, 'INTEL PENTIUM G2020 - 2.90GHz', 'ativo'),
(702, 'INTEL PENTIUM G2030 - 3.00GHz', 'ativo'),
(703, 'INTEL PENTIUM G2120 - 3.10GHz', 'ativo'),
(704, 'INTEL PENTIUM G3220 - 3.00GHz', 'ativo'),
(705, 'INTEL PENTIUM G4400 - 3.30GHz', 'ativo'),
(706, 'INTEL PENTIUM G620 - 2.60GHz', 'ativo'),
(707, 'INTEL PENTIUM G630 - 2.70GHz', 'ativo'),
(708, 'INTEL PENTIUM G640 - 2.80GHz', 'ativo'),
(709, 'INTEL PENTIUM G850 - 2.90GHz', 'ativo'),
(710, 'INTEL PENTIUN DUAL CORE E 5300 - 2.6GHz', 'ativo'),
(711, 'INTEL PENTIUN G3420 - 3.20GHz', 'ativo'),
(712, 'INTEL QUAD CORE - 2.66GHz', 'ativo'),
(713, 'INTEL QUAD CORE E8400 - 3.00GHz', 'ativo'),
(714, 'INTEL QUAD Q9300 - 2.50GHz', 'ativo'),
(715, 'INTEL XEON - 3.2GHz', 'ativo'),
(716, 'INTEL XEON 5150 - 2.66GHz', 'ativo'),
(717, 'INTEL XEON E5620 - 2.40GHz', 'ativo'),
(718, 'INTEL XEON E5649 - 2.53GHz', 'ativo'),
(719, 'INTEL XEON ES620 - 2.40GHz', 'ativo'),
(720, 'INTEL XEON W350 - 3.30GHz', 'ativo'),
(721, 'INTEL XEON W3503 - 2.40GHz', 'ativo'),
(722, 'INTEL XEON X3220 - 2.40GHz', 'ativo'),
(723, 'INTEL XEON X5680 - 3.33GHz', 'ativo'),
(724, 'MACINTOSH G3 350', 'ativo'),
(725, 'MACINTOSHG3 350', 'ativo'),
(726, 'RYZEN 7 PRO 57500G', 'ativo'),
(727, 'INTEL CORE I5 - 10400 - 2.9GHz', 'ativo'),
(728, 'Intel Core i5 - 11400 - 2.60GHz', 'ativo'),
(729, 'AMD RYZEN 5 PRO 4650GF 3.30GHz', 'ativo');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `tipoProcessadores`
--
ALTER TABLE `tipoProcessadores`
  ADD PRIMARY KEY (`idTipoProcessador`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tipoProcessadores`
--
ALTER TABLE `tipoProcessadores`
  MODIFY `idTipoProcessador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=730;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;