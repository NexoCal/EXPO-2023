-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: Dec 03, 2023 at 01:46 PM
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

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id_events`, `gambar`, `judul`, `tanggal`, `deskripsi`, `timeline`, `id_kategori_event`) VALUES
(1, 'Lico_fest.png', 'Jogjapanfest by Lico fest', '2023-12-16', '     Lagi - lagi Lico fest menghadirkan acara jejepangan unutk para penikmat budaya jepang di Jogja. Tepatnya berada di Little Tokyo Jogja atau biasa disebut Litto mereka akan mengadakan cultural night ICF Jogjapanfest. Dengan segala macam kegiatan yang bisa dinikmati bagi para pengunjung entah itu lomba, menikmati suasana jejepangan, berburu merchandise, dan lain - lain. \r\n     Acara ini akan berlangsung dari tanggal 16 Desember 2023 sampai dengan 17 Desember 2023. terdapat berbagi macam lomba dan penampilan dari tamu tamu undangan yang telah diundang. Ada Idol lokal dari kota Jogja, DJ, penyanyi solo, serta band. untuk lomba lombanya terdapat coswalk competition, cosplay competition, serta karaoke competition. Maka dari itu mari luangkan waktu kalian untuk menikmati nuansa jejepangan di kota Jogja yang istimewa ini.', 'upcoming', 2),
(2, 'sheilaon7.jpg', 'Malam Tahun Baru di Jogja bersama Sheila On 7', '2023-12-31', 'Rayakan Malam Tahun Baru di kota istimewa Jogja. Bersama-sama kita bangun instalasi seni \"1000 Bukti Cinta\", rayakan Malam Tahun Baru bersama Sheila On 7, Ndarboy Genk, Shaggydog, Jikustik, dan Kunto Aji.\r\nNikmati juga atmosfer autentik Jogja melalui pertunjukan Ramayana Ballet, serta berbagai kegembiraan lainnya.\r\nTunggu informasi lengkap pembelian tiket hanya di Instagram @swaraprambanan dan pantau @prambananpark untuk informasi lebih lanjut.', 'upcoming', 2),
(3, 'heritage_walk.jpg', 'Jogja International Heritage Walk 2023', '2023-11-18', 'Asosiasi Berjalan Jogja akan mengadakan kegiatan berjalan internasional tahunan lagi. Jogja International Heritage Walk adalah kegiatan berjalan berskala internasional. Kegiatan ini bertujuan untuk menerapkan gaya hidup sehat dengan berjalan kaki. Selain itu, JIHW juga memperkenalkan dan mempromosikan warisan Indonesia, khususnya Yogyakarta.\r\nAyo bergabung dengan kami di JIHW 2023: Ke Akar!\r\nCatat tanggalnya:\r\nSabtu, 18 November 2023 (Candi Prambanan)\r\nMinggu, 19 November 2023 (Joglo Pusung, Pancoh, Turi)\r\nJangan lewatkan, ya?\r\nDaftar sekarang! di jogjaheritagewalk.com', 'upcoming', 1),
(4, 'UST-fest.jpg', 'UST FEST', '2023-11-18', 'Dalam rangka memperingati Ulang Tahun ke-68 UST. Kami kembali dengan acara yang tak kalah menarik, UST Fest yang telah kami rencanakan dengan baik. Akan ada banyak acara di UST Fest 2023. Apakah Anda siap untuk ikut meramaikan puncak UST Fest dengan antusiasme!!🔥\r\nTAMANSISWA GRADUATE UNIVERSITY DENGAN BANGGA MEMPERSEMBAHKAN\r\n✨UST FEST✨\r\nMomen puncak acara diadakan pada:\r\n📆 Tanggal: 18 November 2023\r\n⏰ Jam: 16.00 – 22.00 WIB\r\n📍 Lokasi: Gedung Pusat UST\r\nSeri Acara Lainnya\r\n🍝🍱 Pasar Lawas Mataram\r\n📆 Tanggal: 17 November 2023\r\n⏰ Jam: 08.00 – Selesai\r\n📍 Lokasi: Gedung Pusat UST\r\n🏘🏃🏻‍♂️Pasar Lawas Mataram, Jalan Sehat & Sudut Sehat\r\n📆 Tanggal: 18 November 2023\r\n⏰ Jam: 06.30 – Selesai\r\n📍 Lokasi: Gedung Pusat UST\r\nAcara UST Fest untuk Ulang Tahun ke-68 UST dimeriahkan oleh band terkenal dan bintang tamu utama, yaitu:\r\n🔥Bravesboy🔥\r\n⚠️❗️TERBUKA UNTUK UMUM & GRATIS ❗️⚠️\r\nNB: HTM Jalan Sehat 20k\r\nJangan lupa catat tanggalnya, jangan lewatkan dan saksikan kegembiraannya, Sampai jumpa!!👋🏻💥', 'upcoming', 2),
(5, 'pacuan-kuda.jpg', 'ejuaraan Pacuan Kuda Jogja Derby Piala Raja Hamengku Buwono X Cup ke-13 Tahun 2023 ', '2023-11-12', 'Kejuaraan Pacuan Kuda Jogja Derby Piala Raja Hamengku Buwono X Cup ke-13 Tahun 2023 (12 November 2023)\r\nTahun ke-13 pada:\r\n📅 Minggu, 12 November 2023\r\n⌚️ 08.00 WIB – Selesai\r\n📍 Arena Pacuan Kuda Sultan Agung, Bantul\r\n🎫 Gratis Masuk\r\nJangan lewatkan!!! 🏇🏻', 'upcoming', 1),
(6, 'jifhex.jpeg', 'JIFHEX Indonesia', '2024-08-09', 'JIFHEX Indonesia (9-11 Agustus 2024)\r\nJogja International Food and Hospitality Expo (JIFHEX) adalah pameran perdagangan terbesar di Jawa Tengah, sebagai platform untuk pameran makanan & hotel Jogja. JIFHEX memberikan kesempatan sempurna untuk bertemu langsung dengan pembeli potensial dan terhubung kembali dengan pelanggan yang sudah ada.\r\nDan acara jaringan sosialnya, merupakan pasar tunggal yang dirancang untuk mengumpulkan semua segmen industri makanan dan minuman untuk memperluas peluang penjualan! Perusahaan pameran dapat memperkuat kontak industri dengan bertemu pembeli pengambil keputusan dan ratusan pameran.\r\nPerubahan demografi dan preferensi konsumen terus membentuk cara bisnis di sektor makanan, restoran, dan layanan makanan mengembangkan produk mereka dan membentuk penawaran layanan mereka. Untuk mengetahui tren terbaru dalam teknologi makanan, manufaktur, dan persiapan,\r\nPameran ini pada akhirnya memberikan platform yang kuat untuk penjualan stan dengan mempromosikan produk makanan dan minuman kepada pembeli dari Jawa Tengah, dan sekitarnya, yang akan menghadiri pameran.', 'upcoming', 2);

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

--
-- Dumping data for table `gambar_things`
--

INSERT INTO `gambar_things` (`id_gambar_things`, `gambar`, `id_things`) VALUES
(1, 'Gudeg_Yu_Djum.png', 1),
(2, 'Bale_Roso.png', 2),
(3, 'Mie_Ayam.png', 3),
(4, 'Sate.png', 4),
(5, 'Tempo_Gelato.png', 5),
(6, 'Jejemuran.png', 6),
(7, 'Taman_Sari.jpg', 7),
(8, 'Goa_Selarong.jpg', 8),
(9, 'Museum_Batik.jpg', 9),
(10, 'Bunker_Kaliadem.jpg', 10),
(11, 'MonumenJogja_Kembali.png', 11),
(12, 'Museum_Sonobudoyo.jpg', 12),
(13, 'Keraton_Yogyakarta.jpg', 13),
(14, 'Candi_Prambanan.jpg', 14),
(15, 'Candi_Ratu_Boko.jpg', 15),
(16, 'Benteng_Vredeburg.jpg', 16),
(17, 'Candi_Ijo.jpg', 17),
(18, 'Candi_Sambisari.jpg', 18),
(19, 'Pantai_Drini.jpg', 19),
(20, 'Pantai_Glagah.jpg', 20),
(21, 'Pantai_Timang.jpg', 21),
(22, 'Pantai_Widodoaren.jpeg', 22),
(23, 'Pantai_Siung.jpg', 23),
(24, 'Pantai_Ngobaran.jpg', 24),
(25, 'Goa_Pindul.jpg', 25),
(26, 'ATV_Kaliurang.jpeg', 26),
(27, 'Kedung_Pedut.jpg', 27),
(28, 'Mangunan.jpg', 28),
(29, 'Kebun_Teh_Nglinggo.jpg', 29),
(30, 'Kalisuci_Cave_Tubing.jpg', 30);

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
  `link` varchar(255) NOT NULL,
  `kabupaten` enum('yogyakarta','gunungkidul','kulonprogo','sleman','bantul') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hotel`
--

INSERT INTO `hotel` (`id_hotel`, `nama`, `gambar_hotel`, `alamat`, `contact`, `link`, `kabupaten`) VALUES
(1, 'Adinda Hotel', 'adinda.jpg', 'Jl. Parangtritis - Panggang No.2010, Mancingan, Parangtritis, Kec. Kretek, Kabupaten Bantul, Daerah Istimewa Yogyakarta 55772', '(0274) 368729', 'https://adindabeachhotelandvilla.zoombookdirect.com/?sa=X&ved=2ahUKEwiFkOnSrfCCAxXXpGYCHbQYDswQyK4DegUIAxCLBA', 'bantul'),
(2, 'Grand Rohan Jogja', 'grand_rohan.jpeg', 'Jl. Raya Janti Jl. Gedongkuning No.336, Modalan, Banguntapan, Kec. Banguntapan, Kabupaten Bantul, Daerah Istimewa Yogyakarta 55198', '(0274) 2810099', 'https://grandrohanjogja.com/?sa=X&ved=2ahUKEwihuoHmrfCCAxVohWYCHUSNCWcQyK4DegUIAxCEBQ', 'bantul'),
(3, 'Joglo Mandapa Boutique Hotel & Resto', 'joglo_mandapa.jpg', 'Dusun Kembaran RT. 01, Kembaran, Tamantirto, Kec. Kasihan, Kabupaten Bantul, Daerah Istimewa Yogyakarta 55183', '(0274) 4547960', 'https://www.joglomandapa.com/?sa=X&ved=2ahUKEwjZqaf-rfCCAxX3hWYCHZY7CuEQyK4DegUIAxDIBA', 'bantul'),
(4, 'Sri-Gaïa Yogyakarta', 'sri_gaia.jpg', 'Karang Kulon, Wukirsari, Imogiri, Bantul Regency, Special Region of Yogyakarta 55782', '0821-3306-2703', 'https://sri-gaiayogiakarta.com/', 'bantul'),
(5, 'Yabbiekayu Eco-Bungalows', 'yabbiekayu.jpg', 'Jl. Parangtritis No.KM 8,5, RT.005/RW.004, Tembi, Timbulharjo, Kec. Sewon, Kabupaten Bantul, Daerah Istimewa Yogyakarta 55186', '0812-2330-3030', 'https://www.yabbiekayu.com/IN/?sa=X&ved=2ahUKEwjdpdHMrvCCAxVaimYCHfaeCugQyK4DegUIAxDGBA', 'bantul'),
(6, 'Alzara Hotel', 'alzara.jpg', 'Dukuh Bansari RT.02/RW.04, Bansari, Kepek, Wonosari, Gunung Kidul Regency, Special Region of Yogyakarta 55813', '0822-2781-6831', 'https://alzarahotel.com/', 'gunungkidul'),
(7, 'Hotel Kampoeng Drini RedPartner', 'hotel_kampoeng.jpg', ': Pantai Drini, Jl. Drini Tim., Wonosobo, Banjarejo, Kec. Tanjungsari, Kabupaten Gunung Kidul, Daerah Istimewa Yogyakarta 55881', '0812-3642-3135', 'https://hotelkampoengdrini-bke.zoombookdirect.com/search/2023-12-02/2023-12-03/rooms/1/adults/2', 'gunungkidul'),
(8, 'Hotel Santika Gunungkidul - Jogja', 'hotel_santika.jpg', 'Jl. Jogja - Wonosari No.KM. 3.5, Logandeng, Kec. Playen, Kabupaten Gunung Kidul, Daerah Istimewa Yogyakarta 55861', '(0274) 2902000', 'https://www.mysantika.com/', 'gunungkidul'),
(9, 'Radika Paradise Villa & Cottage', 'radika.jpg', 'Jl. Pantai Sel. Jawa, Pantai, Tepus, Kec. Tepus, Kabupaten Gunung Kidul, Daerah Istimewa Yogyakarta 55881', '0812-9862-3668', 'https://radikaparadise.com/', 'gunungkidul'),
(10, 'The Royal Joglo', 'the_royal_joglo.jpg', 'Area Hutan, Ngestirejo, Tanjungsari, Gunung Kidul Regency, Special Region of Yogyakarta 55881', '0813-2525-3300', 'https://theroyaljoglo-bke.zoombookdirect.com/search/2023-12-02/2023-12-03/rooms/1/adults/2', 'gunungkidul'),
(11, 'Grand Dafam Signature International Airport Yogyakarta', 'grand_dafam.jpg', 'National Rte 3 No.KM.41, RW.5, Area Kebun, Kebonrejo, Temon, Kulon Progo Regency, Special Region of Yogyakarta 55654', '(0274) 7722888', 'https://granddafamsignature.com/yogyakarta/', 'kulonprogo'),
(12, 'Hotel Omah Soemantri', 'hotel_omah.jpg', '428W+XG9, Area Kebun, Sindutan, Kec. Temon, Kabupaten Kulon Progo, Daerah Istimewa Yogyakarta 55654', '(0274) 7723282', 'https://www.traveloka.com/id-id/hotel/indonesia/omah-soemantri-9000001152472', 'kulonprogo'),
(13, 'Ibis Yogyakarta International Airport Kulon Progo', 'ibis_yogyakarta.jpg', 'Jl. Wates - Purworejo No.KM 10, Seling, Temon Kulon, Kec. Temon, Kabupaten Kulon Progo, Daerah Istimewa Yogyakarta 55654', '(0274) 7722828', 'https://all.accor.com/hotel/B5Z8/index.id.shtml', 'kulonprogo'),
(14, 'Novotel Yogyakarta Airport Kulon Progo', 'novotel.jpg', 'Jl. Wates - Purworejo No.KM 10, Seling, Temon Kulon, Kec. Temon, Kabupaten Kulon Progo, Daerah Istimewa Yogyakarta 55654', '0813-9329-6935', 'https://all.accor.com/hotel/B5Q9/index.id.shtml', 'kulonprogo'),
(15, 'OYO 2314 Hotel Hapsari Syariah', 'oyo_2314.jpg', 'Jalan, Jl. Pantai Glagah, Kadilangu Kidul, Temon Kulon, Kec. Temon, Kabupaten Kulon Progo, Daerah Istimewa Yogyakarta 55654', '(021) 29707601', 'https://www.oyorooms.com/id/hotels-in-yogyakarta/?utm_source=GMB_ID_SO&utm_medium=Organic&utm_campaign=ID_YGK216&locale=id', 'kulonprogo'),
(16, 'Eastparc Hotel Yogyakarta', 'eastparc.jpg', 'Jalan Laksda Adisucipto KM. 6.5 No.1, Ngentak, Caturtunggal, Kec. Depok, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55281', '(0274) 4932000', 'https://www.eastparchotel.com/', 'sleman'),
(17, 'Garrya Bianti Yogyakarta', 'garrya_bianti.jpg', 'Gabugan, Pandowoharjo, Sleman, Yogyakarta, Special Region of Yogyakarta 55512', '(0274) 2888888', 'https://www.garrya.com/en', 'sleman'),
(18, 'OYO 3301 Pondok Eyang Obi', 'oyo_3301.jpg', '11, Jl. Pelda Sugiono No.RT 3, Pisangan, Tridadi, Yogyakarta, Daerah Istimewa Yogyakarta 55511', '(021) 29707601', 'https://www.oyorooms.com/id/hotels-in-sleman/?utm_source=GMB_ID_SO&utm_medium=Organic&utm_campaign=ID_YGK282&locale=id', 'sleman'),
(19, 'Prima SR Hotel & Convention', 'pima_sr.jpg', 'Magelang St No.KM.11, Dukuh, Tridadi, Sleman, Sleman Regency, Special Region of Yogyakarta 55511', '(0274) 2880888', 'https://www.primasr.com/', 'sleman'),
(20, 'Ramada by Wyndham Yogyakarta', 'ramada.jpg', 'Jl. Magelang No.KM 14, Jetis, Caturharjo, Kec. Sleman, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55515', '(0274) 888001', 'https://www.wyndhamhotels.com/ramada/yogyakarta-indonesia/ramada-yogyakarta/overview', 'sleman'),
(21, 'Cavinton Hotel Yogyakarta', 'cavinton.jpeg', 'Jl. Letjen Suprapto No.1, Ngampilan, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55261', '(0274) 6429988', 'https://www.cavintonhotel.com/', 'yogyakarta'),
(22, 'D\'Senopati Malioboro Grand Hotel', 'd\'senopati.jpg', 'Jl. Panembahan Senopati No.40, Prawirodirjan, Kec. Gondomanan, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55121', '(0274) 5011456', 'https://dsenopatimalioboro.com/', 'yogyakarta'),
(23, 'Favehotel Malioboro Yogyakarta', 'fave.jpg', 'Jl. I Dewa Nyoman Oka No.30, Kotabaru, Kec. Gondokusuman, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55224', '(0274) 2923777', 'https://www.favehotels.com/en/hotel/view/86/favehotel-malioboro---yogyakarta', 'yogyakarta'),
(24, 'Gaia Cosmo Hotel', 'gaia.jpeg', 'Jl. Ipda Tut Harsono No.16, Muja Muju, Kec. Umbulharjo, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55165', '(0274) 5307777', 'https://gaiacosmo.com/', 'yogyakarta'),
(25, 'Harper Malioboro Yogyakarta', 'harper.jpeg', 'Harper malioboro yogyakarta, Jl. P. Mangkubumi No.52, Gowongan, Jetis, Yogyakarta City, Special Region of Yogyakarta 55232', '(0274) 2920008', 'https://www.harperhotels.com/en/hotel/view/50/harper-malioboro-yogyakarta', 'yogyakarta'),
(26, 'Horison Ultima Riss Malioboro Yogyakarta', 'horison.jpeg', 'Jl. Gowongan Kidul, Sosromenduran, Gedong Tengen, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55271', '(0274) 6429155', 'https://risshotelmalioboro.com/', 'yogyakarta'),
(27, 'Jambuluwuk Malioboro Hotel', 'jambuluwuk.jpg', 'Jl. Gajah Mada No.67, Purwokinanti, Pakualaman, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55166', '(0274) 585655', 'https://www.jambuluwuk.com/', 'yogyakarta'),
(28, 'KJ Hotel Yogyakarta', 'kj.jpg', 'Jl. Parangtritis No.120, Mantrijeron, Kec. Mantrijeron, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55143', '(0274) 2872777', 'https://www.kjhoteljogja.com/', 'yogyakarta'),
(29, 'The Phoenix Hotel Yogyakarta - MGallery Collection', 'phoenix.jpeg', 'Jl. Jend. Sudirman No.9, Cokrodiningratan, Kec. Jetis, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55233', '(0274) 566617', 'https://all.accor.com/hotel/5451/index.en.shtml?utm_campaign=seo+maps&utm_medium=seo+maps&utm_source=google+Maps', 'yogyakarta'),
(30, 'Swiss-Belboutique Yogyakarta', 'swiss.jpg', 'Jl. Jend. Sudirman No.69, Terban, Kec. Gondokusuman, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55224', '(0274) 2921888', 'https://www.swiss-belhotel.com/en-gb/swiss-belboutique-yogyakarta', 'yogyakarta');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_event`
--

CREATE TABLE `kategori_event` (
  `id_kategori_event` int(11) NOT NULL,
  `kategori_event` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kategori_event`
--

INSERT INTO `kategori_event` (`id_kategori_event`, `kategori_event`) VALUES
(1, 'tradisional'),
(2, 'modern');

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
(3, 'kraton.jpeg', 'Keraton Ngayogyakarta Hadiningrat atau Keraton Yogyakarta merupakan istana resmi Kesultanan Ngayogyakarta Hadiningrat yang kini berlokasi di Kota Yogyakarta. Keraton ini didirikan oleh Sri Sultan Hamengkubuwana I pada tahun 1755 sebagai Istana/Keraton Yogyakarta yang baru berdiri akibat perpecahan Mataram Islam dengan adanya Perjanjian Giyanti. Keraton ini adalah pecahan dari Keraton Surakarta Hadiningrat dari Mataram Islam Surakarta (Kerajaan Surakarta). Sehingga dinasti Mataram diteruskan oleh 2 Kerajaan yakni Kesultanan Yogyakarta dan Kesunanan Surakarta. Total luas wilayah keseluruhan keraton yogyakarta mencapai 144 hektar, yakni meliputi seluruh area di dalam benteng Baluwarti, alun-alun Lor, alun-alun Kidul, gapura Gladak, dan kompleks Masjid Gedhe Yogyakarta. Sementara luas dari kedhaton (inti keraton) mencapai 13 hektar.\r\nWalaupun Kesultanan Yogyakarta secara resmi telah menjadi bagian Republik Indonesia pada tahun 1945, kompleks bangunan keraton ini masih berfungsi sebagai tempat tinggal sultan dan rumah tangga istananya yang masih menjalankan tradisi kesultanan hingga saat ini. Keraton ini kini juga merupakan salah satu objek wisata di Kota Yogyakarta. Sebagian kompleks keraton merupakan museum yang menyimpan berbagai koleksi milik kesultanan, termasuk berbagai pemberian dari raja-raja Eropa, replika pusaka keraton, dan gamelan. Dari segi bangunannya, keraton ini merupakan salah satu contoh arsitektur istana Jawa yang terbaik, memiliki balairung-balairung mewah dan lapangan serta paviliun yang luas.', 'Cikal Bakal Kraton Ngayogyakarta', 'Keraton Ngayogyakarta Hadiningrat atau Keraton Yogyakarta merupakan istana resmi Kesultanan Ngayogyakarta Hadiningrat yang kini berlokasi di Kota Yogyakarta.'),
(4, 'serangan_umum.jpeg', 'Serangan Umum 1 Maret 1949 dan Akhir Serbuan Serangan Umum 1 Maret 1949 dilakukan dengan penguasaan Yogyakarta selama 6 jam. Letnan Kolonel Soeharto saat itu memimpin serangan ini. Adanya Serangan Umum 1 Maret 1949 membuktikan kepada dunia internasional bahwa Indonesia tetap ada. Tokoh lain yang tidak terlepas dari peristiwa ini adalah Sultan Hamengku Buwono IX. Dia mempersilakan satuan-satuan pejuang di dalam maupun luar Yogyakarta ke istananya untuk saling berkomunikasi. Beliau merupakan tokoh kunci penggagas Serangan Umum 1 Maret 1949. Berdasarkan wawancaranya dengan Radio BBC London tahun 1986, Sultan Hamengku Buwono IX mengatakan dia melihat semangat rakyat makin lemah pada akhir Januari 1949. Sedangkan saat itu dia juga mendengar dari radio bahwa Dewan keamanan PBB pada awal Maret 1949 hendak membahas persengketaan Indonesia-Belanda. Hal tersebut dinilai menjadi alasannya melakukan Serangan Umum 1 Maret 1949. Tujuannya adalah meningkatkan semangat dan harapan rakyat serta menarik perhatian dunia bahwa RI masih punya kekuatan.\r\n\r\nSerangan umum dilancarkan jam 06.00 pagi seiring bunyi sirine pertanda jam malam berakhir. Belanda tidak siap dan tentara RI dalam waktu singkat memukul seluruh pasukan militer Belanda. Pada waktu inilah selama enam jam, Yogyakarta berhasil dikuasai tentara RI. Akhir Serangan Umum 1 Maret 1949 adalah tepat pukul 12.00 ketika pasukan RI mundur. Saat pasukan bantuan Belanda datang, tentara RI sudah tidak di tempat. Belanda kemudian hanya bisa menyerang daerah sepanjang pengunduran pasukan republik.\r\n\r\nEsok harinya, R. Sumardi menyampaikan peristiwa ini ke pemerintah PDRI di Bukittinggi via radiogram. Informasi tersebut kemudian disampaikan ke A. A. Maramis yang merupakan diplomat RI di New Delhi, India. Warta yang sama juga diberikan kepada L. N. Palar, diplomat RI di New York, Amerika Serikat. Serangan Umum pun dilansir ke luar negeri melalui pemancar radio yang ada di Wonosobo.', 'Serangan Umum 1 Maret', 'Serangan Umum 1 Maret 1949 membuktikan kepada dunia internasional bahwa Indonesia tetap ada.'),
(5, 'prambanan.jpeg', 'Candi Prambanan atau Candi Roro Jonggrang. (Candi Prambanan) adalah kompleks candi Hindu (Syiwa) terbesar di Indonesia yang dibangun pada abad ke-9 Masehi. Candi ini didedikasikan untuk Trimurti, tiga dewa utama agama Hindu, yaitu  Brahma  dewa pencipta,  Wisnu pelindung dan Siwa dewa perusak. Berdasarkan prasasti Siwagrha, nama asli kompleks candi ini adalah Siwagrha (Bahasa Sansekerta untuk “Rumah Siwa”), dan memang di garbagriha (aula utama) candi ini terdapat arca Siwa yang tingginya mencapai 3 meter, karena prioritas sekte Siwa untuk menyembah Dewa Siwa di candi ini. .\r\n\r\n\r\nNama Prambanan, berasal dari nama desa tempat candi ini berdiri, diyakini merupakan variasi dari nama dialek  Jawa dari istilah teologi Hindu Para Brahman yang berarti “Brahman agung”, yaitu Brahman atau Brahman. . realitas abadi  yang tidak dapat digambarkan, yang sering disamakan dengan konsep Tuhan dalam agama Hindu. Pendapat lain adalah bahwa para Brahmana dapat merujuk pada zaman keemasan kuil ini adalah para Brahmana.\r\n\r\nPendapat lain menyebutkan bahwa nama “Prambanan” berasal dari akar kata bahasa Jawa mban yang berarti memikul atau melaksanakan suatu tugas, merujuk pada dewa-dewa Hindu yang bertugas mengatur dan mencapai keberhasilan keselarasan di alam semesta. Nama lain Prambanan yang bisa berarti 5 (lima) gunung  dalam bahasa Khmer/Kamboja 5 (lima) adalah Pram dan banam adalah gunung (ប្រាំ ភ្នំ). Ini menggambarkan 5 puncak  Himalaya di India. Ingat baik dalam kronik Khmer bahwa orang Jawa telah menjajah Khmer selama 200 tahun dan bahwa Jayawarman kedua berada di Jawa sebagai pahlawan yang membebaskan Khmer dari kekuasaan Jawa.', 'Candi Prambanan', 'Candi Prambanan atau Candi Roro Jonggrang. (Candi Prambanan) adalah kompleks candi Hindu (Syiwa) terbesar di Indonesia yang dibangun pada abad ke-9 Masehi.'),
(6, 'Bakpia.jpg', 'Bakpia, camilan khas Yogyakarta, tidak hanya memanjakan lidah dengan kelembutan dan kelezatan, tetapi juga mengandung aroma harum sejarah dan tradisi. Dengan adonan yang lembut dan isian yang khas, bakpia Yogyakarta telah menjadi ikon kuliner yang menggoda selera di Indonesia.\r\n	Bakpia memiliki jejak sejarah yang panjang di Yogyakarta. Diperkenalkan oleh imigran Tionghoa pada abad ke-20, bakpia menjadi camilan yang dicintai oleh masyarakat setempat. Dalam bahasa Hokkian, \"bak\" berarti daging, sementara \"pia\" berarti kue. Meskipun aslinya berisi daging, seiring waktu, bakpia berkembang dengan berbagai varian rasa yang lebih bersahabat dengan selera banyak orang.\r\n	Yogyakarta memiliki beberapa sentra bakpia terkenal, seperti Bakpia Kurnia Sari, Bakpia Pathok, dan Bakpia 25. Wisatawan dapat mengunjungi tempat-tempat ini untuk menyaksikan proses produksi langsung, membeli beragam varian bakpia, dan membawa pulang oleh-oleh khas Yogyakarta.\r\n	Bakpia Yogyakarta telah mendapatkan pengakuan luas dan popularitas di tingkat nasional maupun internasional. Kelezatannya telah mencuri hati banyak pecinta kuliner, bahkan menjadi oleh-oleh yang dicari setelah berkunjung ke Yogyakarta.\r\n	Bakpia Yogyakarta adalah lebih dari sekadar camilan; ia adalah bagian dari warisan kuliner yang kaya dan penuh cerita. Melalui setiap gigitan, kita merasakan kehangatan tradisi dan kelezatan cita rasa yang telah diwariskan dari generasi ke generasi. Sebuah persembahan manis dari Yogyakarta yang selalu menyenangkan lidah dan hati.\r\n', 'Bakpia Yogyakarta: Kenikmatan Manis yang Membawa Cita Rasa Tradisional', 'Bakpia Yogyakarta adalah lebih dari sekadar camilan'),
(7, 'IbuKota.jpg', 'Yogyakarta, dengan keindahan alamnya dan kekayaan budayanya, pernah menjadi pusat pemerintahan Indonesia. Sebagai ibukota Republik Indonesia yang sementara pada masa Perang Kemerdekaan, Yogyakarta tidak hanya menyimpan sejarah penting, tetapi juga menjadi saksi perkembangan bangsa.\r\nPada masa Perang Kemerdekaan Indonesia, ketidakstabilan politik dan situasi konflik membuat Jakarta tidak lagi aman sebagai ibukota. Pemerintahan Republik Indonesia yang saat itu dipimpin oleh Soekarno memutuskan untuk memindahkan ibukota sementara ke Yogyakarta pada tahun 1946.\r\n	Selama menjadi ibukota sementara, Yogyakarta menjadi pusat aktivitas pemerintahan. Istana Yogyakarta, yang sebelumnya merupakan kediaman sultan, diubah menjadi Istana Kepresidenan Republik Indonesia. Keputusan ini menandai periode penting dalam sejarah Indonesia di mana Yogyakarta berperan sebagai tempat pengambilan kebijakan nasional.\r\n	Sejumlah kebijakan penting diambil dan diimplementasikan di Yogyakarta selama masa pemerintahan sementara. Termasuk di antaranya adalah pembentukan Tentara Keamanan Rakyat (TKR) yang kemudian menjadi cikal bakal Tentara Nasional Indonesia (TNI), serta pelaksanaan politik luar negeri yang menandai keberdiran Indonesia di dunia internasional.\r\n	Jejak Yogyakarta sebagai ibukota sementara masih terasa hingga kini. Istana Yogyakarta, Tugu Jogja, dan berbagai bangunan bersejarah lainnya menjadi saksi bisu masa-masa tersebut. Kekayaan budaya, tradisi, dan keindahan alam Yogyakarta terus menjadi daya tarik utama bagi wisatawan dari dalam dan luar negeri.\r\nYogyakarta, sebagai ibukota sementara Indonesia, tidak hanya menjadi arena peristiwa sejarah yang monumental, tetapi juga menjadi simbol persatuan dan kolaborasi antara pemerintah Republik Indonesia dan pemerintah tradisional. Kini, Yogyakarta tetap memancarkan pesona sebagai kota yang sarat sejarah, menggambarkan keberanian dan semangat perjuangan dalam menegakkan kemerdekaan.\r\n', 'Yogyakarta: Jejak Sejarah sebagai Ibukota Indonesia', 'Yogyakarta, sebagai ibukota sementara Indonesia'),
(8, 'Gudeg.jpg', 'Gudeg, hidangan khas Yogyakarta, memikat selera dengan rasa manis, gurih, dan rempah yang unik. Berawal dari tradisi memasak daging dengan kelapa dan gula aren, Gudeg menjadi ikon kuliner Yogyakarta yang tak terlupakan.\r\n\"Gudeg\" berasal dari kata Jawa yang berarti matang atau empuk. Hidangan ini terbuat dari nangka muda, santan, dan rempah-rempah, dimasak dengan penuh kesabaran hingga mencapai kematangan dan warna coklat kehitaman.\r\n            Proses memasak Gudeg melibatkan potongan nangka muda, santan, daun salam, serai, dan bumbu-bumbu khas. Penggalian cita rasa yang mendalam terjadi saat semuanya dimasak perlahan dalam panci besar.\r\n            Gudeg bukan sekadar hidangan lezat; ia adalah warisan budaya yang mencerminkan sejarah dan tradisi Yogyakarta. Kelezatannya tidak hanya dinikmati lokal, tetapi juga menjadi oleh-oleh yang mendunia.\r\n            Gudeg adalah lebih dari makanan. Ia adalah warisan budaya yang hidup, menceritakan kisah panjang Yogyakarta melalui rasa dan aroma yang menggoda. Setiap suapan adalah perjalanan ke dalam kekayaan kuliner dan budaya Jawa.\r\n', 'Gudeg: Kelezatan manis dari Yogyakarta', '\"Gudeg\" berasal dari kata Jawa yang berarti matang atau empuk'),
(9, 'TamanSari.jpg', 'Taman Sari Yogyakarta atau Taman Sari Keraton Yogyakarta adalah kompleks istana yang kaya akan sejarah dan keindahan arsitektur di Yogyakarta. Berlokasi di bagian barat daya Keraton Yogyakarta. Taman Sari dibangun pada masa pemerintahan Sultan Hamengkubuwono I pada tahun 1758 sebagai kompleks rekreasi pribadi untuk keluarga kerajaan. Awalnya, tempat ini dirancang sebagai taman air yang menyediakan kolam-kolam dan paviliun-paviliun untuk dinikmati oleh keluarga kerajaan.  Taman Sari memiliki fungsi ganda sebagai tempat rekreasi dan sebagai tempat pertahanan. Bagian tengah kompleks ini mencakup kolam air yang luas, disertai dengan paviliun-paviliun yang terletak di pulau-pulau kecil di tengah kolam. Keunikan Taman Sari terletak pada sistem saluran air yang rumit, memungkinkan air dari Gunung Merapi dialirkan ke dalam kolam-kolam.  Selama berabad-abad, Taman Sari melihat berbagai peristiwa sejarah, termasuk perubahan penguasa dan pelestarian seni dan budaya. Pada masa Perang Diponegoro (1825-1830)', 'Taman Sari', 'Taman Sari Keraton Yogyakarta adalah kompleks istana yang kaya akan sejarah '),
(10, 'Kaliurang.jpg', 'Kaliurang memanjakan pengunjung dengan lanskap yang menawan, dihiasi oleh hutan lebat, bukit-bukit yang hijau, dan udara pegunungan yang sejuk. Keindahan alam ini menjadi tempat yang menyegarkan bagi yang ingin melarikan diri dari hiruk-pikuk kehidupan kota.\r\n	Bagi penggemar sejarah, Bunker Kaliadem adalah saksi bisu dari letusan Gunung Merapi pada tahun 2010. Bunker ini memberikan pandangan langsung tentang dampak aktivitas vulkanik dan menjadi pengingat akan dinamika geologis di wilayah tersebut.\r\n	Untuk menjelajahi warisan budaya Yogyakarta, kunjungi Museum Ullen Sentalu yang berada di dekat Kaliurang. Museum ini menampilkan seni, budaya, dan sejarah Jawa. Pameran yang indah dan lingkungan yang tenang membuatnya menjadi tempat budaya yang menarik.\r\n	Kaliurang menawarkan berbagai kegiatan alam terbuka, termasuk jalur-jalur hiking yang melewati gunung dan hutan. Perjalanan ke titik pandang seperti Bukit Klangon dan Bukit Turgo memberikan pemandangan panoramik Yogyakarta dan sekitarnya.\r\n  	 Kaliurang, dengan keindahan alamnya, harta budaya, dan petualangan alam terbuka, menjadi bukti dari keberagaman Yogyakarta. Baik Anda mencari tempat pelarian yang tenang, perjalanan sejarah, atau eksplorasi keindahan alam, Kaliurang menawarkan pengalaman yang memikat yang akan membekas di hati setiap pengunjungnya.\r\n', 'Menyelami Keindahan Alam dan Sejarah Kaliurang', 'Kaliurang, dengan keindahan alamnya, harta budaya, dan petualangan '),
(11, 'Beringharjo.jpg', 'Pasar Beringharjo, berdiri sejak 1925, menyimpan sejarah dan budaya Yogyakarta dalam setiap sudutnya. Terletak di pusat kota, pasar ini tidak hanya menjadi tempat belanja, tetapi juga jendela yang menghadirkan kehidupan sehari-hari masyarakat.\r\n            Pasar Beringharjo menawarkan beragam produk, mulai dari batik, kain, hingga barang-barang antik. Suasana lorong-lorong sempit dipenuhi dengan tawar-menawar pedagang dan aroma rempah-rempah. Pasar ini juga menjadi surga kuliner tradisional Yogyakarta, dengan warung-warung yang menyajikan hidangan khas.\r\n            Berinteraksi dengan pedagang adalah bagian tak terpisahkan dari pengalaman berbelanja di Pasar Beringharjo. Pedagang ramah dan bersedia berbagi cerita mengenai produk yang mereka jual. Pasar ini juga dikenal dengan penjualan batik berkualitas tinggi dan barang-barang antik yang memiliki nilai sejarah.\r\n            Pasar Beringharjo juga menciptakan kesadaran terhadap lingkungan dan keberlanjutan. Penggunaan kemasan ramah lingkungan dan praktik dagang tradisional menjadi bagian dari upaya pasar ini dalam menjaga keberlangsungan warisan budaya.\r\n            Pasar Beringharjo bukan sekadar tempat belanja, tetapi cerminan kekayaan budaya dan kehidupan sehari-hari Yogyakarta. Kunjungan ke pasar ini adalah pengalaman yang memperkaya, membawa kita lebih dekat dengan tradisi dan keunikan kota budaya ini.\r\n', 'Pasar Beringharjo Yogyakarta: Pusat Keanekaragaman dan Tradisi', 'Pasar Beringharjo menawarkan beragam produk, mulai dari batik, kain, hingga barang-barang antik. '),
(12, 'Batik.jpg', 'Batik Yogyakarta, salah satu warisan budaya Indonesia, menggambarkan kekayaan sejarah, makna filosofis, dan keindahan seni tradisional. Dipandang sebagai karya seni yang elegan dan mendalam, batik dari Yogyakarta tidak hanya sekadar kain berwarna-warni, tetapi juga cerminan kekayaan budaya Jawa.\r\n	Batik di Yogyakarta memiliki akar yang dalam dalam sejarah Jawa. Seni batik diyakini telah ada sejak abad ke-6 Masehi, dan seiring berjalannya waktu, batik menjadi bagian integral dari kehidupan masyarakat Jawa. Raja-raja Mataram menjadi pelindung dan penyokong perkembangan batik, menjadikannya tradisi yang berlanjut hingga saat ini.\r\n	Setiap motif pada batik Yogyakarta memiliki makna filosofis dan simbolik yang mendalam. Motif \"Parang\" misalnya, melambangkan keberanian dan kekuatan, sementara motif \"Sido Mukti\" mewakili keselamatan dan kebahagiaan. Penggunaan simbol-simbol ini memberikan dimensi lebih pada kain batik, menjadikannya lebih dari sekadar pakaian, melainkan karya seni bermakna.\r\n	Yogyakarta memiliki sentra batik yang terkenal, seperti Malioboro dan Prawirotaman, di mana para pengrajin menjual dan memamerkan karya-karya mereka. Wisatawan dapat mengunjungi pusat-pusat batik ini untuk menyaksikan proses pembuatan secara langsung dan membeli batik sebagai oleh-oleh khas Yogyakarta.\r\n	Batik Yogyakarta telah meraih pengakuan di tingkat internasional. Sebagai warisan budaya tak benda UNESCO, batik menjadi simbol identitas Indonesia dan kekayaan budaya yang patut dijaga. Kain batik Yogyakarta sering digunakan dalam acara-acara resmi dan menjadi pusat perhatian di panggung internasional.\r\n	Batik Yogyakarta bukan hanya produk tekstil; ia adalah manifestasi seni, sejarah, dan filosofi yang terjalin erat. Dengan motif yang bermakna, proses pembuatan yang teliti, dan sentuhan keterampilan tangan, batik Yogyakarta tetap menjadi penjaga warisan budaya yang tak ternilai. Melalui kain batik, kita tidak hanya mengenakan pakaian, tetapi juga merangkul keindahan dan kedalaman budaya Indonesia.\r\n', 'Batik : Simbol Budaya yang Elegan', 'Batik Yogyakarta telah meraih pengakuan di tingkat internasional');

-- --------------------------------------------------------

--
-- Table structure for table `things`
--

CREATE TABLE `things` (
  `id_things` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `alamat` text NOT NULL,
  `operasional` varchar(255) NOT NULL,
  `id_kategori_things` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `things`
--

INSERT INTO `things` (`id_things`, `judul`, `alamat`, `operasional`, `id_kategori_things`) VALUES
(1, 'Gudeg Yu Djum ', 'Jl. Dagen No.2C, Sosromenduran, Gedong Tengen, Kota Yogyakarta', '7AM – 10PM', 2),
(2, 'Bale Raos Keraton', 'Jl. Magangan Kulon No.1, Panembahan, Kecamatan Kraton, Kota Yogyakarta', '10AM -10PM', 2),
(3, 'Mie Ayam Tumini', 'Jl. Imogiri Tim. No.187, Giwangan, Kec. Umbulharjo, Kota Yogyakarta', '10AM – 5PM', 2),
(4, 'Sate Klatak Pak Pong', 'Jl. Sultan Agung No.18, Jejeran II, Wonokromo, Kec. Pleret, Kabupaten Bantul', '9:30AM – 11PM', 2),
(5, 'Tempo Gelato', 'Jl. Prawirotaman No.38B, Brontokusuman, Kec. Mergangsan, Kota Yogyakarta', '9AM – 10:30PM', 2),
(6, 'Jejamuran Resto', 'Jl. Pandowoharjo, Niron, Pandowoharjo, Kec. Sleman, Kabupaten Sleman', '9AM – 9:30PM', 2),
(7, 'Taman Sari', 'Patehan, Kraton, Yogyakarta', '9AM – 3PM', 1),
(8, 'Goa Selarong', 'Waktu Gedug, Guwosari, Pajangan, Kabupaten Bantul', '8AM – 5PM', 1),
(9, 'Museum Batik Yogyakarta', 'Jl. Doktor Sutomo No.13A, Bausasran, Kec. Danurejan, Kota Yogyakarta', '9AM – 3PM', 1),
(10, 'Bunker Kaliadem', 'Kinarejo, Hargobinangun, Pakem, Kabupaten Sleman', 'Buka 24 jam', 1),
(11, 'Monumen Yogya Kembali', 'Jl. Ring Road Utara, Jongkang, Sariharjo, Ngaglik, Kabupaten Sleman', '8AM – 4PM (Senin libur)', 1),
(12, 'Museum Sonobudoyo', 'Jl. Pangurakan No.6, Ngupasan, Kec. Gondomanan, Kota Yogyakarta', '8AM – 9PM', 1),
(13, 'Keraton Ngayogyakarta Hadiningrat', 'Jl. Rotowijayan Blok No. 1, Panembahan, Kecamatan Kraton, Kota Yogyakarta', '8.30AM – 2.30PM (Senin libur)', 3),
(14, 'Candi Prambanan', 'Jl. Raya Solo - Yogyakarta No.16, Kranggan, Bokoharjo, Kec. Prambanan, Kabupaten Sleman', '6.30AM – 5PM', 3),
(15, 'Candi Ratu Boko', 'Jl. Raya Piyungan - Prambanan No.2, Gatak, Bokoharjo, Kec. Prambanan, Kabupaten Sleman', '7AM – 5PM', 3),
(16, 'Benteng Vredeburg', 'Jl. Margo Mulyo No.6, Ngupasan, Kec. Gondomanan, Kota Yogyakarta', '8AM – 3.30PM', 3),
(17, 'Candi Ijo', 'Jl. Candi Ijo, Nglengkong, Sambirejo, Kec. Prambanan, Kabupaten Sleman', '8AM – 6PM', 3),
(18, 'Candi Sambisari', 'Jl. Candi Sambisari, Sambisari, Purwomartani, Kec. Kalasan, Kabupaten Sleman', '8AM – 4PM', 3),
(19, 'Pantai Drini', 'Desa Banjarejo, Kecamatan Tanjungsari, Kabupaten Gunung Kidul', 'Buka 24 jam', 4),
(20, 'Pantai Glagah', 'Desa Glagah, Kecamatan Temon, Kabupaten Kulon Progo', '6AM – 6PM', 4),
(21, 'Pantai Timang', 'Jl. Pantai Sel. Jawa, Pantai, Purwodadi, Kec. Tepus, Kabupaten Gunung Kidul', '8AM – 5PM (Jumat tutup)', 4),
(22, 'Pantai Widodaren', 'Desa Kanigoro, Kecamatan Saptosari, Gunung Kidul', 'Buka 24 jam', 4),
(23, 'Pantai Siung', 'Dusun Wates, Desa Purwodadi, Kecamatan Tepus, Kabupaten Gunungkidul', 'Buka 24 jam', 4),
(24, 'Pantai Ngobaran', 'Desa Kanigoro, Kecamatan Saptosari, Kabupaten Gunungkidul', 'Buka 24 jam ', 4),
(25, 'Goa Pindul', 'Jalan Goa Pindul Gelaran 2, RT.3/RW.16, Bejiharjo, Kec. Karangmojo, Kabupaten Gunung Kidul', '7AM – 4PM ', 5),
(26, 'ATV Kaliurang', 'Skuter Kaliurang, Jl. Tlogo Putri, RT.06/RW.15, Kaliurang, Hargobinangun, Pakem, Kabupaten Sleman', '8AM -4.30PM', 5),
(27, 'Kedung Pedut', 'Jl. Kutogiri Gunung Kelir, Kembang, Jatimulyo, Kec. Girimulyo, Kabupaten Kulon Progo\r\n\r\n', '8AM – 3.30PM ', 5),
(28, 'Mangunan', 'Jln. Imogiri-Dlingo Km. 05 Mangunan, Dlingo, Kabupaten Bantul', '6AM – 5PM ', 5),
(29, 'Kebun The Nglinggo', 'Nglinggo Barat, Pagerharjo, Kec. Samigaluh, Kabupaten Kulon Progo', '7AM – 6PM', 5),
(30, 'Kalisuci Cave Tubing', 'Jetis, Pacarejo, Semanu, Kabupaten Gunung Kidul', '8AM – 4PM ', 5);

-- --------------------------------------------------------

--
-- Table structure for table `trip`
--

CREATE TABLE `trip` (
  `id_trip` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `isi` text NOT NULL
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
-- Indexes for table `trip`
--
ALTER TABLE `trip`
  ADD PRIMARY KEY (`id_trip`);

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
  MODIFY `id_events` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `gambar_region`
--
ALTER TABLE `gambar_region`
  MODIFY `id_gambar_reg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `gambar_things`
--
ALTER TABLE `gambar_things`
  MODIFY `id_gambar_things` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `hotel`
--
ALTER TABLE `hotel`
  MODIFY `id_hotel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `kategori_event`
--
ALTER TABLE `kategori_event`
  MODIFY `id_kategori_event` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `kategori_things`
--
ALTER TABLE `kategori_things`
  MODIFY `id_kategori_things` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `story`
--
ALTER TABLE `story`
  MODIFY `id_story` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `things`
--
ALTER TABLE `things`
  MODIFY `id_things` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `trip`
--
ALTER TABLE `trip`
  MODIFY `id_trip` int(11) NOT NULL AUTO_INCREMENT;

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
