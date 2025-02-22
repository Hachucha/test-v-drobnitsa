-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Окт 29 2024 г., 08:16
-- Версия сервера: 10.11.9-MariaDB-ubu2204
-- Версия PHP: 8.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `demo_sales`
--

-- --------------------------------------------------------

--
-- Структура таблицы `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1723571868),
('m240322_095346_users', 1723571870),
('m240322_095347_vars', 1723571870),
('m240322_095348_products', 1723571870),
('m240322_095349_orders', 1723571870),
('m240322_095350_regions', 1723571870);

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `number` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `date` date DEFAULT NULL,
  `client` varchar(250) DEFAULT '',
  `phone` varchar(250) DEFAULT '',
  `region_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `positions` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `q` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `sum` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `is_deleted` smallint(6) NOT NULL DEFAULT 0,
  `created` datetime DEFAULT NULL,
  `creator_id` int(11) NOT NULL DEFAULT 0,
  `modified` datetime DEFAULT NULL,
  `modifier_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Дамп данных таблицы `orders`
--

INSERT INTO `orders` (`id`, `number`, `date`, `client`, `phone`, `region_id`, `positions`, `q`, `sum`, `is_deleted`, `created`, `creator_id`, `modified`, `modifier_id`) VALUES
(815, 1, '2024-10-29', 'ФИО клиента 1', '+70000000001', 1, 2, 465, 451500, 0, '2024-10-29 01:35:50', 0, '2024-10-29 01:35:50', 0),
(816, 2, '2024-10-29', 'ФИО клиента 2', '+70000000002', 2, 3, 209, 290300, 0, '2024-10-29 01:36:24', 0, '2024-10-29 01:36:24', 0),
(817, 3, '2024-10-29', 'ФИО клиента 1', '+70000000001', 1, 3, 180, 580000, 0, '2024-10-29 01:37:47', 0, '2024-10-29 01:37:47', 0),
(818, 4, '2024-10-29', 'ФИО клиента 3', '+70000000003', 6, 3, 152, 242300, 0, '2024-10-29 01:38:13', 0, '2024-10-29 01:38:13', 0),
(819, 5, '2024-10-29', 'ФИО клиента 4', '+70000000004', 6, 1, 102, 510000, 0, '2024-10-29 01:38:35', 0, '2024-10-29 01:38:35', 0),
(820, 6, '2024-10-29', 'ФИО клиента 5', '+70000000005', 6, 2, 1003, 369500, 0, '2024-10-29 01:38:56', 0, '2024-10-29 01:38:56', 0),
(821, 7, '2024-10-29', 'ФИО клиента 5', '+70000000005', 6, 2, 234, 1143000, 0, '2024-10-29 01:39:28', 0, '2024-10-29 01:39:28', 0),
(822, 8, '2024-10-29', 'ФИО клиента 4', '+70000000004', 6, 2, 539, 1333500, 0, '2024-10-29 01:40:01', 0, '2024-10-29 01:40:01', 0),
(823, 9, '2024-10-29', 'ФИО клиента 6', '+70000000006', 7, 3, 263, 302100, 0, '2024-10-29 01:41:05', 0, '2024-10-29 01:41:05', 0),
(824, 10, '2024-10-29', 'ФИО клиента 7', '+70000000007', 5, 1, 100, 100000, 0, '2024-10-29 01:42:18', 0, '2024-10-29 01:42:18', 0),
(825, 11, '2024-10-29', 'ФИО клиента 8', '+70000000008', 8, 5, 116, 238700, 0, '2024-10-29 01:43:52', 0, '2024-10-29 01:43:52', 0),
(826, 12, '2024-10-29', 'ФИО клиента 5', '+70000000005', 5, 1, 300, 1500000, 0, '2024-10-29 01:44:59', 0, '2024-10-29 01:44:59', 0),
(827, 13, '2024-10-29', 'ФИО клиента 9', '+70000000009', 9, 3, 159, 174900, 0, '2024-10-29 01:45:26', 0, '2024-10-29 01:45:26', 0),
(830, 14, '2024-10-29', 'ФИО клиента 10', '+70000000010', 8, 3, 284, 253000, 0, '2024-10-29 01:46:45', 0, '2024-10-29 01:46:45', 0),
(831, 15, '2024-10-29', 'ФИО клиента 6', '+70000000006', 6, 3, 57, 195500, 0, '2024-10-29 01:47:11', 0, '2024-10-29 01:47:11', 0),
(832, 16, '2024-10-29', 'ФИО клиента 11', '+70000000011', 6, 5, 87, 104700, 0, '2024-10-29 01:47:42', 0, '2024-10-29 01:47:42', 0),
(833, 17, '2024-10-29', 'ФИО клиента 12', '+70000000012', 6, 4, 83, 160000, 0, '2024-10-29 01:48:10', 0, '2024-10-29 01:48:10', 0),
(834, 18, '2024-10-29', 'ФИО клиента 13', '+70000000013', 5, 4, 77, 300500, 0, '2024-10-29 01:48:45', 0, '2024-10-29 01:48:45', 0),
(835, 19, '2024-10-29', 'ФИО клиента 14', '+70000000014', 3, 3, 118, 102500, 0, '2024-10-29 01:49:09', 0, '2024-10-29 01:49:09', 0),
(836, 20, '2024-10-29', 'ФИО клиента 15', '+70000000015', 4, 4, 182, 347500, 0, '2024-10-29 01:49:35', 0, '2024-10-29 01:49:35', 0),
(837, 21, '2024-10-29', 'ФИО клиента 16', '+70000000016', 8, 2, 51, 161900, 0, '2024-10-29 01:50:04', 0, '2024-10-29 01:50:04', 0),
(838, 22, '2024-10-29', 'ФИО клиента 17', '+70000000017', 6, 2, 73, 13600, 0, '2024-10-29 01:50:33', 0, '2024-10-29 01:50:33', 0),
(839, 23, '2024-10-29', 'ФИО клиента 18', '+70000000018', 6, 4, 87, 129700, 0, '2024-10-29 01:51:03', 0, '2024-10-29 01:51:03', 0),
(840, 24, '2024-10-29', 'ФИО клиента 19', '+70000000019', 7, 4, 33, 44500, 0, '2024-10-29 01:51:22', 0, '2024-10-29 01:51:22', 0),
(841, 25, '2024-10-29', 'ФИО клиента 20', '+70000000020', 6, 3, 15, 7300, 0, '2024-10-29 01:51:45', 0, '2024-10-29 01:51:45', 0),
(842, 26, '2024-10-29', 'ФИО клиента 17', '+70000000017', 7, 2, 9, 18000, 0, '2024-10-29 01:52:26', 0, '2024-10-29 01:52:26', 0),
(843, 27, '2024-10-29', 'ФИО клиента 10', '+70000000010', 3, 1, 3, 300, 0, '2024-10-29 01:52:46', 0, '2024-10-29 01:52:46', 0),
(844, 28, '2024-10-29', 'ФИО клиента 20', '+70000000020', 9, 2, 5, 900, 0, '2024-10-29 01:53:05', 0, '2024-10-29 01:53:05', 0),
(845, 29, '2024-10-29', 'ФИО клиента 1', '+70000000001', 1, 3, 13, 23300, 0, '2024-10-29 01:53:30', 0, '2024-10-29 01:53:30', 0),
(846, 30, '2024-10-29', 'ФИО клиента 9', '+70000000009', 8, 1, 1, 1000, 0, '2024-10-29 01:53:51', 0, '2024-10-29 01:53:51', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `orders_products`
--

CREATE TABLE `orders_products` (
  `id` int(11) NOT NULL,
  `order_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `product_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(250) DEFAULT '',
  `price` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `q` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `sum` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `is_deleted` smallint(6) NOT NULL DEFAULT 0,
  `created` datetime DEFAULT NULL,
  `creator_id` int(11) NOT NULL DEFAULT 0,
  `modified` datetime DEFAULT NULL,
  `modifier_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Дамп данных таблицы `orders_products`
--

INSERT INTO `orders_products` (`id`, `order_id`, `product_id`, `name`, `price`, `q`, `sum`, `is_deleted`, `created`, `creator_id`, `modified`, `modifier_id`) VALUES
(2628, 815, 40, 'Товар 1', 100, 15, 1500, 0, '2024-10-29 01:35:50', 0, '2024-10-29 01:35:50', 0),
(2629, 815, 42, 'Товар 3', 1000, 450, 450000, 0, '2024-10-29 01:35:50', 0, '2024-10-29 01:35:50', 0),
(2630, 816, 40, 'Товар 1', 100, 153, 15300, 0, '2024-10-29 01:36:24', 0, '2024-10-29 01:36:24', 0),
(2631, 816, 43, 'Товар 4', 2500, 2, 5000, 0, '2024-10-29 01:36:24', 0, '2024-10-29 01:36:24', 0),
(2632, 816, 44, 'Товар 5', 5000, 54, 270000, 0, '2024-10-29 01:36:24', 0, '2024-10-29 01:36:24', 0),
(2633, 817, 41, 'Товар 2', 500, 30, 15000, 0, '2024-10-29 01:37:47', 0, '2024-10-29 01:37:47', 0),
(2634, 817, 43, 'Товар 4', 2500, 74, 185000, 0, '2024-10-29 01:37:47', 0, '2024-10-29 01:37:47', 0),
(2635, 817, 44, 'Товар 5', 5000, 76, 380000, 0, '2024-10-29 01:37:47', 0, '2024-10-29 01:37:47', 0),
(2636, 818, 40, 'Товар 1', 100, 53, 5300, 0, '2024-10-29 01:38:13', 0, '2024-10-29 01:38:13', 0),
(2637, 818, 42, 'Товар 3', 1000, 7, 7000, 0, '2024-10-29 01:38:13', 0, '2024-10-29 01:38:13', 0),
(2638, 818, 43, 'Товар 4', 2500, 92, 230000, 0, '2024-10-29 01:38:13', 0, '2024-10-29 01:38:13', 0),
(2639, 819, 44, 'Товар 5', 5000, 102, 510000, 0, '2024-10-29 01:38:35', 0, '2024-10-29 01:38:35', 0),
(2640, 820, 40, 'Товар 1', 100, 330, 33000, 0, '2024-10-29 01:38:56', 0, '2024-10-29 01:38:56', 0),
(2641, 820, 41, 'Товар 2', 500, 673, 336500, 0, '2024-10-29 01:38:56', 0, '2024-10-29 01:38:56', 0),
(2642, 821, 41, 'Товар 2', 500, 6, 3000, 0, '2024-10-29 01:39:28', 0, '2024-10-29 01:39:28', 0),
(2643, 821, 44, 'Товар 5', 5000, 228, 1140000, 0, '2024-10-29 01:39:28', 0, '2024-10-29 01:39:28', 0),
(2644, 822, 41, 'Товар 2', 500, 7, 3500, 0, '2024-10-29 01:40:01', 0, '2024-10-29 01:40:01', 0),
(2645, 822, 43, 'Товар 4', 2500, 532, 1330000, 0, '2024-10-29 01:40:01', 0, '2024-10-29 01:40:01', 0),
(2646, 823, 40, 'Товар 1', 100, 201, 20100, 0, '2024-10-29 01:41:05', 0, '2024-10-29 01:41:05', 0),
(2647, 823, 42, 'Товар 3', 1000, 7, 7000, 0, '2024-10-29 01:41:05', 0, '2024-10-29 01:41:05', 0),
(2648, 823, 44, 'Товар 5', 5000, 55, 275000, 0, '2024-10-29 01:41:05', 0, '2024-10-29 01:41:05', 0),
(2649, 824, 42, 'Товар 3', 1000, 100, 100000, 0, '2024-10-29 01:42:18', 0, '2024-10-29 01:42:18', 0),
(2650, 825, 40, 'Товар 1', 100, 7, 700, 0, '2024-10-29 01:43:52', 0, '2024-10-29 01:43:52', 0),
(2651, 825, 41, 'Товар 2', 500, 3, 1500, 0, '2024-10-29 01:43:52', 0, '2024-10-29 01:43:52', 0),
(2652, 825, 42, 'Товар 3', 1000, 64, 64000, 0, '2024-10-29 01:43:52', 0, '2024-10-29 01:43:52', 0),
(2653, 825, 43, 'Товар 4', 2500, 15, 37500, 0, '2024-10-29 01:43:52', 0, '2024-10-29 01:43:52', 0),
(2654, 825, 44, 'Товар 5', 5000, 27, 135000, 0, '2024-10-29 01:43:52', 0, '2024-10-29 01:43:52', 0),
(2655, 826, 44, 'Товар 5', 5000, 300, 1500000, 0, '2024-10-29 01:44:59', 0, '2024-10-29 01:44:59', 0),
(2656, 827, 40, 'Товар 1', 100, 74, 7400, 0, '2024-10-29 01:45:26', 0, '2024-10-29 01:45:26', 0),
(2657, 827, 42, 'Товар 3', 1000, 30, 30000, 0, '2024-10-29 01:45:26', 0, '2024-10-29 01:45:26', 0),
(2658, 827, 43, 'Товар 4', 2500, 55, 137500, 0, '2024-10-29 01:45:26', 0, '2024-10-29 01:45:26', 0),
(2659, 830, 41, 'Товар 2', 500, 170, 85000, 0, '2024-10-29 01:46:45', 0, '2024-10-29 01:46:45', 0),
(2660, 830, 42, 'Товар 3', 1000, 78, 78000, 0, '2024-10-29 01:46:45', 0, '2024-10-29 01:46:45', 0),
(2661, 830, 43, 'Товар 4', 2500, 36, 90000, 0, '2024-10-29 01:46:45', 0, '2024-10-29 01:46:45', 0),
(2662, 831, 41, 'Товар 2', 500, 16, 8000, 0, '2024-10-29 01:47:11', 0, '2024-10-29 01:47:11', 0),
(2663, 831, 43, 'Товар 4', 2500, 7, 17500, 0, '2024-10-29 01:47:11', 0, '2024-10-29 01:47:11', 0),
(2664, 831, 44, 'Товар 5', 5000, 34, 170000, 0, '2024-10-29 01:47:11', 0, '2024-10-29 01:47:11', 0),
(2665, 832, 40, 'Товар 1', 100, 7, 700, 0, '2024-10-29 01:47:42', 0, '2024-10-29 01:47:42', 0),
(2666, 832, 41, 'Товар 2', 500, 5, 2500, 0, '2024-10-29 01:47:42', 0, '2024-10-29 01:47:42', 0),
(2667, 832, 42, 'Товар 3', 1000, 64, 64000, 0, '2024-10-29 01:47:42', 0, '2024-10-29 01:47:42', 0),
(2668, 832, 43, 'Товар 4', 2500, 7, 17500, 0, '2024-10-29 01:47:42', 0, '2024-10-29 01:47:42', 0),
(2669, 832, 44, 'Товар 5', 5000, 4, 20000, 0, '2024-10-29 01:47:42', 0, '2024-10-29 01:47:42', 0),
(2670, 833, 40, 'Товар 1', 100, 5, 500, 0, '2024-10-29 01:48:10', 0, '2024-10-29 01:48:10', 0),
(2671, 833, 41, 'Товар 2', 500, 5, 2500, 0, '2024-10-29 01:48:10', 0, '2024-10-29 01:48:10', 0),
(2672, 833, 42, 'Товар 3', 1000, 17, 17000, 0, '2024-10-29 01:48:10', 0, '2024-10-29 01:48:10', 0),
(2673, 833, 43, 'Товар 4', 2500, 56, 140000, 0, '2024-10-29 01:48:10', 0, '2024-10-29 01:48:10', 0),
(2674, 834, 41, 'Товар 2', 500, 13, 6500, 0, '2024-10-29 01:48:45', 0, '2024-10-29 01:48:45', 0),
(2675, 834, 42, 'Товар 3', 1000, 4, 4000, 0, '2024-10-29 01:48:45', 0, '2024-10-29 01:48:45', 0),
(2676, 834, 43, 'Товар 4', 2500, 4, 10000, 0, '2024-10-29 01:48:45', 0, '2024-10-29 01:48:45', 0),
(2677, 834, 44, 'Товар 5', 5000, 56, 280000, 0, '2024-10-29 01:48:45', 0, '2024-10-29 01:48:45', 0),
(2678, 835, 40, 'Товар 1', 100, 35, 3500, 0, '2024-10-29 01:49:09', 0, '2024-10-29 01:49:09', 0),
(2679, 835, 42, 'Товар 3', 1000, 79, 79000, 0, '2024-10-29 01:49:09', 0, '2024-10-29 01:49:09', 0),
(2680, 835, 44, 'Товар 5', 5000, 4, 20000, 0, '2024-10-29 01:49:09', 0, '2024-10-29 01:49:09', 0),
(2681, 836, 40, 'Товар 1', 100, 5, 500, 0, '2024-10-29 01:49:35', 0, '2024-10-29 01:49:35', 0),
(2682, 836, 41, 'Товар 2', 500, 20, 10000, 0, '2024-10-29 01:49:35', 0, '2024-10-29 01:49:35', 0),
(2683, 836, 42, 'Товар 3', 1000, 37, 37000, 0, '2024-10-29 01:49:35', 0, '2024-10-29 01:49:35', 0),
(2684, 836, 43, 'Товар 4', 2500, 120, 300000, 0, '2024-10-29 01:49:35', 0, '2024-10-29 01:49:35', 0),
(2685, 837, 40, 'Товар 1', 100, 19, 1900, 0, '2024-10-29 01:50:04', 0, '2024-10-29 01:50:04', 0),
(2686, 837, 44, 'Товар 5', 5000, 32, 160000, 0, '2024-10-29 01:50:04', 0, '2024-10-29 01:50:04', 0),
(2687, 838, 40, 'Товар 1', 100, 66, 6600, 0, '2024-10-29 01:50:33', 0, '2024-10-29 01:50:33', 0),
(2688, 838, 42, 'Товар 3', 1000, 7, 7000, 0, '2024-10-29 01:50:33', 0, '2024-10-29 01:50:33', 0),
(2689, 839, 40, 'Товар 1', 100, 7, 700, 0, '2024-10-29 01:51:03', 0, '2024-10-29 01:51:03', 0),
(2690, 839, 41, 'Товар 2', 500, 14, 7000, 0, '2024-10-29 01:51:03', 0, '2024-10-29 01:51:03', 0),
(2691, 839, 42, 'Товар 3', 1000, 52, 52000, 0, '2024-10-29 01:51:03', 0, '2024-10-29 01:51:03', 0),
(2692, 839, 44, 'Товар 5', 5000, 14, 70000, 0, '2024-10-29 01:51:03', 0, '2024-10-29 01:51:03', 0),
(2693, 840, 40, 'Товар 1', 100, 10, 1000, 0, '2024-10-29 01:51:22', 0, '2024-10-29 01:51:22', 0),
(2694, 840, 41, 'Товар 2', 500, 15, 7500, 0, '2024-10-29 01:51:22', 0, '2024-10-29 01:51:22', 0),
(2695, 840, 42, 'Товар 3', 1000, 1, 1000, 0, '2024-10-29 01:51:22', 0, '2024-10-29 01:51:22', 0),
(2696, 840, 44, 'Товар 5', 5000, 7, 35000, 0, '2024-10-29 01:51:22', 0, '2024-10-29 01:51:22', 0),
(2697, 841, 40, 'Товар 1', 100, 3, 300, 0, '2024-10-29 01:51:45', 0, '2024-10-29 01:51:45', 0),
(2698, 841, 41, 'Товар 2', 500, 10, 5000, 0, '2024-10-29 01:51:45', 0, '2024-10-29 01:51:45', 0),
(2699, 841, 42, 'Товар 3', 1000, 2, 2000, 0, '2024-10-29 01:51:45', 0, '2024-10-29 01:51:45', 0),
(2700, 842, 41, 'Товар 2', 500, 6, 3000, 0, '2024-10-29 01:52:26', 0, '2024-10-29 01:52:26', 0),
(2701, 842, 44, 'Товар 5', 5000, 3, 15000, 0, '2024-10-29 01:52:26', 0, '2024-10-29 01:52:26', 0),
(2702, 843, 40, 'Товар 1', 100, 3, 300, 0, '2024-10-29 01:52:46', 0, '2024-10-29 01:52:46', 0),
(2703, 844, 40, 'Товар 1', 100, 4, 400, 0, '2024-10-29 01:53:05', 0, '2024-10-29 01:53:05', 0),
(2704, 844, 41, 'Товар 2', 500, 1, 500, 0, '2024-10-29 01:53:05', 0, '2024-10-29 01:53:05', 0),
(2705, 845, 40, 'Товар 1', 100, 3, 300, 0, '2024-10-29 01:53:30', 0, '2024-10-29 01:53:30', 0),
(2706, 845, 41, 'Товар 2', 500, 6, 3000, 0, '2024-10-29 01:53:30', 0, '2024-10-29 01:53:30', 0),
(2707, 845, 44, 'Товар 5', 5000, 4, 20000, 0, '2024-10-29 01:53:30', 0, '2024-10-29 01:53:30', 0),
(2708, 846, 42, 'Товар 3', 1000, 1, 1000, 0, '2024-10-29 01:53:51', 0, '2024-10-29 01:53:51', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT '',
  `q` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `price` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `is_deleted` smallint(6) NOT NULL DEFAULT 0,
  `created` datetime DEFAULT NULL,
  `creator_id` int(11) NOT NULL DEFAULT 0,
  `modified` datetime DEFAULT NULL,
  `modifier_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `name`, `q`, `price`, `is_deleted`, `created`, `creator_id`, `modified`, `modifier_id`) VALUES
(40, 'Товар 1', 0, 100, 0, '2024-10-28 16:44:11', 1, '2024-10-29 01:53:30', 1),
(41, 'Товар 2', 0, 500, 0, '2024-10-28 16:44:25', 1, '2024-10-29 01:53:30', 1),
(42, 'Товар 3', 0, 1000, 0, '2024-10-28 16:44:38', 1, '2024-10-29 01:53:51', 1),
(43, 'Товар 4', 0, 2500, 0, '2024-10-28 16:45:49', 1, '2024-10-29 01:49:35', 1),
(44, 'Товар 5', 0, 5000, 0, '2024-10-28 16:46:13', 1, '2024-10-29 01:53:30', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `regions`
--

CREATE TABLE `regions` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT '',
  `is_deleted` smallint(6) NOT NULL DEFAULT 0,
  `created` datetime DEFAULT NULL,
  `creator_id` int(11) NOT NULL DEFAULT 0,
  `modified` datetime DEFAULT NULL,
  `modifier_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Дамп данных таблицы `regions`
--

INSERT INTO `regions` (`id`, `name`, `is_deleted`, `created`, `creator_id`, `modified`, `modifier_id`) VALUES
(1, 'Северо-запад', 0, '2024-08-13 20:57:50', 1, '2024-08-13 20:57:50', 1),
(2, 'Центр', 0, '2024-08-13 20:57:50', 1, '2024-08-13 20:57:50', 1),
(3, 'ЧТЗ', 0, '2024-08-13 20:57:50', 1, '2024-08-13 20:57:50', 1),
(4, 'ЧМЗ', 0, '2024-08-13 20:57:50', 1, '2024-08-13 20:57:50', 1),
(5, 'Ленинский', 0, '2024-08-13 20:57:50', 1, '2024-08-13 20:57:50', 1),
(6, 'Другой город', 0, '2024-08-13 20:57:50', 1, '2024-08-13 20:57:50', 1),
(7, ' Админ ', 0, '2024-08-14 22:56:23', 1, '2024-08-14 22:56:23', 1),
(8, 'Сад самовывоз ', 0, '2024-08-15 11:07:44', 1, '2024-08-15 11:07:44', 1),
(9, 'АМЗ', 0, '2024-08-23 22:00:00', 1, '2024-08-23 22:00:00', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstname` varchar(100) DEFAULT '',
  `lastname` varchar(100) DEFAULT '',
  `surname` varchar(100) DEFAULT '',
  `fullname` varchar(255) DEFAULT '',
  `fio` varchar(255) DEFAULT '',
  `email` varchar(255) DEFAULT '',
  `phone` varchar(100) DEFAULT '',
  `password_hash` varchar(60) DEFAULT '',
  `type` smallint(6) NOT NULL DEFAULT 0,
  `auth_key` varchar(32) DEFAULT '',
  `is_deleted` smallint(6) NOT NULL DEFAULT 0,
  `created` datetime DEFAULT NULL,
  `creator_id` int(11) NOT NULL DEFAULT 0,
  `modified` datetime DEFAULT NULL,
  `modifier_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `surname`, `fullname`, `fio`, `email`, `phone`, `password_hash`, `type`, `auth_key`, `is_deleted`, `created`, `creator_id`, `modified`, `modifier_id`) VALUES
(1, 'Test', 'User', '', 'Test User', 'Test U.', 'max@mail.ru', '+7123456789', '$2y$13$zl2HEuITxGod5tNUh0wwYeimFX1GEtQwNjyxtkn3vD2Sv41uWql3W', 1, '', 0, NULL, 0, NULL, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `vars`
--

CREATE TABLE `vars` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(30) NOT NULL DEFAULT '',
  `type` smallint(1) UNSIGNED NOT NULL DEFAULT 0,
  `value` varchar(100) NOT NULL DEFAULT '',
  `values` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`values`)),
  `description` varchar(255) DEFAULT '',
  `is_deleted` smallint(6) UNSIGNED NOT NULL DEFAULT 0,
  `created` datetime DEFAULT NULL,
  `creator_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `modified` datetime DEFAULT NULL,
  `modifier_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `orders_products`
--
ALTER TABLE `orders_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx-orders_products-order_id` (`order_id`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `regions`
--
ALTER TABLE `regions`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `vars`
--
ALTER TABLE `vars`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx-vars-key` (`key`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=847;

--
-- AUTO_INCREMENT для таблицы `orders_products`
--
ALTER TABLE `orders_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2709;

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT для таблицы `regions`
--
ALTER TABLE `regions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `vars`
--
ALTER TABLE `vars`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;