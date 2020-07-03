-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 12, 2020 at 02:05 AM
-- Server version: 5.6.21
-- PHP Version: 5.5.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `oprec-labamen`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE IF NOT EXISTS `tbl_admin` (
`id_admin` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level_admin` int(1) NOT NULL,
  `nama` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id_admin`, `username`, `password`, `level_admin`, `nama`) VALUES
(1, 'admin', '74a9eea99ceb5dbb85aa5563730b37081b1c8e60613eae5b0723f29492490241f518a19af8ef1d7ece2417463513893abaee406fa339da89779eb7e0067904ecyGuxNkAOLTrvz8cUYb7FFmAtAgnLvzWxpM5Xt9Q/i20=', 1, 'administrator'),
(5, 'panitia', '5ae7d70ac4283f682621d858231d8363570f444df9a0cff9cfed0840bb4f25af94ee2f687d465b7287da77a52aed4101e2cb065f6f2efb9110f0a20a4bf1075bkNZIJz8UQvu89WXMUF6DdeTHcSBLTpKzqgp3/iNJgzQ=', 2, 'Labamen'),
(6, 'haxor', 'b8fcc46bddae10933332d09391cb04f771e4aa1c49cc46511ba2501d452f3ffd9809af4b4d6229688b65927940e833e47b74b57356dbfb9d87d7a44981420194bQBG2aoaUPqGDkxmsfCPlL4P1A3oInIQHEX1yRw9PUc=', 1, 'FallCrescent');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_informasi`
--

CREATE TABLE IF NOT EXISTS `tbl_informasi` (
`id_informasi` int(11) NOT NULL,
  `nama_kegiatan` varchar(255) NOT NULL,
  `tgl_pendaftaran` date NOT NULL,
  `tgl_tutup` date NOT NULL,
  `tgl_lulus_adm` date NOT NULL,
  `tgl_ujian_cat` date NOT NULL,
  `waktu_pengerjaan` int(11) NOT NULL,
  `alur_pendaftaran` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_informasi`
--

INSERT INTO `tbl_informasi` (`id_informasi`, `nama_kegiatan`, `tgl_pendaftaran`, `tgl_tutup`, `tgl_lulus_adm`, `tgl_ujian_cat`, `waktu_pengerjaan`, `alur_pendaftaran`) VALUES
(1, 'Seleksi Penerimaan Asisten & Programmer Lab. Akuntansi Menengah', '2020-05-12', '2020-05-30', '2020-05-02', '2020-05-12', 90, 'Alur_Pendaftaran.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jawaban`
--

CREATE TABLE IF NOT EXISTS `tbl_jawaban` (
`id_jawaban` int(11) NOT NULL,
  `id_peserta` int(11) NOT NULL,
  `list_soal` longtext NOT NULL,
  `list_jawaban` longtext NOT NULL,
  `waktu_mulai` datetime NOT NULL,
  `waktu_selesai` datetime NOT NULL,
  `status_jawaban` enum('Belum','Selesai') NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_jawaban`
--

INSERT INTO `tbl_jawaban` (`id_jawaban`, `id_peserta`, `list_soal`, `list_jawaban`, `waktu_mulai`, `waktu_selesai`, `status_jawaban`) VALUES
(1, 10, '9,13,11,21,3,17,10,19,1,18,20,6,5,16,2,7,15,14,12,4,45,37,58,33,32,34,48,43,42,40,22,49,50,61,39,41,60,44,35,38,59,36,23,62,31,77,69,57,76,79,65,46,8,66,53,72,80,68,47,75,51,54,63,64,56,55,67,73,74,83,78,71,52,81,70', '9:A:Y:S,13:B:Y:B,11:E:Y:S,21:A:Y:S,3:A:Y:B,17:E:Y:S,10:A:Y:S,19:A:Y:S,1:A:Y:S,18:C:Y:B,20:D:Y:S,6:A:Y:S,5:D:Y:S,16:D:Y:S,2:C:Y:S,7:E:Y:S,15:E:Y:S,14:C:Y:S,12:C:Y:S,4:E:Y:S,45:E:Y:B,37:C:Y:S,58:B:Y:S,33:B:Y:S,32:E:Y:S,34:B:Y:S,48:E:Y:B,43:E:Y:S,42:E:Y:S,40:B:Y:B,22:C:Y:S,49:D:Y:B,50:A:Y:B,61:C:Y:S,39:C:Y:S,41:D:Y:S,60:B:Y:S,44:C:Y:B,35:E:Y:S,38:B:Y:S,59:B:Y:S,36:C:Y:S,23:D:Y:S,62:C:Y:S,31:C:Y:S,77:A:Y:S,69:A:Y:B,57:D:Y:S,76:B:Y:B,79:E:Y:S,65:C:Y:S,46:B:Y:B,8:D:Y:S,66:E:Y:S,53:E:Y:S,72:D:Y:S,80:D:Y:B,68:D:Y:B,47:C:Y:S,75:C:Y:B,51:B:Y:S,54:E:Y:S,63:D:Y:S,64:B:Y:S,56:D:Y:S,55:E:Y:S,67:A:Y:S,73:D:Y:S,74:D:Y:S,83:D:Y:S,78:C:Y:S,71:E:Y:S,52:E:Y:S,81:E:Y:B,70:E:Y:S', '2018-12-01 21:47:41', '2018-12-01 23:17:41', 'Selesai'),
(2, 9, '21,13,4,14,18,9,17,5,12,16,10,6,1,2,19,7,11,15,3,20,49,37,32,38,40,58,23,50,36,34,62,44,43,33,39,35,31,61,42,45,41,60,22,59,48,76,69,46,67,8,81,47,53,54,74,68,65,52,56,72,73,70,55,71,80,78,83,63,75,79,51,66,64,57,77', '21:E:Y:B,13:B:Y:B,4:B:Y:S,14:B:Y:S,18:C:Y:B,9:E:Y:S,17:B:Y:S,5:A:Y:B,12:B:Y:S,16:C:Y:S,10:C:Y:S,6:A:Y:S,1:B:Y:B,2:C:Y:S,19:C:Y:B,7:C:Y:B,11:D:Y:S,15:C:Y:B,3:C:Y:S,20:B:Y:S,49:E:Y:S,37:D:Y:S,32:D:Y:S,38:C:Y:S,40:D:Y:S,58:E:Y:S,23:B:Y:S,50:B:Y:S,36:B:Y:S,34:B:Y:S,62:B:Y:S,44:C:Y:B,43:C:Y:S,33:E:Y:S,39:B:Y:S,35:D:Y:S,31:C:Y:S,61:E:Y:S,42:D:Y:S,45:D:Y:S,41:A:Y:S,60:A:Y:S,22:A:Y:B,59:A:Y:S,48:B:Y:S,76:C:Y:S,69:C:Y:S,46:B:Y:B,67:D:Y:S,8:C:Y:S,81:C:Y:S,47:B:Y:B,53:E:Y:S,54:E:Y:S,74:B:Y:S,68:D:Y:B,65:C:Y:S,52:E:Y:S,56:A:Y:S,72:C:Y:S,73:C:Y:B,70:A:Y:B,55:C:Y:S,71:C:Y:S,80:B:Y:S,78:D:Y:B,83:C:Y:S,63:B:Y:S,75:D:Y:S,79:C:Y:S,51:C:Y:S,66:D:Y:S,64:E:Y:S,57:E:Y:B,77:C:Y:S', '2018-12-01 21:58:35', '2018-12-01 23:28:35', 'Selesai'),
(94, 1, '31,59,56,69,77,46', '31:X:N:S,59:X:N:S,56:X:N:S,69:X:N:S,77:X:N:S,46:X:N:S', '2020-05-12 06:33:19', '2020-05-12 08:03:19', 'Selesai');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_lab`
--

CREATE TABLE IF NOT EXISTS `tbl_lab` (
`id_lab` int(11) NOT NULL,
  `nama_lab` varchar(255) NOT NULL,
  `jumlah_formasi` int(11) NOT NULL,
  `jumlah_peserta` int(11) NOT NULL,
  `jumlah_lulus_adm` int(11) NOT NULL,
  `lampiran` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_lab`
--

INSERT INTO `tbl_lab` (`id_lab`, `nama_lab`, `jumlah_formasi`, `jumlah_peserta`, `jumlah_lulus_adm`, `lampiran`) VALUES
(8, 'Programmer', 1, 12, 5, 'Programmer2.pdf'),
(9, 'Asisten', 1, 33, 0, 'Asisten2.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_nilai`
--

CREATE TABLE IF NOT EXISTS `tbl_nilai` (
`id_nilai` int(11) NOT NULL,
  `id_peserta` int(11) NOT NULL,
  `id_soal` int(11) NOT NULL,
  `nilai_peserta` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_nilai`
--

INSERT INTO `tbl_nilai` (`id_nilai`, `id_peserta`, `id_soal`, `nilai_peserta`) VALUES
(1, 10, 1, 15),
(2, 10, 2, 30),
(3, 10, 3, 35),
(4, 9, 1, 40),
(5, 9, 2, 10),
(6, 9, 3, 35),
(7, 27, 1, 20),
(8, 28, 2, 20);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pengaturan_soal`
--

CREATE TABLE IF NOT EXISTS `tbl_pengaturan_soal` (
`id` bigint(15) NOT NULL,
  `id_soal` bigint(15) NOT NULL,
  `nama_soal` varchar(150) NOT NULL,
  `limit` int(5) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pengaturan_soal`
--

INSERT INTO `tbl_pengaturan_soal` (`id`, `id_soal`, `nama_soal`, `limit`) VALUES
(1, 1, 'Bahasa Indonesia', 20),
(2, 2, 'Web Programming', 20),
(3, 3, 'Networking', 20);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pertanyaan`
--

CREATE TABLE IF NOT EXISTS `tbl_pertanyaan` (
`id_pertanyaan` int(11) NOT NULL,
  `id_soal` int(11) NOT NULL,
  `pertanyaan` text NOT NULL,
  `option_1` varchar(255) NOT NULL,
  `option_2` varchar(255) NOT NULL,
  `option_3` varchar(255) NOT NULL,
  `option_4` varchar(255) NOT NULL,
  `option_5` varchar(255) NOT NULL,
  `jawaban` varchar(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pertanyaan`
--

INSERT INTO `tbl_pertanyaan` (`id_pertanyaan`, `id_soal`, `pertanyaan`, `option_1`, `option_2`, `option_3`, `option_4`, `option_5`, `jawaban`) VALUES
(1, 1, '<p>Persamaan kata <strong>Pikun</strong> adalah....</p>\r\n', 'Tua', 'Pelupa', 'Lanjut', 'Tuli', 'Kuat', 'B'),
(2, 1, '<p>Persamaan kata <strong>Prodeo</strong> adalah....</p>\r\n', 'Murah', 'Tak berharga', 'Kuat', 'Berpenjaga', 'Cuma-cuma', 'E'),
(3, 1, '<p>Persamaan kata <strong>Asasi</strong> adalah....</p>\r\n', 'Pokok', 'Hak', 'Utama', 'Pertama', 'Pasti', 'A'),
(4, 1, '<p>Lawan kata <strong>Semu</strong> adalah....</p>\r\n', 'Palsu', 'Murni', 'Gadungan', 'Asli', 'Baik', 'D'),
(5, 1, '<p>Lawan kata <strong>Seteru</strong> adalah....</p>\r\n', 'Kawan', 'Lawan', 'Tetap', 'Pasangan', 'Ganda', 'A'),
(6, 1, '<p>Lawan kata <strong>Universal</strong> adalah....</p>\r\n', 'Kausal', 'Mondial', 'Parsial', 'Furtural', 'Futual', 'C'),
(7, 1, '<p>Keris:Jawa....</p>\r\n', 'Badik:Bali', 'Madura:Celurit', 'Kujang:Sunda', 'Pisau:Dapur', 'Aceh:Rencong', 'C'),
(8, 3, '<p>Deskripsi abstrak dari sebuah informasi dan tingkah laku dari sekumpulan data disebut....</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'Class', 'Object', 'Method', 'Function', 'Model', 'A'),
(9, 1, '<p>Kemeja : kancing = Rumah : &hellip;.</p>\r\n', 'Atap', 'Pintu', 'Kamar', 'Tirai', 'WC', 'B'),
(10, 1, '<p>RUMAH : genteng = KEPALA : &hellip;.</p>\r\n', 'Ikat Pinggang', 'Topi', 'Pita', 'Rambut', 'Mata', 'D'),
(11, 1, '<p>DINGIN : selimut = HUJAN : &hellip;.</p>\r\n', 'Air', 'Payung', 'Dingin', 'Basah', 'Banjir', 'B'),
(12, 1, '<p>MOBIL : bensin = PELARI : &hellip;.</p>\r\n', 'Makanan ', 'Sepatu', 'Kaos', 'Lintasan', 'Lelah', 'A'),
(13, 1, '<p>Mirna selalu memberi hadiah barang-barang mahal. Andi diberi hadiah dasi oleh mirna. Jadi &hellip;.</p>\r\n', 'Mirna selalu memberi hadiah dasi', 'Dasi pemberian mirna mahal', 'Dasi pemberian mirna murah', 'Andi selalu diberi hadiah barang-barang mahal', 'Dasi adalah barang mahal', 'B'),
(14, 1, '<p>Air merupakan kebutuhan pokok manusia. Masyarakat di padang pasir hanya sedikit memiliki persediaan air. Jadi &hellip;.</p>\r\n', 'Masyarakat di padang pasir harus berhemat menggunakan air', 'Masyarakat di padang pasir tidak membutuhkan air', 'Masyarakat di padang pasir harus berhemat menggunakan pasir', 'Meskipun tanpa air, masyarakat di padang pasir tetap bias hidup', 'Air bukanlah kebutuhan pokok masyarakat di padang pasir', 'A'),
(15, 1, '<p>Semua menu makanan restoran B diolah dari bahan organic. Sebagian menu makanan diolah tanpa menggunakan minyak (tidak digoreng)....</p>\r\n', 'Semua menu yang diolah dengan cara digoreng bukan menu restoran B.', 'Semua menu restoran B diolah tanpa digoreng dengan minyak', 'Sebagian menu restoran B dengan bahan organi diolah dengan cara digoreng', 'Semua menu diolah dengan cara digoreng menggunakan bahan organic', 'Semua menu restoran B diolah tanpa digoreng tampa minyak', 'C'),
(16, 1, '<p>13, 14, 13, 14, 11, 12, 11, 12, 15, 16, 13 &hellip;.</p>\r\n', '14, 13, 14', '14, 15, 13', '12, 16, 14', '13, 13, 13', '14, 14, 14', 'A'),
(17, 1, '<p>1, 9, 2, 2, 9, 3, 3, 9, 4, 4 &hellip;.</p>\r\n', '9', '8', '7', '5', '6', 'A'),
(18, 1, '<p>18, 20, 24, 32 &hellip;.</p>\r\n', '80, 48', '46, 60', '48, 80', '40, 48', '34, 36', 'C'),
(19, 1, '<p>304,09 : 64,7 = &hellip;.</p>\r\n', '0,047', '0,74', '4,7', '7,4', '47', 'C'),
(20, 1, '<p>15% x (12,5 + 33) = &hellip;.</p>\r\n', '68,25', '6,825', '682,5', '0,6825', '6825', 'A'),
(21, 1, '<p>(6 : 9) + (7 x 9) &ndash; (5 x 9)&nbsp; = ....</p>\r\n', '2,66', '9,66', '12,66', '17,66', '18,66', 'E'),
(22, 2, '<p>Dua buah komputer terkoneksi dan dihubungkan dengan printer maka komputer seperti ini disebut &hellip;.</p>\r\n', 'LAN', 'MAN', 'WAN', 'Personal Komputer', 'Mikro Komputer', 'A'),
(23, 2, '<p>LAN membentuk pola kerja yang disebut &hellip;.</p>\r\n', 'Workstation', 'Workpersonal', 'Personal komputer', 'Personal Internet', 'Super Komputer', 'A'),
(31, 2, '<p>Belanja melalui internet disebut &hellip;</p>\r\n', 'Browsing	', 'Surving	', 'Hacking	', 'Chatting	', 'Online Shop', 'D'),
(32, 2, '<p>Alamat-alamat dalam halaman web dikenal dengan nama &hellip;</p>\r\n', 'Web', 'UTP', 'URL', 'IP', 'ISO', 'C'),
(33, 2, '<p>Jika anda bekerja dengan komputer yang tidak terhubung dengan komputer lain maka anda dikatakan bekerja secara &hellip;.</p>\r\n', 'Stand Alone', 'LAN', 'Paralel', 'Embeded System', 'Workstation', 'A'),
(34, 2, '<p>Yahoo, MSN dan Google merupakan &hellip;</p>\r\n', 'Search Engine', 'Aplikasi', 'Start Up', 'URL', 'Situs', 'A'),
(35, 2, '<p>Download adalah &hellip;.</p>\r\n', 'Memasukkan data ke internet', 'Memperbarui data di internet', 'Memasukkan data dari internet ke komputer', 'Streaming Film', 'Menghapus Data', 'C'),
(36, 2, '<p>Contoh-contoh software desain grafis adalah &hellip;.</p>\r\n', 'Adobe Ilustrator, Adobe FreeHand dan Corel Draw', 'Adobe Ilustrator, Adobe After Efect dan Corel Draw', 'Adobe Ilustrator, Adobe Flash Player dan Sublime Text', 'Visual Studio, Adobe Flash Player dan Sublime Text', 'Adobe Ilustrator, Adobe Flash Player dan Adobe Photo Shop', 'A'),
(37, 2, '<p>Pembagian ruang dalam hardisk diistilahkan dengan &hellip;.</p>\r\n', 'Partisi', 'Debug', 'Divisi', 'Karnel', 'Router', 'A'),
(38, 2, '<p>Dibawah ini merupakan contoh pemogramman berbasis objek adalah &hellip;.</p>\r\n', 'Ruby, C++, Java', 'Delphi, C#, VB 6', 'VB 6, Ruby, Java', 'VB 6, VB.Net,Java', 'Delphi, C#, Assembler', 'D'),
(39, 2, '<p>Agar bias melakukan penginstalan dengan menggunakan CD, maka settingan First Bootnya adalah &hellip;.</p>\r\n', 'Hardisk', 'Flashdisk', 'CPU', 'CD Rom', 'VGA', 'D'),
(40, 2, '<p>Sebelum ada sistem operasi orang hanya menggunakan komputer dengan &hellip;.</p>\r\n', 'Signal analog dan signal telepon', 'Signal analog dan signal digital', 'Signal radio dan signal digital', 'Signal GPRS dan signal 3G', 'Signal radio dan signal telepon', 'B'),
(41, 2, '<p>Apa kepanjangan dari GUI....</p>\r\n', 'Graphical User International', 'Graphical User Interface', 'Graphical Unit Interface', 'Graphic User Interface', 'Graphical Unit International', 'B'),
(42, 2, '<p>Kegunaan dari tv tunner adalah &hellip;</p>\r\n', 'Tv Tunner digunakan sebagai alat untuk menerima siaran', 'Tv Tunner digunakan sebagai alat untuk mengirim siaran televise pada komputer', 'Tv Tunner digunakan sebagai alat untuk menerima siaran televise pada komputer', 'Tv Tunner digunakan sebagai alat untuk menerima siaran radio', 'Tv Tunner digunakan sebagai alat untuk mengirim siaran radio', 'C'),
(43, 2, '<p>Program aplikasi multimedia berbasis vector selain CorelDraw adalah &hellip;.</p>\r\n', 'Adobe Ilustrator, Macromedia Freehand, Adobe Photoshop', 'Adobe Ilustrator, Macromedia Freehand, Macromedia Dream Weaver', 'Adobe Ilustrator, Macromedia Freehand, Macromedia Flash', 'Macromedia Flash, Auto Cad, Adobe Photoshop', 'Adobe Ilustrator, Macromedia Freehand, Auto Cad', 'B'),
(44, 2, '<p>Sebuah sistem operasi berbasis linux yang dirancang atau dibuat untuk perangkat selular seperti smartphone dan PC tablet merupakan pengertian dari &hellip;</p>\r\n', 'Blackberry', 'I-pad', 'Android', 'Raspberry', 'Arduino', 'C'),
(45, 2, '<p>Yang merupakan jenis-jenis malware adalah ....</p>\r\n', 'Worm', 'Spyware ', 'Virus komputer', 'Salah Semua', 'A, B dan C Benar', 'E'),
(46, 3, '<p>Suatu bagan dengan simbol-simbol tertentu yang menggambarkan urutan proses secara mendetail dan hubungan antara suatu proses (instruksi) dengan proses lainnya dalam suatu program disebut &hellip;</p>\r\n', 'Flowchart', 'Algoritma ', 'Pseudecode', 'Bahasa pemograman', 'Function', 'B'),
(47, 3, '<p>Sebuah kode yang digunakan untuk menulis sebuah algoritma dengan cara yang bebas yang tidak terikat dengan bahasa pemograman tertentu disebut &hellip;</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'Flowchart', 'Pseodocode', 'Class', 'Method', 'Object', 'B'),
(48, 2, '<p>Untuk menjaga agar sinyal dan proses support tetap baik dalam jaringan diperlukan &hellip;</p>\r\n', 'Hub', 'UTP ', 'Router', 'RJ 45', 'Repeater', 'E'),
(49, 2, '<p>ISP merupakan &hellip;</p>\r\n', 'Jaringan komputer', 'Strart Up', 'Browser', 'Penyedia jasa internet', 'Sistem Operasi', 'D'),
(50, 2, '<p>Sistem yang bertugas mengatur semua perangkat lunak dan perangkat keras dalam sebuah komputer sehingga dapat digunakan oleh user disebut ....</p>\r\n', 'Sistem Operasi', 'Sistem Komputer', 'Ilmu Komputer', 'Sistem aplikasi', 'Kecerdasan Buatan', 'A'),
(51, 3, '<p>Simbol pada flowchart yang menghasilkan keluaran true dan false adalah &hellip;</p>\r\n', 'Decision', 'Processing', 'Preparation', 'Terminator', 'Oval', 'A'),
(52, 3, '<p>Simbol untuk pelaksanaan suatu bagian (sub-program)/ procedure disebut &hellip;</p>\r\n', 'Preparation', 'Enclousur', 'Predefine Proses', 'Manual Proses', 'Terminator', 'C'),
(53, 3, '<p>Variabel integer memiliki rentangan nilai dari &hellip;</p>\r\n', '-2.147.483.648 sampai 2.147.483.647', '-32.768 sampai 32.767', '3,4 E -38 sampai 3,4 E +38', '1,7 E -308 sampai 1,7 E +308', '2,4 E -98 sampai 2,4 E +88', 'B'),
(54, 3, '<p>Variabel yang berisi nilai alamat suatu lokasi memori tertentu disebut ....</p>\r\n', 'Integer', 'Float', 'Bolean', 'Pointer', 'String', 'D'),
(55, 3, '<p>Apakah maksud dari error message &ldquo;Lvalue require&rdquo; &hellip;</p>\r\n', 'Yang terletak di sebelah kiri operator (==) haruslah berupa ungkapan yang memiliki alamat', 'Yang terletak di sebelah kanan operator (==) haruslah berupa ungkapan yang memiliki alamat', 'Yang terletak di sebelah kanan operator (=) haruslah berupa ungkapan yang memiliki alamat', 'Yang terletak di sebelah kiri operator (=) haruslah berupa ungkapan yang memiliki alamat', 'Yang terletak di sebelah kiri operator (==) haruslah berupa angka', 'D'),
(56, 3, '<p>Apakah maksud dari error message &ldquo;Compound statement missing }&rdquo; &hellip;</p>\r\n', 'Kurang tanda kurung kurawal pembuka pada program', 'Kurang tanda kurung kurawal penutup pada program ', 'Kurang tanda titik koma pada program', 'Kurang tanda titik dua pada program', 'Kurang tanda sama dengan pada program', 'B'),
(57, 3, '<p>Yang merupakan konsep dari Object Oriented Program (OOP) adalah&hellip;</p>\r\n', 'Class', 'Inheritance', 'Enkapsulasi', 'Pewarisan Sifat', 'A, B dan C Benar', 'E'),
(58, 2, '<p>Urutan tahapan pengembangan perangkat lunak yang benar dengan menggunakan metode waterfall adalah &hellip;</p>\r\n', 'Desain, analisa, penulisan kode program,pengujian,maintenance', 'Desain, analisa, pengujian, penulisan kode program, maintenance', 'Analisa, desain, penulisan kode program, pengujian, maintenance', 'Analisa, desain,pengujian, penulisan kode program, maintenance', 'Analisa, pengujian, desain, penulisan kode program, maintenance', 'C'),
(59, 2, '<p>Tujuan dari rekayasa perangkat lunak adalah, kecuali ....</p>\r\n', 'Memperoleh biaya produksi perangkat lunak yang rendah', 'Menghasilkan perangkat lunak yang kinerjanya tinggi, andal dan tepat waktu', 'Mendapatkan perangkat lunak yang dapat bekerja pada satu jenis platform', 'Mendapatkan perangkat lunak yang dapat bekerja pada Berbagai jenis platform', 'Menghasilkan perangkat lunak yang biaya perawatannya rendah', 'C'),
(60, 2, '<p>Hubungan dimana perubahan yang terjadi pada suatu elemen mandiri akan mempengaruhi elemen yang bergantung padanya elem yang tidak mandiri disebut dengan &hellip;</p>\r\n', 'Include', 'Ekstend', 'Dependency', 'Inheriten', 'Association', 'C'),
(61, 2, '<p>Satu kumpulan konversi pemodelan yang digunakan untuk menentukan atau menggambarkan sebuah sistem <em>software </em>yang terkait dengan objek disebut &hellip;</p>\r\n', 'Object Oriented Program', 'Unified Modeling Language', 'Use Case Diagram', 'Algoritma Pemrograman', 'Struktur Data', 'B'),
(62, 2, '<p>DOS interrupt yang bertugas untuk memberhentikan proses komputer terhadap suatu program COM adalah....</p>\r\n', 'Int 21', 'Int 21h', 'Int 20', 'Int 20h', 'Int 22', 'D'),
(63, 3, '<p>1. Intruksi</p>\r\n\r\n<p>2. Proses</p>\r\n\r\n<p>3. Aksi</p>\r\n\r\n<p>Urutkan dasar &ndash; dasar algoritma diatas agar prosesnya menjadi benar:</p>\r\n', '1-2-3', '1-3-2', '2-1-3', '3-1-2', '3-2-1', 'A'),
(64, 3, '<p>Header file yang digunakan untuk proses input output didalam bahasa C++ adalah ....</p>\r\n', 'Stdio', 'Conio', 'Iostream', 'Getche', 'Get', 'C'),
(65, 3, '<p>Terdapat potongan program dibawah ini :</p>\r\n\r\n<p>cout&lt;&lt;&quot;bang&quot;;</p>\r\n\r\n<p>cout&lt;&lt;&quot;ambo&quot;;</p>\r\n\r\n<p>cout&lt;&lt;&quot;university&quot;;</p>\r\n\r\n<p>Maka output dari potongan program diatas adalah...</p>\r\n', 'Bang Ambo University', 'BANG Ambo University', 'Bang ambo university', 'bang ambo university', 'BANG AMBO UNIVERSITY', 'D'),
(66, 3, '<p>Diberikan potongan program dibawah ini :</p>\r\n\r\n<p>a = 5;&nbsp; b = 10 ;</p>\r\n\r\n<p>cout &lt;&lt; &ldquo; a = &ldquo; ;</p>\r\n\r\n<p>a = b &ndash; a * a;</p>\r\n\r\n<p>Apa output dari potongan program diatas :</p>\r\n', 'a=', '-15', '25', '5', 'Error', 'A'),
(67, 3, '<p>1.Hitung nilai C = A + B</p>\r\n\r\n<p>2.Masukkan Nilai A dan B</p>\r\n\r\n<p>3.Tampilkan hasil C</p>\r\n\r\n<p>4.Selesai</p>\r\n\r\n<p>Urutan Algoritma yang benar adalah....</p>\r\n', '1-2-3-4', '3-2-1-4', '2-1-3-4', '2-3-1-4', '3-1-2-4', 'C'),
(68, 3, '<p>Kriteria algoritma kecuali,.....</p>\r\n', 'Ada Output', 'Efektifitas dan Efesiensi', 'Jumlah Langkahnya Berhingga, ', 'Tidak Terstruktur', 'Berakhir', 'D'),
(69, 3, '<p>Perhatikan potongan program dibawah ini</p>\r\n\r\n<p>#include</p>\r\n\r\n<p>void main()</p>\r\n\r\n<p>{</p>\r\n\r\n<p>&nbsp;&nbsp; int A[ 5 ] = { 5 };</p>\r\n\r\n<p>&nbsp;&nbsp; int I;</p>\r\n\r\n<p>&nbsp;&nbsp; for (I=0; I &lt;= 4; I++)</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; printf(&ldquo;%2i&rdquo;, A[I] );</p>\r\n\r\n<p>}</p>\r\n\r\n<p>Output Program tersebut adalah....</p>\r\n', '5 0 0 0 0', '4 0 0 0 0', '3 0 0 0 0', '2 0 0 0 0', '1 0 0 0 0', 'A'),
(70, 3, '<p>Perhatikan potongan program dibawah ini</p>\r\n\r\n<p>Public class Contoh {</p>\r\n\r\n<p>&nbsp;&nbsp; public static void main(String[ ] args) }</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; char[ ] C = {&lsquo;A&rsquo;, &lsquo;B&rsquo;, &lsquo;C&rsquo; };</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; for(int I=0; I &lt; C.length(); I++) {</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; System.out.print( C[ I ] );</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; System.out.println(&ldquo;Selesai&rdquo;);</p>\r\n\r\n<p>Output program dibawah ini adalah....</p>\r\n', 'ABCSelesai', 'abcselesai', 'AbcSelesai', 'ABCSELESAI', 'abcSelesai', 'A'),
(71, 3, '<p>Merupakan sekumpulan instruksi yang membentuk&nbsp; satu&nbsp; unit&nbsp; serta&nbsp; memiliki nama ....</p>\r\n', 'Fungsi', 'Class', 'Construktor', 'Destruktor', 'Prosedure', 'A'),
(72, 3, '<p>Kemampuan suatu fungsin untuk memanggil dirinya sendiri ....</p>\r\n', 'Fungsi', 'Rekursi', 'Algoritma', 'Class', 'Prosedure', 'B'),
(73, 3, '<p>Fungsi anggota yang mempunyai nama yang sama dengan nama kelas dan dijalakan secara otomatis saat suatu obyek diciptakan</p>\r\n', 'Class', 'Destruktor', 'Konstruktor', 'Function', 'Main', 'C'),
(74, 3, '<p>Fungsi anggota kelas yang dijalankan secara otomatis pada saat obyek akan sirna&nbsp; atau merupakan kebalikan dari constructor, yaitu berguna untuk menghancurkan atau membuang sebuah objek (kelas) dari memori ....</p>\r\n', 'Function', 'String', 'Array', 'Konstruktor', 'Destruktor', 'E'),
(75, 3, '<p>Fungsi memungkinkan&nbsp; sebuah fungsi dapat menerima bermacammacam tipe dan memberikan nilai balik yang bervariasi pula....</p>\r\n', 'Inheriten', 'Function', 'Overloading', 'Object', 'Class', 'C'),
(76, 3, '<p>Array dua dimensi memiliki dua attribut yaitu</p>\r\n', 'Indek dan Data', 'Baris dan Kolom', 'Baris dan data', 'Data dan kolom', 'String dan data ', 'B'),
(77, 3, '<p>Struktur&nbsp; secara&nbsp; logik&nbsp; membuat&nbsp; suatu tipe&nbsp; data&nbsp; baru(<em>user&nbsp; defined&nbsp; type</em>) yang dapat&nbsp;&nbsp;&nbsp;&nbsp; dipergunakan untuk menampung data/informasi yang bersifat ....</p>\r\n', 'Nyata', 'Abstrak', 'Absolut', 'Tunggal', 'Majemuk', 'E'),
(78, 3, '<p>Variabel yang berisi alamat dari varibel yang mempunyai nilai tertentu....</p>\r\n', 'Varchar', 'Float', 'Integer', 'Pointer', 'String', 'D'),
(79, 3, '<p>Sifat dalam bahasa berorientasi obyek yang memungkinkan sifat-sifat dari suatu kelas diturunkan ke kelas lain....</p>\r\n', 'Inheritance', 'Encapsulation', 'Polimorphism', 'Rekursi', 'Algoritma', 'A'),
(80, 3, '<p>Algoritma diperkenalkan oleh....</p>\r\n', 'Brian W', 'Denis M', 'Rick Mascitti ', 'Abu Ja’far Muhammad Ibnu Musa Al Khawarizmi', 'Ibnu Sina', 'D'),
(81, 3, '<p>File-file yang berisi berbagai deklarasi, seperti fungsi, variabel, dan sebagainya....</p>\r\n', 'int main()', 'main() ', 'void main()', 'Fungsi main', 'File Header', 'E'),
(83, 3, '<p>Perintah #include berfungsi untuk ....</p>\r\n', 'Membaca karakter dengan spasi', 'Membaca karakter tanpa spasi', 'Menghapus layar', 'Penjumlahan Bilangan', 'Membaca Bilangan Berkoma', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_peserta`
--

CREATE TABLE IF NOT EXISTS `tbl_peserta` (
`id_peserta` int(11) NOT NULL,
  `id_lab` int(11) NOT NULL,
  `nim` int(11) NOT NULL,
  `password_peserta` varchar(255) NOT NULL,
  `nama_peserta` varchar(255) NOT NULL,
  `region` varchar(255) NOT NULL,
  `ipk` varchar(255) NOT NULL,
  `tmp_lahir` varchar(255) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jenis_kelamin` enum('Laki-laki','Perempuan') NOT NULL,
  `agama` varchar(255) NOT NULL,
  `no_hp` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `foto` text NOT NULL,
  `berkas_peserta` text NOT NULL,
  `tgl_selesai_pendaftaran` date NOT NULL,
  `status_pendaftaran` varchar(255) NOT NULL,
  `status_verifikasi` enum('Belum','Lulus','Tidak Lulus') NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_peserta`
--

INSERT INTO `tbl_peserta` (`id_peserta`, `id_lab`, `nim`, `password_peserta`, `nama_peserta`, `region`, `ipk`, `tmp_lahir`, `tgl_lahir`, `jenis_kelamin`, `agama`, `no_hp`, `email`, `foto`, `berkas_peserta`, `tgl_selesai_pendaftaran`, `status_pendaftaran`, `status_verifikasi`) VALUES
(1, 9, 11111111, 'f5e09c311bf02ee90d6291e46c11cf2a648ab360f79205b17d7d75686b3229e5337590826fcf1364787c29bc929d277b991ffe0e032a51c817253bf6b290a12aF9HukHokUMTY/Kvtg3bsL1tC8WuiX1wksUSw3ChQirg=', '11', 'Depok', '4.00', 'JAKARTA', '2020-05-01', 'Laki-laki', 'Kristen', '11', '11111111@gmail.com', 'beautiful_view3.jpg', 'sample_pdf4.pdf', '2020-05-02', 'Selesai', 'Lulus'),
(27, 9, 24218254, 'b8f5edcd594c30f2dd988b1d4741817ea115afed53a5e2b99e276660737312737c4c5668fb58f2665d77a795ac84c9a3b1c3a8608248bd35d251b17c82e7fed4tKC2eALQ+xOuCh0lLWfPbga/MrWT8UMqpoOMcorjNTk=', 'MONICA', '', '3.04', 'TANGERANG', '2000-03-12', 'Perempuan', 'Kristen', '082114004828', 'Sinagamonika644@gmail.com', 'IMG-20200421-WA0044.jpg', 'Monica2EB19.rar', '2020-04-23', 'Selesai', 'Belum'),
(28, 9, 26218528, '0b8a54f889ed7796cdd691f4b51dbd4f87b94212f1662a1388320da5c82797fd9bfec8881fe1ad9e6e2c01e35bdb0d7952c456eaa2695e239706fce3adcb8960UeUEZwMBML9LKximJxUlNvkA25LX0nF1I280TOeymJI=', 'SARAH NUR ARAFAH', '', '3.29', 'JAKARTA', '2000-03-15', 'Perempuan', 'Islam', '082298195588', 'sarah.nurarafah@gmail.com', 'Foto.jpg', 'Sarah_2EB17.pdf', '2020-04-21', 'Selesai', 'Lulus'),
(30, 0, 23216822, '9d0831bd735f495e28537be3c26a41c81a036a9a60044ad40b02dfc50e9812e7e4512039a2b0a90cc0b9ace02bb3fe321d9e6ef4dd675dfcc2a563b5d287b8822mD2mODcQQQdW+BnlpEI29/gTstIyxa7S0liY4bS4Ic=', 'KARINA RUSMA DEWI', '', '3.61', 'BANDUNG', '1998-03-01', 'Perempuan', 'Islam', '085972805608', 'karinarusma@gmail.com', 'IMG_20190303_065426.jpg', '', '0000-00-00', 'Belum Selesai', 'Belum'),
(31, 9, 22218276, '8d14eefa5599cfce6e4819dde76ad79ab30fdc4889a4035860ae181faa20bc628a07ec9794e5cfbb29eb16ddf1774d9c87308b96361744c27c7441398f1ba7dbWx0z/w7e0N5paMXBwiRd43UANaVVBlCKyESz0ubR194=', 'ERINA AULIA CHAIRUNNISA', '', '3.49', 'BEKASI', '2000-09-18', 'Perempuan', 'Islam', '087889194248', 'erinaauliac@gmail.com', 'ERINA_AULIA_2EB16.jpg', 'Erina_Aulia_Chairunnisa_2EB16.pdf', '2020-04-22', 'Selesai', 'Belum'),
(34, 9, 21218987, 'a0397dfebe26c40a7da72d0ee99b8b07d4feea9dffd45892565a903f8310635e8476b4703163de0ef9b413bdf3900f303dd88ea28e6a3e1eb64dc9b206935a86eYSUD2j4cyUj/duVLEtjC5c3Nc5KAWsv49/mxje0660=', 'DINA APRIANI SUJANA', '', '3.44', 'BOGOR', '2000-04-05', 'Perempuan', 'Islam', '081546053642', 'sujanadina@yahoo.com', 'foto_dina_3X4.jpg', 'DinaAprianiSujana_2EB09.zip', '2020-04-30', 'Selesai', 'Belum'),
(35, 9, 26218701, '499f488a31d1a0a1605a75433cac099905da855e6c3212291676c27b2197e31a7c00ad8892b631082ab3e2716e00638b369cf16efba65546d9cfa97cb37962bcmQxzRLJaDSg/kUlOyZskCWwAB81SeDFPPGn0XwmtdM8=', 'SHOFI TASYA ANISAH', '', '3.22', 'BATAM', '2000-09-29', 'Perempuan', 'Islam', '081382818951', 'tasyanisah299@gmail.com', 'aslab.jpg', 'Shofi_Tasya_Anisah.rar', '2020-04-23', 'Selesai', 'Belum'),
(38, 8, 13117946, 'cfb6105dcbaa3562e72c133085f980641c3ae8c6b37f46c1f30644af285165b72736abcc96eb7c99d62d90ffbf8a7d1808aea2a1be1c29172040b3b9aefe9613/869f3maG8tc6mY27ysMRSS7ojf5lgNl872+frVAzN4=', 'MUHAMMAD FADHIL HAFIDZ', '', '3.56', 'JAKARTA', '1999-06-03', 'Laki-laki', 'Islam', '08871245047', 'kyodove@gmail.com', 'fadhil_lab_akutansi2.jpg', 'Muhammad_Fadhil_Hafidz_3KA12.rar', '2020-04-24', 'Selesai', 'Belum'),
(39, 9, 26218418, '0f2cf1fc29b8ad8198f2cd6e6c0f15d9ad420fddcf31f2aef1a8af03f2c9ae45783684c42005e36de47029cc87bf9165d48fc1cea93347b9ba6977ef691d0da1QbEhD+Ih8Tv08+/tlnqSLOyiiLOO5cR6T1s0vM3nWN4=', 'SABILLAH FEBRI ANDINY', '', '3.96', 'DEPOK', '2000-02-21', 'Perempuan', 'Islam', '081283225260', 'sabillahfebria@gmail.com', 'Pas_foto_3_x_4.jpg', 'Sabillah_Febri_Andiny_2EB011.rar', '2020-04-26', 'Selesai', 'Belum'),
(40, 9, 22218547, 'b11d6f7c1309252161393969d63b613b151647e7050af6953b8ef2d573aa313febb3e543d13970ceb6d9a4a0ef5b9dac29c1536f449d1f6ee2b3c83bf490924ewEgAVCCK82Qh4aj+5AgfN1N7tg08U2nhx2YHO/pYORo=', 'FARID ARDHIYANTOKO', '', '3.02', 'BOGOR', '2000-07-06', 'Laki-laki', 'Islam', '085798964709', 'farid.ardhiyantoko.office@gmail.com', 'IMG_97541.jpg', 'Farid_Ardhiyantoko_2EB07.rar', '2020-04-25', 'Selesai', 'Belum'),
(41, 9, 23218299, '407724eb20061b330fee1f863c786329dbe3d66732a10a81d72ddb1ebb64c86ea7d55400c14e4fdce00f9d93a131a086bfbfbb5ce1413ee2ddd2d98dae620c61gTpnhWWi6++xvaIQaEHiAgIx6RBJB07t7Ft2yPHnQws=', 'INDAH NUR AFIFI ', '', '3.00', 'DEPOK', '2000-01-30', 'Perempuan', 'Islam', '082262084762', 'indahafifi@gmail.com', 'Foto_4x6.jpg', 'Surat_Lamaran_(_Indah_Nur_Afifi_2EB07_).pdf', '2020-04-25', 'Selesai', 'Belum'),
(43, 9, 20218774, 'e774d131c355bf13a9d1f48b7e965af1df39feab261608d8e64cd002d44e74d3ac8a548d1e72f3123754aaa94e02eaacae4b7f38ffc6660c5fdc17ca27f96d9ftfKnwlh6dkAYpGfOhbvfFjFAP4B258GthzmPK4mzEHs=', 'ANDRE CHRISTIANO PRATAMA', '', '3.62', 'JAKARTA', '2020-01-23', 'Laki-laki', 'Kristen', '081517832394', 'achristiano345@gmail.com', 'PAS_FOTO-1.jpg', 'Berkas_Labamen_Andre_Christiano_Pratama_20218774_2EB13.zip', '2020-04-26', 'Selesai', 'Belum'),
(44, 9, 22218320, 'daf69c586eb43b4ad1d489a0abe7589ac1cf4573a072a1e4f43d64ca27a7431e40cb9666f36d89f17648e5968fb40d12bb90af21c21ad1bae3d7dd025fe2124co4VZbGEOjtVfJECYM8JGRaobFqBrxyOwQjUgHNglKBQ=', 'EVI FARIDATUL AFIFAH', '', '3.47', 'GROBOGAN', '2000-04-11', 'Perempuan', 'Islam', '081385989729', 'evifaridaa@gmail.com', '4x6.jpg', 'Evi_Faridatul_Afifah_2EB09.zip', '2020-04-26', 'Selesai', 'Belum'),
(45, 8, 51418039, '1c90f7b4a1d883a1a5fff747db91e3e60f1e24f9f636fd73817621822afd32676092ed09e3afc99da9c50eba58ae856472991a9a91ac633d941df169cec1b07bs0X9ExqRF9NDGp1Eu6GMc70PKauR01a5HBQn60kzobo=', 'ARI DWI SAPUTRA', '', '3.54', 'JAKARTA', '2000-04-05', 'Laki-laki', 'Islam', '085155372678', 'pooyutreari@gmail.com', 'Foto_3x4.jpg', 'Ari_Dwi_Saputra_2IA18.rar', '2020-04-27', 'Selesai', 'Belum'),
(46, 9, 23218783, 'de100d004f0d62d80a9d9cd632c92bfb67bd23e520b15a408e3aa3bbcb29f9cb071feed767db9fcaeae0d37d109e9ac400d55b89419c1c0d5d38a49d43d35e5e0ezO2Hm7L0x81YtT7exbIXz9Jr/y+GvMyO7v/xBWHTY=', 'LIDIA HANDAYANI', '', '3.07', 'MUARA ENIM', '1999-02-21', 'Perempuan', 'Islam', '081585739734', 'lidiahandayani093@gmail.com', 'Untitled-8.jpg', 'Lidia_Handayani_2EB03.rar', '2020-04-26', 'Selesai', 'Belum'),
(47, 9, 21218569, '50c8669bee20ff028287beca041bb41cad7364b0748a5c0684ca5101841db6c00ec0b7016348cd047c47fd5353ff36c36602c174f71a6ee2d3959a6414faf577x9fz6nsgJPf6dqQ+4YnhCIPaH1vgQ0jD21FUbps5Vw4=', 'CITRA LARAS ', '', '3.05', 'KUNINGAN', '1999-12-12', 'Perempuan', 'Islam', '085788882709', 'citralaras99@gmail.com', 'CEMERLANG-645x_2.jpg', 'CITRALARAS_2EB03.rar', '2020-04-26', 'Selesai', 'Belum'),
(48, 9, 20218925, '781f3be97aa24c6517d93b833a8cf6c6e11c9ef9869493973689f278ac9f777f9fea0c7037ce0437f5c470505fdc0d2e22213d067d949100e0478078c4058673Qe9w+nPbahd6VQjVWL0tfzGo6QBEpGsHvowF8oQpuHU=', 'ANNISA DHIYA SALSABILLAH', '', '3.62', 'JAKARTA', '2000-07-11', 'Perempuan', 'Islam', '081289644885', 'annisalsabilla@gmail.com', 'foto_3x4_.jpg', 'Annisa_Dhiya_Salsabillah_2EB03.zip', '2020-04-27', 'Selesai', 'Belum'),
(49, 9, 20218962, '3b3bff08fb6c7e2443610c13ff8bcb675b904a452ab78780c21069eea057eb1494cfc4408d478aba897aa87950096aa890c0ceacd71bd7fee105b1dc370c067anh7672vPCPfSXxvUqnJUFmxNDTxXzU05NRFyyijsD7g=', 'ANNISYA DITA PRATIWI', '', '3.64', 'JAKARTA', '2000-05-20', 'Perempuan', 'Islam', '085772665676', 'annisyadita20@gmail.com', 'foto_3x4.jpg', 'Annisya_Dita_Pratiwi_2EB03.zip', '2020-04-27', 'Selesai', 'Belum'),
(50, 9, 20218812, 'a89f6e5a49d37aabeb6237c4925df08c6084d290155c8879302cf285081f8bbcf05f39285cf6fe19e582c562c7255660c06b3d8f0158e20bbe91d402d472c808fqeHZTnleaGXQTKrmuQC0JzIGyUjAw0DakXskpNMwMI=', 'ANGELA OKTAVANYA', '', '3.82', 'BANDAR LAMPUNG', '2000-10-14', 'Perempuan', 'Budha', '08978151185', 'angelaoktvn@gmail.com', 'Fotoo.jpg', 'Angela_Oktavanya_2EB01.rar', '2020-04-27', 'Selesai', 'Belum'),
(51, 9, 20218985, 'a99eedb235ff7e4b16ad8f93443892353de92aedb1c2d4a4ab0268bc191b312b895e3e11c049a023099bd296c33c0db41ddd1a6dfc9ab165eb4122c9b1a9d757ppC+VM94tjqHftzrjLOWLSyTBqB4n+v0dOdtl4nHSM4=', 'APRILIA FERO ADITYAS', '', '3.60', 'KENDAL', '2000-04-30', 'Perempuan', 'Islam', '089668850242', 'apriliafero30@gmail.com', 'IMG_6777_copy.jpg', 'ASISTENSI_APRILIA_FERO.rar', '2020-04-30', 'Selesai', 'Belum'),
(52, 9, 22218590, 'd4e9e9677ea936fe460ee47cd2e7d87ad8b9669abbe7e3a0f9d765ccd614122ffca99e0cb31ad18c85c261f71dce2bbed0a5ecbcbf063595e37a7fbd5bfca660IaQwkRawFMg/gJpNBfejoHFgloBStJdLYXfeP+WHCGQ=', 'FATHIYA NURFAHIRA', '', '3.22', 'JAKARTA', '2000-07-20', 'Perempuan', 'Islam', '082213021252', 'fathiyanurfahira7@gmail.com', 'DSC_0501.jpg', 'fathiya_nurfahira_2EB07.rar', '2020-04-27', 'Selesai', 'Belum'),
(53, 9, 26218843, 'c56463fa9af30c7ca63335eb4ac3195e39def0abea251792c74520d709bbb54a5183878e8f4f6180a1b5a5af019327556d10e04140c135d1a3c9d904ab08a8c0sX8BLOU4wUhBQFRjsi0tm4mJItmpM1TD9XfFhvGkBF8=', 'SUCI RAHMADINA', '', '3.44', 'BEKASI', '2000-07-25', 'Perempuan', 'Islam', '087876176547', 'sucirmdnpn14@gmail.com', 'pas_foto.JPG', 'Suci_Rahmadina_2EB17.rar', '2020-04-27', 'Selesai', 'Belum'),
(54, 9, 25218712, 'f0d3482ab9ee09f397781f572b3045eded7450d257ae8063a11f246d91f912e118af0d23b74a39dca14833e07a8bdc0dddede02ea0f11e3538ce1ca271e85cdbvG61++PPJhvtvhTYIs0GraaZ3Y4LUvdhaPyczkO116U=', 'RACHEL BEAUTY ELLEN SARI', '', '3.25', 'JAKARTA', '2000-08-08', 'Perempuan', 'Kristen', '081275601759', 'rachelhutahaean8800@gmail.com', '51-min(1).jpg', 'Surat_Lamaran.pdf', '2020-04-28', 'Selesai', 'Belum'),
(55, 9, 23218791, '4664c17fbe16b40602166ad010b271554800e222cc5d504c62a45d9def8e082d154e65d572d0b530e3dd04a949b94e4b0808426911f7d8ed0eefe2858eb448bcLiFTW54Fiu0MIsg8qtoj+A4MKq35k5kGvWX+C6funcE=', 'LINDA JAYA LESTARI ', '', '3.45', 'BOYOLALI ', '2000-11-01', 'Perempuan', 'Islam', '085813152379', 'lindajayales@gmail.com', 'linda_jaya.jpg', 'CURRICULUM_VITAE_cv_.rar', '2020-04-28', 'Selesai', 'Belum'),
(56, 9, 26218982, '7116596decc319bd009677e9b6621598bd387feb066a4a105aa640c294c78e6c48e4b5b3259be3d4732650a3085932820d90ee0540af74e351cff9fc0bc7e08aSIj+OZ/ffB9FeIdiQkLbWQkBQG5ph51ckcrJnciAUPs=', 'TASHA AMALIA RUKMANA', '', '3.00', 'JAKARTA', '2000-05-29', 'Perempuan', 'Islam', '089634115820', 'tashaamaliaaa@gmail.com', 'pas_foto.jpg', 'Tasha_amalia_2EB17.rar', '2020-04-28', 'Selesai', 'Belum'),
(57, 8, 56417756, '7006b1772591f5309a0b347bb8089fd7392d81ce49bc22f2004821e937dc0449ec2fd7338cbddbc0e8f2d275040ddf6d226bc1abc7348c3363acb64902f749469lUKtJirIHdPx7hq+zyvUvv30ysyRkWLP40fjGMCGVY=', 'ANTONI HASEA TRIGOGO ARITONANG', '', '2.83', 'JAKARTA', '1999-06-14', 'Laki-laki', 'Kristen', '085781871477', 'antonihasea@gmail.com', 'crop.jpg', 'AntoniHaseaTrigogoAritonang_3IA14.rar', '2020-04-28', 'Selesai', 'Belum'),
(58, 9, 22218097, 'a876f843176d24df179d966188701affa6912ae81a3cca7431c267475ff77cc11e476d83d2a35ff7b69b425b91f788908351397d04d886eb8ffe7ebe46c50da14H/YdT/8ICiurH/Mst27AI+732MCkut9zpGDJfAX8No=', 'DWI KORI MELATI', '', '3.04', 'JAKARTA', '2000-08-06', 'Perempuan', 'Islam', '0895376578784', 'dwikorim@gmail.com', 'Foto_Dwi_22218097.JPG', 'Dwi_Kori_Melati_2EB09.rar', '2020-04-29', 'Selesai', 'Belum'),
(60, 9, 23218215, 'e9cc01bd44ee232899dc65a9809d60ed6fe4bbd37ea5104274ebc9b791c4274fb9d27514e528dfbb3b2b7d3a0bb80bbc3e71f19b597db46f068c406847ab821eQRp20xUnL+NLjxdA6ofGw698xSTgOeXGxPPhh4VW3OY=', 'IFANI DWI APRILIANI', '', '3.78', 'BEKASI', '2000-04-07', 'Perempuan', 'Islam', '0895330752415', 'aprilianii17@yahoo.com', '3x4.jpg', 'IFANI_DWI_APRILIANI_2EB15.rar', '2020-04-29', 'Selesai', 'Belum'),
(61, 9, 23218854, '02e411cf9e9146b3133211c5fbb33479c3167b773c34bd971cee8b838fc542b593b2cebabc07504d605c067b4345b0147a23d07cff79da67425d496b963f7f4emeRtxc9MMteeq5mvoBL7oC7ch/dBCAzKZFLcpQ5VOUs=', 'LUTFIA DYAH WULANSARI', '', '3.58', 'BOGOR', '2000-01-22', 'Perempuan', 'Islam', '087839267522', 'lutfiadyah1@gmail.com', 'Pas_Foto_Lutfia_Dyah_W.jpg', 'Lutfia_Dyah_Wulansari_2EB04.rar', '2020-04-29', 'Selesai', 'Belum'),
(62, 9, 23218605, '23f063012307b8e5f875e9feffdf0039674d2729ea2cbc1cc84932275ceb109c64ba2efd69c7844275a1c47a1b684bc300cec782ccb5e02a3d2a6dc6725347845x6bELV4AAW3g1u5MIKaxh/gHuW/2DwaKrQKwoxtAK0=', 'KARTIKA WIDYASTUTI', '', '3.53', 'JAKARTA', '1999-10-29', 'Perempuan', 'Islam', '081311963585', 'k.widy2910@gmail.com', 'FOTO_B_BIRU.jpg', 'Kartika_Widaystuti_2EB03.rar', '2020-04-29', 'Selesai', 'Belum'),
(63, 9, 26218469, '96b7273e3e24a1bf21c8d99847b861fc2c6114d4296ba1cd8f8ffd2fcccd9423b9c2bb72ec5ea82c8ed3a97c3e1496f1e6db04140fd32b760bfb6dee7e8582613hrInnS8eZhECanDPqyCEpiPyxoQaeRH+qS+hiEV+mo=', 'SALSA FARADILA', '', '3.87', 'SERANG', '2001-07-10', 'Perempuan', 'Islam', '087875670369', 'salsafaradila12@gmail.com', 'pasfoto_3x4_(salsa).jpg', 'SALSAFARADILA_2EB01.rar', '2020-04-29', 'Selesai', 'Belum'),
(64, 9, 20218863, '5636c17d337fe36a687adba37dcb390e9abee200208b1596175bd6d6d18b5f7a5f36e5194076cacbbc5c269639bff3716d4a6366bfd96bc5d7306689c2c21ddcqtUr4LaWrgOMFCqy4NCY4G84Ibvgixo6jXNpcS3nY2c=', 'ANINDA PURI AYUDHIA', '', '3.85', 'BEKASI', '1999-02-15', 'Perempuan', 'Islam', '081299143651', 'anindayudhia@gmail.com', 'Aninda_Puri_Ayudhia.jpg', 'Aninda_Puri_Ayudhia_2EB01.rar', '2020-04-29', 'Selesai', 'Belum'),
(65, 9, 21218559, '3f4e27594270c6dbfcbb6538f8e3309a1244ccdc6aa995b916bff51ed5b487c3406894855895761a12e65fcdadb72187cb3a04ea3a9de8e611d38a681c625ec8048VlvigYCkT+gfpnpGphUVkW2032UwQEGE2Vr9bVHk=', 'CINDY AFIA MUSTIKARIN', '', '3.80', 'CIAMIS', '2001-05-18', 'Perempuan', 'Islam', '085317776600', 'cindymustikarin@gmail.com', '4x61.jpg', 'CINDYAFIA_2EB01.rar', '2020-04-29', 'Selesai', 'Belum'),
(66, 9, 23218875, 'e16315e42dd95319218d97434a15bd690d9911ad017808c73ffee141cfc252f4feda9fb3f844070e872ba0ac48ed9e16b95e951ddef9c66074c7eedc7d486b87X0QjKWdPtXSQnDCLphfZPhHH9aCI42dOPpTtaNAcaiU=', 'LYDIA GRISELDA', '', '3.65', 'TANGERANG', '2000-07-04', 'Perempuan', 'Islam', '0895610754450', 'lydgris@gmail.com', 'LydiaG.jpg', 'berkaslamaran.rar', '2020-04-29', 'Selesai', 'Belum'),
(67, 9, 23218206, 'a3d83ed140926d6042d8c9daa56422b0e87a09bd2c81bc320812ac7a66e21ae7536c3a3b41a09624b818c9951cc8d862703610a3b608bd91b52f8bc6309be3d8NCU0mRBD1c8WYwr9D95zayEfkKqWfj3Qcu4PzFFanw4=', 'ICHSANNI NUR UTAMI', '', '3.07', 'JAKARTA', '2000-11-07', 'Perempuan', 'Islam', '08111057128', 'ichsanni.nurutami@gmail.com', '2020-04-29_08_14_34_1-01.jpg', 'Ichsanni_Nur_Utami.rar', '2020-04-29', 'Selesai', 'Belum'),
(68, 8, 56416342, '4efcd4023eb800b599e360acfa59ce87e5016034598dd7c6b63ed7c624f3a89c84e88434dd3bcb3a36398af7d20268200636bd9b8388db50f299d5f1f7e1ff66a7Sz3Hz8UhAJ/H6Zm5rp2GwtOrEq+MrSa+4tE8YM0tY=', 'RIDHO HAFIS', '', '3.11', 'JAKARTA', '1998-09-25', 'Laki-laki', 'Islam', '085769488109', 'ridhohafis11@gmail.com', '3x41.jpg', 'Ridho_Hafis_4IA05.rar', '2020-04-29', 'Selesai', 'Belum'),
(69, 0, 27216007, '3e7bdfc167780479d930b654b4e2f3e3df54017e95c84e955fba7318404f6c9de54bc5e141cea2dc51652105d06a022e07af637b834a5dc7330f0f787081b630akppHig4cSTWXHv0tNd1gKREjzSeyvcihL6aFAsNbmg=', '', '', '', '', '0000-00-00', 'Laki-laki', '', '', '', '', '', '0000-00-00', '', 'Belum'),
(70, 0, 53416414, 'd407ac178c3c382d55bea2b41602b66a70051a545980ebdeed9161e520f3378024854ef82f71983b06017a5522ca9aaac146ad35048f3ffc32323885bf25bb9ap9DUoDCg0GvidxwpfA+CliFrM6ZfnZ/Hmqg4IeepK/g=', '', '', '', '', '0000-00-00', 'Laki-laki', '', '', '', '', '', '0000-00-00', '', 'Belum'),
(71, 9, 26218453, 'da07292fc571d391c261515de5e5b8321ebfc9d67115e1a763771cce04c872989b635608370de645ab6b2612ae49cae2a220d1b8dfbfdf12d60954cc5f69f5ce/VnfMh75pkIKJdNKGgP1DPL0p3S3EcvUejQqnRS8BvU=', 'SALMA AULIA FEBRINA', '', '3.38', 'SUKABUMI', '2000-02-15', 'Perempuan', 'Islam', '089689363577', 'salmaaulia585@gmail.com', 'FOTO.jpg', 'SALMA_AULIA_FEBRINA_2EB101.rar', '2020-04-30', 'Selesai', 'Belum'),
(73, 8, 22222222, 'b8eb1e0211b021ce98f1013ad87b57f8338876a45320b8434c60e2de2f7465a670662a24058e2e4a547590f49a833acc4a9e92f4b693d9cd290dce4f40b4e0c139SOL7MtJXS5BDk7lWY3up84MhLtQSdgqzdGx3e5oNs=', '22', 'Depok', '4.00', 'JAKARTA', '2020-05-01', 'Laki-laki', 'Kristen', '22222222', '22@gmail.com', 'beautiful_view4.jpg', 'sample_pdf5.pdf', '2020-05-03', 'Selesai', 'Lulus'),
(74, 8, 33333333, 'f4efe99aa2efc789d51726cf7117ab6a4e1abf777d9321696d41fbca1c6575313280b2f09025c2529d5f9a751f1cd50918a287f2e33b7ade319d6d4a491fca7eF/P8x0MbZIOIE5mttFSC4b1ivca6JJ0JdE0YiiEG9fw=', '33', 'Kalimalang', '4.00', 'JAKARTA', '2020-05-01', 'Laki-laki', 'Kristen', '12345', '33@gmail.com', 'beautiful_view.jpg', 'sample_pdf.pdf', '2020-05-12', 'Selesai', 'Belum');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_soal`
--

CREATE TABLE IF NOT EXISTS `tbl_soal` (
`id_soal` int(11) NOT NULL,
  `nama_soal` varchar(255) NOT NULL,
  `jumlah_soal` int(11) NOT NULL,
  `minimal_benar` int(11) NOT NULL,
  `total_nilai` int(11) NOT NULL,
  `passing_grade` int(11) NOT NULL,
  `limit` int(9) NOT NULL,
  `id_lab` varchar(100) NOT NULL,
  `nama_lab` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_soal`
--

INSERT INTO `tbl_soal` (`id_soal`, `nama_soal`, `jumlah_soal`, `minimal_benar`, `total_nilai`, `passing_grade`, `limit`, `id_lab`, `nama_lab`) VALUES
(1, 'Bahasa Indonesia', 40, 25, 200, 125, 1, '8', 'Programmer'),
(2, 'Web Programming', 30, 15, 150, 75, 2, '8,9', 'Programmer, Asisten'),
(3, 'Networking', 30, 15, 150, 75, 9, '9', 'Asisten');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
 ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `tbl_informasi`
--
ALTER TABLE `tbl_informasi`
 ADD PRIMARY KEY (`id_informasi`);

--
-- Indexes for table `tbl_jawaban`
--
ALTER TABLE `tbl_jawaban`
 ADD PRIMARY KEY (`id_jawaban`);

--
-- Indexes for table `tbl_lab`
--
ALTER TABLE `tbl_lab`
 ADD PRIMARY KEY (`id_lab`);

--
-- Indexes for table `tbl_nilai`
--
ALTER TABLE `tbl_nilai`
 ADD PRIMARY KEY (`id_nilai`);

--
-- Indexes for table `tbl_pengaturan_soal`
--
ALTER TABLE `tbl_pengaturan_soal`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_pertanyaan`
--
ALTER TABLE `tbl_pertanyaan`
 ADD PRIMARY KEY (`id_pertanyaan`);

--
-- Indexes for table `tbl_peserta`
--
ALTER TABLE `tbl_peserta`
 ADD PRIMARY KEY (`id_peserta`);

--
-- Indexes for table `tbl_soal`
--
ALTER TABLE `tbl_soal`
 ADD PRIMARY KEY (`id_soal`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tbl_informasi`
--
ALTER TABLE `tbl_informasi`
MODIFY `id_informasi` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_jawaban`
--
ALTER TABLE `tbl_jawaban`
MODIFY `id_jawaban` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=95;
--
-- AUTO_INCREMENT for table `tbl_lab`
--
ALTER TABLE `tbl_lab`
MODIFY `id_lab` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `tbl_nilai`
--
ALTER TABLE `tbl_nilai`
MODIFY `id_nilai` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `tbl_pengaturan_soal`
--
ALTER TABLE `tbl_pengaturan_soal`
MODIFY `id` bigint(15) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_pertanyaan`
--
ALTER TABLE `tbl_pertanyaan`
MODIFY `id_pertanyaan` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=84;
--
-- AUTO_INCREMENT for table `tbl_peserta`
--
ALTER TABLE `tbl_peserta`
MODIFY `id_peserta` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=75;
--
-- AUTO_INCREMENT for table `tbl_soal`
--
ALTER TABLE `tbl_soal`
MODIFY `id_soal` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
