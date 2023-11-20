-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: Nov 20, 2023 at 01:17 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `landing`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `email`, `password`) VALUES
(1, 'urban@gmail.com', 'urban123');

-- --------------------------------------------------------

--
-- Table structure for table `daerah_region`
--

CREATE TABLE `daerah_region` (
  `id_region` int(11) NOT NULL,
  `region` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `daerah_region`
--

INSERT INTO `daerah_region` (`id_region`, `region`) VALUES
(1, 'yogyakarta'),
(2, 'gunungkidul'),
(3, 'kulonprogo'),
(4, 'sleman'),
(5, 'bantul');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id_events` int(11) NOT NULL,
  `gambar` text NOT NULL,
  `judul` varchar(255) NOT NULL,
  `tanggal` date NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `timeline` enum('ongoing','upcoming','','') DEFAULT NULL,
  `id_kategori_event` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gambar_region`
--

CREATE TABLE `gambar_region` (
  `id_gambar_reg` int(11) NOT NULL,
  `nama_tempat` varchar(255) NOT NULL,
  `gambar` text NOT NULL,
  `cerita` text NOT NULL,
  `id_daerah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gambar_region`
--

INSERT INTO `gambar_region` (`id_gambar_reg`, `nama_tempat`, `gambar`, `cerita`, `id_daerah`) VALUES
(1, 'Tugu', 'Tugu.jpg', 'Tugu Yogyakarta, juga dikenal sebagai Tugu Pal atau Tugu Jogja, adalah monumen ikonik yang berdiri megah di pusat Kota Yogyakarta, Indonesia. Monumen ini memiliki tinggi sekitar 15,5 meter dan merupakan simbol kekuatan dan kejayaan Kerajaan Mataram Islam. Tugu ini berlokasi di persimpangan Jalan Malioboro dan Jalan Jenderal Sudirman, menjadikannya sebagai pusat lalu lintas dan titik kumpul utama di kota ini. Dirancang pada tahun 1889 oleh seorang arsitek Belanda, Tugu Yogyakarta telah menjadi landmark yang tak terpisahkan dari keindahan budaya dan sejarah kota ini, menarik pengunjung dengan keunikan arsitektur dan makna historisnya.', 1),
(2, 'Malioboro', 'malioboro.jpg', 'Jalan Malioboro adalah sebuah jalan legendaris yang terletak di pusat kota Yogyakarta, Indonesia. Merupakan pusat perbelanjaan dan kehidupan malam yang terkenal, Jalan Malioboro menawarkan pengalaman berbelanja yang unik dengan berbagai toko tradisional yang menjual kerajinan tangan, batik, dan souvenir khas Yogyakarta. Selain itu, jalan ini juga dipenuhi dengan warung makan dan pedagang kaki lima yang menawarkan hidangan lezat. Di malam hari, suasana di Jalan Malioboro semakin hidup dengan lampu-lampu hias yang menerangi trotoarnya, menciptakan atmosfer yang ramai dan berwarna. Jalan Malioboro tidak hanya menjadi destinasi wisata belanja, tetapi juga mencerminkan kehidupan budaya dan sejarah kota Yogyakarta.', 1),
(3, 'Taman Sari', 'taman_sari.jpeg', 'Taman Sari, terletak di Yogyakarta, Indonesia, adalah kompleks keraton yang indah dan bersejarah yang dibangun pada abad ke-18 sebagai tempat rekreasi bagi keluarga kerajaan. Terletak hanya sejauh berjalan kaki dari Keraton Yogyakarta, Taman Sari menawarkan pesona arsitektur Jawa klasik dengan kolam-kolam yang indah, paviliun-paviliun, dan taman yang rimbun. Selain sebagai tempat hiburan, Taman Sari juga memiliki makna sejarah sebagai bekas tempat mandi kerajaan. Keindahan dan keanggunan Taman Sari membuatnya menjadi destinasi wisata yang populer di Yogyakarta, mengajak pengunjung untuk menyelami atmosfer keagungan masa lalu kerajaan Jawa.', 1),
(4, 'Kraton', 'kraton.jpeg', 'Kraton Yogyakarta, juga dikenal sebagai Istana Ngayogyakarta Hadiningrat, merupakan istana resmi Kesultanan Ngayogyakarta Hadiningrat yang terletak di pusat Kota Yogyakarta, Indonesia. Dibangun pada tahun 1755 oleh Sultan Hamengkubuwono I, Kraton Yogyakarta adalah kompleks istana yang mencakup area seluas 14 hektar dengan bangunan-bangunan berarsitektur tradisional Jawa yang megah. Lokasinya yang strategis berada di tengah kota membuat Kraton Yogyakarta menjadi salah satu daya tarik utama bagi wisatawan yang ingin mengenal lebih dekat sejarah dan budaya Jawa. Di dalam kompleks ini, pengunjung dapat menjelajahi museum, galeri seni, serta melihat pertunjukan seni tradisional yang memperkaya pengalaman budaya mereka.', 1),
(5, 'Candi Prambanan', 'candi_prambanan.jpeg', 'Candi Prambanan, juga dikenal sebagai Candi Rara Jonggrang, merupakan kompleks candi Hindu abad ke-9 yang terletak sekitar 17 kilometer timur laut Yogyakarta, Indonesia. Dibangun pada masa kerajaan Mataram Kuno, candi ini merupakan masterpiece arsitektur Hindu dengan tiga candi utama yang didedikasikan untuk Trimurti, yakni Brahma, Wisnu, dan Siwa. Keindahan arsitektur Prambanan tercermin dalam relief-releifnya yang menggambarkan kisah epik Ramayana dan Mahabharata. Candi ini menjadi salah satu situs warisan dunia UNESCO dan menarik pengunjung dengan kemegahan dan keindahan arsitektur serta nilai sejarah yang kaya.', 4),
(6, 'Ratu Boko', 'ratu_boko.jpg', 'Candi Ratu Boko adalah kompleks arkeologi yang terletak di dataran tinggi sekitar 3 kilometer selatan dari Candi Prambanan, di Yogyakarta, Indonesia. Candi ini menawarkan pemandangan spektakuler dari atas bukit, memberikan pengunjung gambaran keindahan arsitektur klasik Jawa. Dikenal sebagai istana kerajaan pada masa lampau, Candi Ratu Boko mencakup reruntuhan candi, gapura, kolam, dan taman yang luas. Keindahan alam dan warisan sejarah membuatnya menjadi tujuan wisata yang menarik, sementara lokasinya yang strategis memungkinkan pengunjung menikmati panorama matahari terbenam yang memukau di kawasan ini.', 4),
(7, 'Pantai Parangtritis', 'pantai_parangtritis.jpg', 'Pantai Parangtritis terletak di Kabupaten Bantul, Yogyakarta, Indonesia, dan menawarkan pesona alam yang memesona dengan garis pantai yang panjang dan pasir putih yang lembut. Dikelilingi oleh tebing-tebing batu karst yang menjulang tinggi, pantai ini menciptakan pemandangan spektakuler yang memikat para pengunjung. Ombak yang gemuruh dan panorama matahari terbenam yang memukau membuat Parangtritis menjadi destinasi favorit bagi pecinta pantai dan peselancar. Selain keindahan alamnya, Pantai Parangtritis juga memiliki nilai sejarah dan budaya yang kuat, terdapat legenda lokal yang melibatkan Nyai Loro Kidul, ratu laut Jawa yang diyakini memiliki pengaruh mistis di daerah tersebut.', 5),
(8, 'Pantai Goa Cemara', 'pantai_goa_cemara.png', 'terletak di Bantul, Yogyakarta, menawarkan keindahan alam yang memesona dengan kombinasi pasir putih, batu karang, dan pepohonan cemara yang menjulang. Pantai ini dikenal sebagai destinasi yang tenang dan sejuk, dihiasi dengan goa-goa kecil yang memberikan nuansa mistis. Tersembunyi di balik pepohonan, Goa Cemara memberikan pengalaman pantai yang unik dan berbeda dari destinasi wisata sekitarnya. Letaknya yang tidak terlalu ramai membuatnya menjadi tempat yang cocok untuk bersantai, menikmati matahari terbenam, dan mengeksplorasi keindahan alam pantai yang masih alami.', 5),
(9, 'Hutan pinus asri ', 'hutan_pinus_asri.png', 'Hutan Pinus Asri di Bantul merupakan sebuah destinasi alam yang menakjubkan di Provinsi Daerah Istimewa Yogyakarta, Indonesia. Terletak di lereng perbukitan yang memukau, hutan ini memanjakan pengunjung dengan keindahan alam yang menyejukkan. Pepohonan pinus yang tinggi dan rapat menciptakan suasana teduh yang menyegarkan, sementara aroma khas hutan pinus memberikan pengalaman unik. Dikelola dengan baik, area ini juga menyediakan fasilitas rekreasi seperti jalur hiking, tempat piknik, dan area bermain anak-anak. Hutan Pinus Asri Bantul menjadi tempat ideal bagi mereka yang mencari ketenangan dan keindahan alam yang memukau, menjadikannya destinasi wisata yang populer di kawasan tersebut.', 5),
(10, 'Kebun buah mangunan', 'kebun_buah_mangunan.png', 'Kebun Buah Mangunan, terletak di Bantul, Yogyakarta, Indonesia, merupakan destinasi wisata yang memukau dengan keindahan alamnya. Dikelilingi oleh perbukitan hijau yang menawan, kebun buah ini menawarkan pengalaman seru berupa panen buah langsung dari pohonnya. Terkenal dengan suasana sejuknya, Kebun Buah Mangunan juga menyediakan spot-spot menarik untuk menikmati pemandangan spektakuler, seperti terasering perbukitan dan panorama kota di kejauhan. Lokasinya yang strategis membuat kebun buah ini menjadi tempat yang populer bagi para pengunjung yang mencari ketenangan sambil menikmati kekayaan alam Indonesia.', 5),
(11, 'Bukit panguk kediwung', 'bukit_panguk_kediwung.png', 'Bukit Panguk Kediwung merupakan salah satu spot terbaik untuk menikmati sunrise di area Mangunan. Pemandangannya sangat menarik, banyak spot untuk berfoto.\r\nKalau ke sini jangan sampai kehilangan momentum matahari terbitnya. Bukit tersebut berlokasi di Kediwung, Mangunan, Dlingo, Bantul\r\n', 5),
(12, 'Pantai Wediombo', 'pantai_wediombo.jpg', 'Pantai Wediombo, terletak di Kabupaten Gunungkidul, Yogyakarta, memukau pengunjung dengan keindahan alamnya yang mempesona. Tersembunyi di antara tebing-tebing karst yang menjulang tinggi, pantai ini menawarkan pemandangan laut yang biru jernih dan pasir putih yang lembut. Suara ombak yang tenang dan angin sepoi-sepoi menambah daya tariknya sebagai tempat ideal untuk bersantai dan menikmati keindahan alam. Pantai Wediombo juga dikenal dengan keberadaan goa-goa kecil yang dapat dijelajahi, menambah kesan petualangan bagi para pengunjung. Lokasinya yang terpencil menambah eksotisme pantai ini, menciptakan pengalaman liburan yang tak terlupakan di tengah pesona alam Gunungkidul.', 2);

-- --------------------------------------------------------

--
-- Table structure for table `gambar_things`
--

CREATE TABLE `gambar_things` (
  `id_gambar_things` int(11) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `id_things` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hotel`
--

CREATE TABLE `hotel` (
  `id_hotel` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `gambar_hotel` text NOT NULL,
  `alamat` text NOT NULL,
  `contact` varchar(20) NOT NULL,
  `kabupaten` enum('yogyakarta','gunungkidul','kulonprogo','sleman','bantul') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hotel`
--

INSERT INTO `hotel` (`id_hotel`, `nama`, `gambar_hotel`, `alamat`, `contact`, `kabupaten`) VALUES
(1, 'Adinda Hotel', 'adinda.jpg', 'Jl. Parangtritis - Panggang No.2010, Mancingan, Parangtritis, Kec. Kretek, Kabupaten Bantul, Daerah Istimewa Yogyakarta 55772', '(0274) 368729', 'bantul'),
(2, 'Grand Rohan Jogja', 'grand_rohan.jpeg', 'Jl. Raya Janti Jl. Gedongkuning No.336, Modalan, Banguntapan, Kec. Banguntapan, Kabupaten Bantul, Daerah Istimewa Yogyakarta 55198', '(0274) 2810099', 'bantul'),
(3, 'Joglo Mandapa Boutique Hotel & Resto', 'joglo_mandapa.jpg', 'Dusun Kembaran RT. 01, Kembaran, Tamantirto, Kec. Kasihan, Kabupaten Bantul, Daerah Istimewa Yogyakarta 55183', '(0274) 4547960', 'bantul'),
(4, 'Sri-Gaïa Yogyakarta', 'sri_gaia.jpg', 'Karang Kulon, Wukirsari, Imogiri, Bantul Regency, Special Region of Yogyakarta 55782', '0821-3306-2703', 'bantul'),
(5, 'Yabbiekayu Eco-Bungalows', 'yabbiekayu.jpg', 'Jl. Parangtritis No.KM 8,5, RT.005/RW.004, Tembi, Timbulharjo, Kec. Sewon, Kabupaten Bantul, Daerah Istimewa Yogyakarta 55186', '0812-2330-3030', 'bantul'),
(6, 'Alzara Hotel', 'alzara.jpg', 'Dukuh Bansari RT.02/RW.04, Bansari, Kepek, Wonosari, Gunung Kidul Regency, Special Region of Yogyakarta 55813', '0822-2781-6831', 'gunungkidul'),
(7, 'Hotel Kampoeng Drini RedPartner', 'hotel_kampoeng.jpg', ': Pantai Drini, Jl. Drini Tim., Wonosobo, Banjarejo, Kec. Tanjungsari, Kabupaten Gunung Kidul, Daerah Istimewa Yogyakarta 55881', '0812-3642-3135', 'gunungkidul'),
(8, 'Hotel Santika Gunungkidul - Jogja', 'hotel_santika.jpg', 'Jl. Jogja - Wonosari No.KM. 3.5, Logandeng, Kec. Playen, Kabupaten Gunung Kidul, Daerah Istimewa Yogyakarta 55861', '(0274) 2902000', 'gunungkidul'),
(9, 'Radika Paradise Villa & Cottage', 'radika.jpg', 'Jl. Pantai Sel. Jawa, Pantai, Tepus, Kec. Tepus, Kabupaten Gunung Kidul, Daerah Istimewa Yogyakarta 55881', '0812-9862-3668', 'gunungkidul'),
(10, 'The Royal Joglo', 'the_royal_joglo.jpg', 'Area Hutan, Ngestirejo, Tanjungsari, Gunung Kidul Regency, Special Region of Yogyakarta 55881', '0813-2525-3300', 'gunungkidul'),
(11, 'Grand Dafam Signature International Airport Yogyakarta', 'grand_dafam.jpg', 'National Rte 3 No.KM.41, RW.5, Area Kebun, Kebonrejo, Temon, Kulon Progo Regency, Special Region of Yogyakarta 55654', '(0274) 7722888', 'kulonprogo'),
(12, 'Hotel Omah Soemantri', 'hotel_omah.jpg', '428W+XG9, Area Kebun, Sindutan, Kec. Temon, Kabupaten Kulon Progo, Daerah Istimewa Yogyakarta 55654', '(0274) 7723282', 'kulonprogo'),
(13, 'Ibis Yogyakarta International Airport Kulon Progo', 'ibis_yogyakarta.jpg', 'Jl. Wates - Purworejo No.KM 10, Seling, Temon Kulon, Kec. Temon, Kabupaten Kulon Progo, Daerah Istimewa Yogyakarta 55654', '(0274) 7722828', 'kulonprogo'),
(14, 'Novotel Yogyakarta Airport Kulon Progo', 'novotel.jpg', 'Jl. Wates - Purworejo No.KM 10, Seling, Temon Kulon, Kec. Temon, Kabupaten Kulon Progo, Daerah Istimewa Yogyakarta 55654', '0813-9329-6935', 'kulonprogo'),
(15, 'OYO 2314 Hotel Hapsari Syariah', 'oyo_2314.jpg', 'Jalan, Jl. Pantai Glagah, Kadilangu Kidul, Temon Kulon, Kec. Temon, Kabupaten Kulon Progo, Daerah Istimewa Yogyakarta 55654', '(021) 29707601', 'kulonprogo'),
(16, 'Eastparc Hotel Yogyakarta', 'eastparc.jpg', 'Jalan Laksda Adisucipto KM. 6.5 No.1, Ngentak, Caturtunggal, Kec. Depok, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55281', '(0274) 4932000', 'sleman'),
(17, 'Garrya Bianti Yogyakarta', 'garrya_bianti.jpg', 'Gabugan, Pandowoharjo, Sleman, Yogyakarta, Special Region of Yogyakarta 55512', '(0274) 2888888', 'sleman'),
(18, 'OYO 3301 Pondok Eyang Obi', 'oyo_3301.jpg', '11, Jl. Pelda Sugiono No.RT 3, Pisangan, Tridadi, Yogyakarta, Daerah Istimewa Yogyakarta 55511', '(021) 29707601', 'sleman'),
(19, 'Prima SR Hotel & Convention', 'pima_sr.jpg', 'Magelang St No.KM.11, Dukuh, Tridadi, Sleman, Sleman Regency, Special Region of Yogyakarta 55511', '(0274) 2880888', 'sleman'),
(20, 'Ramada by Wyndham Yogyakarta', 'ramada.jpg', 'Jl. Magelang No.KM 14, Jetis, Caturharjo, Kec. Sleman, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55515', '(0274) 888001', 'sleman'),
(21, 'Cavinton Hotel Yogyakarta', 'cavinton.jpeg', 'Jl. Letjen Suprapto No.1, Ngampilan, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55261', '(0274) 6429988', 'yogyakarta'),
(22, 'D\'Senopati Malioboro Grand Hotel', 'd\'senopati.jpg', 'Jl. Panembahan Senopati No.40, Prawirodirjan, Kec. Gondomanan, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55121', '(0274) 5011456', 'yogyakarta'),
(23, 'Favehotel Malioboro Yogyakarta', 'fave.jpg', 'Jl. I Dewa Nyoman Oka No.30, Kotabaru, Kec. Gondokusuman, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55224', '(0274) 2923777', 'yogyakarta'),
(24, 'Gaia Cosmo Hotel', 'gaia.jpeg', 'Jl. Ipda Tut Harsono No.16, Muja Muju, Kec. Umbulharjo, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55165', '(0274) 5307777', 'yogyakarta'),
(25, 'Harper Malioboro Yogyakarta', 'harper.jpeg', 'Harper malioboro yogyakarta, Jl. P. Mangkubumi No.52, Gowongan, Jetis, Yogyakarta City, Special Region of Yogyakarta 55232', '(0274) 2920008', 'yogyakarta'),
(26, 'Horison Ultima Riss Malioboro Yogyakarta', 'horison.jpeg', 'Jl. Gowongan Kidul, Sosromenduran, Gedong Tengen, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55271', '(0274) 6429155', 'yogyakarta'),
(27, 'Jambuluwuk Malioboro Hotel', 'jambuluwuk.jpg', 'Jl. Gajah Mada No.67, Purwokinanti, Pakualaman, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55166', '(0274) 585655', 'yogyakarta'),
(28, 'KJ Hotel Yogyakarta', 'kj.jpg', 'Jl. Parangtritis No.120, Mantrijeron, Kec. Mantrijeron, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55143', '(0274) 2872777', 'yogyakarta'),
(29, 'The Phoenix Hotel Yogyakarta - MGallery Collection', 'phoenix.jpeg', 'Jl. Jend. Sudirman No.9, Cokrodiningratan, Kec. Jetis, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55233', '(0274) 566617', 'yogyakarta'),
(30, 'Swiss-Belboutique Yogyakarta', 'swiss.jpg', 'Jl. Jend. Sudirman No.69, Terban, Kec. Gondokusuman, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55224', '(0274) 2921888', 'yogyakarta');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_event`
--

CREATE TABLE `kategori_event` (
  `id_kategori_event` int(11) NOT NULL,
  `kategori_event` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kategori_things`
--

CREATE TABLE `kategori_things` (
  `id_kategori_things` int(11) NOT NULL,
  `kategori_things` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kategori_things`
--

INSERT INTO `kategori_things` (`id_kategori_things`, `kategori_things`) VALUES
(1, 'budaya'),
(2, 'makanan'),
(3, 'sejarah'),
(4, 'pantai'),
(5, 'pegunungan');

-- --------------------------------------------------------

--
-- Table structure for table `story`
--

CREATE TABLE `story` (
  `id_story` int(11) NOT NULL,
  `gambar` text NOT NULL,
  `isi` text NOT NULL,
  `judul` varchar(255) NOT NULL,
  `deskripsi_story` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `story`
--

INSERT INTO `story` (`id_story`, `gambar`, `isi`, `judul`, `deskripsi_story`) VALUES
(1, 'nyi_roro_kidul.jpeg', 'Dalam mitologi Jawa, Kanjeng Ratu Kidul merupakan ciptaan dari Dewa Kaping Telu yang mengisi alam kehidupan sebagai dewi padi dan dewi alam yang lain. Sedangkan Nyi Roro Kidul mulanya merupakan putri Kerajaan Sunda yang diusir ayahnya karena ulah ibu tirinnya.\r\n\r\nDalam perkembangannya, masyarakat cenderung menyamakan Nyi Roro Kidul dengan Kanjeng Ratu Kidul, meskipun dalam kepercayaan Kejawen, Nyi Roro Kidul adalah bawahan setia Kanjeng Ratu Kidul.\r\n\r\nKedudukan Nyi Roro Kidul sebagai Ratu-Lelembut tanah Jawa menjadi motif populer dalam cerita rakyat dan mitologi, selain juga dihubungkan dengan kecantikan putri-putri Jawa.', 'Nyi Roro Kidul Ratu Pantai Selatan', 'Dalam mitologi Jawa, Kanjeng Ratu Kidul merupakan ciptaan dari Dewa Kaping Telu yang mengisi alam kehidupan sebagai dewi padi dan dewi alam yang lain.'),
(2, 'mbah_maridjan.jpeg', 'Mbah Maridjan (bergelar Mas Penewu Surakso Hargo; 5 Februari 1927 – 26 Oktober 2010) adalah seorang juru kunci Gunung Merapi. Amanah sebagai juru kunci ini diperoleh dari Sri Sultan Hamengkubuwana IX. Setiap gunung Merapi akan meletus, warga setempat selalu menunggu komando darinya untuk mengungsi.Dia mulai menjabat sebagai wakil juru kunci pada tahun 1970. Jabatan sebagai juru kunci lalu disandangnya sejak tahun 1982.\r\n\r\nSejak kejadian Gunung Merapi akan meletus tahun 2006, Mbah Maridjan semakin terkenal. Karena faktor keberanian dan namanya yang dikenal oleh masyarakat luas tersebut, Mbah Maridjan ditunjuk untuk menjadi bintang iklan minuman energi KukuBima Ener-G!.\r\n\r\nSelain itu, Mbah Maridjan juga menjabat sebagai Wakil Rais Syuriah MWC Nahdlatul Ulama Kecamatan Cangkringan, Kabupaten Sleman hingga akhir hayatnya.\r\n\r\n', 'Mbah Maridjan Sang Juru Kunci Merapi', 'Mbah Maridjan adalah seorang juru kunci Gunung Merapi. Amanah sebagai juru kunci ini diperoleh dari Sri Sultan Hamengkubuwana IX.'),
(3, 'kraton.jpeg', 'Keraton Ngayogyakarta Hadiningrat atau Keraton Yogyakarta merupakan istana resmi Kesultanan Ngayogyakarta Hadiningrat yang kini berlokasi di Kota Yogyakarta. Keraton ini didirikan oleh Sri Sultan Hamengkubuwana I pada tahun 1755 sebagai Istana/Keraton Yogyakarta yang baru berdiri akibat perpecahan Mataram Islam dengan adanya Perjanjian Giyanti. Keraton ini adalah pecahan dari Keraton Surakarta Hadiningrat dari Mataram Islam Surakarta (Kerajaan Surakarta). Sehingga dinasti Mataram diteruskan oleh 2 Kerajaan yakni Kesultanan Yogyakarta dan Kesunanan Surakarta. Total luas wilayah keseluruhan keraton yogyakarta mencapai 144 hektar, yakni meliputi seluruh area di dalam benteng Baluwarti, alun-alun Lor, alun-alun Kidul, gapura Gladak, dan kompleks Masjid Gedhe Yogyakarta. Sementara luas dari kedhaton (inti keraton) mencapai 13 hektar.\r\nWalaupun Kesultanan Yogyakarta secara resmi telah menjadi bagian Republik Indonesia pada tahun 1945, kompleks bangunan keraton ini masih berfungsi sebagai tempat tinggal sultan dan rumah tangga istananya yang masih menjalankan tradisi kesultanan hingga saat ini. Keraton ini kini juga merupakan salah satu objek wisata di Kota Yogyakarta. Sebagian kompleks keraton merupakan museum yang menyimpan berbagai koleksi milik kesultanan, termasuk berbagai pemberian dari raja-raja Eropa, replika pusaka keraton, dan gamelan. Dari segi bangunannya, keraton ini merupakan salah satu contoh arsitektur istana Jawa yang terbaik, memiliki balairung-balairung mewah dan lapangan serta paviliun yang luas.', 'Cikal Bakal Kraton Ngayogyakarta', 'Keraton Ngayogyakarta Hadiningrat atau Keraton Yogyakarta merupakan istana resmi Kesultanan Ngayogyakarta Hadiningrat yang kini berlokasi di Kota Yogyakarta.');

-- --------------------------------------------------------

--
-- Table structure for table `things`
--

CREATE TABLE `things` (
  `id_things` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `alamat` text NOT NULL,
  `id_kategori_things` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `daerah_region`
--
ALTER TABLE `daerah_region`
  ADD PRIMARY KEY (`id_region`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id_events`),
  ADD KEY `id_kategori_event` (`id_kategori_event`);

--
-- Indexes for table `gambar_region`
--
ALTER TABLE `gambar_region`
  ADD PRIMARY KEY (`id_gambar_reg`),
  ADD KEY `id_daerah` (`id_daerah`);

--
-- Indexes for table `gambar_things`
--
ALTER TABLE `gambar_things`
  ADD PRIMARY KEY (`id_gambar_things`),
  ADD KEY `id_things` (`id_things`);

--
-- Indexes for table `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`id_hotel`);

--
-- Indexes for table `kategori_event`
--
ALTER TABLE `kategori_event`
  ADD PRIMARY KEY (`id_kategori_event`);

--
-- Indexes for table `kategori_things`
--
ALTER TABLE `kategori_things`
  ADD PRIMARY KEY (`id_kategori_things`);

--
-- Indexes for table `story`
--
ALTER TABLE `story`
  ADD PRIMARY KEY (`id_story`);

--
-- Indexes for table `things`
--
ALTER TABLE `things`
  ADD PRIMARY KEY (`id_things`),
  ADD KEY `id_kategori_things` (`id_kategori_things`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `daerah_region`
--
ALTER TABLE `daerah_region`
  MODIFY `id_region` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id_events` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gambar_region`
--
ALTER TABLE `gambar_region`
  MODIFY `id_gambar_reg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `gambar_things`
--
ALTER TABLE `gambar_things`
  MODIFY `id_gambar_things` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hotel`
--
ALTER TABLE `hotel`
  MODIFY `id_hotel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `kategori_things`
--
ALTER TABLE `kategori_things`
  MODIFY `id_kategori_things` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `story`
--
ALTER TABLE `story`
  MODIFY `id_story` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `things`
--
ALTER TABLE `things`
  MODIFY `id_things` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `events`
--
ALTER TABLE `events`
  ADD CONSTRAINT `hubungan_event` FOREIGN KEY (`id_kategori_event`) REFERENCES `kategori_event` (`id_kategori_event`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `gambar_region`
--
ALTER TABLE `gambar_region`
  ADD CONSTRAINT `hub_region` FOREIGN KEY (`id_daerah`) REFERENCES `daerah_region` (`id_region`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `gambar_things`
--
ALTER TABLE `gambar_things`
  ADD CONSTRAINT `hubungan_things_gambar` FOREIGN KEY (`id_things`) REFERENCES `things` (`id_things`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `things`
--
ALTER TABLE `things`
  ADD CONSTRAINT `hub_kategori_things` FOREIGN KEY (`id_kategori_things`) REFERENCES `kategori_things` (`id_kategori_things`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
