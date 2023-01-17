-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 17, 2023 at 11:11 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecomm`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `product_id`, `quantity`) VALUES
(32, 18, 1, 2),
(42, 18, 5, 1),
(43, 18, 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `cat_slug` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `cat_slug`) VALUES
(1, 'Kids Zone', 'Kids'),
(2, 'Women\'s Fashion', 'women'),
(3, 'Men\'s Fashion', 'men'),
(7, 'Fragrances', 'Fragrances');

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`id`, `sales_id`, `product_id`, `quantity`) VALUES
(14, 9, 11, 2),
(15, 9, 13, 5),
(16, 9, 3, 2),
(17, 9, 1, 3),
(18, 10, 13, 3),
(19, 10, 2, 4),
(20, 10, 19, 5),
(21, 11, 2, 5),
(22, 11, 29, 1),
(23, 11, 7, 4),
(24, 12, 29, 1),
(25, 13, 2, 1),
(26, 13, 9, 1),
(27, 14, 2, 1),
(28, 14, 29, 1),
(29, 15, 11, 1),
(30, 15, 17, 1),
(31, 16, 10, 1),
(32, 17, 1, 6),
(33, 18, 9, 1),
(34, 18, 7, 1),
(35, 19, 7, 1),
(36, 19, 30, 1),
(37, 20, 29, 2),
(38, 21, 20, 2),
(39, 21, 5, 3),
(40, 21, 7, 1),
(41, 22, 1, 2),
(42, 22, 5, 1),
(43, 23, 1, 4),
(44, 23, 7, 2),
(45, 24, 1, 3),
(46, 24, 11, 2);

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(10) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `name`, `email`, `message`) VALUES
(3, 'Zahid', 'emon6y@gmail.com', 'sadsdfsfgs'),
(4, 'Zahid', 'emon6y@gmail.com', 'How are you?');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `slug` varchar(200) NOT NULL,
  `price` double NOT NULL,
  `photo` varchar(200) NOT NULL,
  `date_view` date NOT NULL,
  `counter` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `slug`, `price`, `photo`, `date_view`, `counter`) VALUES
(1, 1, 'Kid frock', '<p>frock</p>\r\n', 'kid-frock', 899, 'dell-inspiron-15-7000-15-6_1673109686.jpg', '2023-01-16', 8),
(5, 3, 'Fit Shirt', '<p>Basic Slim Fit Shirt</p>\r\n\r\n<ul>\r\n	<li>Slim Fit</li>\r\n	<li>Model Specs: The model height is 5&rsquo;8 and wearing size is Medium</li>\r\n</ul>\r\n', 'fit-shirt', 800, 'apple-9-7-ipad-32-gb-gold_1673114346.png', '2023-01-17', 1),
(7, 3, 'Jeans', '<p>Mens Jeans from Ideas are the perfect fit for a smart-casual everyday look.</p>\r\n\r\n<ul>\r\n	<li>98 % Cotton 2 % lycra</li>\r\n	<li>Slim Fit</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n', 'jeans', 2500, 'jeans_1673113856.jpg', '2023-01-16', 2),
(10, 2, 'Luxury Pret Embroidered 3PC Suit', '<p>Lavender poly net embroidered shirt. Comes with Indian raw silk trousers and printed organza dupatta.</p>\r\n\r\n<p><strong>Size &amp; Fit:</strong><br />\r\nModel height is 5&#39; 6&quot;.<br />\r\nModel is wearing X-Small size</p>\r\n', 'luxury-pret-embroidered-3pc-suit', 3540, 'dell-inspiron-5675-gaming-pc-recon-blue_1673114608.png', '2023-01-17', 1),
(11, 2, 'Black Puffer Jacket', '<p>Puffer Jacket With High Neck, Side Pockets And Snap Buttons</p>\r\n\r\n<ul>\r\n	<li>Regular Fit</li>\r\n</ul>\r\n', 'black-puffer-jacket', 2200, 'hp-barebones-omen-x-900-099nn-gaming-pc_1673114855.png', '2023-01-16', 3),
(12, 3, 'Jacket', '<h1>Multi Varsity Jacket.</h1>\r\n\r\n<p>FEW ITEMS LEFT<br />\r\n&nbsp;</p>\r\n\r\n<p>Varsity Jacket With Lightly Padded Interior. Ribbed Collar. Long Sleeves With Ribbed Cuffs. Jetted Pockets At The Hip And Inside Pocket Detail. Contrast Embroidery On The Front And Printing On Garment. Ribbed Hem. Snap Buttons Down The Front.</p>\r\n\r\n<ul>\r\n	<li>Regular Fit</li>\r\n	<li>Model Specs: The model height is 6&rsquo;4 and wearing size is Medium</li>\r\n</ul>\r\n', 'jacket', 2999, 'jacket_1673108831.png', '2023-01-07', 5),
(17, 2, 'Top', '', 'top', 999, 'top_1673113618.jpg', '2023-01-07', 2),
(18, 3, 'Green Jacuqard Kurta', '<p>Adorn the latest trends in traditional wear by Ideas Man.</p>\r\n\r\n<p>Cotton<br />\r\nRegular Fit</p>\r\n', 'green-jacuqard-kurta', 3450, 'amazon-fire-hd-8-tablet-alexa-2017-16-gb-black_1673114001.png', '2023-01-07', 1),
(19, 3, 'Mock Neck Half Zip Sweater', '<p>Layer up this season with sweaters from Ideas Man.</p>\r\n\r\n<ul>\r\n	<li>Blended</li>\r\n	<li>Regular Fit</li>\r\n</ul>\r\n', 'mock-neck-half-zip-sweater', 1250, 'mock-neck-half-zip-sweater_1673114236.png', '2023-01-07', 1),
(20, 3, 'Dobby Casual Shirt', '<p>Created with premium quality material, Casual Shirts from Ideas Man are perfect for every occasion.</p>\r\n\r\n<ul>\r\n	<li>Viscose</li>\r\n	<li>Regular Fit</li>\r\n</ul>\r\n', 'dobby-casual-shirt', 666, 'apple-9-7-ipad-32-gb-space-grey_1673114431.png', '2023-01-16', 1),
(29, 7, 'Sheriff Perfume', '<p><strong>Fragrance Family:&nbsp;</strong>Fresh Woody Ambery</p>\r\n\r\n<p><strong>Type:&nbsp;</strong>Perfume</p>\r\n\r\n<p><strong>Intensity:&nbsp;</strong>Soft</p>\r\n\r\n<p>A powerful shot for serial winners! Power, courage, victory distilled into a daring smash-up of freshness and heat with fresh opening notes of the sea and grapefruit. The heart is aromatic with scents of bay leaf and jasmine, which makes way for a grounded base of ambergris, patchouli, and oak moss.</p>\r\n', 'sheriff-perfume', 2500, 'sheriff-perfume_1673116444.png', '2023-01-13', 3),
(30, 7, 'Gravity', '<p><strong>Fragrance Family:&nbsp;</strong>Fresh Ambery Woody</p>\r\n\r\n<p><strong>Type:&nbsp;</strong>Perfume</p>\r\n\r\n<p><strong>Intensity:&nbsp;</strong>Soft</p>\r\n\r\n<p>Confident, masculine scent for the new millennium. Top notes of bergamot, lemon, and neroli are followed by dominant heart tones of crisp apple, teak wood, and rose. The base notes of vanilla and labdanum mesh together for a warm, rich fragrance that lends a sense of mystery as it lingers on the skin.</p>\r\n', 'gravity', 3000, 'shoe_1673116482.png', '2023-01-13', 5),
(31, 2, 'Dark Blue Denim Jacket', '<p>Varsity embroidered denim jacket with snap buttons and rib on neck, sleeves and hem.</p>\r\n\r\n<ul>\r\n	<li>Regular Fit</li>\r\n</ul>\r\n', 'dark-blue-denim-jacket', 3000, 'dark-blue-denim-jacket.png', '0000-00-00', 0),
(32, 1, 'White Printed KNIT TOP', '<p>Round neck graphic T-shirt with short sleeves.</p>\r\n\r\n<p>Size &amp; Fit</p>\r\n', 'white-printed-knit-top', 500, 'white-printed-knit-top.png', '0000-00-00', 0),
(34, 2, 'Black Dress', '<p>Full black</p>\r\n', 'black-dress', 4000, 'black-dress.jpg', '0000-00-00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `id` int(10) NOT NULL,
  `user` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `star` int(1) NOT NULL,
  `review` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`id`, `user`, `product_id`, `star`, `review`) VALUES
(5, 18, 10, 4, 'very good product'),
(7, 23, 1, 3, 'good'),
(8, 24, 11, 3, 'good');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `pay_id` varchar(50) NOT NULL,
  `sales_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `user_id`, `pay_id`, `sales_date`) VALUES
(14, 18, '1673096535968', '2023-01-07'),
(21, 21, '1673897143246', '2023-01-16'),
(22, 22, '1673899327387', '2023-01-16'),
(23, 23, '1673899721787', '2023-01-16'),
(24, 24, '1673900080850', '2023-01-16');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(60) NOT NULL,
  `type` int(1) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `contact_info` varchar(100) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `status` int(1) NOT NULL,
  `activate_code` varchar(15) NOT NULL,
  `reset_code` varchar(15) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `type`, `firstname`, `lastname`, `address`, `contact_info`, `photo`, `status`, `activate_code`, `reset_code`, `created_on`) VALUES
(1, 'lavish@gmail.com', '123', 1, 'Jahid', 'Hasan', 'Dhaka', '0151', 'wallpaperflare.com_wallpaper (10).jpg', 1, '', '', '2023-01-06'),
(18, 'jahid@gmail.com', '123', 0, 'Jahid', 'Hasan', 'Narayanganj', '01516559468', 'portrait-handsome-anime-boy-avatar-computer-graphic-background-2d-illustration_67092-2000.webp', 1, 'BnJpsIcw9K3L', '', '2023-01-07'),
(20, 'zana@gmail.com', '123', 0, 'Zana', 'Kamal', '', '', '5a6b16956a2753892d9ee5714f6f112a.jpg', 1, '9Lhp2vWenc7P', '', '2023-01-16'),
(24, 'hasan@gmail.com', '123', 0, 'hasan', 'mahmud', '', '', 'portrait-handsome-anime-boy-avatar-computer-graphic-background-2d-illustration_67092-2000.webp', 1, '6uXZI4oeVKEq', '', '2023-01-16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
