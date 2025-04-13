-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 13, 2025 at 09:59 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ourlaravelapp`
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
(4, '2023_07_23_182945_add_favorite_color_column', 1),
(5, '2023_07_25_151002_create_posts_table', 2);

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
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `post_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `post_title`, `post_content`, `created_at`, `updated_at`) VALUES
(1, 5, 'My first blog post', 'Jobs fill your pocket, but adventures fill your soul.', '2023-07-25 10:26:23', '2023-07-25 10:26:23'),
(2, 4, 'About Banaras', 'Varanasi is a city on the Ganges river in northern India that has a central place in the traditions of pilgrimage, death, and mourning in the Hindu world.', '2023-07-25 10:27:37', '2023-07-25 10:27:37'),
(3, 5, 'New Post', 'Do you know 2+2 is 4?', '2023-07-25 10:35:39', '2023-07-25 10:35:39'),
(4, 5, 'New Test Post', 'This is a testing post..', '2023-07-25 11:22:11', '2023-07-25 11:22:11'),
(5, 5, 'Quick Markdown Testing', 'I want to see <b>this post</b> in bold.', '2023-07-25 11:31:03', '2023-07-25 11:31:03'),
(6, 5, 'Testing HTML content with Laravel v7.30', '\r\n        My roommate yells at me when I destroy things, but I do what I want.\r\n        Lorem ipsum dolor sit amet, consectetur adipisicing elit. Numquam praesentium laboriosam unde fuga accusamus reiciendis laudantium quis consequatur, beatae temporibus nemo, tempora voluptatum, perspiciatis accusantium ullam molestiae cupiditate incidunt architecto.\r\n        Lorem ipsum dolor sit amet, consectetur adipisicing elit. Numquam praesentium laboriosam unde fuga accusamus reiciendis laudantium quis consequatur, beatae temporibus nemo, tempora voluptatum, perspiciatis accusantium ullam molestiae cupiditate incidunt architecto.\r\n      ', '2023-07-25 12:13:53', '2023-07-25 12:13:53'),
(7, 5, 'Testing New HTML content with Laravel v7.30', 'Blog Content with HTML\r\nMy roommate yells at me when I destroy things, but I do what I want.\r\n        Lorem ipsum dolor sit amet, consectetur adipisicing elit. Numquam praesentium laboriosam unde fuga accusamus reiciendis laudantium quis consequatur, beatae temporibus nemo, tempora voluptatum, perspiciatis accusantium ullam molestiae cupiditate incidunt architecto.\r\n        Lorem ipsum dolor sit amet, consectetur adipisicing elit. Numquam praesentium laboriosam unde fuga accusamus reiciendis laudantium quis consequatur, beatae temporibus nemo, tempora voluptatum, perspiciatis accusantium ullam molestiae cupiditate incidunt architecto.', '2023-07-25 12:15:12', '2023-07-25 12:15:12'),
(9, 5, 'HTML Content', '&lt;b&gt;Good Evening...&lt;/b&gt;\r\n&lt;h3&gt;&lt;i&gt;Bhavna HTML content&lt;/i&gt;&lt;/h3&gt;', '2023-07-25 12:20:31', '2023-07-25 12:20:31'),
(10, 5, 'HTML Testing', '&lt;h1&gt;This is best&lt;/h1&gt;\r\n&lt;a href=&quot;#&quot;&gt;This is a link&lt;/a&gt;\r\n&lt;b&gt;Good Evening...&lt;/b&gt;\r\n&lt;h3&gt;&lt;i&gt;Bhavna HTML content&lt;/i&gt;&lt;/h3&gt;', '2023-07-25 12:34:23', '2023-07-25 12:34:23'),
(11, 4, 'yxfshmsfmjs', 'sjgj,cfkujtduwjhs', '2023-07-28 14:18:32', '2023-07-28 14:18:32');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `favorite_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `avatar`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `favorite_color`) VALUES
(1, 'bhavna', NULL, 'b@test.com', NULL, '1234', NULL, '2023-07-23 13:48:24', '2023-07-23 13:48:24', NULL),
(2, 'abc', NULL, 'abc@gmail.com', NULL, '12345678', NULL, '2023-07-23 14:05:45', '2023-07-23 14:05:45', NULL),
(3, 'abc1', NULL, 'abc1@gmail.com', NULL, '$2y$10$Gmhf2GKF3Vqp3VbJmd8EOeYZKuUAXiXjpnqzSqCpee9AqkYG4ve9m', NULL, '2023-07-23 14:08:14', '2023-07-23 14:08:14', NULL),
(4, 'test', NULL, 'test@test.com', NULL, '$2y$10$yFI76RriDFeIEMvHii5NE.EsiG5hfW/FTyHCxp3wxRtxVvvTvxJMq', NULL, '2023-07-23 14:18:30', '2023-07-23 14:18:30', NULL),
(5, 'bhavi', NULL, 'bhavi@gmail.com', NULL, '$2y$10$Meo/0DG49eNKgVuLEG.ic.BBTotUBpfAJroMw8CMeazAig8n6AlGy', NULL, '2023-07-24 12:07:31', '2023-07-24 12:07:31', NULL);

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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
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
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
