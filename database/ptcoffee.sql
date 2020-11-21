-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 20, 2020 lúc 11:11 PM
-- Phiên bản máy phục vụ: 10.4.14-MariaDB
-- Phiên bản PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `ptcoffee`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `level` int(11) NOT NULL,
  `created` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`, `level`, `created`) VALUES
(1, 'phung', 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 0, 2147483647),
(2, 'Anh Tuấn', 't0988021560@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 1, 2147483647);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `catalog`
--

CREATE TABLE `catalog` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) NOT NULL,
  `sort_order` tinyint(4) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `catalog`
--

INSERT INTO `catalog` (`id`, `name`, `description`, `parent_id`, `sort_order`, `created`) VALUES
(1, 'Thực đơn', '', 0, 1, '2017-04-22 05:35:21'),
(2, 'Bán chạy', '', 0, 2, '2017-04-22 05:35:48'),
(3, 'Khuyến mại', '', 0, 3, '2017-04-22 05:35:59'),
(4, 'Tin tức', '', 0, 4, '2017-04-22 05:36:13'),
(5, 'Giỏ hàng', '', 0, 6, '2017-04-22 05:36:49'),
(6, 'Liên hệ', '', 0, 5, '2017-04-22 05:37:02'),
(7, 'Cà phê', '', 1, 1, '2017-04-22 05:37:23'),
(8, 'Trà', '', 1, 2, '2017-04-22 05:37:36'),
(9, 'Sinh tố', '', 1, 3, '2017-04-22 05:37:50'),
(32, 'Bánh mì', '', 31, 2, '0000-00-00 00:00:00'),
(31, 'Bánh', '', 1, 5, '0000-00-00 00:00:00'),
(30, 'Cà Phê Espresso', '', 7, 3, '0000-00-00 00:00:00'),
(29, 'PhinDi', '', 7, 2, '0000-00-00 00:00:00'),
(28, 'Cà Phê Phin', '', 7, 1, '0000-00-00 00:00:00'),
(25, 'Topping', '', 1, 4, '0000-00-00 00:00:00'),
(26, 'Bánh ngọt', '', 31, 1, '0000-00-00 00:00:00'),
(27, 'Hạt quả khô', '', 1, 6, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `transaction_id` int(100) NOT NULL,
  `product_id` int(100) NOT NULL,
  `qty` int(100) NOT NULL DEFAULT 0,
  `amount` decimal(15,2) NOT NULL DEFAULT 0.00,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order`
--

INSERT INTO `order` (`id`, `transaction_id`, `product_id`, `qty`, `amount`, `status`) VALUES
(17, 14, 84, 2, '64000.00', 0),
(21, 15, 59, 1, '54000.00', 0),
(20, 14, 60, 2, '78000.00', 0),
(19, 14, 68, 1, '50000.00', 0),
(18, 14, 56, 1, '54000.00', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(255) NOT NULL,
  `catalog_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `price` decimal(15,2) NOT NULL DEFAULT 0.00,
  `discount` int(11) DEFAULT 0,
  `image_link` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `image_list` text COLLATE utf8_unicode_ci NOT NULL,
  `view` int(11) NOT NULL DEFAULT 0,
  `buyed` int(255) NOT NULL,
  `rate_total` int(255) NOT NULL DEFAULT 4,
  `rate_count` int(255) NOT NULL DEFAULT 1,
  `created` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `catalog_id`, `name`, `content`, `price`, `discount`, `image_link`, `image_list`, `view`, `buyed`, `rate_total`, `rate_count`, `created`) VALUES
(87, 32, 'Corn Pan Bread', '', '28000.00', 0, 'Corn_Pan_Bread.png', '[\"Corn_Pan_Bread1.png\"]', 0, 0, 4, 1, 1605818349),
(88, 32, 'Whole Milk Loaf', '', '28000.00', 0, 'Whole_Milk_Loaf.png', '[\"Whole_Milk_Loaf1.png\"]', 0, 0, 4, 1, 1605818391),
(84, 26, 'Spoonable Chocolate', '', '32000.00', 0, 'Spoonable_Chocolate.jpg', '[\"Spoonable_Chocolate1.jpg\"]', 0, 1, 4, 1, 1605817828),
(80, 26, 'Sweet Potato Mousse', '', '32000.00', 0, 'Sweet_Potato_Mousse.png', '[\"Sweet_Potato_Mousse1.png\"]', 0, 0, 4, 1, 1605817745),
(78, 26, 'Spoonable Tiramisu', '', '32000.00', 0, 'Spoonable_Tiramisu.png', '[\"Spoonable_Tiramisu1.png\"]', 0, 0, 4, 1, 1605817581),
(79, 26, 'Triple Delight Coffee', '', '32000.00', 0, 'Triple_Delight_Coffee.png', '[\"Triple_Delight_Coffee1.png\"]', 0, 0, 4, 1, 1605817611),
(85, 32, 'Brioche Bun', '', '28000.00', 0, 'Brioche_Bun.png', '[\"Brioche_Bun1.png\"]', 0, 0, 4, 1, 1605818293),
(86, 32, 'Butter Pan Bread', '', '28000.00', 0, 'Butter_Pan_Bread.png', '[\"Butter_Pan_Bread1.png\"]', 0, 0, 4, 1, 1605818320),
(70, 27, 'Hạt dướng dương', '', '20000.00', 0, 'huongduong.png', '[\"huongduong1.png\"]', 0, 0, 4, 1, 1605816151),
(77, 26, 'Blueberry Yogurt Piece Cake', '', '32000.00', 0, 'Blueberry_Yogurt_Piece_Cake.png', '[\"Blueberry_Yogurt_Piece_Cake1.png\"]', 0, 0, 4, 1, 1605817428),
(83, 26, 'Ganache Mousse Piece Cake', '', '32000.00', 0, 'Ganache_Mousse_Piece_Cake.png', '[\"Ganache_Mousse_Piece_Cake1.png\"]', 0, 0, 4, 1, 1605817810),
(81, 26, 'Chocolate Cloud Piece Cake', '', '32000.00', 0, 'Chocolate_Cloud_Piece_Cake.png', '[\"Chocolate_Cloud_Piece_Cake1.png\"]', 0, 0, 4, 1, 1605817772),
(82, 26, 'Cloud Piece Cake', '', '32000.00', 0, 'Cloud_Piece_Cake.png', '[\"Cloud_Piece_Cake1.png\"]', 0, 0, 4, 1, 1605817792),
(64, 27, 'COMBO 6 loại', '', '60000.00', 5000, 'combo.png', '[]', 0, 0, 4, 1, 1605815924),
(67, 27, 'Hạt dẻ cười mỹ rang muối', '', '36000.00', 1000, 'decuoi.png', '[\"decuoi1.png\"]', 0, 0, 4, 1, 1605816053),
(66, 27, 'Hạt điều', '', '25000.00', 0, 'hatdieu.png', '[\"hatdieu1.png\"]', 0, 0, 4, 1, 1605816014),
(68, 27, 'Hạt MACCA', '', '56000.00', 6000, 'hatmacca.png', '[\"hatmacca1.png\"]', 0, 1, 4, 1, 1605816097),
(69, 27, 'Hạt Sen', '', '20000.00', 0, 'hatsen.png', '[\"hatsen1.png\"]', 0, 0, 4, 1, 1605816131),
(58, 30, 'Latte', '', '54000.00', 0, '270_crop_LATTE.png', '[\"270_crop_LATTE1.png\"]', 0, 0, 4, 1, 1605771505),
(59, 30, 'Mocha Macchiato', '', '54000.00', 0, '270_crop_MOCHA.png', '[\"270_crop_MOCHA1.png\"]', 0, 1, 4, 1, 1605771541),
(60, 29, 'PhinDi Choco', '', '39000.00', 0, '270_crop_phindi_choco_new.png', '[\"270_crop_phindi_choco_new1.png\"]', 0, 1, 4, 1, 1605771587),
(61, 29, 'PhinDi Hạnh Nhân', '', '39000.00', 0, '270_crop_phindi_hanh_nhan_new.png', '[\"270_crop_phindi_hanh_nhan_new1.png\"]', 0, 0, 4, 1, 1605771642),
(62, 29, 'PhinDi Kem Sữa', '', '39000.00', 0, 'PHIN-SUA-DA.png', '[\"PHIN-SUA-DA1.png\"]', 0, 1, 4, 1, 1605771702),
(63, 27, 'HẠT DẺ TÁCH VỎ ORGANIC', '', '47000.00', 2000, 'hat-de.png', '[\"hat-de1.png\"]', 0, 0, 4, 1, 1605815869),
(49, 28, 'Bạc Xỉu Đá', '', '29000.00', 0, '270_crop_Bac_Xiu_Da.png', '[\"270_crop_Bac_Xiu_Da1.png\"]', 0, 0, 4, 1, 1605770912),
(50, 28, 'Phin Sữa Đá', '', '29000.00', 0, '270_crop_PHIN-SUA-DA.png', '[\"270_crop_PHIN-SUA-DA1.png\"]', 0, 0, 4, 1, 1605771012),
(51, 0, 'PHIN ĐEN ĐÁ', '', '29000.00', 0, 'CFDDA.png', '[\"CFDDA1.png\"]', 0, 0, 4, 1, 1605771140),
(52, 28, 'PHIN ĐEN ĐÁ', '', '29000.00', 0, 'CFDDA2.png', '[\"CFDDA3.png\"]', 0, 0, 4, 1, 1605771167),
(53, 28, 'PHIN ĐEN NÓNG', '', '29000.00', 0, '270_crop_AMERICANO.png', '[]', 0, 0, 4, 1, 1605771202),
(54, 28, 'PHIN SỮA NÓNG', '', '29000.00', 0, 'PHIN-SUA-NONG.png', '[\"PHIN-SUA-NONG1.png\"]', 0, 0, 4, 1, 1605771262),
(55, 30, 'CAPPUCCINO', '', '54000.00', 0, '270_crop_CAPPUCINO.png', '[\"270_crop_CAPPUCINO1.png\"]', 0, 0, 4, 1, 1605771363),
(56, 30, 'Caramel Macchiato', '', '54000.00', 0, '270_crop_CARAMEL-MACCHIATO.png', '[\"270_crop_CARAMEL-MACCHIATO1.png\"]', 0, 1, 4, 1, 1605771419),
(57, 30, 'Espresso', '', '54000.00', 0, '270_crop_ESPRESSO.png', '[\"270_crop_ESPRESSO1.png\"]', 0, 0, 4, 1, 1605771466);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slider`
--

CREATE TABLE `slider` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `image_link` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `sort_order` int(11) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `slider`
--

INSERT INTO `slider` (`id`, `name`, `image_link`, `link`, `sort_order`, `created`) VALUES
(11, 'silde01', 'slide01.png', 'fb.com', 2, '2020-11-19 09:08:10'),
(9, 'silde3', 'slide2.png', 'fb.com', 3, '2020-11-19 09:06:06'),
(8, 'silde1', 'slide3.png', 'fb.com', 1, '2020-11-19 09:05:50');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `transaction`
--

CREATE TABLE `transaction` (
  `id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `user_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_phone` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_address` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `message` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `amount` decimal(15,2) NOT NULL DEFAULT 0.00,
  `payment` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `created` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `transaction`
--

INSERT INTO `transaction` (`id`, `status`, `user_id`, `user_name`, `user_email`, `user_phone`, `user_address`, `message`, `amount`, `payment`, `created`) VALUES
(15, 1, 0, 'Anh Tuấn', 'mod@gmail.com', '0987654321', '124 Phan Đình Phùng Bình Thạnh', 'Đặt mua', '54000.00', '', 1605818762),
(14, 1, 0, 'Nguyễn Tiểu Phụng', 'pn8778773@gmail.com', '0334853600', '189 Nguyễn Oanh P10 Gò Vấp', 'Để cổng thì gọi', '246000.00', '', 1605818615);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `catalog`
--
ALTER TABLE `catalog`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `catalog`
--
ALTER TABLE `catalog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT cho bảng `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT cho bảng `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
