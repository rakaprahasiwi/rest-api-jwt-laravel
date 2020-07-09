-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 09, 2020 at 06:22 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_rest_jwt`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2020_07_03_041008_create_tasks_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `title`, `details`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'Qui eligendi voluptas non eum porro deleniti non temporibus.', 'Dignissimos quis voluptas consequatur soluta est.', 10, '2020-07-02 21:27:55', '2020-07-02 21:27:55'),
(2, 'Delectus consequatur sapiente vel doloribus voluptatibus dolorem.', 'Accusamus earum et non quia nam id corrupti.', 1, '2020-07-02 21:27:55', '2020-07-02 21:27:55'),
(3, 'Vel fuga sed minus dolorem.', 'Rem voluptatibus aspernatur qui qui consequatur iste labore.', 9, '2020-07-02 21:27:55', '2020-07-02 21:27:55'),
(4, 'Adipisci quam eum dolore quo dicta id.', 'Quia possimus delectus asperiores voluptatum velit ex sit.', 10, '2020-07-02 21:27:55', '2020-07-02 21:27:55'),
(5, 'Nam rerum unde et quia et.', 'Asperiores tempora ipsum fuga perferendis.', 3, '2020-07-02 21:27:55', '2020-07-02 21:27:55'),
(6, 'Ea sequi aut fuga.', 'Ipsum doloremque consectetur sit.', 8, '2020-07-02 21:27:56', '2020-07-02 21:27:56'),
(7, 'Recusandae eaque doloribus enim omnis necessitatibus quis laudantium.', 'Enim unde illum aut odio omnis.', 6, '2020-07-02 21:27:56', '2020-07-02 21:27:56'),
(8, 'Animi nulla quas impedit blanditiis reiciendis pariatur quod earum.', 'Vel odit ipsa vitae illo.', 9, '2020-07-02 21:27:56', '2020-07-02 21:27:56'),
(9, 'Amet quia qui impedit dignissimos placeat sed.', 'Sapiente dignissimos dolorem maxime molestiae sunt.', 2, '2020-07-02 21:27:56', '2020-07-02 21:27:56'),
(10, 'Et dolore consequuntur ad ut.', 'Amet aut est minus consequatur quibusdam animi.', 9, '2020-07-02 21:27:56', '2020-07-02 21:27:56'),
(11, 'Deleniti dolorum totam natus culpa aut id.', 'Et labore est dolorum possimus non sunt voluptate.', 6, '2020-07-02 21:27:56', '2020-07-02 21:27:56'),
(12, 'Consequatur quia odio et eos.', 'Explicabo ipsum in perspiciatis omnis enim architecto.', 8, '2020-07-02 21:27:56', '2020-07-02 21:27:56'),
(13, 'Rem sit corporis veniam ipsum voluptatibus tempora exercitationem.', 'Molestiae consequatur porro iusto.', 3, '2020-07-02 21:27:56', '2020-07-02 21:27:56'),
(14, 'Aut velit molestias aut ad.', 'Repellendus enim amet tenetur nesciunt.', 6, '2020-07-02 21:27:56', '2020-07-02 21:27:56'),
(15, 'Et explicabo neque quis voluptatibus corrupti et.', 'Non voluptatem placeat at voluptatem vel sed.', 5, '2020-07-02 21:27:56', '2020-07-02 21:27:56'),
(16, 'Veniam quod molestias quis voluptas ullam repellendus sint nam.', 'Dolor vero at est quia quo dolorum vel.', 9, '2020-07-02 21:27:56', '2020-07-02 21:27:56'),
(17, 'Nostrum consectetur sunt fugiat error.', 'Aperiam repudiandae qui laboriosam ut.', 8, '2020-07-02 21:27:56', '2020-07-02 21:27:56'),
(18, 'Eligendi dicta perspiciatis delectus incidunt.', 'Sed qui aliquid sed expedita officia.', 9, '2020-07-02 21:27:56', '2020-07-02 21:27:56'),
(19, 'Velit labore nobis aliquid explicabo vitae nostrum expedita odit.', 'Repudiandae assumenda iure ut quis quia provident dolore.', 5, '2020-07-02 21:27:56', '2020-07-02 21:27:56'),
(20, 'Illo tenetur harum aspernatur sint.', 'Vitae sint dignissimos accusamus pariatur tempore alias.', 3, '2020-07-02 21:27:56', '2020-07-02 21:27:56'),
(21, 'Error molestias eveniet dolor amet aspernatur illum minima.', 'Est fugit mollitia voluptas magni neque labore et.', 9, '2020-07-02 21:27:56', '2020-07-02 21:27:56'),
(22, 'Rerum beatae quidem eaque odit.', 'Rem ut sint laudantium a iste velit tenetur.', 4, '2020-07-02 21:27:56', '2020-07-02 21:27:56'),
(23, 'Perspiciatis sed deleniti molestiae recusandae vel non.', 'Tenetur aperiam voluptas illo molestiae eum vitae dignissimos qui.', 4, '2020-07-02 21:27:56', '2020-07-02 21:27:56'),
(24, 'Vero enim molestiae similique quia voluptatem a voluptate.', 'Sed quas enim quibusdam in qui nemo ut.', 10, '2020-07-02 21:27:56', '2020-07-02 21:27:56'),
(25, 'Ratione et rem hic libero quo.', 'Et quam et veniam et ratione deserunt.', 7, '2020-07-02 21:27:56', '2020-07-02 21:27:56'),
(26, 'Distinctio adipisci reprehenderit quia quam magni voluptatem porro voluptatum.', 'Maxime voluptatibus quia non.', 8, '2020-07-02 21:27:56', '2020-07-02 21:27:56'),
(27, 'Rerum non dolor quos qui.', 'Ea aut eius necessitatibus.', 3, '2020-07-02 21:27:56', '2020-07-02 21:27:56'),
(28, 'Est rerum reprehenderit perferendis explicabo maxime.', 'Itaque accusamus at quibusdam.', 10, '2020-07-02 21:27:56', '2020-07-02 21:27:56'),
(29, 'Ab dicta nobis blanditiis pariatur magni.', 'Autem voluptatibus doloremque assumenda harum molestiae.', 1, '2020-07-02 21:27:56', '2020-07-02 21:27:56'),
(30, 'Deserunt et quas iure dolores maiores facilis nulla iure.', 'Et rerum quas voluptatum consequatur earum omnis.', 5, '2020-07-02 21:27:56', '2020-07-02 21:27:56'),
(31, 'Minima vel aspernatur eum quae mollitia.', 'Nostrum hic optio esse ut dolore.', 2, '2020-07-02 21:27:56', '2020-07-02 21:27:56'),
(32, 'Odit quae non corporis dolore et.', 'Corrupti dolor ut distinctio sit occaecati.', 3, '2020-07-02 21:27:57', '2020-07-02 21:27:57'),
(33, 'Nihil quas ab optio sed.', 'Aut et iusto ad vel.', 4, '2020-07-02 21:27:57', '2020-07-02 21:27:57'),
(34, 'Hic temporibus libero facere sapiente numquam architecto.', 'Et magni culpa nesciunt.', 4, '2020-07-02 21:27:57', '2020-07-02 21:27:57'),
(35, 'Voluptate laborum et odit exercitationem consectetur iure voluptas.', 'Et ut incidunt voluptas quidem.', 7, '2020-07-02 21:27:57', '2020-07-02 21:27:57'),
(36, 'Consequuntur molestiae a est omnis excepturi.', 'Quibusdam vitae hic facere cumque dolor officia est.', 7, '2020-07-02 21:27:57', '2020-07-02 21:27:57'),
(37, 'Omnis aliquid sapiente explicabo.', 'Quos voluptates voluptas eaque velit suscipit.', 5, '2020-07-02 21:27:57', '2020-07-02 21:27:57'),
(38, 'Labore recusandae dolorum consequatur blanditiis et doloribus sapiente.', 'Assumenda et rerum eos saepe minima.', 9, '2020-07-02 21:27:57', '2020-07-02 21:27:57'),
(39, 'Hic excepturi temporibus ut.', 'Odio tenetur ut facilis ea illum.', 6, '2020-07-02 21:27:57', '2020-07-02 21:27:57'),
(40, 'Facilis adipisci consequatur officia quisquam enim non.', 'Consectetur est accusantium qui magni.', 4, '2020-07-02 21:27:57', '2020-07-02 21:27:57'),
(41, 'Necessitatibus enim ut repudiandae facere quam et officiis natus.', 'Quod harum qui vel quia unde mollitia placeat dolorum.', 6, '2020-07-02 21:27:57', '2020-07-02 21:27:57'),
(42, 'Ut est et rerum illo.', 'Rem tempora nihil nisi provident inventore.', 2, '2020-07-02 21:27:57', '2020-07-02 21:27:57'),
(43, 'Iusto dolorem unde eveniet.', 'Officiis non commodi tempora nostrum officia cum id.', 10, '2020-07-02 21:27:57', '2020-07-02 21:27:57'),
(44, 'Nihil deserunt quae ea et odit vero dignissimos soluta.', 'Voluptates ducimus dolores necessitatibus eveniet alias praesentium nesciunt.', 1, '2020-07-02 21:27:57', '2020-07-02 21:27:57'),
(45, 'Aut animi natus eius quisquam inventore est quo.', 'Placeat fuga hic modi excepturi illum fuga est.', 3, '2020-07-02 21:27:57', '2020-07-02 21:27:57'),
(46, 'Pariatur quod sed fugiat et iusto in doloribus.', 'Laboriosam iure sit quos.', 6, '2020-07-02 21:27:57', '2020-07-02 21:27:57'),
(47, 'Debitis itaque iste non omnis delectus.', 'Porro ab voluptas facilis.', 7, '2020-07-02 21:27:57', '2020-07-02 21:27:57'),
(48, 'Minima reprehenderit dignissimos blanditiis mollitia id autem.', 'Iure perferendis illum eum quis voluptas.', 10, '2020-07-02 21:27:57', '2020-07-02 21:27:57'),
(49, 'Maiores officiis voluptates quibusdam sunt voluptas.', 'Neque incidunt voluptas ad facilis aspernatur.', 8, '2020-07-02 21:27:57', '2020-07-02 21:27:57'),
(50, 'Ducimus doloribus enim quia totam voluptatum ducimus inventore.', 'Consequatur alias sapiente suscipit tempore suscipit modi iste.', 3, '2020-07-02 21:27:57', '2020-07-02 21:27:57'),
(51, 'Menyapu', 'Menyapu halaman', 11, '2020-07-08 21:14:52', '2020-07-08 21:14:52');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Miss Karelle Beier IV', 'altenwerth.jettie@example.org', '2020-07-02 21:25:54', '$2y$10$PBH1cAK5ebjpgy1LILnas.nNHDBt13cZEVd6Y5dWhvykB/0dpghze', 'YHca79qtjr', '2020-07-02 21:25:55', '2020-07-02 21:25:55'),
(2, 'Ms. Beulah Metz IV', 'jammie77@example.org', '2020-07-02 21:25:54', '$2y$10$EZ09pFFqjIqfFCQwksfvb.vnrU1pqkyzLo/E55Azy/t7/kexkko5q', 'nvaGx0CNd6', '2020-07-02 21:25:55', '2020-07-02 21:25:55'),
(3, 'Dr. Berenice Nienow', 'fbergnaum@example.org', '2020-07-02 21:25:54', '$2y$10$bB0vw7YDgBm/ImB/0D5sQO3G9udC8I85Fe1qFBMj4hBxxH4ezKS2W', 'mr25eOV6HW', '2020-07-02 21:25:55', '2020-07-02 21:25:55'),
(4, 'Steve Beahan', 'imcglynn@example.org', '2020-07-02 21:25:55', '$2y$10$nGA86oZEZZ7Cy90uu1guQ..GPIb1pF5JaNOpmxyq5e3svSPInOa2u', 'p6Ext8nDqR', '2020-07-02 21:25:55', '2020-07-02 21:25:55'),
(5, 'Prof. Rupert Kreiger IV', 'virginia41@example.org', '2020-07-02 21:25:55', '$2y$10$hJ41SrDtTaLVj/NnT6yQM.M/951qbaC3BlaMP5/CP7DQfLjgnVAT2', 'AedcENWoEF', '2020-07-02 21:25:55', '2020-07-02 21:25:55'),
(6, 'Lydia Witting', 'lowe.freeman@example.org', '2020-07-02 21:25:55', '$2y$10$6TAhncxpK7x6TMc8lWbGmu0sDa8zxRWad9VKAqsXDXnpzmvJqCKcu', '8hkf3QdocA', '2020-07-02 21:25:55', '2020-07-02 21:25:55'),
(7, 'Nestor Carroll', 'moore.karl@example.com', '2020-07-02 21:25:55', '$2y$10$cLGx4tGlyb5e4hjCENS2M.KIfRKGFA4vQoCuMO40aaN6pykF2.H9e', 'NcdZjnTtz3', '2020-07-02 21:25:55', '2020-07-02 21:25:55'),
(8, 'Prof. Raheem Stoltenberg', 'fern97@example.com', '2020-07-02 21:25:55', '$2y$10$lt0OR6tJWsFcMZ716DBZR.hkJYEXYrmUebmab5DCKMoqjmSBCGDb.', 'nq4pqy1uxG', '2020-07-02 21:25:55', '2020-07-02 21:25:55'),
(9, 'Dr. Terence Wunsch', 'ryann94@example.com', '2020-07-02 21:25:55', '$2y$10$OHC9nAZOY526k6dJriioKeDBWmL/UgESuUD/7/228VoW/nX/7WU0q', 'pjWZuJWKEl', '2020-07-02 21:25:56', '2020-07-02 21:25:56'),
(10, 'Jannie Schaden', 'larson.jeffery@example.org', '2020-07-02 21:25:55', '$2y$10$CX4irpy0cIASROaT8DygPeYoAI7kyePHZtWe.L0Ojdzm0tJi6De.q', '4lbkJzDoh7', '2020-07-02 21:25:56', '2020-07-02 21:25:56'),
(11, 'Emre Can', 'emrecan@gmail.com', NULL, '$2y$10$c/7WPnwp5uTG1Fu.eIX7oeGJQoWwUDSJvvY7cRJ55lV0hIEqTc7EG', NULL, '2020-07-08 20:50:19', '2020-07-08 20:50:19'),
(12, 'Fernandes', 'fernandes@gmail.com', NULL, '$2y$10$..SvCsewHclOiAA0MTua8.mo3Ol7Wi/0KA/32zRKqsD1h5S.FjNWm', NULL, '2020-07-08 21:07:02', '2020-07-08 21:07:02'),
(13, 'ighalo', 'ighalo@gmail.com', NULL, '$2y$10$0qw7wiOeALlErqmaH.4Qo.CbQ0T2ZWsLHWXdZztxk/gFAVEVSuJVa', NULL, '2020-07-08 21:08:07', '2020-07-08 21:08:07'),
(14, 'fred', 'fred@gmail.com', NULL, '$2y$10$9nRwCGcC8c2eURV0WD/MleauImvJGolaQhuBSzhRd96Mju5K2M/1.', NULL, '2020-07-08 21:10:56', '2020-07-08 21:10:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tasks_created_by_foreign` (`created_by`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tasks`
--
ALTER TABLE `tasks`
  ADD CONSTRAINT `tasks_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
