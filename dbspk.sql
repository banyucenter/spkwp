-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 14, 2020 at 06:36 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbspk`
--

-- --------------------------------------------------------

--
-- Table structure for table `alternatif`
--

CREATE TABLE `alternatif` (
  `id_alternatif` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `ijazah` int(11) NOT NULL,
  `skill` int(11) NOT NULL,
  `motivasi` int(11) NOT NULL,
  `etoskerja` int(11) NOT NULL,
  `dipercaya` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `alternatif`
--

INSERT INTO `alternatif` (`id_alternatif`, `nama`, `ijazah`, `skill`, `motivasi`, `etoskerja`, `dipercaya`) VALUES
(1, 'Yatno priawan', 80, 84, 5, 5, 2),
(2, 'Andi', 75, 82, 4, 5, 3),
(3, 'Sarah', 85, 81, 5, 5, 2),
(4, 'Dewita Sari', 84, 79, 4, 4, 3),
(5, 'Asri', 76, 77, 3, 4, 2),
(6, 'Yumame', 81, 78, 4, 3, 3),
(7, 'Infri', 82, 81, 5, 3, 2),
(8, 'Yohanis', 79, 80, 4, 5, 2);

-- --------------------------------------------------------

--
-- Table structure for table `kriteria`
--

CREATE TABLE `kriteria` (
  `id_kriteria` int(11) NOT NULL,
  `simbol` char(10) NOT NULL,
  `kriteria` varchar(100) NOT NULL,
  `bobot` int(11) NOT NULL,
  `kategori` varchar(50) NOT NULL,
  `value` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kriteria`
--

INSERT INTO `kriteria` (`id_kriteria`, `simbol`, `kriteria`, `bobot`, `kategori`, `value`) VALUES
(1, 'C1', 'Ijazah', 5, 'Benefit', 1),
(2, 'C2', 'Skill', 2, 'Benefit', 1),
(3, 'C3', 'Motivasi Letter', 3, 'Cost', -1),
(4, 'C4', 'Etos Kerja', 2, 'Benefit', 1),
(5, 'C5', 'Dapat dipercaya', 5, 'Cost', -1);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_bobot`
-- (See below for the actual view)
--
CREATE TABLE `v_bobot` (
`simbol` char(10)
,`nbobot` decimal(14,4)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_dipercaya`
-- (See below for the actual view)
--
CREATE TABLE `v_dipercaya` (
`nama` varchar(50)
,`pdipercaya` double
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_etoskerja`
-- (See below for the actual view)
--
CREATE TABLE `v_etoskerja` (
`nama` varchar(50)
,`petoskerja` double
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_fpangkat`
-- (See below for the actual view)
--
CREATE TABLE `v_fpangkat` (
`fbobot` decimal(24,4)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_jumlah`
-- (See below for the actual view)
--
CREATE TABLE `v_jumlah` (
`jumlah_bobot` decimal(32,0)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_jumlah_vector`
-- (See below for the actual view)
--
CREATE TABLE `v_jumlah_vector` (
`jumlah_vector` double
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_motivasi`
-- (See below for the actual view)
--
CREATE TABLE `v_motivasi` (
`nama` varchar(50)
,`pmotivasi` double
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_pangkat`
-- (See below for the actual view)
--
CREATE TABLE `v_pangkat` (
`simbol` char(10)
,`nbobot` decimal(14,4)
,`value` int(11)
,`fbobot` decimal(24,4)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_pijazah`
-- (See below for the actual view)
--
CREATE TABLE `v_pijazah` (
`nama` varchar(50)
,`pijazah` double
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_pskill`
-- (See below for the actual view)
--
CREATE TABLE `v_pskill` (
`nama` varchar(50)
,`pskill` double
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_simbol`
-- (See below for the actual view)
--
CREATE TABLE `v_simbol` (
`simbol` char(10)
,`bobot` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_vector`
-- (See below for the actual view)
--
CREATE TABLE `v_vector` (
`nama` varchar(50)
,`pijazah` double
,`pskill` double
,`pmotivasi` double
,`petoskerja` double
,`pdipercaya` double
,`vector_s` double
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_vectorv`
-- (See below for the actual view)
--
CREATE TABLE `v_vectorv` (
`nama` varchar(50)
,`vector_v` double
);

-- --------------------------------------------------------

--
-- Structure for view `v_bobot`
--
DROP TABLE IF EXISTS `v_bobot`;

CREATE  VIEW `v_bobot`  AS  select `v_simbol`.`simbol` AS `simbol`,`v_simbol`.`bobot` / `v_jumlah`.`jumlah_bobot` AS `nbobot` from (`v_simbol` join `v_jumlah`) ;

-- --------------------------------------------------------

--
-- Structure for view `v_dipercaya`
--
DROP TABLE IF EXISTS `v_dipercaya`;

CREATE  VIEW `v_dipercaya`  AS  select `alternatif`.`nama` AS `nama`,power(`alternatif`.`dipercaya`,`v_pangkat`.`fbobot`) AS `pdipercaya` from (`alternatif` join `v_pangkat`) where `v_pangkat`.`simbol` = 'C5' ;

-- --------------------------------------------------------

--
-- Structure for view `v_etoskerja`
--
DROP TABLE IF EXISTS `v_etoskerja`;

CREATE  VIEW `v_etoskerja`  AS  select `alternatif`.`nama` AS `nama`,power(`alternatif`.`etoskerja`,`v_pangkat`.`fbobot`) AS `petoskerja` from (`alternatif` join `v_pangkat`) where `v_pangkat`.`simbol` = 'C4' ;

-- --------------------------------------------------------

--
-- Structure for view `v_fpangkat`
--
DROP TABLE IF EXISTS `v_fpangkat`;

CREATE  VIEW `v_fpangkat`  AS  select `v_pangkat`.`fbobot` AS `fbobot` from `v_pangkat` ;

-- --------------------------------------------------------

--
-- Structure for view `v_jumlah`
--
DROP TABLE IF EXISTS `v_jumlah`;

CREATE  VIEW `v_jumlah`  AS  select sum(`kriteria`.`bobot`) AS `jumlah_bobot` from `kriteria` ;

-- --------------------------------------------------------

--
-- Structure for view `v_jumlah_vector`
--
DROP TABLE IF EXISTS `v_jumlah_vector`;

CREATE  VIEW `v_jumlah_vector`  AS  select sum(`v_vector`.`vector_s`) AS `jumlah_vector` from `v_vector` ;

-- --------------------------------------------------------

--
-- Structure for view `v_motivasi`
--
DROP TABLE IF EXISTS `v_motivasi`;

CREATE  VIEW `v_motivasi`  AS  select `alternatif`.`nama` AS `nama`,power(`alternatif`.`motivasi`,`v_pangkat`.`fbobot`) AS `pmotivasi` from (`alternatif` join `v_pangkat`) where `v_pangkat`.`simbol` = 'C3' ;

-- --------------------------------------------------------

--
-- Structure for view `v_pangkat`
--
DROP TABLE IF EXISTS `v_pangkat`;

CREATE  VIEW `v_pangkat`  AS  select `v_bobot`.`simbol` AS `simbol`,`v_bobot`.`nbobot` AS `nbobot`,`kriteria`.`value` AS `value`,`v_bobot`.`nbobot` * `kriteria`.`value` AS `fbobot` from (`v_bobot` join `kriteria`) where `kriteria`.`simbol` = `v_bobot`.`simbol` ;

-- --------------------------------------------------------

--
-- Structure for view `v_pijazah`
--
DROP TABLE IF EXISTS `v_pijazah`;

CREATE  VIEW `v_pijazah`  AS  select `alternatif`.`nama` AS `nama`,power(`alternatif`.`ijazah`,`v_pangkat`.`fbobot`) AS `pijazah` from (`alternatif` join `v_pangkat`) where `v_pangkat`.`simbol` = 'C1' ;

-- --------------------------------------------------------

--
-- Structure for view `v_pskill`
--
DROP TABLE IF EXISTS `v_pskill`;

CREATE  VIEW `v_pskill`  AS  select `alternatif`.`nama` AS `nama`,power(`alternatif`.`skill`,`v_pangkat`.`fbobot`) AS `pskill` from (`alternatif` join `v_pangkat`) where `v_pangkat`.`simbol` = 'C2' ;

-- --------------------------------------------------------

--
-- Structure for view `v_simbol`
--
DROP TABLE IF EXISTS `v_simbol`;

CREATE  VIEW `v_simbol`  AS  select `kriteria`.`simbol` AS `simbol`,`kriteria`.`bobot` AS `bobot` from `kriteria` ;

-- --------------------------------------------------------

--
-- Structure for view `v_vector`
--
DROP TABLE IF EXISTS `v_vector`;

CREATE  VIEW `v_vector`  AS  select `v_pijazah`.`nama` AS `nama`,`v_pijazah`.`pijazah` AS `pijazah`,`v_pskill`.`pskill` AS `pskill`,`v_motivasi`.`pmotivasi` AS `pmotivasi`,`v_etoskerja`.`petoskerja` AS `petoskerja`,`v_dipercaya`.`pdipercaya` AS `pdipercaya`,`v_pijazah`.`pijazah` * `v_pskill`.`pskill` * `v_motivasi`.`pmotivasi` * `v_etoskerja`.`petoskerja` * `v_dipercaya`.`pdipercaya` AS `vector_s` from ((((`v_pijazah` join `v_motivasi`) join `v_pskill`) join `v_etoskerja`) join `v_dipercaya`) where `v_pijazah`.`nama` = `v_pskill`.`nama` and `v_pijazah`.`nama` = `v_motivasi`.`nama` and `v_pijazah`.`nama` = `v_etoskerja`.`nama` and `v_pijazah`.`nama` = `v_dipercaya`.`nama` ;

-- --------------------------------------------------------

--
-- Structure for view `v_vectorv`
--
DROP TABLE IF EXISTS `v_vectorv`;

CREATE  VIEW `v_vectorv`  AS  select `v_vector`.`nama` AS `nama`,`v_vector`.`vector_s` / `v_jumlah_vector`.`jumlah_vector` AS `vector_v` from (`v_jumlah_vector` join `v_vector`) order by `v_vector`.`vector_s` / `v_jumlah_vector`.`jumlah_vector` desc ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alternatif`
--
ALTER TABLE `alternatif`
  ADD PRIMARY KEY (`id_alternatif`);

--
-- Indexes for table `kriteria`
--
ALTER TABLE `kriteria`
  ADD PRIMARY KEY (`id_kriteria`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alternatif`
--
ALTER TABLE `alternatif`
  MODIFY `id_alternatif` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `kriteria`
--
ALTER TABLE `kriteria`
  MODIFY `id_kriteria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
