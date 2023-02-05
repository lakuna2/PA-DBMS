-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 05, 2023 at 06:34 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `padbms`
--

-- --------------------------------------------------------

--
-- Table structure for table `dokter`
--

CREATE TABLE `dokter` (
  `id_dokter` int(6) NOT NULL,
  `nama_dokter` varchar(50) DEFAULT NULL,
  `gender` varchar(9) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `no_telp` char(13) DEFAULT NULL,
  `spesialis` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dokter`
--

INSERT INTO `dokter` (`id_dokter`, `nama_dokter`, `gender`, `alamat`, `no_telp`, `spesialis`) VALUES
(114007, 'dr. Wanda Prawesti, Sp.BP', 'P', 'Jl. S.Parman', '085723410932', 'Bedah Plastik'),
(114016, 'dr. Chandra Hendresta, Sp.MK', 'L', 'Jl. Camar No.72', '085721084728', 'Mikrobiologi Klinik'),
(114108, 'dr. Ardiansyah, Sp.F', 'L', 'Jl. P.Suryanata', '082190872345', 'Forensik'),
(114117, 'dr. Rama Ariski, Sp.PA', 'L', 'Jl. M.Yamin No.12', '081258360935', 'Patologi Anatomik'),
(114209, 'dr. Maria Dwi, Sp.G', 'P', 'Jl. PM Noor', '082109784562', 'Gizi'),
(114218, 'dr. Steven Arya, Sp.KO', 'L', 'Jl. Marsda A Saleh No.40', '081247294753', 'Kedokteran Olahraga'),
(114300, 'dr. Rio Anantra, Sp.P', 'L', 'Jl. Merdeka 7', '081251095632', 'Paru-paru'),
(114319, 'dr. Alzaidani Prasetya, Sp.FK', 'L', 'Jl. Lambung Mangkurat', '082164810374', 'Farmakologi Klinik'),
(114402, 'dr. Anita, Sp.A', 'P', 'Jl. Perjuangan', '082150235011', 'Anak'),
(114410, 'dr. Rahman, Sp.And', 'L', 'Jl. Maduningrat No.21', '082135286537', 'Andrologi'),
(114411, 'dr. Patricia Anna, Sp.Rad', 'P', 'Jl. Wahab Sabirin', '081230985431', 'Radiologi'),
(114501, 'dr. Ananda Pratama, Sp.B', 'L', 'Jl. Juanda No.8', '081254524521', 'Bedah'),
(114512, 'dr. Risky Fauzan, Sp.M', 'L', 'Jl. Perjuangan Dalam', '082198384921', 'Mata'),
(114603, 'dr. Dinda Rahma, Sp.PD', 'P', 'Jl. Pramuka', '081230215069', 'Penyakit Dalam'),
(114704, 'dr. Andhika, Sp.AK', 'L', 'Jl. Perjuangan No.7', '081256890823', 'Akupuntur Medik'),
(114714, 'dr. Naftali Putri, Sp.An', 'P', 'Jl. Kuaro No.23', '085732986743', 'Anestesi'),
(114805, 'dr. Raya Fadilla, Sp.BA', 'P', 'Jl. Kartini', '081250234521', 'Bedah Anak'),
(114814, 'dr. Yoshua, Sp.JT', 'L', 'Jl. Panjaitan', '081298216743', 'Jantung'),
(114906, 'dr. Hendrawan Putra, Sp.BS', 'L', 'Jl. Soetomo', '082189321001', 'Bedah Saraf'),
(114915, 'dr. Ulfa Fitriani, Sp.U', 'P', 'Jl. Cendana', '082178340214', 'Urologi');

-- --------------------------------------------------------

--
-- Table structure for table `kamar`
--

CREATE TABLE `kamar` (
  `no_kamar` int(3) NOT NULL,
  `nama_kamar` varchar(15) DEFAULT NULL,
  `jenis_kamar` varchar(15) DEFAULT NULL,
  `fasilitas` varchar(100) DEFAULT NULL,
  `id_pasien` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kamar`
--

INSERT INTO `kamar` (`no_kamar`, `nama_kamar`, `jenis_kamar`, `fasilitas`, `id_pasien`) VALUES
(101, 'Amarilis', 'Pres Suite I', 'AC, 2 Bed, Kamar Mandi, Kulkas, Smart TV, 2 Sofabed, Meja, Kursi, Ruang Keluarga, Dispenser, Lemari', 11),
(102, 'Marigold', 'Pres Suite II', 'AC, 1 Bed, Kamar Mandi, Kulkas, Smart TV, 1 Sofabed, Meja, Kursi, Ruang Keluarga, Dispenser, Lemari', 2122),
(103, 'Lily', 'Pres Suite III', 'AC, 1 Bed, Kamar Mandi, Kulkas, Smart TV, 1 Sofabed, Meja, Kursi, Dispenser, Lemari', 1120),
(105, 'Camelia', 'Suite Room I', 'AC, 2 Bed, Kamar Mandi, Kulkas, Smart TV, 2 Sofa, Meja, Kursi, Dispenser, Lemari', 2221),
(106, 'Gardenia', 'Suite Room II', 'AC, 1 Bed, Kamar Mandi, Kulkas, Smart TV, 2 Sofa, Meja, Kursi, Dispenser, Lemari', 2201),
(110, 'Bougenville', 'Suite Room III', 'AC, 1 Bed, Kamar Mandi, Kulkas, Smart TV, 1 Sofa, Meja, Kursi, Dispenser, Lemari', 2121),
(111, 'Melati', 'Junior Room I', 'AC, 1 Bed, Kamar Mandi, Kulkas, LED TV, 1 Sofa, Meja, Kursi, Dispenser, Lemari', 2122),
(115, 'Kamboja', 'Junior Room II', 'AC, 1 Bed, Kamar Mandi, Kulkas, LED TV, 1 Sofa, Meja, Kursi, Dispenser, Lemari', 2101),
(120, 'Kosmos', 'Junior Room III', 'AC, 1 Bed, Kamar Mandi, Kulkas, LED TV, 1 Sofa, Meja, Kursi, Dispenser, Lemari', 2011),
(125, 'Anggrek', 'VVIP A', 'AC, 1 Bed, Kamar Mandi, Kulkas, LED TV, 1 set Sofa + Meja, Dispenser, Lemari', 2001),
(130, 'Lavender', 'VVIP B', 'AC, 1 Bed, Kamar Mandi, Kulkas, LED TV, 1 set Sofa + Meja, Dispenser, Lemari', 1212),
(135, 'Lilac', 'VVIP C', 'AC, 1 Bed, Kamar Mandi, Kulkas, LED TV, 1 set Sofa + Meja, Dispenser, Lemari', 12),
(140, 'Mawar', 'VIP A', 'AC, 1 Bed, Kamar Mandi, Kulkas, TV, Meja, Kursi, Dispenser, Lemari', 100),
(145, 'Dandelion', 'VIP B', 'AC, 1 Bed, Kamar Mandi, Kulkas, TV, Meja, Kursi, Dispenser, Lemari', 101),
(150, 'Chamomile', 'VIP C', 'AC, 1 Bed, Kamar Mandi, Kulkas, TV, Meja, Kursi, Dispenser, Lemari', 1002),
(160, 'Daisy', 'Kelas I', 'AC, 1 Bed, Kamar Mandi, Kulkas, TV, Meja, Kursi', 1001),
(175, 'Azalea', 'Kelas II', 'AC, 1 Bed, Kamar Mandi, TV, Meja, Kursi', 1010),
(180, 'Alyssum', 'Kelas III', 'AC, 1 Bed, Kamar Mandi, TV, Meja, Kursi', 1020),
(195, 'Calendula', 'Kelas IV', 'AC, 1 Bed, Kamar Mandi, TV, Meja, Kursi', 1122),
(200, 'Seruni', 'Kelas V', 'AC, 1 Bed, Kamar Mandi, TV, Meja, Kursi', 1100);

-- --------------------------------------------------------

--
-- Table structure for table `obat`
--

CREATE TABLE `obat` (
  `kode_obat` int(4) NOT NULL,
  `nama_obat` varchar(30) DEFAULT NULL,
  `rentang_usia` varchar(30) DEFAULT NULL,
  `kadaluwarsa` date DEFAULT NULL,
  `harga` int(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `obat`
--

INSERT INTO `obat` (`kode_obat`, `nama_obat`, `rentang_usia`, `kadaluwarsa`, `harga`) VALUES
(5001, 'Metformin', '> 10 Tahun', '2025-01-30', 60000),
(5002, 'Zolpidem', '> 18 Tahun', '2026-11-07', 100000),
(5003, 'Diovan', '> 13 Tahun', '2024-06-16', 136000),
(5004, 'Clonazepam', '> 12 Tahun', '2025-12-04', 35000),
(5005, 'Dopamin', '> 20 Tahun', '2028-03-17', 200000),
(5006, 'Fexofenadine', '> 12 Tahun', '2026-02-22', 220000),
(5007, 'Hydrocodone', '> 18 Tahun', '2023-09-13', 35000),
(5009, 'Singulair', '> 5 Tahun', '2024-08-25', 40000),
(5012, 'Ibuprofen', '> 2 Tahun', '2026-11-09', 55000),
(5014, 'Amoxicillin', '> 10 Tahun', '2025-05-15', 17500),
(5015, 'Gabapentin', '> 3 Tahun', '2027-08-16', 76000),
(5016, 'Efexor', '> 20 Tahun', '2026-05-12', 245000),
(5019, 'Antasida', '> 7 Tahun', '2028-11-26', 25000),
(5024, 'Lipitor', '> 10 Tahun', '2025-09-10', 32000),
(5039, 'Warfarin', '> 20 Tahun', '2024-03-23', 175000),
(5040, 'Morfin', '> 6 Tahun', '2028-09-15', 55000),
(5080, 'Paracetamol', '> 6 Tahun', '2027-12-10', 20000),
(5096, 'Nexium', '> 15 Tahun', '2026-08-18', 180000),
(5098, 'Alleron', '> 10 Tahun', '2027-08-22', 26000),
(5099, 'Oralit', '> 2 Tahun', '2025-07-31', 23000);

-- --------------------------------------------------------

--
-- Table structure for table `pasien`
--

CREATE TABLE `pasien` (
  `id_pasien` int(4) NOT NULL,
  `nama` char(30) DEFAULT NULL,
  `alamat` varchar(30) DEFAULT NULL,
  `no_telp` varchar(13) DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  `usia` int(3) DEFAULT NULL,
  `id_dokter` int(6) DEFAULT NULL,
  `id_perawat` int(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pasien`
--

INSERT INTO `pasien` (`id_pasien`, `nama`, `alamat`, `no_telp`, `gender`, `usia`, `id_dokter`, `id_perawat`) VALUES
(11, 'Fikri', 'Jln. Juanda No. 50', '081325452545', 'L', 18, 114007, 1101),
(12, 'Riyan', 'Gg. Perjuangan No. 102', '082154558555', 'L', 26, 114016, 1109),
(100, 'Fadhil', 'Gg. Perjuangan No. 110', '082217198886', 'L', 30, 114319, 1467),
(101, 'Bayu', 'Jln. Cempaka No. 01', '081254546969', 'L', 35, 114501, 1124),
(1001, 'Nanda', 'Jln. Ketapang No. 90', '081112312312', 'P', 30, 114108, 1222),
(1002, 'Ahmad', 'Jln. Selamat No. 55', '085252651231', 'L', 23, 114016, 1219),
(1010, 'Ari', 'Jln. Juanda No. 12', '082212548526', 'L', 20, 114603, 1345),
(1020, 'Dika', 'Gg. Buntu No. 103', '08521112312', 'L', 25, 114906, 1243),
(1021, 'Bastian', 'Jln. Ketapang No. 121', '081346515987', 'L', 20, 114209, 1145),
(1100, 'Chika', 'Jln. Pramuka No. 22', '085269874754', 'P', 28, 114117, 1231),
(1120, 'Anggi', 'Jln. Sastra No. 44', '08221865811', 'P', 29, 114300, 1109),
(1122, 'Dinda', 'Jln. Selamat No. 02', '082212457889', 'P', 35, 114300, 1234),
(1212, 'Budi', 'Jln. Berkah No. 08', '082154879898', 'L', 25, 114209, 1265),
(2001, 'Dewi', 'Jln. Mujur Jaya No. 55', '082154989663', 'P', 34, 114501, 1333),
(2011, 'Fani', 'Jln. Selamat No. 34', '085225569999', 'P', 28, 114714, 1219),
(2101, 'Ema', 'Jln. Ujung Kulon No. 13', '085632563256', 'P', 30, 114410, 1222),
(2121, 'Eka', 'Jln. Makmur No. 108', '082219176666', 'P', 23, 114512, 1255),
(2122, 'Chitanda', 'Jln. Sastra No. 24', '082211223344', 'P', 18, 114915, 1287),
(2201, 'Amel', 'Jln. Rambutan No. 56', '082145255221', 'P', 30, 114814, 1109),
(2221, 'Dimas', 'Jln. Bakti Jaya No. 122', '081346798512', 'L', 30, 114300, 1187);

-- --------------------------------------------------------

--
-- Table structure for table `perawat`
--

CREATE TABLE `perawat` (
  `id_perawat` int(6) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `gender` varchar(1) NOT NULL,
  `alamat` varchar(30) NOT NULL,
  `no_telepon` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `perawat`
--

INSERT INTO `perawat` (`id_perawat`, `nama`, `gender`, `alamat`, `no_telepon`) VALUES
(1101, 'Anisa Rahma', 'P', 'Jl. Perjuangan 7, Jakarta', '082213456578'),
(1109, 'Rahmad Hidayat', 'L', 'Jl. Ahmad Yani, Semarang', '081234231565'),
(1124, 'Anita', 'P', 'Jl. Merdeka 6, Surabaya', '081254365234'),
(1143, 'Roni Syahputra', 'L', 'Jl. Kota Baru, Tangerang', '081234546789'),
(1145, 'Lintang Galang', 'L', 'Jl. Sentosa, Depok', '081245432132'),
(1187, 'Maudy Larasati', 'P', 'Jl. Kota Baru, Tangerang', '081254346789'),
(1219, 'Dewi Indah Sari', 'P', 'Jl. Terobosan Baru, Depok', '081534768529'),
(1222, 'Ariantika', 'P', 'Jl. Merdeka 6, Surabaya', '081234543212'),
(1231, 'Mayden Gwennesa', 'P', 'Jl. Ahmad Yani, Semarang', '082134542314'),
(1234, 'Mulan Hamidah', 'P', 'Jl. Kota Baru, Tangerang', '081234251652'),
(1243, 'Doni Ferdiansyah', 'L', 'Jl. Sukamaju, Jakarta', '083142536453'),
(1255, 'Nando Syahputra', 'L', 'Jl. Ahmad Yani, Semarang', '085342311234'),
(1256, 'Melisa Stefani Putri', 'P', 'Jl. Merdeka 6, Surabaya', '081243567876'),
(1265, 'Rhea Maryati', 'P', 'Jl. Ahmad Yani, Semarang', '081345342567'),
(1287, 'Lentera Mila', 'P', 'Jl. Pramuka 8, Jakarta', '081254234565'),
(1326, 'Putra Suaka Tirta', 'L', 'Jl. Kenanga, Depok', '081523431243'),
(1333, 'Tino Sebastian', 'L', 'Jl. Merdeka 6, Surabaya', '081234231232'),
(1342, 'Prita No Limit', 'P', 'Jl. Kebumen Indah, Tangerang', '081234235643'),
(1345, 'Dhea Arsinta', 'P', 'Jl. Merdeka 6, Surabaya', '085643452453'),
(1467, 'Ahmad Triasya', 'L', 'Jl. Merdeka 6, Surabaya', '082365347876');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dokter`
--
ALTER TABLE `dokter`
  ADD PRIMARY KEY (`id_dokter`);

--
-- Indexes for table `kamar`
--
ALTER TABLE `kamar`
  ADD PRIMARY KEY (`no_kamar`),
  ADD KEY `id_pasien` (`id_pasien`);

--
-- Indexes for table `obat`
--
ALTER TABLE `obat`
  ADD PRIMARY KEY (`kode_obat`);

--
-- Indexes for table `pasien`
--
ALTER TABLE `pasien`
  ADD PRIMARY KEY (`id_pasien`),
  ADD KEY `id_perawat` (`id_perawat`),
  ADD KEY `pasien` (`id_dokter`);

--
-- Indexes for table `perawat`
--
ALTER TABLE `perawat`
  ADD PRIMARY KEY (`id_perawat`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `obat`
--
ALTER TABLE `obat`
  MODIFY `kode_obat` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=509820;

--
-- AUTO_INCREMENT for table `pasien`
--
ALTER TABLE `pasien`
  MODIFY `id_pasien` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2222;

--
-- AUTO_INCREMENT for table `perawat`
--
ALTER TABLE `perawat`
  MODIFY `id_perawat` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1468;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `kamar`
--
ALTER TABLE `kamar`
  ADD CONSTRAINT `kamar_ibfk_1` FOREIGN KEY (`id_pasien`) REFERENCES `pasien` (`id_pasien`);

--
-- Constraints for table `pasien`
--
ALTER TABLE `pasien`
  ADD CONSTRAINT `pasien` FOREIGN KEY (`id_dokter`) REFERENCES `dokter` (`id_dokter`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pasien_ibfk_1` FOREIGN KEY (`id_dokter`) REFERENCES `dokter` (`id_dokter`),
  ADD CONSTRAINT `pasien_ibfk_2` FOREIGN KEY (`id_perawat`) REFERENCES `perawat` (`id_perawat`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
