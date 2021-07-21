-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 21, 2021 at 11:45 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.1.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ta-ppl`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(64) NOT NULL,
  `nama_admin` varchar(64) NOT NULL,
  `email_admin` varchar(64) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `nama_admin`, `email_admin`, `password`) VALUES
(2, 'admin', 'admin@gmail.com', '$2y$10$e8aQ6j6wg/lh8/Y71sVo6ukh7nF/YYLY.SPUAtEvncoq1fEzVhtFS');

-- --------------------------------------------------------

--
-- Table structure for table `game`
--

CREATE TABLE `game` (
  `id_game` int(64) NOT NULL,
  `nama_game` varchar(64) NOT NULL,
  `id_publisher` int(64) NOT NULL,
  `nama_publisher` varchar(64) NOT NULL,
  `deskripsi_produk` varchar(255) NOT NULL,
  `kategori` varchar(16) NOT NULL,
  `harga` varchar(64) NOT NULL,
  `gambar_game` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `game`
--

INSERT INTO `game` (`id_game`, `nama_game`, `id_publisher`, `nama_publisher`, `deskripsi_produk`, `kategori`, `harga`, `gambar_game`) VALUES
(14, 'Coba Upload', 0, '', 'Ini untuk coba upload game', 'Action', '10000', '');

-- --------------------------------------------------------

--
-- Table structure for table `keranjang`
--

CREATE TABLE `keranjang` (
  `id_keranjang` int(64) NOT NULL,
  `id_game` int(64) NOT NULL,
  `harga` varchar(64) NOT NULL,
  `jumlah` varchar(64) NOT NULL,
  `tanggal` varchar(64) NOT NULL,
  `id_user` int(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id_pembayaran` int(255) NOT NULL,
  `id` int(64) NOT NULL,
  `id_game` int(64) NOT NULL,
  `jumlah_pembayaran` varchar(64) NOT NULL,
  `nama_user` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `playgames`
--

CREATE TABLE `playgames` (
  `id_game` int(11) NOT NULL,
  `nama_game` varchar(255) NOT NULL,
  `gambar_game` varchar(255) NOT NULL,
  `deskripsi_game` varchar(255) NOT NULL,
  `kategori` varchar(255) NOT NULL,
  `link_game` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `playgames`
--

INSERT INTO `playgames` (`id_game`, `nama_game`, `gambar_game`, `deskripsi_game`, `kategori`, `link_game`) VALUES
(1, 'Cube Ninja', 'cnn1.jpg', 'Game tentang ninja laki lakis', 'arcade', 'ninja.html'),
(2, 'Birdy Rush', 'birdy_rush.png', 'Game tentang burung', 'arcade', 'bird.html'),
(3, 'Olympic Rio', 'olympic.jpg', 'Permainan Sport Terseru dan populer telah hadir!', 'populer', 'olympic.html'),
(4, 'Cut The Rope', 'header.jpg', 'Bermain dan beri makan omnom! si alien lucu .', 'populer', 'cut_the_rope.html'),
(5, 'Turbo Racing', 'turbo_racing.jpg', 'Permainan Balapan Menegangkan ! seru dan menarik!', 'populer', 'turbo_racing.html'),
(6, '8 Ball Pool', 'ball_pool.jpg', 'Mainkan game billiar terpopuler di sini ! mainkan gratis!', 'populer', 'ball_pool.html'),
(7, 'Red Code', 'red.jpg', 'Game perang terseru dan terkeren! yuk main sekarang dude!', 'populer', 'red_code.html'),
(8, 'Monkey Kick', 'monkey_kick.jpg', 'Tendang MONYET yang lucu dan pikakeheulen jiga kamu :)', 'populer', 'monkey_kick.html'),
(9, 'Bloxorz', 'bloxorz.png', 'Mystery box oriented game yang bikin kamu pusing dan menantang!', 'populer', 'bloxorz.html'),
(10, 'Basketball', 'basket.jpg', 'Mainkan olahraga basket dengan mudah disini!', 'populer', 'basket.html'),
(11, 'Free Falling', 'free_falling.jpg', 'Rasakan sensasi parkour yang seru dan menegangkan disini!', 'populer', 'free_falling.html'),
(12, 'Thunderbirds', 'thunderbirds.jpg', 'Mainkan game thunderbirds yang seru,menarik dan gege', 'populer', 'thunderbirds.html'),
(13, 'Battle Golf', 'battle_golf.jpg', 'Mainkan game golf bersama temanmu sekarang!', 'populer', 'battle_golf.html'),
(14, 'Cartapult', 'cartapult.jpg', 'Tabrakan dan ledakan mobil sekitarmu hahahahhaha!', 'populer', 'cartapult.html'),
(16, 'Zombiester', 'zombie_buster.png', 'Kalahkan para zombie dan bertahan hidup agar kamu selamat!', 'fps', 'zombie.html'),
(17, 'Tank Wars', 'tank_wars.jpg', 'Kalahkan tank lain , kuasai mereka dan menangkan pertandingan!', 'fps', 'tankwars.html'),
(18, 'Combatdier', 'soldiers-combat.jpg', 'Kalahkan musuh dan bertahan hidup untuk menang!', 'fps', 'combat.html'),
(19, 'Jelly Jump', 'jelly_jump.jpg', 'Loncat loncat fucekkkk', 'fps', 'jelly.html'),
(20, 'Throatgery', 'throat_surgery.jpg', 'Mainkan simulasi operasi gigi sekarang!', 'arcade', 'surgery.html'),
(21, 'BoxKid', 'box_kid.jpg', 'Mainkan game keren puzzle dan mengasah otak!', 'arcade', 'box.html'),
(22, 'Turbo Racing', 'turbo_racing.jpg', 'Permainan Balapan Menegangkan ! seru dan menarik!', 'balapan', 'turbo_racing.html'),
(23, 'BoxKid', 'box_kid.jpg', 'Mainkan game keren puzzle dan mengasah otak!', 'misteri', 'box.html'),
(24, 'Throatgery', 'throat_surgery.jpg', 'Mainkan simulasi operasi gigi sekarang!', 'edukasi', 'surgery.html'),
(25, 'Olympic Rio', 'olympic.jpg', 'Permainan Sport Terseru dan populer telah hadir!', 'olahraga', 'olympic.html'),
(26, 'Thunderbirds', 'thunderbirds.jpg', 'Mainkan game thunderbirds yang seru,menarik dan gege', 'petualangan', 'thunderbirds.html'),
(27, 'Free Falling', 'free_falling.jpg', 'Rasakan sensasi parkour yang seru dan menegangkan disini!', 'Aksi', 'free_falling.html'),
(28, 'Thunderbirds', 'thunderbirds.jpg', 'Mainkan game thunderbirds yang seru,menarik dan gege', 'aksi', 'thunderbirds.html'),
(29, 'Red Code', 'red.jpg', 'Game perang terseru dan terkeren! yuk main sekarang dude!', 'aksi', 'red_code.html'),
(30, 'Monkey Kick', 'monkey_kick.jpg', 'Tendang MONYET yang lucu dan pikakeheulen jiga kamu :)', 'aksi', 'monkey_kick.html'),
(31, 'Firewatergirl', 'fireboy.jpg', 'Mainkan game bersama temanmu! selesaikan level bersama sama!', 'multiplayer', 'fire boys.html'),
(32, 'Cartapult', 'cartapult.jpg', 'Tabrakan dan ledakan mobil sekitarmu hahahahhaha!', 'balapan', 'cartapult.html'),
(33, 'Birdy Rush', 'birdy_rush.png', 'Game tentang burung', 'balapan', 'bird.html'),
(34, 'Thunderbirds', 'thunderbirds.jpg', 'Mainkan game thunderbirds yang seru,menarik dan gege', 'balapan', 'thunderbirds.html'),
(35, 'Cut The Rope', 'header.jpg', 'Bermain dan beri makan omnom! si alien lucu .', 'misteri', 'cut_the_rope.html'),
(36, 'Bloxorz', 'bloxorz.png', 'Mystery box oriented game yang bikin kamu pusing dan menantang!', 'misteri', 'bloxorz.html'),
(37, 'Red Code', 'red.jpg', 'Game perang terseru dan terkeren! yuk main sekarang dude!', 'misteri', 'red_code.html'),
(38, 'Free Falling', 'free_falling.jpg', 'Rasakan sensasi parkour yang seru dan menegangkan disini!', 'olahraga', 'free_falling.html'),
(39, 'Thunderbirds', 'thunderbirds.jpg', 'Mainkan game thunderbirds yang seru,menarik dan gege', 'olahraga', 'thunderbirds.html'),
(41, 'Cut The Rope', 'header.jpg', 'Bermain dan beri makan omnom! si alien lucu .', 'petualangan', 'cut_the_rope.html'),
(42, 'Red Code', 'red.jpg', 'Game perang terseru dan terkeren! yuk main sekarang dude!', 'petualangan', 'red_code.html'),
(43, 'Monkey Kick', 'monkey_kick.jpg', 'Tendang MONYET yang lucu dan pikakeheulen jiga kamu :)', 'petualangan', 'monkey_kick.html'),
(44, '8 Ball Pool', 'ball_pool.jpg', 'Mainkan game billiar terpopuler di sini ! mainkan gratis!', 'multiplayer', 'ball_pool.html'),
(45, 'Battle Golf', 'battle_golf.jpg', 'Mainkan game golf bersama temanmu sekarang!', 'multiplayer', 'battle_golf.html'),
(46, 'Cut The Rope', 'header.jpg', 'Bermain dan beri makan omnom! si alien lucu .', 'multiplayer', 'cut_the_rope.html'),
(47, 'Bloxorz', 'bloxorz.png', 'Mystery box oriented game yang bikin kamu pusing dan menantang!', 'edukasi', 'bloxorz.html'),
(48, 'Cut The Rope', 'header.jpg', 'Bermain dan beri makan omnom! si alien lucu .', 'edukasi', 'cut_the_rope.html'),
(49, 'Basketball', 'basket.jpg', 'Mainkan olahraga basket dengan mudah disini!', 'olahraga', 'basket.html'),
(50, 'Olympic Rio', 'olympic.jpg', 'Permainan Sport Terseru dan populer telah hadir!', 'edukasi', 'olympic.html'),
(54, 'Final Fantasy', 'k4n5pyovt5c41.jpg', '', 'Action', ''),
(56, 'dreadout1', 'Picture1.png', '', 'Action', '');

-- --------------------------------------------------------

--
-- Table structure for table `publisher`
--

CREATE TABLE `publisher` (
  `id_publisher` int(64) NOT NULL,
  `nama_publisher` varchar(64) NOT NULL,
  `nama_perusahaan` varchar(255) NOT NULL,
  `email_publisher` varchar(64) NOT NULL,
  `image` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `is_active` varchar(1) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `publisher`
--

INSERT INTO `publisher` (`id_publisher`, `nama_publisher`, `nama_perusahaan`, `email_publisher`, `image`, `password`, `is_active`, `date_created`) VALUES
(31, 'AKU SAJA', 'CORT', 'publish@gmail.com', 'default.jpg', '$2y$10$RkL5tDQx/hDyVQBLj/hPBejKp41TDS3f6phfHhyGjD/zvaOWIVbMS', '1', 1625658751);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(64) NOT NULL,
  `nama` varchar(64) NOT NULL,
  `email` varchar(64) NOT NULL,
  `image` varchar(64) NOT NULL,
  `password` varchar(128) NOT NULL,
  `is_active` int(1) NOT NULL,
  `date_created` int(11) NOT NULL,
  `inacash` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nama`, `email`, `image`, `password`, `is_active`, `date_created`, `inacash`) VALUES
(90, 'ash saja', 'ash@gmail.com', 'default.jpg', '$2y$10$DOSU9xQcXV1x84bbGZXKN.qo1lVvCSKdTols60ktIAOjmbFa6rN4W', 1, 1625660363, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_token`
--

CREATE TABLE `user_token` (
  `id` int(11) NOT NULL,
  `email` varchar(128) NOT NULL,
  `token` varchar(128) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `game`
--
ALTER TABLE `game`
  ADD PRIMARY KEY (`id_game`,`id_publisher`),
  ADD KEY `id_publisher` (`id_publisher`);

--
-- Indexes for table `keranjang`
--
ALTER TABLE `keranjang`
  ADD PRIMARY KEY (`id_keranjang`,`id_game`,`id_user`),
  ADD KEY `id_game` (`id_game`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id_pembayaran`,`id`,`id_game`),
  ADD KEY `id_user` (`id`),
  ADD KEY `id_game` (`id_game`);

--
-- Indexes for table `playgames`
--
ALTER TABLE `playgames`
  ADD PRIMARY KEY (`id_game`);

--
-- Indexes for table `publisher`
--
ALTER TABLE `publisher`
  ADD PRIMARY KEY (`id_publisher`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_token`
--
ALTER TABLE `user_token`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(64) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `game`
--
ALTER TABLE `game`
  MODIFY `id_game` int(64) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `keranjang`
--
ALTER TABLE `keranjang`
  MODIFY `id_keranjang` int(64) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id_pembayaran` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1121;

--
-- AUTO_INCREMENT for table `playgames`
--
ALTER TABLE `playgames`
  MODIFY `id_game` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `publisher`
--
ALTER TABLE `publisher`
  MODIFY `id_publisher` int(64) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(64) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `user_token`
--
ALTER TABLE `user_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
