-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 13, 2023 at 03:18 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quickpaisa_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `bank_details`
--

CREATE TABLE `bank_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `bankName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `accountNumber` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bankBalance` double DEFAULT NULL,
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bank_details`
--

INSERT INTO `bank_details` (`id`, `user_id`, `bankName`, `accountNumber`, `bankBalance`, `currency`, `created_at`, `updated_at`) VALUES
(1, 2, 'Hannoversche Volksbank', 'DE49359121205840240172', 0, 'PKR', '2023-05-13 08:18:17', '2023-05-13 08:18:17');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `homepage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `walletAddress` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `user_id`, `name`, `homepage`, `avatar`, `walletAddress`, `created_at`, `updated_at`) VALUES
(1, 2, 'Uber Eats', 'ubereats.com', 'uber-eats-logo.jpg', 'QIFVtgo5nV6vIbmIBXSbNqBD4yvBprVQNP', '2023-05-13 08:18:17', '2023-05-13 08:18:17');

-- --------------------------------------------------------

--
-- Table structure for table `brand_products`
--

CREATE TABLE `brand_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `brand_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double DEFAULT NULL,
  `banner` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `walletAddress` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brand_products`
--

INSERT INTO `brand_products` (`id`, `user_id`, `brand_id`, `title`, `amount`, `banner`, `walletAddress`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 'Incredible Steel Car', 866, NULL, 'ZRGrn5TgjRVudPi3KTivWQmCHfVLJhgqnB', '2023-05-13 08:18:17', '2023-05-13 08:18:17'),
(2, 2, 1, 'Gorgeous Linen Chair', 615, NULL, 'lzYlWnFtTCXII1Eidb9hTOVEvkIYG3uJLm', '2023-05-13 08:18:17', '2023-05-13 08:18:17'),
(3, 2, 1, 'Incredible Linen Bottle', 673, NULL, 'sAmdW417GKFaQNo1Ao5aaxThtuj6mH2n8i', '2023-05-13 08:18:17', '2023-05-13 08:18:17'),
(4, 2, 1, 'Enormous Paper Shirt', 855, NULL, '6XTg5OJF7ZhmluAwLdv02JDUIX7wBkgC8X', '2023-05-13 08:18:17', '2023-05-13 08:18:17'),
(5, 2, 1, 'Sleek Marble Shirt', 324, NULL, 'mSxn5ZbGGokDpqDy41BICpcdFm9DXxk0TU', '2023-05-13 08:18:17', '2023-05-13 08:18:17');

-- --------------------------------------------------------

--
-- Table structure for table `cards`
--

CREATE TABLE `cards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `cardNumber` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cvv` int(11) NOT NULL,
  `cardPin` int(11) NOT NULL,
  `expiryDate` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cardBrand` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cards`
--

INSERT INTO `cards` (`id`, `user_id`, `cardNumber`, `cvv`, `cardPin`, `expiryDate`, `cardBrand`, `created_at`, `updated_at`) VALUES
(1, 2, '5436046822163628', 882, 3282, '05/25', 'American Express', '2023-05-13 08:18:17', '2023-05-13 08:18:17'),
(2, 2, '2720317652985824', 274, 6991, '06/25', 'Discover Card', '2023-05-13 08:18:17', '2023-05-13 08:18:17'),
(3, 2, '4532579172144679', 277, 6872, '05/24', 'MasterCard', '2023-05-13 08:18:17', '2023-05-13 08:18:17');

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
-- Table structure for table `local_contacts`
--

CREATE TABLE `local_contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emailAddress` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phoneNumber` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `communicationAddress` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `walletAddress` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `local_contacts`
--

INSERT INTO `local_contacts` (`id`, `user_id`, `name`, `emailAddress`, `phoneNumber`, `avatar`, `communicationAddress`, `walletAddress`, `created_at`, `updated_at`) VALUES
(1, 2, 'Emely Marks', 'anahi97@example.org', '1-779-523-9543', 'https://via.placeholder.com/128x128.png/CCCCCC?text=E', '75383 Hunter Mission Suite 416\nNew Rachaelberg, ME 79063', 'qBS3CPwr8NAsWg4cL6Y3ihMIHf80sTSpXd', '2023-05-13 08:18:17', '2023-05-13 08:18:17'),
(2, 2, 'Dr. King Pfannerstill', 'lowe.dangelo@example.net', '1-440-701-5569', 'https://via.placeholder.com/128x128.png/CCCCCC?text=D', '656 Gordon Mountains Suite 336\nMyrtismouth, HI 15682-0851', 'yJE2SWVjomjU4PnH5E4NVmVWlmG80VEghO', '2023-05-13 08:18:17', '2023-05-13 08:18:17'),
(3, 2, 'Edward Barton', 'jett64@example.com', '980.830.0909', 'https://via.placeholder.com/128x128.png/CCCCCC?text=E', '174 Hauck Station Suite 207\nPort Jeromyville, MS 89673', 'IyxMQaVO29iSAgqeF4SMmkV9lGJdGGVGrm', '2023-05-13 08:18:17', '2023-05-13 08:18:17'),
(4, 2, 'Lynn Schulist', 'camryn04@example.org', '+1 (240) 860-6216', 'https://via.placeholder.com/128x128.png/CCCCCC?text=L', '479 Walter Club Suite 675\nYvonnechester, NV 07339', 'hindODggw25OpwmVXvhcaw0du3AV5PsKRe', '2023-05-13 08:18:17', '2023-05-13 08:18:17'),
(5, 2, 'Mrs. Mittie Willms DVM', 'katlyn.marks@example.org', '+1.702.380.6662', 'https://via.placeholder.com/128x128.png/CCCCCC?text=M', '51487 Simonis Place\nPort Janessa, UT 36638', 'YDVQ2Dz3oJRvb75CtJ1nOdMkSDgqNKfHlO', '2023-05-13 08:18:17', '2023-05-13 08:18:17'),
(6, 2, 'Joanie Hand', 'craig63@example.net', '(520) 727-0799', 'https://via.placeholder.com/128x128.png/CCCCCC?text=J', '934 Larue Lakes\nWest Russburgh, NV 09552', 'RC3q1muBWUIm2l6aRfVPNzE0gKRuXefCWx', '2023-05-13 08:18:17', '2023-05-13 08:18:17'),
(7, 2, 'Sean Schimmel', 'monahan.veda@example.net', '+1-646-770-0296', 'https://via.placeholder.com/128x128.png/CCCCCC?text=S', '45055 Cristian Port\nLake Ramonamouth, CO 77046-8650', 'ks1OmXKiLEQcktfHLb5q98XafPcOd0HFKX', '2023-05-13 08:18:17', '2023-05-13 08:18:17'),
(8, 2, 'Miss Sienna Wiegand IV', 'pkihn@example.net', '+1 (260) 661-0788', 'https://via.placeholder.com/128x128.png/CCCCCC?text=M', '8563 Mafalda Rue\nWest Kristoferberg, IA 33009', 'ZSlA075KdoCCuLBoYYRoYN4gD8LTQJ7L3y', '2023-05-13 08:18:17', '2023-05-13 08:18:17'),
(9, 2, 'Ellie Heaney', 'mlehner@example.com', '1-640-886-2030', 'https://via.placeholder.com/128x128.png/CCCCCC?text=E', '10745 Hackett Rue Suite 516\nPaulside, NH 92227-9120', 'uP3ZZxp8ETU67y343eDwtpqLa43CtEz2k3', '2023-05-13 08:18:17', '2023-05-13 08:18:17'),
(10, 2, 'Jess Wisozk', 'zfadel@example.org', '260-998-4965', 'https://via.placeholder.com/128x128.png/CCCCCC?text=J', '1487 Bogan Heights\nDavisside, TX 61352-6241', 'RoXAuPgSCh0pzg3azNKEyWiukdTOQWxtg0', '2023-05-13 08:18:17', '2023-05-13 08:18:17'),
(11, 2, 'Millie Breitenberg', 'herbert89@example.org', '1-818-786-7016', 'https://via.placeholder.com/128x128.png/CCCCCC?text=M', '6414 Lucinda Place Suite 980\nLarkintown, TN 85197', '1Oz2dD06B4uyuLwvApJ2TSq8T0LSzTYiWw', '2023-05-13 08:18:17', '2023-05-13 08:18:17'),
(12, 2, 'Dr. Bobbie Anderson PhD', 'zeffertz@example.net', '1-820-892-6682', 'https://via.placeholder.com/128x128.png/CCCCCC?text=D', '61469 Bergstrom Path Suite 715\nHillsville, IN 36817-9887', 'vFsC0fU0KzYy1LsMnXdOkKirGLz0yjfzeN', '2023-05-13 08:18:17', '2023-05-13 08:18:17'),
(13, 2, 'Rupert Hill', 'ian66@example.org', '+1.240.421.7376', 'https://via.placeholder.com/128x128.png/CCCCCC?text=R', '18333 Jade Cove Apt. 811\nMichelleborough, SD 43378-9695', '5aEqDQjepRI5SnMW08C7Bme9Oa3yV9dF3k', '2023-05-13 08:18:17', '2023-05-13 08:18:17'),
(14, 2, 'Ms. Monica Kunde PhD', 'noble47@example.com', '+15208305359', 'https://via.placeholder.com/128x128.png/CCCCCC?text=M', '6131 Wintheiser Camp Apt. 640\nEast Moniqueland, DC 29817-1376', 'YHqDTOo4TvBZSwAPAbZaRzovZsbYr6ADEm', '2023-05-13 08:18:17', '2023-05-13 08:18:17'),
(15, 2, 'Everett Hyatt I', 'ooreilly@example.net', '+18608622934', 'https://via.placeholder.com/128x128.png/CCCCCC?text=E', '89303 Peggie Shores\nWest Fern, KS 70147-6720', 'CoIpqXfXGWZrO03hnlYBjULt8vdVP13kb9', '2023-05-13 08:18:17', '2023-05-13 08:18:17'),
(16, 2, 'Hallie Ferry DVM', 'luisa71@example.net', '+1.260.455.6133', 'https://via.placeholder.com/128x128.png/CCCCCC?text=H', '9811 Elouise Greens Apt. 488\nNorth Karlieshire, SD 23567-8908', 'NWMVWY1dcjHqUtj462JCy6yLDteduaGolH', '2023-05-13 08:18:17', '2023-05-13 08:18:17'),
(17, 2, 'Caden Monahan', 'wava.little@example.org', '+1 (657) 320-1090', 'https://via.placeholder.com/128x128.png/CCCCCC?text=C', '71587 Beahan Stravenue Suite 178\nVernertown, ID 46377', 'OvbqUUw4sWSWSicDscIQLrodS74zgljfye', '2023-05-13 08:18:17', '2023-05-13 08:18:17'),
(18, 2, 'Prof. Susan Kuvalis II', 'tara40@example.com', '+1-934-504-7638', 'https://via.placeholder.com/128x128.png/CCCCCC?text=P', '61416 Clarissa Squares\nJeramyfurt, NE 01991', 'yRHUu8mIzesM53OfikGZdbzKAsQD1CzHZn', '2023-05-13 08:18:17', '2023-05-13 08:18:17'),
(19, 2, 'Kennith Schmitt', 'gerhold.dolores@example.com', '+1-281-630-8221', 'https://via.placeholder.com/128x128.png/CCCCCC?text=K', '9905 Elvis Rue\nSouth Olliehaven, LA 51471-1450', '0zw3vhUIp15SE0sCLKcp3Fktaz4s1EcXmW', '2023-05-13 08:18:17', '2023-05-13 08:18:17'),
(20, 2, 'Jennie Ratke', 'cgibson@example.com', '956.825.7002', 'https://via.placeholder.com/128x128.png/CCCCCC?text=J', '4178 Wendell Forks\nSouth Veronicamouth, AL 85041', 'A8lsal4I7PPYM2IhX2VJFnfzNLUJdBMcCO', '2023-05-13 08:18:17', '2023-05-13 08:18:17');

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
(469, '2014_10_12_000000_create_users_table', 1),
(470, '2014_10_12_100000_create_password_resets_table', 1),
(471, '2019_08_19_000000_create_failed_jobs_table', 1),
(472, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(473, '2022_01_12_173356_create_permission_tables', 1),
(474, '2023_04_30_133409_create_local_contacts_table', 1),
(475, '2023_05_01_093946_create_bank_details_table', 1),
(476, '2023_05_01_095808_create_cards_table', 1),
(477, '2023_05_01_103442_create_transactions_table', 1),
(478, '2023_05_07_035132_create_brands_table', 1),
(479, '2023_05_10_075117_create_brand_products_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1);

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'user-list', 'web', '2023-05-13 08:18:17', '2023-05-13 08:18:17'),
(2, 'user-create', 'web', '2023-05-13 08:18:17', '2023-05-13 08:18:17'),
(3, 'user-edit', 'web', '2023-05-13 08:18:17', '2023-05-13 08:18:17'),
(4, 'user-delete', 'web', '2023-05-13 08:18:17', '2023-05-13 08:18:17'),
(5, 'role-create', 'web', '2023-05-13 08:18:18', '2023-05-13 08:18:18'),
(6, 'role-edit', 'web', '2023-05-13 08:18:18', '2023-05-13 08:18:18'),
(7, 'role-list', 'web', '2023-05-13 08:18:18', '2023-05-13 08:18:18'),
(8, 'role-delete', 'web', '2023-05-13 08:18:18', '2023-05-13 08:18:18'),
(9, 'permission-list', 'web', '2023-05-13 08:18:18', '2023-05-13 08:18:18'),
(10, 'permission-create', 'web', '2023-05-13 08:18:18', '2023-05-13 08:18:18'),
(11, 'permission-edit', 'web', '2023-05-13 08:18:18', '2023-05-13 08:18:18'),
(12, 'permission-delete', 'web', '2023-05-13 08:18:18', '2023-05-13 08:18:18');

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

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'web', '2023-05-13 08:18:17', '2023-05-13 08:18:17'),
(2, 'User', 'web', '2023-05-13 08:18:17', '2023-05-13 08:18:17');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transactionID` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `transactionType` enum('debit','credit') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'credit',
  `transactionAmount` double NOT NULL DEFAULT 0,
  `transactionMemberName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transactionMemberBusinessWebsite` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transactionMemberAvatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transactionMemberPhoneNumber` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transactionDate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transactionMemberWalletAddress` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transactionInitiatorName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transactionInitiatorEmail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transactionInitiatorPhoneNumber` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transactionInitiatorBankName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transactionInitiatorBankAccountNo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transactionInitiatorUid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transactionInitiatorWalletAddress` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transactionNote` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transactionCategory` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `walletAddress` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_id` int(11) NOT NULL DEFAULT 2 COMMENT '1=Admin, 2=TA/TP',
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `uid`, `first_name`, `username`, `email`, `last_name`, `avatar`, `phone_number`, `walletAddress`, `password`, `role_id`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, '580ba884-c14d-3ff1-aa93-d466d9601320', 'Super', 'admin', 'admin@admin.com', 'Admin', NULL, '9028187696', NULL, '$2y$10$u63FolJB2ucMc7C0iI78j.SpCRRlHxs/Yahk2hY1XpFnMHsZuLLoy', 1, 1, NULL, '2023-05-13 08:18:17', '2023-05-13 08:18:17'),
(2, 'e2b7e80c-9d8b-37d5-b521-0844eb04b247', 'Mary', 'mary.kertzmann', 'mary.kertzmann@gmail.com', 'Kertzmann', NULL, '03061256545', 'ifsoloWLOcqNhfGS4Ln9U7KbM2R4RvHRKE', '$2y$10$ROp.ysrW38qpXLWilf05eOFIzQ1lVO9WlHXxI1QKBniD5VCs.6UUS', 2, 1, NULL, '2023-05-13 08:18:17', '2023-05-13 08:18:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bank_details`
--
ALTER TABLE `bank_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bank_details_user_id_foreign` (`user_id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD KEY `brands_user_id_foreign` (`user_id`);

--
-- Indexes for table `brand_products`
--
ALTER TABLE `brand_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `brand_products_user_id_foreign` (`user_id`),
  ADD KEY `brand_products_brand_id_foreign` (`brand_id`);

--
-- Indexes for table `cards`
--
ALTER TABLE `cards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cards_user_id_foreign` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `local_contacts`
--
ALTER TABLE `local_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `local_contacts_user_id_foreign` (`user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_user_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_uid_unique` (`uid`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bank_details`
--
ALTER TABLE `bank_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `brand_products`
--
ALTER TABLE `brand_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cards`
--
ALTER TABLE `cards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `local_contacts`
--
ALTER TABLE `local_contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=480;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bank_details`
--
ALTER TABLE `bank_details`
  ADD CONSTRAINT `bank_details_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `brands`
--
ALTER TABLE `brands`
  ADD CONSTRAINT `brands_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `brand_products`
--
ALTER TABLE `brand_products`
  ADD CONSTRAINT `brand_products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `brand_products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cards`
--
ALTER TABLE `cards`
  ADD CONSTRAINT `cards_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `local_contacts`
--
ALTER TABLE `local_contacts`
  ADD CONSTRAINT `local_contacts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
