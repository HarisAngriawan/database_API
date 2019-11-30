-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 30 Nov 2019 pada 04.38
-- Versi server: 10.4.6-MariaDB
-- Versi PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aksiss`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `bulan`
--

CREATE TABLE `bulan` (
  `id` int(11) NOT NULL,
  `bulan` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `bulan`
--

INSERT INTO `bulan` (`id`, `bulan`) VALUES
(1, 'Januari'),
(2, 'Februari'),
(3, 'Maret'),
(4, 'April'),
(5, 'Mei'),
(6, 'Juni'),
(7, 'Juli'),
(8, 'Agustus'),
(9, 'September'),
(10, 'Oktober'),
(11, 'November'),
(12, 'Desember');

-- --------------------------------------------------------

--
-- Struktur dari tabel `catatan_konseling`
--

CREATE TABLE `catatan_konseling` (
  `id` int(11) NOT NULL,
  `tgl` date NOT NULL,
  `nisn` varchar(25) NOT NULL,
  `nama` varchar(60) NOT NULL,
  `masalah` varchar(200) NOT NULL,
  `pendekatan` varchar(500) NOT NULL,
  `layanan` varchar(100) NOT NULL,
  `konselor` varchar(70) NOT NULL,
  `npsn` int(11) NOT NULL,
  `th_ajaran` varchar(15) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `catatan_konseling`
--

INSERT INTO `catatan_konseling` (`id`, `tgl`, `nisn`, `nama`, `masalah`, `pendekatan`, `layanan`, `konselor`, `npsn`, `th_ajaran`, `status`) VALUES
(2, '2019-08-13', '', '', 'Siswa tidak masuk sekolah selama 1 bulan', 'Pendekatan', 'Konseling Individu', 'Bambang Sujatmiko', 50219538, '2019-2020', 1),
(7, '2019-08-09', '', '', 'bolos', 'clien centered', 'Konseling Individu', 'SRI ASTUTI, S.Pd', 50219538, '2019-2020', 1),
(11, '2019-10-08', ' 212', 'Junianti', 'tes\n', 'tes', 'Konseling Individu', 'Sri Astuti ,S.Pd', 12345678, '2019-2020', 1),
(12, '2019-10-15', '', '', 'bolos\n\n\n\n\n\n\n\n\n\nmembolos pada jam belajar\n\n\n\nmembolos pada jam belajar\n\n\n', 'ditegur lalu disurati orang tuanya', 'Konseling Individu', 'SRI ASTUTI, S.Pd', 50219538, '2019-2020', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_pelanggaran`
--

CREATE TABLE `detail_pelanggaran` (
  `id` varchar(20) NOT NULL,
  `deskripsi_pelanggaran` varchar(225) NOT NULL,
  `id_kategori` varchar(30) NOT NULL,
  `point` int(11) NOT NULL,
  `status` int(2) NOT NULL,
  `npsn` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `detail_pelanggaran`
--

INSERT INTO `detail_pelanggaran` (`id`, `deskripsi_pelanggaran`, `id_kategori`, `point`, `status`, `npsn`) VALUES
('DP-10900998-1', 'Memecahkan kaca jendela sekolah dengan sengaja', 'KP-10900998-3', 0, 1, '10900998'),
('DP-10900998-2', 'Merusak Fasilitas kelas (Meja, kursi dan Papan tulis)', 'KP-10900998-3', 0, 1, '10900998'),
('DP-10900998-3', 'Merusak tanaman di sekolah', 'KP-10900998-3', 0, 1, '10900998'),
('DP-10900998-4', 'Mencuri Barang milik teman', 'KP-10900998-6', 0, 1, '10900998'),
('DP-10900998-5', 'Menggangu teman yang sedang belajar', 'KP-10900998-1', 0, 1, '10900998'),
('DP-10900998-6', 'Menyobek / merusak buku pelajaran', 'KP-10900998-2', 0, 1, '10900998'),
('DP-10900998-7', 'Membawa rokok kesekolah', 'KP-10900998-4', 0, 1, '10900998'),
('DP-10900998-8', 'Membawa Obat-obatan dan benda yang memabukkan', 'KP-10900998-4', 0, 1, '10900998'),
('DP-10900998-9', 'Merokok dalam kelas', 'KP-10900998-2', 0, 1, '10900998'),
('DP-10900998-10', 'Merokok diluar kelas dengan memakai seragam sekolah', 'KP-10900998-2', 0, 1, '10900998'),
('DP-10900998-11', 'Menonton Video Porno di sekolah', 'KP-10900998-2', 0, 1, '10900998'),
('DP-10900998-12', 'Membawa HP kesekolah ', 'KP-10900998-4', 0, 1, '10900998'),
('DP-10900998-13', 'Membawa senjata Tajam', 'KP-10900998-4', 0, 1, '10900998'),
('DP-10900998-14', 'Mengancam Teman - teman dikelas dengan senajata tajam', 'KP-10900998-2', 0, 1, '10900998'),
('DP-10900998-15', 'Mengkonsumsi hal yang memabukkan', 'KP-10900998-2', 0, 1, '10900998'),
('DP-10900998-16', 'Berkelahi dengan siswa lainnya', 'KP-10900998-2', 0, 1, '10900998'),
('DP-10900998-17', 'Berkelahi dengan guru', 'KP-10900998-2', 0, 1, '10900998'),
('DP-10900998-18', 'Terlambat datang sekolah', 'KP-10900998-1', 0, 1, '10900998'),
('DP-10900998-19', 'Terlambat masuk kelas ', 'KP-10900998-1', 0, 1, '10900998'),
('DP-10900998-20', 'Tidak melaksanakan sholat Dzuhur berjamaah', 'KP-10900998-2', 0, 1, '10900998'),
('DP-10900998-21', 'Alpa / tidak masuk sekolah tanpa keterangan', 'KP-10900998-1', 0, 1, '10900998'),
('DP-10900998-22', 'Nongkrong dikantin saat jam pelajaran berlangsung', 'KP-10900998-2', 0, 1, '10900998'),
('DP-10900998-23', 'Tidak mengikuti kegiatan Imtaq pada setiap hari jumat pagi', 'KP-10900998-2', 0, 1, '10900998'),
('DP-10900998-24', 'Pulang sekolah sebelum pelajaran selesai', 'KP-10900998-1', 0, 1, '10900998'),
('DP-10900998-25', 'Tidak mengikuti pelajaran tertentu/bolos', 'KP-10900998-1', 0, 1, '10900998'),
('DP-10900998-26', 'Tidak berpenampilan rapi / suka mengeluarkan baju', 'KP-10900998-7', 0, 1, '10900998'),
('DP-10900998-27', 'Memakai Anting', 'KP-10900998-2', 0, 1, '10900998'),
('DP-10900998-28', 'Mencoret-coret pakaian', 'KP-10900998-7', 0, 1, '10900998'),
('DP-10900998-29', 'memakai pakean ketat bagi siswa perempuan', 'KP-10900998-7', 0, 1, '10900998'),
('DP-10900998-30', 'Memakai jaket/ Switer kedalam kelas', 'KP-10900998-7', 0, 1, '10900998'),
('DP-10900998-31', 'Memanjangkan kuku/ mencatnya', 'KP-10900998-8', 0, 1, '10900998'),
('DP-10900998-32', 'Siswa putri memakai perhiasan berlebihan', 'KP-10900998-4', 0, 1, '10900998'),
('DP-10900998-33', 'Siswa putra memakai perhiasan atau assesoris (kalung, gelang, dll)', 'KP-10900998-4', 0, 1, '10900998'),
('DP-10900998-34', 'Menghilangkan buku pelajaran', 'KP-10900998-2', 0, 1, '10900998'),
('DP-10900998-35', 'Memakai celana sobek', 'KP-10900998-7', 0, 1, '10900998'),
('DP-10900998-36', 'Memakai sandal ke sekolah', 'KP-10900998-7', 0, 1, '10900998'),
('DP-10900998-37', 'Tidak memakai kaos kaki', 'KP-10900998-7', 0, 1, '10900998'),
('DP-10900998-38', 'Tidak memakai topi saat upacara bendera', 'KP-10900998-7', 0, 1, '10900998'),
('DP-10900998-39', 'Tidak mengikuti uacara bendera', 'KP-10900998-2', 0, 1, '10900998'),
('DP-10900998-40', 'Mencat Rambut ', 'KP-10900998-2', 0, 1, '10900998'),
('DP-10900998-41', 'Membiarkan Rambut Gondrong (bagi siswa pria)', 'KP-10900998-2', 0, 1, '10900998'),
('DP-10900998-42', 'Kencing didalam kelas', 'KP-10900998-2', 0, 1, '10900998'),
('DP-10900998-43', 'Membuang sampah sembarangan', 'KP-10900998-8', 0, 1, '10900998'),
('DP-10900998-44', 'Mencoret tembok sekolah/ kelas', 'KP-10900998-2', 0, 1, '10900998'),
('DP-10900998-45', 'Meminta uang secara paksa pada teman ', 'KP-10900998-2', 0, 1, '10900998'),
('DP-10900998-46', 'Mengancam Teman - teman dikelas dengan kata-kata', 'KP-10900998-2', 0, 1, '10900998'),
('DP-10900998-47', 'Melontarkan kata kata kasar pada guru', 'KP-10900998-2', 0, 1, '10900998'),
('DP-10900998-48', 'Mencaci teman', 'KP-10900998-2', 0, 1, '10900998'),
('DP-10900998-49', 'Mempengaruhi teman sekolah untuk melakukan pelanggaran', 'KP-10900998-5', 0, 1, '10900998'),
('DP-10900998-50', 'Mengolok-olok guru', 'KP-10900998-2', 0, 1, '10900998'),
('DP-10900998-51', 'Mengolok-olok siswa/ teman lain', 'KP-10900998-2', 0, 1, '10900998'),
('DP-10900998-52', 'Merusak Fasilitas guru ( Merusak kendaraan milik pribadi guru)', 'KP-10900998-2', 0, 1, '10900998'),
('DP-10900998-53', 'Melompat Pagar', 'KP-10900998-2', 0, 1, '10900998'),
('DP-10900998-54', 'Berbuat asusila (hamil/menghamili) nikah saat menjadi siswa', 'KP-10900998-5', 0, 1, '10900998'),
('DP-10900998-55', 'Pacaran melewati norma agama (berpelukan, ciuman, berduaan dengan lawan jenis di tempat tertutup, dll)', 'KP-10900998-5', 0, 1, '10900998'),
('DP-10900998-56', 'Melakukan pelecehan seksual/tindak asusila ( Memegang payudara siswi putri )', 'KP-10900998-5', 0, 1, '10900998'),
('DP-10900998-57', 'Tidak piket', 'KP-10900998-8', 0, 1, '10900998');

-- --------------------------------------------------------

--
-- Struktur dari tabel `guru`
--

CREATE TABLE `guru` (
  `id` int(11) NOT NULL,
  `id_pengguna` varchar(25) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `no_hp` varchar(15) NOT NULL,
  `alamat` varchar(70) NOT NULL,
  `jk` varchar(12) NOT NULL,
  `npsn` varchar(15) NOT NULL,
  `password` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL,
  `nip` varchar(20) NOT NULL,
  `mapel` varchar(10) NOT NULL,
  `piket` varchar(6) NOT NULL,
  `wali_kelas` varchar(10) NOT NULL,
  `status_aktif` int(4) NOT NULL,
  `foto` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `guru`
--

INSERT INTO `guru` (`id`, `id_pengguna`, `nama`, `no_hp`, `alamat`, `jk`, `npsn`, `password`, `status`, `nip`, `mapel`, `piket`, `wali_kelas`, `status_aktif`, `foto`) VALUES
(176, 'G-10900998-31', 'DARMAWAN', '081955668176', 'DAMAR', 'L', '10900998', '123', 'tu', '-', 'tidak', 'tidak', 'tidak', 1, '-'),
(175, 'G-10900998-30', 'SANTI', '087799543095', 'DAMAR', 'P', '10900998', '123', 'tu', '-', 'tidak', 'tidak', 'tidak', 1, '-'),
(173, 'G-10900998-28', 'ANA PRIANA', '081929619508', 'DAMAR', 'P', '10900998', '123', 'tu', '-', 'tidak', 'tidak', 'tidak', 1, '-'),
(170, 'G-10900998-24', 'MUYINDA', '081271832358', 'DAMAR', 'P', '10900998', '123', 'tu', '-', 'tidak', 'tidak', 'tidak', 1, '-'),
(172, 'G-10900998-26', 'HARTI WITASARI, S.Pd', '083195817890', 'DAMAR', 'P', '10900998', '123', 'tu', '-', 'tidak', 'tidak', 'tidak', 1, '-'),
(169, 'G-10900998-23', 'HERIAH, S.Pd', '082289027433', 'DAMAR', 'P', '10900998', '123', 'guru', '196904142003122002', 'ya', 'ya', 'ya', 1, '-'),
(174, 'G-10900998-29', 'SYAHRONI', '082278977361', 'MEMPAYA', 'L', '10900998', '123', 'tu', '-', 'tidak', 'tidak', 'tidak', 1, '-'),
(171, 'G-10900998-25', 'KUSNAINI', '081368039726', 'DAMAR', 'P', '10900998', '123', 'tu', '-', 'tidak', 'tidak', 'tidak', 1, '-'),
(166, 'G-10900998-20', 'RONI KHOIRONI', '0817162371', 'KELAPA KAMPIT', 'L', '10900998', '123', 'guru bk', '198707202011011003', 'ya', 'ya', 'ya', 1, '-'),
(168, 'G-10900998-22', 'LEGI SAPUTRA, S.Pd', '082178484180', 'DAMAR', 'L', '10900998', '123', 'guru', '-', 'ya', 'ya', 'tidak', 1, '-'),
(167, 'G-10900998-21', 'ZURIF BAROKA, S.Pd', '087797105423', 'DAMAR', 'L', '10900998', '123', 'guru', '-', 'ya', 'ya', 'tidak', 1, '-'),
(165, 'G-10900998-19', 'ADIANSYAH, S.Pd', '081949467544', 'DAMAR', 'L', '10900998', '123', 'guru', '198108022010011019', 'ya', 'ya', 'ya', 1, '-'),
(163, 'G-10900998-17', 'MASPRIADI, S.Pd', '081994416706', 'DAMAR', 'L', '10900998', '123', 'guru', '196404201989031007', 'ya', 'ya', 'ya', 1, '-'),
(164, 'G-10900998-18', 'TAZAKA, S.Pd', '082185737817', 'MANGGAR', 'L', '10900998', '123', 'guru', '199202122019021002', 'ya', 'ya', 'tidak', 1, '-'),
(162, 'G-10900998-16', 'HASBULLAH HAMIM', '081949289433', 'DAMAR', 'L', '10900998', '123', 'guru', '196103141987031004', 'ya', 'ya', 'tidak', 1, '-'),
(161, 'G-10900998-15', 'SUDIONO, S.Pd', '08197873075', 'MANGGAR', 'L', '10900998', '123', 'guru', '196210101984111003', 'ya', 'ya', 'ya', 1, '-'),
(160, 'G-10900998-14', 'ATIKA SARI, S.Pd', '081929729343', 'DAMAR', 'P', '10900998', '123', 'guru', '-', 'ya', 'ya', 'ya', 1, '-'),
(159, 'G-10900998-13', 'NAZATI, S,Ag', '082282703293', 'KELAPA KAMPIT', 'P', '10900998', '123', 'guru', '196905272006042001', 'ya', 'ya', 'ya', 1, '-'),
(158, 'G-10900998-12', 'ANGGI ELVA CRISTI, S.Pd', '081995203248', 'AIK LANCI', 'P', '10900998', '123', 'guru', '198401162009032002', 'ya', 'ya', 'ya', 1, '-'),
(155, 'G-10900998-9', 'SULASTRI, A,Md', '085921843166', 'MANGGAR', 'P', '10900998', '123', 'guru', '-', 'ya', 'ya', 'ya', 1, '-'),
(157, 'G-10900998-11', 'RITA HARTATI, S.Pd', '081373684140', 'KELAPA KAMPIT', 'P', '10900998', '123', 'guru', '-', 'ya', 'ya', 'ya', 1, '-'),
(156, 'G-10900998-10', 'SEPTIANA KINANTI, S.Pd', '085741786112', 'MANGGAR', 'P', '10900998', '123', 'guru', '199409062019022003', 'ya', 'ya', 'ya', 1, '-'),
(154, 'G-10900998-8', 'CERI MARDIANSI, S.Pd', '081367024542', 'DAMAR', 'P', '10900998', '123', 'guru', '-', 'ya', 'ya', 'tidak', 1, '-'),
(151, 'G-10900998-5', 'SUSILAWATI, S.Pd', '082281190976', 'DAMAR', 'P', '10900998', '123', 'guru', '196812271992032005', 'ya', 'ya', 'ya', 1, '-'),
(152, 'G-10900998-6', 'SUDIA METASYARI, S.Pd', '081933384800', 'MANGGAR', 'P', '10900998', '123', 'guru', '198005112005012010', 'ya', 'ya', 'ya', 1, '-'),
(153, 'G-10900998-7', 'LENY WULANDARI, S.Pd', '081918966427', 'MEMPAYA', 'P', '10900998', '123', 'guru', '-', 'ya', 'ya', 'tidak', 1, '-'),
(150, 'G-10900998-4', 'NORVANILA, S.Pd', '087896444868', 'DAMAR', 'P', '10900998', '123', 'guru', '197303151998022001', 'ya', 'ya', 'ya', 1, '-'),
(149, 'G-10900998-3', 'ASNIH, S.Pd', '081368995526', 'MANGGAR', 'P', '10900998', '123', 'guru', '196903011999032006', 'ya', 'ya', 'ya', 1, '-'),
(147, 'G-10900998-1', 'SARMAN, S.Pd', '081977882516', 'KELAPA KAMPIT', 'L', '10900998', '123', 'kepala sekolah', '196601131993021001', 'tidak', 'tidak', 'tidak', 1, '-'),
(148, 'G-10900998-2', 'ARIFIN, S.Si', '081271359345', 'MANGGAR', 'L', '10900998', '123', 'guru', '197505242010011006', 'ya', 'ya', 'tidak', 1, '-'),
(182, 'G-10900998-27', 'NUZIARTI', '081220204738', 'DAMAR', 'P', '10900998', '123', 'tu', '-', 'tidak', 'tidak', 'tidak', 1, '-'),
(183, 'G-10900998-32', 'RUWAH SUBEKTI', '082178464039', 'DAMAR', 'L', '10900998', '123', 'guru', '-', 'ya', 'ya', 'tidak', 1, '-'),
(184, 'G-10900998-33', 'BUDI SUPRIYATMOKO', '082280418063', 'DAMAR', 'L', '10900998', '123', 'guru', '-', 'ya', 'ya', 'tidak', 1, '-'),
(235, 'G-10900998-10', 'Drs. Junawan', '08197839668', 'Kelapa Kampit', 'Laki-laki', '10900998', '123', 'kepala sekolah', '196607101999031008', 'tidak', 'tidak', 'tidak', 1, ''),
(236, 'G-10900998-10', 'Al Azmi, S.Pd', '081949371594', 'Manggar', 'Laki-laki', '10900998', '123', 'guru', '196303141986011002', 'ya', 'ya', 'tidak', 1, ''),
(237, 'G-10900998-10', 'Renaldi, S.Pd', '085263106259', 'Gantung', 'Laki-laki', '10900998', '123', 'guru', '198809042014021002', 'ya', 'ya', 'tidak', 1, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `guru_kelas`
--

CREATE TABLE `guru_kelas` (
  `id` int(11) NOT NULL,
  `id_guru` varchar(15) NOT NULL,
  `id_kelas_diajar` varchar(15) NOT NULL,
  `nama_kelas` varchar(50) NOT NULL,
  `npsn` varchar(10) NOT NULL,
  `th_ajaran` varchar(12) NOT NULL,
  `status` varchar(12) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `guru_kelas`
--

INSERT INTO `guru_kelas` (`id`, `id_guru`, `id_kelas_diajar`, `nama_kelas`, `npsn`, `th_ajaran`, `status`) VALUES
(89, 'G-10900998-2', 'KJ-10900998-2', 'VII /B', '10900998', '2019-2020', '1'),
(90, 'G-10900998-2', 'KJ-10900998-3', 'VII /C', '10900998', '2019-2020', '1'),
(91, 'G-10900998-3', 'KJ-10900998-10', 'VIII/E', '10900998', '2019-2020', '1'),
(92, 'G-10900998-3', 'KJ-10900998-11', 'IX/A', '10900998', '2019-2020', '1'),
(93, 'G-10900998-3', 'KJ-10900998-12', 'IX/B', '10900998', '2019-2020', '1'),
(94, 'G-10900998-3', 'KJ-10900998-13', 'IX/C', '10900998', '2019-2020', '1'),
(95, 'G-10900998-3', 'KJ-10900998-14', 'IX/D', '10900998', '2019-2020', '1'),
(96, 'G-10900998-3', 'KJ-10900998-15', 'IX/E', '10900998', '2019-2020', '1'),
(97, 'G-10900998-4', 'KJ-10900998-4', 'VII /D', '10900998', '2019-2020', '1'),
(98, 'G-10900998-4', 'KJ-10900998-5', 'VII /E', '10900998', '2019-2020', '1'),
(99, 'G-10900998-4', 'KJ-10900998-6', 'VIII/A', '10900998', '2019-2020', '1'),
(100, 'G-10900998-4', 'KJ-10900998-7', 'VIII/B', '10900998', '2019-2020', '1'),
(101, 'G-10900998-4', 'KJ-10900998-8', 'VIII/C', '10900998', '2019-2020', '1'),
(102, 'G-10900998-4', 'KJ-10900998-9', 'VIII/D', '10900998', '2019-2020', '1'),
(103, 'G-10900998-5', 'KJ-10900998-1', 'VII /A', '10900998', '2019-2020', '1'),
(104, 'G-10900998-5', 'KJ-10900998-2', 'VII /B', '10900998', '2019-2020', '1'),
(105, 'G-10900998-5', 'KJ-10900998-3', 'VII /C', '10900998', '2019-2020', '1'),
(106, 'G-10900998-5', 'KJ-10900998-4', 'VII /D', '10900998', '2019-2020', '1'),
(107, 'G-10900998-5', 'KJ-10900998-8', 'VIII/C', '10900998', '2019-2020', '1'),
(108, 'G-10900998-5', 'KJ-10900998-9', 'VIII/D', '10900998', '2019-2020', '1'),
(109, 'G-10900998-6', 'KJ-10900998-6', 'VIII/A', '10900998', '2019-2020', '1'),
(110, 'G-10900998-6', 'KJ-10900998-7', 'VIII/B', '10900998', '2019-2020', '1'),
(111, 'G-10900998-6', 'KJ-10900998-8', 'VIII/C', '10900998', '2019-2020', '1'),
(112, 'G-10900998-6', 'KJ-10900998-9', 'VIII/D', '10900998', '2019-2020', '1'),
(113, 'G-10900998-6', 'KJ-10900998-10', 'VIII/E', '10900998', '2019-2020', '1'),
(114, 'G-10900998-7', 'KJ-10900998-6', 'VIII/A', '10900998', '2019-2020', '1'),
(115, 'G-10900998-7', 'KJ-10900998-8', 'VIII/C', '10900998', '2019-2020', '1'),
(116, 'G-10900998-7', 'KJ-10900998-9', 'VIII/D', '10900998', '2019-2020', '1'),
(117, 'G-10900998-7', 'KJ-10900998-10', 'VIII/E', '10900998', '2019-2020', '1'),
(118, 'G-10900998-8', 'KJ-10900998-1', 'VII /A', '10900998', '2019-2020', '1'),
(119, 'G-10900998-8', 'KJ-10900998-2', 'VII /B', '10900998', '2019-2020', '1'),
(120, 'G-10900998-8', 'KJ-10900998-3', 'VII /C', '10900998', '2019-2020', '1'),
(121, 'G-10900998-9', 'KJ-10900998-1', 'VII /A', '10900998', '2019-2020', '1'),
(122, 'G-10900998-9', 'KJ-10900998-2', 'VII /B', '10900998', '2019-2020', '1'),
(123, 'G-10900998-9', 'KJ-10900998-3', 'VII /C', '10900998', '2019-2020', '1'),
(124, 'G-10900998-9', 'KJ-10900998-4', 'VII /D', '10900998', '2019-2020', '1'),
(125, 'G-10900998-9', 'KJ-10900998-5', 'VII /E', '10900998', '2019-2020', '1'),
(126, 'G-10900998-9', 'KJ-10900998-6', 'VIII/A', '10900998', '2019-2020', '1'),
(127, 'G-10900998-9', 'KJ-10900998-7', 'VIII/B', '10900998', '2019-2020', '1'),
(128, 'G-10900998-9', 'KJ-10900998-8', 'VIII/C', '10900998', '2019-2020', '1'),
(129, 'G-10900998-9', 'KJ-10900998-9', 'VIII/D', '10900998', '2019-2020', '1'),
(130, 'G-10900998-9', 'KJ-10900998-10', 'VIII/E', '10900998', '2019-2020', '1'),
(131, 'G-10900998-9', 'KJ-10900998-11', 'IX/A', '10900998', '2019-2020', '1'),
(132, 'G-10900998-9', 'KJ-10900998-12', 'IX/B', '10900998', '2019-2020', '1'),
(133, 'G-10900998-9', 'KJ-10900998-13', 'IX/C', '10900998', '2019-2020', '1'),
(134, 'G-10900998-9', 'KJ-10900998-14', 'IX/D', '10900998', '2019-2020', '1'),
(135, 'G-10900998-9', 'KJ-10900998-15', 'IX/E', '10900998', '2019-2020', '1'),
(136, 'G-10900998-10', 'KJ-10900998-5', 'VII /E', '10900998', '2019-2020', '1'),
(137, 'G-10900998-10', 'KJ-10900998-11', 'IX/A', '10900998', '2019-2020', '1'),
(138, 'G-10900998-10', 'KJ-10900998-12', 'IX/B', '10900998', '2019-2020', '1'),
(139, 'G-10900998-10', 'KJ-10900998-13', 'IX/C', '10900998', '2019-2020', '1'),
(140, 'G-10900998-10', 'KJ-10900998-14', 'IX/D', '10900998', '2019-2020', '1'),
(141, 'G-10900998-10', 'KJ-10900998-15', 'IX/E', '10900998', '2019-2020', '1'),
(142, 'G-10900998-11', 'KJ-10900998-6', 'VIII/A', '10900998', '2019-2020', '1'),
(143, 'G-10900998-11', 'KJ-10900998-7', 'VIII/B', '10900998', '2019-2020', '1'),
(144, 'G-10900998-11', 'KJ-10900998-10', 'VIII/E', '10900998', '2019-2020', '1'),
(145, 'G-10900998-12', 'KJ-10900998-6', 'VIII/A', '10900998', '2019-2020', '1'),
(146, 'G-10900998-12', 'KJ-10900998-7', 'VIII/B', '10900998', '2019-2020', '1'),
(147, 'G-10900998-12', 'KJ-10900998-8', 'VIII/C', '10900998', '2019-2020', '1'),
(148, 'G-10900998-12', 'KJ-10900998-9', 'VIII/D', '10900998', '2019-2020', '1'),
(149, 'G-10900998-12', 'KJ-10900998-10', 'VIII/E', '10900998', '2019-2020', '1'),
(150, 'G-10900998-12', 'KJ-10900998-11', 'IX/A', '10900998', '2019-2020', '1'),
(151, 'G-10900998-12', 'KJ-10900998-12', 'IX/B', '10900998', '2019-2020', '1'),
(152, 'G-10900998-12', 'KJ-10900998-13', 'IX/C', '10900998', '2019-2020', '1'),
(153, 'G-10900998-12', 'KJ-10900998-14', 'IX/D', '10900998', '2019-2020', '1'),
(154, 'G-10900998-12', 'KJ-10900998-15', 'IX/E', '10900998', '2019-2020', '1'),
(155, 'G-10900998-13', 'KJ-10900998-3', 'VII /C', '10900998', '2019-2020', '1'),
(156, 'G-10900998-13', 'KJ-10900998-4', 'VII /D', '10900998', '2019-2020', '1'),
(157, 'G-10900998-13', 'KJ-10900998-5', 'VII /E', '10900998', '2019-2020', '1'),
(158, 'G-10900998-13', 'KJ-10900998-6', 'VIII/A', '10900998', '2019-2020', '1'),
(159, 'G-10900998-13', 'KJ-10900998-7', 'VIII/B', '10900998', '2019-2020', '1'),
(160, 'G-10900998-13', 'KJ-10900998-8', 'VIII/C', '10900998', '2019-2020', '1'),
(161, 'G-10900998-13', 'KJ-10900998-9', 'VIII/D', '10900998', '2019-2020', '1'),
(162, 'G-10900998-13', 'KJ-10900998-10', 'VIII/E', '10900998', '2019-2020', '1'),
(163, 'G-10900998-13', 'KJ-10900998-1', 'VII /A', '10900998', '2019-2020', '1'),
(164, 'G-10900998-13', 'KJ-10900998-3', 'VII /C', '10900998', '2019-2020', '1'),
(165, 'G-10900998-14', 'KJ-10900998-6', 'VIII/A', '10900998', '2019-2020', '1'),
(166, 'G-10900998-14', 'KJ-10900998-7', 'VIII/B', '10900998', '2019-2020', '1'),
(167, 'G-10900998-14', 'KJ-10900998-8', 'VIII/C', '10900998', '2019-2020', '1'),
(168, 'G-10900998-14', 'KJ-10900998-9', 'VIII/D', '10900998', '2019-2020', '1'),
(169, 'G-10900998-14', 'KJ-10900998-10', 'VIII/E', '10900998', '2019-2020', '1'),
(170, 'G-10900998-15', 'KJ-10900998-4', 'VII /D', '10900998', '2019-2020', '1'),
(171, 'G-10900998-15', 'KJ-10900998-11', 'IX/A', '10900998', '2019-2020', '1'),
(172, 'G-10900998-15', 'KJ-10900998-12', 'IX/B', '10900998', '2019-2020', '1'),
(173, 'G-10900998-15', 'KJ-10900998-13', 'IX/C', '10900998', '2019-2020', '1'),
(174, 'G-10900998-15', 'KJ-10900998-14', 'IX/D', '10900998', '2019-2020', '1'),
(175, 'G-10900998-15', 'KJ-10900998-15', 'IX/E', '10900998', '2019-2020', '1'),
(176, 'G-10900998-16', 'KJ-10900998-1', 'VII /A', '10900998', '2019-2020', '1'),
(177, 'G-10900998-16', 'KJ-10900998-2', 'VII /B', '10900998', '2019-2020', '1'),
(178, 'G-10900998-16', 'KJ-10900998-3', 'VII /C', '10900998', '2019-2020', '1'),
(179, 'G-10900998-16', 'KJ-10900998-4', 'VII /D', '10900998', '2019-2020', '1'),
(180, 'G-10900998-16', 'KJ-10900998-5', 'VII /E', '10900998', '2019-2020', '1'),
(181, 'G-10900998-16', 'KJ-10900998-6', 'VIII/A', '10900998', '2019-2020', '1'),
(182, 'G-10900998-16', 'KJ-10900998-7', 'VIII/B', '10900998', '2019-2020', '1'),
(183, 'G-10900998-16', 'KJ-10900998-10', 'VIII/E', '10900998', '2019-2020', '1'),
(184, 'G-10900998-17', 'KJ-10900998-11', 'IX/A', '10900998', '2019-2020', '1'),
(185, 'G-10900998-17', 'KJ-10900998-12', 'IX/B', '10900998', '2019-2020', '1'),
(186, 'G-10900998-17', 'KJ-10900998-13', 'IX/C', '10900998', '2019-2020', '1'),
(187, 'G-10900998-17', 'KJ-10900998-14', 'IX/D', '10900998', '2019-2020', '1'),
(188, 'G-10900998-17', 'KJ-10900998-15', 'IX/E', '10900998', '2019-2020', '1'),
(189, 'G-10900998-18', 'KJ-10900998-8', 'VIII/C', '10900998', '2019-2020', '1'),
(190, 'G-10900998-18', 'KJ-10900998-9', 'VIII/D', '10900998', '2019-2020', '1'),
(191, 'G-10900998-18', 'KJ-10900998-11', 'IX/A', '10900998', '2019-2020', '1'),
(192, 'G-10900998-18', 'KJ-10900998-12', 'IX/B', '10900998', '2019-2020', '1'),
(193, 'G-10900998-18', 'KJ-10900998-13', 'IX/C', '10900998', '2019-2020', '1'),
(194, 'G-10900998-18', 'KJ-10900998-14', 'IX/D', '10900998', '2019-2020', '1'),
(195, 'G-10900998-18', 'KJ-10900998-15', 'IX/E', '10900998', '2019-2020', '1'),
(196, 'G-10900998-19', 'KJ-10900998-5', 'VII /E', '10900998', '2019-2020', '1'),
(197, 'G-10900998-19', 'KJ-10900998-11', 'IX/A', '10900998', '2019-2020', '1'),
(198, 'G-10900998-19', 'KJ-10900998-12', 'IX/B', '10900998', '2019-2020', '1'),
(199, 'G-10900998-19', 'KJ-10900998-13', 'IX/C', '10900998', '2019-2020', '1'),
(200, 'G-10900998-19', 'KJ-10900998-14', 'IX/D', '10900998', '2019-2020', '1'),
(201, 'G-10900998-19', 'KJ-10900998-15', 'IX/E', '10900998', '2019-2020', '1'),
(202, 'G-10900998-20', 'KJ-10900998-12', 'IX/B', '10900998', '2019-2020', '1'),
(203, 'G-10900998-20', 'KJ-10900998-14', 'IX/D', '10900998', '2019-2020', '1'),
(204, 'G-10900998-20', 'KJ-10900998-15', 'IX/E', '10900998', '2019-2020', '1'),
(205, 'G-10900998-21', 'KJ-10900998-3', 'VII /C', '10900998', '2019-2020', '1'),
(206, 'G-10900998-21', 'KJ-10900998-4', 'VII /D', '10900998', '2019-2020', '1'),
(207, 'G-10900998-21', 'KJ-10900998-5', 'VII /E', '10900998', '2019-2020', '1'),
(208, 'G-10900998-21', 'KJ-10900998-9', 'VIII/D', '10900998', '2019-2020', '1'),
(209, 'G-10900998-21', 'KJ-10900998-10', 'VIII/E', '10900998', '2019-2020', '1'),
(210, 'G-10900998-21', 'KJ-10900998-11', 'IX/A', '10900998', '2019-2020', '1'),
(211, 'G-10900998-21', 'KJ-10900998-12', 'IX/B', '10900998', '2019-2020', '1'),
(212, 'G-10900998-21', 'KJ-10900998-13', 'IX/C', '10900998', '2019-2020', '1'),
(213, 'G-10900998-22', 'KJ-10900998-1', 'VII /A', '10900998', '2019-2020', '1'),
(214, 'G-10900998-22', 'KJ-10900998-2', 'VII /B', '10900998', '2019-2020', '1'),
(215, 'G-10900998-22', 'KJ-10900998-6', 'VIII/A', '10900998', '2019-2020', '1'),
(216, 'G-10900998-22', 'KJ-10900998-7', 'VIII/B', '10900998', '2019-2020', '1'),
(217, 'G-10900998-22', 'KJ-10900998-8', 'VIII/C', '10900998', '2019-2020', '1'),
(218, 'G-10900998-22', 'KJ-10900998-14', 'IX/D', '10900998', '2019-2020', '1'),
(219, 'G-10900998-22', 'KJ-10900998-15', 'IX/E', '10900998', '2019-2020', '1'),
(220, 'G-10900998-23', 'KJ-10900998-2', 'VII /B', '10900998', '2019-2020', '1'),
(221, 'G-10900998-23', 'KJ-10900998-3', 'VII /C', '10900998', '2019-2020', '1'),
(222, 'G-10900998-23', 'KJ-10900998-4', 'VII /D', '10900998', '2019-2020', '1'),
(223, 'G-10900998-23', 'KJ-10900998-5', 'VII /E', '10900998', '2019-2020', '1'),
(224, 'G-10900998-14', 'KJ-10900998-1', 'VII /A', '10900998', '2019-2020', '1'),
(225, 'G-10900998-14', 'KJ-10900998-2', 'VII /B', '10900998', '2019-2020', '1'),
(226, 'G-10900998-8', 'KJ-10900998-1', 'VII /A', '10900998', '2019-2020', '1'),
(227, 'G-10900998-8', 'KJ-10900998-2', 'VII /B', '10900998', '2019-2020', '1'),
(228, 'G-10900998-10', 'KJ-10900998-3', 'VII /C', '10900998', '2019-2020', '1'),
(229, 'G-10900998-32', 'KJ-10900998-4', 'VII /D', '10900998', '2019-2020', '1'),
(230, 'G-10900998-32', 'KJ-10900998-5', 'VII /E', '10900998', '2019-2020', '1'),
(231, 'G-10900998-9', 'KJ-10900998-1', 'VII /A', '10900998', '2019-2020', '1'),
(232, 'G-10900998-9', 'KJ-10900998-7', 'VIII/B', '10900998', '2019-2020', '1'),
(233, 'G-10900998-11', 'KJ-10900998-5', 'VII /E', '10900998', '2019-2020', '1'),
(234, 'G-10900998-33', 'KJ-10900998-1', 'VII /A', '10900998', '2019-2020', '1'),
(235, 'G-10900998-33', 'KJ-10900998-2', 'VII /B', '10900998', '2019-2020', '1'),
(236, 'G-10900998-33', 'KJ-10900998-3', 'VII /C', '10900998', '2019-2020', '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `home_visit`
--

CREATE TABLE `home_visit` (
  `id` int(11) NOT NULL,
  `tgl` date NOT NULL,
  `tujuan` varchar(150) NOT NULL,
  `nisn` varchar(20) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `tanggapan` varchar(150) NOT NULL,
  `konselor` varchar(30) NOT NULL,
  `status` int(11) NOT NULL,
  `th_ajaran` varchar(12) NOT NULL,
  `npsn` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jurusan`
--

CREATE TABLE `jurusan` (
  `id` int(11) NOT NULL,
  `id_jurusan` varchar(12) NOT NULL,
  `nama_jurusan` varchar(100) DEFAULT NULL,
  `akronim` varchar(50) DEFAULT NULL,
  `npsn` varchar(15) DEFAULT NULL,
  `status` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori_pelanggaran`
--

CREATE TABLE `kategori_pelanggaran` (
  `idd` int(11) NOT NULL,
  `id` varchar(15) NOT NULL,
  `kategori_pelanggaran` varchar(225) NOT NULL,
  `status` varchar(1) NOT NULL,
  `npsn` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kategori_pelanggaran`
--

INSERT INTO `kategori_pelanggaran` (`idd`, `id`, `kategori_pelanggaran`, `status`, `npsn`) VALUES
(25, 'KP-10900998-1', 'Kegiatan Belajar Mengajar\r\n', '1', '10900998'),
(26, 'KP-10900998-2', 'Sikap dan Perilaku\r\n', '1', '10900998'),
(27, 'KP-10900998-3', 'Merusak Fasilitas Sekolah\r\n', '1', '10900998'),
(28, 'KP-10900998-4', 'Membawa Barang yang dilarang\r\n', '1', '10900998'),
(29, 'KP-10900998-5', 'Tindakan Asusila\r\n', '1', '10900998'),
(30, 'KP-10900998-6', 'Kriminal\r\n', '1', '10900998'),
(31, 'KP-10900998-7', 'Kerapian Pakaian\r\n', '1', '10900998'),
(32, 'KP-10900998-8', 'Kebersihan\r\n', '1', '10900998');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas`
--

CREATE TABLE `kelas` (
  `id` int(11) NOT NULL,
  `id_kelas` varchar(15) NOT NULL,
  `nama_kelas` varchar(30) NOT NULL,
  `npsn` varchar(20) NOT NULL,
  `status` varchar(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas_jurusan`
--

CREATE TABLE `kelas_jurusan` (
  `id` int(11) NOT NULL,
  `id_kelas_jurusan` varchar(25) NOT NULL,
  `nama_kelas_jurusan` varchar(50) NOT NULL,
  `nomor_kelas` varchar(10) NOT NULL,
  `daya_tampung` int(5) NOT NULL,
  `id_wali_kelas` varchar(15) NOT NULL,
  `npsn` int(20) NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kelas_jurusan`
--

INSERT INTO `kelas_jurusan` (`id`, `id_kelas_jurusan`, `nama_kelas_jurusan`, `nomor_kelas`, `daya_tampung`, `id_wali_kelas`, `npsn`, `status`) VALUES
(16, 'KJ-10900998-1', 'VII ', 'A', 30, 'G-10900998-9', 10900998, 1),
(17, 'KJ-10900998-2', 'VII ', 'B', 32, 'G-10900998-5', 10900998, 1),
(18, 'KJ-10900998-3', 'VII ', 'C', 32, 'G-10900998-23', 10900998, 1),
(19, 'KJ-10900998-4', 'VII ', 'D', 32, 'G-10900998-4', 10900998, 1),
(20, 'KJ-10900998-5', 'VII ', 'E', 32, 'G-10900998-10', 10900998, 1),
(21, 'KJ-10900998-6', 'VIII', 'A', 32, 'G-10900998-12', 10900998, 1),
(22, 'KJ-10900998-7', 'VIII', 'B', 32, 'G-10900998-11', 10900998, 1),
(23, 'KJ-10900998-8', 'VIII', 'C', 32, 'G-10900998-14', 10900998, 1),
(24, 'KJ-10900998-9', 'VIII', 'D', 32, 'G-10900998-6', 10900998, 1),
(25, 'KJ-10900998-10', 'VIII', 'E', 32, 'G-10900998-3', 10900998, 1),
(26, 'KJ-10900998-11', 'IX', 'A', 32, 'G-10900998-13', 10900998, 1),
(27, 'KJ-10900998-12', 'IX', 'B', 32, 'G-10900998-20', 10900998, 1),
(28, 'KJ-10900998-13', 'IX', 'C', 32, 'G-10900998-17', 10900998, 1),
(29, 'KJ-10900998-14', 'IX', 'D', 32, 'G-10900998-19', 10900998, 1),
(30, 'KJ-10900998-15', 'IX', 'E', 32, 'G-10900998-15', 10900998, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ketidakhadiran`
--

CREATE TABLE `ketidakhadiran` (
  `id` int(11) NOT NULL,
  `tgl` date NOT NULL,
  `nisn` varchar(15) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `kelas` varchar(50) NOT NULL,
  `alasan` varchar(30) NOT NULL,
  `id_wali_kelas` varchar(10) NOT NULL,
  `npsn` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `laporan_pelajaran`
--

CREATE TABLE `laporan_pelajaran` (
  `id` int(11) NOT NULL,
  `tgl` date NOT NULL,
  `mapel` varchar(70) NOT NULL,
  `materi` varchar(500) NOT NULL,
  `kelas` varchar(15) NOT NULL,
  `detail` varchar(2000) NOT NULL,
  `id_guru` varchar(15) NOT NULL,
  `file` varchar(30) NOT NULL,
  `npsn` varchar(10) NOT NULL,
  `th_ajaran` varchar(12) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `mata_pelajaran`
--

CREATE TABLE `mata_pelajaran` (
  `id` int(11) NOT NULL,
  `mapel` varchar(50) NOT NULL,
  `npsn` varchar(15) NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mata_pelajaran`
--

INSERT INTO `mata_pelajaran` (`id`, `mapel`, `npsn`, `status`) VALUES
(12, 'PENDIDIKAN AGAMA ISLAM (PAI)', '10900998', 1),
(13, 'PENDIDIKAN KEWARNAGERAAN (PKn)', '10900998', 1),
(14, 'BAHASA INDONESIA', '10900998', 1),
(15, 'BAHASA INGGRIS', '10900998', 1),
(16, 'MATEMATIKA', '10900998', 1),
(17, 'IPA TERPADU', '10900998', 1),
(18, 'IPS TERPADU', '10900998', 1),
(19, 'SENI BUDAYA', '10900998', 1),
(20, 'PENJASKES', '10900998', 1),
(21, 'PRAKARYA', '10900998', 1),
(22, 'PENDIDIKAN AGAMA BUDHA', '10900998', 1),
(23, 'PENDIDIKAN AGAMA KRISTEN', '10900998', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai_tugas`
--

CREATE TABLE `nilai_tugas` (
  `id` int(11) NOT NULL,
  `kelas` varchar(40) NOT NULL,
  `npsn` varchar(10) NOT NULL,
  `th_ajaran` varchar(15) NOT NULL,
  `semester` int(2) NOT NULL,
  `mapel` varchar(50) NOT NULL,
  `uh_1` int(4) NOT NULL,
  `uh_2` int(4) NOT NULL,
  `uh_3` int(4) NOT NULL,
  `nisn` varchar(10) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `nilai_tugas`
--

INSERT INTO `nilai_tugas` (`id`, `kelas`, `npsn`, `th_ajaran`, `semester`, `mapel`, `uh_1`, `uh_2`, `uh_3`, `nisn`, `nama`, `status`) VALUES
(3, 'KJ-10900998-2', '10900998', '2019-2020', 1, ' BAHASA INDONESIA', 7, 0, 0, '0063903406', 'Sofi', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai_uas`
--

CREATE TABLE `nilai_uas` (
  `id` int(11) NOT NULL,
  `kelas` varchar(40) NOT NULL,
  `npsn` varchar(10) NOT NULL,
  `th_ajaran` varchar(15) NOT NULL,
  `semester` int(11) NOT NULL,
  `mapel` varchar(50) NOT NULL,
  `nisn` varchar(10) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `nilai` int(5) NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai_uh`
--

CREATE TABLE `nilai_uh` (
  `id` int(11) NOT NULL,
  `kelas` varchar(40) NOT NULL,
  `npsn` varchar(10) NOT NULL,
  `th_ajaran` varchar(15) NOT NULL,
  `semester` int(2) NOT NULL,
  `mapel` varchar(50) NOT NULL,
  `uh_1` int(4) NOT NULL,
  `uh_2` int(4) NOT NULL,
  `uh_3` int(4) NOT NULL,
  `nisn` varchar(10) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai_uts`
--

CREATE TABLE `nilai_uts` (
  `id` int(11) NOT NULL,
  `kelas` varchar(40) NOT NULL,
  `npsn` varchar(10) NOT NULL,
  `th_ajaran` varchar(15) NOT NULL,
  `semester` int(11) NOT NULL,
  `mapel` varchar(50) NOT NULL,
  `nisn` varchar(10) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `nilai` int(5) NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggaran_bulanan`
--

CREATE TABLE `pelanggaran_bulanan` (
  `bulan` int(2) DEFAULT NULL,
  `jumlah` bigint(21) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggaran_siswa`
--

CREATE TABLE `pelanggaran_siswa` (
  `id` int(11) NOT NULL,
  `nisn` varchar(15) NOT NULL,
  `kelas` varchar(15) NOT NULL,
  `kategori_pelanggaran` varchar(50) NOT NULL,
  `deskripsi_pelanggaran` varchar(150) NOT NULL,
  `tgl_pelanggaran` date NOT NULL,
  `jam_pelanggaran` varchar(15) NOT NULL,
  `tempat_pelanggaran` varchar(20) NOT NULL,
  `point` int(11) NOT NULL,
  `status_teguran` varchar(5) NOT NULL,
  `keterangan` varchar(150) NOT NULL,
  `guru_penginput` varchar(15) NOT NULL,
  `npsn` varchar(20) NOT NULL,
  `status` int(11) NOT NULL,
  `th_ajaran` varchar(12) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pelanggaran_siswa`
--

INSERT INTO `pelanggaran_siswa` (`id`, `nisn`, `kelas`, `kategori_pelanggaran`, `deskripsi_pelanggaran`, `tgl_pelanggaran`, `jam_pelanggaran`, `tempat_pelanggaran`, `point`, `status_teguran`, `keterangan`, `guru_penginput`, `npsn`, `status`, `th_ajaran`) VALUES
(45, ' 0063331611', 'KJ-10900998-4', 'KP-10900998-4', 'Membawa HP kesekolah ', '2019-09-30', '12 : 15', 'Di Kelas', 0, 'yes', 'Anak bpk ibu membawa HP\n', 'G-10900998-4', '10900998', 0, ''),
(46, ' 0063331611', 'KJ-10900998-4', 'KP-10900998-4', 'Membawa HP kesekolah ', '2019-09-30', '12 : 15', 'Di Kelas', 0, 'yes', 'Bawa HP.', 'G-10900998-4', '10900998', 0, ''),
(153, ' 0072505121', 'KJ-10900998-3', 'KP-10900998-4', ' Membawa rokok kesekolah', '2019-11-26', '8 : 15', 'kelas 7c', 0, 'yes', '', 'G-10900998-23', '10900998', 0, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penelusuran_alumni`
--

CREATE TABLE `penelusuran_alumni` (
  `id` int(11) NOT NULL,
  `angkatan` varchar(12) NOT NULL,
  `jumlah_lulus` int(11) NOT NULL,
  `swasta` int(11) NOT NULL,
  `negeri` int(11) NOT NULL,
  `kerja` int(11) NOT NULL,
  `lain` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `npsn` varchar(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `permohonan_ijin`
--

CREATE TABLE `permohonan_ijin` (
  `id` int(11) NOT NULL,
  `tgl` date NOT NULL,
  `nisn` varchar(20) NOT NULL,
  `npsn` varchar(20) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `kelas` varchar(40) NOT NULL,
  `keterangan` varchar(40) NOT NULL,
  `foto` varchar(20) NOT NULL,
  `pelapor` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `prestasi`
--

CREATE TABLE `prestasi` (
  `id` int(11) NOT NULL,
  `tgl` date NOT NULL,
  `kategori` varchar(30) NOT NULL,
  `nisn` varchar(20) NOT NULL,
  `nama` varchar(60) NOT NULL,
  `kelas` varchar(20) NOT NULL,
  `deskripsi` varchar(100) NOT NULL,
  `npsn` varchar(15) NOT NULL,
  `status` int(11) NOT NULL,
  `th_ajaran` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `rating_guru`
--

CREATE TABLE `rating_guru` (
  `id` int(11) NOT NULL,
  `id_pelajaran` varchar(20) NOT NULL,
  `id_guru` varchar(20) NOT NULL,
  `rating` int(11) NOT NULL,
  `nisn` varchar(20) NOT NULL,
  `npsn` varchar(20) NOT NULL,
  `th_ajaran` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sekolah`
--

CREATE TABLE `sekolah` (
  `npsn` varchar(10) NOT NULL,
  `nama_sekolah` varchar(100) DEFAULT NULL,
  `alamat` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `sekolah`
--

INSERT INTO `sekolah` (`npsn`, `nama_sekolah`, `alamat`) VALUES
('10900998', 'SMP NEGERI DAMAR', 'Jln.Sumatera, Desa Mengkubang, Kecamatan Damar, Kabupaten Belitung Timur, Kepulauan Bangka Belitung');

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `id` int(11) NOT NULL,
  `nisn` varchar(25) DEFAULT NULL,
  `nis` varchar(20) DEFAULT NULL,
  `nama_lengkap` varchar(50) DEFAULT NULL,
  `nama_panggilan` varchar(40) DEFAULT NULL,
  `tpt_lahir` varchar(60) DEFAULT NULL,
  `tgl_lahir` varchar(15) DEFAULT NULL,
  `jk` varchar(1) DEFAULT NULL,
  `suku` varchar(20) DEFAULT NULL,
  `agama` varchar(15) DEFAULT NULL,
  `no_hp` varchar(14) DEFAULT NULL,
  `alamat` varchar(70) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `asal_sekolah` varchar(30) DEFAULT NULL,
  `tgl_masuk` varchar(15) DEFAULT NULL,
  `status_masuk` varchar(15) DEFAULT NULL,
  `tinggal_dengan` varchar(20) DEFAULT NULL,
  `status` varchar(15) DEFAULT NULL,
  `npsn` varchar(20) DEFAULT NULL,
  `kelas_saat_ini` varchar(70) DEFAULT NULL,
  `foto` varchar(15) DEFAULT NULL,
  `id_ayah` varchar(20) DEFAULT NULL,
  `id_ibu` varchar(20) DEFAULT NULL,
  `pass` varchar(100) DEFAULT '1234',
  `pass_ortu` varchar(100) DEFAULT '1234',
  `koord_rumah` varchar(30) NOT NULL,
  `th_ajaran` varchar(10) DEFAULT '2019-2020'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`id`, `nisn`, `nis`, `nama_lengkap`, `nama_panggilan`, `tpt_lahir`, `tgl_lahir`, `jk`, `suku`, `agama`, `no_hp`, `alamat`, `email`, `asal_sekolah`, `tgl_masuk`, `status_masuk`, `tinggal_dengan`, `status`, `npsn`, `kelas_saat_ini`, `foto`, `id_ayah`, `id_ibu`, `pass`, `pass_ortu`, `koord_rumah`, `th_ajaran`) VALUES
(2756, '0052336932', '4951', 'Veren Stephanie Callista', '', 'TANJUNG PANDAN', '2005-09-15', 'P', '', 'Kristen', '', 'JALAN PELT DAMAR', '', '', '', '', '', '1', '10900998', 'KJ-10900998-15', '-', 'A-0052336932', 'I-0052336932', '1234', '1234', '-', '2019-2020'),
(2757, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1', '', '', '-', 'A-', 'I-', '1234', '1234', '-', '2019-2020'),
(2755, '0055867910', '4950', 'Tiara', '', 'SUKAMANDI', '2005-01-12', 'P', '', 'Islam', '', 'JALAN SAWAH DUSUN DAMAR', '', '', '', '', '', '1', '10900998', 'KJ-10900998-15', '-', 'A-0055867910', 'I-0055867910', '1234', '1234', '-', '2019-2020'),
(2753, '0041411021', '4947', 'Sandy', '', 'MALANG LEPAU', '2004-01-11', 'L', '', 'Islam', '', 'DUSUN MALANG LEPAU DESA BURONG MANDI', '', '', '', '', '', '1', '10900998', 'KJ-10900998-15', '-', 'A-0041411021', 'I-0041411021', '1234', '1234', '-', '2019-2020'),
(2754, '0022390962', '4948', 'Seby Al Rohim', '', 'TANGERANG', '2002-06-12', 'L', '', 'Islam', '', 'DUSUN KEBUN SAYUR', '', '', '', '', '', '1', '10900998', 'KJ-10900998-15', '-', 'A-0022390962', 'I-0022390962', '1234', '1234', '-', '2019-2020'),
(2751, '0045910085', '4945', 'Reza Ananda Putra', '', 'SUKAMANDI', '2004-11-27', 'L', '', 'Islam', '', 'DUSUN DAMAI BARU DESA MENGKUBANG', '', '', '', '', '', '1', '10900998', 'KJ-10900998-15', '-', 'A-0045910085', 'I-0045910085', '1234', '1234', '-', '2019-2020'),
(2752, '0053741776', '4946', 'Rossa', '', 'SUKAMANDI', '2005-06-10', 'P', '', 'Islam', '', 'DUSUN LIBUT DESA SUKAMANDI', '', '', '', '', '', '1', '10900998', 'KJ-10900998-15', '-', 'A-0053741776', 'I-0053741776', '1234', '1234', '-', '2019-2020'),
(2750, '0052336988', '4943', 'Rahmat Hidayat', '', 'MALANG LEPAU', '2005-01-23', 'L', '', 'Islam', '', 'DUSUN MALANG LEPAU DESA BURONG MANDI', '', '', '', '', '', '1', '10900998', 'KJ-10900998-15', '-', 'A-0052336988', 'I-0052336988', '1234', '1234', '-', '2019-2020'),
(2749, '0056121702', '4942', 'Popy Yushika', '', 'SUKAMANDI', '2005-04-27', 'P', '', 'Islam', '', 'DUSUN LIBUT DESA SUKAMANDI', '', '', '', '', '', '1', '10900998', 'KJ-10900998-15', '-', 'A-0056121702', 'I-0056121702', '1234', '1234', '-', '2019-2020'),
(2747, '0052336928', '4940', 'Nadya Feronica', '', 'MENGKUBANG', '2005-08-06', 'P', '', 'Islam', '', 'DUSUN SUKADAMAI DESA MENGKUBANG', '', '', '', '', '', '1', '10900998', 'KJ-10900998-15', '-', 'A-0052336928', 'I-0052336928', '1234', '1234', '-', '2019-2020'),
(2748, '0055087340', '4941', 'Nur Ella', '', 'MENGKUBANG', '2005-05-05', 'P', '', 'Islam', '', 'DUSUN BURUNG MANDI DESA BURONG MANDI', '', '', '', '', '', '1', '10900998', 'KJ-10900998-15', '-', 'A-0055087340', 'I-0055087340', '1234', '1234', '-', '2019-2020'),
(2744, '0059360714', '4937', 'Lara Lorenza', '', 'SUKAMANDI', '2005-11-26', 'P', '', 'Islam', '', 'DUSUN GARUMEDANG DESA SUKAMANDI', '', '', '', '', '', '1', '10900998', 'KJ-10900998-15', '-', 'A-0059360714', 'I-0059360714', '1234', '1234', '-', '2019-2020'),
(2745, '0059347498', '4938', 'Meisy Brezelia', '', 'MANGGAR', '2005-05-13', 'P', '', 'Budha', '', 'DUSUN SUKAMANDI', '', '', '', '', '', '1', '10900998', 'KJ-10900998-15', '-', 'A-0059347498', 'I-0059347498', '1234', '1234', '-', '2019-2020'),
(2746, '0045910086', '4939', 'Mico Setiawan', '', 'MENGKUBANG', '2004-12-27', 'L', '', 'Islam', '', 'DUSUN DAMAR DESA MENGKUBANG', '', '', '', '', '', '1', '10900998', 'KJ-10900998-15', '-', 'A-0045910086', 'I-0045910086', '1234', '1234', '-', '2019-2020'),
(2743, '0049989597', '4936', 'Karlina Wandira', '', 'MENGKUBANG', '2004-10-08', 'P', '', 'Islam', '', 'DUSUN DAMAI BARU DESA MENGKUBANG', '', '', '', '', '', '1', '10900998', 'KJ-10900998-15', '-', 'A-0049989597', 'I-0049989597', '1234', '1234', '-', '2019-2020'),
(2742, '0043843779', '4935', 'Jerry Andriansyah Putra', '', 'MENGKUBANG', '2004-01-19', 'L', '', 'Islam', '', 'DUSUN DAMAI BARU DESA MENGKUBANG', '', '', '', '', '', '1', '10900998', 'KJ-10900998-15', '-', 'A-0043843779', 'I-0043843779', '1234', '1234', '-', '2019-2020'),
(2740, '0049666342', '4933', 'Giral Hendiarta', '', 'BATU ITAM', '2004-09-18', 'L', '', 'Islam', '', 'DUSUN LIBUT DESA SUKAMANDI', '', '', '', '', '', '1', '10900998', 'KJ-10900998-15', '-', 'A-0049666342', 'I-0049666342', '1234', '1234', '-', '2019-2020'),
(2741, '0052336925', '4934', 'Indah Syahfira', '', 'MENGKUBANG', '2005-06-08', 'P', '', 'Islam', '', 'DUSUN DAMAI BARU DESA MENGKUBANG', '', '', '', '', '', '1', '10900998', 'KJ-10900998-15', '-', 'A-0052336925', 'I-0052336925', '1234', '1234', '-', '2019-2020'),
(2736, '0052336981', '4926', 'Defri', '', 'SUKAMANDI', '2005-10-31', 'L', '', 'Islam', '', 'DUSUN LIBUT', '', '', '', '', '', '1', '10900998', 'KJ-10900998-15', '-', 'A-0052336981', 'I-0052336981', '1234', '1234', '-', '2019-2020'),
(2737, '0058420234', '4929', 'Ericha Amelia', '', 'SUKAMANDI', '2005-03-17', 'P', '', 'Islam', '', 'DUSUN LIBUT DESA SUKAMANDI', '', '', '', '', '', '1', '10900998', 'KJ-10900998-15', '-', 'A-0058420234', 'I-0058420234', '1234', '1234', '-', '2019-2020'),
(2738, '0041398075', '4930', 'Faldit Suranda', '', 'MENGKUBANG', '2004-04-27', 'L', '', 'Islam', '', 'DUSUN SUKADAMAI DESA MENGKUBANG', '', '', '', '', '', '1', '10900998', 'KJ-10900998-15', '-', 'A-0041398075', 'I-0041398075', '1234', '1234', '-', '2019-2020'),
(2739, '0041411024', '4931', 'Fani Hidaya', '', 'BURUNG MANDI', '2004-02-06', 'L', '', 'Islam', '', 'DUSUN BURUNG MANDI DESA BURONG MANDI', '', '', '', '', '', '1', '10900998', 'KJ-10900998-15', '-', 'A-0041411024', 'I-0041411024', '1234', '1234', '-', '2019-2020'),
(2734, '0054925771', '4924', 'Arta Meiviana', '', 'MENGKUBANG', '2005-05-31', 'P', '', 'Islam', '', 'DUSUN KEBUN SAYUR DESA MENGKUBANG', '', '', '', '', '', '1', '10900998', 'KJ-10900998-15', '-', 'A-0054925771', 'I-0054925771', '1234', '1234', '-', '2019-2020'),
(2735, '0052336935', '4925', 'Aurora Oranda Agata', '', 'SUKAMANDI', '2005-11-24', 'P', '', 'Islam', '', 'DUSUN DAMAR DESA MENGKUBANG', '', '', '', '', '', '1', '10900998', 'KJ-10900998-15', '-', 'A-0052336935', 'I-0052336935', '1234', '1234', '-', '2019-2020'),
(2733, '0057692889', '4923', 'Arbi', '', 'BANGKA', '2005-07-18', 'L', '', 'Islam', '', 'DUSUN BURUNG MANDI DESA BURONG MANDI', '', '', '', '', '', '1', '10900998', 'KJ-10900998-15', '-', 'A-0057692889', 'I-0057692889', '1234', '1234', '-', '2019-2020'),
(2731, '0052336975', '4921', 'Agus Setiawan', '', 'MENGKUBANG', '2005-08-14', 'L', '', 'Islam', '', 'DUSUN DAMAR DESA MENGKUBANG', '', '', '', '', '', '1', '10900998', 'KJ-10900998-15', '-', 'A-0052336975', 'I-0052336975', '1234', '1234', '-', '2019-2020'),
(2732, '0041411026', '4922', 'Alfi Pratama', '', 'BURUNG MANDI', '2004-02-20', 'L', '', 'Islam', '', 'DUSUN BURUNG MANDI DESA BURONG MANDI', '', '', '', '', '', '1', '10900998', 'KJ-10900998-15', '-', 'A-0041411026', 'I-0041411026', '1234', '1234', '-', '2019-2020'),
(2730, '0051640516', '4920', 'Yulianda Frayoga', '', 'SUKAMANDI', '2005-07-13', 'L', '', 'Islam', '', 'DUSUN SUKAMANDI', '', '', '', '', '', '1', '10900998', 'KJ-10900998-14', '-', 'A-0051640516', 'I-0051640516', '1234', '1234', '-', '2019-2020'),
(2728, '0052336926', '4918', 'Vier Alvarezi', '', 'SUKAMANDI', '2005-06-15', 'L', '', 'Islam', '', 'DUSUN LIBUT', '', '', '', '', '', '1', '10900998', 'KJ-10900998-14', '-', 'A-0052336926', 'I-0052336926', '1234', '1234', '-', '2019-2020'),
(2729, '0051784613', '4919', 'Yessa', '', 'SUKAMANDI', '2005-07-03', 'P', '', 'Islam', '', 'DUSUN LIBUT', '', '', '', '', '', '1', '10900998', 'KJ-10900998-14', '-', 'A-0051784613', 'I-0051784613', '1234', '1234', '-', '2019-2020'),
(2727, '0041398065', '4792', 'Veriansyah', '', 'Sukamandi', '2004-03-09', 'L', '', 'Islam', '', 'Dusun Libut', '', '', '', '', '', '1', '10900998', 'KJ-10900998-14', '-', 'A-0041398065', 'I-0041398065', '1234', '1234', '-', '2019-2020'),
(2726, '0053152906', '4917', 'Umar Sahaya', '', 'TEGAL', '2005-08-24', 'L', '', 'Islam', '', 'DUSUN SUKAMANDI', '', '', '', '', '', '1', '10900998', 'KJ-10900998-14', '-', 'A-0053152906', 'I-0053152906', '1234', '1234', '-', '2019-2020'),
(2724, '0054311024', '4915', 'Sita Purwati', '', 'SUKAMANDI', '2005-10-16', 'P', '', 'Islam', '', 'DUSUN SUKADAMAI DESA MENGKUBANG', '', '', '', '', '', '1', '10900998', 'KJ-10900998-14', '-', 'A-0054311024', 'I-0054311024', '1234', '1234', '-', '2019-2020'),
(2725, '0051661312', '4916', 'Sulistiawan', '', 'MENGKUBANG', '2005-03-16', 'L', '', 'Islam', '', 'DUSUN LIBUT DESA SUKAMANDI', '', '', '', '', '', '1', '10900998', 'KJ-10900998-14', '-', 'A-0051661312', 'I-0051661312', '1234', '1234', '-', '2019-2020'),
(2722, '0052336919', '4913', 'Selyana Eka Priyadi', '', 'BREBES', '2005-05-10', 'P', '', 'Islam', '', 'DUSUN DAMAI BARU', '', '', '', '', '', '1', '10900998', 'KJ-10900998-14', '-', 'A-0052336919', 'I-0052336919', '1234', '1234', '-', '2019-2020'),
(2723, '0041399071', '4914', 'Serdy Julfianda', '', 'PANGKAL PINANG', '2004-07-16', 'L', '', 'Islam', '', 'DUSUN GARUMEDANG DESA SUKAMANDI', '', '', '', '', '', '1', '10900998', 'KJ-10900998-14', '-', 'A-0041399071', 'I-0041399071', '1234', '1234', '-', '2019-2020'),
(2720, '0054104928', '4911', 'Saskia Awalia', '', 'MENGKUBANG', '2005-05-27', 'L', '', 'Islam', '', 'DUSUN DAMAI BARU DESA MENGKUBANG', '', '', '', '', '', '1', '10900998', 'KJ-10900998-14', '-', 'A-0054104928', 'I-0054104928', '1234', '1234', '-', '2019-2020'),
(2721, '0052337003', '4912', 'Satrio', '', 'BURUNG MANDI', '2005-06-22', 'L', '', 'Islam', '', 'DUSUN TANAH TEBOK', '', '', '', '', '', '1', '10900998', 'KJ-10900998-14', '-', 'A-0052337003', 'I-0052337003', '1234', '1234', '-', '2019-2020'),
(2719, '0052336978', '4910', 'Salwa Salsabila', '', 'MENGKUBANG', '2005-09-03', 'P', '', 'Islam', '', 'DUSUN SUKADAMAI', '', '', '', '', '', '1', '10900998', 'KJ-10900998-14', '-', 'A-0052336978', 'I-0052336978', '1234', '1234', '-', '2019-2020'),
(2716, '0054180505', '4907', 'Riswan', '', 'BURUNG MANDI', '2005-08-12', 'L', '', 'Islam', '', 'DUSUN MALANG LEPAU', '', '', '', '', '', '1', '10900998', 'KJ-10900998-14', '-', 'A-0054180505', 'I-0054180505', '1234', '1234', '-', '2019-2020'),
(2717, '0052478266', '4908', 'Rivaldo', '', 'MENGKUBANG', '2005-05-12', 'L', '', 'Islam', '', 'DUSUN SUKADAMAI DESA MENGKUBANG', '', '', '', '', '', '1', '10900998', 'KJ-10900998-14', '-', 'A-0052478266', 'I-0052478266', '1234', '1234', '-', '2019-2020'),
(2718, '0049215351', '4909', 'Rizki Fadillah', '', 'BOGOR', '2004-09-02', 'L', '', 'Islam', '', 'DUSUN KEBUN SAYUR DESA MENGKUBANG', '', '', '', '', '', '1', '10900998', 'KJ-10900998-14', '-', 'A-0049215351', 'I-0049215351', '1234', '1234', '-', '2019-2020'),
(2714, '0041411035', '4905', 'Resi Welanda', '', 'BURUNG MANDI', '2004-06-22', 'P', '', 'Islam', '', 'JL. TEMBUSAN DESA BURONG MANDI', '', '', '', '', '', '1', '10900998', 'KJ-10900998-14', '-', 'A-0041411035', 'I-0041411035', '1234', '1234', '-', '2019-2020'),
(2715, '0052336987', '4906', 'Rintan Veronica', '', 'BURUNG MANDI', '2005-01-14', 'P', '', 'Islam', '', 'DUSUN BURUNG MANDI DESA BURONG MANDI', '', '', '', '', '', '1', '10900998', 'KJ-10900998-14', '-', 'A-0052336987', 'I-0052336987', '1234', '1234', '-', '2019-2020'),
(2712, '0026096939', '4903', 'Ramadhan', '', 'BURUNG MANDI', '2002-11-16', 'L', '', 'Islam', '', 'DUSUN TANAH TEBOK DESA BURONG MANDI', '', '', '', '', '', '1', '10900998', 'KJ-10900998-14', '-', 'A-0026096939', 'I-0026096939', '1234', '1234', '-', '2019-2020'),
(2713, '0059358986', '4904', 'Regin Satni', '', 'BURUNG MANDI', '2005-05-22', 'L', '', 'Islam', '', 'DUSUN BURUNG MANDI DESA BURONG MANDI', '', '', '', '', '', '1', '10900998', 'KJ-10900998-14', '-', 'A-0059358986', 'I-0059358986', '1234', '1234', '-', '2019-2020'),
(2710, '0057225684', '4900', 'Meyla Aulia', '', 'GANTUNG', '2005-05-16', 'P', '', 'Islam', '', 'DUSUN SUKADAMAI DESA MENGKUBANG', '', '', '', '', '', '1', '10900998', 'KJ-10900998-14', '-', 'A-0057225684', 'I-0057225684', '1234', '1234', '-', '2019-2020'),
(2711, '0022390969', '4901', 'Ongki Adriano', '', 'BURUNG MANDI', '2005-10-05', 'L', '', 'Islam', '', 'DUSUN TANAH TEBOK DESA BURONG MANDI', '', '', '', '', '', '1', '10900998', 'KJ-10900998-14', '-', 'A-0022390969', 'I-0022390969', '1234', '1234', '-', '2019-2020'),
(2707, '0059218076', '4896', 'Billal Ergin Wahyudi', '', 'SUKAMANDI', '2005-05-07', 'L', '', 'Islam', '', 'DUSUN LIBUT', '', '', '', '', '', '1', '10900998', 'KJ-10900998-14', '-', 'A-0059218076', 'I-0059218076', '1234', '1234', '-', '2019-2020'),
(2708, '0036166730', '4661', 'Bimas', '', 'Mengkubang', '2003-12-22', 'L', '', 'Islam', '', 'Dusun Garumedang', '', '', '', '', '', '1', '10900998', 'KJ-10900998-14', '-', 'A-0036166730', 'I-0036166730', '1234', '1234', '-', '2019-2020'),
(2709, '0052336990', '4899', 'Mesi Sri Devi', '', 'BURUNG MANDI', '2005-02-26', 'P', '', 'Islam', '', 'DUSUN BURUNG MANDI DESA BURONG MANDI', '', '', '', '', '', '1', '10900998', 'KJ-10900998-14', '-', 'A-0052336990', 'I-0052336990', '1234', '1234', '-', '2019-2020'),
(2706, '0052698244', '4895', 'Bela Dewanti Junaedi', '', 'SUKAMANDI', '2005-06-05', 'P', '', 'Islam', '', 'DUSUN LIBUT DESA SUKAMANDI', '', '', '', '', '', '1', '10900998', 'KJ-10900998-14', '-', 'A-0052698244', 'I-0052698244', '1234', '1234', '-', '2019-2020'),
(2703, '0052336920', '4892', 'Almirul Mukmin', '', 'TANJUNG PANDAN', '2005-05-13', 'L', '', 'Islam', '', 'DUSUN SUKADAMAI DESA MENGKUBANG', '', '', '', '', '', '1', '10900998', 'KJ-10900998-14', '-', 'A-0052336920', 'I-0052336920', '1234', '1234', '-', '2019-2020'),
(2704, '0057205068', '4893', 'Alpin Ardiansyah', '', 'SUKAMANDI', '2005-03-15', 'L', '', 'Islam', '', 'DUSUN GARUMEDANG DESA SUKAMANDI', '', '', '', '', '', '1', '10900998', 'KJ-10900998-14', '-', 'A-0057205068', 'I-0057205068', '1234', '1234', '-', '2019-2020'),
(2705, '0065516258', '4894', 'Alyasa Naylla Suhada', '', 'JAMBI', '2006-01-29', 'P', '', 'Islam', '', 'JL.SUMATERA DESA SUKAMANDI', '', '', '', '', '', '1', '10900998', 'KJ-10900998-14', '-', 'A-0065516258', 'I-0065516258', '1234', '1234', '-', '2019-2020'),
(2701, '0052533019', '4890', 'Aditya', '', 'SUKAMANDI', '2005-01-06', 'L', '', 'Islam', '', 'DUSUN SUKAMANDI', '', '', '', '', '', '1', '10900998', 'KJ-10900998-14', '-', 'A-0052533019', 'I-0052533019', '1234', '1234', '-', '2019-2020'),
(2702, '0035495860', '4891', 'Aldi Syaputra', '', 'MANGGAR', '2003-11-11', 'L', '', 'Islam', '', 'DUSUN MALANG LEPAU', '', '', '', '', '', '1', '10900998', 'KJ-10900998-14', '-', 'A-0035495860', 'I-0035495860', '1234', '1234', '-', '2019-2020'),
(2699, '0054207172', '4888', 'Tasya Marsella', '', 'MENGKUBANG', '2005-03-28', 'P', '', 'Islam', '', 'DUSUN DAMAI BARU DESA MENGKUBANG', '', '', '', '', '', '1', '10900998', 'KJ-10900998-13', '-', 'A-0054207172', 'I-0054207172', '1234', '1234', '-', '2019-2020'),
(2700, '0051549624', '4889', 'Tisa Rahmayanti', '', 'SUKAMANDI', '2005-09-28', 'P', '', 'Islam', '', 'DESA SUKAMANDI', '', '', '', '', '', '1', '10900998', 'KJ-10900998-13', '-', 'A-0051549624', 'I-0051549624', '1234', '1234', '-', '2019-2020'),
(2697, '0045689571', '4886', 'Sulastri', '', 'MANGGAR', '2004-09-21', 'P', '', 'Islam', '', 'DESA SUKAMANDI', '', '', '', '', '', '1', '10900998', 'KJ-10900998-13', '-', 'A-0045689571', 'I-0045689571', '1234', '1234', '-', '2019-2020'),
(2698, '0052337013', '4887', 'Suyanda Cahya Saputra', '', 'MALANG LEPAU', '2005-08-21', 'L', '', 'Islam', '', 'DUSUN TANAH TEBOK DESA BURONG MANDI', '', '', '', '', '', '1', '10900998', 'KJ-10900998-13', '-', 'A-0052337013', 'I-0052337013', '1234', '1234', '-', '2019-2020'),
(2695, '0052336993', '4884', 'Sani', '', 'BURUNG MANDI', '2005-04-06', 'P', '', 'Islam', '', 'DUSUN MALANG LEPAU DESA BURONG MANDI', '', '', '', '', '', '1', '10900998', 'KJ-10900998-13', '-', 'A-0052336993', 'I-0052336993', '1234', '1234', '-', '2019-2020'),
(2696, '0047441025', '4885', 'Sartika', '', 'SUKAMANDI', '2004-11-25', 'P', '', 'Islam', '', 'DUSUN GARUMEDANG DESA SUKAMANDI', '', '', '', '', '', '1', '10900998', 'KJ-10900998-13', '-', 'A-0047441025', 'I-0047441025', '1234', '1234', '-', '2019-2020'),
(2693, '0043563125', '4883', 'Samukri', '', 'MENGKUBANG', '2004-10-02', 'L', '', 'Islam', '', 'DUSUN DAMAI BARU DESA MENGKUBANG', '', '', '', '', '', '1', '10900998', 'KJ-10900998-13', '-', 'A-0043563125', 'I-0043563125', '1234', '1234', '-', '2019-2020'),
(2694, '0052336977', '4882', 'Sandra Ayu Wahyuni', '', 'TANJUNG PANDAN', '2005-08-24', 'P', '', 'Islam', '', 'DUSUN DAMAR DESA MENGKUBANG', '', '', '', '', '', '1', '10900998', 'KJ-10900998-13', '-', 'A-0052336977', 'I-0052336977', '1234', '1234', '-', '2019-2020'),
(2692, '0041411025', '4881', 'Riszky Firmansyah', '', 'BURUNG MANDI', '2004-02-15', 'L', '', 'Islam', '', 'DUSUN BURUNG MANDI DESA BURONG MANDI', '', '', '', '', '', '1', '10900998', 'KJ-10900998-13', '-', 'A-0041411025', 'I-0041411025', '1234', '1234', '-', '2019-2020'),
(2691, '0045559964', '4880', 'Rama Yanda', '', 'MENGKUBANG', '2004-10-21', 'L', '', 'Islam', '', 'DUSUN LIBUT DESA SUKAMANDI', '', '', '', '', '', '1', '10900998', 'KJ-10900998-13', '-', 'A-0045559964', 'I-0045559964', '1234', '1234', '-', '2019-2020'),
(2690, '0046747530', '4879', 'Nopa Listia Rinata', '', 'CIANJUR', '2004-11-18', 'P', '', 'Islam', '', 'DUSUN LIBUT DESA SUKAMANDI', '', '', '', '', '', '1', '10900998', 'KJ-10900998-13', '-', 'A-0046747530', 'I-0046747530', '1234', '1234', '-', '2019-2020'),
(2688, '0054634502', '4877', 'Mutiya', '', 'MALANG LEPAU', '2005-09-08', 'P', '', 'Islam', '', 'DUSUN MALANG LEPAU DESA BURONG MANDI', '', '', '', '', '', '1', '10900998', 'KJ-10900998-13', '-', 'A-0054634502', 'I-0054634502', '1234', '1234', '-', '2019-2020'),
(2689, '0052336989', '4878', 'Naufal Yasir', '', 'MENGKUBANG', '2005-01-29', 'L', '', 'Islam', '', 'DUSUN BURUNG MANDI', '', '', '', '', '', '1', '10900998', 'KJ-10900998-13', '-', 'A-0052336989', 'I-0052336989', '1234', '1234', '-', '2019-2020'),
(2686, '0042109175', '4874', 'Migdad Muhamad', '', 'SUKAMANDI', '2004-12-04', 'L', '', 'Islam', '', 'DUSUN KEBUN SAYUR DESA MENGKUBANG', '', '', '', '', '', '1', '10900998', 'KJ-10900998-13', '-', 'A-0042109175', 'I-0042109175', '1234', '1234', '-', '2019-2020'),
(2687, '0045910108', '4876', 'Muhammad Ayubby Desto', '', 'NGAWI', '2004-12-02', 'L', '', 'Islam', '', 'DUSUN KEBUN SAYUR DESA MENGKUBANG', '', '', '', '', '', '1', '10900998', 'KJ-10900998-13', '-', 'A-0045910108', 'I-0045910108', '1234', '1234', '-', '2019-2020'),
(2684, '0052337005', '4872', 'Manda', '', 'BURUNG MANDI', '2005-06-27', 'P', '', 'Islam', '', 'DUSUN MALANG LAPAU DESA BURONG MANDI', '', '', '', '', '', '1', '10900998', 'KJ-10900998-13', '-', 'A-0052337005', 'I-0052337005', '1234', '1234', '-', '2019-2020'),
(2685, '0052336972', '4873', 'Merlinda', '', 'SUKAMANDI', '2005-05-24', 'P', '', 'Islam', '', 'DUSUN LIBUT DESA SUKAMANDI', '', '', '', '', '', '1', '10900998', 'KJ-10900998-13', '-', 'A-0052336972', 'I-0052336972', '1234', '1234', '-', '2019-2020'),
(2683, '0041398073', '4871', 'Kristin Wijaya', '', 'SUKAMANDI', '2004-04-25', 'L', '', 'Islam', '', 'DUSUN LIBUT DESA SUKAMANDI', '', '', '', '', '', '1', '10900998', 'KJ-10900998-13', '-', 'A-0041398073', 'I-0041398073', '1234', '1234', '-', '2019-2020'),
(2682, '0055926468', '4870', 'Karunia Wijaya', '', 'TANJUNG PANDAN', '2005-07-18', 'P', '', 'Islam', '', 'DESA SUKAMANDI', '', '', '', '', '', '1', '10900998', 'KJ-10900998-13', '-', 'A-0055926468', 'I-0055926468', '1234', '1234', '-', '2019-2020'),
(2678, '0032636787', '4866', 'Elin Kartika Sari', '', 'BURUNG MANDI', '2003-04-15', 'P', '', 'Islam', '', 'DUSUN MALANG LEPAU DESA BURONG MANDI', '', '', '', '', '', '1', '10900998', 'KJ-10900998-13', '-', 'A-0032636787', 'I-0032636787', '1234', '1234', '-', '2019-2020'),
(2679, '0041399420', '4867', 'Era Serviana', '', 'MANGGAR', '2004-01-15', 'P', '', 'Islam', '', 'DUSUN KEBUN SAYUR DESA MENGKUBANG', '', '', '', '', '', '1', '10900998', 'KJ-10900998-13', '-', 'A-0041399420', 'I-0041399420', '1234', '1234', '-', '2019-2020'),
(2680, '0058059596', '4868', 'Fitrah Pribadi', '', 'SUKAMANDI', '2005-11-06', 'L', '', 'Islam', '', 'DUSUN GARUMEDANG DESA SUKAMANDI', '', '', '', '', '', '1', '10900998', 'KJ-10900998-13', '-', 'A-0058059596', 'I-0058059596', '1234', '1234', '-', '2019-2020'),
(2681, '0056779484', '4869', 'Janes Prayoga', '', 'SUKAMANDI', '2005-08-25', 'L', '', 'Islam', '', 'DESA SUKAMANDI', '', '', '', '', '', '1', '10900998', 'KJ-10900998-13', '-', 'A-0056779484', 'I-0056779484', '1234', '1234', '-', '2019-2020'),
(2677, '0032636658', '4865', 'Dimas', '', 'MENGKUBANG', '2003-04-26', 'L', '', 'Islam', '', 'DUSUN DAMAI BARU DESA MENGKUBANG', '', '', '', '', '', '1', '10900998', 'KJ-10900998-13', '-', 'A-0032636658', 'I-0032636658', '1234', '1234', '-', '2019-2020'),
(2676, '0041411036', '4864', 'Dhaila Lastari', '', 'TANJUNG PANDAN', '2004-06-23', 'P', '', 'Islam', '', 'DUSUN TANAH TEBOK DESA BURONG MANDI', '', '', '', '', '', '1', '10900998', 'KJ-10900998-13', '-', 'A-0041411036', 'I-0041411036', '1234', '1234', '-', '2019-2020'),
(2675, '0053692557', '4863', 'Cindy Octavia', '', 'JAKARTA', '2005-10-18', 'P', '', 'Budha', '', 'DUSUN KEBUN SAYUR DESA MENGKUBANG', '', '', '', '', '', '1', '10900998', 'KJ-10900998-13', '-', 'A-0053692557', 'I-0053692557', '1234', '1234', '-', '2019-2020'),
(2674, '0052336914', '4862', 'Caryn Regina Yap', '', 'JAKARTA', '2005-03-21', 'P', '', 'Budha', '', 'DUSUN KEBUN SAYUR DESA MENGKUBANG', '', '', '', '', '', '1', '10900998', 'KJ-10900998-13', '-', 'A-0052336914', 'I-0052336914', '1234', '1234', '-', '2019-2020'),
(2671, '0046865238', '4859', 'Adrian', '', 'SUKAMANDI', '2004-10-30', 'L', '', 'Islam', '', 'DESA SUKAMANDI', '', '', '', '', '', '1', '10900998', 'KJ-10900998-13', '-', 'A-0046865238', 'I-0046865238', '1234', '1234', '-', '2019-2020'),
(2672, '0052336976', '4860', 'Agil Ferdian', '', 'SUKAMANDI', '2005-08-16', 'L', '', 'Islam', '', 'DUSUN GARUMEDANG DESA SUKAMANDI', '', '', '', '', '', '1', '10900998', 'KJ-10900998-13', '-', 'A-0052336976', 'I-0052336976', '1234', '1234', '-', '2019-2020'),
(2673, '0051864400', '4861', 'Anastasya Selvina Saputri', '', 'MANGGAR', '2005-08-24', 'P', '', 'Islam', '', 'DUSUN GARUEDANG DESA SUKAMANDI', '', '', '', '', '', '1', '10900998', 'KJ-10900998-13', '-', 'A-0051864400', 'I-0051864400', '1234', '1234', '-', '2019-2020'),
(2669, '0059994371', '4857', 'Tasya Adelia', '', 'JAKARTA', '2005-05-27', 'P', '', 'Budha', '', 'DUSUN LIBUT DESA SUKAMANDI', '', '', '', '', '', '1', '10900998', 'KJ-10900998-12', '-', 'A-0059994371', 'I-0059994371', '1234', '1234', '-', '2019-2020'),
(2670, '0053794533', '4858', 'Yola Eliza', '', 'SELINSING', '2005-06-02', 'P', '', 'Islam', '', 'DUSUN LIBUT DESA SUKAMANDI', '', '', '', '', '', '1', '10900998', 'KJ-10900998-12', '-', 'A-0053794533', 'I-0053794533', '1234', '1234', '-', '2019-2020'),
(2666, '0054922056', '4854', 'Shareen Tjendra', '', 'TANJUNG PANDAN', '2005-08-12', 'P', '', 'Islam', '', 'DUSUN SUKAMANDI', '', '', '', '', '', '1', '10900998', 'KJ-10900998-12', '-', 'A-0054922056', 'I-0054922056', '1234', '1234', '-', '2019-2020'),
(2667, '0052336931', '4855', 'Steven Halim Wijaya', '', 'TANJUNG PANDAN', '2005-09-05', 'L', '', 'Budha', '', 'DUSUN DAMAR DESA MENGKUBANG', '', '', '', '', '', '1', '10900998', 'KJ-10900998-12', '-', 'A-0052336931', 'I-0052336931', '1234', '1234', '-', '2019-2020'),
(2668, '0048677365', '4856', 'Sutriyani', '', 'LANGKANG', '2004-08-13', 'P', '', 'Islam', '', 'DUSUN GARUMEDANG DESA SUKAMANDI', '', '', '', '', '', '1', '10900998', 'KJ-10900998-12', '-', 'A-0048677365', 'I-0048677365', '1234', '1234', '-', '2019-2020'),
(2663, '0052336973', '4851', 'Rizky Pratama', '', 'SUKAMANDI', '2005-06-23', 'L', '', 'Islam', '', 'DUSUN DAMAR DESA MENGKUBANG', '', '', '', '', '', '1', '10900998', 'KJ-10900998-12', '-', 'A-0052336973', 'I-0052336973', '1234', '1234', '-', '2019-2020'),
(2664, '0051214483', '4852', 'Rosalinda', '', 'SUKAMANDI', '2005-03-30', 'P', '', 'Islam', '', 'DUSUN GARUMEDANG DESA SEKAMANDI', '', '', '', '', '', '1', '10900998', 'KJ-10900998-12', '-', 'A-0051214483', 'I-0051214483', '1234', '1234', '-', '2019-2020'),
(2665, '0056554413', '4853', 'Satrio', '', 'MENGKUBANG', '2005-11-06', 'L', '', 'Islam', '', 'DUSUN DAMAI BARU DESA MENGKUBANG', '', '', '', '', '', '1', '10900998', 'KJ-10900998-12', '-', 'A-0056554413', 'I-0056554413', '1234', '1234', '-', '2019-2020'),
(2662, '0058219895', '4850', 'Reno', '', 'SUKAMANDI', '2005-02-27', 'L', '', 'Islam', '', 'DUSUN GARUMEDANG DESA SUKAMANDI', '', '', '', '', '', '1', '10900998', 'KJ-10900998-12', '-', 'A-0058219895', 'I-0058219895', '1234', '1234', '-', '2019-2020'),
(2659, '0049934847', '4846', 'Novriansyah', '', 'SUKAMANDI', '2004-11-29', 'L', '', 'Islam', '', 'DUSUN LIBUT DESA SUKAMANDI', '', '', '', '', '', '1', '10900998', 'KJ-10900998-12', '-', 'A-0049934847', 'I-0049934847', '1234', '1234', '-', '2019-2020'),
(2660, '0035495858', '4848', 'Oji Okta Barian', '', 'MENGKUBANG', '2003-10-06', 'L', '', 'Islam', '', 'DUSUN TANAH TEBOK DESA BURONG MANDI', '', '', '', '', '', '1', '10900998', 'KJ-10900998-12', '-', 'A-0035495858', 'I-0035495858', '1234', '1234', '-', '2019-2020'),
(2661, '0044884792', '4849', 'Ragil Raharja', '', 'SUKAMANDI', '2004-11-19', 'L', '', 'Islam', '', 'DUSUN LIBUT DESA SUKAMANDI', '', '', '', '', '', '1', '10900998', 'KJ-10900998-12', '-', 'A-0044884792', 'I-0044884792', '1234', '1234', '-', '2019-2020'),
(2655, '0052337004', '4842', 'Kristina', '', 'BURUNG MANDI', '2005-06-26', 'P', '', 'Islam', '', 'DUSUN TANAH TEBOK DESA BURONG MANDI', '', '', '', '', '', '1', '10900998', 'KJ-10900998-12', '-', 'A-0052337004', 'I-0052337004', '1234', '1234', '-', '2019-2020'),
(2656, '0020721757', '4843', 'Lusiana', '', 'BURONG MANDI', '2002-11-19', 'P', '', 'Islam', '', 'DUSUN MALANG LEPAU DESA BURONG MANDI', '', '', '', '', '', '1', '10900998', 'KJ-10900998-12', '-', 'A-0020721757', 'I-0020721757', '1234', '1234', '-', '2019-2020'),
(2657, '0054374095', '4844', 'Melinda Putri', '', 'SUKAMANDI', '2005-02-03', 'P', '', 'Islam', '', 'DUSUN LIBUT', '', '', '', '', '', '1', '10900998', 'KJ-10900998-12', '-', 'A-0054374095', 'I-0054374095', '1234', '1234', '-', '2019-2020'),
(2658, '0032636794', '4845', 'Neza Ozari', '', 'TANJUNG PANDAN', '2003-09-19', 'L', '', 'Islam', '', 'DUSUN BURUNG MANDI', '', '', '', '', '', '1', '10900998', 'KJ-10900998-12', '-', 'A-0032636794', 'I-0032636794', '1234', '1234', '-', '2019-2020'),
(2651, '0052336999', '4838', 'Egil Grestian', '', 'BURUNG MANDI', '2005-05-28', 'L', '', 'Islam', '', 'DUSUN BURUNG MANDI DESA BURONG MANDI', '', '', '', '', '', '1', '10900998', 'KJ-10900998-12', '-', 'A-0052336999', 'I-0052336999', '1234', '1234', '-', '2019-2020'),
(2652, '0041411457', '4839', 'Feri Setiawan', '', 'SUKAMANDI', '2004-08-18', 'L', '', 'Islam', '', 'DUSUN LIBUT DESA SUKAMANDI', '', '', '', '', '', '1', '10900998', 'KJ-10900998-12', '-', 'A-0041411457', 'I-0041411457', '1234', '1234', '-', '2019-2020'),
(2653, '0044278701', '4840', 'Imelda Deswara', '', 'SUKAMANDI', '2005-12-15', 'P', '', 'Islam', '', 'DUSUN LIBUT DESA SUKAMANDI', '', '', '', '', '', '1', '10900998', 'KJ-10900998-12', '-', 'A-0044278701', 'I-0044278701', '1234', '1234', '-', '2019-2020'),
(2654, '0052336918', '4841', 'Izhura Tirta', '', 'MENGKUBANG', '2005-04-16', 'L', '', 'Islam', '', 'DUSUN DAMAI BARU DESA MENGKUBANG', '', '', '', '', '', '1', '10900998', 'KJ-10900998-12', '-', 'A-0052336918', 'I-0052336918', '1234', '1234', '-', '2019-2020'),
(2646, '0061522345', '4833', 'Ari Hersa Prasetya', '', 'SUKAMANDI', '2006-01-17', 'L', '', 'Islam', '', 'DUSUN GARUMEDANG DESA SUKAMANDI', '', '', '', '', '', '1', '10900998', 'KJ-10900998-12', '-', 'A-0061522345', 'I-0061522345', '1234', '1234', '-', '2019-2020'),
(2647, '0057234864', '4834', 'Arjuna', '', 'MALANG LEPAU', '2005-07-15', 'L', '', 'Islam', '', 'DUSUN MALANG LEPAU', '', '', '', '', '', '1', '10900998', 'KJ-10900998-12', '-', 'A-0057234864', 'I-0057234864', '1234', '1234', '-', '2019-2020'),
(2648, '0041398071', '4662', 'Danda', '', 'Mengkubang', '2004-04-03', 'L', '', 'Islam', '', 'Dusun Kebun Sayur', '', '', '', '', '', '1', '10900998', 'KJ-10900998-12', '-', 'A-0041398071', 'I-0041398071', '1234', '1234', '-', '2019-2020'),
(2649, '0053112957', '4835', 'Dedi Wahyudi', '', 'MANGGAR', '2005-04-05', 'L', '', 'Islam', '', 'DUSUN KEBUN SAYUR DESA MENGKUBANG', '', '', '', '', '', '1', '10900998', 'KJ-10900998-12', '-', 'A-0053112957', 'I-0053112957', '1234', '1234', '-', '2019-2020'),
(2650, '0063529907', '4837', 'Delia Oktaviani', '', 'MANGGAR', '2005-10-30', 'P', '', 'Islam', '', 'DUSUN SUKADAMAI', '', '', '', '', '', '1', '10900998', 'KJ-10900998-12', '-', 'A-0063529907', 'I-0063529907', '1234', '1234', '-', '2019-2020'),
(2644, '0058023177', '4832', 'Amanda Sari', '', 'MENGKUBANG', '2005-05-16', 'P', '', 'Islam', '', 'DUSUN SUKADAMAI', '', '', '', '', '', '1', '10900998', 'KJ-10900998-12', '-', 'A-0058023177', 'I-0058023177', '1234', '1234', '-', '2019-2020'),
(2645, '0057654045', '4957', 'Andrean Adi Syah Putra', '', 'JAKARTA', '2005-09-19', 'L', '', 'Islam', '', 'DUSUN LIBUT DESA SUKAMANDI', '', '', '', '', '', '1', '10900998', 'KJ-10900998-12', '-', 'A-0057654045', 'I-0057654045', '1234', '1234', '-', '2019-2020'),
(2640, '0026096937', '4827', 'Wahyudi', '', 'MANGGAR', '2005-10-29', 'L', '', 'Islam', '', 'DUSUN MALANG LEPAU DESA BURONG MANDI', '', '', '', '', '', '1', '10900998', 'KJ-10900998-11', '-', 'A-0026096937', 'I-0026096937', '1234', '1234', '-', '2019-2020'),
(2641, '0041411456', '4829', 'Agil Berbiyola', '', 'SUNGAILIAT', '2004-08-17', 'P', '', 'Islam', '', 'DUSUN LIBUT DESA SUKAMANDI', '', '', '', '', '', '1', '10900998', 'KJ-10900998-12', '-', 'A-0041411456', 'I-0041411456', '1234', '1234', '-', '2019-2020'),
(2642, '0059649277', '4830', 'Al Khodri', '', 'SUKAMANDI', '2005-06-27', 'L', '', 'Islam', '', 'DUSUN KEBUN SAYUR DESA MENGKUBANG', '', '', '', '', '', '1', '10900998', 'KJ-10900998-12', '-', 'A-0059649277', 'I-0059649277', '1234', '1234', '-', '2019-2020'),
(2643, '0066387967', '4831', 'Alya Alifia', '', 'SUKAMANDI', '2006-02-06', 'P', '', 'Islam', '', 'JALAN TEREM DESA SUKAMANDI', '', '', '', '', '', '1', '10900998', 'KJ-10900998-12', '-', 'A-0066387967', 'I-0066387967', '1234', '1234', '-', '2019-2020'),
(2639, '0056275275', '4826', 'Veri Setiawan', '', 'MENGKUBANG', '2005-03-12', 'L', '', 'Islam', '', 'DUSUN GARUMEDANG', '', '', '', '', '', '1', '10900998', 'KJ-10900998-11', '-', 'A-0056275275', 'I-0056275275', '1234', '1234', '-', '2019-2020'),
(2638, '0052351599', '4825', 'Tio Pratama', '', 'MANGGAR', '2005-01-14', 'L', '', 'Islam', '', 'DUSUN DAMAI BARU DESA MENGKUBANG', '', '', '', '', '', '1', '10900998', 'KJ-10900998-11', '-', 'A-0052351599', 'I-0052351599', '1234', '1234', '-', '2019-2020'),
(2637, '0052338263', '4824', 'Teddy Saputra', '', 'JAKARTA UTARA', '2005-05-17', 'L', '', 'Islam', '', 'DUSUN SUKADAMAI DESA MENGKUBANG', '', '', '', '', '', '1', '10900998', 'KJ-10900998-11', '-', 'A-0052338263', 'I-0052338263', '1234', '1234', '-', '2019-2020'),
(2636, '0055293931', '4823', 'Syabaniah Dwi Cahyani', '', 'SUKAMANDI', '2005-09-22', 'P', '', 'Islam', '', 'DUSUN LIBUT DESA SUKAMANDI', '', '', '', '', '', '1', '10900998', 'KJ-10900998-11', '-', 'A-0055293931', 'I-0055293931', '1234', '1234', '-', '2019-2020'),
(2633, '0055776967', '4820', 'Satriyo', '', 'SUKAMANDI', '2005-04-23', 'L', '', 'Islam', '', 'DUSUN LIBUT DESA SUKAMANDI', '', '', '', '', '', '1', '10900998', 'KJ-10900998-11', '-', 'A-0055776967', 'I-0055776967', '1234', '1234', '-', '2019-2020'),
(2634, '0045910114', '4949', 'Selpa Yustika', '', 'MENGKUBANG', '2004-11-24', 'P', '', 'Islam', '', 'DUSUN BURUNG MANDI', '', '', '', '', '', '1', '10900998', 'KJ-10900998-11', '-', 'A-0045910114', 'I-0045910114', '1234', '1234', '-', '2019-2020'),
(2635, '0052337014', '4822', 'Susi Fartika', '', 'BURUNG MANDI', '2005-08-30', 'P', '', 'Islam', '', 'DUSUN BURUNG MANDI DESA BURONG MANDI', '', '', '', '', '', '1', '10900998', 'KJ-10900998-11', '-', 'A-0052337014', 'I-0052337014', '1234', '1234', '-', '2019-2020'),
(2632, '0041411034', '4818', 'Rico Saputra', '', 'GANTUNG', '2004-05-21', 'L', '', 'Islam', '', 'DUSUN MALANG LEPAU DESA BURONG MANDI', '', '', '', '', '', '1', '10900998', 'KJ-10900998-11', '-', 'A-0041411034', 'I-0041411034', '1234', '1234', '-', '2019-2020'),
(2631, '0052336913', '4817', 'Rendy Tangkas Sunyata', '', 'SUKAMANDI', '2005-03-12', 'L', '', 'Budha', '', 'DUSUN MEMPAYA', '', '', '', '', '', '1', '10900998', 'KJ-10900998-11', '-', 'A-0052336913', 'I-0052336913', '1234', '1234', '-', '2019-2020'),
(2629, '0057912466', '4816', 'Novianti', '', 'MENGKUBANG', '2005-11-21', 'P', '', 'Islam', '', 'DUSUN TANAH TEBOK DESA BURONG MANDI', '', '', '', '', '', '1', '10900998', 'KJ-10900998-11', '-', 'A-0057912466', 'I-0057912466', '1234', '1234', '-', '2019-2020'),
(2630, '0043188807', '4902', 'Patricia Anggraini', '', 'MENGKUBANG', '2004-12-03', 'P', '', 'Islam', '', 'DUSUN GARUMEDANG DESA SUKAMANDI', '', '', '', '', '', '1', '10900998', 'KJ-10900998-11', '-', 'A-0043188807', 'I-0043188807', '1234', '1234', '-', '2019-2020'),
(2628, '0058231748', '4815', 'Nobiansyah', '', 'SUKAMANDI', '2005-11-30', 'L', '', 'Islam', '', 'DUSUN LIBUT DESA SUKAMANDI', '', '', '', '', '', '1', '10900998', 'KJ-10900998-11', '-', 'A-0058231748', 'I-0058231748', '1234', '1234', '-', '2019-2020'),
(2627, '0052336929', '4813', 'Marsanda', '', 'SUKAMANDI', '2005-08-08', 'P', '', 'Islam', '', 'DUSUN DAMAR DESA MENGKUBANG', '', '', '', '', '', '1', '10900998', 'KJ-10900998-11', '-', 'A-0052336929', 'I-0052336929', '1234', '1234', '-', '2019-2020'),
(2626, '0032636694', '4541', 'Krisna Prabudigantara', '', 'Bandung', '2003-09-01', 'L', '', 'Islam', '', 'Dusun Kebun Sayur Desa Mengkubang', '', '', '', '', '', '1', '10900998', 'KJ-10900998-11', '-', 'A-0032636694', 'I-0032636694', '1234', '1234', '-', '2019-2020'),
(2625, '0052336994', '4810', 'Halimah', '', 'BURUNG MANDI', '2005-04-22', 'P', '', 'Islam', '', 'DUSUN TANAH TEBOK DESA BURONG MANDI', '', '', '', '', '', '1', '10900998', 'KJ-10900998-11', '-', 'A-0052336994', 'I-0052336994', '1234', '1234', '-', '2019-2020'),
(2623, '0058620852', '4808', 'Fedri Ardiansyah', '', 'TABOALI', '2005-02-16', 'L', '', 'Islam', '', 'DESA SUKAMANDI', '', '', '', '', '', '1', '10900998', 'KJ-10900998-11', '-', 'A-0058620852', 'I-0058620852', '1234', '1234', '-', '2019-2020'),
(2624, '0035493513', '4809', 'Gilang Davi Anggara', '', 'TANJUNG PANDAN', '2003-12-15', 'L', '', 'Islam', '', 'DUSUN LIBUT', '', '', '', '', '', '1', '10900998', 'KJ-10900998-11', '-', 'A-0035493513', 'I-0035493513', '1234', '1234', '-', '2019-2020'),
(2622, '0058134915', '4807', 'Engel Sri Dewi', '', 'MEMPAYA', '2005-08-08', 'P', '', 'Islam', '', 'JALAN MELATI DESA SUKAMANDI', '', '', '', '', '', '1', '10900998', 'KJ-10900998-11', '-', 'A-0058134915', 'I-0058134915', '1234', '1234', '-', '2019-2020'),
(2621, '0051189355', '4806', 'Elsania Mustika Sari', '', 'SUKAMANDI', '2005-08-11', 'P', '', 'Islam', '', 'DUSUN LIBUT DESA SUKAMANDI', '', '', '', '', '', '1', '10900998', 'KJ-10900998-11', '-', 'A-0051189355', 'I-0051189355', '1234', '1234', '-', '2019-2020'),
(2620, '0048517208', '4805', 'Dectian Aji Narendra', '', 'DEMAK', '2004-12-04', 'L', '', 'Islam', '', 'JALAN KUINI DESA SUKAMANDI', '', '', '', '', '', '1', '10900998', 'KJ-10900998-11', '-', 'A-0048517208', 'I-0048517208', '1234', '1234', '-', '2019-2020'),
(2619, '0035495862', '4804', 'Dea Amelia', '', 'PULAU SEKUNYIT', '2003-12-11', 'P', '', 'Islam', '', 'DUSUN MALANG LEPAU DESA BURONG MANDI', '', '', '', '', '', '1', '10900998', 'KJ-10900998-11', '-', 'A-0035495862', 'I-0035495862', '1234', '1234', '-', '2019-2020'),
(2616, '0052336965', '4801', 'Danil Januar', '', 'MENGKUBANG', '2005-01-02', 'L', '', 'Islam', '', 'MENGKUBANG', '', '', '', '', '', '1', '10900998', 'KJ-10900998-11', '-', 'A-0052336965', 'I-0052336965', '1234', '1234', '-', '2019-2020'),
(2617, '0045097839', '4802', 'Danuwarta', '', 'MENGKUBANG', '2004-10-29', 'L', '', 'Islam', '', 'DESA MENGKUBANG', '', '', '', '', '', '1', '10900998', 'KJ-10900998-11', '-', 'A-0045097839', 'I-0045097839', '1234', '1234', '-', '2019-2020'),
(2618, '0046051339', '4803', 'Dayat', '', 'BANGKALAN', '2004-04-03', 'L', '', 'Islam', '', 'DUSUN LIBUT DESA SUKAMANDI', '', '', '', '', '', '1', '10900998', 'KJ-10900998-11', '-', 'A-0046051339', 'I-0046051339', '1234', '1234', '-', '2019-2020'),
(2615, '0020949757', '4800', 'Anwar', '', 'GARUT', '2002-08-26', 'L', '', 'Islam', '', 'DUSUN DAMAR', '', '', '', '', '', '1', '10900998', 'KJ-10900998-11', '-', 'A-0020949757', 'I-0020949757', '1234', '1234', '-', '2019-2020'),
(2614, '0055205383', '4799', 'Annisa', '', 'TANJUNG PANDAN', '2005-07-03', 'P', '', 'Islam', '', 'SUKAMANDI', '', '', '', '', '', '1', '10900998', 'KJ-10900998-11', '-', 'A-0055205383', 'I-0055205383', '1234', '1234', '-', '2019-2020'),
(2613, '0051133665', '4798', 'Ananda Dwi Putri', '', 'AIR SELUMAR', '2005-10-16', 'P', '', 'Islam', '', 'SUKAMANDI', '', '', '', '', '', '1', '10900998', 'KJ-10900998-11', '-', 'A-0051133665', 'I-0051133665', '1234', '1234', '-', '2019-2020'),
(2609, '0051682164', '5093', 'Vivi Leti', '', 'Sukamandi', '2005-07-28', 'P', '', 'Islam', '', 'Jalan Rambutan', '', '', '', '', '', '1', '10900998', 'KJ-10900998-10', '-', 'A-0051682164', 'I-0051682164', '1234', '1234', '-', '2019-2020'),
(2610, '0061989424', '5094', 'Whanidya Ar Karamy', '', 'Sukamandi', '2006-10-16', 'P', '', 'Islam', '', 'Dusun Sukamandi', '', '', '', '', '', '1', '10900998', 'KJ-10900998-10', '-', 'A-0061989424', 'I-0061989424', '1234', '1234', '-', '2019-2020'),
(2611, '0041411037', '5095', 'Yogi Firmansyah', '', 'Mengkubang', '2004-08-30', 'L', '', 'Islam', '', 'Dusun Burung Mandi', '', '', '', '', '', '1', '10900998', 'KJ-10900998-10', '-', 'A-0041411037', 'I-0041411037', '1234', '1234', '-', '2019-2020'),
(2612, '0052533022', '4797', 'Abel Afriliana', '', 'MENGKUBANG', '2005-04-22', 'P', '', 'Islam', '', 'Mengkubang', '', '', '', '', '', '1', '10900998', 'KJ-10900998-11', '-', 'A-0052533022', 'I-0052533022', '1234', '1234', '-', '2019-2020'),
(2608, '0059446796', '5092', 'Virna Listiana', '', 'Sukamandi', '2005-12-06', 'P', '', 'Islam', '', 'Dsn Garumedang', '', '', '', '', '', '1', '10900998', 'KJ-10900998-10', '-', 'A-0059446796', 'I-0059446796', '1234', '1234', '-', '2019-2020'),
(2606, '0054093722', '5089', 'Rizky Saputra', '', 'Sukamandi', '2005-12-09', 'L', '', 'Islam', '', 'Jl.Terem', '', '', '', '', '', '1', '10900998', 'KJ-10900998-10', '-', 'A-0054093722', 'I-0054093722', '1234', '1234', '-', '2019-2020'),
(2607, '0052336917', '5090', 'Stanly', '', 'Sukamandi', '2005-04-10', 'L', '', 'Budha', '', 'Jl.Pasar Damar', '', '', '', '', '', '1', '10900998', 'KJ-10900998-10', '-', 'A-0052336917', 'I-0052336917', '1234', '1234', '-', '2019-2020'),
(2605, '0045314026', '5088', 'Rico Andrian Darmawan', '', 'Tanjungpandan', '2004-07-11', 'L', '', 'Islam', '', 'Jalan Melati II', '', '', '', '', '', '1', '10900998', 'KJ-10900998-10', '-', 'A-0045314026', 'I-0045314026', '1234', '1234', '-', '2019-2020'),
(2604, '0062184832', '5087', 'Rezi', '', 'Malanglepau', '2006-06-01', 'L', '', 'Islam', '', 'Dusun Tanah Tebok', '', '', '', '', '', '1', '10900998', 'KJ-10900998-10', '-', 'A-0062184832', 'I-0062184832', '1234', '1234', '-', '2019-2020'),
(2601, '0061170291', '5084', 'Nabillah Sri Bintang', '', 'Jakarta', '2006-06-11', 'P', '', 'Islam', '', 'Dsn Damar', '', '', '', '', '', '1', '10900998', 'KJ-10900998-10', '-', 'A-0061170291', 'I-0061170291', '1234', '1234', '-', '2019-2020'),
(2602, '0064549735', '5085', 'Recha Anggela', '', 'Tanjung Pandan', '2006-04-29', 'P', '', 'Islam', '', 'Damai Baru', '', '', '', '', '', '1', '10900998', 'KJ-10900998-10', '-', 'A-0064549735', 'I-0064549735', '1234', '1234', '-', '2019-2020'),
(2603, '0058899351', '5086', 'Redho Amadan', '', 'Sukamandi', '2005-10-23', 'L', '', 'Islam', '', 'Jalan Panggung Pelita', '', '', '', '', '', '1', '10900998', 'KJ-10900998-10', '-', 'A-0058899351', 'I-0058899351', '1234', '1234', '-', '2019-2020'),
(2600, '0063096111', '5083', 'Marsya Asiva', '', 'Tanjung Pandan', '2006-09-16', 'P', '', 'Islam', '', 'Mengkubang', '', '', '', '', '', '1', '10900998', 'KJ-10900998-10', '-', 'A-0063096111', 'I-0063096111', '1234', '1234', '-', '2019-2020'),
(2599, '0062464504', '5082', 'Manda Agustin', '', 'Mengkubang', '2006-08-09', 'P', '', 'Islam', '', 'Ds Damar', '', '', '', '', '', '1', '10900998', 'KJ-10900998-10', '-', 'A-0062464504', 'I-0062464504', '1234', '1234', '-', '2019-2020'),
(2598, '0041212031', '5096', 'Kelvin Anggara', '', 'Kelapa Kampit', '2004-07-16', 'L', '', 'Budha', '', 'Dusun Merak Desa Mempaya', '', '', '', '', '', '1', '10900998', 'KJ-10900998-10', '-', 'A-0041212031', 'I-0041212031', '1234', '1234', '-', '2019-2020'),
(2596, '0062474614', '5080', 'Jhordan Juniansyah', '', 'Sukamandi', '2006-06-08', 'L', '', 'Islam', '', 'Jalan Rambutan', '', '', '', '', '', '1', '10900998', 'KJ-10900998-10', '-', 'A-0062474614', 'I-0062474614', '1234', '1234', '-', '2019-2020'),
(2597, '0062018489', '5081', 'Karisa Berliana', '', 'Sukamandi', '2006-07-13', 'P', '', 'Islam', '', 'Jalan Sumatera', '', '', '', '', '', '1', '10900998', 'KJ-10900998-10', '-', 'A-0062018489', 'I-0062018489', '1234', '1234', '-', '2019-2020'),
(2595, '0069775102', '5079', 'Jevven', '', 'Mengkubang', '2005-09-26', 'L', '', 'Islam', '', 'Dusun Damar', '', '', '', '', '', '1', '10900998', 'KJ-10900998-10', '-', 'A-0069775102', 'I-0069775102', '1234', '1234', '-', '2019-2020'),
(2594, '0051486734', '5078', 'Fitriya', '', 'Manggar', '2005-11-02', 'P', '', 'Islam', '', 'Sukamandi', '', '', '', '', '', '1', '10900998', 'KJ-10900998-10', '-', 'A-0051486734', 'I-0051486734', '1234', '1234', '-', '2019-2020'),
(2593, '0061791156', '5077', 'Feby Intani', '', 'Manggar', '2006-02-04', 'P', '', 'Islam', '', 'Jalan Libut', '', '', '', '', '', '1', '10900998', 'KJ-10900998-10', '-', 'A-0061791156', 'I-0061791156', '1234', '1234', '-', '2019-2020'),
(2591, '0065129199', '5075', 'Ezhy Filka Senanda', '', 'Sukamandi', '2006-02-03', 'L', '', 'Islam', '', 'Jalan Mekanik', '', '', '', '', '', '1', '10900998', 'KJ-10900998-10', '-', 'A-0065129199', 'I-0065129199', '1234', '1234', '-', '2019-2020'),
(2592, '0053445545', '5076', 'Faisal Arizky', '', 'Sukamandi', '2005-12-14', 'L', '', 'Islam', '', 'Jalan Libut', '', '', '', '', '', '1', '10900998', 'KJ-10900998-10', '-', 'A-0053445545', 'I-0053445545', '1234', '1234', '-', '2019-2020'),
(2590, '0067746136', '5074', 'Dinda', '', 'Suka Mandi', '2006-03-18', 'P', '', 'Islam', '', 'Jalan Libut', '', '', '', '', '', '1', '10900998', 'KJ-10900998-10', '-', 'A-0067746136', 'I-0067746136', '1234', '1234', '-', '2019-2020'),
(2589, '0066636020', '5073', 'Dania Alpanti', '', 'Sukamandi', '2006-05-03', 'P', '', 'Islam', '', 'Sukamandi', '', '', '', '', '', '1', '10900998', 'KJ-10900998-10', '-', 'A-0066636020', 'I-0066636020', '1234', '1234', '-', '2019-2020'),
(2588, '0067073671', '5071', 'Ayu Dwi Navita', '', 'Sukamandi', '2006-04-27', 'P', '', 'Islam', '', 'Jalan Libut', '', '', '', '', '', '1', '10900998', 'KJ-10900998-10', '-', 'A-0067073671', 'I-0067073671', '1234', '1234', '-', '2019-2020'),
(2585, '0065413505', '5069', 'Adis Saputri', '', 'Tanjungpandan', '2006-08-15', 'P', '', 'Islam', '', 'Ds Damai Baru', '', '', '', '', '', '1', '10900998', 'KJ-10900998-10', '-', 'A-0065413505', 'I-0065413505', '1234', '1234', '-', '2019-2020'),
(2586, '0069894086', '5070', 'Aldito', '', 'Sukamandi', '2006-08-29', 'L', '', 'Islam', '', 'Jalan Libut', '', '', '', '', '', '1', '10900998', 'KJ-10900998-10', '-', 'A-0069894086', 'I-0069894086', '1234', '1234', '-', '2019-2020'),
(2587, '0069342323', '5072', 'Andres Luwis', '', 'Sukamandi', '2006-10-20', 'L', '', 'Islam', '', 'Jalan Melati', '', '', '', '', '', '1', '10900998', 'KJ-10900998-10', '-', 'A-0069342323', 'I-0069342323', '1234', '1234', '-', '2019-2020'),
(2584, '0063907443', '5068', 'Yuda Afrian', '', 'Sukamandi', '2006-08-24', 'L', '', 'Islam', '', 'Jalan Melati', '', '', '', '', '', '1', '10900998', 'KJ-10900998-9', '-', 'A-0063907443', 'I-0063907443', '1234', '1234', '-', '2019-2020'),
(2581, '0067716818', '5065', 'Satya Wira Wicaksana', '', 'Tanjung Pandan', '2006-05-05', 'L', '', 'Islam', '', 'Jl.Sumatera', '', '', '', '', '', '1', '10900998', 'KJ-10900998-9', '-', 'A-0067716818', 'I-0067716818', '1234', '1234', '-', '2019-2020'),
(2582, '0064846639', '5066', 'Vina Wulandari', '', 'Mengkubang', '2006-07-22', 'P', '', 'Islam', '', 'Dusun Damai Baru', '', '', '', '', '', '1', '10900998', 'KJ-10900998-9', '-', 'A-0064846639', 'I-0064846639', '1234', '1234', '-', '2019-2020'),
(2583, '0061544875', '5067', 'Wulan Oktarina', '', 'Manggar', '2006-10-29', 'P', '', 'Islam', '', 'Jalan Kuini', '', '', '', '', '', '1', '10900998', 'KJ-10900998-9', '-', 'A-0061544875', 'I-0061544875', '1234', '1234', '-', '2019-2020'),
(2580, '0051670413', '5064', 'Rika Fedianti', '', 'Padang Kandis', '2005-12-23', 'P', '', 'Islam', '', 'Pasar Damar', '', '', '', '', '', '1', '10900998', 'KJ-10900998-9', '-', 'A-0051670413', 'I-0051670413', '1234', '1234', '-', '2019-2020'),
(2579, '0056706429', '5063', 'Muhammad Sheandy Firmansyah', '', 'Magetan', '2005-11-17', 'L', '', 'Islam', '', 'Jl.Panggung Pelita', '', '', '', '', '', '1', '10900998', 'KJ-10900998-9', '-', 'A-0056706429', 'I-0056706429', '1234', '1234', '-', '2019-2020'),
(2577, '0045910115', '5061', 'Muhammad Iddris', '', 'Mengkubang', '2004-12-09', 'L', '', 'Islam', '', 'Dusun Burung Mandi', '', '', '', '', '', '1', '10900998', 'KJ-10900998-9', '-', 'A-0045910115', 'I-0045910115', '1234', '1234', '-', '2019-2020'),
(2578, '0068578024', '5062', 'Muhammad Miftha Jannah', '', 'Sukamandi', '2006-04-22', 'L', '', 'Islam', '', 'Jl.Terem', '', '', '', '', '', '1', '10900998', 'KJ-10900998-9', '-', 'A-0068578024', 'I-0068578024', '1234', '1234', '-', '2019-2020'),
(2574, '0063352043', '5058', 'Melinda', '', 'Sukamandi', '2006-04-06', 'P', '', 'Islam', '', 'Jalan Melati', '', '', '', '', '', '1', '10900998', 'KJ-10900998-9', '-', 'A-0063352043', 'I-0063352043', '1234', '1234', '-', '2019-2020'),
(2575, '0065273727', '5059', 'Muhamad Fadhil Akbar', '', 'Sukamandi', '2006-04-22', 'L', '', 'Islam', '', 'Jl.Kebun Sayor', '', '', '', '', '', '1', '10900998', 'KJ-10900998-9', '-', 'A-0065273727', 'I-0065273727', '1234', '1234', '-', '2019-2020'),
(2576, '0068496373', '5060', 'Muhammad Alfath Ferizi', '', 'Manggar', '2006-04-10', 'L', '', 'Islam', '', 'Jalan Sumatra', '', '', '', '', '', '1', '10900998', 'KJ-10900998-9', '-', 'A-0068496373', 'I-0068496373', '1234', '1234', '-', '2019-2020'),
(2573, '0051504585', '5057', 'Marsyah Yunengsih', '', 'Sukamandi', '2005-10-17', 'P', '', 'Islam', '', 'Sukamandi', '', '', '', '', '', '1', '10900998', 'KJ-10900998-9', '-', 'A-0051504585', 'I-0051504585', '1234', '1234', '-', '2019-2020'),
(2571, '0071961061', '5055', 'Laila Thus Sholehah', '', 'Sukamandi', '2006-08-26', 'P', '', 'Islam', '', 'Jalan Melati', '', '', '', '', '', '1', '10900998', 'KJ-10900998-9', '-', 'A-0071961061', 'I-0071961061', '1234', '1234', '-', '2019-2020'),
(2572, '0068867236', '5056', 'Laras Puri Anjani', '', 'Tanjungpandan', '2006-05-27', 'P', '', 'Islam', '', 'Ds Damar', '', '', '', '', '', '1', '10900998', 'KJ-10900998-9', '-', 'A-0068867236', 'I-0068867236', '1234', '1234', '-', '2019-2020'),
(2570, '0055067662', '5054', 'Kevin Novriansyah', '', 'Sukamandi', '2005-11-18', 'L', '', 'Islam', '', 'Jalan Melati', '', '', '', '', '', '1', '10900998', 'KJ-10900998-9', '-', 'A-0055067662', 'I-0055067662', '1234', '1234', '-', '2019-2020'),
(2569, '0058764211', '5053', 'Keisa Ilvi Firgiawan', '', 'Sukamandi', '2005-11-07', 'L', '', 'Islam', '', 'Jalan Melati', '', '', '', '', '', '1', '10900998', 'KJ-10900998-9', '-', 'A-0058764211', 'I-0058764211', '1234', '1234', '-', '2019-2020'),
(2568, '0063671164', '5052', 'Joenatan', '', 'Manggar', '2006-06-16', 'L', '', 'Budha', '', 'Dusun Kebun Sayor', '', '', '', '', '', '1', '10900998', 'KJ-10900998-9', '-', 'A-0063671164', 'I-0063671164', '1234', '1234', '-', '2019-2020'),
(2567, '0052772892', '5051', 'Fajar Ramadhan', '', 'Mengkubang', '2005-10-12', 'L', '', 'Islam', '', 'Ds Kebun Sayor', '', '', '', '', '', '1', '10900998', 'KJ-10900998-9', '-', 'A-0052772892', 'I-0052772892', '1234', '1234', '-', '2019-2020'),
(2566, '0064107656', '5050', 'Elang Satria Nusantara', '', 'Tanjungpandan', '2006-07-18', 'L', '', 'Islam', '', 'Dusun Damar', '', '', '', '', '', '1', '10900998', 'KJ-10900998-9', '-', 'A-0064107656', 'I-0064107656', '1234', '1234', '-', '2019-2020'),
(2565, '0041411452', '4928', 'Dwita Putri Andini', '', 'TANJUNG PANDAN', '2004-07-06', 'P', '', 'Islam', '', 'DUSUN GARUMEDANG DESA SUKAMANDI', '', '', '', '', '', '1', '10900998', 'KJ-10900998-9', '-', 'A-0041411452', 'I-0041411452', '1234', '1234', '-', '2019-2020'),
(2564, '0065721947', '5049', 'Devina Nabila', '', 'Mengkubang', '2006-04-03', 'P', '', 'Islam', '', 'Ds Damai Baru', '', '', '', '', '', '1', '10900998', 'KJ-10900998-9', '-', 'A-0065721947', 'I-0065721947', '1234', '1234', '-', '2019-2020'),
(2560, '0064377702', '5045', 'Anggia Restu Pratiwi', '', 'Mengkubang', '2006-05-27', 'P', '', 'Islam', '', 'Ds Kebun Sayor', '', '', '', '', '', '1', '10900998', 'KJ-10900998-9', '-', 'A-0064377702', 'I-0064377702', '1234', '1234', '-', '2019-2020'),
(2561, '0067573671', '5046', 'Asty Sapitri', '', 'Sukamandi', '2006-08-23', 'P', '', 'Islam', '', 'Dsn Libut', '', '', '', '', '', '1', '10900998', 'KJ-10900998-9', '-', 'A-0067573671', 'I-0067573671', '1234', '1234', '-', '2019-2020'),
(2562, '0067899104', '5047', 'Daffa Dzakwan', '', 'Mengkubang', '2006-01-01', 'L', '', 'Islam', '', 'Dusun Kebun Sayor', '', '', '', '', '', '1', '10900998', 'KJ-10900998-9', '-', 'A-0067899104', 'I-0067899104', '1234', '1234', '-', '2019-2020'),
(2563, '0067725205', '5048', 'Dandi', '', 'Sukamandi', '2006-08-29', 'L', '', 'Islam', '', 'Jalan Rambutan', '', '', '', '', '', '1', '10900998', 'KJ-10900998-9', '-', 'A-0067725205', 'I-0067725205', '1234', '1234', '-', '2019-2020');
INSERT INTO `siswa` (`id`, `nisn`, `nis`, `nama_lengkap`, `nama_panggilan`, `tpt_lahir`, `tgl_lahir`, `jk`, `suku`, `agama`, `no_hp`, `alamat`, `email`, `asal_sekolah`, `tgl_masuk`, `status_masuk`, `tinggal_dengan`, `status`, `npsn`, `kelas_saat_ini`, `foto`, `id_ayah`, `id_ibu`, `pass`, `pass_ortu`, `koord_rumah`, `th_ajaran`) VALUES
(2558, '0055898239', '5043', 'Aldo', '', 'Sukamandi', '2005-10-17', 'L', '', 'Islam', '', 'Jalan Melati', '', '', '', '', '', '1', '10900998', 'KJ-10900998-9', '-', 'A-0055898239', 'I-0055898239', '1234', '1234', '-', '2019-2020'),
(2559, '0063397133', '5044', 'Aliya Lestari', '', 'Mengkubang', '2006-06-03', 'P', '', 'Islam', '', 'Ds Damai Baru', '', '', '', '', '', '1', '10900998', 'KJ-10900998-9', '-', 'A-0063397133', 'I-0063397133', '1234', '1234', '-', '2019-2020'),
(2556, '0065383826', '5041', 'Yoga Ferdiansyah', '', 'Sukamandi', '2006-01-18', 'L', '', 'Islam', '', 'Jalan Mekanik', '', '', '', '', '', '1', '10900998', 'KJ-10900998-8', '-', 'A-0065383826', 'I-0065383826', '1234', '1234', '-', '2019-2020'),
(2557, '0061843911', '5042', 'Agrivina Azhira', '', 'Tangerang', '2006-08-07', 'P', '', 'Islam', '', 'Jl. Melati', '', '', '', '', '', '1', '10900998', 'KJ-10900998-9', '-', 'A-0061843911', 'I-0061843911', '1234', '1234', '-', '2019-2020'),
(2554, '0067905008', '5037', 'Pani Dewanga Putra', '', 'Sukamandi', '2006-07-15', 'L', '', 'Islam', '', 'Jalan Melati', '', '', '', '', '', '1', '10900998', 'KJ-10900998-8', '-', 'A-0067905008', 'I-0067905008', '1234', '1234', '-', '2019-2020'),
(2555, '0061121206', '5038', 'Radika  Restu Sunanda', '', 'Sukamandi', '2005-12-26', 'L', '', 'Islam', '', 'Sukadamai', '', '', '', '', '', '1', '10900998', 'KJ-10900998-8', '-', 'A-0061121206', 'I-0061121206', '1234', '1234', '-', '2019-2020'),
(2552, '0054920436', '5035', 'Nabila', '', 'Sukamandi', '2005-11-17', 'P', '', 'Islam', '', 'Jalan Mekanik', '', '', '', '', '', '1', '10900998', 'KJ-10900998-8', '-', 'A-0054920436', 'I-0054920436', '1234', '1234', '-', '2019-2020'),
(2553, '0064185729', '5036', 'Nofa Seftarina', '', 'Sukamandi', '2006-11-04', 'P', '', 'Islam', '', 'Jalan Melati II', '', '', '', '', '', '1', '10900998', 'KJ-10900998-8', '-', 'A-0064185729', 'I-0064185729', '1234', '1234', '-', '2019-2020'),
(2550, '0068210532', '5033', 'Merry Anggriani', '', 'Mengkubang', '2006-08-01', 'P', '', 'Islam', '', 'Ds Damai Baru', '', '', '', '', '', '1', '10900998', 'KJ-10900998-8', '-', 'A-0068210532', 'I-0068210532', '1234', '1234', '-', '2019-2020'),
(2551, '0063926246', '5034', 'Mutiara Khasanah', '', 'Burung Mandi', '2006-06-03', 'P', '', 'Islam', '', 'Dusun Burung Mandi', '', '', '', '', '', '1', '10900998', 'KJ-10900998-8', '-', 'A-0063926246', 'I-0063926246', '1234', '1234', '-', '2019-2020'),
(2547, '0066108621', '5029', 'Jessen Saputra', '', 'Sukamandi', '2006-09-29', 'L', '', 'Islam', '', 'Dsn Sukadamai', '', '', '', '', '', '1', '10900998', 'KJ-10900998-8', '-', 'A-0066108621', 'I-0066108621', '1234', '1234', '-', '2019-2020'),
(2549, '0067428968', '5032', 'MARSYA VONISTIAN', '', 'Burung Mandi', '2006-01-17', 'P', '', 'Islam', '', 'Dusun Burung Mandi', '', '', '', '', '', '1', '10900998', 'KJ-10900998-8', '-', 'A-0067428968', 'I-0067428968', '1234', '1234', '-', '2019-2020'),
(2548, '0062555490', '5031', 'Marsya Dwi Cahya', '', 'Mengkubang', '2006-09-12', 'P', '', 'Islam', '', 'Dsn Kebon Sayor', '', '', '', '', '', '1', '10900998', 'KJ-10900998-8', '-', 'A-0062555490', 'I-0062555490', '1234', '1234', '-', '2019-2020'),
(2546, '0057670536', '5028', 'Jessen', '', 'Sukamandi', '2004-12-22', 'L', '', 'Islam', '', 'Jalan Sumatera', '', '', '', '', '', '1', '10900998', 'KJ-10900998-8', '-', 'A-0057670536', 'I-0057670536', '1234', '1234', '-', '2019-2020'),
(2545, '0066424968', '5027', 'Izzah Septella', '', 'Sukamandi', '2006-09-12', 'P', '', 'Islam', '', 'Dusun Libut', '', '', '', '', '', '1', '10900998', 'KJ-10900998-8', '-', 'A-0066424968', 'I-0066424968', '1234', '1234', '-', '2019-2020'),
(2543, '0069613669', '5026', 'Imelia', '', 'Malang Lepau', '2006-04-12', 'P', '', 'Islam', '', 'Dusun Tanah Tebok', '', '', '', '', '', '1', '10900998', 'KJ-10900998-8', '-', 'A-0069613669', 'I-0069613669', '1234', '1234', '-', '2019-2020'),
(2544, '0041399064', '4811', 'Ivan Pratama', '', 'MENGKUBANG', '2004-01-15', 'L', '', 'Budha', '', 'DUSUN DAMAR DESA MENGKUBANG', '', '', '', '', '', '1', '10900998', 'KJ-10900998-8', '-', 'A-0041399064', 'I-0041399064', '1234', '1234', '-', '2019-2020'),
(2542, '0062169485', '5025', 'Fiki Hispralian', '', 'Mengkubang', '2006-08-14', 'L', '', 'Islam', '', 'Dusun Damar', '', '', '', '', '', '1', '10900998', 'KJ-10900998-8', '-', 'A-0062169485', 'I-0062169485', '1234', '1234', '-', '2019-2020'),
(2541, '0048215096', '4932', 'Fellysia', '', 'BELITUNG', '2004-10-03', 'P', '', 'Islam', '', 'DUSUN SUKAMANDI DESA SUKAMANDI', '', '', '', '', '', '1', '10900998', 'KJ-10900998-8', '-', 'A-0048215096', 'I-0048215096', '1234', '1234', '-', '2019-2020'),
(2538, '0063517539', '5022', 'Erin Imelia', '', 'Tanjung Pandan', '2006-03-13', 'P', '', 'Islam', '', 'Dusun Tanah Tebok', '', '', '', '', '', '1', '10900998', 'KJ-10900998-8', '-', 'A-0063517539', 'I-0063517539', '1234', '1234', '-', '2019-2020'),
(2539, '0069324365', '5023', 'Erwin Setiawan', '', 'Sukamandi', '2006-02-28', 'L', '', 'Budha', '', 'Dusun Garumedang', '', '', '', '', '', '1', '10900998', 'KJ-10900998-8', '-', 'A-0069324365', 'I-0069324365', '1234', '1234', '-', '2019-2020'),
(2540, '0047423026', '5024', 'Febrianto', '', 'Mengkubang', '2004-02-26', 'L', '', 'Islam', '', 'Mengkubang', '', '', '', '', '', '1', '10900998', 'KJ-10900998-8', '-', 'A-0047423026', 'I-0047423026', '1234', '1234', '-', '2019-2020'),
(2537, '0053860209', '5021', 'Deni Saputra', '', 'Mengkubang', '2005-12-03', 'L', '', 'Islam', '', 'Ds Damai Baru', '', '', '', '', '', '1', '10900998', 'KJ-10900998-8', '-', 'A-0053860209', 'I-0053860209', '1234', '1234', '-', '2019-2020'),
(2536, '0054927164', '5020', 'Deni Erwanto', '', 'Manggar', '2005-12-14', 'L', '', 'Islam', '', 'Jalan Libut', '', '', '', '', '', '1', '10900998', 'KJ-10900998-8', '-', 'A-0054927164', 'I-0054927164', '1234', '1234', '-', '2019-2020'),
(2533, '0068814704', '5016', 'Astri Ramalianti', '', 'Manggar', '2006-03-06', 'P', '', 'Islam', '', 'Dsn Libut', '', '', '', '', '', '1', '10900998', 'KJ-10900998-8', '-', 'A-0068814704', 'I-0068814704', '1234', '1234', '-', '2019-2020'),
(2534, '0063984716', '5018', 'Deasta Pratama', '', 'Sukamandi', '2006-12-16', 'P', '', 'Islam', '', 'Jalan Sumatera', '', '', '', '', '', '1', '10900998', 'KJ-10900998-8', '-', 'A-0063984716', 'I-0063984716', '1234', '1234', '-', '2019-2020'),
(2535, '0052336968', '5019', 'Delima Lestari', '', 'Bogor', '2005-04-04', 'P', '', 'Islam', '', 'Kebun Sayur', '', '', '', '', '', '1', '10900998', 'KJ-10900998-8', '-', 'A-0052336968', 'I-0052336968', '1234', '1234', '-', '2019-2020'),
(2532, '0062001518', '5015', 'Alifah Henir Robila', '', 'Mengkubang', '2006-03-31', 'P', '', 'Islam', '', 'Mengkubang', '', '', '', '', '', '1', '10900998', 'KJ-10900998-8', '-', 'A-0062001518', 'I-0062001518', '1234', '1234', '-', '2019-2020'),
(2530, '0052792319', '5013', 'Yola Ananda Pratama', '', 'Sukamandi', '2005-12-28', 'L', '', 'Islam', '', 'Jalan Melati', '', '', '', '', '', '1', '10900998', 'KJ-10900998-7', '-', 'A-0052792319', 'I-0052792319', '1234', '1234', '-', '2019-2020'),
(2531, '0066298393', '5014', 'Adrian', '', 'Sukamandi', '2006-03-08', 'L', '', 'Islam', '', 'Jl.Panggung Pelita', '', '', '', '', '', '1', '10900998', 'KJ-10900998-8', '-', 'A-0066298393', 'I-0066298393', '1234', '1234', '-', '2019-2020'),
(2529, '0079391151', '5012', 'Tauriel Fathirrahman', '', 'MANGGAR', '2007-01-05', 'L', '', 'Islam', '', 'JLN RAYA GANTUNG', '', '', '', '', '', '1', '10900998', 'KJ-10900998-7', '-', 'A-0079391151', 'I-0079391151', '1234', '1234', '-', '2019-2020'),
(2528, '0064940686', '5011', 'Siti Nur Fadhilah', '', 'Sukamandi', '2006-07-03', 'P', '', 'Islam', '', 'Jl.Pasar Damar', '', '', '', '', '', '1', '10900998', 'KJ-10900998-7', '-', 'A-0064940686', 'I-0064940686', '1234', '1234', '-', '2019-2020'),
(2527, '0063611439', '5010', 'Shawaliyah', '', 'Malang Lepau', '2006-10-28', 'P', '', 'Islam', '', 'Dusun Tanah Tebok', '', '', '', '', '', '1', '10900998', 'KJ-10900998-7', '-', 'A-0063611439', 'I-0063611439', '1234', '1234', '-', '2019-2020'),
(2526, '0061893435', '5009', 'Serra', '', 'Mengkubang', '2006-01-07', 'P', '', 'Islam', '', 'Dsn Sukamandi', '', '', '', '', '', '1', '10900998', 'KJ-10900998-7', '-', 'A-0061893435', 'I-0061893435', '1234', '1234', '-', '2019-2020'),
(2525, '0065885163', '5007', 'Reva Adeliya', '', 'Malang Lepau', '2006-06-09', 'P', '', 'Islam', '', 'Dusun Malang Lepau', '', '', '', '', '', '1', '10900998', 'KJ-10900998-7', '-', 'A-0065885163', 'I-0065885163', '1234', '1234', '-', '2019-2020'),
(2524, '0066276905', '5006', 'Pradipta Adi Wichaksono', '', 'Magetan', '2005-10-21', 'L', '', 'Islam', '', 'Dusun Libut ', '', '', '', '', '', '1', '10900998', 'KJ-10900998-7', '-', 'A-0066276905', 'I-0066276905', '1234', '1234', '-', '2019-2020'),
(2522, '0063973395', '5003', 'Marcell', '', 'Malang Lepau', '2006-03-11', 'L', '', 'Islam', '', 'Dusun Malang Lepau', '', '', '', '', '', '1', '10900998', 'KJ-10900998-7', '-', 'A-0063973395', 'I-0063973395', '1234', '1234', '-', '2019-2020'),
(2523, '0063379221', '5004', 'Nabila Haiza Syahrani', '', 'Tanjungpandan', '2006-04-25', 'P', '', 'Islam', '', 'Jalan Melati', '', '', '', '', '', '1', '10900998', 'KJ-10900998-7', '-', 'A-0063379221', 'I-0063379221', '1234', '1234', '-', '2019-2020'),
(2520, '0053016077', '4812', 'Jovani Pratama Putra', '', 'MENGKUBANG', '2005-07-19', 'L', '', 'Islam', '', 'DUSUN DAMAI BARU', '', '', '', '', '', '1', '10900998', 'KJ-10900998-7', '-', 'A-0053016077', 'I-0053016077', '1234', '1234', '-', '2019-2020'),
(2521, '0052337009', '5002', 'Juli', '', 'Malang Lepau', '2005-07-25', 'L', '', 'Islam', '', 'Dusun Tanah Tebok', '', '', '', '', '', '1', '10900998', 'KJ-10900998-7', '-', 'A-0052337009', 'I-0052337009', '1234', '1234', '-', '2019-2020'),
(2519, '0067678619', '5001', 'Herland Saputra', '', 'Mengkubang', '2006-07-28', 'L', '', 'Islam', '', 'Dusun Kebun Sayor', '', '', '', '', '', '1', '10900998', 'KJ-10900998-7', '-', 'A-0067678619', 'I-0067678619', '1234', '1234', '-', '2019-2020'),
(2518, '0069616012', '5000', 'Herlan', '', 'Sukamandi', '2006-03-24', 'L', '', 'Islam', '', 'Dsn Garumedang', '', '', '', '', '', '1', '10900998', 'KJ-10900998-7', '-', 'A-0069616012', 'I-0069616012', '1234', '1234', '-', '2019-2020'),
(2517, '0063051072', '4999', 'Helen Oktarina', '', 'Mengkubang', '2006-10-18', 'P', '', 'Islam', '', 'Dsn kebun sayor', '', '', '', '', '', '1', '10900998', 'KJ-10900998-7', '-', 'A-0063051072', 'I-0063051072', '1234', '1234', '-', '2019-2020'),
(2516, '0059916082', '4998', 'Gryshel Stefani Audreysia', '', 'Sukamandi', '2005-10-28', 'P', '', 'Kristen', '', 'Jl.Sumatera', '', '', '', '', '', '1', '10900998', 'KJ-10900998-7', '-', 'A-0059916082', 'I-0059916082', '1234', '1234', '-', '2019-2020'),
(2515, '0066019875', '4997', 'Fazli', '', 'Burung Mandi', '2006-03-17', 'L', '', 'Islam', '', 'Dusun Malang Lepau Desa Burong Mandi', '', '', '', '', '', '1', '10900998', 'KJ-10900998-7', '-', 'A-0066019875', 'I-0066019875', '1234', '1234', '-', '2019-2020'),
(2514, '0039642572', '4996', 'Erdiansyah', '', 'Cianjur', '2003-07-04', 'L', '', 'Islam', '', 'Sukadamai', '', '', '', '', '', '1', '10900998', 'KJ-10900998-7', '-', 'A-0039642572', 'I-0039642572', '1234', '1234', '-', '2019-2020'),
(2513, '0035494148', '4995', 'Dimas Murarmando', '', 'MENGKUBANG', '2003-09-29', 'L', '', 'Islam', '', 'Dusun Damai Baru Desa Mengkubang', '', '', '', '', '', '1', '10900998', 'KJ-10900998-7', '-', 'A-0035494148', 'I-0035494148', '1234', '1234', '-', '2019-2020'),
(2512, '0055028427', '4994', 'Deya Enjelly', '', 'Sukamandi', '2005-09-24', 'P', '', 'Islam', '', 'Jalan Sumatra', '', '', '', '', '', '1', '10900998', 'KJ-10900998-7', '-', 'A-0055028427', 'I-0055028427', '1234', '1234', '-', '2019-2020'),
(2511, '0052336995', '4992', 'Delon Pramana', '', 'Burung Mandi', '2005-04-23', 'L', '', 'Islam', '', 'Dusun Malang Lepau', '', '', '', '', '', '1', '10900998', 'KJ-10900998-7', '-', 'A-0052336995', 'I-0052336995', '1234', '1234', '-', '2019-2020'),
(2510, '0067859996', '4991', 'Azwar Rivaldi', '', 'Mengkubang', '2006-06-09', 'L', '', 'Islam', '', 'Jl.Sumatera', '', '', '', '', '', '1', '10900998', 'KJ-10900998-7', '-', 'A-0067859996', 'I-0067859996', '1234', '1234', '-', '2019-2020'),
(2509, '0069405731', '4990', 'Amelia Putri', '', 'Malang Lepau', '2006-04-10', 'P', '', 'Islam', '', 'Dusun Tanah Tebok', '', '', '', '', '', '1', '10900998', 'KJ-10900998-7', '-', 'A-0069405731', 'I-0069405731', '1234', '1234', '-', '2019-2020'),
(2508, '0052336992', '4989', 'Al Fatih Akmal', '', 'Manggar', '2005-03-22', 'L', '', 'Islam', '', 'Dusun Burung Mandi', '', '', '', '', '', '1', '10900998', 'KJ-10900998-7', '-', 'A-0052336992', 'I-0052336992', '1234', '1234', '-', '2019-2020'),
(2507, '0062885610', '4988', 'Ahmad Alfarizi', '', 'Palembang', '2006-08-17', 'L', '', 'Islam', '', 'Ds Damar', '', '', '', '', '', '1', '10900998', 'KJ-10900998-7', '-', 'A-0062885610', 'I-0062885610', '1234', '1234', '-', '2019-2020'),
(2505, '0054096541', '4986', 'Achmat Fauzie', '', 'Manggar', '2005-03-31', 'L', '', 'Islam', '', 'Jl.Tempayan ', '', '', '', '', '', '1', '10900998', 'KJ-10900998-7', '-', 'A-0054096541', 'I-0054096541', '1234', '1234', '-', '2019-2020'),
(2506, '0069762126', '4987', 'Afika Firstyanti', '', 'Suka Mandi', '2006-02-15', 'P', '', 'Islam', '', 'Jl. Penasin', '', '', '', '', '', '1', '10900998', 'KJ-10900998-7', '-', 'A-0069762126', 'I-0069762126', '1234', '1234', '-', '2019-2020'),
(2504, '0062596545', '4985', 'Vivian Legiana Pratiwi', '', 'Manggar', '2006-07-13', 'P', '', 'Budha', '', 'Jl.Sumatera', '', '', '', '', '', '1', '10900998', 'KJ-10900998-6', '-', 'A-0062596545', 'I-0062596545', '1234', '1234', '-', '2019-2020'),
(2501, '0055192988', '4982', 'Selda Dwi Yanti', '', 'Sukamandi', '2005-11-12', 'P', '', 'Islam', '', 'Dsn Damar', '', '', '', '', '', '1', '10900998', 'KJ-10900998-6', '-', 'A-0055192988', 'I-0055192988', '1234', '1234', '-', '2019-2020'),
(2502, '0069193222', '4983', 'Sintia Candra', '', 'Sukamandi', '2006-10-28', 'P', '', 'Islam', '', 'Jalan Melati', '', '', '', '', '', '1', '10900998', 'KJ-10900998-6', '-', 'A-0069193222', 'I-0069193222', '1234', '1234', '-', '2019-2020'),
(2503, '0067433016', '4984', 'Surya Darma Wangsa', '', 'Nyelanding', '2006-03-18', 'L', '', 'Islam', '', 'Jalan Sumatera', '', '', '', '', '', '1', '10900998', 'KJ-10900998-6', '-', 'A-0067433016', 'I-0067433016', '1234', '1234', '-', '2019-2020'),
(2500, '0052599523', '5040', 'Sela Oktafila', '', 'Tempilang', '2005-10-31', 'P', '', 'Islam', '', 'Dsn Sukadamai', '', '', '', '', '', '1', '10900998', 'KJ-10900998-6', '-', 'A-0052599523', 'I-0052599523', '1234', '1234', '-', '2019-2020'),
(2499, '0066611555', '4980', 'Rendy Pratama', '', 'Mengkubang', '2005-12-21', 'L', '', 'Islam', '', 'Dsn Damai Baru', '', '', '', '', '', '1', '10900998', 'KJ-10900998-6', '-', 'A-0066611555', 'I-0066611555', '1234', '1234', '-', '2019-2020'),
(2498, '0069986460', '4979', 'Refa Apriani', '', 'Tanjung Pandan', '2006-04-14', 'P', '', 'Islam', '', 'Jl.Kuini', '', '', '', '', '', '1', '10900998', 'KJ-10900998-6', '-', 'A-0069986460', 'I-0069986460', '1234', '1234', '-', '2019-2020'),
(2496, '0069306651', '4977', 'Raja Wali Satria Nusantara', '', 'Tanjungpandan', '2006-07-18', 'L', '', 'Islam', '', 'Jl. Pordam Damar', '', '', '', '', '', '1', '10900998', 'KJ-10900998-6', '-', 'A-0069306651', 'I-0069306651', '1234', '1234', '-', '2019-2020'),
(2497, '0068882856', '4978', 'Ranti', '', 'Malang Lepau', '2006-09-09', 'P', '', 'Islam', '', 'Dusun Malang Lepau', '', '', '', '', '', '1', '10900998', 'KJ-10900998-6', '-', 'A-0068882856', 'I-0068882856', '1234', '1234', '-', '2019-2020'),
(2495, '0064124133', '4976', 'Rafelina Dwi Jansi', '', 'Mengkubang', '2006-01-28', 'P', '', 'Islam', '', 'Dsn Kebon Sayor', '', '', '', '', '', '1', '10900998', 'KJ-10900998-6', '-', 'A-0064124133', 'I-0064124133', '1234', '1234', '-', '2019-2020'),
(2494, '0062554947', '4975', 'Pinka Viviana Yunizar', '', 'Kelapa Kampit', '2006-08-11', 'P', '', 'Islam', '', 'Sukadamai', '', '', '', '', '', '1', '10900998', 'KJ-10900998-6', '-', 'A-0062554947', 'I-0062554947', '1234', '1234', '-', '2019-2020'),
(2492, '0065634915', '4973', 'Nesti Fiola', '', 'Sukamandi', '2006-04-09', 'P', '', 'Islam', '', 'Jalan Melati', '', '', '', '', '', '1', '10900998', 'KJ-10900998-6', '-', 'A-0065634915', 'I-0065634915', '1234', '1234', '-', '2019-2020'),
(2493, '0046877591', '4974', 'Pandan Supandi', '', 'SUKA BUMI', '2004-06-21', 'L', '', 'Islam', '', 'O', '', '', '', '', '', '1', '10900998', 'KJ-10900998-6', '-', 'A-0046877591', 'I-0046877591', '1234', '1234', '-', '2019-2020'),
(2491, '0067840679', '4972', 'Naila Putri Dewi', '', 'Manggar', '2006-03-13', 'P', '', 'Islam', '', 'Dsn Kebun Sayor', '', '', '', '', '', '1', '10900998', 'KJ-10900998-6', '-', 'A-0067840679', 'I-0067840679', '1234', '1234', '-', '2019-2020'),
(2490, '0066034220', '4971', 'Nabila', '', 'Tanjungpandan', '2006-05-02', 'P', '', 'Islam', '', 'Jalan Kuini', '', '', '', '', '', '1', '10900998', 'KJ-10900998-6', '-', 'A-0066034220', 'I-0066034220', '1234', '1234', '-', '2019-2020'),
(2488, '0062952606', '4969', 'Mauliya', '', 'Malang Lepau', '2006-04-07', 'P', '', 'Islam', '', 'Dusun Tanah Tebok', '', '', '', '', '', '1', '10900998', 'KJ-10900998-6', '-', 'A-0062952606', 'I-0062952606', '1234', '1234', '-', '2019-2020'),
(2489, '0043857419', '4970', 'Muhamad Reza Al Gipari', '', 'GARUT', '2004-12-12', 'L', '', 'Islam', '', 'Sumatera', '', '', '', '', '', '1', '10900998', 'KJ-10900998-6', '-', 'A-0043857419', 'I-0043857419', '1234', '1234', '-', '2019-2020'),
(2485, '0062683668', '4965', 'Greycia Regina Yap', '', 'Jakarta', '2006-07-25', 'P', '', 'Budha', '', 'Dusun Damar', '', '', '', '', '', '1', '10900998', 'KJ-10900998-6', '-', 'A-0062683668', 'I-0062683668', '1234', '1234', '-', '2019-2020'),
(2486, '0062105011', '4967', 'Imron', '', 'Bangkalan', '2006-03-08', 'L', '', 'Islam', '', 'Sukamandi', '', '', '', '', '', '1', '10900998', 'KJ-10900998-6', '-', 'A-0062105011', 'I-0062105011', '1234', '1234', '-', '2019-2020'),
(2487, '0068858359', '4968', 'Manda', '', 'Mengkubang', '2006-12-21', 'P', '', 'Islam', '', 'Sukadamai', '', '', '', '', '', '1', '10900998', 'KJ-10900998-6', '-', 'A-0068858359', 'I-0068858359', '1234', '1234', '-', '2019-2020'),
(2484, '0062915967', '4964', 'Faisal Anugrah', '', 'Sukamandi', '2006-01-30', 'L', '', 'Islam', '', 'Dusun Malang Lepau', '', '', '', '', '', '1', '10900998', 'KJ-10900998-6', '-', 'A-0062915967', 'I-0062915967', '1234', '1234', '-', '2019-2020'),
(2483, '0066528923', '4963', 'Eprilian', '', 'SUKAMANDI', '2006-07-15', 'L', '', 'Islam', '', 'PADANG II', '', '', '', '', '', '1', '10900998', 'KJ-10900998-6', '-', 'A-0066528923', 'I-0066528923', '1234', '1234', '-', '2019-2020'),
(2482, '0058500472', '4962', 'Digo Amri Agustio', '', 'Malang Lepau', '2005-08-17', 'L', '', 'Islam', '', 'Dusun Malang Lepau', '', '', '', '', '', '1', '10900998', 'KJ-10900998-6', '-', 'A-0058500472', 'I-0058500472', '1234', '1234', '-', '2019-2020'),
(2481, '0064138077', '4961', 'Arya Rizqi Pratama', '', 'Kelapa Kampit', '2006-08-07', 'L', '', 'Islam', '', 'Dusun Burung Mandi', '', '', '', '', '', '1', '10900998', 'KJ-10900998-6', '-', 'A-0064138077', 'I-0064138077', '1234', '1234', '-', '2019-2020'),
(2480, '0052337008', '4960', 'Arlita Riyanti', '', 'Tanjungpandan', '2005-07-23', 'P', '', 'Islam', '', 'Jalan Melati', '', '', '', '', '', '1', '10900998', 'KJ-10900998-6', '-', 'A-0052337008', 'I-0052337008', '1234', '1234', '-', '2019-2020'),
(2479, '0064413083', '4959', 'Anessya Taurisia', '', 'Sukamandi', '2006-11-20', 'P', '', 'Islam', '', 'Jalan Melati', '', '', '', '', '', '1', '10900998', 'KJ-10900998-6', '-', 'A-0064413083', 'I-0064413083', '1234', '1234', '-', '2019-2020'),
(2478, '0061158158', '4958', 'Allya Julianti', '', 'Tanjungpandan', '2006-07-22', 'P', '', 'Islam', '', 'Dusun Malang Lepau', '', '', '', '', '', '1', '10900998', 'KJ-10900998-6', '-', 'A-0061158158', 'I-0061158158', '1234', '1234', '-', '2019-2020'),
(2476, '0064739291', '', 'Widyantoro', '', 'Sukamandi', '2006-08-03', 'L', '', 'Islam', '', 'Dsn Sukamandi', '', '', '', '', '', '1', '10900998', 'KJ-10900998-5', '-', 'A-0064739291', 'I-0064739291', '1234', '1234', '-', '2019-2020'),
(2477, '0071555026', '', 'Yurdiansa', '', 'Tanjungpandan', '2007-03-20', 'L', '', 'Islam', '', 'Dusun Tanah Tebok', '', '', '', '', '', '1', '10900998', 'KJ-10900998-5', '-', 'A-0071555026', 'I-0071555026', '1234', '1234', '-', '2019-2020'),
(2475, '0065707883', '', 'Sevy Aliayanti', '', 'MENGKUBANG', '2006-09-11', 'P', '', 'Islam', '', 'SUMATERA', '', '', '', '', '', '1', '10900998', 'KJ-10900998-5', '-', 'A-0065707883', 'I-0065707883', '1234', '1234', '-', '2019-2020'),
(2474, '0064195736', '', 'Sandra Rahmadani', '', 'Sukamandi', '2006-10-13', 'P', '', 'Islam', '', 'Jalan Melati', '', '', '', '', '', '1', '10900998', 'KJ-10900998-5', '-', 'A-0064195736', 'I-0064195736', '1234', '1234', '-', '2019-2020'),
(2473, '0071008781', '', 'Putri Madu', '', 'Tanjungpandan', '2007-04-16', 'P', '', 'Islam', '', 'Jalan Melati II', '', '', '', '', '', '1', '10900998', 'KJ-10900998-5', '-', 'A-0071008781', 'I-0071008781', '1234', '1234', '-', '2019-2020'),
(2472, '0067073154', '', 'Muhammad Raka', '', 'Jakarta', '2006-05-02', 'L', '', 'Islam', '', 'Jalan Melati II', '', '', '', '', '', '1', '10900998', 'KJ-10900998-5', '-', 'A-0067073154', 'I-0067073154', '1234', '1234', '-', '2019-2020'),
(2471, '0078856751', '', 'Muhammad Dzaky', '', 'Tanjungpandan', '2007-08-01', 'L', '', 'Islam', '', 'Jl.Kebun Sayor', '', '', '', '', '', '1', '10900998', 'KJ-10900998-5', '-', 'A-0078856751', 'I-0078856751', '1234', '1234', '-', '2019-2020'),
(2470, '0078244866', '', 'Mellinda', '', 'Sukamandi', '2007-05-15', 'P', '', 'Islam', '', 'Dusun Malang Lepau', '', '', '', '', '', '1', '10900998', 'KJ-10900998-5', '-', 'A-0078244866', 'I-0078244866', '1234', '1234', '-', '2019-2020'),
(2469, '0072856061', '', 'Juanda Maulana', '', 'Mengkubang', '2007-03-23', 'L', '', 'Islam', '', 'JL.Sumatera', '', '', '', '', '', '1', '10900998', 'KJ-10900998-5', '-', 'A-0072856061', 'I-0072856061', '1234', '1234', '-', '2019-2020'),
(2468, '0072302485', '', 'Jonathan Winata', '', 'Sukamandi ', '2007-05-09', 'L', '', 'Budha', '', 'Jl.Pasar Damar', '', '', '', '', '', '1', '10900998', 'KJ-10900998-5', '-', 'A-0072302485', 'I-0072302485', '1234', '1234', '-', '2019-2020'),
(2467, '0074845988', '', 'IRGI ALFAREZ', '', 'Mengkubang', '2007-05-10', 'L', '', 'Islam', '', 'Dusun Burung Mandi', '', '', '', '', '', '1', '10900998', 'KJ-10900998-5', '-', 'A-0074845988', 'I-0074845988', '1234', '1234', '-', '2019-2020'),
(2466, '0074150829', '', 'Icha Alkeysha', '', 'Tanjungpandan', '2007-06-14', 'P', '', 'Islam', '', 'Damar', '', '', '', '', '', '1', '10900998', 'KJ-10900998-5', '-', 'A-0074150829', 'I-0074150829', '1234', '1234', '-', '2019-2020'),
(2465, '0078603334', '', 'Hevira Dyah Swasti', '', 'Manggar', '2007-12-11', 'P', '', 'Islam', '', 'Jalan Sawo', '', '', '', '', '', '1', '10900998', 'KJ-10900998-5', '-', 'A-0078603334', 'I-0078603334', '1234', '1234', '-', '2019-2020'),
(2464, '0064470649', '4966', 'Hernando Damaeir', '', 'TANJUNG BATU ITAM', '2006-01-15', 'L', '', 'Islam', '', 'DAMAR', '', '', '', '', '', '1', '10900998', 'KJ-10900998-5', '-', 'A-0064470649', 'I-0064470649', '1234', '1234', '-', '2019-2020'),
(2463, '0074730681', '', 'Herliza Syaputri', '', 'MENGKUBANG', '2007-11-29', 'P', '', 'Islam', '', 'DAMAR', '', '', '', '', '', '1', '10900998', 'KJ-10900998-5', '-', 'A-0074730681', 'I-0074730681', '1234', '1234', '-', '2019-2020'),
(2462, '0061897943', '', 'Ferziyansa Fitra', '', 'Sukamandi', '2006-10-21', 'L', '', 'Islam', '', 'Kebun Sayor', '', '', '', '', '', '1', '10900998', 'KJ-10900998-5', '-', 'A-0061897943', 'I-0061897943', '1234', '1234', '-', '2019-2020'),
(2461, '0062418737', '', 'Faisal Suseno', '', 'Tanjungpandan ', '2006-10-09', 'L', '', 'Islam', '', 'Jl.Sumatera', '', '', '', '', '', '1', '10900998', 'KJ-10900998-5', '-', 'A-0062418737', 'I-0062418737', '1234', '1234', '-', '2019-2020'),
(2460, '0071978555', '', 'Ayu Agustia', '', 'Sukamandi', '2007-02-19', 'P', '', 'Islam', '', 'Dusun Malang Lepau', '', '', '', '', '', '1', '10900998', 'KJ-10900998-5', '-', 'A-0071978555', 'I-0071978555', '1234', '1234', '-', '2019-2020'),
(2459, '0078022931', '', 'Aulya Tuhzahra', '', 'SUKAMANDI', '2007-03-17', 'P', '', 'Islam', '', 'KEBUN SAYOR', '', '', '', '', '', '1', '10900998', 'KJ-10900998-5', '-', 'A-0078022931', 'I-0078022931', '1234', '1234', '-', '2019-2020'),
(2458, '0077700319', '', 'Aulia Salsabila', '', 'TANJUNG PANDAN', '2007-12-27', 'P', '', 'Islam', '', 'DAMAR', '', '', '', '', '', '1', '10900998', 'KJ-10900998-5', '-', 'A-0077700319', 'I-0077700319', '1234', '1234', '-', '2019-2020'),
(2457, '0079466949', '', 'Ardiansyah Alvaro', '', 'Sungailiat', '2007-05-11', 'L', '', 'Islam', '', 'Jl.Pasar Damar', '', '', '', '', '', '1', '10900998', 'KJ-10900998-5', '-', 'A-0079466949', 'I-0079466949', '1234', '1234', '-', '2019-2020'),
(2456, '0087988668', '', 'Alisya Adeliya', '', 'Mengkubang', '2008-01-01', 'P', '', 'Islam', '', 'Dusun Tanah Tebok', '', '', '', '', '', '1', '10900998', 'KJ-10900998-5', '-', 'A-0087988668', 'I-0087988668', '1234', '1234', '-', '2019-2020'),
(2455, '0077809435', '', 'Alfiyah Hulfatun', '', 'Sukamandi', '2007-10-22', 'P', '', 'Islam', '', 'Jln Kebun Sayor', '', '', '', '', '', '1', '10900998', 'KJ-10900998-5', '-', 'A-0077809435', 'I-0077809435', '1234', '1234', '-', '2019-2020'),
(2454, '0075541384', '', 'Ahmad Bary Permana', '', 'Sukamandi', '2007-03-01', 'L', '', 'Islam', '', 'Jl.sumatera', '', '', '', '', '', '1', '10900998', 'KJ-10900998-5', '-', 'A-0075541384', 'I-0075541384', '1234', '1234', '-', '2019-2020'),
(2453, '0073913626', '', 'Adellia Mareta', '', 'Burung Mandi', '2007-03-30', 'P', '', 'Islam', '', 'Dusun Burung Mandi', '', '', '', '', '', '1', '10900998', 'KJ-10900998-5', '-', 'A-0073913626', 'I-0073913626', '1234', '1234', '-', '2019-2020'),
(2451, '0078651005', '', 'Wezi Silvarado', '', 'Tanjungpandan', '2007-01-13', 'L', '', 'Islam', '', 'Jalan Nangka', '', '', '', '', '', '1', '10900998', 'KJ-10900998-4', '-', 'A-0078651005', 'I-0078651005', '1234', '1234', '-', '2019-2020'),
(2452, '0063282542', '', 'Zhalki Zumidar', '', 'Mengkubang', '2006-11-24', 'L', '', 'Islam', '', 'Dsn Damar', '', '', '', '', '', '1', '10900998', 'KJ-10900998-4', '-', 'A-0063282542', 'I-0063282542', '1234', '1234', '-', '2019-2020'),
(2450, '0072387768', '', 'Wendy Julianto', '', 'Manggar', '2007-07-21', 'L', '', 'Islam', '', 'Jl.Pasar Damar ', '', '', '', '', '', '1', '10900998', 'KJ-10900998-4', '-', 'A-0072387768', 'I-0072387768', '1234', '1234', '-', '2019-2020'),
(2449, '0073626769', '', 'Sevtiawan', '', 'Sukamandi', '2007-09-28', 'L', '', 'Islam', '', 'Sukamandi', '', '', '', '', '', '1', '10900998', 'KJ-10900998-4', '-', 'A-0073626769', 'I-0073626769', '1234', '1234', '-', '2019-2020'),
(2448, '0076345541', '', 'Selsa Ramadani', '', 'MENGKUBANG', '2007-09-24', 'P', '', 'Islam', '', 'KEBUN SAYOR', '', '', '', '', '', '1', '10900998', 'KJ-10900998-4', '-', 'A-0076345541', 'I-0076345541', '1234', '1234', '-', '2019-2020'),
(2447, '0078532681', '', 'Selo Wahyu Priandi', '', 'Tanjungpandan ', '2007-04-16', 'L', '', 'Islam', '', 'Jl.Sumatera', '', '', '', '', '', '1', '10900998', 'KJ-10900998-4', '-', 'A-0078532681', 'I-0078532681', '1234', '1234', '-', '2019-2020'),
(2444, '0087405528', '', 'Rendy', '', 'Tanjungpandan', '2008-03-19', 'L', '', 'Budha', '', 'Jalan Sumatera', '', '', '', '', '', '1', '10900998', 'KJ-10900998-4', '-', 'A-0087405528', 'I-0087405528', '1234', '1234', '-', '2019-2020'),
(2445, '0052125662', '5039', 'Saddewa', '', 'MALANG LEPAU', '2005-09-23', 'L', '', 'Islam', '', 'MALANG LEPAU', '', '', '', '', '', '1', '10900998', 'KJ-10900998-4', '-', 'A-0052125662', 'I-0052125662', '1234', '1234', '-', '2019-2020'),
(2446, '0075249400', '', 'Seli Sriwandri', '', 'Kelapa Kampit', '2007-09-08', 'P', '', 'Islam', '', 'Dusun Malang Lepau', '', '', '', '', '', '1', '10900998', 'KJ-10900998-4', '-', 'A-0075249400', 'I-0075249400', '1234', '1234', '-', '2019-2020'),
(2443, '0077384021', '', 'Rasha Priskyla', '', 'Selinsing', '2007-02-15', 'P', '', 'Islam', '', 'Jalan A. Yani', '', '', '', '', '', '1', '10900998', 'KJ-10900998-4', '-', 'A-0077384021', 'I-0077384021', '1234', '1234', '-', '2019-2020'),
(2441, '0063201222', '', 'Raju', '', 'MENGKUBANG', '2006-10-27', 'L', '', 'Islam', '', 'DAMAI BARU', '', '', '', '', '', '1', '10900998', 'KJ-10900998-4', '-', 'A-0063201222', 'I-0063201222', '1234', '1234', '-', '2019-2020'),
(2442, '0074736836', '', 'RAMADANA', '', 'Sukamandi', '2007-09-26', 'L', '', 'Islam', '', 'Dusun Malang Lepau', '', '', '', '', '', '1', '10900998', 'KJ-10900998-4', '-', 'A-0074736836', 'I-0074736836', '1234', '1234', '-', '2019-2020'),
(2440, '0067962984', '', 'Okta Perdianto', '', 'Tanjungpandan', '2006-10-12', 'L', '', 'Islam', '', 'Damar', '', '', '', '', '', '1', '10900998', 'KJ-10900998-4', '-', 'A-0067962984', 'I-0067962984', '1234', '1234', '-', '2019-2020'),
(2439, '0067478133', '', 'Novan Aditya Pratama', '', 'Tanjungpandan', '2006-11-30', 'L', '', 'Islam', '', 'Dusun Burung Mandi', '', '', '', '', '', '1', '10900998', 'KJ-10900998-4', '-', 'A-0067478133', 'I-0067478133', '1234', '1234', '-', '2019-2020'),
(2438, '0067365618', '', 'Nabilla', '', 'TANJUNG PANDAN', '2006-11-04', 'P', '', 'Islam', '', 'PELATARAN  DAMAR', '', '', '', '', '', '1', '10900998', 'KJ-10900998-4', '-', 'A-0067365618', 'I-0067365618', '1234', '1234', '-', '2019-2020'),
(2437, '0077839439', '', 'Muhammad Zidni Arif', '', 'Tanjung Pandan', '2007-04-22', 'L', '', 'Islam', '', 'Jalan Melati', '', '', '', '', '', '1', '10900998', 'KJ-10900998-4', '-', 'A-0077839439', 'I-0077839439', '1234', '1234', '-', '2019-2020'),
(2436, '0071333498', '', 'Meisa Aprilia', '', 'Sukamandi', '2007-04-23', 'P', '', 'Islam', '', 'Jl.Sumatera', '', '', '', '', '', '1', '10900998', 'KJ-10900998-4', '-', 'A-0071333498', 'I-0071333498', '1234', '1234', '-', '2019-2020'),
(2435, '0063331611', '', 'Maryuni', '', 'Sungai Guntung', '2006-12-15', 'P', '', 'Islam', '', 'Jl.Poras', '', '', '', '', '', '1', '10900998', 'KJ-10900998-4', '-', 'A-0063331611', 'I-0063331611', '1234', '1234', '-', '2019-2020'),
(2433, '0067346300', '', 'Iqbal Dzakkii', '', 'Tanjungpandan', '2006-12-05', 'L', '', 'Islam', '', 'Jl.Kebun Sayor', '', '', '', '', '', '1', '10900998', 'KJ-10900998-4', '-', 'A-0067346300', 'I-0067346300', '1234', '1234', '-', '2019-2020'),
(2434, '0072175847', '', 'Marcel Cristin Antonius', '', 'Sukamandi', '2007-09-23', 'L', '', 'Budha', '', 'Jl.Sumatera', '', '', '', '', '', '1', '10900998', 'KJ-10900998-4', '-', 'A-0072175847', 'I-0072175847', '1234', '1234', '-', '2019-2020'),
(2431, '0071526218', '', 'Esther Harjanto Johannes Chai', '', 'Tanjungpandan', '2007-06-13', 'P', '', 'Budha', '', 'Jl.Sumatera', '', '', '', '', '', '1', '10900998', 'KJ-10900998-4', '-', 'A-0071526218', 'I-0071526218', '1234', '1234', '-', '2019-2020'),
(2432, '0062897880', '', 'Geren Novriawan', '', 'Selinsing', '2006-11-04', 'L', '', 'Islam', '', 'Merantik', '', '', '', '', '', '1', '10900998', 'KJ-10900998-4', '-', 'A-0062897880', 'I-0062897880', '1234', '1234', '-', '2019-2020'),
(2430, '0072066605', '', 'Dewi Sanfansiska', '', 'Manggar', '2007-06-26', 'P', '', 'Budha', '', 'Jl.Sumatera', '', '', '', '', '', '1', '10900998', 'KJ-10900998-4', '-', 'A-0072066605', 'I-0072066605', '1234', '1234', '-', '2019-2020'),
(2429, '0064171888', '', 'Belfa Anugrah', '', 'Padang', '2006-11-28', 'L', '', 'Islam', '', 'Jl.Rambutan ', '', '', '', '', '', '1', '10900998', 'KJ-10900998-4', '-', 'A-0064171888', 'I-0064171888', '1234', '1234', '-', '2019-2020'),
(2428, '0052336996', '', 'Apriyanto', '', 'Manggar', '2005-04-25', 'L', '', 'Islam', '', 'Dusun Malang Lepau', '', '', '', '', '', '1', '10900998', 'KJ-10900998-4', '-', 'A-0052336996', 'I-0052336996', '1234', '1234', '-', '2019-2020'),
(2426, '0079398361', '', 'Ababil Akbar', '', 'Sukamandi', '2007-04-11', 'L', '', 'Islam', '', 'Trem', '', '', '', '', '', '1', '10900998', 'KJ-10900998-4', '-', 'A-0079398361', 'I-0079398361', '1234', '1234', '-', '2019-2020'),
(2427, '0063933889', '', 'Anjelina', '', 'Sukamandi', '2006-08-04', 'P', '', 'Islam', '', 'Jalan Panggung Pelita', '', '', '', '', '', '1', '10900998', 'KJ-10900998-4', '-', 'A-0063933889', 'I-0063933889', '1234', '1234', '-', '2019-2020'),
(2424, '0079335207', '', 'Usmawati', '', 'Sukamandi', '2007-06-16', 'P', '', 'Islam', '', 'Jl.Sumatera', '', '', '', '', '', '1', '10900998', 'KJ-10900998-3', '-', 'A-0079335207', 'I-0079335207', '1234', '1234', '-', '2019-2020'),
(2425, '0073716133', '', 'Vandu Winata', '', 'Mengkubang', '2007-05-18', 'L', '', 'Islam', '', 'Jl Pasar Damar', '', '', '', '', '', '1', '10900998', 'KJ-10900998-3', '-', 'A-0073716133', 'I-0073716133', '1234', '1234', '-', '2019-2020'),
(2423, '0075008155', '', 'Themmi', '', 'Manggar', '2007-02-23', 'L', '', 'Islam', '', 'Jl. Air Karang', '', '', '', '', '', '1', '10900998', 'KJ-10900998-3', '-', 'A-0075008155', 'I-0075008155', '1234', '1234', '-', '2019-2020'),
(2420, '0064602772', '', 'Septa Surya Tirta', '', 'Mengkubang', '2006-09-11', 'L', '', 'Islam', '', 'Dsn sukadamai', '', '', '', '', '', '1', '10900998', 'KJ-10900998-3', '-', 'A-0064602772', 'I-0064602772', '1234', '1234', '-', '2019-2020'),
(2421, '0067977285', '', 'Siki Werdytian Novendra', '', 'MANGGAR', '2006-11-24', 'L', '', 'Islam', '', 'SUMATERA', '', '', '', '', '', '1', '10900998', 'KJ-10900998-3', '-', 'A-0067977285', 'I-0067977285', '1234', '1234', '-', '2019-2020'),
(2422, '0073211666', '', 'Steven Jullius Andisya', '', 'Tanjungpandan ', '2007-07-04', 'L', '', 'Islam', '', 'Jl.Pasar Damar', '', '', '', '', '', '1', '10900998', 'KJ-10900998-3', '-', 'A-0073211666', 'I-0073211666', '1234', '1234', '-', '2019-2020'),
(2419, '0069305461', '', 'Sellveen Andreas', '', 'Manggar', '2006-10-22', 'L', '', 'Budha', '', 'Damar', '', '', '', '', '', '1', '10900998', 'KJ-10900998-3', '-', 'A-0069305461', 'I-0069305461', '1234', '1234', '-', '2019-2020'),
(2418, '0072505121', '', 'Rido', '', 'Mengkubang', '2007-06-25', 'L', '', 'Islam', '', 'Sukadamai', '', '', '', '', '', '1', '10900998', 'KJ-10900998-3', '-', 'A-0072505121', 'I-0072505121', '1234', '1234', '-', '2019-2020'),
(2417, '0045378844', '', 'Rendi Agus Setiawan', '', 'MENGKUBANG', '2004-08-03', 'L', '', 'Islam', '', 'Damai Baru', '', '', '', '', '', '1', '10900998', 'KJ-10900998-3', '-', 'A-0045378844', 'I-0045378844', '1234', '1234', '-', '2019-2020'),
(2416, '0078567160', '', 'Putri Naysilla Kayla Pasha', '', 'Ngawi', '2007-06-14', 'P', '', 'Islam', '', 'Jalan Melati', '', '', '', '', '', '1', '10900998', 'KJ-10900998-3', '-', 'A-0078567160', 'I-0078567160', '1234', '1234', '-', '2019-2020'),
(2413, '0071474134', '', 'Joana Fidira', '', 'Mengkubang', '2007-08-06', 'P', '', 'Islam', '', 'Jl.Sumatera', '', '', '', '', '', '1', '10900998', 'KJ-10900998-3', '-', 'A-0071474134', 'I-0071474134', '1234', '1234', '-', '2019-2020'),
(2414, '0069921286', '', 'Juniarti', '', 'Kelubi', '2006-06-06', 'P', '', 'Islam', '', 'Jalan Tempayan', '', '', '', '', '', '1', '10900998', 'KJ-10900998-3', '-', 'A-0069921286', 'I-0069921286', '1234', '1234', '-', '2019-2020'),
(2415, '0066073846', '', 'Nailah Azzahra', '', 'Sukamandi', '2006-12-22', 'P', '', 'Islam', '', 'Jl.Kebun Sayor', '', '', '', '', '', '1', '10900998', 'KJ-10900998-3', '-', 'A-0066073846', 'I-0066073846', '1234', '1234', '-', '2019-2020'),
(2412, '0056778263', '', 'Jenny Dwi Yenti', '', 'Manggar', '2005-01-15', 'P', '', 'Budha', '', 'Jalan Sumatera', '', '', '', '', '', '1', '10900998', 'KJ-10900998-3', '-', 'A-0056778263', 'I-0056778263', '1234', '1234', '-', '2019-2020'),
(2411, '0053456666', '', 'Harist Ramadhan', '', 'MENGKUBANG', '2005-10-18', 'L', '', 'Islam', '', 'Damai Baru', '', '', '', '', '', '1', '10900998', 'KJ-10900998-3', '-', 'A-0053456666', 'I-0053456666', '1234', '1234', '-', '2019-2020'),
(2410, '0072532496', '', 'Florean Carissa Yek', '', 'Sukamandi', '2007-01-19', 'P', '', 'Budha', '', 'Jl.Pasar Damar', '', '', '', '', '', '1', '10900998', 'KJ-10900998-3', '-', 'A-0072532496', 'I-0072532496', '1234', '1234', '-', '2019-2020'),
(2409, '0054263717', '', 'ELISA ARMAWATI', '', 'KELAPA KAMPIT', '2005-10-02', 'P', '', 'Islam', '', 'Dusun Sukadamai', '', '', '', '', '', '1', '10900998', 'KJ-10900998-3', '-', 'A-0054263717', 'I-0054263717', '1234', '1234', '-', '2019-2020'),
(2407, '0064748548', '', 'Dewi', '', 'Sukamandi', '2006-11-02', 'P', '', 'Islam', '', 'Jalan Rambutan', '', '', '', '', '', '1', '10900998', 'KJ-10900998-3', '-', 'A-0064748548', 'I-0064748548', '1234', '1234', '-', '2019-2020'),
(2408, '0063351468', '', 'Diky', '', 'Malang Lepau', '2006-05-22', 'L', '', 'Islam', '', 'Dusun Malang Lepau', '', '', '', '', '', '1', '10900998', 'KJ-10900998-3', '-', 'A-0063351468', 'I-0063351468', '1234', '1234', '-', '2019-2020'),
(2406, '0064277073', '4993', 'Devan Fadliyanto', '', 'Tanjungpandan', '2006-01-16', 'L', '', 'Budha', '', 'Dusun Garumedang', '', '', '', '', '', '1', '10900998', 'KJ-10900998-3', '-', 'A-0064277073', 'I-0064277073', '1234', '1234', '-', '2019-2020'),
(2405, '0075348747', '', 'Cilsy Levia', '', 'Sukamandi', '2007-08-09', 'P', '', 'Islam', '', 'Jl.Sumatera', '', '', '', '', '', '1', '10900998', 'KJ-10900998-3', '-', 'A-0075348747', 'I-0075348747', '1234', '1234', '-', '2019-2020'),
(2404, '0071682313', '', 'Brillianto Akbar', '', 'Mengkubang', '2007-05-24', 'L', '', 'Islam', '', 'Jl.Tenggiri', '', '', '', '', '', '1', '10900998', 'KJ-10900998-3', '-', 'A-0071682313', 'I-0071682313', '1234', '1234', '-', '2019-2020'),
(2403, '0075894047', '', 'Altisa Felila', '', 'SUKAMANDI', '2007-02-25', 'P', '', 'Islam', '', 'GARUMEDANG', '', '', '', '', '', '1', '10900998', 'KJ-10900998-3', '-', 'A-0075894047', 'I-0075894047', '1234', '1234', '-', '2019-2020'),
(2402, '0054029610', '', 'Afriandi', '', 'Burung Mandi', '2005-11-19', 'L', '', 'Islam', '', 'Dusun Burung Mandi', '', '', '', '', '', '1', '10900998', 'KJ-10900998-3', '-', 'A-0054029610', 'I-0054029610', '1234', '1234', '-', '2019-2020'),
(2401, '0079210233', '', 'Adriyan', '', 'Sukamandi', '2007-12-15', 'L', '', 'Budha', '', 'Sumatera', '', '', '', '', '', '1', '10900998', 'KJ-10900998-3', '-', 'A-0079210233', 'I-0079210233', '1234', '1234', '-', '2019-2020'),
(2400, '0072382841', '', 'Adinda Ramadhani', '', 'Tanjungpandan', '2007-09-16', 'P', '', 'Islam', '', 'Jalan Libut', '', '', '', '', '', '1', '10900998', 'KJ-10900998-3', '-', 'A-0072382841', 'I-0072382841', '1234', '1234', '-', '2019-2020'),
(2398, '0063903406', '', 'Sofi', '', 'Mengkubang', '2006-12-21', 'P', '', 'Islam', '', 'Jalan Sumatera', '', '', '', '', '', '1', '10900998', 'KJ-10900998-2', '-', 'A-0063903406', 'I-0063903406', '1234', '1234', '-', '2019-2020'),
(2399, '0060170088', '', 'Tinton Bagastin', '', 'Sungailiat', '2006-02-13', 'L', '', 'Islam', '', 'Dusun Malang Lepau', '', '', '', '', '', '1', '10900998', 'KJ-10900998-2', '-', 'A-0060170088', 'I-0060170088', '1234', '1234', '-', '2019-2020'),
(2397, '0072402506', '', 'Siti Azizah Shafa', '', 'Bogor', '2007-07-25', 'P', '', 'Islam', '', 'Jl.Pasar Damar ', '', '', '', '', '', '1', '10900998', 'KJ-10900998-2', '-', 'A-0072402506', 'I-0072402506', '1234', '1234', '-', '2019-2020'),
(2396, '0072295693', '', 'Septira Anggriani', '', 'Sukamandi ', '2007-09-19', 'P', '', 'Islam', '', 'Jl.Sumatera', '', '', '', '', '', '1', '10900998', 'KJ-10900998-2', '-', 'A-0072295693', 'I-0072295693', '1234', '1234', '-', '2019-2020'),
(2393, '0062268660', '', 'Natalia', '', 'Manggar', '2006-12-26', 'P', '', 'Islam', '', 'Jalan Kuini', '', '', '', '', '', '1', '10900998', 'KJ-10900998-2', '-', 'A-0062268660', 'I-0062268660', '1234', '1234', '-', '2019-2020'),
(2394, '0052477862', '', 'Ratih', '', 'Sukamandi', '2005-07-19', 'P', '', 'Islam', '', 'Jalan Melati', '', '', '', '', '', '1', '10900998', 'KJ-10900998-2', '-', 'A-0052477862', 'I-0052477862', '1234', '1234', '-', '2019-2020'),
(2395, '0072954972', '', 'REZEL REALITA', '', 'Burung Mandi', '2007-02-25', 'P', '', 'Islam', '', 'Dusun Burung Mandi', '', '', '', '', '', '1', '10900998', 'KJ-10900998-2', '-', 'A-0072954972', 'I-0072954972', '1234', '1234', '-', '2019-2020'),
(2391, '0078981115', '', 'Merly Aliana', '', 'SUKAMANDI', '2007-09-05', 'P', '', 'Islam', '', 'KEBUN SAYOR', '', '', '', '', '', '1', '10900998', 'KJ-10900998-2', '-', 'A-0078981115', 'I-0078981115', '1234', '1234', '-', '2019-2020'),
(2392, '0076576314', '', 'Muhammad Khoir', '', 'SUKAMANDI', '2007-06-22', 'L', '', 'Islam', '', 'SUMATERA', '', '', '', '', '', '1', '10900998', 'KJ-10900998-2', '-', 'A-0076576314', 'I-0076576314', '1234', '1234', '-', '2019-2020'),
(2390, '0075630939', '', 'Marsel', '', 'Sukamandi', '2007-10-27', 'L', '', 'Islam', '', 'Dusun Malang Lepau', '', '', '', '', '', '1', '10900998', 'KJ-10900998-2', '-', 'A-0075630939', 'I-0075630939', '1234', '1234', '-', '2019-2020'),
(2389, '0071254488', '', 'Hensiyani', '', 'SUKAMANDI', '2007-03-13', 'P', '', 'Islam', '', 'GARUMEDANG', '', '', '', '', '', '1', '10900998', 'KJ-10900998-2', '-', 'A-0071254488', 'I-0071254488', '1234', '1234', '-', '2019-2020'),
(2388, '0077101213', '', 'Farel Noviansyah', '', 'Mengkubang', '2007-09-29', 'L', '', 'Islam', '', 'Jl.Sumatera', '', '', '', '', '', '1', '10900998', 'KJ-10900998-2', '-', 'A-0077101213', 'I-0077101213', '1234', '1234', '-', '2019-2020'),
(2387, '0073836717', '', 'Elis Natasyah', '', 'SUKAMANDI', '2007-08-21', 'P', '', 'Islam', '', 'DAMAR', '', '', '', '', '', '1', '10900998', 'KJ-10900998-2', '-', 'A-0073836717', 'I-0073836717', '1234', '1234', '-', '2019-2020'),
(2386, '0073176868', '', 'Elanda Grivani', '', 'Sukamandi', '2007-04-05', 'P', '', 'Islam', '', 'Jl.Pelataran Amplasmen', '', '', '', '', '', '1', '10900998', 'KJ-10900998-2', '-', 'A-0073176868', 'I-0073176868', '1234', '1234', '-', '2019-2020'),
(2385, '0071496957', '', 'Dea Aziza', '', 'Sukamandi', '2007-02-01', 'P', '', 'Islam', '', 'Dusun Malang Lepau', '', '', '', '', '', '1', '10900998', 'KJ-10900998-2', '-', 'A-0071496957', 'I-0071496957', '1234', '1234', '-', '2019-2020'),
(2384, '0059818064', '5017', 'Cheldi Arlfriedy', '', 'Manggar', '2005-11-25', 'L', '', 'Islam', '', 'Dusun Kebun Sayor', '', '', '', '', '', '1', '10900998', 'KJ-10900998-2', '-', 'A-0059818064', 'I-0059818064', '1234', '1234', '-', '2019-2020'),
(2383, '0071191228', '', 'Anggun Dwiningrum', '', 'Sukamandi', '2007-08-20', 'P', '', 'Islam', '', 'Jalan Libut', '', '', '', '', '', '1', '10900998', 'KJ-10900998-2', '-', 'A-0071191228', 'I-0071191228', '1234', '1234', '-', '2019-2020'),
(2382, '0078913160', '', 'Andika Putra Jaya', '', 'Tanjungpandan', '2007-08-25', 'L', '', 'Islam', '', 'Jl Sumatera', '', '', '', '', '', '1', '10900998', 'KJ-10900998-2', '-', 'A-0078913160', 'I-0078913160', '1234', '1234', '-', '2019-2020'),
(2381, '0072486976', '', 'Andhyca', '', 'Manggar', '2007-08-06', 'L', '', 'Islam', '', 'Jl.Tempayan', '', '', '', '', '', '1', '10900998', 'KJ-10900998-2', '-', 'A-0072486976', 'I-0072486976', '1234', '1234', '-', '2019-2020'),
(2380, '0068650953', '', 'Alya Fadilah', '', 'Sukamandi', '2006-05-26', 'P', '', 'Islam', '', 'Jalan Panggung Pelita', '', '', '', '', '', '1', '10900998', 'KJ-10900998-2', '-', 'A-0068650953', 'I-0068650953', '1234', '1234', '-', '2019-2020'),
(2377, '0076637343', '', 'Afriani', '', 'Tanjungpandan', '2007-04-14', 'P', '', 'Islam', '', 'Jalan Melati', '', '', '', '', '', '1', '10900998', 'KJ-10900998-2', '-', 'A-0076637343', 'I-0076637343', '1234', '1234', '-', '2019-2020'),
(2378, '0067151701', '', 'Agis Oktadyra', '', 'Tanjungpandan', '2006-10-19', 'P', '', 'Islam', '', 'Jl Sumatera', '', '', '', '', '', '1', '10900998', 'KJ-10900998-2', '-', 'A-0067151701', 'I-0067151701', '1234', '1234', '-', '2019-2020'),
(2379, '0073169297', '', 'Aliya Safitri', '', 'Burung Mandi', '2007-11-04', 'P', '', 'Islam', '', 'Dusun Burung Mandi', '', '', '', '', '', '1', '10900998', 'KJ-10900998-2', '-', 'A-0073169297', 'I-0073169297', '1234', '1234', '-', '2019-2020'),
(2376, '0064753353', '', 'Aditya Septiansyah', '', 'BATAM', '2006-09-20', 'L', '', 'Islam', '', 'KEBUN SAYOR', '', '', '', '', '', '1', '10900998', 'KJ-10900998-2', '-', 'A-0064753353', 'I-0064753353', '1234', '1234', '-', '2019-2020'),
(2375, '0078751242', '', 'Adelia Saputri', '', 'Jakarta', '2007-06-30', 'P', '', 'Islam', '', 'KABUNG JAYA', '', '', '', '', '', '1', '10900998', 'KJ-10900998-2', '-', 'A-0078751242', 'I-0078751242', '1234', '1234', '-', '2019-2020'),
(2374, '0061676569', '', 'Abiyu Alfarezzi', '', 'Sukamandi', '2006-12-24', 'L', '', 'Islam', '', 'Jalan Mekanik', '', '', '', '', '', '1', '10900998', 'KJ-10900998-2', '-', 'A-0061676569', 'I-0061676569', '1234', '1234', '-', '2019-2020'),
(2373, '0075846663', '', 'William Chandrawinata', '', 'Sukamandi', '2007-02-21', 'L', '', 'Kristen', '', 'Jalan Melati', '', '', '', '', '', '1', '10900998', 'KJ-10900998-1', '-', 'A-0075846663', 'I-0075846663', '1234', '1234', '-', '2019-2020'),
(2372, '0077096859', '', 'Wedina Pertiwi', '', 'Air Ruak', '2007-07-09', 'P', '', 'Islam', '', 'Dusun Tanah Tebok', '', '', '', '', '', '1', '10900998', 'KJ-10900998-1', '-', 'A-0077096859', 'I-0077096859', '1234', '1234', '-', '2019-2020'),
(2370, '0071526918', '', 'Tesa Ulandari', '', 'Sukamandi', '2007-05-30', 'P', '', 'Islam', '', 'Jl.Gang Libut', '', '', '', '', '', '1', '10900998', 'KJ-10900998-1', '-', 'A-0071526918', 'I-0071526918', '1234', '1234', '-', '2019-2020'),
(2371, '0074600603', '', 'Ventry Zuhriany', '', 'Kelapa Kampit', '2007-07-13', 'P', '', 'Islam', '', 'Trem', '', '', '', '', '', '1', '10900998', 'KJ-10900998-1', '-', 'A-0074600603', 'I-0074600603', '1234', '1234', '-', '2019-2020'),
(2369, '0069176037', '', 'Susan Fitriani', '', 'Mengkubang', '2006-06-13', 'P', '', 'Islam', '', 'Dsn Damai Baru', '', '', '', '', '', '1', '10900998', 'KJ-10900998-1', '-', 'A-0069176037', 'I-0069176037', '1234', '1234', '-', '2019-2020'),
(2368, '0057917717', '4981', 'Rizki Ramadhan', '', 'Sukamandi', '2005-10-18', 'L', '', 'Islam', '', 'Sukamandi', '', '', '', '', '', '1', '10900998', 'KJ-10900998-1', '-', 'A-0057917717', 'I-0057917717', '1234', '1234', '-', '2019-2020'),
(2366, '0066540482', '', 'Resti Desianti', '', 'Sukamandi', '2006-12-03', 'P', '', 'Islam', '', 'Jl.Sumatera', '', '', '', '', '', '1', '10900998', 'KJ-10900998-1', '-', 'A-0066540482', 'I-0066540482', '1234', '1234', '-', '2019-2020'),
(2367, '0071174659', '', 'Ririn Ameliza Fitriana', '', 'BURUNG MANDI', '2007-10-14', 'P', '', 'Islam', '', 'BURUNG MANDI', '', '', '', '', '', '1', '10900998', 'KJ-10900998-1', '-', 'A-0071174659', 'I-0071174659', '1234', '1234', '-', '2019-2020'),
(2365, '0073582513', '', 'Raply Dwi Apriza', '', 'Sukamandi', '2007-04-30', 'L', '', 'Islam', '', 'Jl.Penasin', '', '', '', '', '', '1', '10900998', 'KJ-10900998-1', '-', 'A-0073582513', 'I-0073582513', '1234', '1234', '-', '2019-2020'),
(2363, '0074829076', '', 'Lhorenzho Adittiyo', '', 'Sukamandi', '2007-07-08', 'L', '', 'Islam', '', 'Dusun Malang Lepau', '', '', '', '', '', '1', '10900998', 'KJ-10900998-1', '-', 'A-0074829076', 'I-0074829076', '1234', '1234', '-', '2019-2020'),
(2364, '0063571985', '', 'Muhammad Ihsan Sabili', '', 'Sukamandi', '2006-10-19', 'L', '', 'Islam', '', 'Jln.Pasar Damar', '', '', '', '', '', '1', '10900998', 'KJ-10900998-1', '-', 'A-0063571985', 'I-0063571985', '1234', '1234', '-', '2019-2020'),
(2362, '0079817282', '', 'Krislian Pratama', '', 'Sukamandi', '2007-08-02', 'L', '', 'Islam', '', 'Jl.Pasar Damar', '', '', '', '', '', '1', '10900998', 'KJ-10900998-1', '-', 'A-0079817282', 'I-0079817282', '1234', '1234', '-', '2019-2020'),
(2361, '0076716943', '', 'Iqbal Juniarta', '', 'Tanjungpandan', '2007-06-04', 'L', '', 'Islam', '', 'Jl.Penasin', '', '', '', '', '', '1', '10900998', 'KJ-10900998-1', '-', 'A-0076716943', 'I-0076716943', '1234', '1234', '-', '2019-2020'),
(2360, '0066842745', '', 'Hesti Pratiwi', '', 'Mengkubang', '2006-09-19', 'P', '', 'Islam', '', 'Sukadamai', '', '', '', '', '', '1', '10900998', 'KJ-10900998-1', '-', 'A-0066842745', 'I-0066842745', '1234', '1234', '-', '2019-2020'),
(2359, '0073516578', '', 'Fera Felisa', '', 'SUKAMANDI', '2007-05-02', 'P', '', 'Islam', '', 'GARUMEDANG', '', '', '', '', '', '1', '10900998', 'KJ-10900998-1', '-', 'A-0073516578', 'I-0073516578', '1234', '1234', '-', '2019-2020'),
(2358, '0068268672', '', 'Dimas Satria Aji Pangestu', '', 'Bangunan', '2006-04-04', 'L', '', 'Islam', '', 'Dusun Garumedang', '', '', '', '', '', '1', '10900998', 'KJ-10900998-1', '-', 'A-0068268672', 'I-0068268672', '1234', '1234', '-', '2019-2020'),
(2357, '0063221216', '', 'Darmawan', '', 'Sukamandi', '2006-03-20', 'L', '', 'Islam', '', 'Jalan Sumatera', '', '', '', '', '', '1', '10900998', 'KJ-10900998-1', '-', 'A-0063221216', 'I-0063221216', '1234', '1234', '-', '2019-2020'),
(2356, '0065547987', '', 'DALFA NURAINI', '', 'PADANG MARAPALAM', '2006-07-29', 'P', '', 'Islam', '', 'Dsn Sukamandi', '', '', '', '', '', '1', '10900998', 'KJ-10900998-1', '-', 'A-0065547987', 'I-0065547987', '1234', '1234', '-', '2019-2020'),
(2355, '0074838395', '', 'Cristian Moza Indika', '', 'Mengkubang', '2007-04-04', 'L', '', 'Islam', '', 'Dusun Burung Mandi', '', '', '', '', '', '1', '10900998', 'KJ-10900998-1', '-', 'A-0074838395', 'I-0074838395', '1234', '1234', '-', '2019-2020'),
(2353, '0075938932', '', 'Apfrillia Satiwi', '', 'Tanjungpandan', '2007-04-10', 'P', '', 'Islam', '', 'Jalan Mekanik', '', '', '', '', '', '1', '10900998', 'KJ-10900998-1', '-', 'A-0075938932', 'I-0075938932', '1234', '1234', '-', '2019-2020'),
(2354, '0075105218', '', 'Charlie', '', 'Tanjungpandan', '2007-04-15', 'L', '', 'Kristen', '', 'Jl.Sumatera', '', '', '', '', '', '1', '10900998', 'KJ-10900998-1', '-', 'A-0075105218', 'I-0075105218', '1234', '1234', '-', '2019-2020');
INSERT INTO `siswa` (`id`, `nisn`, `nis`, `nama_lengkap`, `nama_panggilan`, `tpt_lahir`, `tgl_lahir`, `jk`, `suku`, `agama`, `no_hp`, `alamat`, `email`, `asal_sekolah`, `tgl_masuk`, `status_masuk`, `tinggal_dengan`, `status`, `npsn`, `kelas_saat_ini`, `foto`, `id_ayah`, `id_ibu`, `pass`, `pass_ortu`, `koord_rumah`, `th_ajaran`) VALUES
(2352, '0052337001', '', 'Andre Pratama', '', 'Burung Mandi', '2005-06-10', 'L', '', 'Islam', '', 'Dusun Burung Mandi', '', '', '', '', '', '1', '10900998', 'KJ-10900998-1', '-', 'A-0052337001', 'I-0052337001', '1234', '1234', '-', '2019-2020'),
(2351, '0059506109', '', 'Andika', '', 'Malang Lepau', '2005-07-12', 'L', '', 'Islam', '', 'Dusun Malang Lepau', '', '', '', '', '', '1', '10900998', 'KJ-10900998-1', '-', 'A-0059506109', 'I-0059506109', '1234', '1234', '-', '2019-2020'),
(2350, '0054446287', '', 'Alvin Wijaya', '', 'Malang Lepau', '2006-07-22', 'L', '', 'Islam', '', 'Jalan Mekanik', '', '', '', '', '', '1', '10900998', 'KJ-10900998-1', '-', 'A-0054446287', 'I-0054446287', '1234', '1234', '-', '2019-2020'),
(2349, '0077201203', '', 'Airin Apriliati', '', 'Tanjungpandan', '2007-04-14', 'P', '', 'Islam', '', 'Jalan Libut', '', '', '', '', '', '1', '10900998', 'KJ-10900998-1', '-', 'A-0077201203', 'I-0077201203', '1234', '1234', '-', '2019-2020'),
(2348, '0074898524', '', 'Agista Vareza', '', 'Sukamandi', '2007-02-20', 'L', '', 'Islam', '', 'Jalan Sumatera', '', '', '', '', '', '1', '10900998', 'KJ-10900998-1', '-', 'A-0074898524', 'I-0074898524', '1234', '1234', '-', '2019-2020'),
(2347, '0078569080', '', 'Abellya', '', 'TANJUNG PANDAN', '2007-08-28', 'P', '', 'Islam', '', 'SUKADAMAI', '', '', '', '', '', '1', '10900998', 'KJ-10900998-1', '-', 'A-0078569080', 'I-0078569080', '1234', '1234', '-', '2019-2020');

-- --------------------------------------------------------

--
-- Struktur dari tabel `surat_panggilan`
--

CREATE TABLE `surat_panggilan` (
  `id` int(11) NOT NULL,
  `nisn` varchar(10) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `npsn` varchar(15) NOT NULL,
  `kasus` varchar(70) NOT NULL,
  `surat` varchar(25) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `th_ajaran`
--

CREATE TABLE `th_ajaran` (
  `id` int(11) NOT NULL,
  `th_ajaran` varchar(10) NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `th_ajaran`
--

INSERT INTO `th_ajaran` (`id`, `th_ajaran`, `status`) VALUES
(1, '2019-2020', 1),
(2, '2020-2021', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `wali_kelas`
--

CREATE TABLE `wali_kelas` (
  `id` int(11) NOT NULL,
  `id_guru` varchar(15) NOT NULL,
  `id_kelas_dipimpin` varchar(15) NOT NULL,
  `nama_kelas` varchar(50) NOT NULL,
  `npsn` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `wali_kelas`
--

INSERT INTO `wali_kelas` (`id`, `id_guru`, `id_kelas_dipimpin`, `nama_kelas`, `npsn`) VALUES
(2, 'G-10900998-9', 'KJ-10900998-1', 'VII  A', '10900998'),
(3, 'G-10900998-5', 'KJ-10900998-2', 'VII  B', '10900998'),
(4, 'G-10900998-23', 'KJ-10900998-3', 'VII  C', '10900998'),
(5, 'G-10900998-4', 'KJ-10900998-4', 'VII  D', '10900998'),
(6, 'G-10900998-10', 'KJ-10900998-5', 'VII  E', '10900998'),
(7, 'G-10900998-12', 'KJ-10900998-6', 'VIII A', '10900998'),
(8, 'G-10900998-11', 'KJ-10900998-7', 'VIII B', '10900998'),
(9, 'G-10900998-14', 'KJ-10900998-8', 'VIII C', '10900998'),
(10, 'G-10900998-6', 'KJ-10900998-9', 'VIII D', '10900998'),
(11, 'G-10900998-3', 'KJ-10900998-10', 'VIII E', '10900998'),
(12, 'G-10900998-13', 'KJ-10900998-11', 'IX A', '10900998'),
(13, 'G-10900998-20', 'KJ-10900998-12', 'IX B', '10900998'),
(14, 'G-10900998-17', 'KJ-10900998-13', 'IX C', '10900998'),
(15, 'G-10900998-19', 'KJ-10900998-14', 'IX D', '10900998'),
(16, 'G-10900998-15', 'KJ-10900998-15', 'IX E', '10900998');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `bulan`
--
ALTER TABLE `bulan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `catatan_konseling`
--
ALTER TABLE `catatan_konseling`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `guru_kelas`
--
ALTER TABLE `guru_kelas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `home_visit`
--
ALTER TABLE `home_visit`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kategori_pelanggaran`
--
ALTER TABLE `kategori_pelanggaran`
  ADD PRIMARY KEY (`idd`);

--
-- Indeks untuk tabel `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kelas_jurusan`
--
ALTER TABLE `kelas_jurusan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `ketidakhadiran`
--
ALTER TABLE `ketidakhadiran`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `laporan_pelajaran`
--
ALTER TABLE `laporan_pelajaran`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `mata_pelajaran`
--
ALTER TABLE `mata_pelajaran`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `nilai_tugas`
--
ALTER TABLE `nilai_tugas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `nilai_uas`
--
ALTER TABLE `nilai_uas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `nilai_uh`
--
ALTER TABLE `nilai_uh`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `nilai_uts`
--
ALTER TABLE `nilai_uts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pelanggaran_siswa`
--
ALTER TABLE `pelanggaran_siswa`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `penelusuran_alumni`
--
ALTER TABLE `penelusuran_alumni`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `permohonan_ijin`
--
ALTER TABLE `permohonan_ijin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `prestasi`
--
ALTER TABLE `prestasi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `rating_guru`
--
ALTER TABLE `rating_guru`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `surat_panggilan`
--
ALTER TABLE `surat_panggilan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `th_ajaran`
--
ALTER TABLE `th_ajaran`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `wali_kelas`
--
ALTER TABLE `wali_kelas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `bulan`
--
ALTER TABLE `bulan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `catatan_konseling`
--
ALTER TABLE `catatan_konseling`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `guru`
--
ALTER TABLE `guru`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=238;

--
-- AUTO_INCREMENT untuk tabel `guru_kelas`
--
ALTER TABLE `guru_kelas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=237;

--
-- AUTO_INCREMENT untuk tabel `home_visit`
--
ALTER TABLE `home_visit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `jurusan`
--
ALTER TABLE `jurusan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kategori_pelanggaran`
--
ALTER TABLE `kategori_pelanggaran`
  MODIFY `idd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT untuk tabel `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kelas_jurusan`
--
ALTER TABLE `kelas_jurusan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `ketidakhadiran`
--
ALTER TABLE `ketidakhadiran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `laporan_pelajaran`
--
ALTER TABLE `laporan_pelajaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `mata_pelajaran`
--
ALTER TABLE `mata_pelajaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `nilai_tugas`
--
ALTER TABLE `nilai_tugas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `nilai_uas`
--
ALTER TABLE `nilai_uas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `nilai_uh`
--
ALTER TABLE `nilai_uh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `nilai_uts`
--
ALTER TABLE `nilai_uts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pelanggaran_siswa`
--
ALTER TABLE `pelanggaran_siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

--
-- AUTO_INCREMENT untuk tabel `penelusuran_alumni`
--
ALTER TABLE `penelusuran_alumni`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `permohonan_ijin`
--
ALTER TABLE `permohonan_ijin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `prestasi`
--
ALTER TABLE `prestasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `rating_guru`
--
ALTER TABLE `rating_guru`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2758;

--
-- AUTO_INCREMENT untuk tabel `surat_panggilan`
--
ALTER TABLE `surat_panggilan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `th_ajaran`
--
ALTER TABLE `th_ajaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `wali_kelas`
--
ALTER TABLE `wali_kelas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
