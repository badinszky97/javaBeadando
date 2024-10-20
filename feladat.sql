-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: localhost
-- Létrehozás ideje: 2024. Okt 20. 09:24
-- Kiszolgáló verziója: 10.4.28-MariaDB
-- PHP verzió: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `feladat`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `korlatozas`
--

CREATE TABLE `korlatozas` (
  `utszam` int(11) NOT NULL,
  `kezdet` float NOT NULL,
  `veg` float NOT NULL,
  `telepules` varchar(255) DEFAULT NULL,
  `mettol` datetime(6) DEFAULT NULL,
  `meddig` datetime(6) DEFAULT NULL,
  `megnevid` int(11) NOT NULL,
  `mertekid` int(11) NOT NULL,
  `sebesseg` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `korlatozas`
--

INSERT INTO `korlatozas` (`utszam`, `kezdet`, `veg`, `telepules`, `mettol`, `meddig`, `megnevid`, `mertekid`, `sebesseg`) VALUES
(10, 0, 0, 'UjTelepules', '2024-10-01 09:03:09.000000', '2024-10-17 00:00:00.000000', 2, 1, 10),
(2301, 0, 2.6, 'Bátonyterenye - Rákóczibánya', '2010-05-03 00:00:00.000000', '2010-06-15 00:00:00.000000', 4, 3, 40),
(4612, 0, 0.775, 'Abony', '2010-06-03 00:00:00.000000', '2010-06-30 00:00:00.000000', 7, 1, 30),
(4918, 0, 3, 'Mátészalka - Nyírcsaholy', '2010-03-30 00:00:00.000000', '2010-06-30 00:00:00.000000', 4, 1, 30),
(5204, 0, 9.855, 'Bugyi - Kiskunlacháza', '2010-03-16 00:00:00.000000', '2010-07-17 00:00:00.000000', 4, 4, 30),
(5701, 0, 4.67, 'Bóly - Szederkény', '2010-03-01 00:00:00.000000', '2010-08-31 00:00:00.000000', 4, 4, 0),
(7306, 0, 2.195, 'Ajka', '2010-07-06 00:00:00.000000', '2010-07-30 00:00:00.000000', 4, 1, 30),
(8437, 0, 2.2, 'Vashosszúfalu', '2010-03-25 00:00:00.000000', '2010-07-23 00:00:00.000000', 4, 3, 30),
(8453, 0, 1.055, 'Tokorcs - Kemenesmihályfa', '2010-03-16 00:00:00.000000', '2010-07-13 00:00:00.000000', 4, 3, 30),
(14101, 0, 1, 'Öttevény', '2010-06-01 00:00:00.000000', '2010-06-16 00:00:00.000000', 3, 3, 30),
(12126, 0.03, 0.35, 'Borsosberény', '2010-05-17 00:00:00.000000', '2010-06-15 00:00:00.000000', 4, 3, 30),
(11129, 0.151, 0.251, 'Tát', '2010-05-13 00:00:00.000000', '2010-06-15 00:00:00.000000', 7, 3, 40),
(6231, 0.175, 0.224, 'Paks', '2010-03-16 00:00:00.000000', '2010-06-15 00:00:00.000000', 4, 2, 30),
(2504, 0.35, 0.95, 'Eger', '2010-05-03 00:00:00.000000', '2010-08-02 00:00:00.000000', 10, 4, 0),
(8142, 0.511, 1.68, 'Komárom', '2010-03-24 00:00:00.000000', '2010-06-30 00:00:00.000000', 1, 1, 30),
(7417, 0.65, 2.711, 'Kerkafalva', '2010-02-01 00:00:00.000000', '2010-12-31 00:00:00.000000', 10, 6, 30),
(4911, 0.777, 2, 'Nyíregyháza', '2010-03-16 00:00:00.000000', '2010-10-30 00:00:00.000000', 5, 1, 30),
(2504, 0.95, 1.72, 'Eger', '2010-05-03 00:00:00.000000', '2010-08-02 00:00:00.000000', 10, 1, 30),
(8446, 1, 2.2, 'Sárvár', '2010-03-29 00:00:00.000000', '2010-08-30 00:00:00.000000', 4, 3, 30),
(4519, 1.003, 1.003, 'Csongrád', '2010-03-22 00:00:00.000000', '2010-08-27 00:00:00.000000', 2, 1, 40),
(47, 1.115, 1.255, 'Debrecen', '2010-03-30 00:00:00.000000', '2010-06-30 00:00:00.000000', 4, 1, 30),
(1406, 1.25, 2.86, 'Mosonmagyaróvár - Máriakálnok', '2010-06-03 00:00:00.000000', '2010-07-15 00:00:00.000000', 4, 1, 50),
(2519, 1.511, 3.632, 'Miskolc', '2010-05-31 00:00:00.000000', '2010-06-30 00:00:00.000000', 4, 3, 30),
(21112, 1.77, 7.085, 'Sződ', '2010-05-05 00:00:00.000000', '2010-06-16 00:00:00.000000', 7, 3, 30),
(8302, 2, 25, 'Pápa - Gic', '2010-06-03 00:00:00.000000', '2010-06-30 00:00:00.000000', 6, 1, 40),
(4517, 2.06, 2.06, 'Csongrád', '2010-03-22 00:00:00.000000', '2010-08-27 00:00:00.000000', 2, 1, 40),
(2126, 2.1, 2.2, 'Ecseg', '2010-05-03 00:00:00.000000', '2010-06-15 00:00:00.000000', 4, 3, 40),
(86, 2.381, 5.39, 'Rédics', '2010-04-19 00:00:00.000000', '2010-08-01 00:00:00.000000', 7, 3, 40),
(8901, 2.4, 2.6, 'Szombathely', '2010-06-02 00:00:00.000000', '2010-09-30 00:00:00.000000', 2, 2, 30),
(8445, 2.42, 3.013, 'Vép - Nemesbőd', '2010-04-23 00:00:00.000000', '2010-11-15 00:00:00.000000', 4, 5, 40),
(2127, 2.55, 4.3, 'Csécse', '2010-05-03 00:00:00.000000', '2010-06-15 00:00:00.000000', 4, 3, 40),
(6316, 2.61, 3.1, 'Medina', '2010-04-21 00:00:00.000000', '2010-07-09 00:00:00.000000', 7, 1, 40),
(8509, 3, 7.2, 'Markotabödöge', '2010-06-01 00:00:00.000000', '2010-06-17 00:00:00.000000', 3, 3, 30),
(13, 3.293, 3.948, 'Komárom', '2010-04-26 00:00:00.000000', '2010-08-15 00:00:00.000000', 2, 1, 40),
(7540, 3.747, 4.247, 'Letenye - Kistolmács', '2010-05-10 00:00:00.000000', '2010-06-15 00:00:00.000000', 7, 1, 40),
(2507, 3.9, 4.3, 'Borsodnádasd', '2010-06-01 00:00:00.000000', '2010-07-31 00:00:00.000000', 6, 3, 30),
(5711, 4, 4.85, 'Kozármisleny', '2010-08-01 00:00:00.000000', '2010-08-31 00:00:00.000000', 4, 4, 30),
(2507, 4.3, 4.35, 'Borsodnádasd', '2010-06-01 00:00:00.000000', '2010-10-31 00:00:00.000000', 10, 3, 30),
(2119, 4.865, 11.725, 'Balassagyarmat - Csitár', '2010-05-03 00:00:00.000000', '2010-06-15 00:00:00.000000', 4, 3, 40),
(42, 5.1, 5.8, 'Püspökladány', '2010-04-15 00:00:00.000000', '2010-06-30 00:00:00.000000', 2, 3, 40),
(5113, 5.775, 11.39, 'Őcsény - Decs', '2010-05-06 00:00:00.000000', '2010-06-15 00:00:00.000000', 7, 3, 30),
(8147, 5.95, 6.05, 'Nagyigmánd', '2010-06-24 00:00:00.000000', '2010-06-30 00:00:00.000000', 4, 1, 40),
(21153, 6.25, 10.11, 'Legénd', '2010-05-03 00:00:00.000000', '2010-06-15 00:00:00.000000', 4, 3, 40),
(72, 6.4, 6.902, 'Litér', '2010-10-15 00:00:00.000000', '2010-11-30 00:00:00.000000', 2, 1, 50),
(22109, 6.48, 7.234, 'Karancsalja', '2010-05-17 00:00:00.000000', '2010-06-15 00:00:00.000000', 4, 3, 30),
(1109, 6.65, 6.69, 'Csobánka', '2010-05-24 00:00:00.000000', '2010-06-21 00:00:00.000000', 4, 1, 30),
(86, 6.798, 8.557, 'Resznek', '2010-06-01 00:00:00.000000', '2010-07-31 00:00:00.000000', 4, 2, 40),
(2302, 7.3, 7.5, 'Kazár', '2010-05-03 00:00:00.000000', '2010-06-15 00:00:00.000000', 4, 3, 30),
(21, 7.85, 9.75, 'Lőrinci', '2010-03-15 00:00:00.000000', '2010-09-30 00:00:00.000000', 4, 1, 60),
(8113, 7.902, 11.595, 'Szárliget', '2010-05-13 00:00:00.000000', '2010-06-15 00:00:00.000000', 7, 3, 40),
(8416, 8, 9, 'Malomsok', '2010-06-02 00:00:00.000000', '2010-06-30 00:00:00.000000', 6, 3, 30),
(22101, 8.1, 9.8, 'Dejtár', '2010-05-03 00:00:00.000000', '2010-06-15 00:00:00.000000', 4, 3, 40),
(67, 8.5, 9.5, 'Szigetvár - Szentlászló', '2010-05-24 00:00:00.000000', '2010-06-25 00:00:00.000000', 7, 3, 40),
(2206, 8.985, 10.472, 'Karancskeszi', '2010-04-06 00:00:00.000000', '2010-06-30 00:00:00.000000', 4, 1, 30),
(2124, 9.615, 12.5, 'Cserháthaláp - Szanda', '2010-05-03 00:00:00.000000', '2010-06-15 00:00:00.000000', 4, 3, 40),
(8116, 9.864, 15.697, 'Pákozd - Sukoró', '2010-03-16 00:00:00.000000', '2010-06-30 00:00:00.000000', 11, 1, 30),
(8135, 10.312, 10.612, 'Kecskéd', '2010-05-13 00:00:00.000000', '2010-06-15 00:00:00.000000', 7, 3, 40),
(8627, 10.5, 11, 'Lövő', '2010-05-29 00:00:00.000000', '2010-06-25 00:00:00.000000', 4, 3, 30),
(8446, 11.326, 12.207, 'Szeleste', '2010-09-08 00:00:00.000000', '2010-09-30 00:00:00.000000', 4, 1, 40),
(5113, 11.39, 13.415, 'Decs', '2010-04-28 00:00:00.000000', '2010-07-15 00:00:00.000000', 6, 4, 30),
(38, 12.4, 12.4, 'Rakamaz', '2010-05-10 00:00:00.000000', '2010-06-30 00:00:00.000000', 4, 1, 30),
(2105, 13, 14.386, 'Galgamácsa', '2010-05-16 00:00:00.000000', '2010-06-30 00:00:00.000000', 6, 4, 0),
(8139, 15.017, 15.017, 'Komárom', '2010-03-24 00:00:00.000000', '2010-06-30 00:00:00.000000', 1, 1, 40),
(21, 15.06, 16.53, 'Apc', '2010-03-15 00:00:00.000000', '2010-09-30 00:00:00.000000', 4, 1, 60),
(6535, 16.082, 16.115, 'Tevel', '2010-06-03 00:00:00.000000', '2010-06-25 00:00:00.000000', 10, 3, 30),
(4516, 16.145, 16.149, 'Szentes', '2010-05-28 00:00:00.000000', '2010-06-15 00:00:00.000000', 4, 1, 30),
(4516, 16.9, 16.165, 'Szentes', '2010-02-22 00:00:00.000000', '2010-08-31 00:00:00.000000', 4, 1, 30),
(8102, 17.5, 18.403, 'Budakeszi', '2010-04-12 00:00:00.000000', '2010-06-30 00:00:00.000000', 10, 1, 30),
(8301, 17.706, 32, 'Bakonybél - Nagygyimót', '2010-06-03 00:00:00.000000', '2010-06-30 00:00:00.000000', 6, 1, 40),
(8136, 18.017, 19.397, 'Nagyigmánd', '2010-03-24 00:00:00.000000', '2010-06-30 00:00:00.000000', 1, 2, 40),
(8302, 18.671, 18.771, 'Pápateszér', '2010-02-24 00:00:00.000000', '2010-06-30 00:00:00.000000', 4, 3, 30),
(2109, 18.97, 19.85, 'Palotás', '2010-05-17 00:00:00.000000', '2010-06-15 00:00:00.000000', 4, 3, 30),
(6541, 19.45, 19.6, 'Magyaregregy', '2010-04-09 00:00:00.000000', '2010-08-31 00:00:00.000000', 11, 3, 30),
(86, 19.5, 21.86, 'Kálócfa - Kozmadombja', '2010-04-19 00:00:00.000000', '2010-08-31 00:00:00.000000', 4, 3, 30),
(7522, 19.5, 21.3, 'Esztergályhorváti', '2010-05-31 00:00:00.000000', '2010-06-30 00:00:00.000000', 10, 3, 40),
(8135, 20.98, 21.04, 'Dad - Császár', '2010-05-31 00:00:00.000000', '2010-06-18 00:00:00.000000', 6, 3, 40),
(4609, 23.5, 24, 'Jászkarajenő', '2010-06-03 00:00:00.000000', '2010-06-30 00:00:00.000000', 6, 1, 40),
(11, 24.25, 24.3, 'Leányfalu', '2010-05-17 00:00:00.000000', '2010-06-25 00:00:00.000000', 4, 1, 30),
(451, 25.135, 27.05, 'Csongrád', '2010-03-22 00:00:00.000000', '2010-08-27 00:00:00.000000', 2, 1, 40),
(31, 25.515, 34.803, 'Maglód - Mende', '2010-03-09 00:00:00.000000', '2010-07-27 00:00:00.000000', 4, 3, 40),
(11, 25.9, 26.1, 'Leányfalu', '2010-05-03 00:00:00.000000', '2010-06-30 00:00:00.000000', 4, 1, 30),
(8127, 26, 26.4, 'Dad - Kocs', '2010-01-26 00:00:00.000000', '2010-06-30 00:00:00.000000', 10, 5, 0),
(1111, 26.2, 26.7, 'Esztergom', '2010-06-04 00:00:00.000000', '2010-06-18 00:00:00.000000', 10, 3, 30),
(32, 27.4, 27.9, 'Jászberény', '2010-05-07 00:00:00.000000', '2010-08-06 00:00:00.000000', 2, 1, 30),
(76, 27.4, 27.4, 'Zalacsány', '2010-06-01 00:00:00.000000', '2010-06-30 00:00:00.000000', 7, 2, 40),
(471, 27.5, 28.8, 'Nyíradony', '2010-04-01 00:00:00.000000', '2010-06-30 00:00:00.000000', 10, 1, 30),
(31, 27.54, 32.721, 'Maglód - Mende', '2010-03-17 00:00:00.000000', '2010-06-18 00:00:00.000000', 4, 3, 20),
(1119, 27.97, 29.456, 'Tarján', '2010-05-13 00:00:00.000000', '2010-06-15 00:00:00.000000', 7, 3, 40),
(3216, 28, 28.5, 'Tiszabura - Tiszaroff', '2010-06-04 00:00:00.000000', '2010-06-30 00:00:00.000000', 6, 4, 0),
(8101, 32.137, 32.177, 'Szárliget', '2010-05-13 00:00:00.000000', '2010-06-15 00:00:00.000000', 7, 3, 30),
(31, 32.721, 34.107, 'Mende', '2010-03-17 00:00:00.000000', '2010-06-18 00:00:00.000000', 4, 3, 20),
(31, 34.107, 40.764, 'Mende', '2010-03-17 00:00:00.000000', '2010-06-18 00:00:00.000000', 4, 3, 20),
(76, 36.7, 40.785, 'Padár - Nagykapornak', '2010-05-31 00:00:00.000000', '2010-06-30 00:00:00.000000', 4, 3, 40),
(11, 37.74, 37.85, 'Dunabogdány', '2010-05-17 00:00:00.000000', '2010-06-21 00:00:00.000000', 4, 3, 30),
(4422, 39.5, 39.101, 'Makó', '2010-07-24 00:00:00.000000', '2010-08-31 00:00:00.000000', 4, 2, 30),
(76, 40.785, 53.255, 'Alsónemesapáti - Zalaegerszeg', '2010-03-22 00:00:00.000000', '2010-11-10 00:00:00.000000', 4, 3, 40),
(42, 41.5, 41.6, 'Berettyóújfalu', '2010-06-03 00:00:00.000000', '2010-06-30 00:00:00.000000', 8, 3, 40),
(8, 43.5, 44.6, 'Litér', '2010-10-15 00:00:00.000000', '2010-11-30 00:00:00.000000', 2, 1, 50),
(2505, 52.083, 53.023, 'Miskolc', '2010-05-31 00:00:00.000000', '2010-06-30 00:00:00.000000', 9, 3, 30),
(2505, 53.57, 58.5, 'Miskolc', '2010-05-31 00:00:00.000000', '2010-06-30 00:00:00.000000', 3, 3, 30),
(75, 56.75, 58.725, 'Lenti', '2010-06-02 00:00:00.000000', '2010-07-06 00:00:00.000000', 5, 1, 40),
(32, 57.282, 58.291, 'Újszász', '2010-03-17 00:00:00.000000', '2010-06-15 00:00:00.000000', 7, 3, 40),
(21, 57.8, 58.1, 'Salgótarján', '2010-05-17 00:00:00.000000', '2010-06-15 00:00:00.000000', 4, 2, 30),
(81, 59.8, 70, 'Pér - Mezőörs', '2010-03-22 00:00:00.000000', '2010-07-15 00:00:00.000000', 4, 3, 30),
(81, 60.05, 60.45, 'Mezőörs', '2010-05-16 00:00:00.000000', '2010-06-30 00:00:00.000000', 6, 4, 30),
(6, 66.3, 67, 'Dunaújváros', '2010-06-01 00:00:00.000000', '2010-06-15 00:00:00.000000', 6, 1, 40),
(471, 71, 72.15, 'Mátészalka', '2010-03-30 00:00:00.000000', '2010-06-30 00:00:00.000000', 4, 1, 30),
(1, 74.82, 75.977, 'Almásfüzitő', '2010-06-03 00:00:00.000000', '2010-06-21 00:00:00.000000', 1, 1, 30),
(86, 94.5, 98.6, 'Szeleste', '2010-09-08 00:00:00.000000', '2010-11-30 00:00:00.000000', 4, 1, 40),
(55, 100.06, 100.175, 'Baja', '2010-03-22 00:00:00.000000', '2010-07-31 00:00:00.000000', 2, 4, 30),
(61, 154.52, 155.8, 'Böhönye - Vése', '2010-03-15 00:00:00.000000', '2010-11-15 00:00:00.000000', 7, 1, 50),
(61, 157.15, 158.17, 'Vése', '2010-03-15 00:00:00.000000', '2010-11-15 00:00:00.000000', 7, 1, 50),
(86, 159.95, 160.1, 'Bősárkány', '2010-04-26 00:00:00.000000', '2010-06-30 00:00:00.000000', 4, 3, 30),
(61, 161.1, 163.2, 'Vése', '2010-03-15 00:00:00.000000', '2010-11-15 00:00:00.000000', 7, 1, 30),
(61, 165.5, 166.2, 'Vése - Inke', '2010-03-15 00:00:00.000000', '2010-11-15 00:00:00.000000', 7, 1, 40),
(61, 167.5, 169.1, 'Inke', '2010-03-15 00:00:00.000000', '2010-11-15 00:00:00.000000', 7, 1, 30),
(1, 169.41, 170.32, 'Levél', '2010-03-16 00:00:00.000000', '2010-06-30 00:00:00.000000', 2, 2, 40),
(61, 172.1, 173.5, 'Inke', '2010-03-15 00:00:00.000000', '2010-11-15 00:00:00.000000', 7, 1, 30),
(61, 176.15, 176.6, 'Iharosberény', '2010-03-15 00:00:00.000000', '2010-11-15 00:00:00.000000', 7, 1, 30),
(61, 176.9, 177.4, 'Iharosberény', '2010-03-15 00:00:00.000000', '2010-11-15 00:00:00.000000', 7, 1, 30),
(3, 178.97, 187.145, 'Miskolc', '2010-05-31 00:00:00.000000', '2010-06-30 00:00:00.000000', 3, 1, 30),
(4, 180.4, 200.1, 'Püspökladány - Hajdúszoboszló', '2010-03-09 00:00:00.000000', '2010-07-31 00:00:00.000000', 4, 3, 40),
(61, 183.9, 185.5, 'Pogányszentpéter', '2010-03-15 00:00:00.000000', '2010-11-15 00:00:00.000000', 7, 1, 30),
(47, 217.8, 218.1, 'Algyő', '2010-03-17 00:00:00.000000', '2010-06-30 00:00:00.000000', 4, 2, 60),
(4, 241.65, 248.48, 'Hajdúhadház - Téglás', '2010-07-08 00:00:00.000000', '2010-07-30 00:00:00.000000', 4, 5, 60),
(4, 248.48, 260.2, 'Újfehértó', '2010-03-16 00:00:00.000000', '2010-10-30 00:00:00.000000', 5, 1, 30),
(4, 287.79, 288.91, 'Nyírtura', '2010-03-10 00:00:00.000000', '2010-10-05 00:00:00.000000', 4, 1, 40),
(4, 304, 313, 'Nyírtass', '2010-05-29 00:00:00.000000', '2010-10-05 00:00:00.000000', 4, 1, 40),
(4, 306, 307, 'Nyírtass', '2010-03-24 00:00:00.000000', '2010-10-05 00:00:00.000000', 2, 1, 40),
(4, 313, 315, 'Pátroha', '2010-05-05 00:00:00.000000', '2010-10-05 00:00:00.000000', 4, 1, 40),
(4, 319.25, 319.775, 'Kisvárda', '2010-05-29 00:00:00.000000', '2010-10-05 00:00:00.000000', 4, 1, 40),
(4, 336.58, 337.91, 'Tiszabezdéd', '2010-03-10 00:00:00.000000', '2010-10-05 00:00:00.000000', 2, 1, 40),
(4, 336.58, 341.222, 'Záhony', '2010-05-29 00:00:00.000000', '2010-10-05 00:00:00.000000', 4, 1, 40);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `megnevezes`
--

CREATE TABLE `megnevezes` (
  `id` int(11) NOT NULL,
  `nev` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `megnevezes`
--

INSERT INTO `megnevezes` (`id`, `nev`) VALUES
(1, 'kábel fektetés\r'),
(2, 'csomópont építés\r'),
(3, 'kátyúzás\r'),
(4, 'útépítés\r'),
(5, 'aszfaltmarás\r'),
(6, 'árvíz\r'),
(7, 'aszfaltozás\r'),
(8, 'hézagkiöntés\r'),
(9, 'nyomvályú megszüntetés\r'),
(10, 'csatorna\r'),
(11, 'árok- és padkarendezés\r');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `mertek`
--

CREATE TABLE `mertek` (
  `id` int(11) NOT NULL,
  `nev` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `mertek`
--

INSERT INTO `mertek` (`id`, `nev`) VALUES
(1, 'útszűkület\r'),
(2, 'sávlezárás\r'),
(3, 'félpályás lezárás\r'),
(4, 'teljes lezárás\r'),
(5, 'nincs lezárás\r'),
(6, 'nehezen járható\r');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`) VALUES
(1, 'Admin', 'admin@gmail.com', '$2a$10$QEaf3I.eLiZC4F4pDnqmC.sTysFlJ59wgROmw3ATxceFs/wgg0LvK', 'ROLE_ADMIN'),
(3, 'User', 'user@gmail.com', '$2a$10$exVjZOnYQ3oFdNTFP7qVHOoL8K2XhKpWXY3r8duw8v9pTNxmC0qbm', 'ROLE_USER'),
(4, 'dani neve', 'dani', '$2a$10$OdXn9vjY70LVnV5pzahwVOzyKgIc4Y8/7foiImYRj5VhhSyLpZQAS', 'ROLE_Vendeg'),
(5, 'user2', 'user2', '$2a$10$.4cLyRYl..CgZZN0q0XALO1cxiM1plCOHHZQhUq9Bjkra4ghH/kgG', 'ROLE_Vendeg'),
(6, 'user3', 'user3', '$2a$10$krCWX5CxN5vndYl9xnbPk.RytP1rxs/FQXhCNXpkGnZh7yoUI0TcK', 'ROLE_Vendeg'),
(7, 'daniadmin', 'daniadmin', '$2a$10$yQcWgviLSMhcrHwxGfBADep.8HX6PtggGUGVdzjNSgF0h9ZPBhr6a', 'ROLE_ADMIN');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `uzenetek`
--

CREATE TABLE `uzenetek` (
  `id` int(11) NOT NULL,
  `felhasznalo` varchar(255) DEFAULT NULL,
  `szoveg` varchar(255) DEFAULT NULL,
  `datum` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `uzenetek`
--

INSERT INTO `uzenetek` (`id`, `felhasznalo`, `szoveg`, `datum`) VALUES
(13, 'Vendég', 'uj', '2024-10-13 14:59:48'),
(14, 'dani', 'bentrol', '2024-10-13 15:00:03'),
(15, 'Vendég', 'vendeg2', '2024-10-13 15:36:32');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `korlatozas`
--
ALTER TABLE `korlatozas`
  ADD PRIMARY KEY (`kezdet`,`utszam`,`veg`);

--
-- A tábla indexei `megnevezes`
--
ALTER TABLE `megnevezes`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `mertek`
--
ALTER TABLE `mertek`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `uzenetek`
--
ALTER TABLE `uzenetek`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT a táblához `uzenetek`
--
ALTER TABLE `uzenetek`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
