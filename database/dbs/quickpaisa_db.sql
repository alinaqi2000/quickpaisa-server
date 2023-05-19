-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 19, 2023 at 08:45 AM
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
(1, 2, 'Deutsche Kreditbank', 'DE87910537482822701971', 0, 'PKR', '2023-05-19 01:39:50', '2023-05-19 01:39:50');

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
(1, 2, 'JIMIS BURGER', 'facebook.com/jimisburger/', 'jimis-burger-optimized-logo.jpg', 'suf7E8Xor5w2zIh6Z4xE8ha97E8evPTFlG', '2023-05-19 01:39:50', '2023-05-19 01:39:50');

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
(1, 2, 1, 'Fantastic Cotton Gloves', 888, NULL, 'DeIgxsUtZFJQvEz0yO0Hjv4kT8f2qmQgby', '2023-05-19 01:39:50', '2023-05-19 01:39:50'),
(2, 2, 1, 'Aerodynamic Leather Wallet', 407, NULL, 'mB5c51GY2OS9CRzydJUO4QGduOY0mkDjFs', '2023-05-19 01:39:50', '2023-05-19 01:39:50'),
(3, 2, 1, 'Synergistic Copper Computer', 445, NULL, '9tJMbK7nJfVwf7LI2CAbPOsfcejPPd5ub5', '2023-05-19 01:39:50', '2023-05-19 01:39:50'),
(4, 2, 1, 'Sleek Wool Wallet', 182, NULL, 'Q3Kby1zK3lYi0d0vDnFYZ3Pw4t95vtkGYz', '2023-05-19 01:39:50', '2023-05-19 01:39:50'),
(5, 2, 1, 'Synergistic Silk Keyboard', 199, NULL, 'hJvVfU0g3IT2zloCHFV4Ird9dMO8pAx50D', '2023-05-19 01:39:50', '2023-05-19 01:39:50');

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
(1, 2, '4916293234383533', 445, 8615, '05/25', 'MasterCard', '2023-05-19 01:39:50', '2023-05-19 01:39:50'),
(2, 2, '5398288033366790', 775, 3180, '12/25', 'Discover Card', '2023-05-19 01:39:50', '2023-05-19 01:39:50'),
(3, 2, '4485530222562656', 619, 5352, '05/25', 'Visa', '2023-05-19 01:39:50', '2023-05-19 01:39:50');

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
(1, 2, 'Eden Heaney', 'dedrick.bosco@example.org', '+1 (283) 731-5315', 'https://via.placeholder.com/128x128.png/CCCCCC?text=E', '487 Jeanette Villages\nKeatonburgh, DC 99433', 'kRGJPzM9PxRaeDeKKJDhr2mpFlPCEup5ly', '2023-05-19 01:39:50', '2023-05-19 01:39:50'),
(2, 2, 'Frederique Effertz', 'herminio52@example.net', '+1-419-334-3860', 'https://via.placeholder.com/128x128.png/CCCCCC?text=F', '5347 Gusikowski Mills Apt. 875\nNorth Adrienne, IN 03750', '4umccCNLAc4OvscXTy7HJ9e86i45zGmNev', '2023-05-19 01:39:50', '2023-05-19 01:39:50'),
(3, 2, 'Ramona Kling', 'runte.pauline@example.com', '1-980-716-0319', 'https://via.placeholder.com/128x128.png/CCCCCC?text=R', '2481 Sanford Gateway Suite 188\nEast Corbin, ME 75258-1314', 'pAo0rEQOFbvyebGaYZOxBIdrDN2RdpkRb7', '2023-05-19 01:39:50', '2023-05-19 01:39:50'),
(4, 2, 'Chet Nikolaus', 'gulgowski.karson@example.com', '+1 (972) 405-0827', 'https://via.placeholder.com/128x128.png/CCCCCC?text=C', '1005 Albina Cove\nAbshirebury, WV 78109-3954', 'yFWygJGmWWZgIuoUBD0OSr94ZApGaVONJE', '2023-05-19 01:39:50', '2023-05-19 01:39:50'),
(5, 2, 'Prof. Annabelle Torphy', 'roger29@example.com', '1-762-286-2599', 'https://via.placeholder.com/128x128.png/CCCCCC?text=P', '637 Koss Island\nLangoshville, DC 51963', 'te84WLVJWhkWryWNR4iTA0hcJxNveCfvlt', '2023-05-19 01:39:50', '2023-05-19 01:39:50'),
(6, 2, 'Angelina Mueller', 'ewill@example.com', '(620) 707-3385', 'https://via.placeholder.com/128x128.png/CCCCCC?text=A', '342 Mills Trace Suite 463\nNew Brendonchester, VA 12910', '1wAwLGcDhaenN9eVX4SIIpYhczsQw1wW93', '2023-05-19 01:39:50', '2023-05-19 01:39:50'),
(7, 2, 'Josephine White', 'carley.okon@example.org', '931-980-1770', 'https://via.placeholder.com/128x128.png/CCCCCC?text=J', '661 Will Inlet Suite 581\nRockyhaven, MN 94329-2077', '0tKy63Hu8bIjf4IUsusAeoiJX5Wiupl4kQ', '2023-05-19 01:39:50', '2023-05-19 01:39:50'),
(8, 2, 'Dr. Selina Marks', 'vlangworth@example.net', '786-548-1271', 'https://via.placeholder.com/128x128.png/CCCCCC?text=D', '9241 Ramon Bridge Suite 135\nNorth Kendratown, ND 85204', '6zRYOOzC2B3riWjujRiSyc9oHsRIj7SFhJ', '2023-05-19 01:39:50', '2023-05-19 01:39:50'),
(9, 2, 'Yvette Orn', 'kraig.lemke@example.net', '+1 (531) 478-6413', 'https://via.placeholder.com/128x128.png/CCCCCC?text=Y', '9747 Kohler Hills\nKeatontown, WI 92442-2053', '7GO1gtnm7FlAjYcRTo7TIYiY7EDyD5gBra', '2023-05-19 01:39:50', '2023-05-19 01:39:50'),
(10, 2, 'Daryl Feeney Sr.', 'ohamill@example.net', '(580) 736-3489', 'https://via.placeholder.com/128x128.png/CCCCCC?text=D', '540 Shania Streets Apt. 852\nArmandoberg, SC 18285-6596', 'pEQD3X2AgBwFV2AFEwVC2O5LtfQurGLQBq', '2023-05-19 01:39:50', '2023-05-19 01:39:50'),
(11, 2, 'Dr. Elva Haag DDS', 'dewayne46@example.com', '(337) 658-7989', 'https://via.placeholder.com/128x128.png/CCCCCC?text=D', '237 Klocko Bypass Suite 915\nConnerville, MS 49922', '4tJ0uQz4sU8gmOsrNr67ZalzVs1nnyLl19', '2023-05-19 01:39:50', '2023-05-19 01:39:50'),
(12, 2, 'Miss Emelia Doyle IV', 'ddicki@example.net', '(720) 912-3478', 'https://via.placeholder.com/128x128.png/CCCCCC?text=M', '1052 Roselyn Center\nSydnifort, WI 94717', 'CEVhcahoq8A1z6ztwKhCIMi6q6WpFym3BD', '2023-05-19 01:39:50', '2023-05-19 01:39:50'),
(13, 2, 'Spencer Parisian', 'myrtle.moore@example.org', '1-804-624-0544', 'https://via.placeholder.com/128x128.png/CCCCCC?text=S', '498 Opal Fort Suite 512\nNew Jaclyn, WV 82797', '2sBmQ1beOgvnFa3pyrvZTT93T7DiMoGHbc', '2023-05-19 01:39:50', '2023-05-19 01:39:50'),
(14, 2, 'Robbie O\'Connell', 'colton.larson@example.net', '+1 (516) 754-6813', 'https://via.placeholder.com/128x128.png/CCCCCC?text=R', '3481 Bins Shore\nAndrehaven, SC 94805', 'o5zK3RNW8HCZOim9amBaHJcHqu83lEX6tw', '2023-05-19 01:39:50', '2023-05-19 01:39:50'),
(15, 2, 'Deron Collins', 'nokuneva@example.com', '320-800-9118', 'https://via.placeholder.com/128x128.png/CCCCCC?text=D', '14852 Rafael Vista Apt. 915\nTorphaven, IN 49497', '8zz26UEOG3lYl8uuzT8vvsSBHlJKBPuTCE', '2023-05-19 01:39:50', '2023-05-19 01:39:50'),
(16, 2, 'Mrs. Eliane Hand', 'koss.amira@example.net', '1-304-440-3042', 'https://via.placeholder.com/128x128.png/CCCCCC?text=M', '70561 Ernser Dam\nNorth Estherland, MT 47884-8980', 'dxk21HqQRmAF2xCw06Yo86jY3S4SmwEH4m', '2023-05-19 01:39:50', '2023-05-19 01:39:50'),
(17, 2, 'Candice Schinner III', 'maurine.cummerata@example.org', '772.358.0362', 'https://via.placeholder.com/128x128.png/CCCCCC?text=C', '96282 Orrin Curve\nNew Magnoliatown, CT 00368-0730', 'CKGslkwkqrSy9uTfB1EdR5uAbGyhwRwnAL', '2023-05-19 01:39:50', '2023-05-19 01:39:50'),
(18, 2, 'Sadie Witting', 'horacio48@example.net', '1-916-922-6229', 'https://via.placeholder.com/128x128.png/CCCCCC?text=S', '81161 Howell Plaza Suite 427\nNorth Janetton, HI 07248-7949', 'NXeMxBjKnjKHUtAuJ981o9G3gXY8nJw9VG', '2023-05-19 01:39:50', '2023-05-19 01:39:50'),
(19, 2, 'Dr. Efren Kiehn I', 'hauck.cedrick@example.net', '308.203.2555', 'https://via.placeholder.com/128x128.png/CCCCCC?text=D', '546 Ondricka Extension\nLake Lamont, IL 31721-6169', 't2u6wHlrNP99Cyf6kp7lQJkatUFyGLajL9', '2023-05-19 01:39:50', '2023-05-19 01:39:50'),
(20, 2, 'Dr. Johnnie Grady', 'ftreutel@example.net', '(520) 680-1904', 'https://via.placeholder.com/128x128.png/CCCCCC?text=D', '795 Pacocha Throughway\nMikeside, NY 72991', 'V45AYQvqRKS6foeI1pW3GtTXHPjfcB5zBS', '2023-05-19 01:39:50', '2023-05-19 01:39:50');

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
(67, '2014_10_12_100000_create_password_resets_table', 1),
(68, '2019_08_19_000000_create_failed_jobs_table', 1),
(69, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(70, '2022_01_12_173356_create_permission_tables', 1),
(71, '2022_11_12_000000_create_users_table', 1),
(72, '2023_04_30_133409_create_local_contacts_table', 1),
(73, '2023_05_01_093946_create_bank_details_table', 1),
(74, '2023_05_01_095808_create_cards_table', 1),
(75, '2023_05_01_103442_create_transactions_table', 1),
(76, '2023_05_07_035132_create_brands_table', 1),
(77, '2023_05_10_075117_create_brand_products_table', 1);

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
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 3);

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
(1, 'user-list', 'web', '2023-05-19 01:39:50', '2023-05-19 01:39:50'),
(2, 'user-create', 'web', '2023-05-19 01:39:50', '2023-05-19 01:39:50'),
(3, 'user-edit', 'web', '2023-05-19 01:39:50', '2023-05-19 01:39:50'),
(4, 'user-delete', 'web', '2023-05-19 01:39:50', '2023-05-19 01:39:50'),
(5, 'role-create', 'web', '2023-05-19 01:39:50', '2023-05-19 01:39:50'),
(6, 'role-edit', 'web', '2023-05-19 01:39:50', '2023-05-19 01:39:50'),
(7, 'role-list', 'web', '2023-05-19 01:39:50', '2023-05-19 01:39:50'),
(8, 'role-delete', 'web', '2023-05-19 01:39:50', '2023-05-19 01:39:50'),
(9, 'permission-list', 'web', '2023-05-19 01:39:50', '2023-05-19 01:39:50'),
(10, 'permission-create', 'web', '2023-05-19 01:39:50', '2023-05-19 01:39:50'),
(11, 'permission-edit', 'web', '2023-05-19 01:39:50', '2023-05-19 01:39:50'),
(12, 'permission-delete', 'web', '2023-05-19 01:39:50', '2023-05-19 01:39:50');

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
(1, 'Admin', 'web', '2023-05-19 01:39:50', '2023-05-19 01:39:50'),
(2, 'User', 'web', '2023-05-19 01:39:50', '2023-05-19 01:39:50');

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
  `role_id` bigint(20) UNSIGNED DEFAULT 2,
  `uid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `walletAddress` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `uid`, `first_name`, `username`, `email`, `last_name`, `avatar`, `phone_number`, `walletAddress`, `password`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, '60ff4218-afea-3574-882e-ddd3aeece1d5', 'Super', 'admin', 'admin@admin.com', 'Admin', NULL, '9028187696', NULL, '$2y$10$nXBlTMSLJ1/Zmtv7trqlU.scv/ev5RGAl5vaKYbfPKeIxILAUS1qy', 1, NULL, '2023-05-19 01:39:50', '2023-05-19 01:39:50'),
(2, 2, 'fe1583dc-e145-3124-9759-bb46f7961a6b', 'Mary', 'mary.kertzmann', 'mary.kertzmann@gmail.com', 'Kertzmann', NULL, '03061256545', 'oKProtOsC4QwkpAdUPEgu52qSfnhTjSlSz', '$2y$10$9YISejSD73f0tcqITNqbre5tZDRpvEEuwjJj4nQ1jTd309LbkihDK', 1, NULL, '2023-05-19 01:39:50', '2023-05-19 01:39:50'),
(3, 2, '42af751a-86e5-37c9-9bb3-8be65b15f2ec', 'Nuri', 'mary.kartzmann', 'sahinnuri23@gmail.com', 'Sahin', NULL, '03061561246', '1dcviZpV7U2wZzl0uNcMkFrppCsge9DfSQ', '$2y$10$ERvlIf3s7H44Po0SLUXu1OzaMXpMkNEpz.sEUBWqlvfsTsE6TRk/u', 1, NULL, '2023-05-19 01:39:53', '2023-05-19 01:40:20');

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
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
