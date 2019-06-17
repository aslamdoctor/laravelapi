-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 17, 2019 at 06:18 PM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eapi`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(10, '2014_10_12_000000_create_users_table', 1),
(11, '2014_10_12_100000_create_password_resets_table', 1),
(12, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(13, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(14, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(15, '2016_06_01_000004_create_oauth_clients_table', 1),
(16, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(17, '2019_06_15_133504_create_products_table', 1),
(18, '2019_06_15_133540_create_reviews_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('b616b8779f2813ea083ef522e92207389655d4684884efd22ed157b4eae39b661df83d4aaa637412', 5, 2, NULL, '[]', 0, '2019-06-17 09:45:35', '2019-06-17 09:45:35', '2020-06-17 15:15:35');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'P0p6MXWdDYMFsPzIo63PY6h5Nhunj2ET7qoDQQY5', 'http://localhost', 1, 0, 0, '2019-06-17 09:40:20', '2019-06-17 09:40:20'),
(2, NULL, 'Laravel Password Grant Client', 'hCCzF4rD91wl4hXEOPKd3YOAjsuY6jD9k1PklTMW', 'http://localhost', 0, 1, 0, '2019-06-17 09:40:20', '2019-06-17 09:40:20'),
(3, NULL, 'Laravel Personal Access Client', '8XmIgtqgGJvmcrttXNSsHiEtMOipwDE2GiRLQLdI', 'http://localhost', 1, 0, 0, '2019-06-17 09:40:57', '2019-06-17 09:40:57'),
(4, NULL, 'Laravel Password Grant Client', 'v3vhfJX360Tl5eogiINscL6caOAydgTJyVivYcgY', 'http://localhost', 0, 1, 0, '2019-06-17 09:40:57', '2019-06-17 09:40:57');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2019-06-17 09:40:20', '2019-06-17 09:40:20'),
(2, 3, '2019-06-17 09:40:57', '2019-06-17 09:40:57');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_refresh_tokens`
--

INSERT INTO `oauth_refresh_tokens` (`id`, `access_token_id`, `revoked`, `expires_at`) VALUES
('06d46bc6f86b5179e7e211896e8ed56b9b7b4b2ccdbc64edba1c7b391fefe8514c3bfaf592468c7d', 'b616b8779f2813ea083ef522e92207389655d4684884efd22ed157b4eae39b661df83d4aaa637412', 0, '2020-06-17 15:15:35');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `detail`, `price`, `stock`, `discount`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'optio', 'Molestias ut perspiciatis laudantium assumenda delectus qui cumque. Aliquid deserunt non animi corrupti. Id nam est sit omnis.', 680, 2, 14, 1, '2019-06-17 09:34:47', '2019-06-17 09:34:47'),
(2, 'at', 'Est vel aut unde facere officia error. Est dolor dolor esse facilis culpa et est iusto. Dolor asperiores quo odit quia eaque distinctio qui. Porro autem quas eius dolorum vel quos sequi sint.', 867, 0, 14, 1, '2019-06-17 09:34:47', '2019-06-17 09:34:47'),
(3, 'omnis', 'Nisi nobis fugiat saepe iusto. Alias aut odit perferendis quia iure. Eius autem adipisci enim est vel iure distinctio.', 987, 7, 27, 1, '2019-06-17 09:34:47', '2019-06-17 09:34:47'),
(4, 'accusamus', 'Quidem unde deserunt illo voluptas. Sunt vero voluptatem accusantium voluptatum incidunt est eum. Possimus delectus eos eveniet. Modi ut dolorem neque laboriosam expedita voluptas maiores suscipit.', 549, 7, 3, 1, '2019-06-17 09:34:47', '2019-06-17 09:34:47'),
(5, 'quod', 'Dolorum necessitatibus fugiat blanditiis aut voluptatem. Veritatis vero deserunt animi ipsam voluptatem.', 904, 2, 3, 1, '2019-06-17 09:34:47', '2019-06-17 09:34:47'),
(6, 'asperiores', 'Laudantium illo ut ad vero. Fugiat temporibus sed esse et sit nihil tempora iste. Aspernatur sit officia aut dolore nobis nihil quia.', 330, 0, 7, 1, '2019-06-17 09:34:47', '2019-06-17 09:34:47'),
(7, 'aut', 'Laborum et aut dolorem ea. Natus ut laborum eaque quam est illum neque. Reiciendis voluptatum sunt quia et porro illum. Provident illo nihil accusamus nihil dolores.', 537, 1, 29, 2, '2019-06-17 09:34:47', '2019-06-17 09:34:47'),
(8, 'consequatur', 'Dolor quisquam maiores nesciunt voluptatem labore aperiam. Ducimus blanditiis a est.', 289, 8, 25, 3, '2019-06-17 09:34:47', '2019-06-17 09:34:47'),
(9, 'voluptas', 'Architecto optio ut dolores. Sit quisquam expedita fugiat similique quod. Provident culpa fugiat nulla earum voluptatem enim repellat. Reiciendis non consequatur voluptas voluptatem cum error deleniti distinctio.', 196, 5, 15, 1, '2019-06-17 09:34:47', '2019-06-17 09:34:47'),
(10, 'quia', 'Voluptas quia iusto laudantium dolorem. In eaque sint consequatur iusto. Qui explicabo ipsa repellat. Ut aperiam quia eos velit numquam sequi. Tenetur et doloremque quia veniam expedita.', 686, 1, 14, 3, '2019-06-17 09:34:47', '2019-06-17 09:34:47'),
(11, 'consequuntur', 'Quas provident numquam consectetur deleniti. Unde earum eos dolor et sed quis. Assumenda deleniti dolore est aspernatur id culpa recusandae quia.', 831, 1, 21, 3, '2019-06-17 09:34:47', '2019-06-17 09:34:47'),
(12, 'totam', 'Saepe dignissimos amet quam. In et inventore voluptate vero sed. Quisquam et neque dolore quo ea quos quaerat. Quae eos voluptas rerum repellendus unde consequatur vel.', 991, 3, 10, 2, '2019-06-17 09:34:47', '2019-06-17 09:34:47'),
(13, 'nihil', 'Natus et vel dolorem quod pariatur illo dolores. Ut doloremque molestiae veniam harum esse rerum dolorem. Error veritatis dolorum minus.', 937, 8, 25, 3, '2019-06-17 09:34:47', '2019-06-17 09:34:47'),
(14, 'sapiente', 'Omnis sed et cum non. Nulla nihil vero voluptatem beatae. Omnis ut eos itaque non. Ut enim enim dolorem reiciendis.', 796, 5, 10, 1, '2019-06-17 09:34:47', '2019-06-17 09:34:47'),
(15, 'culpa', 'Magnam voluptatibus et ipsum voluptate quasi libero veritatis. Qui rerum et iusto qui nemo dolorem. Laudantium sint in tempore rem repudiandae. Dolorem voluptatibus eum ea doloribus. Voluptas voluptas nemo at voluptatem voluptatem.', 140, 1, 22, 2, '2019-06-17 09:34:47', '2019-06-17 09:34:47'),
(16, 'quis', 'Et voluptate sapiente dolore et. Fuga perferendis nulla quidem harum. Explicabo enim voluptatem et. Cumque reprehenderit et laboriosam maxime.', 599, 4, 2, 1, '2019-06-17 09:34:47', '2019-06-17 09:34:47'),
(17, 'officia', 'Facilis non in et. Hic dolor aut et voluptatem quo. Nemo nesciunt repudiandae nemo autem. Dolorem ullam neque ea esse similique saepe.', 535, 1, 19, 1, '2019-06-17 09:34:47', '2019-06-17 09:34:47'),
(18, 'qui', 'Nihil quidem sit sit totam sit. Sed nihil ab esse enim quas voluptatem maxime. Reprehenderit numquam in fugit suscipit unde excepturi. Sapiente atque ut quos consequatur.', 989, 7, 23, 4, '2019-06-17 09:34:47', '2019-06-17 09:34:47'),
(19, 'et', 'Est non blanditiis cumque aut quis est. Nisi sit ut eius nesciunt corporis porro. Omnis et voluptatibus vel debitis sunt magnam architecto.', 359, 2, 21, 5, '2019-06-17 09:34:47', '2019-06-17 09:34:47'),
(20, 'voluptatem', 'Et vel dolorem voluptatibus omnis error est ab. Itaque quia consectetur est impedit. Quo aut expedita unde sit et nobis occaecati. Explicabo ea veritatis molestiae.', 717, 5, 17, 4, '2019-06-17 09:34:47', '2019-06-17 09:34:47'),
(21, 'quod', 'Quis est soluta facilis sunt aspernatur corrupti quo. Reprehenderit soluta voluptas id quam qui reiciendis ut. Ipsum ea sint est consequatur. Omnis sint velit et officia velit.', 707, 7, 22, 2, '2019-06-17 09:34:47', '2019-06-17 09:34:47'),
(22, 'harum', 'Sed tempore delectus quod ipsum atque. Facilis maiores sint voluptas ut consequatur dicta officiis. Facilis occaecati cumque debitis non esse magni odit.', 574, 6, 10, 4, '2019-06-17 09:34:47', '2019-06-17 09:34:47'),
(23, 'voluptas', 'Officia suscipit odio velit consequatur eveniet illo qui. A rerum sed voluptate possimus inventore et quos. Sint voluptatem eum voluptatem et. Aut est nesciunt est est ea.', 342, 5, 25, 1, '2019-06-17 09:34:47', '2019-06-17 09:34:47'),
(24, 'eaque', 'Amet cum molestiae similique praesentium quasi et. Dolorem autem occaecati esse sint. Qui saepe dolor sed omnis ut.', 324, 5, 11, 5, '2019-06-17 09:34:47', '2019-06-17 09:54:11'),
(25, 'qui', 'Id suscipit explicabo sunt consequatur. Quia sequi laudantium molestiae explicabo. Expedita culpa labore quis aspernatur mollitia. Vel eligendi soluta dolor et.', 444, 6, 12, 3, '2019-06-17 09:34:47', '2019-06-17 09:34:47'),
(26, 'optio', 'Consequuntur consequatur et recusandae eum sit explicabo. Voluptas voluptatem ipsum voluptates a quia ut. Eius mollitia provident tempore optio illum et.', 321, 9, 10, 3, '2019-06-17 09:34:47', '2019-06-17 09:34:47'),
(27, 'at', 'Qui deserunt blanditiis accusantium et. Quo sed minima qui tenetur. Vero fuga minima quo dolores aut quae et quos. Consequatur quo recusandae possimus aut reiciendis. Corrupti eligendi voluptas debitis reiciendis nesciunt aliquam aut.', 565, 3, 27, 2, '2019-06-17 09:34:47', '2019-06-17 09:34:47'),
(28, 'quos', 'Quis sunt odio voluptas doloribus soluta soluta similique vitae. Maxime omnis quam sit ipsa porro cumque illo. Aliquam veniam voluptas voluptatem officiis. Dolor maxime impedit impedit fugit voluptates. Animi sed nemo dolores.', 486, 5, 19, 3, '2019-06-17 09:34:47', '2019-06-17 09:34:47'),
(29, 'natus', 'Distinctio tempore nihil ratione nihil nulla. Vitae distinctio iusto totam iusto. Ipsum atque libero dolores sint. Illum nostrum et maxime perferendis.', 394, 1, 6, 1, '2019-06-17 09:34:47', '2019-06-17 09:34:47'),
(30, 'id', 'Et et quam nemo quasi quia quas est. Quisquam esse at consequatur ad a. Suscipit quam ut minus architecto culpa repellat sed.', 587, 5, 6, 2, '2019-06-17 09:34:47', '2019-06-17 09:34:47'),
(31, 'omnis', 'Ex autem modi sint rem sint. Architecto officiis qui repellendus deserunt vitae et. Sunt porro rerum dicta.', 172, 0, 28, 5, '2019-06-17 09:34:47', '2019-06-17 09:34:47'),
(32, 'ratione', 'Consequatur mollitia at pariatur placeat non. In voluptatem dolorem reprehenderit sit.', 405, 5, 23, 3, '2019-06-17 09:34:47', '2019-06-17 09:34:47'),
(33, 'ipsam', 'Doloremque iusto veniam culpa rerum. Ullam itaque veritatis ut voluptate quaerat. Repellat fugit sunt porro est. Hic dolores dolor quod qui aut ab.', 573, 8, 7, 4, '2019-06-17 09:34:47', '2019-06-17 09:34:47'),
(34, 'consequatur', 'Incidunt facilis nobis inventore soluta et. Cupiditate unde harum vero omnis. Suscipit velit voluptatem non voluptate. Et sunt enim sit aut.', 387, 5, 15, 2, '2019-06-17 09:34:47', '2019-06-17 09:34:47'),
(35, 'perferendis', 'Vel assumenda rerum est perferendis et aut recusandae. Ipsa nobis aut sequi.', 682, 7, 27, 4, '2019-06-17 09:34:47', '2019-06-17 09:34:47'),
(36, 'ad', 'Praesentium consectetur sed id natus amet ducimus. Culpa exercitationem provident consequatur nobis non nihil. Ad aliquam unde odit perferendis et mollitia et. Voluptate quis minus accusamus ipsum odio cum.', 948, 6, 10, 2, '2019-06-17 09:34:47', '2019-06-17 09:34:47'),
(37, 'repellat', 'Doloremque enim velit quasi qui sit ut aut. Est aperiam consequatur harum aliquid quia. Saepe aut iste sunt nostrum ullam aut. Pariatur quo repellat voluptatem unde et eos.', 240, 3, 2, 3, '2019-06-17 09:34:47', '2019-06-17 09:34:47'),
(38, 'non', 'Nemo quia quaerat voluptates dolor qui et. Quia facere accusamus dolores aut non earum. Dolorem officia laboriosam laudantium qui debitis maiores ipsum quidem. Eos ut voluptas exercitationem quos.', 449, 5, 18, 1, '2019-06-17 09:34:47', '2019-06-17 09:34:47'),
(39, 'non', 'Sequi eum aut culpa et. Doloremque consequatur vero eius vel alias vero. Reiciendis fugit magni corrupti maxime dolores voluptate et alias. Vel nisi et deleniti dolorum.', 702, 2, 4, 2, '2019-06-17 09:34:47', '2019-06-17 09:34:47'),
(40, 'repudiandae', 'Quia molestiae qui est fuga quos eveniet quis. Perferendis aut dolore debitis. Ut et a placeat sed maxime minima. Consequatur provident ut accusamus in.', 367, 2, 18, 2, '2019-06-17 09:34:47', '2019-06-17 09:34:47'),
(41, 'est', 'Numquam iste dolores rerum neque nesciunt. Distinctio atque dicta sit non rerum. Molestiae quae in culpa nam est. Sed quibusdam tenetur sed exercitationem ut aut.', 119, 1, 24, 3, '2019-06-17 09:34:47', '2019-06-17 09:34:47'),
(42, 'nemo', 'Laudantium occaecati sit repudiandae maxime. Dolor fuga qui sequi quo. At placeat provident officiis deserunt et. Fuga alias pariatur esse dolores quis magni quo quo.', 372, 1, 18, 4, '2019-06-17 09:34:47', '2019-06-17 09:34:47'),
(43, 'eos', 'Dolorum cupiditate rerum nam dicta minima ullam dolor. Culpa aut velit autem totam qui nam impedit. Quo consequatur eum molestias fugit vel pariatur. Consequuntur sed molestiae voluptatem pariatur accusamus illo.', 630, 6, 20, 1, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(44, 'alias', 'Ut amet sit architecto quia non molestias a. Sit placeat nobis reiciendis aspernatur. Voluptates ea quia et quibusdam commodi tempora quas nisi. Repellendus dolorem deserunt quisquam eveniet iusto dolor. Voluptatem praesentium dolorem aspernatur omnis.', 855, 8, 8, 3, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(45, 'sint', 'Est quia excepturi aperiam saepe quis non corrupti cum. Sapiente quasi voluptatibus sunt minus recusandae. Quam ea totam nostrum molestiae fugit.', 335, 8, 22, 1, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(46, 'iure', 'Sed magni ad sint et a. Numquam impedit enim deleniti magnam cum. Ut et ut est nesciunt omnis eaque eligendi.', 214, 4, 3, 2, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(47, 'quia', 'Amet doloribus rerum quas sint assumenda deleniti facilis. Eaque nihil possimus omnis minus. Repellat dicta ea debitis assumenda deserunt.', 436, 6, 12, 5, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(48, 'omnis', 'Et consequuntur dolor occaecati illum maxime enim dolorem. Ducimus est illo vero sed itaque ex officiis accusamus. Enim sunt voluptates adipisci nostrum ea consequatur corporis.', 665, 7, 28, 4, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(49, 'alias', 'Ea quis reprehenderit ducimus consequatur corrupti in quidem. Sed et suscipit aut possimus veniam assumenda libero. Ipsa assumenda qui enim.', 400, 0, 8, 5, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(50, 'vero', 'Vero explicabo facere veritatis sunt ducimus eos. Sed voluptatem voluptas at nihil architecto et. Officiis aut hic eveniet tempore velit illum quisquam.', 268, 8, 30, 3, '2019-06-17 09:34:48', '2019-06-17 09:34:48');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `customer` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `review` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `star` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `product_id`, `customer`, `review`, `star`, `created_at`, `updated_at`) VALUES
(1, 20, 'Rebeca Crona', 'Et explicabo nesciunt nulla sed. Ab quaerat sed eius eos. Soluta quod esse modi ut rem. Dignissimos veniam unde molestiae suscipit eum aut eveniet.', 1, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(2, 43, 'Dr. Dana Beahan Jr.', 'Ea enim est molestiae qui quod tempora. Sit ducimus saepe voluptate id.', 2, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(3, 14, 'Marty Bergnaum', 'Modi accusantium eos tenetur animi voluptas. Vel non exercitationem cumque quidem sit. Neque dignissimos accusantium omnis mollitia natus est quas et. Qui harum eveniet modi dolorum consequatur. Excepturi nobis corrupti ad eos est perspiciatis.', 1, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(4, 20, 'Art Pollich', 'Reprehenderit earum delectus maxime assumenda ut. Accusantium quisquam autem est et perferendis. Ex molestias consequatur quidem quas velit error animi quam.', 3, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(5, 39, 'Madonna Leffler V', 'Et et eveniet sunt cumque ratione aut debitis. Sequi molestiae delectus perspiciatis rerum ipsa. Aut fugit nostrum voluptas quam ut veniam. Modi exercitationem quod porro consequatur aliquam fugit. Exercitationem ipsam sequi et nihil.', 1, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(6, 6, 'Nella Cremin', 'Provident in occaecati debitis quod libero eos voluptatem et. Qui est voluptas voluptates aliquid corrupti aliquam. Consequatur quis id cumque explicabo non sint. Quibusdam vitae dolor ut labore nesciunt.', 0, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(7, 9, 'Joesph Russel', 'Quaerat quis rerum in ullam. Optio ipsa magni expedita et omnis. Ut eveniet vel non. Voluptatem ipsam sed temporibus voluptatem.', 5, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(8, 33, 'Miss Lina Legros III', 'Quo non nemo maiores et libero ut. Nostrum unde beatae enim accusantium est esse ut.', 2, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(9, 36, 'Alejandra Abernathy DVM', 'Ullam qui exercitationem itaque id tempore at earum. Culpa iste quaerat beatae velit. Atque sint ut enim. Labore ut deleniti optio non error maiores sunt veritatis.', 4, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(10, 16, 'Mrs. Kiana Pollich I', 'Nihil consequatur cupiditate doloremque quaerat et. Rerum laboriosam aperiam voluptatem temporibus. Expedita laborum beatae ut quos maxime voluptas dolor ipsum.', 3, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(11, 47, 'Ms. Ana Herzog', 'Et est officia itaque dolores. Hic reiciendis voluptatem aliquam consectetur. Velit ducimus quam velit iste voluptatum delectus omnis.', 5, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(12, 22, 'Walker Collier', 'Quasi optio unde autem et. Magni nulla nihil laboriosam natus voluptatem fuga. Necessitatibus molestiae et eveniet molestias odit. Consequatur a assumenda ducimus sequi quia.', 5, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(13, 2, 'Melvina Conn', 'Adipisci ad veniam ex est. Aperiam animi eos ipsa sint. Nisi modi velit at non saepe.', 5, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(14, 46, 'Alphonso Monahan', 'Iste aut architecto occaecati et pariatur eius. In voluptatem libero sed temporibus id nihil vel. Dolore deleniti totam earum magni. Voluptatem quaerat temporibus quidem nihil accusamus consequatur.', 2, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(15, 46, 'Prof. Pietro Parisian V', 'Vel ab minima odio repellendus. Vitae nostrum corrupti rerum aperiam hic. In porro doloremque cumque id et. Iste eos dignissimos distinctio architecto autem ea commodi. Corporis architecto velit voluptas aut quo perspiciatis rerum quo.', 1, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(16, 1, 'Ellsworth Anderson', 'Ad doloremque non quis voluptates eum voluptas est pariatur. Rerum rerum qui voluptatem aliquam temporibus. Illum deleniti expedita ut eum quibusdam vitae voluptatem. Iure tempora quod omnis praesentium adipisci.', 1, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(17, 10, 'Filiberto Wisoky IV', 'Tempora nam aut mollitia veniam omnis quidem. Quia et ipsam dolorum eum maiores tempore. Ut et officia rerum porro inventore. Vitae ullam id aut est recusandae.', 1, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(18, 36, 'Aylin Moen', 'Voluptas ex qui in ipsa at eum reprehenderit. Incidunt cumque eos quas consequatur. Error omnis ullam doloribus ad hic et fugiat. Et ut repudiandae eos quidem qui. Nihil repellendus in est ut quibusdam sit delectus.', 2, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(19, 44, 'Jesse Dooley', 'Molestias nesciunt optio mollitia laborum voluptatem quaerat accusamus est. Vel et nam eum cum aliquid et. Consequatur ullam esse dolorum.', 0, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(20, 50, 'Meggie Thiel DVM', 'Omnis impedit illum pariatur numquam recusandae. Odit corrupti aut quas quo voluptas totam dolorem et. Voluptas ullam quam nisi dolorem. Ducimus nesciunt eius dignissimos at doloremque architecto voluptatibus.', 3, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(21, 8, 'Kristin Goyette', 'Voluptatum sequi eligendi non est dignissimos praesentium. Omnis accusantium et rerum reiciendis est rem. Praesentium ullam dolore sit adipisci quia qui.', 4, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(22, 42, 'Cameron Jakubowski', 'Nisi repellat provident et qui expedita laudantium assumenda. Quae eveniet natus ea corporis repellat reprehenderit id ex. Culpa reprehenderit sint modi eius fugiat.', 0, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(23, 11, 'Lavon Bergnaum', 'Voluptatem corporis quibusdam est ut quisquam omnis. Temporibus soluta mollitia atque quaerat quia praesentium. Accusantium quibusdam commodi cumque eius quo aspernatur. Qui enim exercitationem beatae quod ut aliquid.', 4, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(24, 4, 'Glennie Tremblay Sr.', 'Distinctio amet libero est nulla doloremque quis. Nihil consequatur voluptas laborum perferendis dicta aut. Ipsam ut saepe fugit odit. Eum accusamus perferendis et.', 5, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(25, 22, 'Isadore Lindgren III', 'Aut ad sequi ea nostrum sed. Laudantium placeat incidunt vel voluptate numquam exercitationem voluptas. Libero qui pariatur veniam provident sint rem est repudiandae.', 1, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(26, 47, 'Kristopher Satterfield II', 'Consequatur occaecati unde est occaecati. Optio atque ullam dolore quidem minus necessitatibus. Iusto pariatur delectus doloremque hic. Quod molestiae possimus sint atque quod vitae libero.', 2, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(27, 2, 'Lavon Aufderhar PhD', 'Molestiae maiores totam voluptas quibusdam corrupti odit. Dolorem sint nulla laboriosam omnis nemo facere nisi reiciendis. Assumenda veniam voluptas dolorem qui veniam. Magnam sequi aut pariatur corrupti reprehenderit.', 5, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(28, 26, 'Fannie Homenick Jr.', 'Perspiciatis soluta vel non sapiente cupiditate quis rem. Sit neque veniam quibusdam labore cum. Veniam enim tenetur totam id dolores dolores.', 1, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(29, 6, 'Delia Walker', 'Facilis ut est aut vitae a. Quam enim vel vitae. Amet nostrum non natus. Et eius accusamus totam.', 3, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(30, 35, 'Cordelia Zemlak', 'Deserunt veritatis facilis quidem eligendi eveniet. Magni et sit blanditiis odit ea voluptas rerum. Vel vitae nihil non fuga.', 2, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(31, 19, 'Reta Orn II', 'Qui rerum rerum ut omnis asperiores quibusdam dolor. Magnam aut non sit cumque blanditiis non. Nemo aut doloribus tempora itaque.', 3, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(32, 2, 'Clinton Friesen', 'Recusandae earum placeat quisquam sapiente. Nihil voluptatibus perspiciatis rem. Odio ut fugit explicabo id aut.', 0, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(33, 42, 'Mose Hudson', 'Voluptas quo iste enim sed. Tempora vel ut et beatae sed enim natus est. Non quae molestias incidunt reprehenderit deserunt.', 1, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(34, 40, 'Eda Armstrong', 'Ad mollitia placeat perferendis quos error modi nobis et. Autem aut assumenda neque neque suscipit facere.', 3, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(35, 19, 'Johnpaul Goldner', 'Optio et consequatur aut voluptas. Ut dolor vel ut sed quidem ut distinctio qui. Nobis porro tempore expedita.', 5, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(36, 34, 'Jordane Hoeger', 'Ea unde rem eaque molestiae consequatur tenetur. Necessitatibus et consequatur facere occaecati quibusdam praesentium nostrum. Enim qui dolores ullam eveniet laborum.', 3, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(37, 46, 'Prof. Rudolph Olson', 'Error dolorem qui molestias adipisci non. Maxime libero facilis voluptatibus ad dolorum.', 3, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(38, 50, 'Christian Labadie', 'Eveniet deserunt recusandae repudiandae inventore aut et tenetur. Enim impedit aut et harum maiores cumque. Ipsam temporibus molestias doloribus. Omnis suscipit animi veritatis delectus rerum.', 3, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(39, 16, 'Dr. Fidel Robel Jr.', 'Repudiandae quis aspernatur in debitis. Saepe iure enim non at voluptas accusamus. Ratione ducimus corrupti voluptas quis dolorum voluptas. Qui facere sit veritatis pariatur soluta.', 4, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(40, 4, 'Dr. Eli Hirthe', 'Pariatur iure vitae totam qui. Tenetur illum voluptatem blanditiis et nostrum est veniam. Perferendis quia in laudantium eos id.', 5, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(41, 14, 'Greg Lind', 'Temporibus et aut et et. Vero esse possimus nesciunt recusandae sed quod voluptatem. Quas occaecati et eum. Optio illum qui modi qui facere saepe ut.', 4, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(42, 36, 'Jayme Jerde', 'Eveniet velit aut veniam quod. Et ipsa animi eum et. In aut est amet dolores.', 2, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(43, 26, 'Prof. Bethel Corkery', 'Laboriosam ab rem temporibus quis vel commodi. Necessitatibus quidem velit provident unde tempora omnis. Corrupti excepturi asperiores doloribus blanditiis temporibus.', 3, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(44, 6, 'Emmanuel Rogahn DVM', 'Quasi fugiat ex ut esse occaecati voluptatem. Adipisci quis voluptatibus cum et dolorum a libero. Iste ex aspernatur illo unde et ullam ea aliquam. Qui repudiandae necessitatibus expedita non neque accusantium nulla architecto.', 4, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(45, 50, 'Ignatius Rodriguez', 'Reprehenderit enim similique dolore quo voluptatem. Ea quam sit ex dignissimos. Illo numquam rerum earum a. Tenetur sequi ad dolore delectus. Rerum ut in sed dolor officia aliquam expedita non.', 1, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(46, 47, 'Mr. Jesus Cremin Sr.', 'Quia fuga dolore unde voluptates ratione et. Repudiandae reiciendis omnis quo asperiores ea et cum. Maiores est tempore rem minus id molestiae.', 3, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(47, 12, 'Dr. Kristopher Harber Sr.', 'Quia ab aperiam dolor beatae. Illum labore ullam voluptas autem nisi voluptas. Asperiores in esse eos laboriosam temporibus est libero odit.', 5, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(48, 32, 'Darron Simonis', 'Ut aut consequatur esse cupiditate quos et. Eligendi omnis magnam quo accusantium non aspernatur. Autem pariatur commodi voluptas.', 5, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(49, 33, 'Miss Odie Quigley', 'Sapiente et est laborum aut. Exercitationem quas voluptatem id et quidem. Consequatur laborum error sequi qui corporis quibusdam quia. Qui quia voluptas inventore rerum et ea aut.', 4, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(50, 15, 'Vicenta Reichert', 'Suscipit nisi vero ipsum. Deserunt voluptas totam ratione labore voluptates qui dolores.', 1, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(51, 22, 'Prof. Oma McCullough', 'Voluptatem dolores dolor ea voluptatum. Facilis voluptate quam voluptatem consectetur quia. Dignissimos culpa nemo et repudiandae sunt assumenda totam.', 5, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(52, 24, 'Dr. Keenan Bernier', 'In quis maiores aperiam repellendus et eius. Nobis eum exercitationem ipsa eius ut expedita unde. Eum nobis qui eveniet voluptatibus. Quia et numquam atque non soluta.', 0, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(53, 14, 'Ms. Katelynn Davis III', 'Aliquid nihil aliquid aut eum enim odit consequatur iure. Odit veritatis quaerat praesentium qui magni expedita. Qui sed itaque vitae ad dicta odio enim.', 0, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(54, 21, 'Hilma Lind', 'Nam non quos accusantium est vel sequi maxime est. Harum cum architecto aut optio consequatur quo pariatur repudiandae. Architecto quas inventore id. Ab iste quod dolores est aut est sit omnis. Est possimus aspernatur iure nihil.', 4, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(55, 35, 'Manuela Nader DVM', 'Et est dolorem eos molestias. Dicta est quasi aliquid eum dolore. Reprehenderit accusamus autem consectetur id. Iste architecto dolorem omnis ad nihil pariatur.', 1, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(56, 39, 'Miss Samantha Gusikowski', 'Sit expedita quo totam voluptas architecto dolores aut et. Eveniet rerum rerum est similique sed aut.', 0, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(57, 35, 'Eldora Kemmer', 'Et voluptas sunt asperiores fugit. Ut reiciendis et nulla voluptatem fugiat. Et pariatur atque voluptas minus occaecati.', 5, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(58, 27, 'Prof. Delbert Koelpin', 'Enim voluptatem sed ratione fuga laborum dolores. Vel dignissimos laboriosam et voluptas veniam. Tenetur est minus corrupti magni.', 3, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(59, 14, 'Thalia Schamberger', 'Optio error qui beatae deleniti. A inventore eos ut et iste earum est. Architecto ab ipsum dicta ea eos velit. Et officia nobis molestiae libero.', 3, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(60, 20, 'Dr. Aubrey Trantow MD', 'Ad sint earum aut vitae reprehenderit repellendus. Modi aliquid velit esse excepturi molestias illo.', 1, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(61, 32, 'Reid Schulist DDS', 'Fuga ratione blanditiis quibusdam doloribus quo minima rerum reprehenderit. Nostrum reprehenderit quaerat voluptatem qui et accusamus rerum. Illum numquam ducimus perspiciatis pariatur et optio. Sint consequuntur ut quia unde.', 0, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(62, 46, 'Carmel Yundt MD', 'Occaecati sed impedit fugit eligendi qui ut quisquam. Illo sed aut deleniti laudantium aut quisquam. Sed in enim iusto cum quaerat eos accusantium. Dolorum provident laborum recusandae ut beatae.', 2, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(63, 4, 'Charlie Grant', 'Voluptatem aperiam est iure vel numquam rerum error. Est perferendis aut vel. Enim aspernatur aut totam ipsa eos. Autem in ut autem odio deserunt. Beatae ullam velit qui.', 1, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(64, 11, 'Chelsie Labadie Sr.', 'Sit laboriosam placeat nisi autem. Aut placeat doloribus quos vel fugiat molestiae. A assumenda qui ipsa in et doloribus quo.', 0, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(65, 40, 'Mr. Ayden Williamson', 'Explicabo voluptatem sint et rerum omnis. Officia vero minima quo voluptas esse quo. Velit ut aut autem natus labore. Fugit illum fugit delectus dolorem soluta odio.', 3, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(66, 39, 'Schuyler Walter', 'Dignissimos nihil nihil possimus. Et aliquid facere facere voluptatem eaque. Nesciunt quas quia sunt magni sequi veritatis.', 1, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(67, 43, 'Prof. Cristopher Swift', 'Facere harum assumenda aut ut atque aspernatur iure. Alias qui voluptas et ut molestiae numquam enim. Voluptas ratione iusto maxime magnam qui.', 4, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(68, 7, 'Elissa Emmerich Jr.', 'Fuga nemo est minus molestiae ipsam est. Iste tempora unde dolore. Provident accusantium praesentium velit. Sequi placeat libero assumenda dolor excepturi vel.', 2, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(69, 12, 'Dejon Romaguera', 'Aut cum et tempore iure. Impedit aut neque aut. Magni assumenda sint quibusdam id est nesciunt.', 0, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(70, 36, 'Zion Littel', 'Repudiandae nihil voluptas laborum dolores rem nemo. Rerum iste veniam consectetur labore. Laboriosam vitae dolore asperiores. Velit voluptatum ratione magnam illo sit optio reprehenderit.', 2, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(71, 42, 'Prof. Beau Hagenes DVM', 'Dolor rerum voluptatibus eaque inventore voluptate ut placeat. Dicta sed ea expedita quia aut fugit. Facere est minus necessitatibus doloremque corrupti minus laboriosam.', 1, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(72, 43, 'Janet Little', 'Deserunt eligendi ipsum eligendi placeat. In quia quisquam corporis aut. Nisi voluptas quisquam amet facilis. Qui vel praesentium est.', 3, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(73, 14, 'Prof. Jimmy Shields IV', 'Necessitatibus molestias repellendus est eveniet doloremque. Dolor modi autem mollitia commodi. Sapiente eligendi nobis voluptatibus dicta unde molestiae ut.', 3, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(74, 14, 'Terrell Hand MD', 'Rerum dolorem eum fuga omnis accusantium. Sapiente qui similique voluptas praesentium in. Amet fugiat suscipit sed harum. Blanditiis est mollitia quia ut quia occaecati.', 3, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(75, 27, 'Betsy Strosin', 'Exercitationem distinctio dolor autem corporis. Perferendis sit veniam illo excepturi corporis ipsam perferendis. Maxime blanditiis fugit est et voluptatem. Dolorum fugit libero iure ducimus reprehenderit quis. Voluptatem deleniti fugiat qui vel iusto.', 2, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(76, 11, 'Quinten Rath DDS', 'Sed ex voluptas autem ipsum animi. Sint accusamus praesentium dolorem ex et provident assumenda. Doloribus et corrupti doloremque saepe libero. Perspiciatis ea aspernatur cupiditate ea nobis labore.', 0, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(77, 32, 'Dr. Kelvin Johnson', 'Rerum officiis occaecati nesciunt expedita nisi alias minus. Omnis harum explicabo dignissimos et sed est. Non ad adipisci est.', 4, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(78, 5, 'Ike Brown', 'Aut consequatur in aliquid excepturi. Alias voluptas aut ipsam omnis sit officiis unde. Unde est cumque odio hic sunt quia fugiat architecto.', 1, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(79, 1, 'Ms. Lucile Bergnaum', 'Consectetur illum dolore sint laudantium et labore. Sapiente est sed aut quasi quis rerum. Blanditiis perspiciatis nihil dolor sit quae in. Asperiores vel dolorem occaecati voluptas nemo provident.', 4, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(80, 27, 'Santino Reinger MD', 'Nulla molestiae iure quisquam voluptas ratione accusamus dolorem nesciunt. Officiis laborum et libero ea eveniet. Sit blanditiis enim sit dolor. Qui alias corporis aut atque nesciunt iure aut.', 2, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(81, 19, 'Mr. Jeromy Jacobs', 'In et tempora qui dignissimos sint. Eum repellendus est porro exercitationem. Dolores cumque rerum enim corporis doloremque totam omnis. Accusantium suscipit eos odio nesciunt impedit consequuntur. Iste illum vitae quaerat sit assumenda.', 5, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(82, 19, 'Mrs. Dulce Emmerich I', 'Tempora autem sint et quis sit ipsa voluptate. Aliquid aspernatur nesciunt consequatur sunt incidunt aut. Ea ratione quia quia pariatur ducimus eligendi aliquam. Facere pariatur cum voluptate dolor sit et et.', 3, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(83, 23, 'Boyd Corkery I', 'Vitae quo et et enim quis quos aut. Ut sit tempora saepe totam. Repellat qui totam aut autem debitis sint aut. Et inventore est dolor autem autem.', 0, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(84, 46, 'Laila Brakus', 'Rerum voluptas in deleniti at mollitia ipsam impedit. Modi sit dolorem doloremque nihil reiciendis porro. Voluptatem aut qui distinctio a laboriosam culpa molestiae accusantium. Doloribus expedita non autem occaecati suscipit fugit.', 1, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(85, 47, 'Adrian Kunze DVM', 'Quibusdam consequatur error blanditiis sed labore et numquam. Aut nihil mollitia aut distinctio ipsa. In accusantium et est ipsam.', 1, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(86, 19, 'Mr. Toy Parisian', 'Non id cupiditate molestiae saepe. Sit dolorum maiores adipisci animi. Dolorem error nihil quasi cupiditate sapiente.', 1, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(87, 35, 'Thelma Littel', 'Sed quasi impedit ducimus debitis reprehenderit ut porro laudantium. Aliquid nobis quia reiciendis expedita. Et aspernatur facilis eum.', 5, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(88, 10, 'Garland Kulas', 'Voluptatem accusantium modi eaque ut amet aut explicabo. Eveniet necessitatibus libero nemo maiores pariatur et. Vitae quia reprehenderit omnis et sed eaque quas. Consequatur possimus culpa ut quis est maxime.', 5, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(89, 46, 'Rebecca Hammes III', 'Nam est hic occaecati consequuntur ab voluptatum. Voluptatibus quisquam pariatur voluptate deserunt dignissimos. Omnis eius repudiandae dolorum velit quia et.', 0, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(90, 24, 'Merritt Howe IV', 'Ex aut voluptas quas et. Exercitationem sit praesentium est. Velit labore rerum occaecati magni. Magni necessitatibus assumenda nihil quo consequuntur nobis placeat enim.', 3, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(91, 36, 'Lazaro Johnston', 'Sed enim vel aut amet aut sapiente accusantium. Qui et reiciendis mollitia iste minima. Earum quia voluptatem explicabo quo et.', 5, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(92, 29, 'Zetta Gerhold DVM', 'Cumque odio voluptas aut aut laborum cum. Sunt consequuntur mollitia autem dolores voluptatem perspiciatis. Voluptates necessitatibus tenetur est quod tempore. Assumenda autem quam nulla quibusdam distinctio itaque illum harum. Et dolor consectetur hic sequi repudiandae.', 3, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(93, 34, 'Ms. Sydnie Moen IV', 'Libero sed pariatur tempora eos. Non ducimus sint voluptate molestiae autem voluptas culpa. Officia sint inventore velit aliquam impedit eius voluptas.', 4, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(94, 39, 'Kiley Rutherford MD', 'Quisquam quae blanditiis labore. Et dolor voluptate repudiandae ut. Esse commodi ea eum voluptatem aut atque.', 5, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(95, 9, 'Gianni Beer MD', 'Repellendus minus id velit voluptas. Architecto itaque autem molestiae porro neque quisquam. Eaque commodi unde accusantium dolorem quis rerum.', 5, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(96, 32, 'Grayson Larson', 'Fugit saepe non sunt eos dicta. Fugiat est quos magni maxime et. Et ipsum ut incidunt enim quidem impedit. Beatae at dignissimos consequatur ratione et quibusdam ut.', 1, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(97, 26, 'Kristopher Goyette PhD', 'Est fugiat quis maiores cum sit. Id temporibus omnis nihil ut iusto.', 4, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(98, 44, 'Brannon Schamberger DDS', 'Et nesciunt consequatur sed quasi. Similique beatae nam architecto aut ea. Numquam nemo dolor reiciendis.', 3, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(99, 6, 'Isom Okuneva', 'Quasi vel et nostrum rerum odit consequatur sint. Ipsa vero qui ratione vitae rerum hic. Hic quia mollitia quia autem inventore.', 1, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(100, 10, 'Ariel Hintz Sr.', 'Voluptatem consectetur distinctio aut dolores. At ullam veniam temporibus omnis. Vero libero fuga deleniti sint non.', 0, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(101, 34, 'Lamont Howe', 'Dolorem rem asperiores est. Ullam modi aut voluptas officiis expedita doloremque ut velit. Nemo laboriosam earum enim. Est quae eos asperiores doloremque recusandae dolor.', 0, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(102, 37, 'Golden Yundt DDS', 'Itaque totam quis ullam sunt. Quia voluptas iure voluptas ut eligendi enim. Molestiae perspiciatis repudiandae voluptas accusamus sit eos sit.', 5, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(103, 50, 'Prof. Deion Frami', 'Aut facilis omnis nobis et eius. Totam et ratione quos dolor rerum modi corrupti. Laborum et vero incidunt eos eos non mollitia.', 4, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(104, 31, 'Pietro Mueller', 'Quos quo quia soluta ea inventore ipsam in. Ut totam enim culpa qui aut. Qui est fugit consectetur non sequi ut.', 2, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(105, 18, 'Amina Mayert', 'Et commodi dicta dolores sit sit. Ut quia autem impedit nostrum est. Ut assumenda quibusdam iure in itaque. Ea earum enim dolorem quas. Eligendi velit quia soluta rerum eum iure.', 5, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(106, 41, 'Megane Franecki Sr.', 'Qui et quos distinctio rerum enim. Et reiciendis quisquam consectetur et explicabo delectus blanditiis. Eos non illo quia.', 5, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(107, 37, 'Baby White', 'Eos ut autem dignissimos temporibus vel. Temporibus laborum culpa reprehenderit eum.', 5, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(108, 19, 'Rylee Gerhold IV', 'Minima et deserunt sed quia. Molestiae reprehenderit qui itaque. Ullam nihil numquam fugit est sint dicta molestias. Quibusdam omnis aliquam quasi eum officia quos quia.', 0, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(109, 21, 'Brant Barrows', 'Adipisci voluptatum reiciendis inventore fuga et. Delectus facilis rerum qui. Iste ipsum sit quisquam et ipsa ut ut. Modi in perferendis quisquam temporibus.', 1, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(110, 26, 'Blanche Jacobs PhD', 'Quas vitae autem tempora porro explicabo aliquam. Aliquid repudiandae sit laborum quia dolore quod. Eligendi est autem cum sapiente sit nihil. Eum rerum voluptatem iusto unde autem impedit repudiandae exercitationem. Mollitia est optio quod maiores consequatur.', 5, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(111, 17, 'Prof. Jacinto Jacobs', 'Optio atque autem voluptas ea harum. Id ipsum voluptas dolorum ratione nostrum iste doloribus. Laborum non minima saepe aperiam iure at adipisci. Possimus aut qui dignissimos eveniet delectus et.', 0, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(112, 33, 'Prof. Buddy Bashirian', 'Repudiandae est unde voluptas aliquam. Nihil iste sed qui dicta sint excepturi facere. Eaque dolor vero dignissimos laudantium ut. Eius qui odit harum corrupti.', 1, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(113, 32, 'Brain Carroll', 'A quia similique commodi odit quia officiis. Exercitationem dignissimos nihil id ea. Delectus facilis cupiditate possimus dolor. Sit nihil repellendus id ex magni suscipit. Eos quo officia quo facilis.', 0, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(114, 2, 'Jacques Christiansen', 'Doloribus ut quod nostrum fugiat. At quis molestiae error fuga ut.', 5, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(115, 44, 'Anais Von', 'Ducimus sed at deleniti. Et numquam quaerat modi corporis quae. Ut voluptatem qui sapiente cumque nihil qui.', 4, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(116, 37, 'Blanche Schaefer', 'Et odit similique sed dolor quod explicabo laudantium aut. Repudiandae ex ut id eos omnis exercitationem.', 4, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(117, 45, 'Isabelle Kiehn V', 'Molestias accusamus quia molestiae rerum laudantium velit. Labore ut optio qui facilis. Et rem amet est consequuntur reprehenderit consequatur.', 2, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(118, 38, 'Jadon Wisozk', 'Voluptatibus asperiores adipisci eum dignissimos exercitationem placeat nam. Enim nisi odit quia et iusto reiciendis rem neque. Quia ut quia unde tempora doloribus.', 0, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(119, 49, 'Vilma Wolf', 'Molestias doloremque repellendus blanditiis dolor voluptatum. Et dolores consequatur qui consequatur optio inventore. Adipisci deserunt architecto amet consequatur reprehenderit unde. Sed possimus molestiae mollitia dolor.', 2, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(120, 39, 'Verona Gerlach', 'Commodi aut ducimus quos quam. Blanditiis velit unde sunt distinctio soluta. Vitae nihil deserunt quo voluptates cupiditate et. Ducimus voluptatem saepe quis quod incidunt magni.', 0, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(121, 48, 'Michaela Bernier', 'Temporibus voluptate qui necessitatibus rerum. Voluptas velit autem velit omnis. Dolore reprehenderit sed aut dolores consequatur. Nesciunt iste debitis accusantium ut nihil.', 5, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(122, 8, 'Adriana Cummings MD', 'Aliquid similique eius quis. Qui aspernatur aliquam nostrum dolore minus quos. Facilis doloremque iste praesentium quam hic.', 3, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(123, 11, 'Zena Schmeler', 'Non qui recusandae voluptatem ea eveniet accusamus. Repellat quod dolor sunt magni nobis repellendus. Earum ex molestiae provident facere neque voluptate.', 1, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(124, 43, 'Lowell Lubowitz', 'Vel consequatur eos veniam occaecati. Nesciunt praesentium natus eius molestias et debitis quasi. Rerum est nisi vero voluptatibus dolor.', 1, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(125, 23, 'Brent Gutkowski III', 'Rerum assumenda possimus reprehenderit corrupti consequatur suscipit architecto enim. Rerum id esse nam enim consequatur perferendis earum. Ut nemo aperiam dolores nam quia totam ut. Beatae quo ut voluptas consequatur.', 4, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(126, 20, 'Prof. Izabella Kuvalis IV', 'Doloribus debitis est amet laboriosam dignissimos accusantium. Neque beatae quibusdam et accusamus et. Sapiente consequatur architecto est est fugiat sed. Impedit suscipit labore sapiente praesentium est voluptatem molestiae facilis.', 2, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(127, 37, 'Fabian Conn', 'Autem dolorem qui quis alias neque quam alias. Harum expedita commodi ea. Et hic rerum est maiores. Quaerat ut atque ut repudiandae pariatur aut.', 1, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(128, 46, 'Vallie Cronin', 'Maiores et suscipit et voluptatibus illum qui qui est. Beatae iusto et natus. Sapiente cupiditate commodi tempora quas ea.', 2, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(129, 1, 'Janet Streich MD', 'Ipsam voluptas in iure. Omnis omnis voluptas in voluptas inventore amet ipsa. Quaerat doloremque eaque non voluptas dolor amet.', 5, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(130, 30, 'Ms. Maribel Spencer', 'Praesentium aut quis qui excepturi. Sapiente velit cumque necessitatibus. Debitis dolores facilis pariatur.', 1, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(131, 4, 'Opal Wintheiser', 'Sit molestiae qui veniam qui. Et facilis sint quis rem. Est accusantium quo quisquam et et rerum fugiat.', 4, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(132, 26, 'Mrs. Lavada Johnson DVM', 'Eos qui qui quia mollitia. Numquam consectetur rem tenetur sapiente incidunt molestias illo. Et est tempore necessitatibus quisquam sed.', 5, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(133, 12, 'Prof. Era Corwin II', 'Mollitia velit dolor perspiciatis esse harum quam. Accusantium perferendis qui id voluptas earum ut rem. Ut quia esse ipsa ad.', 1, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(134, 1, 'Coty Rice', 'Aspernatur expedita ad maxime perferendis exercitationem ratione atque aspernatur. Eveniet eaque voluptatem ea dolores. Mollitia maiores et velit.', 1, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(135, 15, 'Margarita Reichel', 'Reprehenderit veniam voluptatibus quae quam. Ipsam excepturi minus qui fugiat totam rem tempore. Totam officiis soluta excepturi ut et beatae. Veritatis ad dignissimos assumenda sunt eveniet earum dolorum.', 5, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(136, 43, 'Ms. Genevieve Keebler', 'Ut ipsum vitae laboriosam accusantium vel velit. Illo at in fugit assumenda et necessitatibus. Voluptatibus repellendus consequuntur possimus cumque. Placeat ut nihil et aut porro eveniet.', 3, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(137, 23, 'Dana Marquardt', 'Et deserunt blanditiis impedit enim. Voluptas esse accusamus repudiandae possimus quo quaerat. Earum tempora quae sed est voluptatum commodi.', 2, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(138, 17, 'Dulce Koepp MD', 'Cumque et nihil voluptates sunt reprehenderit labore est adipisci. Ut laboriosam et ipsum quae nisi minus assumenda. Dicta deleniti dolorum sed laborum.', 2, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(139, 32, 'Tillman Thiel Sr.', 'Nisi laboriosam adipisci veritatis est voluptatem. Neque quidem aliquid sint ea voluptas dolorum occaecati. Similique eveniet quia alias et libero voluptatibus eum.', 1, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(140, 21, 'Warren Lebsack IV', 'Assumenda voluptatem aperiam maxime quia est velit provident. Quia deleniti tenetur quo tempora quia. Accusamus aliquam aliquid itaque vitae qui et at qui.', 2, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(141, 39, 'Alysha Feil', 'Eaque quos et voluptas est ut molestiae veniam. Esse qui magni ipsa ut incidunt animi. Doloribus aut dolorum rem delectus nam deserunt. Qui fuga eaque odio maxime dolorem.', 1, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(142, 39, 'Prof. Kyla Harber IV', 'Suscipit accusantium quasi quis autem ex ullam optio dolores. Ea quia vel doloribus est aut laborum. Neque aut eius officia dolore animi laudantium quis.', 1, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(143, 44, 'Dr. Ransom Schinner MD', 'Officia qui facilis voluptatem nostrum aut. Provident ratione dolor repellendus dolores voluptates.', 3, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(144, 35, 'Prof. Jamar Bogisich', 'Nihil maxime eum quo et consequuntur. Eos nobis blanditiis nihil quae doloremque. In rerum accusamus quis expedita.', 3, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(145, 15, 'Prof. Enid Paucek', 'Cupiditate quis quis quam corrupti. Odio consequatur consequatur est non ut iusto. Amet voluptas omnis et necessitatibus sed.', 3, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(146, 12, 'Krystina Ritchie', 'Ut id et et praesentium ut ratione explicabo similique. Reiciendis impedit tempore iusto voluptatem. Neque sed et vel dicta minus.', 5, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(147, 48, 'Dr. Camron VonRueden DVM', 'Quia et veritatis consequatur sint dolorem ut. Optio quia nesciunt officia totam voluptas. Ut nesciunt quo in suscipit quidem voluptatibus. Culpa consectetur autem perspiciatis id voluptas. Exercitationem cum dolor facilis.', 2, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(148, 21, 'Aliyah Veum', 'Ex quia vero reiciendis aut enim veniam amet nihil. Accusantium ex tenetur maxime reiciendis in ut quidem. Voluptatem architecto voluptatem nostrum similique. Beatae tempore laudantium enim sed.', 3, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(149, 18, 'Prof. Francisco Hegmann', 'Unde ex praesentium eaque enim. In rerum et nobis ut voluptas iusto unde odio. Molestiae quibusdam amet ut eum. Totam ut neque numquam qui non. Voluptatum error hic dolor veritatis culpa eum.', 1, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(150, 11, 'Greyson Gleichner', 'Veniam delectus aperiam sit. Voluptas voluptatem voluptatem odit hic eum. Odit et voluptatum repellat cumque.', 5, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(151, 15, 'Jayden Treutel', 'Quisquam architecto aperiam dolores et occaecati nulla voluptatem nostrum. Est vel a quasi qui. Unde quas repudiandae et unde aut et est.', 3, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(152, 50, 'Ms. Onie Metz DDS', 'Voluptatem in hic excepturi omnis et asperiores. Odit qui aut consequatur cumque adipisci praesentium rem.', 1, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(153, 43, 'Prof. Carmel Beahan Jr.', 'Pariatur quam voluptas dolores autem aut tempora vel. Ullam voluptas voluptas laborum asperiores. Fuga cumque sed alias asperiores unde. Consequatur esse animi porro quisquam expedita consequatur voluptatum.', 3, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(154, 16, 'Angus Bergstrom', 'Vero omnis doloribus aut est aut nihil. Autem quis natus fuga sint est quia. Alias qui ut sapiente sed vitae sunt. Odio nostrum iste voluptas dignissimos.', 5, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(155, 24, 'Kristin Larson MD', 'Rerum dicta quam dolor enim distinctio aut tempora. Consequuntur doloribus ratione aut voluptate vitae. In voluptas similique vero ad eius.', 1, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(156, 40, 'Cassie Windler', 'Inventore veritatis autem neque. Ullam velit quia enim ut et qui. Eum sunt cupiditate dolorem ut. Harum blanditiis id veritatis.', 2, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(157, 44, 'Louie Sporer', 'Porro suscipit ratione ex porro. Facilis maiores enim inventore similique facilis id. Aperiam neque sint explicabo aspernatur maiores. Nam qui eveniet modi quae. Natus culpa eius earum alias.', 0, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(158, 39, 'Prof. Jessy Haley DDS', 'Unde quis accusamus et. Debitis aut assumenda totam sed doloribus velit. Enim nihil debitis praesentium suscipit alias in incidunt aut. Repellendus cumque voluptatem amet repudiandae qui.', 1, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(159, 35, 'Prof. Brice Stokes', 'Dolores minus asperiores sapiente aspernatur tenetur amet. Perspiciatis maiores optio corrupti eos. Itaque numquam blanditiis inventore quia qui. Omnis odit dolorum dignissimos vel assumenda.', 4, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(160, 4, 'Reed Schimmel', 'Vitae est suscipit aut itaque rerum. Ut qui et et enim velit et. Qui harum iusto maxime. Voluptatum est non aliquam nemo aut.', 3, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(161, 26, 'Cale Corkery', 'Blanditiis repudiandae earum error ut magnam nisi. Vel accusamus dicta et dolores aliquid. In sit debitis corrupti saepe est. Officia dolorum ad omnis.', 3, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(162, 43, 'Sasha Hane DDS', 'Deserunt distinctio vel facere maiores amet occaecati. Ratione quibusdam libero temporibus ut reprehenderit. Commodi eligendi debitis esse rem quam blanditiis aut. Modi nemo nobis ullam rem tenetur.', 0, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(163, 38, 'Dr. Lois Shields', 'Numquam voluptatem dolores blanditiis repellat laudantium aut. Ea possimus harum fugit et in veniam enim maiores.', 0, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(164, 40, 'Mrs. Antonetta Pouros PhD', 'Laudantium atque placeat enim debitis et. Consequatur in odit accusantium consequatur. Eum similique voluptates quos molestias consequatur dolore. Animi quae doloremque rerum voluptas eos ducimus. Et eligendi eos et.', 1, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(165, 42, 'Sim Koepp', 'Itaque similique vel et modi quo. Voluptatem ut ab porro et culpa vel nesciunt a. Sed nisi necessitatibus esse omnis sint odio animi odio.', 5, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(166, 48, 'Skylar Romaguera', 'Consequatur provident harum quam atque veritatis repellendus. Quibusdam dolores et impedit veniam nemo voluptatibus rerum. Provident architecto sequi iste voluptate voluptas ipsam.', 2, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(167, 7, 'Jaron Reinger', 'Magnam nihil libero ut placeat. Et voluptas consequatur assumenda quasi earum quaerat totam. Distinctio ipsum occaecati sed est aut. Mollitia eum pariatur ullam deserunt iste.', 1, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(168, 36, 'Eileen Gottlieb', 'At eaque rerum explicabo sint ducimus non. Sed nam itaque odio architecto dignissimos eius. Temporibus delectus mollitia adipisci dicta perspiciatis. Aliquam laboriosam quam iste et sed enim.', 2, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(169, 28, 'Blake Schmeler PhD', 'Officiis quas nemo temporibus temporibus. Ea dolore et asperiores pariatur ut nihil. Qui necessitatibus recusandae error dolores. Omnis est id nisi pariatur et vel nisi.', 1, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(170, 41, 'Eunice Hegmann', 'Omnis amet aut sunt. Sunt esse nulla et impedit iure. Dolorem facilis unde exercitationem voluptates a non facere. Provident ullam omnis ipsam eveniet soluta.', 4, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(171, 31, 'Kelton Barrows', 'Assumenda ea et non aperiam suscipit velit porro. Qui autem ut quae sit eius.', 5, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(172, 49, 'Laron Hirthe', 'Totam maxime eius omnis magni neque pariatur. Vel consequatur et dignissimos quos nihil et. Eum ea hic autem ipsam.', 1, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(173, 16, 'Alexie Willms', 'Hic consectetur quasi enim dignissimos quia laborum. Magni rerum provident dignissimos voluptas. Est nihil a possimus porro ut voluptas.', 4, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(174, 23, 'Spencer Swift', 'Rem et perferendis et necessitatibus eos optio. Nesciunt a rem optio. Veniam magnam incidunt molestiae aut consectetur et at. Eum iure sit sapiente.', 3, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(175, 11, 'Mr. Grayce Cole Sr.', 'Voluptates vero sunt tempore expedita. Fugiat quas deserunt quam ratione aut est officia voluptatem. Repudiandae sunt neque qui aliquid et voluptatum. Sunt accusamus non porro voluptatem.', 2, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(176, 3, 'Porter Prohaska', 'Amet aut amet quibusdam minima pariatur nemo. Excepturi id dolorem sit voluptas odit nobis. Nesciunt quaerat incidunt eum odio. Consequatur qui tempora et sunt natus repellat.', 0, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(177, 50, 'Gage Leannon', 'Cumque hic corporis reprehenderit quasi sint dolores. Consequuntur quas dolorum ipsam ab eum veniam quia. Necessitatibus et consectetur recusandae exercitationem.', 1, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(178, 39, 'Ellie McClure', 'Praesentium molestiae maxime sed a nihil. Quisquam enim excepturi soluta hic. Quod qui aspernatur cum modi blanditiis ut.', 5, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(179, 10, 'Alec Olson', 'Unde repellat nesciunt distinctio illo a quasi temporibus. Placeat amet vero vero consequuntur. Dolor tenetur ea rem deserunt sed sint.', 2, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(180, 31, 'Eliane Rutherford', 'Sunt corporis illo enim quia nesciunt illum. Perferendis inventore id veniam tempore et dolores laborum. Commodi quaerat quasi rem maxime recusandae assumenda. Consectetur praesentium corrupti voluptate voluptatibus quia. Ut unde tempora in soluta vitae enim molestias.', 0, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(181, 12, 'Dr. Karl Nitzsche', 'Aut iure est nostrum aut et alias quas. Dolorem delectus maxime sunt impedit sit. Repudiandae asperiores esse animi labore omnis iste maiores. Error dolor mollitia assumenda quidem nemo provident.', 5, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(182, 12, 'Prof. Ashtyn Mills PhD', 'Et voluptatem temporibus ipsam laboriosam aut ad. Dolores modi est accusantium earum. Eligendi debitis reiciendis nihil exercitationem tempora est voluptas.', 5, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(183, 19, 'Makenna Boyer', 'Praesentium dolor et sunt quia. Qui itaque velit error occaecati nemo et consequatur.', 1, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(184, 14, 'Miss Jessica Marks II', 'Autem laudantium accusantium et nam. Non distinctio aliquam voluptate natus. Ex debitis itaque omnis ea recusandae sapiente inventore. Dolor dolorem dolores mollitia laborum dolorum rerum vel perspiciatis.', 4, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(185, 20, 'Toney Crooks', 'Ut esse similique quam et minima. Labore ipsam facere illum aut omnis optio rem dicta. Eaque eius voluptatum hic ut quam. Eos blanditiis consectetur tenetur omnis.', 3, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(186, 6, 'Margarete Hartmann PhD', 'Dignissimos quia voluptatum eveniet vitae eos incidunt. Modi ut asperiores omnis quia. Sunt enim inventore quasi aperiam ipsum velit quos voluptates. Officia hic doloribus placeat error.', 4, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(187, 28, 'Gabriella Streich DDS', 'Et omnis eius tenetur ipsam repellat quis unde. Perspiciatis quia nemo reprehenderit explicabo assumenda eveniet. Accusamus aut dicta est quis. Itaque est officiis quo excepturi et ad dolore.', 1, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(188, 18, 'Lorine Ondricka', 'Dolore iure quasi rem consequatur et non quibusdam. Unde nam ut harum sit. Labore suscipit neque occaecati consequuntur commodi esse dolore.', 3, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(189, 9, 'Malvina Hane', 'Molestiae rerum qui non sed architecto quia. Labore modi sunt consequatur ea eius provident. Sed nostrum ducimus hic mollitia enim debitis atque saepe. Aut voluptas aut sed.', 2, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(190, 26, 'Briana Leannon DDS', 'Deleniti iste ex voluptatem sint ea suscipit voluptas. Magnam quo est magni architecto qui. Fuga et vel magnam et et iure.', 5, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(191, 1, 'Antonina Jenkins', 'Architecto assumenda provident eligendi enim sit a. Provident illum autem dignissimos dolorem autem nostrum. Aliquam odio aut autem impedit alias eos qui necessitatibus.', 4, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(192, 26, 'Mr. Wilfrid Will PhD', 'Qui nulla quasi libero inventore numquam reprehenderit. Autem enim deleniti suscipit voluptas commodi. Nihil dicta animi mollitia voluptas.', 3, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(193, 22, 'Elyssa Boyer', 'Voluptas voluptatem itaque doloribus doloribus. Asperiores qui quos enim facere. Atque eveniet ut placeat. Officia deleniti dolorem harum. Deleniti minima nemo aperiam labore.', 1, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(194, 33, 'Zora Tremblay', 'Minima omnis atque vel saepe architecto natus. Quae accusamus repellendus ut qui officia nesciunt doloribus alias. Provident repellendus exercitationem nam et sit vero voluptatem.', 3, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(195, 19, 'Derick Thiel', 'Nisi explicabo veniam facere a asperiores similique et. Ipsa totam harum maiores aut quaerat. Tenetur ipsum debitis voluptatem minus possimus. Hic quo voluptatum ullam dolorem quia dolorum.', 0, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(196, 19, 'Kane Bergstrom', 'Assumenda soluta aut voluptatem velit accusamus sint ad vel. Rerum quis sunt vel. Accusantium tenetur sunt modi excepturi.', 4, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(197, 17, 'Susie Bauch', 'A sint voluptas adipisci dolores corporis consequuntur et. Corporis velit rerum vel nostrum dolor temporibus. Amet magnam tempora omnis reiciendis. Quisquam labore sit expedita eum cum.', 1, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(198, 41, 'Coleman Feest', 'Quod beatae quibusdam et. Molestiae eos quo doloribus laudantium.', 0, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(199, 22, 'Dr. Edd Conn', 'Dolorem sint itaque et asperiores. Sequi praesentium nisi veniam ratione architecto ducimus est. Accusantium sequi sequi in delectus ut maxime. Magnam est quia quam eos eaque aliquid.', 5, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(200, 16, 'Miss Beverly Lubowitz Sr.', 'Aut non in est sint officiis corrupti accusamus. Debitis aut laboriosam odio quaerat sequi nostrum. Asperiores cupiditate voluptas voluptas sint fugit quia. Voluptatem ea doloremque quaerat neque tempore illum perspiciatis.', 0, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(201, 16, 'Prof. Zakary Kutch Jr.', 'Quam quibusdam neque nulla suscipit ullam alias eum consequatur. Dolor facere consequatur possimus non. Minima autem ducimus necessitatibus eos adipisci at totam. Aut quod aliquam asperiores.', 1, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(202, 44, 'Fabiola Gislason', 'Molestias repellat fugiat ut voluptatem. Qui nostrum mollitia molestias repellendus et. Tempore sed sit delectus velit dolore qui alias. Sequi eos voluptas consequuntur aspernatur ullam.', 1, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(203, 17, 'Mrs. Felipa Hand', 'Voluptas rerum vero cumque veritatis. Voluptates occaecati eveniet aperiam repudiandae. Vel asperiores veritatis quasi qui aut aut nobis.', 2, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(204, 22, 'Donnie Zulauf III', 'Nemo nam quae ut sit rem. Et minima et et iusto quisquam in.', 3, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(205, 30, 'Emerald Hand', 'Earum dolorem cupiditate numquam reiciendis soluta autem. Autem placeat impedit consequatur ipsam dolorem sed.', 4, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(206, 47, 'Jaime Nitzsche', 'Quo laudantium magnam est pariatur. Error occaecati eius excepturi deserunt veritatis sapiente.', 1, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(207, 45, 'Prof. Mavis Braun', 'Facere blanditiis dolorum dolorem et ut aut. Sunt et dolorum hic non aliquid recusandae unde. Sit vero voluptatem architecto possimus corporis. Culpa rerum eligendi enim possimus adipisci.', 4, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(208, 37, 'Randy Donnelly', 'Inventore nobis perferendis harum dicta suscipit corporis suscipit. Sint est minus reprehenderit et porro vel qui ut. Molestiae reprehenderit qui minus totam pariatur non iure.', 0, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(209, 38, 'Prof. Jovany Torp DDS', 'Voluptas consequuntur expedita est voluptas. Rerum repudiandae consequuntur veniam cumque a modi. Voluptatem nostrum earum vero ea pariatur blanditiis earum. Veniam ut qui ea in. Velit sed corporis quae ut excepturi deserunt.', 0, '2019-06-17 09:34:48', '2019-06-17 09:34:48');
INSERT INTO `reviews` (`id`, `product_id`, `customer`, `review`, `star`, `created_at`, `updated_at`) VALUES
(210, 17, 'Mitchel Legros DVM', 'Dolor amet iste itaque voluptatibus qui aspernatur aut quia. Voluptate quae consequuntur et maiores aspernatur iste et eligendi. Porro autem sequi non ipsum vero. Earum in iste ut voluptatem dolor quos.', 0, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(211, 20, 'Devin Reilly', 'Et architecto aut nemo eaque qui. Culpa placeat vitae perspiciatis velit non. Sit mollitia eum sit molestiae autem accusantium. In facilis accusamus adipisci.', 2, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(212, 28, 'Salvatore Crist', 'Culpa officiis ea reprehenderit et. Laboriosam reiciendis atque et ipsum non adipisci. Aut aut excepturi labore. Voluptatem id asperiores quam eius.', 0, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(213, 6, 'Clemmie Price', 'Enim maxime voluptatum et eaque. Praesentium molestias aut provident beatae ut occaecati magnam. Labore eius nostrum id. Totam expedita ut incidunt rerum.', 4, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(214, 3, 'Bette Farrell PhD', 'Molestiae ut molestiae nihil aut fuga voluptatem dolorem. Sunt fuga minus quia quam dolor. Repudiandae neque rerum dolorum quia et.', 2, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(215, 44, 'Jason Champlin', 'Fugit consequuntur quas velit quod aperiam molestiae. Praesentium quam neque minus est at dolor ut delectus. Dolores eveniet facere velit repellat aut et.', 4, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(216, 44, 'Audra Hackett', 'Sint molestiae eius voluptatibus ea. Modi eos quos et qui et vitae. Velit aliquam rerum veritatis quo dolor eveniet doloribus culpa. Corporis magnam laudantium porro rem voluptatem ut molestiae quidem. Consequuntur sapiente debitis et non sed.', 0, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(217, 24, 'Trudie Rohan', 'Quo enim iure aperiam ipsa blanditiis. Quas quod est praesentium libero sed dolor et. Ea vitae vitae ea voluptas facere.', 0, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(218, 21, 'Marilou Hagenes', 'Atque soluta velit sit voluptatibus. Qui voluptas velit culpa sit consequatur qui. Atque provident incidunt suscipit corporis. Veniam doloremque beatae maiores iusto.', 3, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(219, 40, 'Jaquelin Stamm', 'Eum repellendus iusto autem nemo cum. Enim modi culpa explicabo vero deserunt id. Occaecati facilis voluptas est aliquam quis numquam nobis. Corporis qui et natus similique quisquam id id.', 1, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(220, 46, 'Tom O\'Keefe', 'Sed quasi ratione provident suscipit quam. Accusantium aliquam ex omnis molestias. Est ab laudantium maxime labore nostrum. Enim adipisci et veniam corrupti. Soluta quibusdam et eum atque.', 2, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(221, 11, 'Prof. Carol Prohaska DDS', 'Adipisci accusantium similique culpa. Adipisci quidem quos aperiam occaecati et. Ut magnam quasi officiis ea animi voluptas.', 3, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(222, 25, 'Dr. Dane Ferry III', 'Voluptatem voluptas sint veniam at. Modi ipsum quasi illo necessitatibus ut ut molestiae. Ut alias quia facere aut nisi incidunt odit. Nihil sed hic voluptas et temporibus nam.', 3, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(223, 37, 'Newton Gutmann DVM', 'Ut vel quaerat perspiciatis eos. Possimus minus minus ipsam et molestias animi. Sequi perferendis porro aliquid est harum quos nulla. Animi fuga eaque consequuntur aut non qui.', 3, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(224, 36, 'Dorothy Stiedemann', 'Quo aut nihil vitae qui id magni et. Et aut quia iure. Et ut iusto sunt.', 0, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(225, 22, 'Ms. Ursula Ullrich V', 'Voluptatem voluptatem enim accusantium sed omnis delectus dolores. Ut excepturi sed in atque quae aspernatur occaecati. Assumenda error eos rerum quae accusamus et.', 5, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(226, 19, 'Aimee Kunze', 'Eos quos minima et harum error saepe aut. Ullam labore aut voluptates et. Dignissimos qui officia dolorem exercitationem dignissimos ut.', 0, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(227, 20, 'Odie Powlowski', 'Harum omnis perspiciatis perferendis magnam et sit enim rerum. Et quisquam ut non repellat inventore amet tempore. Non quia vel dolores molestias esse error.', 5, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(228, 46, 'Margarette Leffler', 'Eligendi tempora voluptatem nihil velit et. Tenetur commodi ut eligendi. Rem velit dicta labore alias nulla veniam.', 2, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(229, 20, 'Karson Hettinger', 'Eum repudiandae dolores corrupti fugiat. Voluptatem accusantium libero reiciendis quod consequatur sit exercitationem. Et consequatur tenetur hic laborum ut non.', 5, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(230, 18, 'Kory Lynch', 'Amet et tempore totam dolorem. Similique aut suscipit natus a illum et. Atque sint veniam unde saepe. Aut quo numquam consequatur aut consequatur. Consectetur odio inventore ut praesentium.', 0, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(231, 34, 'Brooklyn Gutkowski', 'Delectus odio non aspernatur illo. Dignissimos rerum asperiores consequatur fuga odit quibusdam accusantium sed. Sed minus et excepturi amet quasi odio dolorem blanditiis.', 0, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(232, 38, 'Alene Tillman', 'Atque labore ut quis eveniet expedita. Consectetur et cumque ab architecto quia vel omnis omnis. Et et ut sunt qui sapiente dolorem et. Velit assumenda repudiandae repellat alias dolor sit dolore eligendi.', 1, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(233, 19, 'Dr. Rey Bergstrom', 'Fuga vel tempore iure iusto adipisci dolor dolores. Repellendus ab ducimus neque voluptas velit deleniti aut et. Sapiente itaque nobis quo fugiat et repudiandae dolorem. Alias animi officia vero quia aut.', 2, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(234, 25, 'Jeffry Haley', 'Sint in dignissimos eum quo aspernatur voluptate laudantium consectetur. In repudiandae cupiditate laboriosam incidunt quos accusantium ratione. Alias sunt dolor sapiente aut.', 3, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(235, 28, 'Freda Ebert', 'Aut aliquid quia qui facere sint. Doloremque illo et eos eligendi vel qui sunt ab. Rem ipsam minus consequuntur et omnis voluptatum.', 5, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(236, 44, 'Virgil Wilkinson', 'Et fugit voluptatem et aperiam ea et voluptatibus. Aut enim nesciunt harum placeat dolor ut dolorum. Officia ea voluptatibus perferendis atque impedit laborum. Ipsa fugiat sit soluta amet provident rerum est.', 5, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(237, 13, 'Domenica Kutch Jr.', 'Et commodi accusamus incidunt magnam tempore eveniet. Earum illo atque est itaque et amet quia. Sit sequi quia mollitia ea aliquid ut sint.', 2, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(238, 41, 'Mrs. Alyson Durgan', 'Vero aperiam eius nesciunt perferendis quidem iste sed. Consequatur unde delectus laboriosam consequatur. Nemo et nam voluptates optio est. Voluptas consequuntur at qui voluptas.', 5, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(239, 12, 'Mac Hansen', 'Maiores delectus repudiandae rerum. Enim corrupti molestias possimus doloribus fuga ab aut. Magni unde quasi labore vero est nostrum corrupti ipsa. Eos totam totam voluptate nulla maxime qui.', 3, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(240, 31, 'Chaim Hills', 'Provident quia a voluptas facere neque molestias. Quia magnam aliquam qui minus voluptates quia et. Et est labore quia asperiores voluptas et ex. Perferendis nostrum et deleniti nisi inventore possimus.', 0, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(241, 18, 'Chaya Hickle', 'Qui culpa vel minima in atque ipsa laudantium saepe. Ut consequatur est ratione porro officia et possimus. Quo iste enim distinctio.', 0, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(242, 29, 'Manuel Altenwerth', 'Voluptates velit consequuntur eius earum quis. Ex velit laborum voluptatum. Velit fugiat accusamus tenetur dolores vero beatae. Accusantium at sit itaque officiis facere dolorem.', 0, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(243, 4, 'Geraldine Kunde', 'Alias nulla repudiandae delectus. Voluptas qui corporis quod eum aut neque. Eos quisquam consectetur illum ut aut et.', 4, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(244, 29, 'Unique Marks', 'Numquam voluptatem consequatur asperiores consequuntur consequatur vel. Sapiente qui omnis rerum iste eaque impedit. Voluptatem repellendus ex id assumenda hic cupiditate.', 3, '2019-06-17 09:34:48', '2019-06-17 09:34:48'),
(245, 19, 'Breanne Nienow II', 'Omnis aliquid quasi voluptas distinctio. Quae qui omnis quasi et nobis reiciendis nisi quam. Dolores minima repudiandae est enim consequatur et.', 2, '2019-06-17 09:34:49', '2019-06-17 09:34:49'),
(246, 43, 'Tara Nicolas', 'Asperiores a ut quaerat officia occaecati. Ipsam voluptas accusamus eligendi facilis. Qui architecto ut similique consequatur et mollitia. Nisi vel sit assumenda et impedit.', 2, '2019-06-17 09:34:49', '2019-06-17 09:34:49'),
(247, 36, 'Sallie Mohr', 'Minima et dolor aut non nesciunt ut eius eos. Ullam omnis sed velit tempora. Odio recusandae et optio corrupti sint veritatis vel. Nostrum ut aut sit quo.', 4, '2019-06-17 09:34:49', '2019-06-17 09:34:49'),
(248, 42, 'Mrs. Mckayla Bogisich DVM', 'Nostrum minus quia enim ad veniam. Id reprehenderit minima incidunt voluptate at eum. Praesentium labore optio alias ab deleniti praesentium et. Nostrum et sed ut facilis hic id.', 4, '2019-06-17 09:34:49', '2019-06-17 09:34:49'),
(249, 38, 'Emmett Harvey V', 'A rerum distinctio consequatur placeat possimus eveniet est. Aut magni iusto asperiores quia pariatur. Optio ipsum et aperiam. Sed animi iusto vero minus iusto non nihil. Sed eos reprehenderit eveniet unde non in aliquam.', 4, '2019-06-17 09:34:49', '2019-06-17 09:34:49'),
(250, 21, 'Dion Homenick', 'Voluptas quis omnis enim sequi quaerat. Voluptatem qui excepturi fugiat omnis dolore quisquam. Sunt accusantium minus omnis aut pariatur eum voluptas. Inventore error maiores voluptates voluptate. In occaecati error non et atque rem deleniti.', 2, '2019-06-17 09:34:49', '2019-06-17 09:34:49'),
(251, 22, 'Rylee Strosin', 'Voluptate molestiae quia expedita rerum quia doloremque voluptas. Vel cupiditate laudantium sed. Veniam ad et voluptatem voluptas vel accusantium deleniti distinctio. Sed et eaque sapiente rem natus est dolor.', 2, '2019-06-17 09:34:49', '2019-06-17 09:34:49'),
(252, 5, 'Armando Abbott', 'Corrupti dolor aliquid ullam et porro. Sed eveniet iure aperiam sit fugit voluptatem dignissimos. Culpa eveniet ipsa rem dolor velit aut.', 1, '2019-06-17 09:34:49', '2019-06-17 09:34:49'),
(253, 24, 'Watson Purdy', 'Odio tempora nihil et occaecati molestiae. Pariatur est doloribus architecto fugiat expedita provident cupiditate. Fugiat est eaque consectetur iste est animi.', 2, '2019-06-17 09:34:49', '2019-06-17 09:34:49'),
(254, 18, 'Maximillian Littel', 'Omnis reprehenderit et et laborum quas aperiam. Non et eum reprehenderit fugiat deserunt et. Impedit id corrupti culpa atque.', 4, '2019-06-17 09:34:49', '2019-06-17 09:34:49'),
(255, 13, 'Mr. Westley Schowalter', 'Quam et suscipit fugit vel incidunt ea molestiae. Autem non nulla nostrum mollitia beatae iure voluptatem in. Beatae illum assumenda commodi non aut.', 3, '2019-06-17 09:34:49', '2019-06-17 09:34:49'),
(256, 3, 'Richmond Huel MD', 'Minima maxime nemo amet. Sint voluptas et amet sunt provident. Architecto tenetur molestiae dignissimos vitae ex et explicabo.', 3, '2019-06-17 09:34:49', '2019-06-17 09:34:49'),
(257, 26, 'Gracie Hermiston', 'Adipisci facere nisi tempora repellendus aut. Eaque at ullam saepe accusamus maiores eaque qui qui. Deserunt nesciunt ea totam necessitatibus magni soluta consequatur.', 1, '2019-06-17 09:34:49', '2019-06-17 09:34:49'),
(258, 18, 'Kiera Zemlak', 'Illo qui voluptas dolor est nisi laborum. Incidunt repudiandae nihil eveniet magni qui animi ut. Vitae vel mollitia atque sequi.', 0, '2019-06-17 09:34:49', '2019-06-17 09:34:49'),
(259, 16, 'Lauryn Feil', 'Quasi non deserunt excepturi ut voluptatem aut sed. Vitae dolor sint expedita et vel tempore necessitatibus iste. Placeat rem eius iure veniam saepe. Eum aut sint ea in est dolor quia.', 0, '2019-06-17 09:34:49', '2019-06-17 09:34:49'),
(260, 21, 'Shaun Hoeger', 'Amet eius et repellendus omnis reiciendis culpa. Omnis et in et. Harum odit facilis nulla praesentium temporibus asperiores reprehenderit.', 4, '2019-06-17 09:34:49', '2019-06-17 09:34:49'),
(261, 45, 'Ernest Casper DDS', 'Itaque ut soluta nobis voluptatum non a. Aliquid odit natus eligendi dolor. Ut rerum voluptatem qui vel dolores ad voluptas. Error numquam rerum laboriosam dolores id perspiciatis voluptas hic. Dolor qui et animi facilis aliquam.', 1, '2019-06-17 09:34:49', '2019-06-17 09:34:49'),
(262, 4, 'Mr. Garnett Lowe III', 'Quia dolores aut dicta repudiandae. Et sit adipisci est quia in magni et nobis. Ut ipsum in dolorem a aut accusantium natus blanditiis. Dolores voluptatem deleniti aspernatur doloribus rerum voluptate officia.', 2, '2019-06-17 09:34:49', '2019-06-17 09:34:49'),
(263, 10, 'Annetta Wolff', 'Culpa rerum saepe expedita et voluptas dolor quas. Aut ullam architecto ullam. Vitae dolorem ullam in voluptas delectus.', 2, '2019-06-17 09:34:49', '2019-06-17 09:34:49'),
(264, 17, 'Meta Boehm V', 'Consequatur alias vero id laboriosam voluptas praesentium consectetur et. Fugit laborum quos minima et. Quos eos dolorem perferendis et quia.', 3, '2019-06-17 09:34:49', '2019-06-17 09:34:49'),
(265, 24, 'Alivia Sauer DDS', 'Nulla fugiat excepturi sit ipsa deleniti error inventore illum. Incidunt laborum omnis quo iure. Id atque quae aut animi totam at.', 4, '2019-06-17 09:34:49', '2019-06-17 09:34:49'),
(266, 24, 'Prof. Adolph Kub II', 'Corrupti dignissimos autem eaque nihil id eos accusantium. Blanditiis velit quae sed repellendus odio praesentium. Doloremque nulla dolorem non perspiciatis corrupti culpa aliquam. Dignissimos unde animi et sequi ut iste.', 3, '2019-06-17 09:34:49', '2019-06-17 09:34:49'),
(267, 1, 'Steve Eichmann', 'Aperiam commodi quasi voluptas voluptatibus dolores molestias. Velit et harum possimus hic laudantium ea autem nihil. Veniam ea omnis quia molestias dolor aperiam quia asperiores. Nihil facere ratione atque quia minima minus. Minima ullam molestiae impedit nostrum nesciunt veniam nisi.', 5, '2019-06-17 09:34:49', '2019-06-17 09:34:49'),
(268, 16, 'Prof. Hailee Monahan', 'Commodi quidem aut est. Velit amet sit amet enim et. Impedit qui aut optio numquam ullam et ut occaecati.', 2, '2019-06-17 09:34:49', '2019-06-17 09:34:49'),
(269, 44, 'Dr. Eloise Spencer DDS', 'Laboriosam et asperiores natus. Aliquam consequatur debitis vero ex vero mollitia cum. Vel sed quas distinctio aut. Temporibus aspernatur sit expedita reiciendis ab omnis quos. Voluptatum quisquam rerum in sequi sit quam beatae.', 2, '2019-06-17 09:34:49', '2019-06-17 09:34:49'),
(270, 23, 'Corrine Kirlin', 'Fugit similique totam quaerat sed ut et corporis. Pariatur natus laudantium quo accusamus. Voluptatibus voluptas unde corrupti. Delectus rerum rerum ut nihil occaecati est modi.', 3, '2019-06-17 09:34:49', '2019-06-17 09:34:49'),
(271, 12, 'Antonetta Daniel PhD', 'Impedit natus ut omnis. Repellendus occaecati veniam ipsum omnis. Culpa vitae quia et dolores odio omnis dolorem. Ex odio consequatur cupiditate corporis est non voluptatem velit.', 3, '2019-06-17 09:34:49', '2019-06-17 09:34:49'),
(272, 25, 'Dr. Travis Simonis', 'Vel tempora inventore sunt quos perspiciatis soluta. Esse alias perspiciatis ad inventore. Repellat veniam aliquid exercitationem. Nulla et occaecati velit qui illo perferendis.', 1, '2019-06-17 09:34:49', '2019-06-17 09:34:49'),
(273, 12, 'Alysa Walker', 'Omnis qui aspernatur nulla ducimus asperiores aperiam quis tempora. Ab dicta perspiciatis consectetur. Incidunt dolore repudiandae blanditiis et iste magnam quaerat.', 5, '2019-06-17 09:34:49', '2019-06-17 09:34:49'),
(274, 23, 'Aniyah Rosenbaum', 'Provident atque ex autem id est delectus repellendus. In esse illo ratione et consequuntur et soluta in. Dicta explicabo maiores recusandae officia illo cumque perspiciatis. Quia quia fugit est culpa quod qui velit eius.', 1, '2019-06-17 09:34:49', '2019-06-17 09:34:49'),
(275, 10, 'Irma Wolf', 'Aliquid sed omnis hic dolorem repudiandae aspernatur. Cumque sint quos sunt pariatur nam sit itaque impedit. Error asperiores ullam omnis. Ducimus sed repellat debitis animi quis suscipit nisi qui.', 5, '2019-06-17 09:34:49', '2019-06-17 09:34:49'),
(276, 23, 'Toby Wintheiser', 'Magnam dolorem ut optio porro enim. Similique qui quaerat ex aspernatur vel esse mollitia. Tempore quia sed omnis aut minima voluptatem dolores. Iste necessitatibus quam assumenda soluta.', 4, '2019-06-17 09:34:49', '2019-06-17 09:34:49'),
(277, 48, 'Eliza Mitchell', 'Aut consequatur molestiae accusantium amet ut. Sapiente maiores unde voluptatum et quis dolorum.', 3, '2019-06-17 09:34:49', '2019-06-17 09:34:49'),
(278, 4, 'Prof. Josie Durgan', 'Sit expedita rem voluptatibus dolor veniam. Tempore nesciunt provident accusantium voluptatibus.', 4, '2019-06-17 09:34:49', '2019-06-17 09:34:49'),
(279, 22, 'Linnie Kuvalis', 'Quia ad et laudantium. Consequatur suscipit consequatur dolores nihil aut corrupti perferendis. Ex porro incidunt eum neque atque.', 0, '2019-06-17 09:34:49', '2019-06-17 09:34:49'),
(280, 47, 'Telly Steuber', 'Ut quasi in voluptatum vel et. Soluta ratione optio iste est sunt. Labore rerum eaque nulla praesentium sunt. Esse consequatur voluptatum aut aut.', 3, '2019-06-17 09:34:49', '2019-06-17 09:34:49'),
(281, 12, 'Lydia Wintheiser MD', 'Possimus eligendi et dignissimos vitae sunt. Inventore earum aut doloremque facere beatae voluptatem ex. Praesentium aliquam distinctio praesentium.', 5, '2019-06-17 09:34:49', '2019-06-17 09:34:49'),
(282, 8, 'Benton Walker', 'Ea ratione non dicta. Et qui vel et alias quia placeat. Soluta quibusdam voluptatum non est amet animi dolores.', 5, '2019-06-17 09:34:49', '2019-06-17 09:34:49'),
(283, 35, 'Ashley Mertz', 'Est nobis sit facere placeat temporibus voluptatem. Voluptas id tempore voluptatem voluptas et dolores perferendis perferendis. Sed natus sed blanditiis dolor repellat harum autem.', 3, '2019-06-17 09:34:49', '2019-06-17 09:34:49'),
(284, 41, 'Rosalinda Ziemann', 'Sint inventore qui consectetur veniam distinctio nemo modi. Sed et quibusdam optio cumque quidem ipsa sapiente eos. Tenetur et enim blanditiis id porro. Nemo accusantium voluptatem perspiciatis dignissimos harum deserunt.', 5, '2019-06-17 09:34:49', '2019-06-17 09:34:49'),
(285, 33, 'Virginia Cormier', 'Voluptatem iusto voluptatem voluptate quo voluptatum sed minima. Dolor et at eum voluptates voluptatum et consectetur. Ex enim adipisci quasi omnis.', 3, '2019-06-17 09:34:49', '2019-06-17 09:34:49'),
(286, 19, 'Prof. Alfred Stoltenberg V', 'Sit sint voluptatum voluptate facilis esse aut. Et nobis omnis est totam quod ratione tempore. Quis ipsam repellat soluta omnis veritatis maxime corrupti non. Quidem laudantium autem quod sunt sequi saepe.', 5, '2019-06-17 09:34:49', '2019-06-17 09:34:49'),
(287, 7, 'Adrien Prohaska IV', 'Vel quos iusto ipsum asperiores quaerat dolore veniam quia. Aut dolorem dolore et et dicta et ut eum.', 4, '2019-06-17 09:34:49', '2019-06-17 09:34:49'),
(288, 10, 'Adele Kshlerin', 'Saepe quasi sit doloremque voluptatum nisi. Amet non deserunt occaecati et ut. Autem consequuntur qui deserunt voluptatibus incidunt dolores asperiores.', 3, '2019-06-17 09:34:49', '2019-06-17 09:34:49'),
(289, 2, 'Douglas Rowe', 'Ut nobis soluta quia dolorem aperiam esse quo. Non labore a ducimus quis consectetur eos.', 2, '2019-06-17 09:34:49', '2019-06-17 09:34:49'),
(290, 39, 'Mrs. Christina Tromp DVM', 'Cupiditate commodi itaque quis inventore aut. Omnis ut ut aut. Sed neque vel alias est autem impedit. Temporibus ipsam voluptatem vitae adipisci perspiciatis eligendi.', 4, '2019-06-17 09:34:49', '2019-06-17 09:34:49'),
(291, 31, 'Aleen Franecki Jr.', 'Aspernatur aliquam qui voluptatem nihil ex molestiae. Voluptatem quasi deserunt voluptatem sed officiis.', 1, '2019-06-17 09:34:49', '2019-06-17 09:34:49'),
(292, 34, 'Mrs. Rosalee Ortiz I', 'Id quidem provident adipisci ut minus. Quasi delectus sed ea commodi. Earum pariatur delectus voluptas reiciendis impedit ea aut.', 4, '2019-06-17 09:34:49', '2019-06-17 09:34:49'),
(293, 9, 'Jackeline Kreiger', 'Repudiandae qui non possimus qui consequatur molestias corrupti sint. Quis voluptates ducimus error dolore. Eius ut et culpa molestiae repellat.', 3, '2019-06-17 09:34:49', '2019-06-17 09:34:49'),
(294, 36, 'Ismael Kihn', 'Delectus ut alias non non. Quia beatae et maiores dolore. Tenetur magnam quasi voluptas sint. Molestiae magnam vitae et rerum ut dolorem. Dolores possimus sed dolorem amet.', 0, '2019-06-17 09:34:49', '2019-06-17 09:34:49'),
(295, 30, 'Madisen Grant', 'Quisquam est natus suscipit ea qui. Soluta aut similique vero nam qui nemo et quaerat. Aut fuga repellat aut nisi architecto ratione. Consequatur placeat molestiae officiis.', 3, '2019-06-17 09:34:49', '2019-06-17 09:34:49'),
(296, 2, 'Dr. Delbert Davis', 'Ipsa fuga porro eum. Voluptatem et sunt dolor repellendus eius voluptas tenetur.', 0, '2019-06-17 09:34:49', '2019-06-17 09:34:49'),
(297, 28, 'Kailey Crooks', 'Porro facere animi a voluptas. Quia non repellendus odit voluptas voluptatibus esse. Qui animi beatae ad fugiat ducimus. Corporis neque doloremque sit aut.', 2, '2019-06-17 09:34:49', '2019-06-17 09:34:49'),
(298, 44, 'Lizeth Harris', 'Soluta consequuntur nihil ducimus iure expedita. Vitae porro veritatis consequatur sed voluptate dolorem vel provident. Officiis et et sed eius voluptates blanditiis est. Fuga voluptatum nulla ea et est.', 2, '2019-06-17 09:34:49', '2019-06-17 09:34:49'),
(299, 22, 'Vilma Ziemann', 'Voluptatem error praesentium ut quia ea. Molestiae illum temporibus fuga inventore provident numquam recusandae natus. Dicta ab qui nobis recusandae odio ipsa eius quis. Enim ut voluptates corrupti.', 0, '2019-06-17 09:34:49', '2019-06-17 09:34:49'),
(300, 2, 'Summer Harris', 'Ipsum aut nam et atque. Qui maxime iste ut quam libero fugit. Odio pariatur ea perspiciatis consequuntur ipsa. Impedit quod recusandae odio fugit quis sunt id.', 3, '2019-06-17 09:34:49', '2019-06-17 09:34:49'),
(301, 20, 'Aslam', 'Here is some review text', 4, '2019-06-17 10:12:15', '2019-06-17 10:12:15');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Audreanne Stiedemann', 'cecil94@example.net', '2019-06-17 09:34:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'm6OiE23Bg9', '2019-06-17 09:34:47', '2019-06-17 09:34:47'),
(2, 'Dalton Barton', 'reilly.millie@example.org', '2019-06-17 09:34:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'OPTUxcq3U3', '2019-06-17 09:34:47', '2019-06-17 09:34:47'),
(3, 'Dr. Herminia Turner', 'hartmann.eliane@example.com', '2019-06-17 09:34:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'DsrUpiIFOC', '2019-06-17 09:34:47', '2019-06-17 09:34:47'),
(4, 'Sarina Blanda', 'jacinthe73@example.net', '2019-06-17 09:34:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Oy4wW5kSEh', '2019-06-17 09:34:47', '2019-06-17 09:34:47'),
(5, 'Nat Rutherford', 'ahmad92@example.com', '2019-06-17 09:34:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'N8wJB9zHhi', '2019-06-17 09:34:47', '2019-06-17 09:34:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_user_id_index` (`user_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_product_id_index` (`product_id`);

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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=303;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
