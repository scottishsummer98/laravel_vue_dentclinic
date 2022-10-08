-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 08, 2022 at 03:35 AM
-- Server version: 5.7.33
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dpweb`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
(5, '2022_10_06_120137_create_services_table', 2),
(6, '2022_10_07_032219_create_treatments_table', 3),
(11, '2014_10_12_000000_create_users_table', 4),
(12, '2014_10_12_100000_create_password_resets_table', 4),
(13, '2019_08_19_000000_create_failed_jobs_table', 4),
(14, '2019_12_14_000001_create_personal_access_tokens_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title`, `price`, `created_at`, `updated_at`) VALUES
(1, 'Ultrasonic Scaling', 'BDT 3,000- 5,000', '2022-10-06 06:26:09', '2022-10-06 06:26:09'),
(2, 'Tooth Whitening', 'BDT 4,000.00', '2022-10-06 06:26:37', '2022-10-06 06:26:37'),
(3, 'Root Canal Therapy', 'BDT 5,000.00', '2022-10-06 06:27:17', '2022-10-06 06:27:17'),
(4, 'Pulp Capping', 'BDT 4,000.00', '2022-10-06 06:44:50', '2022-10-06 12:04:23'),
(5, 'Polishing', 'BDT 4,000.00', '2022-10-06 06:45:10', '2022-10-06 12:05:08'),
(6, 'Operculectomy', 'BDT 5,000.00', '2022-10-06 12:05:29', '2022-10-06 12:05:29'),
(7, 'Metallic Cap/Crown (Porcelain)', 'BDT 8,000.00', '2022-10-06 12:05:44', '2022-10-06 12:05:44'),
(8, 'Light Cure Filling', 'BDT 5,000.00', '2022-10-06 12:05:56', '2022-10-06 12:05:56'),
(9, 'Gingivectomy', 'BDT 5,000.00', '2022-10-06 12:06:38', '2022-10-06 12:06:38'),
(10, 'Extraction-Wisdom / Complicated Tooth – Upper Jaw', 'BDT 5000.00', '2022-10-06 12:06:52', '2022-10-06 12:06:52');

-- --------------------------------------------------------

--
-- Table structure for table `treatments`
--

CREATE TABLE `treatments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `beforeOperationImage` text COLLATE utf8mb4_unicode_ci,
  `afterOperationImage` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `treatments`
--

INSERT INTO `treatments` (`id`, `name`, `description`, `beforeOperationImage`, `afterOperationImage`, `created_at`, `updated_at`) VALUES
(14, 'TONGUE PRECANCEROUS LESION (LEOKOPLAKIA)', 'Leukoplakia is a condition in which one or more white patches or spots (lesions) forms inside the mouth. Leukoplakia is different from other causes of white patches such as thrush or lichen planus because it can eventually develop into oral cancer.', 'treatment/beforeop/2022/10/Adx9tJyjleuszJb76CsgpOv7k1LYAawb9w1mHctG.jpg', 'treatment/afterop/2022/10/c5gabLBhghFAOteSpu0dZ4vBtxuwYOPTjDgjeHoX.jpg', '2022-10-07 08:53:38', '2022-10-07 08:53:38'),
(15, 'TMJ ANKYLOSIS', 'Temporomandibular joint ankylosis is defined as bony or fibrous adhesion of the anatomic joint components accompanied by a limitation in opening the mouth, causing difficulties with mastication, speaking and oral hygiene as well as inadvertently influencing mandibular growth.', 'treatment/beforeop/2022/10/thURpOQNZufpwSgBRGkODegYx4DaB3ZiaE9t22B3.jpg', 'treatment/afterop/2022/10/cID8VgpmdEcHLPk9v5tE8o154NHfEST7XExMK0XT.jpg', '2022-10-07 09:01:40', '2022-10-07 09:01:40'),
(16, 'SOFT PALATE CLEFT REPAIR', 'Palate repair surgery is usually done when your baby is 6 to 12 months old. The gap in the roof of the mouth is closed and the muscles and the lining of the palate are rearranged. The wound is closed with dissolvable stitches. The operation usually takes about 2 hours and is done using a general anaesthetic.', 'treatment/beforeop/2022/10/gewBE0Z6d4r3hFvcNcmuDC0DBtOkOVsZ46llUOeG.jpg', 'treatment/afterop/2022/10/nJRUUeQF71w66TyDxnS3AcTxj7ji3M3WOUXEt2I6.jpg', '2022-10-07 09:02:13', '2022-10-07 09:02:13'),
(17, 'ORAL CANCER', 'Mouth cancer, also known as oral cancer, is where a tumour develops in a part of the mouth. It may be on the surface of the tongue, the inside of the cheeks, the roof of the mouth (palate), the lips or gums.', 'treatment/beforeop/2022/10/h2IetLpDQmO0f9044fEFgeS5WQmv6PomoTza1te6.jpg', 'treatment/afterop/2022/10/SIRjIAciMsx6p9ClJlCEdPVeuHx55JzeDrpUhB1G.jpg', '2022-10-07 09:02:35', '2022-10-07 09:02:35'),
(18, 'ORTHO CROWDING', 'Crowding is the lack of space for all the teeth to fit normally within the jaws. The teeth may be twisted or displaced. Crowding occurs when there is disharmony in the tooth to jaw size relationship, or when the teeth are larger than the available space.', 'treatment/beforeop/2022/10/sPFAM2xUHYWhFruht6nvMFCx4PPjv5DZQArMDVyV.jpg', 'treatment/afterop/2022/10/1qXJhAwIoq1UUnoU8D1tgLDgItkYrSYFtKMH3uu9.jpg', '2022-10-07 09:03:07', '2022-10-07 09:03:07'),
(19, 'CLEFT LIP REPAIR', 'Lip repair surgery is usually done when your baby is around 3 months old. Your baby will be given a general anaesthetic (where they\'re unconscious) and the cleft lip will be repaired and closed with stitches. The operation usually takes 1 to 2 hours. Most babies are in hospital for 1 to 2 days.', 'treatment/beforeop/2022/10/piYf8fnMZ51M7xcrH26FWm2XrgM8VP9Wdr5P8Era.jpg', 'treatment/afterop/2022/10/QhqqUcXGccfffXSYhcEj70nuhb39UdwAVGgONsiC.jpg', '2022-10-07 09:03:44', '2022-10-07 09:03:44'),
(20, 'BROKEN TOOTH BUILD-UP BY LIGHT CURE COMPOSITE FILLING', 'Composite bonding is a modern way to restore teeth, either for cosmetic reasons, or to build up tooth structure that has been lost. It involves bonding a tooth coloured resin material to existing teeth to reshape them or improve their colour.', 'treatment/beforeop/2022/10/HQ1einKfjozVQIm6OkVBoycU6715V3sJ5mwiorBS.jpg', 'treatment/afterop/2022/10/qwRl1b7pLHN03PWtKpFmN1tNlcWbUR119TpSYaJG.jpg', '2022-10-07 09:04:11', '2022-10-07 09:04:11');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
(1, 'Samiur Rahman', 'sami@gmail.com', NULL, '$2y$10$IscYe4lajvMjC55Ng6XKK.go.82GVYby8PYPiLNJjOPDVOTRNQjY.', NULL, '2022-10-07 13:42:47', '2022-10-07 13:42:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `treatments`
--
ALTER TABLE `treatments`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `treatments`
--
ALTER TABLE `treatments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
