-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 12 2023 г., 10:59
-- Версия сервера: 8.0.30
-- Версия PHP: 8.1.9
CREATE DATABASE pumphouse;
USE pumphouse;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `pumphouse`
--

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '1930_01_01_000010_create_residents_table', 1),
(2, '1930_01_01_000020_create_periods_table', 1),
(3, '2014_10_12_000000_create_users_table', 1),
(4, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(5, '2019_08_19_000000_create_failed_jobs_table', 1),
(6, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `periods`
--

CREATE TABLE `periods` (
  `id` bigint UNSIGNED NOT NULL,
  `year` int NOT NULL,
  `month` int NOT NULL,
  `indications` int NOT NULL,
  `tariff` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `periods`
--

INSERT INTO `periods` (`id`, `year`, `month`, `indications`, `tariff`) VALUES
(185, 2022, 0, 7712, 200),
(186, 2022, 1, 7814, 50),
(187, 2022, 2, 7912, 50),
(188, 2022, 3, 8000, 50),
(189, 2022, 4, 8115, 50),
(190, 2022, 5, 8200, 50),
(191, 2022, 6, 8300, 50),
(192, 2022, 7, 8400, 50),
(193, 2022, 8, 8500, 50),
(194, 2022, 9, 8600, 50),
(195, 2022, 10, 8700, 50),
(196, 2022, 11, 8900, 50),
(197, 2021, 0, 1321, 50),
(198, 2021, 1, 1422, 50),
(199, 2021, 2, 1523, 50),
(200, 2021, 3, 1644, 50),
(201, 2021, 4, 1685, 50),
(202, 2021, 5, 1726, 50),
(203, 2021, 6, 1827, 50),
(204, 2021, 7, 1928, 50),
(205, 2021, 8, 1999, 50),
(206, 2021, 9, 2110, 50),
(207, 2021, 10, 2311, 50),
(208, 2021, 11, 2412, 50),
(209, 2023, 0, 10000, 50),
(210, 2023, 1, 10023, 50),
(211, 2023, 2, 10024, 50),
(212, 2023, 3, 10231, 50),
(213, 2023, 4, 11021, 50),
(214, 2023, 5, 12412, 50),
(215, 2023, 6, 13327, 50),
(216, 2023, 7, 14218, 50),
(217, 2023, 8, 15129, 50),
(218, 2023, 9, 16310, 50),
(219, 2023, 10, 17511, 50),
(220, 2023, 11, 18212, 50),
(221, 2017, 0, 1, 50),
(222, 2017, 1, 2, 50),
(223, 2017, 2, 3, 50),
(224, 2017, 3, 4, 50),
(225, 2017, 4, 5, 50),
(226, 2017, 5, 6, 50),
(227, 2017, 6, 7, 50),
(228, 2017, 7, 8, 50),
(229, 2017, 8, 9, 50),
(230, 2017, 9, 10, 50),
(231, 2017, 10, 11, 50),
(232, 2017, 11, 12, 50),
(233, 2024, 0, 19324, 50),
(234, 2024, 1, 2, 50),
(235, 2024, 2, 3, 50),
(236, 2024, 3, 4, 50),
(237, 2024, 4, 5, 50),
(238, 2024, 5, 6, 50),
(239, 2024, 6, 7, 50),
(240, 2024, 7, 8, 50),
(241, 2024, 8, 9, 50),
(242, 2024, 9, 10, 50),
(243, 2024, 10, 11, 50),
(244, 2024, 11, 12, 50),
(245, 2025, 0, 1, 50),
(246, 2025, 1, 2, 50),
(247, 2025, 2, 3, 50),
(248, 2025, 3, 4, 50),
(249, 2025, 4, 5, 50),
(250, 2025, 5, 6, 50),
(251, 2025, 6, 7, 50),
(252, 2025, 7, 8, 50),
(253, 2025, 8, 9, 50),
(254, 2025, 9, 10, 50),
(255, 2025, 10, 11, 50),
(256, 2025, 11, 12, 50),
(257, 2020, 0, 0, 50),
(258, 2020, 1, 122, 50),
(259, 2020, 2, 123, 50),
(260, 2020, 3, 421, 50),
(261, 2020, 4, 541, 50),
(262, 2020, 5, 623, 50),
(263, 2020, 6, 765, 50),
(264, 2020, 7, 834, 50),
(265, 2020, 8, 941, 50),
(266, 2020, 9, 1065, 50),
(267, 2020, 10, 1156, 50),
(268, 2020, 11, 1298, 50),
(269, 2019, 0, 1, 50),
(270, 2019, 1, 2, 50),
(271, 2019, 2, 3, 50),
(272, 2019, 3, 4, 50),
(273, 2019, 4, 5, 50),
(274, 2019, 5, 6, 50),
(275, 2019, 6, 7, 50),
(276, 2019, 7, 8, 50),
(277, 2019, 8, 9, 50),
(278, 2019, 9, 10, 50),
(279, 2019, 10, 11, 50),
(280, 2019, 11, 12, 50),
(281, 2026, 0, 1, 50),
(282, 2026, 1, 2, 50),
(283, 2026, 2, 3, 50),
(284, 2026, 3, 4, 50),
(285, 2026, 4, 5, 50),
(286, 2026, 5, 6, 50),
(287, 2026, 6, 7, 50),
(288, 2026, 7, 8, 50),
(289, 2026, 8, 9, 50),
(290, 2026, 9, 10, 50),
(291, 2026, 10, 11, 50),
(292, 2026, 11, 12, 50),
(293, 2018, 0, 1, 50),
(294, 2018, 1, 2, 50),
(295, 2018, 2, 3, 50),
(296, 2018, 3, 4, 50),
(297, 2018, 4, 5, 50),
(298, 2018, 5, 6, 50),
(299, 2018, 6, 7, 50),
(300, 2018, 7, 8, 50),
(301, 2018, 8, 9, 50),
(302, 2018, 9, 10, 50),
(303, 2018, 10, 11, 50),
(304, 2018, 11, 12, 50),
(305, 2016, 0, 1, 50),
(306, 2016, 1, 2, 50),
(307, 2016, 2, 3, 50),
(308, 2016, 3, 4, 50),
(309, 2016, 4, 5, 50),
(310, 2016, 5, 6, 50),
(311, 2016, 6, 7, 50),
(312, 2016, 7, 8, 50),
(313, 2016, 8, 9, 50),
(314, 2016, 9, 10, 50),
(315, 2016, 10, 11, 50),
(316, 2016, 11, 12, 50);

-- --------------------------------------------------------

--
-- Структура таблицы `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `residents`
--

CREATE TABLE `residents` (
  `id` bigint UNSIGNED NOT NULL,
  `fio` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `area` int NOT NULL,
  `start_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `residents`
--

INSERT INTO `residents` (`id`, `fio`, `area`, `start_date`) VALUES
(1, 'Загвоздкин Лев Вячеславовия', 20, '2022-07-01'),
(2, 'Якуба Полина Дмитриевна', 41, '2022-08-01'),
(3, 'Петр III Главный', 546, '2022-08-01'),
(4, 'Полина Иосифова Григорьевна', 69, '2022-02-09'),
(5, 'Великая Баба Таня', 15, '2021-01-12');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Индексы таблицы `periods`
--
ALTER TABLE `periods`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Индексы таблицы `residents`
--
ALTER TABLE `residents`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `periods`
--
ALTER TABLE `periods`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=317;

--
-- AUTO_INCREMENT для таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `residents`
--
ALTER TABLE `residents`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
