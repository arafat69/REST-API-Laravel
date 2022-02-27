-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 27, 2022 at 12:02 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel8api`
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
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_02_01_124733_create_students_table', 2);

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
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'my-aap-token', 'f43cfd6c943755b11e87b7f461692f713ef1c0e6bb5a5680f786d7b621a2f840', '[\"*\"]', '2022-02-07 10:49:00', '2022-02-07 10:26:46', '2022-02-07 10:49:00'),
(2, 'App\\Models\\User', 1, 'my-aap-token', '70ee2c177af6ea37e7d65b2b1b4453ba048fd05bbad1bd9ca0ebcc316465f4ec', '[\"*\"]', NULL, '2022-02-07 23:49:52', '2022-02-07 23:49:52'),
(3, 'App\\Models\\User', 1, 'my-aap-token', '7cdf6add71eaeb3d46d66c3073cdb03b3764b54fa414b1c9d9604f1b3bc4fdf3', '[\"*\"]', NULL, '2022-02-08 00:26:41', '2022-02-08 00:26:41'),
(4, 'App\\Models\\User', 1, 'my-aap-token', 'f0d8e6061e666598c5178350f3bc933aed844b0950bc7dece03493b1235ba842', '[\"*\"]', NULL, '2022-02-08 00:30:47', '2022-02-08 00:30:47'),
(5, 'App\\Models\\User', 1, 'my-aap-token', '8b45da2d88f47f8845968330d5b465b98c7f463f473ec67da917bd3b02c3afbf', '[\"*\"]', NULL, '2022-02-08 00:37:40', '2022-02-08 00:37:40'),
(6, 'App\\Models\\User', 1, 'my-aap-token', 'b52398c549d93e9ce87e1045328114479ce22c41ec1cad8c85a87e2b1dff53cb', '[\"*\"]', '2022-02-08 00:58:07', '2022-02-08 00:39:06', '2022-02-08 00:58:07'),
(7, 'App\\Models\\User', 1, 'my-aap-token', '0a07788f51489fad47c0591ef86b1fc77b308f3cef0020c58260b22c8353bfab', '[\"*\"]', '2022-02-08 01:41:34', '2022-02-08 00:50:04', '2022-02-08 01:41:34'),
(8, 'App\\Models\\User', 1, 'my-aap-token', 'da16c2d616af48efb844f82516e743964042db3b78c37cf15f88ee7464b7ed1e', '[\"*\"]', '2022-02-08 01:47:45', '2022-02-08 01:46:28', '2022-02-08 01:47:45'),
(9, 'App\\Models\\User', 1, 'my-aap-token', 'b6acb1f18f77d7af7c1eb945e1d3326a263e459299fc7aed953879f758c5dfc7', '[\"*\"]', NULL, '2022-02-08 01:47:44', '2022-02-08 01:47:44'),
(10, 'App\\Models\\User', 1, 'my-aap-token', 'd20b68226b604ce183c95e43435bc8d4156b8dc2f17dd4420f3ab375b407a3bf', '[\"*\"]', '2022-02-08 01:48:40', '2022-02-08 01:48:12', '2022-02-08 01:48:40'),
(11, 'App\\Models\\User', 1, 'my-aap-token', 'dfd03d8b326c71f206213466907c518fa785102bd305e0a623c1383477baac4f', '[\"*\"]', '2022-02-08 03:23:08', '2022-02-08 01:52:39', '2022-02-08 03:23:08'),
(12, 'App\\Models\\User', 1, 'my-aap-token', '805ef88e8b51d988a9b5db421cca0768ed32aac56e05f23bde0f485b0b0e6b2a', '[\"*\"]', '2022-02-08 03:49:53', '2022-02-08 03:49:51', '2022-02-08 03:49:53'),
(13, 'App\\Models\\User', 1, 'my-aap-token', '68b63e3aaa5d983864fa2f89210983c006c516860e2ed6313d6201f61985e4e0', '[\"*\"]', '2022-02-08 03:58:57', '2022-02-08 03:58:29', '2022-02-08 03:58:57'),
(14, 'App\\Models\\User', 1, 'my-aap-token', '79cbb5f1c3fb4df4458ddb8042c778dabb90ba5ffa1e494c1e61b2b0b3fb4862', '[\"*\"]', '2022-02-08 03:59:11', '2022-02-08 03:59:10', '2022-02-08 03:59:11'),
(15, 'App\\Models\\User', 1, 'my-aap-token', '61b7fc852b3fa271613cbb93a8a27400238fb6efdf1cc1a5731b8cfdb0b9bff2', '[\"*\"]', '2022-02-08 05:17:55', '2022-02-08 04:00:52', '2022-02-08 05:17:55'),
(16, 'App\\Models\\User', 2, 'my-aap-token', 'cb51ab71ef47406c4670bc98ca15ccb4696860bf28998a736b38c5c0d85596cd', '[\"*\"]', '2022-02-08 05:21:20', '2022-02-08 05:19:17', '2022-02-08 05:21:20'),
(17, 'App\\Models\\User', 2, 'my-aap-token', 'fded52a2305fa2c3b1eaac1447f3eea455ad734a747bc71ec6edb2ce6a8b6d1d', '[\"*\"]', '2022-02-08 05:56:34', '2022-02-08 05:22:02', '2022-02-08 05:56:34'),
(18, 'App\\Models\\User', 2, 'my-aap-token', 'bbf2a17010cd2ab10738344a350f66fe8675b82edecb4faa64ee57dafdb950be', '[\"*\"]', '2022-02-08 06:16:30', '2022-02-08 06:16:28', '2022-02-08 06:16:30'),
(19, 'App\\Models\\User', 1, 'my-aap-token', 'c95147b1f7d4203800850eda3682f1db52eb43da3506a9cee87512a1d9b2cb4e', '[\"*\"]', '2022-02-08 06:55:30', '2022-02-08 06:22:14', '2022-02-08 06:55:30'),
(20, 'App\\Models\\User', 2, 'my-aap-token', '6c083b89f09c1998daf2a8468f7946f9a7e741242cfe77fefeeb35dcda8a7e68', '[\"*\"]', '2022-02-08 21:31:01', '2022-02-08 06:55:51', '2022-02-08 21:31:01'),
(21, 'App\\Models\\User', 2, 'my-aap-token', 'c32c0c69af54e4f50cf046c2b8ce6f40b938e4a938fb3a482b7815bd1bc57498', '[\"*\"]', '2022-02-08 22:59:44', '2022-02-08 21:31:40', '2022-02-08 22:59:44');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roll` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reg` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `roll`, `reg`, `department`, `created_at`, `updated_at`) VALUES
(2, 'Arafat Ali', '913439', '886601', 'Computer', '2022-02-01 08:15:46', '2022-02-02 09:48:47'),
(3, 'Abcd', '9134356', '8866010', 'Civil', '2022-02-01 08:16:36', '2022-02-08 06:54:22'),
(6, 'jone', '123464', '345678', 'Electrical', '2022-02-01 08:36:21', '2022-02-02 10:43:39'),
(7, 'quio', '123464', '345678', 'Electrial', '2022-02-01 08:36:48', '2022-02-01 08:36:48'),
(8, 'johan', '45678', '87654', 'Computer', '2022-02-01 08:37:58', '2022-02-01 08:37:58'),
(13, 'Test', '123456', '886601', 'Electrical', '2022-02-08 01:05:27', '2022-02-08 04:25:48'),
(14, 'Sports', '45678', '12345', 'Electronic', '2022-02-08 04:29:03', '2022-02-08 04:29:03'),
(15, 'Arafat Ali', '123456', '886601', 'Computer', '2022-02-08 06:55:01', '2022-02-08 06:55:01');

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
(1, 'abc', 'abc@gmail.com', NULL, '$2y$10$pJSUrTm9v0UDaJTPZHVFZ.HCauKTwZC9RU/2x08tdjf1Dah6Y4eQy', NULL, '2022-02-07 10:25:53', '2022-02-07 10:25:53'),
(2, 'Arafat Ali', 'arafat@gmail.com', NULL, '$2y$10$Jv67IY1JmcO4i/RX5P.Sh.e3Ofa35.eLR.LFu9FwbN1StLN/UocY6', NULL, '2022-02-08 04:46:38', '2022-02-08 04:46:38'),
(4, 'Abcde', 'abcde@gmail.com', NULL, '$2y$10$1tbDOCK2WItHX3P9jzrX/.EJvhW/vDilHP4ZK78pxTfsb22kodRu.', NULL, '2022-02-08 06:53:39', '2022-02-08 06:53:39');

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
-- Indexes for table `students`
--
ALTER TABLE `students`
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
