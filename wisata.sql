-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 10 Bulan Mei 2020 pada 11.35
-- Versi server: 10.4.10-MariaDB
-- Versi PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wisata`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `destinasi_wisata`
--

CREATE TABLE `destinasi_wisata` (
  `id_destinasi_wisata` bigint(20) UNSIGNED NOT NULL,
  `nama_destinasi_wisata` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `kategori` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `destinasi_wisata`
--

INSERT INTO `destinasi_wisata` (`id_destinasi_wisata`, `nama_destinasi_wisata`, `deskripsi`, `kategori`, `created_at`, `updated_at`) VALUES
(1, 'Spot Sunrise ( Penanjakan 1/Bukit Kingkong/Bukit Cinta )', '<p>Spot Sunrise ( Penanjakan 1/Bukit Kingkong/Bukit Cinta )<br></p>', 'pemandangan', '2020-02-29 17:01:16', '2020-03-03 20:06:26'),
(2, 'Blok Widodaren / Widodaren Valley', '<p><span style=\"font-family: Roboto, sans-serif; font-size: 14px;\">Blok Widodaren / Widodaren Valley</span><br></p>', 'alam', '2020-03-03 20:06:45', '2020-03-03 20:06:45'),
(3, 'Kawah Bromo', '<p><span style=\"font-family: Roboto, sans-serif; font-size: 14px;\">Kawah Bromo</span><br></p>', 'laut', '2020-03-03 20:07:02', '2020-03-03 20:07:02'),
(4, 'Pura Luhur Poten', '<p><span style=\"font-family: Roboto, sans-serif; font-size: 14px;\">Pura Luhur Poten</span><br></p>', 'alam', '2020-03-03 20:07:18', '2020-03-03 20:07:18'),
(5, 'Pasir Berbisik', '<p><span style=\"font-family: Roboto, sans-serif; font-size: 14px;\">Pasir Berbisik</span><br></p>', 'laut', '2020-03-03 20:07:31', '2020-03-03 20:07:31'),
(6, 'Savana Bukit Teletubies', '<p><span style=\"font-family: Roboto, sans-serif; font-size: 14px;\">Savana Bukit Teletubies</span><br></p>', 'pemandangan', '2020-03-03 20:07:51', '2020-03-03 20:07:51'),
(7, 'Wisata Edukasi Petik Apel', '<p><span style=\"font-family: Roboto, sans-serif; font-size: 14px;\">Wisata Edukasi Petik Apel</span><br></p>', 'candi', '2020-03-03 21:43:13', '2020-03-03 21:43:13'),
(8, 'Taman Bunga Selecta', '<p><span style=\"font-family: Roboto, sans-serif; font-size: 14px;\">Taman Bunga Selecta</span><br></p>', 'candi', '2020-03-03 21:43:32', '2020-03-03 21:43:32'),
(9, 'Air Terjun Coban Rondo dan Taman Labirin', '<p><span style=\"font-family: Roboto, sans-serif; font-size: 14px;\">Air Terjun Coban Rondo dan Taman Labirin</span><br></p>', 'candi', '2020-03-03 21:43:45', '2020-03-03 21:43:45'),
(10, 'Museum Angkut Movie Star dan Pasar Apung', '<p><span style=\"font-family: Roboto, sans-serif; font-size: 14px;\">Museum Angkut Movie Star dan Pasar Apung</span><br></p>', 'candi', '2020-03-03 21:43:57', '2020-03-03 21:43:57'),
(11, 'Wisata Oleh - oleh khas Malang Batu', '<p><span style=\"font-family: Roboto, sans-serif; font-size: 14px;\">Wisata Oleh - oleh khas Malang Batu</span><br></p>', 'kuliner', '2020-03-03 21:44:17', '2020-03-03 21:44:17'),
(12, 'Kuliner Bakso President, makanan khas Malang', '<p><span style=\"font-family: Roboto, sans-serif; font-size: 14px;\">Kuliner Bakso President, makanan khas Malang</span><br></p>', 'kuliner', '2020-03-03 21:44:29', '2020-03-03 21:44:29'),
(13, 'Malang surabaya ddd', '<p>dxgx</p>', 'alam', '2020-04-29 17:54:21', '2020-04-29 17:54:21');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `fasilitas_trip`
--

CREATE TABLE `fasilitas_trip` (
  `id_fasilitas_trip` bigint(20) UNSIGNED NOT NULL,
  `id_tour` bigint(20) UNSIGNED NOT NULL,
  `deskripsi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `fasilitas_trip`
--

INSERT INTO `fasilitas_trip` (`id_fasilitas_trip`, `id_tour`, `deskripsi`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Transport dari Meeting Point – Bromo PP (Avanza / Luxio)', 'Harga Termasuk', '2020-03-03 20:12:51', '2020-03-03 20:12:51'),
(2, 1, 'Jeep 4x4 selama Explore di Bromo', 'Harga Termasuk', '2020-03-03 20:13:05', '2020-03-03 20:13:05'),
(3, 1, 'Driver, BBM & Parkir Tol', 'Harga Termasuk', '2020-03-03 20:13:26', '2020-03-03 20:13:26'),
(4, 1, 'Tiket entrance kawasan Bromo', 'Harga Termasuk', '2020-03-03 21:11:18', '2020-03-03 21:11:18'),
(5, 1, 'Makan Prasmanan setelah dari Bromo', 'Harga Termasuk', '2020-03-03 21:11:32', '2020-03-03 21:11:32'),
(6, 1, 'Air Mineral & Masker', 'Harga Termasuk', '2020-03-03 21:11:41', '2020-03-03 21:11:41'),
(7, 1, 'Driver Jeep as Guide', 'Harga Termasuk', '2020-03-03 21:11:53', '2020-03-03 21:11:53'),
(8, 1, 'P3K Ringan', 'Harga Termasuk', '2020-03-03 21:12:03', '2020-03-03 21:12:03'),
(9, 1, 'Asuransi Taman Nasional', 'Harga Termasuk', '2020-03-03 21:12:19', '2020-03-03 21:12:19'),
(10, 1, 'Sewa Jaket', 'Harga Tidak Termasuk', '2020-03-03 21:12:34', '2020-03-03 21:12:34'),
(11, 1, 'Coffee Morning', 'Harga Tidak Termasuk', '2020-03-03 21:12:48', '2020-03-03 21:12:48'),
(12, 1, 'Dokumentasi', 'Harga Tidak Termasuk', '2020-03-03 21:12:57', '2020-03-03 21:12:57'),
(13, 2, 'Transport Selama Perjalanan (Innova/Hiace)', 'Harga Termasuk', '2020-03-03 21:31:30', '2020-03-03 21:31:30'),
(14, 2, 'Private Jeep Bromo 4x4 selama Tour Bromo', 'Harga Termasuk', '2020-03-03 21:31:39', '2020-03-03 21:31:39'),
(15, 2, 'Tiket masuk kawasan Bromo', 'Harga Termasuk', '2020-03-03 21:31:46', '2020-03-03 21:31:46'),
(16, 2, 'Makan Siang Setelah Tour Bromo', 'Harga Termasuk', '2020-03-03 21:31:53', '2020-03-03 21:31:53'),
(17, 2, 'Sarung Tangan dan Kupluk', 'Harga Termasuk', '2020-03-03 21:32:00', '2020-03-03 21:32:00'),
(18, 2, 'Breakfast Panorama Bromo', 'Harga Termasuk', '2020-03-03 21:32:07', '2020-03-03 21:32:07'),
(19, 2, 'Air Mineral & Masker Perlindungan Debu', 'Harga Termasuk', '2020-03-03 21:32:17', '2020-03-03 21:32:17'),
(20, 2, 'Driver Jeep as Guide Local Bromo', 'Harga Termasuk', '2020-03-03 21:32:27', '2020-03-03 21:32:27'),
(21, 2, 'Sewa Jaket dan Kuda di Bromo', 'Harga Tidak Termasuk', '2020-03-03 21:32:37', '2020-03-03 21:32:37'),
(22, 3, 'Transport Selama Perjalanan', 'Harga Termasuk', '2020-03-03 21:47:52', '2020-03-03 21:47:52'),
(23, 3, 'Tiket all entrance kawasan wisata', 'Harga Termasuk', '2020-03-03 21:48:05', '2020-03-03 21:48:05'),
(24, 3, 'Akomodasi 1 Malam', 'Harga Termasuk', '2020-03-03 21:48:14', '2020-03-03 21:48:14'),
(25, 3, 'Makan selama tour Sesuai Jadwal', 'Harga Termasuk', '2020-03-03 21:48:21', '2020-03-03 21:48:21'),
(26, 3, 'Welcome Snack, Air Mineral & Masker', 'Harga Termasuk', '2020-03-03 21:48:29', '2020-03-03 21:48:29'),
(27, 3, 'Driver as Guide', 'Harga Termasuk', '2020-03-03 21:48:35', '2020-03-03 21:48:35'),
(28, 3, 'BBM, Parkir & Tol', 'Harga Termasuk', '2020-03-03 21:48:40', '2020-03-03 21:48:40'),
(29, 3, 'P3K Ringan', 'Harga Termasuk', '2020-03-03 21:48:48', '2020-03-03 21:48:48'),
(30, 3, 'Asuransi Perjalanan Wisata', 'Harga Termasuk', '2020-03-03 21:48:55', '2020-03-03 21:48:55'),
(31, 3, 'Sewa Jaket dan Kuda saat di Bromo', 'Harga Tidak Termasuk', '2020-03-03 21:49:04', '2020-03-03 21:49:04'),
(32, 3, 'Tiket Pulang dan Pergi', 'Harga Tidak Termasuk', '2020-03-03 21:49:12', '2020-03-03 21:49:12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `galeri`
--

CREATE TABLE `galeri` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `foto` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_destinasi_wisata` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `galeri`
--

INSERT INTO `galeri` (`id`, `foto`, `id_destinasi_wisata`, `created_at`, `updated_at`) VALUES
(2, '1588160170cc_.jpg', 1, '2020-04-29 04:36:10', '2020-04-29 04:36:10'),
(3, '1588160237cc_.jpg', 1, '2020-04-29 04:37:17', '2020-04-29 04:37:17');

-- --------------------------------------------------------

--
-- Struktur dari tabel `harga_trip`
--

CREATE TABLE `harga_trip` (
  `id_harga_trip` bigint(20) UNSIGNED NOT NULL,
  `id_tour` bigint(20) UNSIGNED NOT NULL,
  `jumlah_peserta` int(11) NOT NULL,
  `harga` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `harga_trip`
--

INSERT INTO `harga_trip` (`id_harga_trip`, `id_tour`, `jumlah_peserta`, `harga`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '450000', '2020-03-03 20:11:44', '2020-03-03 20:11:44'),
(2, 1, 2, '350000', '2020-03-03 20:12:01', '2020-03-03 20:12:01'),
(3, 1, 3, '350000', '2020-03-03 20:12:25', '2020-03-03 20:12:25'),
(4, 2, 1, '1900000', '2020-03-03 21:30:17', '2020-03-03 21:30:17'),
(5, 2, 2, '980000', '2020-03-03 21:30:31', '2020-03-03 21:30:31'),
(6, 2, 3, '650000', '2020-03-03 21:30:45', '2020-03-03 21:30:45'),
(7, 2, 4, '480000', '2020-03-03 21:31:01', '2020-03-03 21:31:01'),
(8, 2, 5, '400000', '2020-03-03 21:31:10', '2020-03-03 21:31:10'),
(9, 3, 1, '4200000', '2020-03-03 21:46:14', '2020-03-03 21:46:14'),
(10, 3, 2, '2300000', '2020-03-03 21:46:28', '2020-03-03 21:46:28'),
(11, 3, 3, '1800000', '2020-03-03 21:46:48', '2020-03-03 21:46:48'),
(12, 3, 4, '1600000', '2020-03-03 21:47:07', '2020-03-03 21:47:07'),
(13, 4, 1, '20000', '2020-04-10 05:54:36', '2020-04-10 05:54:36'),
(14, 4, 2, '4545345', '2020-04-10 05:54:49', '2020-04-10 05:54:49');

-- --------------------------------------------------------

--
-- Struktur dari tabel `info_web`
--

CREATE TABLE `info_web` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_web` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telepon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `wa` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `deksripsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slogan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ig` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fb` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twet` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `utube` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
-- Kesalahan membaca data untuk tabel wisata.info_web: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `wisata`.`info_web`' at line 1

-- --------------------------------------------------------

--
-- Struktur dari tabel `info_wisata`
--

CREATE TABLE `info_wisata` (
  `id_info_wisata` bigint(20) UNSIGNED NOT NULL,
  `judul_info_wisata` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar_info_wisata` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `artikel_info_wisata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_editor` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `info_wisata`
--

INSERT INTO `info_wisata` (`id_info_wisata`, `judul_info_wisata`, `gambar_info_wisata`, `artikel_info_wisata`, `id_editor`, `created_at`, `updated_at`) VALUES
(2, 'Malang surabaya', '1588124615_.JPG', '<p>Kampung wisata merupakan bentuk integrasi antara atraksi, akomodasi, dan fasilitas pendukung yang disajikan dalam suatu struktur kehidupan masyarakat di mana terdapat sekelompok wisatawan yang dapat tinggal atau berdekatan dengan lingkungan tradisional tersebut untuk belajar mengenai kehidupan masyarakatnya. Berdasarkan ketiga bentuk integrasi tersebut, desa/kampung wisata dibagi menjadi 3 elemen desa/kampung wisata, yaitu elemen dasar (primary elements), elemen sekunder (secondary elements), dan elemen tambahan (additional elements) [1].</p><p>Perkembangan teknologi saat ini telah berkembang sangat pesat dan membawaperubahan yang sangat besar karena dengan teknologi tersebut informasi dapat didapat dengan cepat, akurat dan tidak terbatas oleh waktu dan tempat. Salah satu sektor yangberkembang dalam perkembangan teknologi adalah di bidang pariwisata yang memberikan andil untuk mendistribusikan informasi objek-objek wisata yang lebih interaktif khususnya melalui teknologi internet [2].</p><div><br></div>', 1, '2020-04-27 22:26:38', '2020-04-28 18:43:35'),
(4, 'bromo malang', '1588123973_.JPG', '<p>dxbd</p>', 1, '2020-04-28 18:32:53', '2020-04-28 18:32:53');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_02_18_062813_create_paket_wisatas_table', 1),
(5, '2020_02_21_023747_info_wisata', 1),
(6, '2020_02_21_033805_kategori', 1),
(7, '2020_02_21_053716_remove_id_kategori', 1),
(8, '2020_02_21_054046_delete_kategori_table', 1),
(9, '2020_02_21_054150_tag', 1),
(10, '2020_02_21_131810_relasi_tag_id_info_wisata', 1),
(11, '2020_02_21_133022_update_tag_relasi', 1),
(12, '2020_02_21_204503_tour_wisata', 1),
(13, '2020_02_21_205204_destinasi_wisata', 1),
(14, '2020_02_21_205604_harga_trip', 1),
(15, '2020_02_23_043613_remove_colomn_fasilitas_trip', 1),
(16, '2020_02_23_072339_paket_trip_destinasi_wisat', 1),
(17, '2020_02_23_095900_create_view_table_trip_paket', 1),
(18, '2020_02_24_104113_fasilitas_trip', 1),
(19, '2020_02_24_112559_jadwal_trip', 1),
(20, '2020_02_27_050748_tanggal_info_wisata', 2),
(21, '2020_02_29_234704_hapus__gambar', 3),
(24, '2020_03_04_024905_info', 4),
(26, '2020_03_22_103252_create_reservasi', 5),
(27, '2020_03_22_103755_create_reservasi_detail', 5),
(28, '2020_04_29_085855_create_galeri', 6);

-- --------------------------------------------------------

--
-- Struktur dari tabel `paket_trip_destinasi_wisata`
--

CREATE TABLE `paket_trip_destinasi_wisata` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_tour` bigint(20) UNSIGNED NOT NULL,
  `id_destinasi_wisata` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `paket_trip_destinasi_wisata`
--

INSERT INTO `paket_trip_destinasi_wisata` (`id`, `id_tour`, `id_destinasi_wisata`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2020-03-03 20:08:54', '2020-03-03 20:08:54'),
(2, 1, 2, '2020-03-03 20:08:54', '2020-03-03 20:08:54'),
(3, 1, 3, '2020-03-03 20:08:54', '2020-03-03 20:08:54'),
(4, 1, 4, '2020-03-03 20:08:54', '2020-03-03 20:08:54'),
(5, 1, 5, '2020-03-03 20:08:54', '2020-03-03 20:08:54'),
(6, 1, 6, '2020-03-03 20:08:54', '2020-03-03 20:08:54'),
(7, 2, 1, '2020-03-03 20:11:07', '2020-03-03 20:11:07'),
(8, 2, 2, '2020-03-03 20:11:07', '2020-03-03 20:11:07'),
(9, 2, 3, '2020-03-03 20:11:07', '2020-03-03 20:11:07'),
(10, 2, 4, '2020-03-03 20:11:07', '2020-03-03 20:11:07'),
(11, 2, 5, '2020-03-03 20:11:07', '2020-03-03 20:11:07'),
(12, 2, 6, '2020-03-03 20:11:07', '2020-03-03 20:11:07'),
(13, 3, 3, '2020-03-03 21:45:38', '2020-03-03 21:45:38'),
(14, 3, 7, '2020-03-03 21:45:39', '2020-03-03 21:45:39'),
(15, 3, 8, '2020-03-03 21:45:39', '2020-03-03 21:45:39'),
(16, 3, 9, '2020-03-03 21:45:39', '2020-03-03 21:45:39'),
(17, 3, 10, '2020-03-03 21:45:39', '2020-03-03 21:45:39'),
(18, 3, 11, '2020-03-03 21:45:39', '2020-03-03 21:45:39'),
(19, 3, 12, '2020-03-03 21:45:39', '2020-03-03 21:45:39'),
(27, 4, 3, '2020-04-10 05:53:10', '2020-04-10 05:53:10'),
(28, 4, 4, '2020-04-10 05:53:10', '2020-04-10 05:53:10'),
(29, 4, 5, '2020-04-10 05:53:10', '2020-04-10 05:53:10'),
(30, 4, 6, '2020-04-10 05:53:10', '2020-04-10 05:53:10'),
(31, 4, 7, '2020-04-10 05:53:10', '2020-04-10 05:53:10'),
(32, 4, 8, '2020-04-10 05:53:10', '2020-04-10 05:53:10'),
(33, 4, 9, '2020-04-10 05:53:10', '2020-04-10 05:53:10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `paket_wisata`
--

CREATE TABLE `paket_wisata` (
  `id_paket_wisata` bigint(20) UNSIGNED NOT NULL,
  `judul_paket_wisata` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi_paket_wisata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `paket_wisata`
--

INSERT INTO `paket_wisata` (`id_paket_wisata`, `judul_paket_wisata`, `deskripsi_paket_wisata`, `created_at`, `updated_at`) VALUES
(1, 'Paket 1D', 'Paket 1 Hari', '2020-03-02 17:54:11', '2020-03-02 17:54:11'),
(2, 'Paket 2D1N', 'Paket 2Hari 1 Malam', '2020-03-02 17:54:37', '2020-03-02 17:54:37');

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `reservasi`
--

CREATE TABLE `reservasi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_tour` bigint(20) UNSIGNED NOT NULL,
  `tgl_reservasi` date NOT NULL,
  `jml_peserta` int(11) NOT NULL,
  `total_harga` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat_penjemputan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `reservasi`
--

INSERT INTO `reservasi` (`id`, `id_tour`, `tgl_reservasi`, `jml_peserta`, `total_harga`, `status`, `alamat_penjemputan`, `id_user`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-03-31', 1, '450000', 'Proses Pembayaran', '', 2, '2020-03-31 08:19:30', '2020-03-31 08:19:30'),
(2, 1, '2020-04-12', 1, '450000', 'Proses Pembayaran', '', 1, '2020-04-09 05:38:14', '2020-04-09 05:38:14'),
(3, 1, '2020-04-18', 1, '450000', 'Proses Pembayaran', '', 2, '2020-04-14 17:29:25', '2020-04-14 17:29:25'),
(4, 1, '2020-04-18', 1, '450000', 'Proses Pembayaran', '', 2, '2020-04-14 17:29:29', '2020-04-14 17:29:29'),
(5, 1, '2020-04-18', 1, '450000', 'Proses Pembayaran', '', 2, '2020-04-14 17:41:10', '2020-04-14 17:41:10'),
(6, 1, '2020-04-18', 1, '450000', 'Proses Pembayaran', '', 2, '2020-04-14 17:41:13', '2020-04-14 17:41:13'),
(7, 1, '2020-04-18', 1, '450000', 'Proses Pembayaran', '', 2, '2020-04-14 17:51:26', '2020-04-14 17:51:26'),
(8, 1, '2020-04-18', 1, '450000', 'Proses Pembayaran', '', 2, '2020-04-14 17:51:38', '2020-04-14 17:51:38'),
(10, 1, '2020-04-18', 1, '450000', 'Proses Pembayaran', '', 2, '2020-04-14 17:59:25', '2020-04-14 17:59:25'),
(11, 1, '2020-04-18', 1, '450000', 'Proses Pembayaran', '', 2, '2020-04-14 18:01:22', '2020-04-14 18:01:22'),
(12, 3, '2020-04-18', 1, '4200000', 'Proses Pembayaran', '', 2, '2020-04-14 18:02:24', '2020-04-14 18:02:24'),
(13, 1, '2020-04-19', 2, '700000', 'Proses Pembayaran', '', 2, '2020-04-15 20:41:01', '2020-04-15 20:41:01'),
(14, 1, '2020-05-03', 1, '450000', 'Proses Pembayaran', '', 2, '2020-04-29 20:51:36', '2020-04-29 20:51:36');

-- --------------------------------------------------------

--
-- Struktur dari tabel `reservasi_detail`
--

CREATE TABLE `reservasi_detail` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_reservasi` bigint(20) UNSIGNED NOT NULL,
  `noktp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `nohp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `reservasi_detail`
--

INSERT INTO `reservasi_detail` (`id`, `id_reservasi`, `noktp`, `nama`, `alamat`, `nohp`, `created_at`, `updated_at`) VALUES
(1, 11, '214124', 'asfasfa', 'asfasf', '421412', '2020-04-14 18:01:22', '2020-04-14 18:01:22'),
(2, 12, '241414', 'safasfas', 'asfafas', '4112412', '2020-04-14 18:02:24', '2020-04-14 18:02:24'),
(3, 13, '212124', 'dasdasfa', 'asfasfasf', '525252', '2020-04-15 20:41:01', '2020-04-15 20:41:01'),
(4, 13, '52352523', 'fsafasfas', 'sfafasfasf', '3242342523', '2020-04-15 20:41:01', '2020-04-15 20:41:01'),
(5, 14, '121244243242', 'dsfsf', 'sdadas', '24212', '2020-04-29 20:51:36', '2020-04-29 20:51:36');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tag`
--

CREATE TABLE `tag` (
  `id_tag` bigint(20) UNSIGNED NOT NULL,
  `nama_tag` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idinfowisata` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `trip_paket`
--

CREATE TABLE `trip_paket` (
  `id_tour` bigint(20) UNSIGNED NOT NULL,
  `id_paket` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `jadwal_trip` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sifat_trip` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `meeting_point` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `termcondition` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `jadwal_perjalanan` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `trip_paket`
--

INSERT INTO `trip_paket` (`id_tour`, `id_paket`, `judul`, `deskripsi`, `jadwal_trip`, `sifat_trip`, `meeting_point`, `termcondition`, `created_at`, `updated_at`, `jadwal_perjalanan`) VALUES
(1, 1, 'Paket Tour Bromo Sunrise', '<p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-family: Roboto, sans-serif; font-size: 14px; text-align: justify;\">Pilih&nbsp;Paket Tour Bromo Malang Batu / Paket Wisata Malang Batu / Paket Liburan Keluarga di Bromo Malang dan Batu&nbsp;sesuai dengan renacana dan keinginan anda.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-family: Roboto, sans-serif; font-size: 14px; text-align: justify;\">Kami menyediakan&nbsp;<a href=\"http://jendela-wisata.com/tour-bromo-sunrise/\" style=\"color: rgb(66, 139, 202);\">paket wisata bromo</a>&nbsp;dengan tempat wisata terlengkap di&nbsp;Bromo Malang Batu&nbsp;dan tentunya berpengalaman dalam melayani anda ketika liburan di&nbsp;Bromo Malang dan Batu. Kalian ingin liburan di&nbsp;Bromo Malang dan Batu? Jangan bingung, kami mempunya solusi dengan memberikan&nbsp;Paket&nbsp;<a href=\"http://jendela-wisata.com/tour-bromo-sunrise/\" style=\"color: rgb(66, 139, 202);\">Tour Bromo</a>&nbsp;Malang Batu&nbsp;/&nbsp;Paket Wisata Malang Bromo Batu. Dengan pengalaman kami selama melayani&nbsp;Paket Tour Bromo Malang Batu&nbsp;/&nbsp;<a href=\"http://jendela-wisata.com/\" style=\"color: rgb(66, 139, 202);\">Paket Wisata Malang</a>&nbsp;Batu dan Bromo, kami yakin anda akan sangat puas ketika bergabung atau memilih kami sebagai teman liburan anda selama di&nbsp;Bromo Malang dan Batu.</p>', 'Penentuan waktu bebas', 'Private dan tidak digabung dengan peserta lainnya', 'Malang', '<p><span style=\"font-family: Roboto, sans-serif; font-size: 14px;\">- Tanda jadi trip peserta&nbsp;</span><strong style=\"font-weight: bold; font-family: Roboto, sans-serif; font-size: 14px;\">Tour Bromo Sunrise</strong><span style=\"font-family: Roboto, sans-serif; font-size: 14px;\">&nbsp;diwajibkan&nbsp;melakukan transfer&nbsp;</span><strong style=\"font-weight: bold; font-family: Roboto, sans-serif; font-size: 14px;\">Down Payment</strong><span style=\"font-family: Roboto, sans-serif; font-size: 14px;\">&nbsp;minimal sebesar&nbsp;</span><strong style=\"font-weight: bold; font-family: Roboto, sans-serif; font-size: 14px;\">30%</strong><span style=\"font-family: Roboto, sans-serif; font-size: 14px;\">&nbsp;dari total keseluruhan dan sisa pembayaran dilakukan saat penjemputan peserta Tour Bromo Sunrise</span><br style=\"font-family: Roboto, sans-serif; font-size: 14px;\"><span style=\"font-family: Roboto, sans-serif; font-size: 14px;\">- Setelah melakukan trasnfer, peserta Tour Bromo Sunrise diminta untuk mengirimkan bukti trasnfer, data peserta, alamat email dan alamat jemput sebagai konfirmasi kepada pihak kami atas tanda jadi trip</span><br style=\"font-family: Roboto, sans-serif; font-size: 14px;\"><span style=\"font-family: Roboto, sans-serif; font-size: 14px;\">- Apabila destinasi tujuan Tour Bromo Sunrise tidak memungkinkan untuk dikunjungi karena bencana, cuaca yang tidak mendukung, penutupan tempat wisata, atau sebab lain di luar kendali kami, maka peserta tidak berhak meminta kompensasi atau pengembalian biaya yang telah dibayarkan dan diadakan musyawarah mufakat antara pihak Travel dan Peserta&nbsp;</span><a href=\"http://jendela-wisata.com/tour-bromo-sunrise/\" style=\"background-color: rgb(255, 255, 255); color: rgb(66, 139, 202); font-family: Roboto, sans-serif; font-size: 14px;\">Tour Bromo</a><span style=\"font-family: Roboto, sans-serif; font-size: 14px;\">&nbsp;Sunrise</span><br style=\"font-family: Roboto, sans-serif; font-size: 14px;\"><span style=\"font-family: Roboto, sans-serif; font-size: 14px;\">- Jika terjadi force majeur oleh pihak kami, DP kami kembalikan sepenuhnya</span><br style=\"font-family: Roboto, sans-serif; font-size: 14px;\"><span style=\"font-family: Roboto, sans-serif; font-size: 14px;\">- Jika terjadi Force Majeur yang disebabkan peserta Tour Bromo Sunrise (ketinggalan kereta, pesawat dan lainnya), peserta dianggap cancel trip dan pembayaran yang sudah dibayarkan hangus</span><br style=\"font-family: Roboto, sans-serif; font-size: 14px;\"><span style=\"font-family: Roboto, sans-serif; font-size: 14px;\">- Reschedule Tanggal Trip&nbsp;Bromo hanya bisa dilakukan minimal&nbsp;</span><strong style=\"font-weight: bold; font-family: Roboto, sans-serif; font-size: 14px;\">H-10</strong><span style=\"font-family: Roboto, sans-serif; font-size: 14px;\">&nbsp;dari tanggal keberangakatan</span><br style=\"font-family: Roboto, sans-serif; font-size: 14px;\"><span style=\"font-family: Roboto, sans-serif; font-size: 14px;\">-&nbsp;</span><strong style=\"font-weight: bold; font-family: Roboto, sans-serif; font-size: 14px;\">Cancel trip</strong><span style=\"font-family: Roboto, sans-serif; font-size: 14px;\">&nbsp;oleh peserta sebelum&nbsp;</span><strong style=\"font-weight: bold; font-family: Roboto, sans-serif; font-size: 14px;\">H-5</strong><span style=\"font-family: Roboto, sans-serif; font-size: 14px;\">, kami melakukan refund sebesar&nbsp;</span><strong style=\"font-weight: bold; font-family: Roboto, sans-serif; font-size: 14px;\">60%</strong><span style=\"font-family: Roboto, sans-serif; font-size: 14px;\">&nbsp;dari semua yang telah dibayarkan</span><br style=\"font-family: Roboto, sans-serif; font-size: 14px;\"><span style=\"font-family: Roboto, sans-serif; font-size: 14px;\">-&nbsp;</span><strong style=\"font-weight: bold; font-family: Roboto, sans-serif; font-size: 14px;\">Cancel trip</strong><span style=\"font-family: Roboto, sans-serif; font-size: 14px;\">&nbsp;oleh peserta lebih dari&nbsp;</span><strong style=\"font-weight: bold; font-family: Roboto, sans-serif; font-size: 14px;\">H-5</strong><span style=\"font-family: Roboto, sans-serif; font-size: 14px;\">, semua yang sudah dibayarkan menjadi hak kami (semua DP hangus)</span><br style=\"font-family: Roboto, sans-serif; font-size: 14px;\"><span style=\"font-family: Roboto, sans-serif; font-size: 14px;\">-&nbsp;</span><strong style=\"font-weight: bold; font-family: Roboto, sans-serif; font-size: 14px;\">Anak usia 5 th</strong><span style=\"font-family: Roboto, sans-serif; font-size: 14px;\">&nbsp;keatas kami kenakan biaya penuh</span><br style=\"font-family: Roboto, sans-serif; font-size: 14px;\"><span style=\"font-family: Roboto, sans-serif; font-size: 14px;\">- Kami baru akan memasukkan sebagai list peserta Tour Bromo Sunrise apabila sudah melakukan pembayaran DP</span><br style=\"font-family: Roboto, sans-serif; font-size: 14px;\"><span style=\"font-family: Roboto, sans-serif; font-size: 14px;\">- Untuk Down Payment dapat dibayarkan ke Rekening dibawah ini :</span><br></p>', '2020-03-03 20:08:54', '2020-03-03 20:08:54', NULL),
(2, 1, 'Open Trip Bromo', '<div class=\"fl-module fl-module-rich-text fl-node-58c1acece614e\" data-node=\"58c1acece614e\" data-animation-delay=\"0.0\" style=\"zoom: 1; font-family: Roboto, sans-serif; font-size: 14px;\"><div class=\"fl-module-content fl-node-content\" style=\"zoom: 1; margin: 0px 10px;\"><div class=\"fl-rich-text\"><h4 style=\"font-family: Roboto, sans-serif; line-height: 1.4; color: rgb(51, 51, 51); margin-top: 10px; margin-bottom: 10px; font-size: 18px;\"><span style=\"font-size: 20px;\"><strong style=\"font-weight: bold;\">Open Trip Bromo</strong></span></h4></div></div></div><div class=\"fl-module fl-module-rich-text fl-node-58c1acece5f7f\" data-node=\"58c1acece5f7f\" data-animation-delay=\"20\" style=\"zoom: 1; font-family: Roboto, sans-serif; font-size: 14px;\"><div class=\"fl-module-content fl-node-content\" style=\"zoom: 1; margin: 0px 10px;\"><div class=\"fl-rich-text\"><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; text-align: justify;\"><a href=\"http://jendela-wisata.com/open-trip-bromo/\" style=\"color: rgb(66, 139, 202);\">Open Trip Bromo</a>&nbsp;- Pilih&nbsp;Paket Tour Bromo Malang Batu /&nbsp;<a href=\"http://jendela-wisata.com/\" style=\"color: rgb(66, 139, 202);\">Paket Wisata Malang</a>&nbsp;Batu / Paket Liburan Keluarga di Bromo Malang dan Batu&nbsp;sesuai dengan rencana dan keinginan anda. Kami menyediakan paket wisata dengan tempat wisata terlengkap di&nbsp;Bromo Malang Batu&nbsp;dan tentunya berpengalaman dalam melayani anda ketika liburan di&nbsp;Bromo Malang dan Batu.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; text-align: justify;\">Kalian ingin liburan di&nbsp;Bromo Malang dan Batu&nbsp;? Jangan bingung, kami mempunya solusi dengan memberikan&nbsp;<a href=\"http://jendela-wisata.com/\" style=\"color: rgb(66, 139, 202);\">Paket Tour Bromo Malang</a>&nbsp;Batu&nbsp;/&nbsp;Paket Wisata Malang Bromo Batu. Dengan pengalaman kami selama melayani&nbsp;Paket Tour Bromo Malang Batu&nbsp;/&nbsp;Paket Wisata Malang Batu dan Bromo, kami yakin anda akan sangat puas ketika bergabung atau memilih kami sebagai teman liburan anda selama di&nbsp;Bromo Malang dan Batu.</p></div></div></div>', 'Penentuan waktu ditentukan', 'Digabung dengan peserta lainnya', 'Malang', '<p><span style=\"font-family: Roboto, sans-serif; font-size: 14px;\">- Tanda jadi trip peserta diharapkan melakukan transfer&nbsp;</span><strong style=\"font-weight: bold; font-family: Roboto, sans-serif; font-size: 14px;\">Down Payment</strong><span style=\"font-family: Roboto, sans-serif; font-size: 14px;\">&nbsp;sebesar&nbsp;</span><strong style=\"font-weight: bold; font-family: Roboto, sans-serif; font-size: 14px;\">50%</strong><span style=\"font-family: Roboto, sans-serif; font-size: 14px;\">&nbsp;dari total keseluruhan dan sisa pembayaran dilakukan saat penjemputan peserta</span><br style=\"font-family: Roboto, sans-serif; font-size: 14px;\"><span style=\"font-family: Roboto, sans-serif; font-size: 14px;\">- Setelah melakukan trasnfer, peserta trip diminta untuk mengirimkan bukti trasnfer, data peserta, alamat email dan alamat jemput sebagai konfirmasi kepada pihak kami atas tanda jadi trip</span><br style=\"font-family: Roboto, sans-serif; font-size: 14px;\"><span style=\"font-family: Roboto, sans-serif; font-size: 14px;\">- Apabila destinasi tujuan tidak memungkinkan untuk dikunjungi karena bencana, cuaca yang tidak mendukung, penutupan tempat wisata, atau sebab lain di luar kendali kami, maka peserta tidak berhak meminta kompensasi atau pengembalian biaya yang telah dibayarkan dan diadakan musyawarah mufakat</span><br style=\"font-family: Roboto, sans-serif; font-size: 14px;\"><span style=\"font-family: Roboto, sans-serif; font-size: 14px;\">- Jika terjadi force majeur oleh pihak kami, DP kami kembalikan sepenuhnya</span><br style=\"font-family: Roboto, sans-serif; font-size: 14px;\"><span style=\"font-family: Roboto, sans-serif; font-size: 14px;\">- Jika terjadi Force Majeur yang disebabkan peserta (ketinggalan kereta, pesawat dan lainnya), peserta dianggap cancel trip dan pembayaran yang sudah dibayarkan hangus</span><br style=\"font-family: Roboto, sans-serif; font-size: 14px;\"><span style=\"font-family: Roboto, sans-serif; font-size: 14px;\">- Kami tidak melayani Reschedule Tanggal Trip</span><br style=\"font-family: Roboto, sans-serif; font-size: 14px;\"><span style=\"font-family: Roboto, sans-serif; font-size: 14px;\">-&nbsp;</span><strong style=\"font-weight: bold; font-family: Roboto, sans-serif; font-size: 14px;\">Cancel trip</strong><span style=\"font-family: Roboto, sans-serif; font-size: 14px;\">&nbsp;oleh peserta sebelum&nbsp;</span><strong style=\"font-weight: bold; font-family: Roboto, sans-serif; font-size: 14px;\">H-5</strong><span style=\"font-family: Roboto, sans-serif; font-size: 14px;\">, kami melakukan refund sebesar&nbsp;</span><strong style=\"font-weight: bold; font-family: Roboto, sans-serif; font-size: 14px;\">20%</strong><span style=\"font-family: Roboto, sans-serif; font-size: 14px;\">&nbsp;dari semua yang telah dibayarkan</span><br style=\"font-family: Roboto, sans-serif; font-size: 14px;\"><span style=\"font-family: Roboto, sans-serif; font-size: 14px;\">-&nbsp;</span><strong style=\"font-weight: bold; font-family: Roboto, sans-serif; font-size: 14px;\">Cancel trip</strong><span style=\"font-family: Roboto, sans-serif; font-size: 14px;\">&nbsp;oleh peserta lebih dari&nbsp;</span><strong style=\"font-weight: bold; font-family: Roboto, sans-serif; font-size: 14px;\">H-5</strong><span style=\"font-family: Roboto, sans-serif; font-size: 14px;\">, semua yang sudah dibayarkan menjadi hak kami (semua DP hangus)</span><br style=\"font-family: Roboto, sans-serif; font-size: 14px;\"><span style=\"font-family: Roboto, sans-serif; font-size: 14px;\">-&nbsp;</span><strong style=\"font-weight: bold; font-family: Roboto, sans-serif; font-size: 14px;\">Anak usia 2 th</strong><span style=\"font-family: Roboto, sans-serif; font-size: 14px;\">&nbsp;keatas kami kenakan biaya penuh</span><br style=\"font-family: Roboto, sans-serif; font-size: 14px;\"><span style=\"font-family: Roboto, sans-serif; font-size: 14px;\">- Kami baru akan memasukkan sebagai list peserta apbila sudah melakukan pembayaran DP</span><br style=\"font-family: Roboto, sans-serif; font-size: 14px;\"><span style=\"font-family: Roboto, sans-serif; font-size: 14px;\">- Untuk Down Payment dapat dibayarkan ke Rekening dibawah ini :</span><br></p>', '2020-03-03 20:11:07', '2020-03-03 20:11:07', NULL),
(3, 2, 'Pake Tour Bromo & Kota Batu', '<p><span style=\"font-family: Roboto, sans-serif; font-size: 14px; text-align: justify;\">Pilih&nbsp;Paket Tour Bromo Malang Batu / Paket Wisata Malang Batu / Paket Liburan Keluarga di Bromo Malang dan Batu&nbsp;sesuai dengan renacana dan keinginan anda. Kami menyediakan paket wisata dengan tempat wisata terlengkap di&nbsp;Bromo Malang Batu&nbsp;dan tentunya berpengalaman dalam melayani anda ketika liburan di&nbsp;Bromo Malang dan Batu. Kalian ingin liburan di&nbsp;Bromo Malang dan Batu&nbsp;? Jangan bingung, kami mempunya solusi dengan memberikan&nbsp;Peket Tour Bromo Malang Batu&nbsp;/&nbsp;Paket Wisata Malang Bromo Batu. Dengan pengalaman kami selama melayani&nbsp;Paket Tour Bromo Malang Batu&nbsp;/&nbsp;Paket Wisata Malang Batu dan Bromo, kami yakin anda akan sangat puas ketika bergabung atau memilih kami sebagai teman liburan anda selama di&nbsp;Bromo Malang dan Batu.</span><br></p>', 'Penentuan waktu bebas', 'Private dan tidak digabung dengan peserta lainnya', 'Malang', '<p><span style=\"font-family: Roboto, sans-serif; font-size: 14px;\">- Tanda jadi trip peserta diharapkan melakukan transfer&nbsp;</span><strong style=\"font-weight: bold; font-family: Roboto, sans-serif; font-size: 14px;\">Down Payment&nbsp;</strong><span style=\"font-family: Roboto, sans-serif; font-size: 14px;\">minimal sebesar&nbsp;</span><strong style=\"font-weight: bold; font-family: Roboto, sans-serif; font-size: 14px;\">30%</strong><span style=\"font-family: Roboto, sans-serif; font-size: 14px;\">&nbsp;dari total keseluruhan dan sisa pembayaran dilakukan saat penjemputan peserta</span><br style=\"font-family: Roboto, sans-serif; font-size: 14px;\"><span style=\"font-family: Roboto, sans-serif; font-size: 14px;\">- Setelah melakukan trasnfer, peserta trip diminta untuk mengirimkan bukti trasnfer, data peserta, alamat email dan alamat jemput sebagai konfirmasi kepada pihak kami atas tanda jadi trip</span><br style=\"font-family: Roboto, sans-serif; font-size: 14px;\"><span style=\"font-family: Roboto, sans-serif; font-size: 14px;\">- Apabila destinasi tujuan tidak memungkinkan untuk dikunjungi karena bencana, cuaca yang tidak mendukung, penutupan tempat wisata, atau sebab lain di luar kendali kami, maka peserta tidak berhak meminta kompensasi atau pengembalian biaya yang telah dibayarkan dan diadakan musyawarah mufakat</span><br style=\"font-family: Roboto, sans-serif; font-size: 14px;\"><span style=\"font-family: Roboto, sans-serif; font-size: 14px;\">- Jika terjadi force majeur oleh pihak kami, DP kami kembalikan sepenuhnya</span><br style=\"font-family: Roboto, sans-serif; font-size: 14px;\"><span style=\"font-family: Roboto, sans-serif; font-size: 14px;\">- Jika terjadi Force Majeur yang disebabkan peserta (ketinggalan kereta, pesawat dan lainnya), peserta dianggap cancel trip dan pembayaran yang sudah dibayarkan hangus</span><br style=\"font-family: Roboto, sans-serif; font-size: 14px;\"><span style=\"font-family: Roboto, sans-serif; font-size: 14px;\">- Kami tidak melayani Reschedule Tanggal Trip</span><br style=\"font-family: Roboto, sans-serif; font-size: 14px;\"><span style=\"font-family: Roboto, sans-serif; font-size: 14px;\">-&nbsp;</span><strong style=\"font-weight: bold; font-family: Roboto, sans-serif; font-size: 14px;\">Cancel trip</strong><span style=\"font-family: Roboto, sans-serif; font-size: 14px;\">&nbsp;oleh peserta sebelum&nbsp;</span><strong style=\"font-weight: bold; font-family: Roboto, sans-serif; font-size: 14px;\">H-5</strong><span style=\"font-family: Roboto, sans-serif; font-size: 14px;\">, kami melakukan refund sebesar&nbsp;</span><strong style=\"font-weight: bold; font-family: Roboto, sans-serif; font-size: 14px;\">20%</strong><span style=\"font-family: Roboto, sans-serif; font-size: 14px;\">&nbsp;dari semua yang telah dibayarkan</span><br style=\"font-family: Roboto, sans-serif; font-size: 14px;\"><span style=\"font-family: Roboto, sans-serif; font-size: 14px;\">-&nbsp;</span><strong style=\"font-weight: bold; font-family: Roboto, sans-serif; font-size: 14px;\">Cancel trip</strong><span style=\"font-family: Roboto, sans-serif; font-size: 14px;\">&nbsp;oleh peserta lebih dari&nbsp;</span><strong style=\"font-weight: bold; font-family: Roboto, sans-serif; font-size: 14px;\">H-5</strong><span style=\"font-family: Roboto, sans-serif; font-size: 14px;\">, semua yang sudah dibayarkan menjadi hak kami (semua DP hangus)</span><br style=\"font-family: Roboto, sans-serif; font-size: 14px;\"><span style=\"font-family: Roboto, sans-serif; font-size: 14px;\">- Anak&nbsp;</span><strong style=\"font-weight: bold; font-family: Roboto, sans-serif; font-size: 14px;\">usia 2 th</strong><span style=\"font-family: Roboto, sans-serif; font-size: 14px;\">&nbsp;keatas kami kenakan biaya penuh</span><br style=\"font-family: Roboto, sans-serif; font-size: 14px;\"><span style=\"font-family: Roboto, sans-serif; font-size: 14px;\">- Kami baru akan memasukkan sebagai list peserta apbila sudah melakukan pembayaran DP</span><br style=\"font-family: Roboto, sans-serif; font-size: 14px;\"><span style=\"font-family: Roboto, sans-serif; font-size: 14px;\">- Untuk Down Payment dapat dibayarkan ke Rekening dibawah ini :</span><br></p>', '2020-03-03 21:45:38', '2020-03-03 21:45:38', NULL),
(4, 1, 'Malang surabaya', '<p><span style=\"color: rgb(90, 101, 112); font-family: Roboto, sans-serif; font-size: 14px; text-align: justify;\">ami menyediakan&nbsp;</span><a href=\"http://jendela-wisata.com/tour-bromo-sunrise/\" style=\"color: rgb(66, 139, 202); background-color: rgb(255, 255, 255); font-family: Roboto, sans-serif; font-size: 14px; text-align: justify;\">paket wisata bromo</a><span style=\"color: rgb(90, 101, 112); font-family: Roboto, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;dengan tempat wisata terlengkap di&nbsp;Bromo Malang Batu&nbsp;dan tentunya berpengalaman dalam melayani anda ketika liburan di&nbsp;Bromo Malang dan Batu. Kalian ingin liburan di&nbsp;Bromo Malang dan Batu? Jangan bingung, kami mempunya solusi dengan memberikan&nbsp;Paket&nbsp;</span><a href=\"http://jendela-wisata.com/tour-bromo-sunrise/\" style=\"color: rgb(66, 139, 202); background-color: rgb(255, 255, 255); font-family: Roboto, sans-serif; font-size: 14px; text-align: justify;\">Tour Bromo</a><span style=\"color: rgb(90, 101, 112); font-family: Roboto, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;Malang Batu&nbsp;/&nbsp;Paket Wisata Malang Bromo Batu. Dengan pengalaman kami selama melayani&nbsp;Paket Tour Bromo Malang Batu&nbsp;/&nbsp;</span><a href=\"http://jendela-wisata.com/\" style=\"color: rgb(66, 139, 202); background-color: rgb(255, 255, 255); font-family: Roboto, sans-serif; font-size: 14px; text-align: justify;\">Paket Wisata Malang</a><span style=\"color: rgb(90, 101, 112); font-family: Roboto, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;Batu dan Bromo, kami yakin anda akan sangat puas ketik</span><br></p>', 'Penentuan waktu bebas', 'Private dan tidak digabung dengan peserta lainnya', 'Malang', '<span style=\"color: rgb(90, 101, 112); font-family: Roboto, sans-serif; font-size: 14px;\">peserta tidak berhak meminta kompensasi atau pengembalian biaya yang telah dibayarkan dan diadakan musyawarah mufakat antara pihak Travel dan Peserta&nbsp;</span><a href=\"http://jendela-wisata.com/tour-bromo-sunrise/\" style=\"color: rgb(66, 139, 202); background-color: rgb(255, 255, 255); font-family: Roboto, sans-serif; font-size: 14px;\">Tour Bromo</a><span style=\"color: rgb(90, 101, 112); font-family: Roboto, sans-serif; font-size: 14px;\">&nbsp;Sunrise</span><br style=\"color: rgb(90, 101, 112); font-family: Roboto, sans-serif; font-size: 14px;\"><span style=\"color: rgb(90, 101, 112); font-family: Roboto, sans-serif; font-size: 14px;\">- Jika terjadi force majeur oleh pihak kami, DP kami kembalikan sepenuhnya</span><br style=\"color: rgb(90, 101, 112); font-family: Roboto, sans-serif; font-size: 14px;\"><span style=\"color: rgb(90, 101, 112); font-family: Roboto, sans-serif; font-size: 14px;\">- Jika terjadi Force Majeur yang disebabkan peserta Tour Bromo Sunrise (ketinggalan kereta, pesawat dan lainnya), peserta dianggap cancel trip dan pembayaran yang sudah dibayarkan hangus</span><br style=\"color: rgb(90, 101, 112); font-family: Roboto, sans-serif; font-size: 14px;\"><span style=\"color: rgb(90, 101, 112); font-family: Roboto, sans-serif; font-size: 14px;\">- Reschedule Tanggal Trip&nbsp;Bromo hanya bisa dilakukan minimal&nbsp;</span><strong style=\"font-weight: bold; color: rgb(90, 101, 112); font-family: Roboto, sans-serif; font-size: 14px;\">H-10</strong><span style=\"color: rgb(90, 101, 112); font-family: Roboto, sans-serif; font-size: 14px;\">&nbsp;dari tanggal keberangakatan</span><br style=\"color: rgb(90, 101, 112); font-family: Roboto, sans-serif; font-size: 14px;\"><span style=\"color: rgb(90, 101, 112); font-family: Roboto, sans-serif; font-size: 14px;\">-&nbsp;</span><strong style=\"font-weight: bold; color: rgb(90, 101, 112); font-family: Roboto, sans-serif; font-size: 14px;\">Cancel trip</strong><span style=\"color: rgb(90, 101, 112); font-family: Roboto, sans-serif; font-size: 14px;\">&nbsp;oleh peserta sebelum&nbsp;</span><strong style=\"font-weight: bold; color: rgb(90, 101, 112); font-family: Roboto, sans-serif; font-size: 14px;\">H-5</strong><span style=\"color: rgb(90, 101, 112); font-family: Roboto, sans-serif; font-size: 14px;\">, kami melakukan refund sebesar&nbsp;</span><strong style=\"font-weight: bold; color: rgb(90, 101, 112); font-family: Roboto, sans-serif; font-size: 14px;\">60%</strong><span style=\"color: rgb(90, 101, 112); font-family: Roboto, sans-serif; font-size: 14px;\">&nbsp;dari semua yang telah dibayarkan</span><br style=\"color: rgb(90, 101, 112); font-family: Roboto, sans-serif; font-size: 14px;\"><span style=\"color: rgb(90, 101, 112); font-family: Roboto, sans-serif; font-size: 14px;\">-&nbsp;</span><strong style=\"font-weight: bold; color: rgb(90, 101, 112); font-family: Roboto, sans-serif; font-size: 14px;\">Cancel trip</strong><span style=\"color: rgb(90, 101, 112); font-family: Roboto, sans-serif; font-size: 14px;\">&nbsp;oleh peserta lebih dari&nbsp;</span><strong style=\"font-weight: bold; color: rgb(90, 101, 112); font-family: Roboto, sans-serif; font-size: 14px;\">H-5</strong><span style=\"color: rgb(90, 101, 112); font-family: Roboto, sans-serif; font-size: 14px;\">, semua yang sudah&nbsp;</span>', '2020-04-10 05:51:11', '2020-04-10 05:53:10', '<span style=\"color: rgb(90, 101, 112); font-family: Roboto, sans-serif; font-size: 14px;\">peserta tidak berhak meminta kompensasi atau pengembalian biaya yang telah dibayarkan dan diadakan musyawarah mufakat antara pihak Travel dan Peserta&nbsp;</span><a href=\"http://jendela-wisata.com/tour-bromo-sunrise/\" style=\"color: rgb(66, 139, 202); background-color: rgb(255, 255, 255); font-family: Roboto, sans-serif; font-size: 14px;\">Tour Bromo</a><span style=\"color: rgb(90, 101, 112); font-family: Roboto, sans-serif; font-size: 14px;\">&nbsp;Sunrise</span><br style=\"color: rgb(90, 101, 112); font-family: Roboto, sans-serif; font-size: 14px;\"><span style=\"color: rgb(90, 101, 112); font-family: Roboto, sans-serif; font-size: 14px;\">- Jika terjadi force majeur oleh pihak kami, DP kami kembalikan sepenuhnya</span><br style=\"color: rgb(90, 101, 112); font-family: Roboto, sans-serif; font-size: 14px;\"><span style=\"color: rgb(90, 101, 112); font-family: Roboto, sans-serif; font-size: 14px;\">- Jika terjadi Force Majeur yang disebabkan peserta Tour Bromo Sunrise (ketinggalan kereta, pesawat dan lainnya), peserta dianggap cancel trip dan pembayaran yang sudah dibayarkan hangus</span><br style=\"color: rgb(90, 101, 112); font-family: Roboto, sans-serif; font-size: 14px;\"><span style=\"color: rgb(90, 101, 112); font-family: Roboto, sans-serif; font-size: 14px;\">- Reschedule Tanggal Trip&nbsp;Bromo hanya bisa dilakukan minimal&nbsp;</span><strong style=\"font-weight: bold; color: rgb(90, 101, 112); font-family: Roboto, sans-serif; font-size: 14px;\">H-10</strong><span style=\"color: rgb(90, 101, 112); font-family: Roboto, sans-serif; font-size: 14px;\">&nbsp;dari tanggal keberangakatan</span><br style=\"color: rgb(90, 101, 112); font-family: Roboto, sans-serif; font-size: 14px;\"><span style=\"color: rgb(90, 101, 112); font-family: Roboto, sans-serif; font-size: 14px;\">-&nbsp;</span><strong style=\"font-weight: bold; color: rgb(90, 101, 112); font-family: Roboto, sans-serif; font-size: 14px;\">Cancel trip</strong><span style=\"color: rgb(90, 101, 112); font-family: Roboto, sans-serif; font-size: 14px;\">&nbsp;oleh peserta sebelum&nbsp;</span><strong style=\"font-weight: bold; color: rgb(90, 101, 112); font-family: Roboto, sans-serif; font-size: 14px;\">H-5</strong><span style=\"color: rgb(90, 101, 112); font-family: Roboto, sans-serif; font-size: 14px;\">, kami melakukan refund sebesar&nbsp;</span><strong style=\"font-weight: bold; color: rgb(90, 101, 112); font-family: Roboto, sans-serif; font-size: 14px;\">60%</strong><span style=\"color: rgb(90, 101, 112); font-family: Roboto, sans-serif; font-size: 14px;\">&nbsp;dari semua yang telah dibayarkan</span><br style=\"color: rgb(90, 101, 112); font-family: Roboto, sans-serif; font-size: 14px;\"><span style=\"color: rgb(90, 101, 112); font-family: Roboto, sans-serif; font-size: 14px;\">-&nbsp;</span><strong style=\"font-weight: bold; color: rgb(90, 101, 112); font-family: Roboto, sans-serif; font-size: 14px;\">Cancel trip</strong><span style=\"color: rgb(90, 101, 112); font-family: Roboto, sans-serif; font-size: 14px;\">&nbsp;oleh peserta lebih dari&nbsp;</span><strong style=\"font-weight: bold; color: rgb(90, 101, 112); font-family: Roboto, sans-serif; font-size: 14px;\">H-5</strong><span style=\"color: rgb(90, 101, 112); font-family: Roboto, sans-serif; font-size: 14px;\">, semua yang sudah&nbsp;</span>');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `role`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '$2y$10$0BFFK6UjSF4aczJw.S/YuukRdos1cXib76S.QHIwXjIPAAoBCtET6', NULL, '2020-02-26 20:58:15', '2020-02-26 20:58:15', 'admin'),
(2, 'cakpri', 'rizalffanani@gmail.com', NULL, '$2y$10$0BFFK6UjSF4aczJw.S/YuukRdos1cXib76S.QHIwXjIPAAoBCtET6', NULL, '2020-03-31 00:25:36', '2020-03-31 00:25:36', 'user');

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `view_destinasi_wisata`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `view_destinasi_wisata` (
`id` bigint(20) unsigned
,`id_tour` bigint(20) unsigned
,`id_destinasi_wisata` bigint(20) unsigned
,`nama_destinasi_wisata` varchar(255)
,`deskripsi` text
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `view_galeri`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `view_galeri` (
`id` bigint(20) unsigned
,`foto` text
,`id_destinasi_wisata` int(11)
,`nama_destinasi_wisata` varchar(255)
,`kategori` varchar(100)
,`deskripsi` text
,`id_tour` bigint(20) unsigned
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `view_trip_paket`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `view_trip_paket` (
`id_tour` bigint(20) unsigned
,`judul` varchar(255)
,`id_paket` bigint(20) unsigned
,`judul_paket_wisata` varchar(255)
,`deskripsi_paket_wisata` text
,`deskripsi` text
,`jadwal_trip` text
,`sifat_trip` text
,`meeting_point` text
);

-- --------------------------------------------------------

--
-- Struktur untuk view `view_destinasi_wisata`
--
DROP TABLE IF EXISTS `view_destinasi_wisata`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_destinasi_wisata`  AS  select `paket_trip_destinasi_wisata`.`id` AS `id`,`paket_trip_destinasi_wisata`.`id_tour` AS `id_tour`,`paket_trip_destinasi_wisata`.`id_destinasi_wisata` AS `id_destinasi_wisata`,`destinasi_wisata`.`nama_destinasi_wisata` AS `nama_destinasi_wisata`,`destinasi_wisata`.`deskripsi` AS `deskripsi` from (`destinasi_wisata` join `paket_trip_destinasi_wisata` on(`paket_trip_destinasi_wisata`.`id_destinasi_wisata` = `destinasi_wisata`.`id_destinasi_wisata`)) ;

-- --------------------------------------------------------

--
-- Struktur untuk view `view_galeri`
--
DROP TABLE IF EXISTS `view_galeri`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_galeri`  AS  select `galeri`.`id` AS `id`,`galeri`.`foto` AS `foto`,`galeri`.`id_destinasi_wisata` AS `id_destinasi_wisata`,`destinasi_wisata`.`nama_destinasi_wisata` AS `nama_destinasi_wisata`,`destinasi_wisata`.`kategori` AS `kategori`,`destinasi_wisata`.`deskripsi` AS `deskripsi`,`paket_trip_destinasi_wisata`.`id_tour` AS `id_tour` from ((`galeri` join `destinasi_wisata` on(`galeri`.`id_destinasi_wisata` = `destinasi_wisata`.`id_destinasi_wisata`)) join `paket_trip_destinasi_wisata` on(`paket_trip_destinasi_wisata`.`id_destinasi_wisata` = `destinasi_wisata`.`id_destinasi_wisata`)) ;

-- --------------------------------------------------------

--
-- Struktur untuk view `view_trip_paket`
--
DROP TABLE IF EXISTS `view_trip_paket`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_trip_paket`  AS  select `trip_paket`.`id_tour` AS `id_tour`,`trip_paket`.`judul` AS `judul`,`trip_paket`.`id_paket` AS `id_paket`,`paket_wisata`.`judul_paket_wisata` AS `judul_paket_wisata`,`paket_wisata`.`deskripsi_paket_wisata` AS `deskripsi_paket_wisata`,`trip_paket`.`deskripsi` AS `deskripsi`,`trip_paket`.`jadwal_trip` AS `jadwal_trip`,`trip_paket`.`sifat_trip` AS `sifat_trip`,`trip_paket`.`meeting_point` AS `meeting_point` from (`trip_paket` left join `paket_wisata` on(`trip_paket`.`id_paket` = `paket_wisata`.`id_paket_wisata`)) ;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `destinasi_wisata`
--
ALTER TABLE `destinasi_wisata`
  ADD PRIMARY KEY (`id_destinasi_wisata`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `fasilitas_trip`
--
ALTER TABLE `fasilitas_trip`
  ADD PRIMARY KEY (`id_fasilitas_trip`),
  ADD KEY `fasilitas_trip_id_tour_foreign` (`id_tour`);

--
-- Indeks untuk tabel `galeri`
--
ALTER TABLE `galeri`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `harga_trip`
--
ALTER TABLE `harga_trip`
  ADD PRIMARY KEY (`id_harga_trip`),
  ADD KEY `harga_trip_id_tour_foreign` (`id_tour`);

--
-- Indeks untuk tabel `info_web`
--
ALTER TABLE `info_web`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `info_web_email_unique` (`email`);

--
-- Indeks untuk tabel `info_wisata`
--
ALTER TABLE `info_wisata`
  ADD PRIMARY KEY (`id_info_wisata`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `paket_trip_destinasi_wisata`
--
ALTER TABLE `paket_trip_destinasi_wisata`
  ADD PRIMARY KEY (`id`),
  ADD KEY `paket_trip_destinasi_wisata_id_tour_foreign` (`id_tour`),
  ADD KEY `paket_trip_destinasi_wisata_id_destinasi_wisata_foreign` (`id_destinasi_wisata`);

--
-- Indeks untuk tabel `paket_wisata`
--
ALTER TABLE `paket_wisata`
  ADD PRIMARY KEY (`id_paket_wisata`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `reservasi`
--
ALTER TABLE `reservasi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reservasi_id_tour_foreign` (`id_tour`),
  ADD KEY `reservasi_id_user_foreign` (`id_user`);

--
-- Indeks untuk tabel `reservasi_detail`
--
ALTER TABLE `reservasi_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reservasi_detail_id_reservasi_foreign` (`id_reservasi`);

--
-- Indeks untuk tabel `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`id_tag`),
  ADD KEY `tag_idinfowisata_foreign` (`idinfowisata`);

--
-- Indeks untuk tabel `trip_paket`
--
ALTER TABLE `trip_paket`
  ADD PRIMARY KEY (`id_tour`),
  ADD KEY `trip_paket_id_paket_foreign` (`id_paket`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `destinasi_wisata`
--
ALTER TABLE `destinasi_wisata`
  MODIFY `id_destinasi_wisata` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `fasilitas_trip`
--
ALTER TABLE `fasilitas_trip`
  MODIFY `id_fasilitas_trip` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT untuk tabel `galeri`
--
ALTER TABLE `galeri`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `harga_trip`
--
ALTER TABLE `harga_trip`
  MODIFY `id_harga_trip` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `info_web`
--
ALTER TABLE `info_web`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `info_wisata`
--
ALTER TABLE `info_wisata`
  MODIFY `id_info_wisata` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT untuk tabel `paket_trip_destinasi_wisata`
--
ALTER TABLE `paket_trip_destinasi_wisata`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT untuk tabel `paket_wisata`
--
ALTER TABLE `paket_wisata`
  MODIFY `id_paket_wisata` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `reservasi`
--
ALTER TABLE `reservasi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `reservasi_detail`
--
ALTER TABLE `reservasi_detail`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tag`
--
ALTER TABLE `tag`
  MODIFY `id_tag` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `trip_paket`
--
ALTER TABLE `trip_paket`
  MODIFY `id_tour` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `fasilitas_trip`
--
ALTER TABLE `fasilitas_trip`
  ADD CONSTRAINT `fasilitas_trip_id_tour_foreign` FOREIGN KEY (`id_tour`) REFERENCES `trip_paket` (`id_tour`);

--
-- Ketidakleluasaan untuk tabel `harga_trip`
--
ALTER TABLE `harga_trip`
  ADD CONSTRAINT `harga_trip_id_tour_foreign` FOREIGN KEY (`id_tour`) REFERENCES `trip_paket` (`id_tour`);

--
-- Ketidakleluasaan untuk tabel `paket_trip_destinasi_wisata`
--
ALTER TABLE `paket_trip_destinasi_wisata`
  ADD CONSTRAINT `paket_trip_destinasi_wisata_id_destinasi_wisata_foreign` FOREIGN KEY (`id_destinasi_wisata`) REFERENCES `destinasi_wisata` (`id_destinasi_wisata`),
  ADD CONSTRAINT `paket_trip_destinasi_wisata_id_tour_foreign` FOREIGN KEY (`id_tour`) REFERENCES `trip_paket` (`id_tour`);

--
-- Ketidakleluasaan untuk tabel `reservasi_detail`
--
ALTER TABLE `reservasi_detail`
  ADD CONSTRAINT `reservasi_detail_id_reservasi_foreign` FOREIGN KEY (`id_reservasi`) REFERENCES `reservasi` (`id`);

--
-- Ketidakleluasaan untuk tabel `tag`
--
ALTER TABLE `tag`
  ADD CONSTRAINT `tag_idinfowisata_foreign` FOREIGN KEY (`idinfowisata`) REFERENCES `info_wisata` (`id_info_wisata`);

--
-- Ketidakleluasaan untuk tabel `trip_paket`
--
ALTER TABLE `trip_paket`
  ADD CONSTRAINT `trip_paket_id_paket_foreign` FOREIGN KEY (`id_paket`) REFERENCES `paket_wisata` (`id_paket_wisata`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
