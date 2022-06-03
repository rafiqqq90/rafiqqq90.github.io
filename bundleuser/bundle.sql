-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 26, 2020 at 07:22 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */
;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */
;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */
;
/*!40101 SET NAMES utf8mb4 */
;
--
-- Database: `item-order`
--
-- --------------------------------------------------------
--
-- Table structure for table `tbl_admin`
--
CREATE TABLE `tbl_admin` (
    `id` int(10) UNSIGNED NOT NULL,
    `full_name` varchar(100) NOT NULL,
    `username` varchar(100) NOT NULL,
    `password` varchar(255) NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
--
-- Dumping data for table `tbl_admin`
--
INSERT INTO `tbl_admin` (`id`, `full_name`, `username`, `password`)
VALUES (
        1,
        'Muhd Rafiq',
        'rafiq',
        'f3ed11bbdb94fd9ebdefbaf646ab94d3'
    ),
    (
        9,
        'Zahir Bryan',
        'zahir',
        'f3ed11bbdb94fd9ebdefbaf646ab94d3'
    ),
    (
        10,
        'James Nabil',
        'nabil',
        'f3ed11bbdb94fd9ebdefbaf646ab94d3'
    ),
    (
        12,
        'Administrator',
        'admin',
        '21232f297a57a5a743894a0e4a801fc3'
    );
-- --------------------------------------------------------
--
-- Table structure for table `tbl_category`
--
CREATE TABLE `tbl_category` (
    `id` int(10) UNSIGNED NOT NULL,
    `title` varchar(100) NOT NULL,
    `image_name` varchar(255) NOT NULL,
    `featured` varchar(10) NOT NULL,
    `active` varchar(10) NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
--
-- Dumping data for table `tbl_category`
--
INSERT INTO `tbl_category` (
        `id`,
        `title`,
        `image_name`,
        `featured`,
        `active`
    )
VALUES (
        4,
        'Japan',
        'images/japan-flag.jpg',
        'Yes',
        'Yes'
    ),
    (
        5,
        'Korea',
        'images/korea-flag.jpg',
        'Yes',
        'Yes'
    ),
    (
        6,
        'USA',
        'images/f2805e015229a0455fb32b3331291440_screen.jpg',
        'Yes',
        'Yes'
    ),
    (
        8,
        'Random Bundle',
        'images/many-flag.jpg',
        'No',
        'Yes'
    );
-- --------------------------------------------------------
--
-- Table structure for table `tbl_item`
--
CREATE TABLE `tbl_item` (
    `id` int(10) UNSIGNED NOT NULL,
    `title` varchar(100) NOT NULL,
    `description` text NOT NULL,
    `price` decimal(10, 2) NOT NULL,
    `image_name` varchar(255) NOT NULL,
    `category_id` int(10) UNSIGNED NOT NULL,
    `featured` varchar(10) NOT NULL,
    `active` varchar(10) NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
--
-- Dumping data for table `tbl_item`
--
INSERT INTO `tbl_item` (
        `id`,
        `title`,
        `description`,
        `price`,
        `image_name`,
        `category_id`,
        `featured`,
        `active`
    )
VALUES (
        3,
        'Akira',
        'Akira import from Japan',
        '5.00',
        'images/77d050ca14eab0cdce08590a9dd23f0c.jpg',
        6,
        'Yes',
        'Yes'
    ),
    (
        4,
        'Hoodie',
        'Korean hoodie style',
        '4.00',
        'images/korea1.jpg',
        5,
        'Yes',
        'Yes'
    ),
    (
        5,
        'Dickies',
        'Dickies original from USA',
        '6.00',
        'images/dickies.jpg',
        4,
        'Yes',
        'Yes'
    ),
    (
        6,
        'Jeans Bundle',
        'Jeans from bundle',
        '6.00',
        'images/jean.jpg',
        6,
        'Yes',
        'Yes'
    ),
    (
        7,
        'Harley Davidson',
        'USA shirt',
        '10.00',
        'images/7a98756b11e491bd1e010a7828a6d90b.jpg',
        4,
        'Yes',
        'Yes'
    ),
    (
        8,
        'Hoodie White',
        'Random hoodie',
        '52.00',
        'images/random1.jpg',
        5,
        'Yes',
        'Yes'
    );
-- --------------------------------------------------------
--
-- Table structure for table `tbl_order`
--
CREATE TABLE `tbl_order` (
    `id` int(10) UNSIGNED NOT NULL,
    `item` varchar(150) NOT NULL,
    `price` decimal(10, 2) NOT NULL,
    `qty` int(11) NOT NULL,
    `total` decimal(10, 2) NOT NULL,
    `order_date` datetime NOT NULL,
    `status` varchar(50) NOT NULL,
    `customer_name` varchar(150) NOT NULL,
    `customer_contact` varchar(20) NOT NULL,
    `customer_email` varchar(150) NOT NULL,
    `customer_address` varchar(255) NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
--
-- Dumping data for table `tbl_order`
--
INSERT INTO `tbl_order` (
        `id`,
        `item`,
        `price`,
        `qty`,
        `total`,
        `order_date`,
        `status`,
        `customer_name`,
        `customer_contact`,
        `customer_email`,
        `customer_address`
    )
VALUES (
        1,
        'Akira',
        '6.00',
        3,
        '18.00',
        '2022-11-30 03:49:48',
        'Cancelled',
        'Zahir',
        '01625342',
        'zahir@gmail.com',
        'Senai'
    ),
    (
        2,
        'Hoodie',
        '4.00',
        4,
        '16.00',
        '2022-11-30 03:52:43',
        'Delivered',
        'Nabil',
        '01624892',
        'nabil@gmail.com',
        'Kelantan'
    ),
    (
        3,
        'Dickies',
        '10.00',
        2,
        '20.00',
        '2022-11-30 04:07:17',
        'Delivered',
        'Wani',
        '013442525',
        'wani@gmail.com',
        'Johor'
    );
--
-- Indexes for dumped tables
--
--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
ADD PRIMARY KEY (`id`);
--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
ADD PRIMARY KEY (`id`);
--
-- Indexes for table `tbl_item`
--
ALTER TABLE `tbl_item`
ADD PRIMARY KEY (`id`);
--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
ADD PRIMARY KEY (`id`);
--
-- AUTO_INCREMENT for dumped tables
--
--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 13;
--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 9;
--
-- AUTO_INCREMENT for table `tbl_item`
--
ALTER TABLE `tbl_item`
MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 9;
--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 4;
COMMIT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */
;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */
;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */
;