-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 08, 2026 at 11:48 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lens-and-light`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart_items`
--

CREATE TABLE `cart_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `count` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `image`, `count`, `created_at`, `updated_at`) VALUES
(1, 'Cameras', 'cameras', 'https://lh3.googleusercontent.com/aida-public/AB6AXuCuU7ovYqCKCFnhn1QSSjpKQGZlvZoj0Grx55YCUgxeb6yEDGWUIZg4_3o1RLOUK94PHhyM8hR3v0szZFFPg9zWivwqTDuV1XVisFxsWFC1mgE13gLraoz2l3siDDF7TMHCpn6NF251uaIz1dQgZ9j9Qfk1R5zPhZk20iaMhZxBQznMlDI5i7vI5v56BQG28MIo-DJDH7FrDCUF2NZFnRj1Kol2mvzAqGYbHFl9Ec1GBnJgegtTdFdiYEQiknrGB1UVVq81st7egQM', '120+ models', '2026-02-08 19:56:37', '2026-02-08 19:56:37'),
(2, 'Lenses', 'lenses', 'https://lh3.googleusercontent.com/aida-public/AB6AXuBCwaBcHDQ1Pxs-c7wZdQsX0VC4GhnCc1gMbPc0Gj4XilJGR8RbKWIUSE3K4Ap2jktQi05UZewZESnppRrhTBEu_BUNQZuKSMn-48uC2BXTSd7B2F9FUkC5Bul81YbHTeQUmVs2arww5ZRD14FCAixP0dvLDfgzkSWZwMPTwXimUNOSkt8kIRqXFmacY5hVtOor7oxu0EX0y5CUKDGOoR4P26uBGGaWfRzW7_pcjOcH1dhQvcRD5x84oyPM5TVkZK1AdrdMHDvyT9k', '300+ options', '2026-02-08 19:56:37', '2026-02-08 19:56:37'),
(3, 'Lighting', 'lighting', 'https://lh3.googleusercontent.com/aida-public/AB6AXuCTLLAzkbpdJKu3xI-6OWDFGyrWhhl5uUgN0u-Hjfg6Zzri3JWkDnWwGS6pQqxM2mjuqeEyBXR_MytEMcIkuXL1x71X-8MeRi9e3Ge-1G_KNdI1Sz_991tOi2QjDinF4c4c3rgPMsHxiK2RkwT-5K3OReQBgyvFsUbt6vtF0DlqjDTqQvUJPxK43Vkic334yBaDBK3mRdQ1vlIDoFFnRe_AjeVPt3T4a-nN53AlgU_Gn28FMlZllaKmlbaHOQgopX4Nl1thQM15oaM', '80+ kits', '2026-02-08 19:56:37', '2026-02-08 19:56:37'),
(4, 'Accessories', 'accessories', 'https://lh3.googleusercontent.com/aida-public/AB6AXuCiCRbF508BHKrQgsrA1W6_FcU6IzWf8XQZF44LvfHvDQ3lcCbqDEwS1EiDE7wyLsoJ_XkGuHBuNHIAwplmELs6pohJtq_44mZ1PAFKzLlOFJ4G0rYoCwSXs7lUa4CWEs6nOyndkZwsNFYBlh7CXnTwoQQtypSUWnWy9LabWX9ySRyBC92916zXq_PDGOKs3IWbobDHZaNhabI_sGOz9cGV9GdBXwKwnrv7MTFwQapboGFNVVgq7YoIcQluJLCC1WmZA-Tqmmjfi8I', '500+ items', '2026-02-08 19:56:37', '2026-02-08 19:56:37');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2026_02_08_214308_create_users_table', 1),
(3, '2026_02_08_214309_create_categories_table', 1),
(4, '2026_02_08_214310_create_products_table', 1),
(5, '2026_02_08_214311_create_cart_items_table', 1),
(6, '2026_02_08_214312_create_promo_codes_table', 1),
(7, '2026_02_08_214313_create_orders_table', 1),
(8, '2026_02_08_214314_create_order_items_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `subtotal` decimal(10,2) NOT NULL,
  `tax` decimal(10,2) NOT NULL,
  `shipping` decimal(10,2) NOT NULL,
  `discount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `total` decimal(10,2) NOT NULL,
  `promo_code` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `shipping_address` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`shipping_address`)),
  `billing_address` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`billing_address`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'auth_token', '169508820857a76d26fb93b84e8fddfe050948a91befa5678745dbed617ac634', '[\"*\"]', NULL, NULL, '2026-02-08 19:59:41', '2026-02-08 19:59:41');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `original_price` decimal(10,2) DEFAULT NULL,
  `rating` decimal(2,1) NOT NULL DEFAULT 0.0,
  `review_count` int(11) NOT NULL DEFAULT 0,
  `image` text NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `description` text NOT NULL,
  `in_stock` tinyint(1) NOT NULL DEFAULT 1,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `sku` varchar(255) NOT NULL,
  `badge` varchar(255) DEFAULT NULL,
  `images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`images`)),
  `specifications` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`specifications`)),
  `features` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`features`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `brand`, `price`, `original_price`, `rating`, `review_count`, `image`, `category_id`, `description`, `in_stock`, `quantity`, `sku`, `badge`, `images`, `specifications`, `features`, `created_at`, `updated_at`) VALUES
(1, 'Alpha Z1 Flagship Camera', 'Alpha', 3899.00, NULL, 5.0, 328, 'https://lh3.googleusercontent.com/aida-public/AB6AXuCuU7ovYqCKCFnhn1QSSjpKQGZlvZoj0Grx55YCUgxeb6yEDGWUIZg4_3o1RLOUK94PHhyM8hR3v0szZFFPg9zWivwqTDuV1XVisFxsWFC1mgE13gLraoz2l3siDDF7TMHCpn6NF251uaIz1dQgZ9j9Qfk1R5zPhZk20iaMhZxBQznMlDI5i7vI5v56BQG28MIo-DJDH7FrDCUF2NZFnRj1Kol2mvzAqGYbHFl9Ec1GBnJgegtTdFdiYEQiknrGB1UVVq81st7egQM', 1, 'Professional full-frame mirrorless camera with 50MP sensor', 1, 15, 'CAM-ALPHA-Z1-001', 'New Arrival', '[\"https:\\/\\/lh3.googleusercontent.com\\/aida-public\\/AB6AXuAXnvFG023IHMdhkE3f68FmYQJVXGu7x11o6RTG0LqUkFVbWIr33RGZf-3yULPaGLfCAoLlf0DMbvNx_6evAX7T9cG97_ONxJMP2eiSwESyWK_SgsiO1-Fx_ekyt8Ih9u5HMtl4Ai77yNFI3gY1gd8Z-pXxhxZfJB6rCoTobIJzrFgN6UzGjLMu4UXSOdn9Q_tsp0Ww-TnKibMi0fJ_L4khc323qogMBpKuKaNKJxCsxP8RQjlipf-7bTE6BI8jR5aAokbwOJR1_VE\",\"https:\\/\\/lh3.googleusercontent.com\\/aida-public\\/AB6AXuDwJ1Vth5Ae1ScaQyzCa9z2u5lOZVzEuVnf-ai1FQVWbVOKecyzvndCUqkSF4FOd04T_OjBUOEP7l_4AUnJ71mMD0gP7ilwB4lPEWIzOUynbBSOc_rl2Rk0fG8Aajqxa12Bb-r4lMWXohmoXNiOl-ua-2oiadugQbb1caKYkHZ0YeqnRuXnwfpaLvaOuZMBRedAbYzDrVDjIN-o-Ckd5HU0zCGRGkWqjMFfd0WtksssLpwRKClhfAeDIKLBO4_f0SzB7cCZQB4Tfww\"]', '[{\"label\":\"Sensor\",\"value\":\"50.0MP Full-Frame CMOS\"},{\"label\":\"ISO Range\",\"value\":\"100-51200\"},{\"label\":\"Video\",\"value\":\"8K 30fps\"},{\"label\":\"Screen\",\"value\":\"3.2\\\" Touchscreen LCD\"}]', '[\"In-body 5-axis stabilization\",\"Dual card slots\",\"Weather-sealed body\",\"693-point AF system\"]', '2026-02-08 19:56:37', '2026-02-08 19:56:37'),
(2, 'Canon EOS R5 Mirrorless Camera Body', 'Canon', 3899.00, NULL, 5.0, 245, 'https://lh3.googleusercontent.com/aida-public/AB6AXuALkj9OWRV3-n3UEbV57o_5dKrjo1SC3QqDOT9XGkQOqb00Yok9J3zHnDXJtqky8r9ZiEpCq_75KiwALJ-jW5IpEJBq2yxUXRJMk7XCQEJZPFdoFOZrTRjhYK_x19SaWt4weWNjPgDuF5DAJ-1h-Wd1pedB7OLk8m0ylTb1ZNHhj9VBEHo06Bw8dyv5-H2ZdEwlNGQKHAyxxnfIwZQkg-NAHW7Z-4331Y991MVyW_TvrK-q-UADzk_58w9mzPgsD6okHAYhD1n5HYk', 1, 'High-resolution mirrorless camera with 8K video', 1, 8, 'PH-90122-BLK', NULL, NULL, NULL, NULL, '2026-02-08 19:56:37', '2026-02-08 19:56:37'),
(3, 'RF 50mm f/1.2 L USM Lens', 'Canon', 2299.00, NULL, 5.0, 156, 'https://lh3.googleusercontent.com/aida-public/AB6AXuBCwaBcHDQ1Pxs-c7wZdQsX0VC4GhnCc1gMbPc0Gj4XilJGR8RbKWIUSE3K4Ap2jktQi05UZewZESnppRrhTBEu_BUNQZuKSMn-48uC2BXTSd7B2F9FUkC5Bul81YbHTeQUmVs2arww5ZRD14FCAixP0dvLDfgzkSWZwMPTwXimUNOSkt8kIRqXFmacY5hVtOor7oxu0EX0y5CUKDGOoR4P26uBGGaWfRzW7_pcjOcH1dhQvcRD5x84oyPM5TVkZK1AdrdMHDvyT9k', 2, 'Professional L-Series prime lens', 1, 22, 'LN-RF50-001', NULL, NULL, NULL, NULL, '2026-02-08 19:56:37', '2026-02-08 19:56:37'),
(4, 'Lumix S5II Mirrorless Camera', 'Panasonic', 1997.99, NULL, 5.0, 189, 'https://lh3.googleusercontent.com/aida-public/AB6AXuDL7RunABqZaHr25DhYI0JF-_kSBSLScwX_EKZOjNZOIlfViURtN3ZK-5IjVRnp3XaRQuTFBYnMoEnNbhJaxztMowdMXol8yuSK9zGRgSE_6911LwCFTsRmfnhkoQ4zC9gNXOTbgNz2MHuXcJ35NY-AuS6McrUu6LW6QEklfvR1_K-n3egQ3f6bop2LsmAaTT3BZ4OV-Y-ng17zXjCfCU7J4BjRZXn6teTwJMvbxgs57dU_4vU5ChzBLjJsmTnWrT_ZDnLHJELz8jE', 1, 'L-Mount • Full Frame • 24.2MP', 1, 12, 'PH-90123-BLK', NULL, NULL, NULL, NULL, '2026-02-08 19:56:37', '2026-02-08 19:56:37'),
(5, '35mm f/1.4 Art DG DN Prime Lens', 'Sigma', 899.00, NULL, 5.0, 134, 'https://lh3.googleusercontent.com/aida-public/AB6AXuD54zo4298Uh1L6javNipLYiVi2m_gDmUQGNGTdota7-BGIuvsAdWQzudI9pYB_cB3LeSjLiaL6dIUYXPJFKeGksOOeffWnr-KAIVSMKEcK6MVMgY33x0-T19wOqT5u8jJC75smdYxWTAGx_1TQkOxdUydTMk84JTSEFk8f70rdK1pS6k4Y2ABBhwSG5_aiqHXsQWPqrpY7kI2t_K0yvoNHWhF3-AUUo2HBK9gxIh4ITd7twxp2fw1Z_WKzcz5bK9G2aRy2Lo5prjM', 2, 'L-Mount • Wide Angle • Prime', 1, 18, 'LN-3514-L', NULL, NULL, NULL, NULL, '2026-02-08 19:56:37', '2026-02-08 19:56:37'),
(6, 'Peak Design Slide Lite Strap', 'Peak Design', 59.95, NULL, 5.0, 412, 'https://lh3.googleusercontent.com/aida-public/AB6AXuA51K2VUZHF9YCbmc_mlhu23eV2D6eJ3H-kjuar5D5zngnkiJpKmq14YQM-wXC-ulA_Zkun3VKsbT6nG-nkXi3wpsiuQYMcXZhfEqt4F11CGjSbTNPmDm908NYF5XIvJHyBdmlol_6uaZFAB9tNgARYdbDeOit-lE5le2Nw7tAkg4s4cl2vYlsnEddj6hDi73HL4IsrspJBVn4i3OcAZmO3lyMNJGnV6WQmfCrgYnSYiEoifUcp-7l5ns1sTHYC6e0-1pMM0x8uHAk', 4, 'Black • Quick Release • Adjustable', 1, 45, 'AC-SLD-BK', NULL, NULL, NULL, NULL, '2026-02-08 19:56:37', '2026-02-08 19:56:37'),
(7, 'Pro Studio Light Kit', 'Neewer', 549.00, 599.00, 5.0, 210, 'https://lh3.googleusercontent.com/aida-public/AB6AXuCTLLAzkbpdJKu3xI-6OWDFGyrWhhl5uUgN0u-Hjfg6Zzri3JWkDnWwGS6pQqxM2mjuqeEyBXR_MytEMcIkuXL1x71X-8MeRi9e3Ge-1G_KNdI1Sz_991tOi2QjDinF4c4c3rgPMsHxiK2RkwT-5K3OReQBgyvFsUbt6vtF0DlqjDTqQvUJPxK43Vkic334yBaDBK3mRdQ1vlIDoFFnRe_AjeVPt3T4a-nN53AlgU_Gn28FMlZllaKmlbaHOQgopX4Nl1thQM15oaM', 3, 'Dual Strobe + Softbox', 1, 7, 'LT-STD-001', 'Save $50', NULL, NULL, NULL, '2026-02-08 19:56:37', '2026-02-08 19:56:37'),
(8, 'Canvas Explorer Bag', 'Peak Design', 189.00, NULL, 4.3, 45, 'https://lh3.googleusercontent.com/aida-public/AB6AXuCiCRbF508BHKrQgsrA1W6_FcU6IzWf8XQZF44LvfHvDQ3lcCbqDEwS1EiDE7wyLsoJ_XkGuHBuNHIAwplmELs6pohJtq_44mZ1PAFKzLlOFJ4G0rYoCwSXs7lUa4CWEs6nOyndkZwsNFYBlh7CXnTwoQQtypSUWnWy9LabWX9ySRyBC92916zXq_PDGOKs3IWbobDHZaNhabI_sGOz9cGV9GdBXwKwnrv7MTFwQapboGFNVVgq7YoIcQluJLCC1WmZA-Tqmmjfi8I', 4, 'Weatherproof Messenger', 1, 30, 'BAG-EXP-CAN', NULL, NULL, NULL, NULL, '2026-02-08 19:56:37', '2026-02-08 19:56:37');

-- --------------------------------------------------------

--
-- Table structure for table `promo_codes`
--

CREATE TABLE `promo_codes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `discount` decimal(10,2) NOT NULL,
  `type` enum('percentage','fixed') NOT NULL,
  `description` varchar(255) NOT NULL,
  `min_purchase` decimal(10,2) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `promo_codes`
--

INSERT INTO `promo_codes` (`id`, `code`, `discount`, `type`, `description`, `min_purchase`, `active`, `created_at`, `updated_at`) VALUES
(1, 'WELCOME10', 10.00, 'percentage', '10% off your first order', NULL, 1, '2026-02-08 19:56:37', '2026-02-08 19:56:37'),
(2, 'SAVE50', 50.00, 'fixed', '$50 off orders over $500', 500.00, 1, '2026-02-08 19:56:37', '2026-02-08 19:56:37'),
(3, 'SUMMER20', 20.00, 'percentage', '20% off summer sale', NULL, 1, '2026-02-08 19:56:37', '2026-02-08 19:56:37'),
(4, 'FREESHIP', 0.00, 'fixed', 'Free shipping on all orders', NULL, 1, '2026-02-08 19:56:37', '2026-02-08 19:56:37');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Test User', 'test@example.com', NULL, '$2y$12$vrfsnqUyi9B0N0qOXcSDsOgAJJstbmIGePzmnH0mKvYmXvtadRj0m', NULL, '2026-02-08 19:59:41', '2026-02-08 19:59:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart_items`
--
ALTER TABLE `cart_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_items_user_id_foreign` (`user_id`),
  ADD KEY `cart_items_product_id_foreign` (`product_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`),
  ADD KEY `order_items_product_id_foreign` (`product_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `promo_codes`
--
ALTER TABLE `promo_codes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `promo_codes_code_unique` (`code`);

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
-- AUTO_INCREMENT for table `cart_items`
--
ALTER TABLE `cart_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1062;

--
-- AUTO_INCREMENT for table `promo_codes`
--
ALTER TABLE `promo_codes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart_items`
--
ALTER TABLE `cart_items`
  ADD CONSTRAINT `cart_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_items_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
