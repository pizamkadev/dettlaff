-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Lis 21, 2025 at 06:13 PM
-- Wersja serwera: 10.4.32-MariaDB
-- Wersja PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rezerwacja`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `klienci`
--

CREATE TABLE `klienci` (
  `id_klienta` int(11) NOT NULL,
  `imie` varchar(255) DEFAULT NULL,
  `nazwisko` varchar(255) DEFAULT NULL,
  `telefon` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `data_utworzenia` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `klienci`
--

INSERT INTO `klienci` (`id_klienta`, `imie`, `nazwisko`, `telefon`, `email`, `password`, `data_utworzenia`) VALUES
(1, 'Adam', 'Nowak', '501001001', 'adam.nowak1@example.com', '123456', '2025-11-19 22:32:10'),
(2, 'Ewa', 'Kowalska', '501001002', 'ewa.kowalska2@example.com', '123456', '2025-11-19 22:32:10'),
(3, 'Marek', 'Zieliński', '501001003', 'marek.zielinski3@example.com', '123456', '2025-11-19 22:32:10'),
(4, 'Julia', 'Wiśniewska', '501001004', 'julia.wisniewska4@example.com', '123456', '2025-11-19 22:32:10'),
(5, 'Paweł', 'Wójcik', '501001005', 'pawel.wojcik5@example.com', '123456', '2025-11-19 22:32:10'),
(6, 'Anna', 'Kamińska', '501001006', 'anna.kaminska6@example.com', '123456', '2025-11-19 22:32:10'),
(7, 'Tomasz', 'Lewandowski', '501001007', 'tomasz.lewandowski7@example.com', '123456', '2025-11-19 22:32:10'),
(8, 'Kasia', 'Szymańska', '501001008', 'kasia.szymanska8@example.com', '123456', '2025-11-19 22:32:10'),
(9, 'Piotr', 'Dąbrowski', '501001009', 'piotr.dabrowski9@example.com', '123456', '2025-11-19 22:32:10'),
(10, 'Karolina', 'Kozłowska', '501001010', 'karolina.kozlowska10@example.com', '123456', '2025-11-19 22:32:10'),
(11, 'Kamil', 'Jankowski', '501001011', 'kamil.jankowski11@example.com', '123456', '2025-11-19 22:32:10'),
(12, 'Alicja', 'Mazur', '501001012', 'alicja.mazur12@example.com', '123456', '2025-11-19 22:32:10'),
(13, 'Sebastian', 'Krawczyk', '501001013', 'sebastian.krawczyk13@example.com', '123456', '2025-11-19 22:32:10'),
(14, 'Monika', 'Piotrowska', '501001014', 'monika.piotrowska14@example.com', '123456', '2025-11-19 22:32:10'),
(15, 'Dominik', 'Grabowski', '501001015', 'dominik.grabowski15@example.com', '123456', '2025-11-19 22:32:10'),
(16, 'Natalia', 'Zając', '501001016', 'natalia.zajac16@example.com', '123456', '2025-11-19 22:32:10'),
(17, 'Szymon', 'Pawłowski', '501001017', 'szymon.pawlowski17@example.com', '123456', '2025-11-19 22:32:10'),
(18, 'Oliwia', 'Michalska', '501001018', 'oliwia.michalska18@example.com', '123456', '2025-11-19 22:32:10'),
(19, 'Krzysztof', 'Król', '501001019', 'krzysztof.krol19@example.com', '123456', '2025-11-19 22:32:10'),
(20, 'Magda', 'Wieczorek', '501001020', 'magda.wieczorek20@example.com', '123456', '2025-11-19 22:32:10'),
(21, 'Bartosz', 'Jabłoński', '501001021', 'bartosz.jablonski21@example.com', '123456', '2025-11-19 22:32:10'),
(22, 'Sylwia', 'Wróbel', '501001022', 'sylwia.wrobel22@example.com', '123456', '2025-11-19 22:32:10'),
(23, 'Rafał', 'Nowicki', '501001023', 'rafal.nowicki23@example.com', '123456', '2025-11-19 22:32:10'),
(24, 'Laura', 'Majewska', '501001024', 'laura.majewska24@example.com', '123456', '2025-11-19 22:32:10'),
(25, 'Damian', 'Olszewski', '501001025', 'damian.olszewski25@example.com', '123456', '2025-11-19 22:32:10'),
(26, 'Weronika', 'Stępień', '501001026', 'weronika.stepien26@example.com', '123456', '2025-11-19 22:32:10'),
(27, 'Mateusz', 'Jaworski', '501001027', 'mateusz.jaworski27@example.com', '123456', '2025-11-19 22:32:10'),
(28, 'Lena', 'Malinowska', '501001028', 'lena.malinowska28@example.com', '123456', '2025-11-19 22:32:10'),
(29, 'Adrian', 'Adamczyk', '501001029', 'adrian.adamczyk29@example.com', '123456', '2025-11-19 22:32:10'),
(30, 'Wiktoria', 'Górska', '501001030', 'wiktoria.gorska30@example.com', '123456', '2025-11-19 22:32:10'),
(31, 'Filip', 'Sikora', '501001031', 'filip.sikora31@example.com', '123456', '2025-11-19 22:32:10'),
(32, 'Marika', 'Walczak', '501001032', 'marika.walczak32@example.com', '123456', '2025-11-19 22:32:10'),
(33, 'Jakub', 'Ratajczak', '501001033', 'jakub.ratajczak33@example.com', '123456', '2025-11-19 22:32:10'),
(34, 'Olga', 'Marciniak', '501001034', 'olga.marciniak34@example.com', '123456', '2025-11-19 22:32:10'),
(35, 'Michał', 'Brzeziński', '501001035', 'michal.brzezinski35@example.com', '123456', '2025-11-19 22:32:10'),
(36, 'Patrycja', 'Sadowska', '501001036', 'patrycja.sadowska36@example.com', '123456', '2025-11-19 22:32:10'),
(37, 'Igor', 'Borkowski', '501001037', 'igor.borkowski37@example.com', '123456', '2025-11-19 22:32:10'),
(38, 'Sara', 'Chmielewska', '501001038', 'sara.chmielewska38@example.com', '123456', '2025-11-19 22:32:10'),
(39, 'Łukasz', 'Sawicki', '501001039', 'lukasz.sawicki39@example.com', '123456', '2025-11-19 22:32:10'),
(40, 'Emilia', 'Czarnecka', '501001040', 'emilia.czarnecka40@example.com', '123456', '2025-11-19 22:32:10'),
(41, 'Konrad', 'Urbaniak', '501001041', 'konrad.urbaniak41@example.com', '123456', '2025-11-19 22:32:10'),
(42, 'Zuzanna', 'Szulc', '501001042', 'zuzanna.szulc42@example.com', '123456', '2025-11-19 22:32:10'),
(43, 'Mariusz', 'Kurek', '501001043', 'mariusz.kurek43@example.com', '123456', '2025-11-19 22:32:10'),
(44, 'Blanka', 'Baran', '501001044', 'blanka.baran44@example.com', '123456', '2025-11-19 22:32:10'),
(45, 'Oskar', 'Lis', '501001045', 'oskar.lis45@example.com', '123456', '2025-11-19 22:32:10'),
(46, 'Gabriela', 'Bednarek', '501001046', 'gabriela.bednarek46@example.com', '123456', '2025-11-19 22:32:10'),
(47, 'Patryk', 'Sosnowski', '501001047', 'patryk.sosnowski47@example.com', '123456', '2025-11-19 22:32:10'),
(48, 'Nina', 'Kubiak', '501001048', 'nina.kubiak48@example.com', '123456', '2025-11-19 22:32:10'),
(49, 'Dawid', 'Milewski', '501001049', 'dawid.milewski49@example.com', '123456', '2025-11-19 22:32:10'),
(50, 'Helena', 'Sobczak', '501001050', 'helena.sobczak50@example.com', '123456', '2025-11-19 22:32:10');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `platnosc`
--

CREATE TABLE `platnosc` (
  `id_platnosc` int(11) NOT NULL,
  `id_rezerwacji` int(11) DEFAULT NULL,
  `kwota` decimal(10,2) DEFAULT NULL,
  `metoda` enum('Karta','Gotówka') DEFAULT NULL,
  `status_platnosci` enum('Oczekuje','Oplacono') DEFAULT NULL,
  `data_utwozenia` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `rezerwacje`
--

CREATE TABLE `rezerwacje` (
  `id_rezerwacji` int(11) NOT NULL,
  `id_klient` int(11) DEFAULT NULL,
  `czas_rezerwacji` datetime DEFAULT NULL,
  `status` enum('Oczekująca','Potwierdzona','Anulowana','Zakończona') DEFAULT NULL,
  `uwagi` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `stoliki`
--

CREATE TABLE `stoliki` (
  `id_stolik` int(11) NOT NULL,
  `liczba_miejsc` int(11) DEFAULT NULL,
  `lokalizacja` enum('wewnątrz','ogród','taras') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stoliki`
--

INSERT INTO `stoliki` (`id_stolik`, `liczba_miejsc`, `lokalizacja`) VALUES
(1, 2, 'wewnątrz'),
(2, 4, 'ogród'),
(3, 6, 'taras'),
(4, 4, 'wewnątrz'),
(5, 2, 'ogród'),
(6, 8, 'taras'),
(7, 6, 'wewnątrz'),
(8, 4, 'taras'),
(9, 2, 'ogród'),
(10, 6, 'wewnątrz'),
(11, 8, 'ogród'),
(12, 4, 'taras'),
(13, 2, 'wewnątrz'),
(14, 6, 'ogród'),
(15, 4, 'taras'),
(16, 8, 'wewnątrz'),
(17, 2, 'taras'),
(18, 6, 'ogród'),
(19, 4, 'wewnątrz'),
(20, 8, 'taras'),
(21, 2, 'ogród'),
(22, 6, 'wewnątrz'),
(23, 4, 'ogród'),
(24, 8, 'wewnątrz'),
(25, 6, 'taras');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `klienci`
--
ALTER TABLE `klienci`
  ADD PRIMARY KEY (`id_klienta`);

--
-- Indeksy dla tabeli `platnosc`
--
ALTER TABLE `platnosc`
  ADD PRIMARY KEY (`id_platnosc`),
  ADD KEY `rez_plat` (`id_rezerwacji`);

--
-- Indeksy dla tabeli `rezerwacje`
--
ALTER TABLE `rezerwacje`
  ADD PRIMARY KEY (`id_rezerwacji`),
  ADD KEY `klie_rez` (`id_klient`);

--
-- Indeksy dla tabeli `stoliki`
--
ALTER TABLE `stoliki`
  ADD PRIMARY KEY (`id_stolik`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `klienci`
--
ALTER TABLE `klienci`
  MODIFY `id_klienta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `platnosc`
--
ALTER TABLE `platnosc`
  MODIFY `id_platnosc` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rezerwacje`
--
ALTER TABLE `rezerwacje`
  MODIFY `id_rezerwacji` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stoliki`
--
ALTER TABLE `stoliki`
  MODIFY `id_stolik` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `platnosc`
--
ALTER TABLE `platnosc`
  ADD CONSTRAINT `rez_plat` FOREIGN KEY (`id_rezerwacji`) REFERENCES `rezerwacje` (`id_rezerwacji`);

--
-- Constraints for table `rezerwacje`
--
ALTER TABLE `rezerwacje`
  ADD CONSTRAINT `klie_rez` FOREIGN KEY (`id_klient`) REFERENCES `klienci` (`id_klienta`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
