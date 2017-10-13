-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 23, 2017 at 06:20 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `retourism`
--

-- --------------------------------------------------------

--
-- Table structure for table `budget`
--

CREATE TABLE `budget` (
  `id` int(11) NOT NULL,
  `budget` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `budget`
--

INSERT INTO `budget` (`id`, `budget`) VALUES
(1, 'sedikit'),
(2, 'menengah'),
(3, 'banyak');

-- --------------------------------------------------------

--
-- Table structure for table `cuaca`
--

CREATE TABLE `cuaca` (
  `id` int(11) NOT NULL,
  `cuaca` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cuaca`
--

INSERT INTO `cuaca` (`id`, `cuaca`) VALUES
(1, 'cerah'),
(2, 'berawan'),
(3, 'hujan'),
(4, 'badai');

-- --------------------------------------------------------

--
-- Table structure for table `destinasi`
--

CREATE TABLE `destinasi` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `lokasi` text NOT NULL,
  `htm` int(255) NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `destinasi`
--

INSERT INTO `destinasi` (`id`, `nama`, `lokasi`, `htm`, `deskripsi`) VALUES
(1, 'Candi Ijo', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3953.056525944458!2d110.50966074971234!3d-7.7838318943628835!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e7a5aa8d6b14f85%3A0xa062a1bc51696d11!2sCandi+Ijo!5e0!3m2!1sid!2sid!4v1498026427087" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', 5000, 'Candi Ijo adalah sebuah kompleks percandian bercorak Hindu, berada 4 kilometer arah tenggara dari Candi Ratu Boko atau kita-kira 18 kilometer di sebelah timur kota Yogyakarta.'),
(2, 'Candi Prambanan', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3953.355933734574!2d110.4892733497121!3d-7.752020594385391!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e7a5ae3dbd859d1%3A0x19e7a03b25955a2d!2sCandi+Prambanan!5e0!3m2!1sid!2sid!4v1498026700889" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', 30000, 'Candi Prambanan atau Candi Roro Jonggrang adalah kompleks candi Hindu terbesar di Indonesia yang dibangun pada abad ke-9 masehi. '),
(3, 'Candi Ratu Boko', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3953.1821973656097!2d110.48718254971233!3d-7.770495394372339!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e7a5a9322f20b67%3A0x18055ffb3ce3822d!2sCandi+RatuBoko!5e0!3m2!1sid!2sid!4v1498026727287" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', 25000, 'Situs Ratu Baka atau Candi Boko (bahasa Jawa: Candhi Ratu Baka) adalah situs purbakala yang merupakan kompleks sejumlah sisa bangunan yang berada kira-kira 3 km di sebelah selatan dari kompleks Candi Prambanan, 18 km sebelah timur Kota Yogyakarta atau 50 km barat daya Kota Surakarta, Jawa Tengah, Indonesia. '),
(4, 'Candi Sambi Sari', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3953.257773930612!2d110.44484044971227!3d-7.762464094377984!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e7a5a3ef28c0f25%3A0x5010aecf1fd22191!2scandi+sambisari+purwomartani+sleman!5e0!3m2!1sid!2sid!4v1498026762937" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', 5000, 'Candi Sambisari adalah candi Hindu yang berada di Purwomartani, Kalasan, Sleman, Yogyakarta, kira-kira 12 km di sebelah timur kota Yogyakarta ke arah kota Solo atau kira-kira 4 km sebelum kompleks Candi Prambanan.'),
(5, 'Arum Jeram Goa Pindul', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3951.6586168832546!2d110.64573794971355!3d-7.930677994259259!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e7a4b3c0c765803%3A0x31c917c21e58794b!2sWisata+goa+pindul!5e0!3m2!1sid!2sid!4v1498026786676" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', 45000, 'Gua Pindul adalah objek wisata berupa gua yang terletak di Desa Bejiharjo, Kecamatan Karangmojo, Kabupaten Gunungkidul.'),
(6, 'Taman Pintar', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3952.896417498307!2d110.36518814971256!3d-7.800790094350947!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e7a57860f2fb9af%3A0xa9f6007074b62dd8!2sTaman+Pintar+Yogyakarta!5e0!3m2!1sid!2sid!4v1498026806314" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', 60000, 'Taman Pintar Yogyakarta adalah wahana wisata yang terdapat di pusat Kota Yogyakarta, tepatnya di Jalan Panembahan Senopati No. 1-3, Yogyakarta, di kawasan Benteng Vredeburg.'),
(7, 'Gunung Merapi', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3955.312743896287!2d110.44262294971051!3d-7.540830994534756!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e7a641ec0ff2fa5%3A0xe92612624cad8800!2sGunung+Merapi!5e0!3m2!1sid!2sid!4v1498026883807" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', 100000, 'Gunung Merapi adalah gunung berapi di bagian tengah Pulau Jawa dan merupakan salah satu gunung api teraktif di Indonesia'),
(8, 'Gunung Merbabu', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3956.092667844861!2d110.43780594970988!3d-7.45499999459553!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e7a7b455e544767%3A0xf7af0c6e80ad2dde!2sGn.+Merbabu!5e0!3m2!1sid!2sid!4v1498026927282" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', 100000, 'Gunung Merbabu adalah gunung api yang bertipe Strato yang terletak secara geografis pada 7,5° LS dan 110,4° BT.'),
(9, 'Hardcore Gym', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3953.0241690785137!2d110.37114774971245!3d-7.787261994360502!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e7a582dc54cf643%3A0xb829cfe75b41852!2sHardcore+Gym+Jogja!5e0!3m2!1sid!2sid!4v1498026946000" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', 20000, 'Tempat fitness yang beralamatkan di Kompleks Kridosono, Kotabaru, Gondokusuman, Kota Yogyakarta'),
(10, 'I.fit Studio Gym', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3953.126291952167!2d110.37955194971231!3d-7.776430994368131!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e7a59ca5906644b%3A0xce4bc90068bd720a!2sI.fit+Studio+Gym!5e0!3m2!1sid!2sid!4v1498026970675" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', 20000, 'Tempat fitness yang beralamatkan di Jl. Colombo No.7, Caturtunggal, Kec. Depok, Kabupaten Sleman, Daerah Istimewa Yogyakarta '),
(11, 'Hutan Pinus Imogiri', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3951.752305262855!2d110.43337104971346!3d-7.920920894266146!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e7a537984052d55%3A0xbc70c46c282502bc!2sHutan+Pinus+Asri!5e0!3m2!1sid!2sid!4v1498027003594" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', 5000, 'Wisata Huta Pinus yang beralamatkan di Jl. Dlingo-Patuk, Terong, Dlingo, Bantul, Daerah Istimewa Yogyakarta '),
(12, 'Kebun Buah Mangunan', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3951.5649668589312!2d110.42240724971363!3d-7.940419194252377!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e7a5366aaaaaaab%3A0x51f99091957cadfa!2sBuah+Mangunan+Imogiri%2C+Mangunan+Fruit+Garden!5e0!3m2!1sid!2sid!4v1498027024451" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', 5000, 'Wisata kebun buah yang beralamatkan di Mangunan, Dlingo, Mangunan, Dlingo, Bantul, Daerah Istimewa Yogyakarta '),
(13, 'Jogja Bay Water ', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3953.3901110025754!2d110.4166229497121!3d-7.748381094387961!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e7a5bd52e7e19b7%3A0xbef22cb0aeba5965!2sJogja+Bay+Water+Park!5e0!3m2!1sid!2sid!4v1498027039272" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', 100000, 'Wahana air yang menyenangkan untuk keluarga maupun teman-teman'),
(14, 'Umbul Tirta', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3952.7514099810037!2d110.4162598497127!3d-7.81611729434013!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e7a57365c643e03%3A0x2d2d98c34acdd4e3!2sKolam+Renang+Umbul+Tirta!5e0!3m2!1sid!2sid!4v1498027909096" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', 10000, 'Kolam renang yang nyaman untuk renang bareng teman-teman'),
(15, 'Makam Raja Imogiri', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3951.72997740644!2d110.38273854971353!3d-7.923247294264514!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e7a54f951ef760f%3A0x99cd48194e507430!2sMakam+Raja-Raja+Imogiri!5e0!3m2!1sid!2sid!4v1498027929952" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', 5000, 'kompleks permakaman yang berlokasi di Imogiri, Imogiri, Bantul, DI Yogyakarta'),
(16, 'Ambarukmo Plaza', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3953.0714501718967!2d110.39916834971247!3d-7.782249294364021!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e7a59c2bc1c6023%3A0x1ce91a3c5aa8b3bc!2sPlaza+Ambarrukmo!5e0!3m2!1sid!2sid!4v1498027952133" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', 0, 'Plaza Ambarrukmo adalah pusat perbelanjaan keluarga di Yogyakarta dengan luas bangunan 120.000 m² di Jl. Laksda Adisucipto Yogyakarta yang didirikan pada tahun 2006.'),
(17, 'Galeria Mall', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3953.0675774803776!2d110.37677494971245!3d-7.782659994363738!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e7a58318198e939%3A0xb6283ff15225c290!2sGaleria+Mall!5e0!3m2!1sid!2sid!4v1498027967745" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', 0, 'Galeria Mall adalah pusat perbelanjaan di Yogyakarta. Mal ini didirikan pada tahun 1997. Mal ini terdiri dari 3 lantai dengan penyewa - penyewa yang sudah terkenal sebagai perusahaan besar baik skala nasional maupun internasional'),
(18, 'Hartono Mall', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3953.290364933418!2d110.39689334971226!3d-7.7589981943804585!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e7a59a3cbe962b1%3A0xac84b1dd30d794c8!2sHartono+Mall+Yogyakarta!5e0!3m2!1sid!2sid!4v1498027979787" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', 0, 'Hartono Mall Yogyakarta menjadi mall terbesar di Yogyakarta dan Jawa Tengah dengan total tenant sebanyak 300 unit. Hartono Mall Yogyakarta menyajikan berbagai brand besar seperti Parkson Department Store, Matahari Department Store, H&M Department Store, CGV* Cinemas, Ace Hardware, Informa, Hypermart, Electronic Solution, dan masih banyak brand besar lainnya.'),
(19, 'Jogja City Mall', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3953.3422724528095!2d110.35836434971207!3d-7.7534748943843494!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e7a58f6761efb91%3A0xba9504b4350ffe25!2sJogja+City+Mall%2C+Jl.+Magelang+No.18%2C+Sinduadi%2C+Mlati%2C+Kabupaten+Sleman%2C+Daerah+Istimewa+Yogyakarta+55284!5e0!3m2!1sid!2sid!4v1498027995715" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', 0, 'Jogja City Mall atau biasa disingkat JCM merupakan sebuah pusat perbelanjaan yang berada dalam satu kawasan dengan The Sahid Rich Hotel Yogyakarta. Pusat perbelanjaan ini berlokasi di Jalan Magelang Km. 6 No.18, Sinduadi, Sleman, Yogyakarta.'),
(20, 'Mall Malioboro', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3952.968856725464!2d110.36386734971249!3d-7.793122094356358!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e7a58262f8e3f99%3A0xd57e2a1709526952!2sMall+Malioboro!5e0!3m2!1sid!2sid!4v1498028016315" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', 0, 'Malioboro Mall adalah sebuah mal yang terletak di pusat kota Yogyakarta, yaitu di jalan Malioboro. Mal ini berdiri sejak tahun 1993 sebagai mal pertama di Yogya.'),
(21, 'Masjid Gedhe Kauman', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d31623.75088151051!2d110.34849808289434!3d-7.793121727566792!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xdc2b00d17c73aa18!2sMasjid+Gedhe+Kauman!5e0!3m2!1sid!2sid!4v1498028037081" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', 0, 'Mesjid Gedhe Kauman adalah masjid raya Kesultanan Yogyakarta, atau Masjid Besar Yogyakarta, yang terletak di sebelah barat kompleks Alun-alun Utara Kraton Yogyakarta.'),
(22, 'Masjid Syuhada', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3953.033664133279!2d110.36705734971247!3d-7.786255594361207!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e7a5823e0c22849%3A0x30727af8d53c0f35!2sMasjid+Syuhada!5e0!3m2!1sid!2sid!4v1498028061297" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', 0, 'Masjid Syuhada adalah masjid yang terletak di kawasan Kotabaru, Yogyakarta.'),
(23, 'Masjid Kampus UGM', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3953.1548461610123!2d110.37786104971235!3d-7.773399894370277!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e7a59b53fd0eaa1%3A0x70451ba793ea5eae!2sMasjid+Kampus+UGM!5e0!3m2!1sid!2sid!4v1498028080525" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', 0, 'Masjid Kampus UGM adalah masjid kampus milik Universitas Gajah Mada yang merupakan masjid kampus terbesar di Asia Tenggara. Awalnya masjid ini dinamakan Masjid Sholahudin UGM.'),
(24, 'Masjid Ulil Albab UII', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3953.9593506564956!2d110.41302844971159!3d-7.68751159443098!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e7a5e99121db579%3A0x70458663907a660c!2sMasjid+Ulil+Albab+UII!5e0!3m2!1sid!2sid!4v1498028116519" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', 0, 'Masjid Ulil Albab Universitas Islam Indonesia (UII), Yogyakarta, merupakan masjid kampus terpadu UII yang terletak di Jalan Kaliurang Km. 14,4 Sleman, Yogyakarta. Masjid kampus ini diresmikan pada 17 Agustus 2001, bertepatan dengan Hari Kemerdekaan bangsa Indonesia. Masjid Ulil Albab merupakan simbol sekaligus kebanggaan bagi civitas akademika UII yang telah begitu lama mendambakan sebuah masjid untuk menjadi pusat kajian atau belajar agama dan pengetahuan. '),
(25, 'Museum Gunung Api Merapi', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3954.6218877806172!2d110.42211244971115!3d-7.616056794481499!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e7a5e6ec08af943%3A0xa843109615445506!2sMuseum+Gunung+Api+Merapi!5e0!3m2!1sid!2sid!4v1498028140433" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', 5000, 'Museum Gunung Merapi adalah sebuah museum khusus yang berisi pengetahuan tentang gunung api di seluruh dunia secara umum dan khusus'),
(26, 'Museum Vredeburg', '', 0, ''),
(27, 'Outbound Jogja', '', 0, ''),
(28, 'Jungle Paintball Jogja', '', 0, ''),
(29, 'Jupiter Paintball Jogja', '', 0, ''),
(30, 'Pantai Baron', '', 0, ''),
(31, 'Pantai Indrayanti', '', 0, ''),
(32, 'Pantai Parangtritis', '', 0, ''),
(33, 'Pantai Sadranan', '', 0, ''),
(34, 'Pantai Wediombo', '', 0, ''),
(35, 'Paralayang Watugupit', '', 0, ''),
(36, 'Pizza Hut Kaliurang', '', 0, ''),
(37, 'Pizza Hut Sudirman', '', 0, ''),
(38, 'Stadion Mandala Krida', '', 0, ''),
(39, 'Stadion Maguwoharjo', '', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `jumlah_pengunjung`
--

CREATE TABLE `jumlah_pengunjung` (
  `id` int(11) NOT NULL,
  `jumlah` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jumlah_pengunjung`
--

INSERT INTO `jumlah_pengunjung` (`id`, `jumlah`) VALUES
(1, 'individu'),
(2, 'kelompok');

-- --------------------------------------------------------

--
-- Table structure for table `kriteria_umur`
--

CREATE TABLE `kriteria_umur` (
  `id` int(11) NOT NULL,
  `kriteria` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kriteria_umur`
--

INSERT INTO `kriteria_umur` (`id`, `kriteria`) VALUES
(1, 'anak'),
(2, 'dewasa');

-- --------------------------------------------------------

--
-- Table structure for table `lama_berkunjung`
--

CREATE TABLE `lama_berkunjung` (
  `id` int(11) NOT NULL,
  `lama` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lama_berkunjung`
--

INSERT INTO `lama_berkunjung` (`id`, `lama`) VALUES
(1, 'perhari'),
(2, 'perjam');

-- --------------------------------------------------------

--
-- Table structure for table `memiliki_budget`
--

CREATE TABLE `memiliki_budget` (
  `id` int(11) NOT NULL,
  `id_destinasi` int(11) NOT NULL,
  `id_budget` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `memiliki_budget`
--

INSERT INTO `memiliki_budget` (`id`, `id_destinasi`, `id_budget`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 2, 2),
(5, 2, 3),
(6, 3, 1),
(7, 3, 2),
(8, 3, 3),
(9, 4, 1),
(10, 4, 2),
(11, 4, 3),
(12, 5, 2),
(13, 5, 3),
(14, 6, 3),
(15, 7, 3),
(16, 8, 3),
(17, 9, 2),
(18, 9, 3),
(19, 10, 2),
(20, 10, 3),
(21, 11, 1),
(22, 11, 2),
(23, 11, 3),
(24, 12, 1),
(25, 12, 2),
(26, 12, 3),
(27, 13, 3),
(28, 14, 1),
(29, 14, 2),
(30, 14, 3),
(31, 15, 1),
(32, 15, 2),
(33, 15, 3),
(34, 16, 1),
(35, 16, 2),
(36, 16, 3),
(37, 17, 1),
(38, 17, 2),
(39, 17, 3),
(40, 18, 1),
(41, 18, 2),
(42, 18, 3),
(43, 19, 1),
(44, 19, 2),
(45, 19, 3),
(46, 20, 1),
(47, 20, 2),
(48, 20, 3),
(49, 21, 1),
(50, 21, 2),
(51, 21, 3),
(52, 22, 1),
(53, 22, 2),
(54, 22, 3),
(55, 23, 1),
(56, 23, 2),
(57, 23, 3),
(58, 24, 1),
(59, 24, 2),
(60, 24, 3),
(61, 25, 1),
(62, 25, 2),
(63, 25, 3);

-- --------------------------------------------------------

--
-- Table structure for table `memiliki_cuaca`
--

CREATE TABLE `memiliki_cuaca` (
  `id` int(11) NOT NULL,
  `id_destinasi` int(11) NOT NULL,
  `id_cuaca` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `memiliki_cuaca`
--

INSERT INTO `memiliki_cuaca` (`id`, `id_destinasi`, `id_cuaca`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 1),
(4, 2, 2),
(5, 3, 1),
(6, 3, 2),
(7, 4, 1),
(8, 4, 2),
(9, 5, 1),
(10, 5, 2),
(11, 6, 1),
(12, 6, 2),
(13, 6, 3),
(14, 6, 4),
(15, 7, 1),
(16, 8, 1),
(17, 9, 1),
(18, 9, 2),
(19, 9, 3),
(20, 9, 4),
(21, 10, 1),
(22, 10, 2),
(23, 10, 3),
(24, 10, 4),
(25, 11, 1),
(26, 11, 2),
(27, 12, 1),
(28, 12, 2),
(29, 13, 1),
(30, 13, 2),
(31, 14, 1),
(32, 14, 2),
(33, 15, 1),
(34, 15, 2),
(35, 16, 1),
(36, 16, 2),
(37, 16, 3),
(38, 16, 4),
(39, 17, 1),
(40, 17, 2),
(41, 17, 3),
(42, 17, 4),
(43, 18, 1),
(44, 18, 2),
(45, 18, 3),
(46, 18, 4),
(47, 19, 1),
(48, 19, 2),
(49, 19, 3),
(50, 19, 4),
(51, 20, 1),
(52, 20, 2),
(53, 20, 3),
(54, 20, 4),
(55, 21, 1),
(56, 21, 2),
(57, 21, 3),
(58, 21, 4),
(59, 22, 1),
(60, 22, 2),
(61, 22, 3),
(62, 22, 4),
(63, 23, 1),
(64, 23, 2),
(65, 23, 3),
(66, 23, 4),
(67, 24, 1),
(68, 24, 2),
(69, 24, 3),
(70, 24, 4),
(71, 25, 1),
(72, 25, 2),
(73, 25, 3),
(74, 25, 4);

-- --------------------------------------------------------

--
-- Table structure for table `memiliki_jumlah_pengunjung`
--

CREATE TABLE `memiliki_jumlah_pengunjung` (
  `id` int(11) NOT NULL,
  `id_destinasi` int(11) NOT NULL,
  `id_jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `memiliki_jumlah_pengunjung`
--

INSERT INTO `memiliki_jumlah_pengunjung` (`id`, `id_destinasi`, `id_jumlah`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 1),
(4, 2, 2),
(5, 3, 1),
(6, 3, 2),
(7, 4, 1),
(8, 4, 2),
(9, 5, 1),
(10, 5, 2),
(11, 6, 1),
(12, 6, 2),
(13, 7, 2),
(14, 8, 2),
(15, 9, 1),
(16, 9, 2),
(17, 10, 1),
(18, 10, 2),
(19, 11, 1),
(20, 11, 2),
(21, 12, 1),
(22, 12, 2),
(23, 13, 1),
(24, 13, 2),
(25, 14, 1),
(26, 14, 2),
(27, 15, 1),
(28, 15, 2),
(29, 16, 1),
(30, 16, 2),
(31, 17, 1),
(32, 17, 2),
(33, 18, 1),
(34, 18, 2),
(35, 19, 1),
(36, 19, 2),
(37, 20, 1),
(38, 20, 2),
(39, 21, 1),
(40, 21, 2),
(41, 22, 1),
(42, 22, 2),
(43, 23, 1),
(44, 23, 2),
(45, 24, 1),
(46, 24, 2),
(47, 25, 1),
(48, 25, 2);

-- --------------------------------------------------------

--
-- Table structure for table `memiliki_lama_berkunjung`
--

CREATE TABLE `memiliki_lama_berkunjung` (
  `id` int(11) NOT NULL,
  `id_destinasi` int(11) NOT NULL,
  `id_lama_berkunjung` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `memiliki_lama_berkunjung`
--

INSERT INTO `memiliki_lama_berkunjung` (`id`, `id_destinasi`, `id_lama_berkunjung`) VALUES
(1, 1, 2),
(2, 2, 2),
(3, 3, 2),
(4, 4, 2),
(5, 5, 2),
(6, 6, 2),
(7, 7, 1),
(8, 8, 1),
(9, 9, 2),
(10, 10, 2),
(11, 11, 2),
(12, 12, 2),
(13, 13, 2),
(14, 14, 2),
(15, 15, 2),
(16, 16, 2),
(17, 17, 2),
(18, 18, 2),
(19, 19, 2),
(20, 20, 2),
(21, 21, 2),
(22, 22, 2),
(23, 23, 2),
(24, 24, 2),
(25, 25, 2);

-- --------------------------------------------------------

--
-- Table structure for table `memiliki_tema`
--

CREATE TABLE `memiliki_tema` (
  `id` int(11) NOT NULL,
  `id_destinasi` int(11) NOT NULL,
  `id_tema` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `memiliki_tema`
--

INSERT INTO `memiliki_tema` (`id`, `id_destinasi`, `id_tema`) VALUES
(1, 1, 2),
(2, 1, 3),
(3, 1, 4),
(4, 1, 8),
(5, 1, 11),
(6, 2, 2),
(7, 2, 3),
(8, 2, 4),
(9, 2, 8),
(10, 2, 11),
(11, 3, 2),
(12, 3, 3),
(13, 3, 4),
(14, 3, 8),
(15, 3, 11),
(16, 4, 2),
(17, 4, 3),
(18, 4, 4),
(19, 4, 8),
(20, 4, 11),
(21, 5, 1),
(22, 5, 7),
(23, 5, 10),
(24, 6, 2),
(25, 6, 3),
(26, 6, 4),
(27, 6, 5),
(28, 7, 1),
(29, 7, 7),
(30, 8, 1),
(31, 8, 7),
(32, 9, 3),
(33, 9, 5),
(34, 9, 10),
(35, 10, 3),
(36, 10, 5),
(37, 10, 10),
(38, 11, 1),
(39, 11, 3),
(40, 11, 7),
(41, 11, 9),
(42, 12, 1),
(43, 12, 3),
(44, 12, 7),
(45, 12, 9),
(46, 13, 2),
(47, 13, 3),
(48, 13, 5),
(49, 13, 7),
(50, 13, 10),
(51, 14, 2),
(52, 14, 3),
(53, 14, 5),
(54, 14, 10),
(55, 15, 4),
(56, 15, 8),
(57, 15, 11),
(58, 16, 2),
(59, 16, 3),
(60, 16, 5),
(61, 16, 9),
(62, 17, 2),
(63, 17, 3),
(64, 17, 5),
(65, 17, 9),
(66, 18, 2),
(67, 18, 3),
(68, 18, 5),
(69, 18, 9),
(70, 19, 2),
(71, 19, 3),
(72, 19, 5),
(73, 19, 9),
(74, 20, 2),
(75, 20, 3),
(76, 20, 5),
(77, 20, 9),
(78, 21, 2),
(79, 21, 4),
(80, 21, 8),
(81, 22, 2),
(82, 22, 4),
(83, 22, 8),
(84, 23, 2),
(85, 23, 4),
(86, 23, 8),
(87, 24, 2),
(88, 24, 4),
(89, 24, 8),
(90, 25, 2),
(91, 25, 3),
(92, 25, 4),
(93, 25, 5);

-- --------------------------------------------------------

--
-- Table structure for table `memiliki_tujuan`
--

CREATE TABLE `memiliki_tujuan` (
  `id` int(11) NOT NULL,
  `id_destinasi` int(11) NOT NULL,
  `id_tujuan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `memiliki_tujuan`
--

INSERT INTO `memiliki_tujuan` (`id`, `id_destinasi`, `id_tujuan`) VALUES
(1, 1, 1),
(2, 1, 4),
(3, 1, 6),
(4, 2, 1),
(5, 2, 4),
(6, 2, 6),
(7, 3, 1),
(8, 3, 4),
(9, 3, 6),
(10, 4, 1),
(11, 4, 4),
(12, 4, 6),
(13, 5, 6),
(14, 5, 7),
(15, 6, 1),
(16, 6, 6),
(17, 7, 6),
(18, 8, 6),
(19, 9, 7),
(20, 10, 7),
(21, 11, 6),
(22, 12, 6),
(23, 13, 6),
(24, 13, 7),
(25, 14, 6),
(26, 14, 7),
(27, 15, 1),
(28, 15, 6),
(29, 16, 2),
(30, 16, 3),
(31, 16, 5),
(32, 16, 6),
(33, 17, 2),
(34, 17, 3),
(35, 17, 5),
(36, 17, 6),
(37, 18, 2),
(38, 18, 3),
(39, 18, 5),
(40, 18, 6),
(41, 19, 2),
(42, 19, 3),
(43, 19, 5),
(44, 19, 6),
(45, 20, 2),
(46, 20, 3),
(47, 20, 5),
(48, 20, 6),
(49, 21, 1),
(50, 21, 4),
(51, 22, 1),
(52, 22, 4),
(53, 23, 1),
(54, 23, 4),
(55, 24, 1),
(56, 24, 4),
(57, 25, 1),
(58, 25, 6);

-- --------------------------------------------------------

--
-- Table structure for table `memiliki_umur`
--

CREATE TABLE `memiliki_umur` (
  `id` int(11) NOT NULL,
  `id_destinasi` int(11) NOT NULL,
  `id_umur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `memiliki_umur`
--

INSERT INTO `memiliki_umur` (`id`, `id_destinasi`, `id_umur`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 1),
(4, 2, 2),
(5, 3, 1),
(6, 3, 2),
(7, 4, 1),
(8, 4, 2),
(9, 5, 2),
(10, 6, 1),
(11, 6, 2),
(12, 7, 2),
(13, 8, 2),
(14, 9, 2),
(15, 10, 2),
(16, 11, 1),
(17, 11, 2),
(18, 12, 1),
(19, 12, 2),
(20, 13, 1),
(21, 13, 2),
(22, 14, 1),
(23, 14, 2),
(24, 15, 1),
(25, 15, 2),
(26, 16, 1),
(27, 16, 2),
(28, 17, 1),
(29, 17, 2),
(30, 18, 1),
(31, 18, 2),
(32, 19, 1),
(33, 19, 2),
(34, 20, 1),
(35, 20, 2),
(36, 21, 1),
(37, 21, 2),
(38, 22, 1),
(39, 22, 2),
(40, 23, 1),
(41, 23, 2),
(42, 24, 1),
(43, 24, 2),
(44, 25, 1),
(45, 25, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tema_destinasi`
--

CREATE TABLE `tema_destinasi` (
  `id` int(11) NOT NULL,
  `tema` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tema_destinasi`
--

INSERT INTO `tema_destinasi` (`id`, `tema`) VALUES
(1, 'alam'),
(2, 'arsitektur'),
(3, 'casual'),
(4, 'edukasi'),
(5, 'modern'),
(6, 'pertanian'),
(7, 'petualangan'),
(8, 'religi'),
(9, 'romantis'),
(10, 'sporty'),
(11, 'tradisional');

-- --------------------------------------------------------

--
-- Table structure for table `tujuan_destinasi`
--

CREATE TABLE `tujuan_destinasi` (
  `id` int(11) NOT NULL,
  `tujuan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tujuan_destinasi`
--

INSERT INTO `tujuan_destinasi` (`id`, `tujuan`) VALUES
(1, 'belajar'),
(2, 'belanja'),
(3, 'bisnis'),
(4, 'ibadah'),
(5, 'kuliner'),
(6, 'liburan'),
(7, 'olahraga');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `budget`
--
ALTER TABLE `budget`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cuaca`
--
ALTER TABLE `cuaca`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `destinasi`
--
ALTER TABLE `destinasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jumlah_pengunjung`
--
ALTER TABLE `jumlah_pengunjung`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kriteria_umur`
--
ALTER TABLE `kriteria_umur`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lama_berkunjung`
--
ALTER TABLE `lama_berkunjung`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `memiliki_budget`
--
ALTER TABLE `memiliki_budget`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `memiliki_cuaca`
--
ALTER TABLE `memiliki_cuaca`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `memiliki_jumlah_pengunjung`
--
ALTER TABLE `memiliki_jumlah_pengunjung`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `memiliki_lama_berkunjung`
--
ALTER TABLE `memiliki_lama_berkunjung`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `memiliki_tema`
--
ALTER TABLE `memiliki_tema`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `memiliki_tujuan`
--
ALTER TABLE `memiliki_tujuan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `memiliki_umur`
--
ALTER TABLE `memiliki_umur`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tema_destinasi`
--
ALTER TABLE `tema_destinasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tujuan_destinasi`
--
ALTER TABLE `tujuan_destinasi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `budget`
--
ALTER TABLE `budget`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `cuaca`
--
ALTER TABLE `cuaca`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `destinasi`
--
ALTER TABLE `destinasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `jumlah_pengunjung`
--
ALTER TABLE `jumlah_pengunjung`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `kriteria_umur`
--
ALTER TABLE `kriteria_umur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `lama_berkunjung`
--
ALTER TABLE `lama_berkunjung`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `memiliki_budget`
--
ALTER TABLE `memiliki_budget`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
--
-- AUTO_INCREMENT for table `memiliki_cuaca`
--
ALTER TABLE `memiliki_cuaca`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;
--
-- AUTO_INCREMENT for table `memiliki_jumlah_pengunjung`
--
ALTER TABLE `memiliki_jumlah_pengunjung`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `memiliki_lama_berkunjung`
--
ALTER TABLE `memiliki_lama_berkunjung`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `memiliki_tema`
--
ALTER TABLE `memiliki_tema`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;
--
-- AUTO_INCREMENT for table `memiliki_tujuan`
--
ALTER TABLE `memiliki_tujuan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
--
-- AUTO_INCREMENT for table `memiliki_umur`
--
ALTER TABLE `memiliki_umur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `tema_destinasi`
--
ALTER TABLE `tema_destinasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `tujuan_destinasi`
--
ALTER TABLE `tujuan_destinasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
