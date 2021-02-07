-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 25, 2020 at 11:28 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `un2020`
--

-- --------------------------------------------------------

--
-- Table structure for table `un_konfigurasi`
--

CREATE TABLE `un_konfigurasi` (
  `id` int(11) NOT NULL,
  `sekolah` varchar(255) NOT NULL,
  `tahun` year(4) NOT NULL,
  `tgl_pengumuman` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `un_konfigurasi`
--

INSERT INTO `un_konfigurasi` (`id`, `sekolah`, `tahun`, `tgl_pengumuman`) VALUES
(2, 'SMKN 3 Palangka Raya', 2020, '2019-05-02 09:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `un_siswa`
--

CREATE TABLE `un_siswa` (
  `id` int(11) NOT NULL,
  `no_ujian` char(100) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `ttl` varchar(100) DEFAULT NULL,
  `nisn` int(4) DEFAULT NULL,
  `komli` varchar(50) DEFAULT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `un_siswa`
--

INSERT INTO `un_siswa` (`id`, `no_ujian`, `nama`, `ttl`, `nisn`, `komli`, `status`) VALUES
(1, '23-101-463-2', 'AGUSTINA ANDINI ', 'Banjarmasin. 11 Juli 2020', 100, 'XII BUSANA 1', 1),
(2, '23-101-463-3', 'ANGGRAINI', 'Banjarbaru. 12 Juli 2020', 101, 'XII BUSANA 1', 1),
(3, '23-101-463-4', 'ARISKA MULIAWARNI ', 'Palangkaraya. 29 Juli 2020', 102, 'XII BUSANA 1', 0),
(4, '23-101-463-5', 'AULIA ARTHA  ', 'Jawa Timur. 9 Juni 2020', 103, 'XII BUSANA 1', 0),
(5, '23-101-463-6', 'CHINDY INDAH NUR EKAWATI ', 'Banjarmasin. 11 Juli 2021', 104, 'XII BUSANA 1', 1),
(6, '23-101-463-7', 'DELLA MAGDALENA ', 'Banjarbaru. 12 Juli 2021', 105, 'XII BUSANA 1', 1),
(7, '23-101-463-8', 'DEWI RAHMAWATI', 'Palangkaraya. 29 Juli 2021', 106, 'XII BUSANA 1', 1),
(8, '23-101-463-9', 'DINA SABITA ', 'Jawa Timur. 9 Juni 2021', 107, 'XII BUSANA 1', 0),
(9, '23-101-463-10', 'EKA ROHMATUL KURNIADI  ', 'Banjarmasin. 11 Juli 2022', 108, 'XII BUSANA 1', 1),
(10, '23-101-463-11', 'FIRLI NURSEPTIYAWATI', 'Banjarbaru. 12 Juli 2022', 109, 'XII BUSANA 1', 1),
(11, '23-101-463-12', 'FLORIDA SINTANI', 'Palangkaraya. 29 Juli 2022', 110, 'XII BUSANA 1', 0),
(12, '23-101-463-13', 'HELDA RAMUNA', 'Jawa Timur. 9 Juni 2022', 111, 'XII BUSANA 1', 0),
(13, '23-101-463-14', 'IDA MAWARNI ', 'Banjarmasin. 11 Juli 2023', 112, 'XII BUSANA 1', 1),
(14, '23-101-463-15', 'JEAN SERAF YASPIS', 'Banjarbaru. 12 Juli 2023', 113, 'XII BUSANA 1', 0),
(15, '23-101-463-16', 'JENI SENTIKA ', 'Palangkaraya. 29 Juli 2023', 114, 'XII BUSANA 1', 1),
(16, '23-101-463-17', 'LILIS KARLINA ', 'Jawa Timur. 9 Juni 2023', 115, 'XII BUSANA 1', 1),
(17, '23-101-463-18', 'MAULIDA', 'Banjarmasin. 11 Juli 2024', 116, 'XII BUSANA 1', 1),
(18, '23-101-463-19', 'MAULINDA AFIFAH', 'Banjarbaru. 12 Juli 2024', 117, 'XII BUSANA 1', 1),
(19, '23-101-463-20', 'MUJALIFAH', 'Palangkaraya. 29 Juli 2024', 118, 'XII BUSANA 1', 9),
(20, '23-101-463-21', 'NOOR APIPAH', 'Jawa Timur. 9 Juni 2024', 119, 'XII BUSANA 1', 2),
(21, '23-101-463-22', 'NOVIA ', 'Banjarmasin. 11 Juli 2025', 120, 'XII BUSANA 1', 6),
(22, '23-101-463-23', 'PRISCILA GABRIEL ', 'Banjarbaru. 12 Juli 2025', 121, 'XII BUSANA 1', 5),
(23, '23-101-463-24', 'PUTRI HANDAYANI ', 'Palangkaraya. 29 Juli 2025', 122, 'XII BUSANA 1', 6),
(24, '23-101-463-25', 'RACHMAWATY ', 'Jawa Timur. 9 Juni 2025', 123, 'XII BUSANA 1', 8),
(25, '23-101-463-26', 'RISTY ANGGUN WINARTI ', 'Banjarmasin. 11 Juli 2026', 124, 'XII BUSANA 1', 9),
(26, '23-101-463-27', 'SINTANI ', 'Banjarbaru. 12 Juli 2026', 125, 'XII BUSANA 1', 1),
(27, '23-101-463-28', 'SITI MAIMUNAH ', 'Palangkaraya. 29 Juli 2026', 126, 'XII BUSANA 1', 1),
(28, '23-101-463-29', 'THERESIA SINGAH ', 'Jawa Timur. 9 Juni 2026', 127, 'XII BUSANA 1', 0),
(29, '23-101-463-30', 'WINARTI ', 'Banjarmasin. 11 Juli 2027', 128, 'XII BUSANA 1', 1),
(30, '23-101-463-31', 'Agustina Pancarwati', 'Banjarbaru. 12 Juli 2027', 129, 'XII BUS 2', 1),
(31, '23-101-463-32', 'Annida', 'Palangkaraya. 29 Juli 2027', 130, 'XII BUS 2', 0),
(32, '23-101-463-33', 'Arrizka Annuri ', 'Jawa Timur. 9 Juni 2027', 131, 'XII BUS 2', 0),
(33, '23-101-463-34', ' Dhiti Dhuta M', 'Banjarmasin. 11 Juli 2028', 132, 'XII BUS 2', 1),
(34, '23-101-463-35', 'Fitrianita ', 'Banjarbaru. 12 Juli 2028', 133, 'XII BUS 2', 0),
(35, '23-101-463-36', 'Hairunisa', 'Palangkaraya. 29 Juli 2028', 134, 'XII BUS 2', 1),
(36, '23-101-463-37', 'Hazmi Aulia ', 'Jawa Timur. 9 Juni 2028', 135, 'XII BUS 2', 1),
(37, '23-101-463-38', 'Hilda ', 'Banjarmasin. 11 Juli 2029', 136, 'XII BUS 2', 1),
(38, '23-101-463-39', 'Irma Wardani T ', 'Banjarbaru. 12 Juli 2029', 137, 'XII BUS 2', 1),
(39, '23-101-463-40', 'Lola Aprilia L', 'Palangkaraya. 29 Juli 2029', 138, 'XII BUS 2', 9),
(40, '23-101-463-41', 'Mahdalisa', 'Jawa Timur. 9 Juni 2029', 139, 'XII BUS 2', 2),
(41, '23-101-463-42', 'Maulida', 'Banjarmasin. 11 Juli 2030', 140, 'XII BUS 2', 6),
(42, '23-101-463-43', 'Melda Carolina ', 'Banjarbaru. 12 Juli 2030', 141, 'XII BUS 2', 5),
(43, '23-101-463-44', 'Noor Hayati ', 'Palangkaraya. 29 Juli 2030', 142, 'XII BUS 2', 6),
(44, '23-101-463-45', 'Novi Rahmadani P ', 'Jawa Timur. 9 Juni 2030', 143, 'XII BUS 2', 8),
(45, '23-101-463-46', 'Nurul Aida', 'Banjarmasin. 11 Juli 2031', 144, 'XII BUS 2', 9),
(46, '23-101-463-47', 'Oktrie Kristiani ', 'Banjarbaru. 12 Juli 2031', 145, 'XII BUS 2', 1),
(47, '23-101-463-48', 'Putri Arinda', 'Palangkaraya. 29 Juli 2031', 146, 'XII BUS 2', 1),
(48, '23-101-463-49', 'Radiah Kasirah ', 'Jawa Timur. 9 Juni 2031', 147, 'XII BUS 2', 0),
(49, '23-101-463-50', 'Riska Ayuditya ', 'Banjarmasin. 11 Juli 2032', 148, 'XII BUS 2', 1),
(50, '23-101-463-51', 'Siska Amelia ', 'Banjarbaru. 12 Juli 2032', 149, 'XII BUS 2', 1),
(51, '23-101-463-52', 'Siti Nurhasanah ', 'Palangkaraya. 29 Juli 2032', 150, 'XII BUS 2', 0),
(52, '23-101-463-53', 'Windi Dwi Febriliani ', 'Jawa Timur. 9 Juni 2032', 151, 'XII BUS 2', 0),
(53, '23-101-463-54', 'Yuliy ', 'Banjarmasin. 11 Juli 2033', 152, 'XII BUS 2', 1),
(54, '23-101-463-55', 'Rium Herlintang ', 'Banjarbaru. 12 Juli 2033', 153, 'XII BUS 2', 0),
(55, '23-101-463-56', 'Claudia Avika Sari ', 'Palangkaraya. 29 Juli 2033', 154, 'XII BUS 2', 1),
(56, '23-101-463-57', 'Aditya Dimas Sumantri', 'Jawa Timur. 9 Juni 2033', 155, 'XII TKJ 1', 1),
(57, '23-101-463-58', 'Adziz Ramadhan', 'Banjarmasin. 11 Juli 2034', 156, 'XII TKJ 1', 1),
(58, '23-101-463-59', 'Agita Sattya Utami Br.Ginting', 'Banjarbaru. 12 Juli 2034', 157, 'XII TKJ 1', 1),
(59, '23-101-463-60', 'Ahmad Rizky', 'Palangkaraya. 29 Juli 2034', 158, 'XII TKJ 1', 9),
(60, '23-101-463-61', 'Andrea Piereski', 'Jawa Timur. 9 Juni 2034', 159, 'XII TKJ 1', 2),
(61, '23-101-463-62', 'Arif Rahman', 'Banjarmasin. 11 Juli 2035', 160, 'XII TKJ 1', 6),
(62, '23-101-463-63', 'Asher Wirayuda Akbar', 'Banjarbaru. 12 Juli 2035', 161, 'XII TKJ 1', 5),
(63, '23-101-463-64', 'Bahriyah', 'Palangkaraya. 29 Juli 2035', 162, 'XII TKJ 1', 6),
(64, '23-101-463-65', 'Devi Anggraeni', 'Jawa Timur. 9 Juni 2035', 163, 'XII TKJ 1', 8),
(65, '23-101-463-66', 'Diana Saputra', 'Banjarmasin. 11 Juli 2036', 164, 'XII TKJ 1', 9),
(66, '23-101-463-67', 'Ella Febriani', 'Banjarbaru. 12 Juli 2036', 165, 'XII TKJ 1', 1),
(67, '23-101-463-68', 'Fadilatur Rahmah', 'Palangkaraya. 29 Juli 2036', 166, 'XII TKJ 1', 1),
(68, '23-101-463-69', 'Fardha Yanti', 'Jawa Timur. 9 Juni 2036', 167, 'XII TKJ 1', 0),
(69, '23-101-463-70', 'Hasanah', 'Banjarmasin. 11 Juli 2037', 168, 'XII TKJ 1', 1),
(70, '23-101-463-71', 'I kadek Natan Gani M.', 'Banjarbaru. 12 Juli 2037', 169, 'XII TKJ 1', 1),
(71, '23-101-463-72', 'Innashova Eka Putri', 'Palangkaraya. 29 Juli 2037', 170, 'XII TKJ 1', 0),
(72, '23-101-463-73', 'Jonathan Setiawan U.', 'Jawa Timur. 9 Juni 2037', 171, 'XII TKJ 1', 0),
(73, '23-101-463-74', 'Josia Nawara Saputra B.', 'Banjarmasin. 11 Juli 2038', 172, 'XII TKJ 1', 1),
(74, '23-101-463-75', 'Kerisna ', 'Banjarbaru. 12 Juli 2038', 173, 'XII TKJ 1', 0),
(75, '23-101-463-76', 'Krisdiantoro', 'Palangkaraya. 29 Juli 2038', 174, 'XII TKJ 1', 1),
(76, '23-101-463-77', 'Muhammad Irfan', 'Jawa Timur. 9 Juni 2038', 175, 'XII TKJ 1', 1),
(77, '23-101-463-78', 'Muhammad Noor', 'Banjarmasin. 11 Juli 2039', 176, 'XII TKJ 1', 1),
(78, '23-101-463-79', 'Putri Julaiha', 'Banjarbaru. 12 Juli 2039', 177, 'XII TKJ 1', 1),
(79, '23-101-463-80', 'Rahmanda Aji Pratama', 'Palangkaraya. 29 Juli 2039', 178, 'XII TKJ 1', 9),
(80, '23-101-463-81', 'Reynard Adelio U.', 'Jawa Timur. 9 Juni 2039', 179, 'XII TKJ 1', 2),
(81, '23-101-463-82', 'Ricardo Donni Prayoga', 'Banjarmasin. 11 Juli 2040', 180, 'XII TKJ 1', 6),
(82, '23-101-463-83', 'Riniyati', 'Banjarbaru. 12 Juli 2040', 181, 'XII TKJ 1', 5),
(83, '23-101-463-84', 'Umar Abdul Latief', 'Palangkaraya. 29 Juli 2040', 182, 'XII TKJ 1', 6),
(84, '23-101-463-85', 'Wida Wandari', 'Jawa Timur. 9 Juni 2040', 183, 'XII TKJ 1', 8),
(85, '23-101-463-86', 'Arman Juliansyah', 'Banjarmasin. 11 Juli 2041', 184, 'XII TKJ 2', 9),
(86, '23-101-463-87', ' Carla Destriayu Boru M', 'Banjarbaru. 12 Juli 2041', 185, 'XII TKJ 2', 1),
(87, '23-101-463-88', ' Daniel Ramotti Jordan S', 'Palangkaraya. 29 Juli 2041', 186, 'XII TKJ 2', 1),
(88, '23-101-463-89', ' Evelyn Crishtabella', 'Jawa Timur. 9 Juni 2041', 187, 'XII TKJ 2', 0),
(89, '23-101-463-90', 'Febrian Valentino R', 'Banjarmasin. 11 Juli 2042', 188, 'XII TKJ 2', 1),
(90, '23-101-463-91', ' Frema Abduhadi Sadid', 'Banjarbaru. 12 Juli 2042', 189, 'XII TKJ 2', 1),
(91, '23-101-463-92', ' Glessya Cladora', 'Palangkaraya. 29 Juli 2042', 190, 'XII TKJ 2', 0),
(92, '23-101-463-93', ' Gusti', 'Jawa Timur. 9 Juni 2042', 191, 'XII TKJ 2', 0),
(93, '23-101-463-94', ' Laila Nisvi Nur Aulia M.S', 'Banjarmasin. 11 Juli 2043', 192, 'XII TKJ 2', 1),
(94, '23-101-463-95', ' Masdicky Muslim ', 'Banjarbaru. 12 Juli 2043', 193, 'XII TKJ 2', 0),
(95, '23-101-463-96', ' Melantony Saputra', 'Palangkaraya. 29 Juli 2043', 194, 'XII TKJ 2', 1),
(96, '23-101-463-97', ' Melvi Prrovidensia B', 'Jawa Timur. 9 Juni 2043', 195, 'XII TKJ 2', 1),
(97, '23-101-463-98', ' M. Fakhruz Zaini', 'Banjarmasin. 11 Juli 2044', 196, 'XII TKJ 2', 1),
(98, '23-101-463-99', ' Nazuah', 'Banjarbaru. 12 Juli 2044', 197, 'XII TKJ 2', 1),
(99, '23-101-463-100', ' Nur Hasanah', 'Palangkaraya. 29 Juli 2044', 198, 'XII TKJ 2', 9),
(100, '23-101-463-101', ' Padil Ihsan', 'Jawa Timur. 9 Juni 2044', 199, 'XII TKJ 2', 2),
(101, '23-101-463-102', ' Pebra Sulistiadi', 'Banjarmasin. 11 Juli 2045', 200, 'XII TKJ 2', 6),
(102, '23-101-463-103', ' Pedro Rafael Talenta', 'Banjarbaru. 12 Juli 2045', 201, 'XII TKJ 2', 5),
(103, '23-101-463-104', ' Putri', 'Palangkaraya. 29 Juli 2045', 202, 'XII TKJ 2', 6),
(104, '23-101-463-105', ' Rahman Azzani', 'Jawa Timur. 9 Juni 2045', 203, 'XII TKJ 2', 8),
(105, '23-101-463-106', ' Reski Suryaningrum N', 'Banjarmasin. 11 Juli 2046', 204, 'XII TKJ 2', 9),
(106, '23-101-463-107', ' Romario', 'Banjarbaru. 12 Juli 2046', 205, 'XII TKJ 2', 1),
(107, '23-101-463-108', ' Sinta Dewi', 'Palangkaraya. 29 Juli 2046', 206, 'XII TKJ 2', 1),
(108, '23-101-463-109', ' Tegar Tri Mukti Aji', 'Jawa Timur. 9 Juni 2046', 207, 'XII TKJ 2', 0),
(109, '23-101-463-110', ' Tri Subi', 'Banjarmasin. 11 Juli 2047', 208, 'XII TKJ 2', 1),
(110, '23-101-463-111', ' Wira Yudha Ery N', 'Banjarbaru. 12 Juli 2047', 209, 'XII TKJ 2', 1),
(111, '23-101-463-112', ' Yuiana', 'Palangkaraya. 29 Juli 2047', 210, 'XII TKJ 2', 0),
(112, '23-101-463-113', ' Zaini Abdi Subari', 'Jawa Timur. 9 Juni 2047', 211, 'XII TKJ 2', 0),
(113, '23-101-463-114', 'Arnetha', 'Banjarmasin. 11 Juli 2048', 212, 'XII UPW 1', 1),
(114, '23-101-463-115', 'Boby Mandala Putra', 'Banjarbaru. 12 Juli 2048', 213, 'XII UPW 1', 0),
(115, '23-101-463-116', 'Chairunnisa Ayu Wulandari', 'Palangkaraya. 29 Juli 2048', 214, 'XII UPW 1', 1),
(116, '23-101-463-117', 'Cicilia Dewinta', 'Jawa Timur. 9 Juni 2048', 215, 'XII UPW 1', 1),
(117, '23-101-463-118', 'Diky Wardianto', 'Banjarmasin. 11 Juli 2049', 216, 'XII UPW 1', 3),
(118, '23-101-463-119', 'Diliana Laila Mubarok', 'Banjarbaru. 12 Juli 2049', 217, 'XII UPW 1', 1),
(119, '23-101-463-120', 'Galih Pramudita', 'Palangkaraya. 29 Juli 2049', 218, 'XII UPW 1', 9),
(120, '23-101-463-121', 'Gustirani Apriliana B', 'Jawa Timur. 9 Juni 2049', 219, 'XII UPW 1', 2),
(121, '23-101-463-122', 'Imanuel Abednego', 'Banjarmasin. 11 Juli 2050', 220, 'XII UPW 1', 6),
(122, '23-101-463-123', 'Ineke Setyawanti', 'Banjarbaru. 12 Juli 2050', 221, 'XII UPW 1', 5),
(123, '23-101-463-124', 'Jessica Febbyola', 'Palangkaraya. 29 Juli 2050', 222, 'XII UPW 1', 6),
(124, '23-101-463-125', 'Jhonathan Leonardo A', 'Jawa Timur. 9 Juni 2050', 223, 'XII UPW 1', 8),
(125, '23-101-463-126', 'Kristy Inka Natalin', 'Banjarmasin. 11 Juli 2051', 224, 'XII UPW 1', 9),
(126, '23-101-463-127', 'Mario Cilik Budiman', 'Banjarbaru. 12 Juli 2051', 225, 'XII UPW 1', 1),
(127, '23-101-463-128', 'Mia Ardina', 'Palangkaraya. 29 Juli 2051', 226, 'XII UPW 1', 1),
(128, '23-101-463-129', 'M. Ashbahany Firdaus', 'Jawa Timur. 9 Juni 2051', 227, 'XII UPW 1', 0),
(129, '23-101-463-130', 'M. Irfany', 'Banjarmasin. 11 Juli 2052', 228, 'XII UPW 1', 1),
(130, '23-101-463-131', 'Nidya Putri Sri Wahyuni', 'Banjarbaru. 12 Juli 2052', 229, 'XII UPW 1', 1),
(131, '23-101-463-132', 'Rahmah', 'Palangkaraya. 29 Juli 2052', 230, 'XII UPW 1', 0),
(132, '23-101-463-133', 'Rahmat Syagiovanny T', 'Jawa Timur. 9 Juni 2052', 231, 'XII UPW 1', 0),
(133, '23-101-463-134', 'Riska Oktaviani', 'Banjarmasin. 11 Juli 2053', 232, 'XII UPW 1', 1),
(134, '23-101-463-135', 'Riyan Setyawan', 'Banjarbaru. 12 Juli 2053', 233, 'XII UPW 1', 0),
(135, '23-101-463-136', 'Seri Rokayah', 'Palangkaraya. 29 Juli 2053', 234, 'XII UPW 1', 1),
(136, '23-101-463-137', 'Taufik Kulrahman', 'Jawa Timur. 9 Juni 2053', 235, 'XII UPW 1', 1),
(137, '23-101-463-138', 'Tri Prasetyo', 'Banjarmasin. 11 Juli 2054', 236, 'XII UPW 1', 1),
(138, '23-101-463-139', 'Yolanda Eka F', 'Banjarbaru. 12 Juli 2054', 237, 'XII UPW 1', 1),
(139, '23-101-463-140', 'Zalia Dewi Lazuardy', 'Palangkaraya. 29 Juli 2054', 238, 'XII UPW 1', 9),
(140, '23-101-463-141', 'Aditya Irwan Maulana', 'Jawa Timur. 9 Juni 2054', 239, 'XII UPW 2', 2),
(141, '23-101-463-142', 'Agus Hengky Kurniawan', 'Banjarmasin. 11 Juli 2055', 240, 'XII UPW 2', 6),
(142, '23-101-463-143', 'Ayudea Putri Suwarno', 'Banjarbaru. 12 Juli 2055', 241, 'XII UPW 2', 5),
(143, '23-101-463-144', 'Betranio Andyka Putra', 'Palangkaraya. 29 Juli 2055', 242, 'XII UPW 2', 6),
(144, '23-101-463-145', 'Chici Nanda Anggraeni', 'Jawa Timur. 9 Juni 2055', 243, 'XII UPW 2', 8),
(145, '23-101-463-146', 'Dabim Anarwa', 'Banjarmasin. 11 Juli 2056', 244, 'XII UPW 2', 9),
(146, '23-101-463-147', 'Diah Margi Wati', 'Banjarbaru. 12 Juli 2056', 245, 'XII UPW 2', 1),
(147, '23-101-463-148', 'Fajar azhar', 'Palangkaraya. 29 Juli 2056', 246, 'XII UPW 2', 1),
(148, '23-101-463-149', 'Gilang Dharmawan', 'Jawa Timur. 9 Juni 2056', 247, 'XII UPW 2', 0),
(149, '23-101-463-150', 'Gusti Uida Nur Adha', 'Banjarmasin. 11 Juli 2057', 248, 'XII UPW 2', 1),
(150, '23-101-463-151', 'Hayaturrahman', 'Banjarbaru. 12 Juli 2057', 249, 'XII UPW 2', 1),
(151, '23-101-463-152', 'Herlin Dwinanda Putri', 'Palangkaraya. 29 Juli 2057', 250, 'XII UPW 2', 0),
(152, '23-101-463-153', 'Imam Maulana Siddiq', 'Jawa Timur. 9 Juni 2057', 251, 'XII UPW 2', 0),
(153, '23-101-463-154', 'Jonathan Maleakhy', 'Banjarmasin. 11 Juli 2058', 252, 'XII UPW 2', 1),
(154, '23-101-463-155', 'Khusnul Khotimah', 'Banjarbaru. 12 Juli 2058', 253, 'XII UPW 2', 0),
(155, '23-101-463-156', 'Kladius nero', 'Palangkaraya. 29 Juli 2058', 254, 'XII UPW 2', 1),
(156, '23-101-463-157', 'Lailatul Qomariah', 'Jawa Timur. 9 Juni 2058', 255, 'XII UPW 2', 1),
(157, '23-101-463-158', 'Mita Norhikmah', 'Banjarmasin. 11 Juli 2059', 256, 'XII UPW 2', 1),
(158, '23-101-463-159', 'M. Rizqy Maullana', 'Banjarbaru. 12 Juli 2059', 257, 'XII UPW 2', 1),
(159, '23-101-463-160', 'M. Noor Cholis', 'Palangkaraya. 29 Juli 2059', 258, 'XII UPW 2', 9),
(160, '23-101-463-161', 'M. Noor Diva ', 'Jawa Timur. 9 Juni 2059', 259, 'XII UPW 2', 2),
(161, '23-101-463-162', 'M. Iqbal Thoriq', 'Banjarmasin. 11 Juli 2060', 260, 'XII UPW 2', 6),
(162, '23-101-463-163', 'Nico Saputra', 'Banjarbaru. 12 Juli 2060', 261, 'XII UPW 2', 5),
(163, '23-101-463-164', 'Qury Alvini ', 'Palangkaraya. 29 Juli 2060', 262, 'XII UPW 2', 6),
(164, '23-101-463-165', 'Ratu Bulkis', 'Jawa Timur. 9 Juni 2060', 263, 'XII UPW 2', 8),
(165, '23-101-463-166', 'Restu Purwandi', 'Banjarmasin. 11 Juli 2061', 264, 'XII UPW 2', 9),
(166, '23-101-463-167', 'Riki Fauzi', 'Banjarbaru. 12 Juli 2061', 265, 'XII UPW 2', 1),
(167, '23-101-463-168', 'Santi Prestia', 'Palangkaraya. 29 Juli 2061', 266, 'XII UPW 2', 1),
(168, '23-101-463-169', 'Syafira Putri Kalismala', 'Jawa Timur. 9 Juni 2061', 267, 'XII UPW 2', 0),
(169, '23-101-463-170', 'Tata Selvia', 'Banjarmasin. 11 Juli 2062', 268, 'XII UPW 2', 1),
(170, '23-101-463-171', 'Teguh Febrianto', 'Banjarbaru. 12 Juli 2062', 269, 'XII UPW 2', 1),
(171, '23-101-463-172', 'Yosy Rahmansyah Putri ', 'Palangkaraya. 29 Juli 2062', 270, 'XII UPW 2', 0),
(172, '23-101-463-173', 'Arditia Oktafianti', 'Jawa Timur. 9 Juni 2062', 271, 'XII TKKR 2', 0),
(173, '23-101-463-174', 'Ayu Maya Shafira', 'Banjarmasin. 11 Juli 2063', 272, 'XII TKKR 2', 1),
(174, '23-101-463-175', 'Dwi Nurahayu Safitri', 'Banjarbaru. 12 Juli 2063', 273, 'XII TKKR 3', 0),
(175, '23-101-463-176', 'Emily Liswarty', 'Palangkaraya. 29 Juli 2063', 274, 'XII TKKR 2', 1),
(176, '23-101-463-177', 'Fia Valentina', 'Jawa Timur. 9 Juni 2063', 275, 'XII TKKR 2', 1),
(177, '23-101-463-178', 'Hamidah', 'Banjarmasin. 11 Juli 2064', 276, 'XII TKKR 2', 1),
(178, '23-101-463-179', 'Heldayati', 'Banjarbaru. 12 Juli 2064', 277, 'XII TKKR 2', 1),
(179, '23-101-463-180', 'Ida Rahmadani', 'Palangkaraya. 29 Juli 2064', 278, 'XII TKKR 2', 9),
(180, '23-101-463-181', 'Ira Noviantini', 'Jawa Timur. 9 Juni 2064', 279, 'XII TKKR 2', 2),
(181, '23-101-463-182', 'Lala', 'Banjarmasin. 11 Juli 2065', 280, 'XII TKKR 2', 6),
(182, '23-101-463-183', 'Lastria Natalia', 'Banjarbaru. 12 Juli 2065', 281, 'XII TKKR 2', 5),
(183, '23-101-463-184', 'Lili Jumiati', 'Palangkaraya. 29 Juli 2065', 282, 'XII TKKR 2', 6),
(184, '23-101-463-185', 'Meisya Maulida Putri', 'Jawa Timur. 9 Juni 2065', 283, 'XII TKKR 2', 8),
(185, '23-101-463-186', 'Mila Permata Sari', 'Banjarmasin. 11 Juli 2066', 284, 'XII TKKR 2', 9),
(186, '23-101-463-187', 'Nabila Tri Amanda', 'Banjarbaru. 12 Juli 2066', 285, 'XII TKKR 2', 1),
(187, '23-101-463-188', 'Nadya Anugrahni', 'Palangkaraya. 29 Juli 2066', 286, 'XII TKKR 2', 1),
(188, '23-101-463-189', 'Nuurliyana', 'Jawa Timur. 9 Juni 2066', 287, 'XII TKKR 2', 0),
(189, '23-101-463-190', 'Rifka Kristiani', 'Banjarmasin. 11 Juli 2067', 288, 'XII TKKR 2', 1),
(190, '23-101-463-191', 'Rikha Rahma Artika', 'Banjarbaru. 12 Juli 2067', 289, 'XII TKKR 2', 1),
(191, '23-101-463-192', 'Santiah', 'Palangkaraya. 29 Juli 2067', 290, 'XII TKKR 2', 0),
(192, '23-101-463-193', 'Sonia Aridha Putri', 'Jawa Timur. 9 Juni 2067', 291, 'XII TKKR 2', 0),
(193, '23-101-463-194', 'Sisca Nathania ', 'Banjarmasin. 11 Juli 2068', 292, 'XII TKKR 2', 1),
(194, '23-101-463-195', 'Tarisa Natalia', 'Banjarbaru. 12 Juli 2068', 293, 'XII TKKR 2', 0),
(195, '23-101-463-196', 'Yohana', 'Palangkaraya. 29 Juli 2068', 294, 'XII TKKR 2', 1),
(196, '23-101-463-197', 'Zaimah', 'Jawa Timur. 9 Juni 2068', 295, 'XII TKKR 2', 1),
(197, '23-101-463-198', 'Vita Nurkhasanah', 'Banjarmasin. 11 Juli 2069', 296, 'XII TKKR 2', 1),
(198, '23-101-463-199', 'Abi Yanor', 'Banjarbaru. 12 Juli 2069', 297, 'XII PH 1', 1),
(199, '23-101-463-200', 'Aida', 'Palangkaraya. 29 Juli 2069', 298, 'XII PH 1', 9),
(200, '23-101-463-201', 'Aisah', 'Jawa Timur. 9 Juni 2069', 299, 'XII PH 1', 2),
(201, '23-101-463-202', 'Alif Nur Fahmi P', 'Banjarmasin. 11 Juli 2070', 300, 'XII PH 1', 6),
(202, '23-101-463-203', 'Andika Nurdin ', 'Banjarbaru. 12 Juli 2070', 301, 'XII PH 1', 5),
(203, '23-101-463-204', 'Erna Yuliani', 'Palangkaraya. 29 Juli 2070', 302, 'XII PH 1', 6),
(204, '23-101-463-205', 'Elin Setiowati', 'Jawa Timur. 9 Juni 2070', 303, 'XII PH 1', 8),
(205, '23-101-463-206', 'Ifrida Ali', 'Banjarmasin. 11 Juli 2071', 304, 'XII PH 1', 9),
(206, '23-101-463-207', 'Irham Maulana', 'Banjarbaru. 12 Juli 2071', 305, 'XII PH 1', 1),
(207, '23-101-463-208', ' Kritin Tamara Maharani', 'Palangkaraya. 29 Juli 2071', 306, 'XII PH 1', 1),
(208, '23-101-463-209', 'Malavya', 'Jawa Timur. 9 Juni 2071', 307, 'XII PH 1', 0),
(209, '23-101-463-210', 'Mario Dory Putra K', 'Banjarmasin. 11 Juli 2072', 308, 'XII PH 1', 1),
(210, '23-101-463-211', 'Muhammad Alief N', 'Banjarbaru. 12 Juli 2072', 309, 'XII PH 1', 1),
(211, '23-101-463-212', 'Muhammad Hamdani', 'Palangkaraya. 29 Juli 2072', 310, 'XII PH 1', 0),
(212, '23-101-463-213', 'Niluh Putu Indriani', 'Jawa Timur. 9 Juni 2072', 311, 'XII PH 1', 0),
(213, '23-101-463-214', 'Nina Karisma', 'Banjarmasin. 11 Juli 2073', 312, 'XII PH 1', 1),
(214, '23-101-463-215', 'Nitami Nurullita', 'Banjarbaru. 12 Juli 2073', 313, 'XII PH 1', 0),
(215, '23-101-463-216', 'Nurul Huda', 'Palangkaraya. 29 Juli 2073', 314, 'XII PH 1', 1),
(216, '23-101-463-217', 'Rahmida Fitriani', 'Jawa Timur. 9 Juni 2073', 315, 'XII PH 1', 1),
(217, '23-101-463-218', 'Riya Hidayati', 'Banjarmasin. 11 Juli 2074', 316, 'XII PH 1', 1),
(218, '23-101-463-219', 'Rizaldi Rahman ', 'Banjarbaru. 12 Juli 2074', 317, 'XII PH 1', 1),
(219, '23-101-463-220', 'Serly Oktalia', 'Palangkaraya. 29 Juli 2074', 318, 'XII PH 1', 9),
(220, '23-101-463-221', 'Siti Fatimah', 'Jawa Timur. 9 Juni 2074', 319, 'XII PH 1', 2),
(221, '23-101-463-222', 'Vindy Liana Safitri', 'Banjarmasin. 11 Juli 2075', 320, 'XII PH 1', 6),
(222, '23-101-463-224', 'ABDI NOOR KHALIL', 'Palangkaraya. 29 Juli 2075', 322, 'XII PH 2', 6),
(223, '23-101-463-225', 'ANANDA NANING KUMILALA', 'Jawa Timur. 9 Juni 2075', 323, 'XII PH 2', 8),
(224, '23-101-463-226', 'ARMIYAH NABILA', 'Banjarmasin. 11 Juli 2076', 324, 'XII PH 2', 9),
(225, '23-101-463-227', 'BAYU SAPUTRA', 'Banjarbaru. 12 Juli 2076', 325, 'XII PH 2', 1),
(226, '23-101-463-228', 'BERNADUS LEO DINDES', 'Palangkaraya. 29 Juli 2076', 326, 'XII PH 2', 1),
(227, '23-101-463-229', 'CAHAYA MAULIDA', 'Jawa Timur. 9 Juni 2076', 327, 'XII PH 2', 0),
(228, '23-101-463-230', 'DIKY SAPUTRA', 'Banjarmasin. 11 Juli 2077', 328, 'XII PH 2', 1),
(229, '23-101-463-231', 'DODON', 'Banjarbaru. 12 Juli 2077', 329, 'XII PH 2', 1),
(230, '23-101-463-232', 'DWI RAHMAWATI', 'Palangkaraya. 29 Juli 2077', 330, 'XII PH 2', 0),
(231, '23-101-463-233', 'FRILLA ANGELITHA', 'Jawa Timur. 9 Juni 2077', 331, 'XII PH 2', 0),
(232, '23-101-463-234', 'HENI TRI WULANDARI', 'Banjarmasin. 11 Juli 2078', 332, 'XII PH 2', 1),
(233, '23-101-463-235', 'HUSNA SALEHA', 'Banjarbaru. 12 Juli 2078', 333, 'XII PH 2', 0),
(234, '23-101-463-236', 'INDANA ZULFA', 'Palangkaraya. 29 Juli 2078', 334, 'XII PH 2', 1),
(235, '23-101-463-237', 'MUHAMMAD REZA SULAIMAN', 'Jawa Timur. 9 Juni 2078', 335, 'XII PH 2', 1),
(236, '23-101-463-238', 'MOSES LEONARDO', 'Banjarmasin. 11 Juli 2079', 336, 'XII PH 2', 1),
(237, '23-101-463-239', 'NATALIA DEWITA', 'Banjarbaru. 12 Juli 2079', 337, 'XII PH 2', 1),
(238, '23-101-463-240', 'NANDA ANGGITA', 'Palangkaraya. 29 Juli 2079', 338, 'XII PH 2', 9),
(239, '23-101-463-241', 'NOVUSA ALIANTIE', 'Jawa Timur. 9 Juni 2079', 339, 'XII PH 2', 2),
(240, '23-101-463-242', 'OKTAVIA NUR PATIMAH', 'Banjarmasin. 11 Juli 2080', 340, 'XII PH 2', 6),
(241, '23-101-463-243', 'OKTAVIANI SAPUTRI', 'Banjarbaru. 12 Juli 2080', 341, 'XII PH 2', 5),
(242, '23-101-463-244', 'ROSA DIANA', 'Palangkaraya. 29 Juli 2080', 342, 'XII PH 2', 6),
(243, '23-101-463-245', 'SANJAYA ', 'Jawa Timur. 9 Juni 2080', 343, 'XII PH 2', 8),
(244, '23-101-463-246', 'SAPRUDIN', 'Banjarmasin. 11 Juli 2081', 344, 'XII PH 2', 9),
(245, '23-101-463-247', 'SITI AMANAH', 'Banjarbaru. 12 Juli 2081', 345, 'XII PH 2', 1),
(246, '23-101-463-248', 'Ahmad Arifin', 'Palangkaraya. 29 Juli 2081', 346, 'XII Boga 1', 1),
(247, '23-101-463-249', 'Alifia Rahma', 'Jawa Timur. 9 Juni 2081', 347, 'XII Boga 1', 0),
(248, '23-101-463-250', 'Ami', 'Banjarmasin. 11 Juli 2082', 348, 'XII Boga 1', 1),
(249, '23-101-463-251', 'Anisa Damayanti', 'Banjarbaru. 12 Juli 2082', 349, 'XII Boga 1', 1),
(250, '23-101-463-252', 'Cindy Nurullah', 'Palangkaraya. 29 Juli 2082', 350, 'XII Boga 1', 0),
(251, '23-101-463-253', 'Cynthia Bregit Z.G', 'Jawa Timur. 9 Juni 2082', 351, 'XII Boga 1', 0),
(252, '23-101-463-254', 'Dessy', 'Banjarmasin. 11 Juli 2083', 352, 'XII Boga 1', 1),
(253, '23-101-463-255', 'Dewi Aprilia', 'Banjarbaru. 12 Juli 2083', 353, 'XII Boga 1', 0),
(254, '23-101-463-256', 'Dhea Azima Putri', 'Palangkaraya. 29 Juli 2083', 354, 'XII Boga 1', 1),
(255, '23-101-463-257', 'Dina Sepryana', 'Jawa Timur. 9 Juni 2083', 355, 'XII Boga 1', 1),
(256, '23-101-463-258', 'Elly Agustri Wahyu', 'Banjarmasin. 11 Juli 2084', 356, 'XII Boga 1', 1),
(257, '23-101-463-259', 'Endaryanto Pandu P.', 'Banjarbaru. 12 Juli 2084', 357, 'XII Boga 1', 1),
(258, '23-101-463-260', 'Faysa Aulia', 'Palangkaraya. 29 Juli 2084', 358, 'XII Boga 1', 9),
(259, '23-101-463-261', 'Febni Pungky F.', 'Jawa Timur. 9 Juni 2084', 359, 'XII Boga 1', 2),
(260, '23-101-463-262', 'Febriani Ella K.', 'Banjarmasin. 11 Juli 2085', 360, 'XII Boga 1', 6),
(261, '23-101-463-263', 'Hendrik Suryadi', 'Banjarbaru. 12 Juli 2085', 361, 'XII Boga 1', 5),
(262, '23-101-463-264', 'Irawati', 'Palangkaraya. 29 Juli 2085', 362, 'XII Boga 1', 6),
(263, '23-101-463-265', 'Iva Nurjanah', 'Jawa Timur. 9 Juni 2085', 363, 'XII Boga 1', 8),
(264, '23-101-463-266', 'Jessica Nathalia', 'Banjarmasin. 11 Juli 2086', 364, 'XII Boga 1', 9),
(265, '23-101-463-267', 'Karlina Agustin', 'Banjarbaru. 12 Juli 2086', 365, 'XII Boga 1', 1),
(266, '23-101-463-268', 'Khairunnisa', 'Palangkaraya. 29 Juli 2086', 366, 'XII Boga 1', 1),
(267, '23-101-463-269', 'Miranda', 'Jawa Timur. 9 Juni 2086', 367, 'XII Boga 1', 0),
(268, '23-101-463-270', 'Misnadia Octaviani', 'Banjarmasin. 11 Juli 2087', 368, 'XII Boga 1', 1),
(269, '23-101-463-271', 'Muhammd Aldi', 'Banjarbaru. 12 Juli 2087', 369, 'XII Boga 1', 1),
(270, '23-101-463-272', 'Muhammad Ashraf', 'Palangkaraya. 29 Juli 2087', 370, 'XII Boga 1', 0),
(271, '23-101-463-273', 'Muhammad Maulana R.', 'Jawa Timur. 9 Juni 2087', 371, 'XII Boga 1', 0),
(272, '23-101-463-274', 'Rachmad Nur F.', 'Banjarmasin. 11 Juli 2088', 372, 'XII Boga 1', 1),
(273, '23-101-463-275', 'Renita Karina', 'Banjarbaru. 12 Juli 2088', 373, 'XII Boga 1', 0),
(274, '23-101-463-276', 'Resti Indra M.N', 'Palangkaraya. 29 Juli 2088', 374, 'XII Boga 1', 1),
(275, '23-101-463-277', 'Risma Maulidina', 'Jawa Timur. 9 Juni 2088', 375, 'XII Boga 1', 1),
(276, '23-101-463-278', 'Saidah', 'Banjarmasin. 11 Juli 2089', 376, 'XII Boga 1', 1),
(277, '23-101-463-279', 'Silvia Noviana', 'Banjarbaru. 12 Juli 2089', 377, 'XII Boga 1', 1),
(278, '23-101-463-280', 'Taupik Kiemas', 'Palangkaraya. 29 Juli 2089', 378, 'XII Boga 1', 9),
(279, '23-101-463-281', 'Teresya Yunita Putri', 'Jawa Timur. 9 Juni 2089', 379, 'XII Boga 1', 2),
(280, '23-101-463-282', 'Aditya permana', 'Banjarmasin. 11 Juli 2090', 380, 'XII BOGA 2', 6),
(281, '23-101-463-283', 'Alvianita', 'Banjarbaru. 12 Juli 2090', 381, 'XII BOGA 2', 5),
(282, '23-101-463-284', 'Annisa Nur Sephia', 'Palangkaraya. 29 Juli 2090', 382, 'XII BOGA 2', 6),
(283, '23-101-463-285', 'Aurelia Adwa', 'Jawa Timur. 9 Juni 2090', 383, 'XII BOGA 2', 8),
(284, '23-101-463-286', 'Avivah', 'Banjarmasin. 11 Juli 2091', 384, 'XII BOGA 2', 9),
(285, '23-101-463-287', 'Chamim Dwi P.P', 'Banjarbaru. 12 Juli 2091', 385, 'XII BOGA 2', 6),
(286, '23-101-463-288', 'Devi Noviani', 'Palangkaraya. 29 Juli 2091', 386, 'XII BOGA 2', 5),
(287, '23-101-463-289', 'Dhea Rahmadayanti  A', 'Jawa Timur. 9 Juni 2091', 387, 'XII BOGA 2', 6),
(288, '23-101-463-290', 'Dwi Aulianti', 'Banjarmasin. 11 Juli 2092', 388, 'XII BOGA 2', 8),
(289, '23-101-463-291', 'Dwi Wahyuni', 'Banjarbaru. 12 Juli 2092', 389, 'XII BOGA 2', 9),
(290, '23-101-463-292', 'Eka Resting Maharani', 'Palangkaraya. 29 Juli 2092', 390, 'XII BOGA 2', 1),
(291, '23-101-463-293', 'Eliana Mega D', 'Jawa Timur. 9 Juni 2092', 391, 'XII BOGA 2', 1),
(292, '23-101-463-294', 'Febri Fajriati', 'Banjarmasin. 11 Juli 2093', 392, 'XII BOGA 2', 0),
(293, '23-101-463-295', 'Fitri Anggreyana', 'Banjarbaru. 12 Juli 2093', 393, 'XII BOGA 2', 1),
(294, '23-101-463-296', 'Gramyllo Maleh P.L', 'Palangkaraya. 29 Juli 2093', 394, 'XII BOGA 2', 6),
(295, '23-101-463-297', 'Jazilatul Iffa', 'Jawa Timur. 9 Juni 2093', 395, 'XII BOGA 2', 5),
(296, '23-101-463-298', 'Mia Norsuhada', 'Banjarmasin. 11 Juli 2094', 396, 'XII BOGA 2', 6),
(297, '23-101-463-299', 'Micky Dwi Guna', 'Banjarbaru. 12 Juli 2094', 397, 'XII BOGA 2', 8),
(298, '23-101-463-300', 'M. Adrian Maulana', 'Palangkaraya. 29 Juli 2094', 398, 'XII BOGA 2', 9),
(299, '23-101-463-301', 'M. Rizaldi', 'Jawa Timur. 9 Juni 2094', 399, 'XII BOGA 2', 1),
(300, '23-101-463-302', 'Nadia Puspita Sari', 'Banjarmasin. 11 Juli 2095', 400, 'XII BOGA 2', 1),
(301, '23-101-463-303', 'Nadia Rapinah', 'Banjarbaru. 12 Juli 2095', 401, 'XII BOGA 2', 0),
(302, '23-101-463-304', 'Nenok Swastika', 'Palangkaraya. 29 Juli 2095', 402, 'XII BOGA 2', 1),
(303, '23-101-463-305', 'Noni Anggraini', 'Jawa Timur. 9 Juni 2095', 403, 'XII BOGA 2', 1),
(304, '23-101-463-306', 'Olivia Ayu Anjelika', 'Banjarmasin. 11 Juli 2096', 404, 'XII BOGA 2', 0),
(305, '23-101-463-307', 'Reza Yulistio', 'Banjarbaru. 12 Juli 2096', 405, 'XII BOGA 2', 0),
(306, '23-101-463-308', 'Rika Damayanti', 'Palangkaraya. 29 Juli 2096', 406, 'XII BOGA 2', 1),
(307, '23-101-463-309', 'Rio Baharudin', 'Jawa Timur. 9 Juni 2096', 407, 'XII BOGA 2', 0),
(308, '23-101-463-310', 'Selpiya Muliyana', 'Banjarmasin. 11 Juli 2097', 408, 'XII BOGA 2', 1),
(309, '23-101-463-311', 'Suci Fitria Ningsih', 'Banjarbaru. 12 Juli 2097', 409, 'XII BOGA 2', 1),
(310, '23-101-463-312', 'Suningsih', 'Palangkaraya. 29 Juli 2097', 410, 'XII BOGA 2', 1),
(311, '23-101-463-313', 'Yulia Islami', 'Jawa Timur. 9 Juni 2097', 411, 'XII BOGA 2', 1),
(312, '23-101-463-314', 'Zarzani Zaidan', 'Banjarmasin. 11 Juli 2098', 412, 'XII BOGA 2', 1),
(318, '23-101-463-300', 'sssss', 'sssssaasa', 8799, 'ro', 2);

-- --------------------------------------------------------

--
-- Table structure for table `un_user`
--

CREATE TABLE `un_user` (
  `UID` tinyint(4) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `un_user`
--

INSERT INTO `un_user` (`UID`, `username`, `password`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3'),
(2, 'arman', '66059a527018b32e4597dd27574929f6'),
(3, 'ali', '202cb962ac59075b964b07152d234b70'),
(4, 'arj', 'eb53f5fe43e61e0048c2d74ff121d43e'),
(5, 'admin123', '202cb962ac59075b964b07152d234b70');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `un_konfigurasi`
--
ALTER TABLE `un_konfigurasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `un_siswa`
--
ALTER TABLE `un_siswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `un_user`
--
ALTER TABLE `un_user`
  ADD PRIMARY KEY (`UID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `un_konfigurasi`
--
ALTER TABLE `un_konfigurasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `un_siswa`
--
ALTER TABLE `un_siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=320;

--
-- AUTO_INCREMENT for table `un_user`
--
ALTER TABLE `un_user`
  MODIFY `UID` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
