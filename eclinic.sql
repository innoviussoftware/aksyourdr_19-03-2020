-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 24, 2019 at 01:25 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eclinic`
--

-- --------------------------------------------------------

--
-- Table structure for table `api_services`
--

CREATE TABLE `api_services` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'GET',
  `headers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameter` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `api_services`
--

INSERT INTO `api_services` (`id`, `name`, `url`, `method`, `headers`, `parameter`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Login', 'api/login', 'POST', '', 'email | password | device_id ', '', '2019-04-17 02:31:27', NULL),
(2, 'Register', 'api/register', 'POST', '', 'first_name | last_name | email | post_mail | mobile | gender | date_of_birth | password | device_id | language | insurance_company_name | insurance_policy_no', '', '2019-04-17 02:31:27', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `clinic`
--

CREATE TABLE `clinic` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clinic`
--

INSERT INTO `clinic` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Test Clinic', 1, '2019-04-17 20:22:01', '2019-04-17 20:22:36'),
(2, 'Al Azhar Hospital', 1, '2019-04-18 07:01:07', NULL),
(3, 'Najd Specialized Hospital', 1, '2019-04-18 07:01:53', NULL),
(4, 'Med Art Clinic', 1, '2019-04-18 07:02:27', NULL),
(5, 'Pretty Smile Dental Clinic', 1, '2019-04-18 07:02:40', NULL),
(6, 'Kaya Skin Clinic', 1, '2019-04-18 07:02:57', NULL),
(7, 'Bupaaaaa Arabia Hospital', 1, '2019-04-18 07:03:29', '2019-04-23 08:03:19'),
(8, 'KING SAUD HOSPITAL', 1, '2019-04-18 07:05:10', NULL),
(9, 'ALDHWI MEDICAL GROUP', 1, '2019-04-18 07:05:23', NULL),
(10, 'HAY ALKHALEEJ MEDICAL CLINIC', 1, '2019-04-18 07:05:40', NULL),
(11, 'MODEL MEDICAL CLINIC', 1, '2019-04-18 07:06:04', NULL),
(12, 'ABU ZNADAH HOSPITAL', 1, '2019-04-18 07:06:19', '2019-04-30 06:48:30');

-- --------------------------------------------------------

--
-- Table structure for table `doctor_availability`
--

CREATE TABLE `doctor_availability` (
  `id` int(15) NOT NULL,
  `doctor_id` int(15) DEFAULT NULL,
  `patient_id` int(10) DEFAULT NULL,
  `status` int(15) NOT NULL DEFAULT '0' COMMENT '0: available,    1: unavailable',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor_availability`
--

INSERT INTO `doctor_availability` (`id`, `doctor_id`, `patient_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 67, NULL, 0, NULL, '2019-05-23 10:38:57'),
(2, 80, NULL, 0, NULL, '2019-05-22 18:49:18'),
(3, NULL, 6, 1, NULL, '2019-05-23 11:28:48'),
(4, NULL, 78, 1, NULL, '2019-05-22 05:49:47'),
(5, NULL, 82, 0, NULL, '2019-05-23 11:24:24'),
(6, 75, NULL, 0, '2019-05-22 21:51:19', '2019-05-23 05:09:04'),
(7, NULL, 85, 1, '2019-05-22 21:56:17', '2019-05-22 10:42:46'),
(8, NULL, 76, 1, '2019-05-22 21:59:32', '2019-05-23 05:08:55'),
(9, 86, NULL, 0, '2019-05-22 22:18:35', '2019-05-22 22:25:34'),
(10, 72, NULL, 0, '2019-05-23 10:34:25', '2019-05-23 11:24:24'),
(11, 87, NULL, 0, '2019-05-23 10:37:35', '2019-05-23 11:48:30'),
(12, NULL, 88, 1, '2019-05-23 11:01:21', '2019-05-23 11:48:15');

-- --------------------------------------------------------

--
-- Table structure for table `doctor_booking`
--

CREATE TABLE `doctor_booking` (
  `id` int(10) UNSIGNED NOT NULL,
  `patient_id` int(10) UNSIGNED NOT NULL,
  `doctor_id` int(10) UNSIGNED NOT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_slot` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `doctor_booking`
--

INSERT INTO `doctor_booking` (`id`, `patient_id`, `doctor_id`, `date`, `time`, `time_slot`, `created_at`, `updated_at`) VALUES
(155, 6, 67, '2019-05-13', '11 AM', '11:00 AM', NULL, NULL),
(156, 6, 67, '2019-05-15', '7 PM', '7:00 PM', NULL, NULL),
(157, 6, 67, '2019-05-13', '2 PM', '2:00 PM', NULL, NULL),
(161, 6, 67, '2019-05-13', '3 PM', '3:00 PM', NULL, NULL),
(169, 70, 11, '2019-05-14', '7 AM', '7:00 AM', NULL, NULL),
(170, 70, 11, '2019-05-14', '8 AM', '8:00 AM', NULL, NULL),
(179, 6, 67, '2019-05-16', '11 AM', '11:00 AM', NULL, NULL),
(188, 73, 72, '2019-05-17', '6 PM', '6:15 PM', NULL, NULL),
(192, 76, 75, '2019-05-18', '6 PM', '6:00 PM', NULL, NULL),
(193, 6, 67, '2019-05-20', '5 PM', '5:00 PM', NULL, NULL),
(194, 82, 80, '2019-05-20', '6 PM', '6:00 PM', NULL, NULL),
(195, 82, 80, '2019-05-20', '7 PM', '7:00 PM', NULL, NULL),
(196, 6, 67, '2019-05-20', '7 PM', '7:00 PM', NULL, NULL),
(197, 76, 75, '2019-05-21', '8 AM', '8:00 AM', NULL, NULL),
(198, 6, 67, '2019-05-21', '11 AM', '11:00 AM', NULL, NULL),
(199, 6, 67, '2019-05-21', '11 AM', '11:15 AM', NULL, NULL),
(200, 6, 67, '2019-05-21', '11 AM', '11:30 AM', NULL, NULL),
(201, 6, 67, '2019-05-21', '11 AM', '11:45 AM', NULL, NULL),
(202, 6, 67, '2019-05-21', '5 PM', '5:00 PM', NULL, NULL),
(203, 6, 67, '2019-05-21', '6 PM', '6:00 PM', NULL, NULL),
(204, 6, 67, '2019-05-21', '3 PM', '3:00 PM', NULL, NULL),
(205, 6, 67, '2019-05-21', '1 PM', '1:00 PM', NULL, NULL),
(206, 6, 67, '2019-05-21', '1 PM', '1:15 PM', NULL, NULL),
(207, 6, 67, '2019-05-21', '1 PM', '1:30 PM', NULL, NULL),
(208, 6, 67, '2019-05-21', '1 PM', '1:45 PM', NULL, NULL),
(209, 6, 67, '2019-05-21', '12 PM', '2:00 PM', NULL, NULL),
(210, 6, 80, '2019-05-22', '12 AM', '12:00 AM', NULL, NULL),
(211, 6, 80, '2019-05-21', '1 PM', '1:00 PM', NULL, NULL),
(212, 82, 80, '2019-05-21', '7 PM', '7:00 PM', NULL, NULL),
(213, 82, 80, '2019-05-21', '7 PM', '7:15 PM', NULL, NULL),
(214, 6, 67, '2019-05-22', '9 AM', '9:00 AM', NULL, NULL),
(215, 82, 80, '2019-05-22', '12 PM', '12:00 PM', NULL, NULL),
(216, 82, 80, '2019-05-22', '7 PM', '7:00 PM', NULL, NULL),
(217, 82, 80, '2019-05-22', '7 PM', '7:15 PM', NULL, NULL),
(218, 6, 67, '2019-05-22', '12 PM', '12:00 PM', NULL, NULL),
(219, 78, 67, '2019-05-22', '12 PM', '12:15 PM', NULL, NULL),
(220, 78, 67, '2019-05-22', '12 PM', '12:30 PM', NULL, NULL),
(221, 6, 67, '2019-05-22', '3 PM', '3:30 PM', NULL, NULL),
(222, 78, 67, '2019-05-22', '3 PM', '3:45 PM', NULL, NULL),
(223, 6, 67, '2019-05-22', '5 PM', '5:00 PM', NULL, NULL),
(224, 6, 67, '2019-05-23', '10 AM', '10:00 AM', NULL, NULL),
(225, 82, 67, '2019-05-22', '7 PM', '7:00 PM', NULL, NULL),
(226, 85, 75, '2019-05-22', '8 PM', '8:00 PM', NULL, NULL),
(227, 85, 75, '2019-05-22', '8 PM', '8:15 PM', NULL, NULL),
(228, 76, 75, '2019-05-22', '8 PM', '8:30 PM', NULL, NULL),
(229, 76, 75, '2019-05-23', '10 AM', '10:00 AM', NULL, NULL),
(230, 76, 75, '2019-05-22', '8 PM', '8:45 PM', NULL, NULL),
(231, 76, 75, '2019-05-23', '8 PM', '8:00 PM', NULL, NULL),
(232, 76, 86, '2019-05-22', '11 PM', '11:00 PM', NULL, NULL),
(233, 85, 30, '2019-05-22', '10 PM', '10:00 PM', NULL, NULL),
(234, 85, 86, '2019-05-22', '8 PM', '8:00 PM', NULL, NULL),
(235, 76, 75, '2019-05-23', '8 AM', '8:00 AM', NULL, NULL),
(236, 76, 75, '2019-05-23', '9 AM', '9:00 AM', NULL, NULL),
(237, 82, 67, '2019-05-23', '11 AM', '11:00 AM', NULL, NULL),
(238, 82, 67, '2019-05-23', '11 AM', '11:15 AM', NULL, NULL),
(239, 82, 72, '2019-05-23', '11 AM', '11:00 AM', NULL, NULL),
(240, 82, 87, '2019-05-23', '2 PM', '2:00 PM', NULL, NULL),
(241, 88, 87, '2019-05-23', '4 PM', '4:00 PM', NULL, NULL),
(242, 82, 87, '2019-05-23', '4 PM', '4:15 PM', NULL, NULL),
(243, 82, 87, '2019-05-23', '4 PM', '4:30 PM', NULL, NULL),
(244, 82, 87, '2019-05-23', '4 PM', '4:45 PM', NULL, NULL),
(245, 82, 30, '2019-05-23', '11 PM', '11:00 PM', NULL, NULL),
(246, 82, 30, '2019-05-23', '12 PM', '12:00 PM', NULL, NULL),
(247, 6, 67, '2019-05-23', '5 PM', '5:00 PM', NULL, NULL),
(248, 88, 80, '2019-05-23', '4 PM', '4:00 PM', NULL, NULL),
(249, 82, 72, '2019-05-23', '12 PM', '12:00 PM', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `doctor_booking_form`
--

CREATE TABLE `doctor_booking_form` (
  `id` int(10) UNSIGNED NOT NULL,
  `patient_id` int(10) UNSIGNED NOT NULL,
  `doctor_id` int(10) UNSIGNED NOT NULL,
  `reason` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `report_file` text COLLATE utf8mb4_unicode_ci,
  `report` tinyint(1) DEFAULT NULL,
  `from_where` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `booking_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `doctor_booking_form`
--

INSERT INTO `doctor_booking_form` (`id`, `patient_id`, `doctor_id`, `reason`, `description`, `report_file`, `report`, `from_where`, `booking_id`, `created_at`, `updated_at`) VALUES
(59, 6, 67, 'Asking for medications refill', 'test', 'patient_report/patient-01557726510.png | patient_report/patient-11557726510.png | patient_report/patient-21557726510.png', 1, '1', '155', '2019-05-13 11:18:30', '2019-05-13 11:18:30'),
(60, 6, 67, 'Asking for medications refill', 'test', 'patient_report/patient-01557730156.jpg | patient_report/patient-11557730156.jpg', 1, '1', '156', '2019-05-13 12:19:16', '2019-05-13 12:19:16'),
(61, 6, 67, 'Asking for medications refill', 'testing', 'patient_report/patient-01557737976.jpg | patient_report/patient-11557737976.jpg', 1, '1', '157', '2019-05-13 14:29:36', '2019-05-13 14:29:36'),
(65, 6, 67, 'Asking for medications refill', NULL, '', 0, '1', '161', '2019-05-13 15:02:07', '2019-05-13 15:02:07'),
(77, 70, 11, 'Asking for medications refill', NULL, '', 0, '1', '169', '2019-05-14 16:49:38', '2019-05-14 16:49:38'),
(78, 70, 11, 'Asking for laboratory test', NULL, '', 0, '1', '170', '2019-05-14 16:51:17', '2019-05-14 16:51:17'),
(87, 6, 67, 'Asking for medications refill', 'tesr', '', 0, '1', '179', '2019-05-16 11:13:59', '2019-05-16 11:13:59'),
(96, 73, 72, 'Asking for laboratory test', NULL, '', 0, '1', '188', '2019-05-17 15:48:06', '2019-05-17 15:48:06'),
(100, 76, 75, 'Having medical question or complaints', NULL, '', 0, '1', '192', '2019-05-18 18:55:07', '2019-05-18 18:55:07'),
(101, 6, 67, 'Asking for medications refill', 'test', 'patient_report/patient-01558351492.jpg | patient_report/patient-11558351492.jpg | patient_report/patient-21558351492.jpg', 1, '1', '193', '2019-05-20 16:54:52', '2019-05-20 16:54:52'),
(102, 82, 80, 'Having medical question or complaints', 'demo', '', 0, '1', '194', '2019-05-20 17:32:56', '2019-05-20 17:32:56'),
(103, 82, 80, 'Asking for laboratory test', 'needgjvj', 'patient_report/patient-01558355860.jpg | patient_report/patient-11558355860.png | patient_report/patient-21558355860.png', 1, '1', '195', '2019-05-20 18:07:40', '2019-05-20 18:07:40'),
(104, 6, 67, 'Asking for medications refill', NULL, '', 0, '1', '196', '2019-05-20 18:43:24', '2019-05-20 18:43:24'),
(105, 76, 75, 'Asking for medications refill', NULL, '', 0, '1', '197', '2019-05-21 01:31:21', '2019-05-21 01:31:21'),
(106, 6, 67, 'Asking for medications refill', 'test', '', 0, '1', '198', '2019-05-21 10:34:42', '2019-05-21 10:34:42'),
(107, 6, 67, 'Having medical question or complaints', NULL, '', 0, '1', '199', '2019-05-21 10:37:52', '2019-05-21 10:37:52'),
(108, 6, 67, 'Asking for laboratory test', NULL, '', 0, '1', '200', '2019-05-21 10:40:02', '2019-05-21 10:40:02'),
(109, 6, 67, 'Asking for medications refill', NULL, '', 0, '1', '201', '2019-05-21 10:43:15', '2019-05-21 10:43:15'),
(110, 6, 67, 'Asking for medications refill', NULL, '', 0, '2', '0', '2019-05-21 10:51:23', '2019-05-21 10:51:23'),
(111, 6, 67, 'Asking for medications refill', NULL, '', 0, '1', '202', '2019-05-21 10:52:03', '2019-05-21 10:52:03'),
(112, 6, 67, 'Asking for laboratory test', NULL, '', 0, '1', '203', '2019-05-21 10:53:12', '2019-05-21 10:53:12'),
(113, 6, 67, 'Asking for medications refill', NULL, '', 0, '1', '204', '2019-05-21 10:58:07', '2019-05-21 10:58:07'),
(114, 6, 67, 'Asking for laboratory test', NULL, '', 0, '1', '205', '2019-05-21 11:03:24', '2019-05-21 11:03:24'),
(115, 6, 67, 'Asking for laboratory test', NULL, '', 0, '1', '206', '2019-05-21 11:15:55', '2019-05-21 11:15:55'),
(116, 6, 67, 'Asking for medications refill', NULL, '', 0, '1', '207', '2019-05-21 11:31:37', '2019-05-21 11:31:37'),
(117, 6, 67, 'Asking for medications refill', NULL, '', 0, '2', '0', '2019-05-21 11:46:11', '2019-05-21 11:46:11'),
(118, 6, 67, 'Asking for medications refill', NULL, '', 0, '1', '209', '2019-05-21 11:48:11', '2019-05-21 11:48:11'),
(119, 6, 80, 'Having medical question or complaints', NULL, '', 0, '1', '210', '2019-05-21 12:00:19', '2019-05-21 12:00:19'),
(120, 6, 80, 'Having medical question or complaints', NULL, '', 0, '1', '211', '2019-05-21 12:00:50', '2019-05-21 12:00:50'),
(121, 6, 67, 'Asking for medications refill', NULL, '', 0, '2', '0', '2019-05-21 12:33:49', '2019-05-21 12:33:49'),
(122, 82, 80, 'Having medical question or complaints', NULL, '', 0, '1', '212', '2019-05-21 18:03:28', '2019-05-21 18:03:28'),
(123, 82, 80, 'Asking for laboratory test', NULL, 'patient_report/patient-01558442584.jpg | patient_report/patient-11558442584.png | patient_report/patient-21558442584.png | patient_report/patient-31558442585.png', 1, '1', '213', '2019-05-21 18:13:05', '2019-05-21 18:13:05'),
(124, 6, 67, 'Asking for laboratory test', NULL, '', 0, '1', '214', '2019-05-21 19:00:47', '2019-05-21 19:00:47'),
(125, 82, 80, 'Having medical question or complaints', NULL, '', 0, '1', '215', '2019-05-22 10:36:37', '2019-05-22 10:36:37'),
(126, 82, 80, 'Having medical question or complaints', 'nefgg', '', 0, '1', '216', '2019-05-22 10:59:52', '2019-05-22 10:59:52'),
(127, 82, 80, 'Asking for medications refill', 'bbubu', '', 0, '1', '217', '2019-05-22 11:00:55', '2019-05-22 11:00:55'),
(128, 6, 67, 'Asking for medications refill', NULL, '', 0, '1', '218', '2019-05-22 11:47:59', '2019-05-22 11:47:59'),
(129, 78, 67, 'Having medical question or complaints', NULL, '', 0, '1', '219', '2019-05-22 11:48:56', '2019-05-22 11:48:56'),
(130, 78, 67, 'Asking for medications refill', NULL, '', 0, '1', '220', '2019-05-22 11:51:15', '2019-05-22 11:51:15'),
(131, 6, 67, 'Asking for medications refill', NULL, '', 0, '1', '221', '2019-05-22 15:41:58', '2019-05-22 15:41:58'),
(132, 78, 67, 'Asking for laboratory test', NULL, '', 0, '1', '222', '2019-05-22 15:43:46', '2019-05-22 15:43:46'),
(133, 6, 67, 'Asking for laboratory test', NULL, '', 0, '1', '223', '2019-05-22 16:48:18', '2019-05-22 16:48:18'),
(134, 6, 67, 'Asking for medications refill', 'this is detail', 'patient_report/patient-01558525938.jpg', 1, '1', '224', '2019-05-22 17:22:18', '2019-05-22 17:22:18'),
(135, 82, 67, 'Having medical question or complaints', 'test', '', 0, '1', '225', '2019-05-22 18:52:31', '2019-05-22 18:52:31'),
(136, 85, 75, 'Asking for laboratory test', NULL, '', 0, '1', '226', '2019-05-22 21:57:38', '2019-05-22 21:57:38'),
(137, 85, 75, 'Asking for laboratory test', NULL, '', 0, '1', '227', '2019-05-22 22:00:50', '2019-05-22 22:00:50'),
(138, 76, 75, 'Asking for medications refill', NULL, '', 0, '1', '228', '2019-05-22 22:03:26', '2019-05-22 22:03:26'),
(139, 76, 75, 'Having medical question or complaints', NULL, '', 0, '1', '229', '2019-05-22 22:04:43', '2019-05-22 22:04:43'),
(140, 76, 75, 'Asking for medications refill', NULL, '', 0, '1', '230', '2019-05-22 22:05:41', '2019-05-22 22:05:41'),
(141, 76, 75, 'Asking for laboratory test', '6', '', 0, '1', '231', '2019-05-22 22:06:52', '2019-05-22 22:06:52'),
(142, 76, 86, 'Asking for medications refill', NULL, '', 0, '1', '232', '2019-05-22 22:17:15', '2019-05-22 22:17:15'),
(143, 85, 30, 'Asking for laboratory test', NULL, '', 0, '1', '233', '2019-05-22 22:23:09', '2019-05-22 22:23:09'),
(144, 85, 75, 'Asking for medications refill', NULL, '', 0, '2', '0', '2019-05-22 22:23:36', '2019-05-22 22:23:36'),
(145, 85, 86, 'Asking for medications refill', NULL, '', 0, '1', '234', '2019-05-22 22:24:57', '2019-05-22 22:24:57'),
(146, 76, 75, 'Asking for laboratory test', NULL, '', 0, '1', '235', '2019-05-23 05:03:48', '2019-05-23 05:03:48'),
(147, 76, 75, 'Asking for laboratory test', NULL, '', 0, '1', '236', '2019-05-23 05:07:58', '2019-05-23 05:07:58'),
(148, 82, 67, 'Having medical question or complaints', NULL, '', 0, '1', '237', '2019-05-23 10:11:15', '2019-05-23 10:11:15'),
(149, 82, 67, 'Having medical question or complaints', NULL, '', 0, '1', '238', '2019-05-23 10:14:11', '2019-05-23 10:14:11'),
(150, 82, 72, 'Having medical question or complaints', NULL, '', 0, '1', '239', '2019-05-23 10:35:39', '2019-05-23 10:35:39'),
(151, 82, 87, 'Asking for laboratory test', 'demo for email', '', 0, '1', '240', '2019-05-23 10:36:39', '2019-05-23 10:36:39'),
(152, 88, 87, 'Asking for medications refill', 'demo', 'patient_report/patient-01558589584.jpg', 1, '1', '241', '2019-05-23 11:03:04', '2019-05-23 11:03:04'),
(153, 82, 87, 'Asking for medications refill', 'demo', '', 0, '1', '242', '2019-05-23 11:06:03', '2019-05-23 11:06:03'),
(154, 82, 87, 'Having medical question or complaints', 'deno', '', 0, '1', '243', '2019-05-23 11:07:06', '2019-05-23 11:07:06'),
(155, 82, 87, 'Asking for laboratory test', 'vhvvuvug', '', 0, '1', '244', '2019-05-23 11:08:09', '2019-05-23 11:08:09'),
(156, 82, 87, 'Asking for laboratory test', 'ovjvjvug', '', 0, '2', '0', '2019-05-23 11:08:30', '2019-05-23 11:08:30'),
(157, 82, 30, 'Asking for laboratory test', 'vygtgt', '', 0, '1', '245', '2019-05-23 11:12:24', '2019-05-23 11:12:24'),
(158, 82, 30, 'Asking for laboratory test', 'bybygy', '', 0, '1', '246', '2019-05-23 11:13:17', '2019-05-23 11:13:17'),
(159, 6, 67, 'Asking for medications refill', NULL, '', 0, '1', '247', '2019-05-23 11:25:52', '2019-05-23 11:25:52'),
(160, 88, 80, 'Asking for laboratory test', 'gdss', '', 0, '1', '248', '2019-05-23 11:27:48', '2019-05-23 11:27:48'),
(161, 82, 72, 'Having medical question or complaints', NULL, '', 0, '1', '249', '2019-05-23 11:40:01', '2019-05-23 11:40:01');

-- --------------------------------------------------------

--
-- Table structure for table `doctor_clinic`
--

CREATE TABLE `doctor_clinic` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `clinic_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `doctor_clinic`
--

INSERT INTO `doctor_clinic` (`id`, `user_id`, `clinic_id`, `created_at`, `updated_at`) VALUES
(3, 7, 1, NULL, NULL),
(4, 8, 2, NULL, NULL),
(5, 9, 3, NULL, NULL),
(6, 10, 4, NULL, NULL),
(7, 11, 5, NULL, NULL),
(8, 12, 2, NULL, NULL),
(9, 14, 6, NULL, NULL),
(10, 17, 7, NULL, NULL),
(11, 18, 7, NULL, NULL),
(12, 19, 1, NULL, NULL),
(13, 20, 6, NULL, NULL),
(14, 22, 6, NULL, NULL),
(15, 24, 1, NULL, NULL),
(16, 25, 12, NULL, NULL),
(17, 26, 1, NULL, NULL),
(18, 27, 1, NULL, NULL),
(19, 28, 1, NULL, NULL),
(20, 29, 1, NULL, NULL),
(21, 30, 1, NULL, NULL),
(22, 31, 2, NULL, NULL),
(23, 32, 3, NULL, NULL),
(24, 33, 9, NULL, NULL),
(25, 34, 5, NULL, NULL),
(26, 35, 9, NULL, NULL),
(27, 37, 5, NULL, NULL),
(28, 38, 5, NULL, NULL),
(29, 39, 1, NULL, NULL),
(30, 40, 1, NULL, NULL),
(31, 41, 2, NULL, NULL),
(32, 42, 1, NULL, NULL),
(33, 43, 1, NULL, NULL),
(34, 44, 2, NULL, NULL),
(35, 45, 1, NULL, NULL),
(36, 46, 2, NULL, NULL),
(37, 47, 2, NULL, NULL),
(38, 48, 1, NULL, NULL),
(39, 49, 1, NULL, NULL),
(40, 61, 6, NULL, NULL),
(41, 65, 6, NULL, NULL),
(42, 67, 1, NULL, NULL),
(43, 69, 6, NULL, NULL),
(44, 72, 4, NULL, NULL),
(45, 75, 2, NULL, NULL),
(46, 80, 1, NULL, NULL),
(47, 86, 1, NULL, NULL),
(48, 87, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `doctor_education`
--

CREATE TABLE `doctor_education` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `institute_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `course` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `doctor_education`
--

INSERT INTO `doctor_education` (`id`, `user_id`, `institute_name`, `course`, `year`, `created_at`, `updated_at`) VALUES
(1, 2, 'Test Institute', 'Test Course', 'Test Year', NULL, NULL),
(2, 3, 'Test Institute', 'Test Course', 'Test Year', NULL, NULL),
(4, 8, 'Pavia University', 'Ph.D.', '2013', NULL, NULL),
(5, 9, 'Ai sahid Institute', 'M.D', '1998', NULL, NULL),
(6, 10, 'Royal University', 'M.D', '2002', NULL, NULL),
(13, 14, 'Test Institute1', 'Test Course', '2013', NULL, NULL),
(17, 18, 'KSSBMKSSBMKSSBMKSSBMKSSBMKSSBMKSSBMKSSBMKSSBMKSSBMKSSBMKSSBMKSSBMKSSBMKSSBMKSSBMKSSBMKSSBMKSSBMKSSBMKSSBMKSSBMKSSBM', 'KSSBMKSSBMKSSBMKSSBMKSSBMKSSBMKSSBMKSSBMKSSBMKSSBMKSSBMKSSBMKSSBMKSSBM', '2011111111111133...222', NULL, NULL),
(18, 19, 'Test Institute1', 'Test Course1', '2012', NULL, NULL),
(28, 29, 'Test Institute1', 'Test Course1', '', NULL, NULL),
(38, 7, 'Test Institute', 'Test Course', 'Test Year', NULL, NULL),
(43, 37, 'KSSBM', 'MD', '2016', NULL, NULL),
(44, 38, 'KSSBM', 'MD', '2016', NULL, NULL),
(53, 49, 'ttd', 'sfd', '2011', NULL, NULL),
(56, 65, 'KSSBM', 'MD', '2009', NULL, NULL),
(65, 11, 'Usama Institute', 'Ph.D.', '1999', NULL, NULL),
(68, 72, 'KSSBM', 'MD', '2018', NULL, NULL),
(71, 80, 'uuu', 'MBBS', '1983', NULL, NULL),
(73, 67, 'Test Institute', 'Test Course', '2010', NULL, NULL),
(74, 87, 'Usama Institute', 'Ph.D.', '2000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `doctor_experience`
--

CREATE TABLE `doctor_experience` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `hospital_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `doctor_experience`
--

INSERT INTO `doctor_experience` (`id`, `user_id`, `hospital_name`, `position`, `year`, `created_at`, `updated_at`) VALUES
(1, 2, 'Test Hospital', 'Test Position', 'Test Year', NULL, NULL),
(2, 3, 'Test', 'Test Position', 'Test Year', NULL, NULL),
(4, 8, 'Ai Azira Hospital', 'Head of Department', '5', NULL, NULL),
(5, 9, 'NMC Royal Hospital, DIP', 'Resident Doctor', '10', NULL, NULL),
(6, 10, 'Zulekha Hospital', 'Resident Doctor', '12', NULL, NULL),
(13, 14, 'Test Hospital1', 'Test Position1', '1.5', NULL, NULL),
(17, 18, 'nullKSSBMKSSBMKSSBMKSSBMKSSBMKSSBMKSSBMKSSBMKSSBMKSSBMKSSBMKSSBMKSSBMKSSBMKSSBMKSSBMKSSBMKSSBMKSSBMKSSBMKSSBMKSSBMKSSBMKSSBMKSSBMKSSBMKSSBMKSSBM', 'KSSBMKSSBMKSSBMKSSBMKSSBMKSSBMKSSBMKSSBMKSSBMKSSBMKSSBMKSSBMKSSBMKSSBMKSSBMKSSBMKSSBMKSSBMKSSBMKSSBM', '232..01414155454', NULL, NULL),
(18, 19, 'Test Hospital1', 'Test Position1', '2', NULL, NULL),
(25, 24, 'Asfiya Khan', NULL, NULL, NULL, NULL),
(27, 29, 'Test Hospital1', 'Test Position1', '', NULL, NULL),
(32, 7, 'Test Hospital', 'Test Position', 'Test Year', NULL, NULL),
(34, 37, 'YUH', 'Doctor', '2018', NULL, NULL),
(35, 38, 'YUH', 'Doctor', '', NULL, NULL),
(44, 49, 'dsf', 'ewrew', 'rwer', NULL, NULL),
(47, 65, 'Kaira', 'Doctor', '2', NULL, NULL),
(56, 11, 'Thumbay Hospital', 'Head of Department', '14', NULL, NULL),
(59, 72, 'Med art', 'Senior Doctor', '5', NULL, NULL),
(61, 75, 'Syed Safeerul', '', '', NULL, NULL),
(64, 80, 'ddwadw', 'Sr.doctor', '5', NULL, NULL),
(66, 67, 'Spring Hospital', 'Senior doctor', '2012', NULL, NULL),
(67, 86, 'Syed Safeerul', '', '', NULL, NULL),
(68, 87, 'Ai Mohammad Hospital', 'Head of Department', '19', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `doctor_speciality`
--

CREATE TABLE `doctor_speciality` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `speciality_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `doctor_speciality`
--

INSERT INTO `doctor_speciality` (`id`, `user_id`, `speciality_id`, `created_at`, `updated_at`) VALUES
(1, 2, 1, NULL, NULL),
(2, 2, 3, NULL, NULL),
(3, 3, 3, NULL, NULL),
(6, 8, 5, NULL, NULL),
(7, 8, 6, NULL, NULL),
(8, 8, 7, NULL, NULL),
(9, 9, 7, NULL, NULL),
(10, 9, 11, NULL, NULL),
(11, 9, 12, NULL, NULL),
(12, 10, 6, NULL, NULL),
(13, 10, 8, NULL, NULL),
(14, 10, 12, NULL, NULL),
(25, 14, 3, NULL, NULL),
(26, 19, 3, NULL, NULL),
(27, 19, 4, NULL, NULL),
(45, 22, 8, NULL, NULL),
(46, 24, 1, NULL, NULL),
(47, 25, 8, NULL, NULL),
(48, 26, 1, NULL, NULL),
(49, 27, 4, NULL, NULL),
(50, 28, 5, NULL, NULL),
(55, 29, 6, NULL, NULL),
(67, 7, 1, NULL, NULL),
(68, 7, 5, NULL, NULL),
(74, 30, 4, NULL, NULL),
(80, 31, 5, NULL, NULL),
(81, 32, 5, NULL, NULL),
(82, 33, 6, NULL, NULL),
(83, 34, 7, NULL, NULL),
(84, 35, 7, NULL, NULL),
(85, 37, 4, NULL, NULL),
(86, 37, 5, NULL, NULL),
(87, 37, 8, NULL, NULL),
(88, 37, 9, NULL, NULL),
(89, 38, 8, NULL, NULL),
(90, 39, 6, NULL, NULL),
(91, 40, 4, NULL, NULL),
(92, 41, 6, NULL, NULL),
(93, 42, 4, NULL, NULL),
(94, 43, 4, NULL, NULL),
(95, 44, 5, NULL, NULL),
(96, 45, 5, NULL, NULL),
(97, 46, 5, NULL, NULL),
(98, 47, 5, NULL, NULL),
(99, 48, 5, NULL, NULL),
(109, 61, 8, NULL, NULL),
(110, 49, 5, NULL, NULL),
(111, 49, 8, NULL, NULL),
(116, 65, 7, NULL, NULL),
(134, 12, 6, NULL, NULL),
(139, 11, 11, NULL, NULL),
(140, 11, 13, NULL, NULL),
(141, 11, 15, NULL, NULL),
(144, 69, 8, NULL, NULL),
(149, 72, 6, NULL, NULL),
(150, 72, 10, NULL, NULL),
(152, 75, 4, NULL, NULL),
(157, 80, 6, NULL, NULL),
(158, 80, 7, NULL, NULL),
(161, 67, 7, NULL, NULL),
(162, 67, 15, NULL, NULL),
(163, 86, 5, NULL, NULL),
(164, 87, 4, NULL, NULL),
(165, 87, 6, NULL, NULL),
(166, 87, 7, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `document_type`
--

CREATE TABLE `document_type` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `document_type`
--

INSERT INTO `document_type` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Test Document', 1, '2019-04-17 20:05:54', '2019-04-30 12:05:28'),
(3, 'X-Ray', 1, '2019-05-14 12:38:56', NULL),
(4, 'Lab-Report', 1, '2019-05-14 12:39:05', NULL),
(5, 'aaaaa', 1, '2019-05-23 21:08:20', '2019-05-23 21:27:47');

-- --------------------------------------------------------

--
-- Table structure for table `emrdetails`
--

CREATE TABLE `emrdetails` (
  `id` int(10) NOT NULL,
  `type_visit` varchar(255) DEFAULT NULL,
  `patient_id` int(10) NOT NULL,
  `doctor_id` int(10) NOT NULL,
  `emr_no` varchar(255) DEFAULT NULL,
  `physican_note` text,
  `physican_diagonis_id` varchar(255) NOT NULL,
  `visit_status` int(10) DEFAULT '0' COMMENT '0=Open 1=Closed',
  `doctorbookingform_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emrdetails`
--

INSERT INTO `emrdetails` (`id`, `type_visit`, `patient_id`, `doctor_id`, `emr_no`, `physican_note`, `physican_diagonis_id`, `visit_status`, `doctorbookingform_id`, `created_at`, `updated_at`) VALUES
(62, 'First Visit', 6, 7, '0000006', 'res', 'Catatonia', 1, '50', '2019-05-11 12:28:58', '2019-05-21 15:58:37'),
(63, 'First Visit', 6, 7, '0', NULL, 'St Louis encephalitis', NULL, '1', '2019-05-11 15:17:34', '2019-05-11 15:17:34'),
(64, 'First Visit', 6, 7, '0', NULL, 'St Louis encephalitis', NULL, '1', '2019-05-11 15:18:08', '2019-05-11 15:18:08'),
(65, 'First Visit', 6, 7, '0', NULL, 'St Louis encephalitis', NULL, '1', '2019-05-11 15:20:14', '2019-05-11 15:20:14'),
(66, 'First Visit', 6, 7, '0', NULL, 'St Louis encephalitis', NULL, '1', '2019-05-11 15:22:42', '2019-05-11 15:22:42'),
(67, 'First Visit', 16, 12, '0000016', NULL, '<em class=\'found\'>Diabetes</em> mellitus', 0, '0', '2019-05-11 18:50:36', '2019-05-11 18:50:36'),
(68, 'First Visit', 16, 12, '0000016', 'not good', 'Disorders of phosphorus metabolism or phosphatases', 0, '58', '2019-05-13 00:07:44', '2019-05-13 00:07:44'),
(69, 'Successive Visit', 16, 12, '0000016', 'not good', 'Laboratory evidence of human immunodeficiency virus', 0, '58', '2019-05-13 00:08:09', '2019-05-13 00:08:09'),
(70, 'First Visit', 16, 12, '0000016', 'test', 'Mature <em class=\'found\'>T</em>-cell or NK-cell neoplasms', 1, '0', '2019-05-13 00:09:33', '2019-05-13 00:10:35'),
(71, 'First Visit', 16, 12, '0000016', 'test', 'False-positive serological <em class=\'found\'>test</em> for syphilis', 1, '58', '2019-05-13 00:15:08', '2019-05-13 00:16:10'),
(72, 'First Visit', 13, 12, '0000013', NULL, 'Abnormal reaction to tuberculin <em class=\'found\'>test</em>', 0, '0', '2019-05-13 00:17:32', '2019-05-13 00:17:32'),
(73, 'First Visit', 13, 12, '0', NULL, 'Abnormal glucose tolerance <em class=\'found\'>test</em>', 0, '0', '2019-05-13 00:18:03', '2019-05-13 00:18:03'),
(74, 'First Visit', 68, 69, '0000068', NULL, 'fever', 0, '64', '2019-05-13 15:11:52', '2019-05-13 15:11:52'),
(75, 'First Visit', 6, 67, '0000006', 'test physician note', 'CATCH 22 phenotype', 0, '0', '2019-05-14 11:18:32', '2019-05-14 11:18:32'),
(76, 'First Visit', 6, 67, '0000006', 'test physician note', 'Depressive disorders', 0, '0', '2019-05-14 16:13:21', '2019-05-14 16:13:21'),
(77, 'First Visit', 6, 67, '0000006', 'test physician note', 'Depressive disorders', 0, '0', '2019-05-14 16:14:23', '2019-05-14 16:14:23'),
(78, 'First Visit', 6, 67, '0000006', 'test physician note', 'Depressive disorders', 0, '0', '2019-05-14 16:19:58', '2019-05-14 16:19:58'),
(79, 'First Visit', 6, 67, '0000006', 'test physician note', 'Depressive disorders', 0, '0', '2019-05-14 16:20:50', '2019-05-14 16:20:50'),
(80, 'First Visit', 6, 67, '0000006', 'test physician note', 'Depressive disorders', 0, '0', '2019-05-14 16:22:21', '2019-05-14 16:22:21'),
(88, 'First Visit', 16, 12, '0000016', 'test', 'Stage 0, <em class=\'found\'>No</em> ROP', 0, '0', '2019-05-15 22:18:50', '2019-05-15 22:18:50'),
(89, 'First Visit', 16, 12, '0000016', NULL, 'Laboratory evidence of human immunodeficiency virus', 0, '0', '2019-05-15 22:19:51', '2019-05-15 22:19:51'),
(90, 'First Visit', 16, 12, '0000016', 'test', 'Large yin type patterns (TM1)', 0, '0', '2019-05-15 22:20:54', '2019-05-15 22:20:54'),
(92, 'First Visit', 16, 12, '0000016', NULL, 'Laboratory evidence of human immunodeficiency virus', 0, '81', '2019-05-15 22:32:15', '2019-05-15 22:32:15'),
(93, 'First Visit', 6, 67, '0000006', 'test', 'Autosomal dominant hyperimmunoglobulin E syndrome', 1, '0', '2019-05-16 10:38:30', '2019-05-20 11:02:03'),
(94, 'Successive Visit', 6, 67, '0000006', 'test', 'shsb', 0, '0', '2019-05-16 10:38:45', '2019-05-16 10:38:45'),
(95, 'First Visit', 6, 67, '0000006', 'first visit', 'Erythrokeratoderma variabilis et progressiva', 1, '87', '2019-05-16 11:59:23', '2019-05-20 16:46:30'),
(96, 'First Visit', 6, 67, '0000006', 'as', 'Mature <em class=\'found\'>T</em>-cell or NK-cell neoplasms', 1, '87', '2019-05-16 12:00:14', '2019-05-20 11:01:25'),
(97, 'First Visit', 6, 67, '0000006', 'res', 'Catatonia', 1, '0', '2019-05-16 12:01:36', '2019-05-20 10:53:19'),
(98, 'First Visit', 71, 72, '0000071', 'it is needed', 'Distal hereditary motor neuropathy, <em class=\'found\'>X</em>-linked', 1, '93', '2019-05-17 14:53:01', '2019-05-17 15:13:31'),
(99, 'First Visit', 71, 72, '0000071', 'good', 'Xeroderma pigmentosum <em class=\'found\'>F</em>', 1, '90', '2019-05-17 14:56:51', '2019-05-17 15:16:18'),
(100, 'First Visit', 71, 72, '0000071', NULL, 'Xeroderma pigmentosum <em class=\'found\'>F</em>', 0, '90', '2019-05-17 14:57:01', '2019-05-17 14:57:01'),
(101, 'First Visit', 71, 72, '0000071', 'test', 'Catatonia', 0, '94', '2019-05-17 15:25:06', '2019-05-17 15:25:06'),
(102, 'First Visit', 71, 72, '0000071', 'test', 'Clostridium perfringens', 0, '90', '2019-05-17 15:27:35', '2019-05-17 15:27:35'),
(103, 'Successive Visit', 71, 72, '0000071', 'test', 'Xeroderma pigmentosum <em class=\'found\'>C</em>', 0, '90', '2019-05-17 15:29:59', '2019-05-17 15:29:59'),
(104, 'Successive Visit', 71, 72, '0000071', 'test', 'Xeroderma pigmentosum <em class=\'found\'>C</em>', 0, '90', '2019-05-17 15:31:27', '2019-05-17 15:31:27'),
(105, 'Successive Visit', 71, 72, '0000071', 'test', 'Xeroderma pigmentosum <em class=\'found\'>C</em>', 0, '90', '2019-05-17 15:31:44', '2019-05-17 15:31:44'),
(106, 'Successive Visit', 71, 72, '0000071', 'test', 'Xeroderma pigmentosum <em class=\'found\'>C</em>', 0, '90', '2019-05-17 15:32:30', '2019-05-17 15:32:30'),
(107, 'Successive Visit', 71, 72, '0000071', 'test', 'Xeroderma pigmentosum <em class=\'found\'>C</em>', 0, '90', '2019-05-17 15:32:48', '2019-05-17 15:32:48'),
(108, 'First Visit', 71, 72, '0000071', 'test report', 'Shigella boydii', 0, '94', '2019-05-17 15:34:16', '2019-05-17 15:34:16'),
(109, 'First Visit', 71, 72, '0000071', 'test report', 'Clostridium perfringens', 0, '94', '2019-05-17 15:39:20', '2019-05-17 15:39:20'),
(110, 'First Visit', 71, 72, '0000071', 'test report', 'St Louis encephalitis', 0, '94', '2019-05-17 15:41:21', '2019-05-17 15:41:21'),
(111, 'First Visit', 71, 72, '0000071', 'test report', 'St Louis encephalitis', 0, '94', '2019-05-17 15:41:44', '2019-05-17 15:41:44'),
(112, 'First Visit', 74, 75, '0000074', 'this is a test', '<em class=\'found\'>Diabetes</em> mellitus', 0, '0', '2019-05-18 18:35:53', '2019-05-18 18:35:53'),
(113, 'First Visit', 74, 75, '0000074', NULL, 'Results of kidney function studies', 0, '99', '2019-05-18 18:44:36', '2019-05-18 18:44:36'),
(114, 'First Visit', 76, 75, '0000076', 'test', 'Bacterial pneumonia', 1, '0', '2019-05-18 18:56:07', '2019-05-18 19:21:13'),
(115, 'First Visit', 76, 75, '0000076', 'new', 'Xeroderma pigmentosum <em class=\'found\'>G</em>', 1, '0', '2019-05-18 19:22:22', '2019-05-21 01:39:28'),
(116, 'First Visit', 76, 75, '0000076', 'ty67u', 'Irritable bowel syndrome, unsubtyped', 1, '0', '2019-05-18 19:24:04', '2019-05-21 01:39:22'),
(117, 'Successive Visit', 76, 75, '0000076', 'ty67u', 'hh9', 1, '0', '2019-05-18 19:24:21', '2019-05-21 01:25:34'),
(118, 'Successive Visit 1', 6, 67, '0000006', 'this is successive visit 1', 'Malignant neoplasms of ill-defined or unspecified primary sites', 0, '0', '2019-05-20 16:44:57', '2019-05-20 16:44:57'),
(119, 'Successive Visit 2', 6, 67, '0000006', 'this is visit 2', 'Disorders of acoustic nerve', 0, '0', '2019-05-20 16:47:55', '2019-05-20 16:47:55'),
(120, 'Successive Visit 2', 6, 67, '0000006', 'this is visit 2', 'Disorders of acoustic nerve', 0, '0', '2019-05-20 16:50:14', '2019-05-20 16:50:14'),
(121, 'Successive Visit 2', 6, 67, '0000006', 'this is visit 2', 'Disorders of acoustic nerve', 0, '0', '2019-05-20 16:51:01', '2019-05-20 16:51:01'),
(122, 'Successive Visit 2', 6, 67, '0000006', 'this is visit 2', 'Disorders of acoustic nerve', 0, '0', '2019-05-20 16:52:28', '2019-05-20 16:52:28'),
(123, 'Successive Visit 2', 6, 67, '0000006', 'this is visit 2', 'Disorders of acoustic nerve', 0, '0', '2019-05-20 16:52:51', '2019-05-20 16:52:51'),
(124, 'Successive Visit 2', 6, 67, '0000006', 'this is visit 2', 'Disorders of acoustic nerve', 0, '0', '2019-05-20 16:53:32', '2019-05-20 16:53:32'),
(125, 'Successive Visit 2', 6, 67, '0000006', 'this is visit 2', 'Disorders of acoustic nerve', 0, '0', '2019-05-20 16:53:59', '2019-05-20 16:53:59'),
(126, 'Successive Visit 2', 6, 67, '0000006', 'this is visit 2', 'Disorders of acoustic nerve', 0, '0', '2019-05-20 16:55:40', '2019-05-20 16:55:40'),
(127, 'Successive Visit 3', 6, 67, '0000006', 'test doctor note', 'Conduction disorders', 0, '101', '2019-05-20 16:57:24', '2019-05-20 16:57:24'),
(128, 'First Visit', 82, 80, '0000081', 'necedd', 'Aicardi-Goutières syndrome type 3', 1, '102', '2019-05-20 17:42:20', '2019-05-20 17:47:10'),
(129, 'Successive Visit 1', 82, 80, '0', 'successive note by physicians', 'Malignant neoplasms of ill-defined or unspecified primary sites', 1, '0', '2019-05-20 17:48:53', '2019-05-20 17:50:44'),
(130, 'Successive Visit 2', 82, 80, '0000081', 'successive note by physicians', 'Elevated <em class=\'found\'>C</em>-reactive protein', 1, '102', '2019-05-20 17:55:18', '2019-05-20 17:58:46'),
(131, 'Successive Visit 3', 82, 80, '0000081', 'successive note by physicians', 'Malignant neoplasms of breast', 0, '102', '2019-05-20 17:58:11', '2019-05-20 17:58:11'),
(132, 'Successive Visit 4', 82, 80, '0000081', 'successive note by physicians', 'Filamin <em class=\'found\'>C</em> myopathy', 0, '103', '2019-05-20 18:09:08', '2019-05-20 18:09:08'),
(133, 'First Visit', 76, 75, '0', 'test', 'Abnormal results of thyroid function studies', 1, '0', '2019-05-21 01:22:07', '2019-05-21 01:25:46'),
(134, 'Successive Visit 1', 76, 75, '0', 'hhuuu', 'yujj', 1, '0', '2019-05-21 01:24:42', '2019-05-21 01:25:22'),
(135, 'Successive Visit 2', 76, 75, '0000076', NULL, 'Group <em class=\'found\'>H</em> Streptococcus', 0, '105', '2019-05-21 01:32:39', '2019-05-21 01:32:39'),
(136, 'Successive Visit 4', 6, 67, '0000006', 'test', 'St Louis encephalitis', 0, '0', '2019-05-21 11:58:47', '2019-05-21 11:58:47'),
(137, 'Successive Visit 4', 6, 67, '0000006', 'test', 'St Louis encephalitis', 0, '0', '2019-05-21 11:59:01', '2019-05-21 11:59:01'),
(138, 'Successive Visit 4', 6, 67, '0000006', 'test', 'St Louis encephalitis', 0, '0', '2019-05-21 11:59:59', '2019-05-21 11:59:59'),
(139, 'Successive Visit 2', 6, 67, '0000006', 'this is visit 2', 'Disorders of acoustic nerve', 0, '0', '2019-05-21 12:00:29', '2019-05-21 12:00:29'),
(140, 'Successive Visit 4', 6, 67, '0000006', 'test', 'St Louis encephalitis', 0, '0', '2019-05-21 12:01:39', '2019-05-21 12:01:39'),
(141, 'Successive Visit 4', 6, 67, '0000006', 'test', 'St Louis encephalitis', 1, '0', '2019-05-21 12:06:35', '2019-05-22 12:58:00'),
(142, 'Successive Visit 5', 6, 80, '0000006', 'successive note by physicians', 'Shigella boydii', 0, '120', '2019-05-21 12:09:07', '2019-05-21 12:09:07'),
(143, 'Successive Visit 5', 82, 80, '0000081', NULL, 'Shigella boydii', 0, '122', '2019-05-21 18:16:09', '2019-05-21 18:16:09'),
(144, 'Successive Visit 5', 82, 80, '0000081', NULL, 'Shigella boydii', 0, '122', '2019-05-21 18:16:21', '2019-05-21 18:16:21'),
(145, 'Successive Visit 6', 82, 80, '0000081', 'test', 'St Louis encephalitis', 0, '122', '2019-05-21 18:26:50', '2019-05-21 18:26:50'),
(146, 'Successive Visit 6', 82, 80, '0000081', 'test', 'St Louis encephalitis', 0, '122', '2019-05-21 18:30:45', '2019-05-21 18:30:45'),
(147, 'Successive Visit 6', 82, 80, '0000081', 'test', 'St Louis encephalitis', 0, '122', '2019-05-21 18:32:22', '2019-05-21 18:32:22'),
(148, 'Successive Visit 7', 82, 80, '0000081', NULL, 'Shigella boydii', 0, '122', '2019-05-21 18:39:01', '2019-05-21 18:39:01'),
(149, 'Successive Visit 7', 82, 80, '0000081', NULL, 'Shigella boydii', 0, '122', '2019-05-21 18:51:06', '2019-05-21 18:51:06'),
(150, 'Successive Visit 7', 82, 80, '0000081', NULL, 'Shigella boydii', 0, '122', '2019-05-21 18:51:46', '2019-05-21 18:51:46'),
(151, 'Successive Visit 6', 82, 80, '0000081', 'test', 'St Louis encephalitis', 0, '122', '2019-05-22 08:27:44', '2019-05-22 08:27:44'),
(152, 'Successive Visit 6', 82, 80, '0000081', 'test', 'St Louis encephalitis', 0, '122', '2019-05-22 08:28:42', '2019-05-22 08:28:42'),
(153, 'Successive Visit 7', 82, 80, '0000081', 'nn', 'Clostridium perfringens', 1, '125', '2019-05-22 10:42:32', '2019-05-22 10:44:03'),
(154, 'Successive Visit 8', 82, 80, '0000081', 'done', 'Aicardi-Goutières syndrome type 3', 1, '125', '2019-05-22 10:47:43', '2019-05-22 11:05:15'),
(155, 'Successive Visit 9', 82, 80, '0000081', NULL, 'Clostridium perfringens', 0, '125', '2019-05-22 11:04:17', '2019-05-22 11:04:17'),
(156, 'Successive Visit 10', 82, 80, '0000081', NULL, 'Enterocolitis due to Clostridium difficile', 0, '126', '2019-05-22 11:06:48', '2019-05-22 11:06:48'),
(157, 'Successive Visit 11', 82, 80, '0000081', NULL, 'Clostridium perfringens', 0, '125', '2019-05-22 11:08:15', '2019-05-22 11:08:15'),
(158, 'Successive Visit 6', 6, 67, '0', NULL, 'Septicaemia', 0, '0', '2019-05-22 13:01:12', '2019-05-22 13:01:12'),
(159, 'First Visit', 82, 80, '0000081', NULL, 'St Louis encephalitis', 0, '126', '2019-05-22 16:04:40', '2019-05-22 16:04:40'),
(160, 'Successive Visit 7', 6, 67, '0', 'test', 'St Louis encephalitis', 0, '0', '2019-05-22 17:32:33', '2019-05-22 17:32:33'),
(161, 'Successive Visit 8', 6, 67, '0000006', NULL, 'Malignant neoplasms of breast', 0, '0', '2019-05-22 18:18:57', '2019-05-22 18:18:57'),
(162, 'Successive Visit 1', 82, 80, '0000081', NULL, 'Multiple system atrophy, Cerebellar type', 0, '0', '2019-05-22 18:53:01', '2019-05-22 18:53:01'),
(163, 'Successive Visit 3', 76, 86, '0000076', NULL, 'Septicaemia', 0, '142', '2019-05-22 22:45:38', '2019-05-22 22:45:38'),
(164, 'Successive Visit 6', 82, 67, '0000081', 'test', 'St Louis encephalitis', 0, '122', '2019-05-23 10:46:20', '2019-05-23 10:46:20'),
(165, 'Successive Visit 12', 6, 67, '0000081', 'test', 'St Louis encephalitis', 0, '122', '2019-05-23 10:50:19', '2019-05-23 10:50:19'),
(166, 'Successive Visit 12', 6, 67, '0000081', 'test', 'St Louis encephalitis', 0, '122', '2019-05-23 10:50:44', '2019-05-23 10:50:44'),
(167, 'Successive Visit 13', 6, 67, '0000006', 'note', 'Malignant neoplasms of breast', 1, '0', '2019-05-23 11:32:19', '2019-05-23 06:58:57');

-- --------------------------------------------------------

--
-- Table structure for table `investigations`
--

CREATE TABLE `investigations` (
  `id` int(11) NOT NULL,
  `testname_english` varchar(255) NOT NULL,
  `testname_arabic` varchar(255) DEFAULT NULL,
  `type_id` varchar(255) DEFAULT NULL,
  `type_name` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `investigations`
--

INSERT INTO `investigations` (`id`, `testname_english`, `testname_arabic`, `type_id`, `type_name`, `status`, `created_at`, `updated_at`) VALUES
(4, 'CT-Scan', 'CT-Scan', '3', 'X-Ray', 1, NULL, '2019-05-14 12:38:12'),
(5, 'MRI', 'MRI', '3', 'X-Ray', 1, NULL, '2019-05-14 12:38:07'),
(6, 'Blood Test', 'Blood Test', '4', 'Lab-Report', 1, NULL, '2019-05-17 03:23:31');

-- --------------------------------------------------------

--
-- Table structure for table `master_admin_setting`
--

CREATE TABLE `master_admin_setting` (
  `id` int(10) UNSIGNED NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `master_admin_setting`
--

INSERT INTO `master_admin_setting` (`id`, `mobile`, `email`, `description`, `created_at`, `updated_at`) VALUES
(1, '8460521189', 'eclinic@gmail.com', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\nWhy do we use it?\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n\r\n\r\nWhere does it come from?\r\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\r\n\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.\r\n\r\nWhere can I get some?\r\nThere are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.\r\n\r\n5\r\n	paragraphs\r\n	words\r\n	bytes\r\n	lists\r\n	Start with \'Lorem\r\nipsum dolor sit amet...\'\r\n', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `medicines`
--

CREATE TABLE `medicines` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `dose` varchar(255) NOT NULL,
  `unit` varchar(255) DEFAULT NULL,
  `route` varchar(255) NOT NULL,
  `frequency` varchar(255) NOT NULL,
  `frequency2` varchar(255) NOT NULL,
  `frequency3` varchar(255) NOT NULL,
  `duration` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medicines`
--

INSERT INTO `medicines` (`id`, `name`, `dose`, `unit`, `route`, `frequency`, `frequency2`, `frequency3`, `duration`, `status`, `created_at`, `updated_at`) VALUES
(3, 'ABILIFY', '', NULL, '', '', '', '', '', 1, '2019-04-22 21:28:38', NULL),
(4, 'ACTIVELLE', '', NULL, '', '', '', '', '', 1, '2019-04-22 21:28:49', NULL),
(5, 'ADOL cold', '', NULL, '', '', '', '', '', 1, '2019-04-22 21:28:59', NULL),
(6, 'AKINETON', '', NULL, '', '', '', '', '', 1, '2019-04-22 21:29:10', NULL),
(7, 'ALGAPHAN', '', NULL, '', '', '', '', '', 1, '2019-04-22 21:29:27', NULL),
(8, 'ANDRIOL1', '', NULL, '', '', '', '', '', 1, '2019-04-22 21:29:35', '2019-04-22 21:53:23'),
(9, 'ARTANE', '', NULL, '', '', '', '', '', 1, '2019-04-22 21:29:43', NULL),
(10, 'AURORIX 100', '', NULL, '', '', '', '', '', 1, '2019-04-22 21:29:55', NULL),
(11, 'AURORIX 150', '', NULL, '', '', '', '', '', 1, '2019-04-22 21:30:03', '2019-04-29 02:00:20'),
(12, 'AURORIX 300', '', NULL, '', '', '', '', '', 1, '2019-04-22 21:30:10', NULL),
(13, 'admin', 'admin', NULL, 'admin', 'xx', 'xx', 'xx', 'admin', 1, '2019-05-02 03:00:54', '2019-05-02 03:04:22'),
(14, 'Tuser', '11', 'mg', '23', '312', '32', '3123', '321', 1, '2019-05-06 12:14:07', '2019-05-09 10:52:26');

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
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(3, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(4, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(5, '2016_06_01_000004_create_oauth_clients_table', 1),
(6, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(7, '2019_02_07_000000_create_speciality_table', 1),
(8, '2019_02_08_000000_create_users_table', 1),
(9, '2019_03_14_044826_create_api_services_table', 1),
(10, '2019_04_17_012853_entrust_setup_tables', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `id` int(10) UNSIGNED NOT NULL,
  `from_id` int(10) UNSIGNED NOT NULL,
  `to_id` int(10) UNSIGNED NOT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `booking_id` int(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`id`, `from_id`, `to_id`, `message`, `type`, `booking_id`, `created_at`, `updated_at`) VALUES
(108, 1, 1, 'Hello admin incoming video call from admin ', '', NULL, '2019-04-25 05:22:18', '2019-04-25 05:22:18'),
(590, 6, 67, 'Hello Raj, incoming video call from Priyanka Patel', NULL, NULL, '2019-05-13 11:18:27', '2019-05-13 11:18:27'),
(591, 6, 67, 'hii', NULL, NULL, '2019-05-13 11:19:14', '2019-05-13 11:19:14'),
(592, 67, 6, 'good', NULL, NULL, '2019-05-13 11:27:50', '2019-05-13 11:27:50'),
(593, 67, 6, 'thank', NULL, NULL, '2019-05-13 11:44:56', '2019-05-13 11:44:56'),
(594, 6, 67, 'Hello Raj, incoming video call from Priyanka Patel', NULL, NULL, '2019-05-13 12:19:14', '2019-05-13 12:19:14'),
(595, 6, 67, 'hello', NULL, NULL, '2019-05-13 12:19:48', '2019-05-13 12:19:48'),
(596, 6, 67, 'hii', NULL, NULL, '2019-05-13 12:19:53', '2019-05-13 12:19:53'),
(597, 6, 67, 'hi', NULL, NULL, '2019-05-13 12:48:46', '2019-05-13 12:48:46'),
(598, 6, 67, 'h', NULL, NULL, '2019-05-13 12:50:24', '2019-05-13 12:50:24'),
(599, 67, 6, 'hi', NULL, NULL, '2019-05-13 12:56:43', '2019-05-13 12:56:43'),
(600, 6, 67, 'j', NULL, NULL, '2019-05-13 12:56:55', '2019-05-13 12:56:55'),
(601, 6, 67, 'Hello Raj incoming video call from Priyanka Patel', 'audio', 156, '2019-05-13 13:07:40', '2019-05-13 13:07:40'),
(602, 6, 67, 'hi', NULL, NULL, '2019-05-13 13:13:11', '2019-05-13 13:13:11'),
(603, 6, 67, 'how', NULL, NULL, '2019-05-13 13:13:21', '2019-05-13 13:13:21'),
(604, 6, 67, 'Hello Raj, incoming video call from Priyanka Patel', NULL, NULL, '2019-05-13 14:29:35', '2019-05-13 14:29:35'),
(605, 6, 67, 'hello', NULL, NULL, '2019-05-13 14:30:16', '2019-05-13 14:30:16'),
(606, 6, 67, 'hello', NULL, NULL, '2019-05-13 14:30:59', '2019-05-13 14:30:59'),
(611, 6, 67, 'hello', NULL, NULL, '2019-05-13 14:52:11', '2019-05-13 14:52:11'),
(617, 6, 67, 'cv', NULL, NULL, '2019-05-13 14:59:26', '2019-05-13 14:59:26'),
(618, 6, 67, 'Hello Raj, incoming video call from Priyanka Patel', NULL, NULL, '2019-05-13 15:02:07', '2019-05-13 15:02:07'),
(619, 6, 67, 'thank', NULL, NULL, '2019-05-13 15:03:01', '2019-05-13 15:03:01'),
(621, 6, 67, 'hello', NULL, NULL, '2019-05-13 15:05:11', '2019-05-13 15:05:11'),
(622, 67, 6, 'hi', NULL, NULL, '2019-05-13 15:07:01', '2019-05-13 15:07:01'),
(633, 6, 67, 'Hello Raj incoming video call from Priyanka Patel', 'video', 161, '2019-05-13 15:24:35', '2019-05-13 15:24:35'),
(637, 6, 67, 'Hello Raj incoming video call from Priyanka Patel', 'audio', 157, '2019-05-13 15:45:46', '2019-05-13 15:45:46'),
(638, 67, 6, 'Hello Priyanka Patel incoming video call from Raj', 'audio', 161, '2019-05-13 15:46:22', '2019-05-13 15:46:22'),
(642, 67, 6, 'hello\nbbn\n\n\n\nzgdhcjc', NULL, NULL, '2019-05-13 15:57:55', '2019-05-13 15:57:55'),
(643, 67, 6, 'Hello Priyanka Patel, Dr.Raj Sent you investigation & prescription', NULL, NULL, '2019-05-14 11:18:34', '2019-05-14 11:18:34'),
(644, 67, 6, 'Hello Priyanka Patel, Dr.Raj Sent you investigation & prescription', NULL, NULL, '2019-05-14 16:22:26', '2019-05-14 16:22:26'),
(645, 70, 11, 'Hello Dr Muzzamil Modan, incoming video call from Hussain Rauf', NULL, NULL, '2019-05-14 16:49:38', '2019-05-14 16:49:38'),
(646, 70, 11, 'Hello Dr Muzzamil Modan, incoming video call from Hussain Rauf', NULL, NULL, '2019-05-14 16:51:16', '2019-05-14 16:51:16'),
(674, 67, 6, 'Hello Priyanka Patel, Dr.Raj Sent you investigation & prescription', NULL, NULL, '2019-05-16 10:38:32', '2019-05-16 10:38:32'),
(675, 67, 6, 'Hello Priyanka Patel, Dr.Raj Sent you investigation & prescription', NULL, NULL, '2019-05-16 10:38:46', '2019-05-16 10:38:46'),
(679, 6, 67, 'Hello Raj, incoming video call from Priyanka Patel', NULL, NULL, '2019-05-16 11:13:59', '2019-05-16 11:13:59'),
(682, 67, 6, 'ii', NULL, NULL, '2019-05-16 11:16:15', '2019-05-16 11:16:15'),
(683, 67, 6, 'hello', NULL, NULL, '2019-05-16 11:19:58', '2019-05-16 11:19:58'),
(684, 6, 67, 'hello', NULL, NULL, '2019-05-16 11:23:37', '2019-05-16 11:23:37'),
(685, 67, 6, 'hii', NULL, NULL, '2019-05-16 11:24:06', '2019-05-16 11:24:06'),
(688, 6, 67, NULL, NULL, NULL, '2019-05-16 11:28:28', '2019-05-16 11:28:28'),
(690, 67, 6, 'thank', NULL, NULL, '2019-05-16 11:31:12', '2019-05-16 11:31:12'),
(691, 6, 67, 'hello', NULL, NULL, '2019-05-16 11:34:56', '2019-05-16 11:34:56'),
(696, 67, 6, 'Hello Priyanka Patel incoming video call from Raj', 'video', 179, '2019-05-16 11:58:57', '2019-05-16 11:58:57'),
(697, 67, 6, 'Hello Priyanka Patel, Dr.Raj Sent you investigation & prescription', NULL, NULL, '2019-05-16 11:59:25', '2019-05-16 11:59:25'),
(698, 67, 6, 'Hello Priyanka Patel incoming video call from Raj', 'video', 179, '2019-05-16 11:59:54', '2019-05-16 11:59:54'),
(699, 67, 6, 'Hello Priyanka Patel, Dr.Raj Sent you investigation & prescription', NULL, NULL, '2019-05-16 12:00:15', '2019-05-16 12:00:15'),
(700, 67, 6, 'Hello Priyanka Patel, Dr.Raj Sent you investigation & prescription', NULL, NULL, '2019-05-16 12:01:37', '2019-05-16 12:01:37'),
(730, 73, 72, 'Hello Aafrin, incoming video call from Disha Pdas', NULL, NULL, '2019-05-17 15:48:06', '2019-05-17 15:48:06'),
(742, 76, 75, 'Hello Dr. Testing, incoming video call from Syed Safeer', NULL, NULL, '2019-05-18 18:55:06', '2019-05-18 18:55:06'),
(743, 75, 76, 'hey', NULL, NULL, '2019-05-18 18:55:51', '2019-05-18 18:55:51'),
(744, 75, 76, 'Hello Syed Safeer, Dr.Dr. Testing Sent you investigation & prescription', NULL, NULL, '2019-05-18 18:56:08', '2019-05-18 18:56:08'),
(745, 75, 76, 'Hello Syed Safeer, Dr.Dr. Testing Sent you investigation & prescription', NULL, NULL, '2019-05-18 19:22:23', '2019-05-18 19:22:23'),
(746, 75, 76, 'Hello Syed Safeer, Dr.Dr. Testing Sent you investigation & prescription', NULL, NULL, '2019-05-18 19:24:05', '2019-05-18 19:24:05'),
(747, 75, 76, 'Hello Syed Safeer, Dr.Dr. Testing Sent you investigation & prescription', NULL, NULL, '2019-05-18 19:24:22', '2019-05-18 19:24:22'),
(748, 67, 6, 'Hello Priyanka Patel, Dr.Raj Sent you investigation & prescription', NULL, NULL, '2019-05-20 11:01:26', '2019-05-20 11:01:26'),
(749, 67, 6, 'Hello Priyanka Patel, Dr.Raj Sent you investigation & prescription', NULL, NULL, '2019-05-20 11:02:04', '2019-05-20 11:02:04'),
(750, 67, 6, 'Hello Priyanka Patel, Dr.Raj Sent you investigation & prescription', NULL, NULL, '2019-05-20 16:44:59', '2019-05-20 16:44:59'),
(751, 67, 6, 'Hello Priyanka Patel, Dr.Raj Sent you investigation & prescription', NULL, NULL, '2019-05-20 16:46:31', '2019-05-20 16:46:31'),
(752, 67, 6, 'Hello Priyanka Patel, Dr.Raj Sent you investigation & prescription', NULL, NULL, '2019-05-20 16:53:41', '2019-05-20 16:53:41'),
(753, 67, 6, 'Hello Priyanka Patel, Dr.Raj Sent you investigation & prescription', NULL, NULL, '2019-05-20 16:54:07', '2019-05-20 16:54:07'),
(754, 6, 67, 'Hello Raj, incoming video call from Priyanka Patel', NULL, NULL, '2019-05-20 16:54:50', '2019-05-20 16:54:50'),
(755, 67, 6, 'Hello Priyanka Patel, Dr.Raj Sent you investigation & prescription', NULL, NULL, '2019-05-20 16:55:49', '2019-05-20 16:55:49'),
(756, 67, 6, 'Hello Priyanka Patel incoming video call from Raj', 'video', 193, '2019-05-20 16:56:07', '2019-05-20 16:56:07'),
(757, 67, 6, 'Hello Priyanka Patel, Dr.Raj Sent you investigation & prescription', NULL, NULL, '2019-05-20 16:57:33', '2019-05-20 16:57:33'),
(758, 82, 80, 'Hello Haya, incoming video call from prin dev', NULL, NULL, '2019-05-20 17:32:55', '2019-05-20 17:32:55'),
(759, 80, 82, 'Hello prin dev incoming video call from Haya', 'video', 194, '2019-05-20 17:34:06', '2019-05-20 17:34:06'),
(760, 80, 82, 'hi', NULL, NULL, '2019-05-20 17:39:08', '2019-05-20 17:39:08'),
(761, 80, 82, 'Hello prin dev incoming video call from Haya', 'video', 194, '2019-05-20 17:41:19', '2019-05-20 17:41:19'),
(762, 80, 82, 'Hello prin dev, Dr.Haya Sent you investigation & prescription', NULL, NULL, '2019-05-20 17:42:21', '2019-05-20 17:42:21'),
(763, 80, 82, 'Hello prin dev, Dr.Haya Sent you investigation & prescription', NULL, NULL, '2019-05-20 17:47:11', '2019-05-20 17:47:11'),
(764, 80, 82, 'Hello prin dev, Dr.Haya Sent you investigation & prescription', NULL, NULL, '2019-05-20 17:48:58', '2019-05-20 17:48:58'),
(765, 80, 82, 'Hello prin dev, Dr.Haya Sent you investigation & prescription', NULL, NULL, '2019-05-20 17:50:50', '2019-05-20 17:50:50'),
(766, 80, 82, 'Hello prin dev incoming video call from Haya', 'audio', 194, '2019-05-20 17:53:13', '2019-05-20 17:53:13'),
(767, 80, 82, 'Hello prin dev incoming video call from Haya', 'video', 194, '2019-05-20 17:53:28', '2019-05-20 17:53:28'),
(768, 80, 82, 'Hello prin dev, Dr.Haya Sent you investigation & prescription', NULL, NULL, '2019-05-20 17:55:22', '2019-05-20 17:55:22'),
(769, 80, 82, 'Hello prin dev incoming video call from Haya', 'video', 194, '2019-05-20 17:57:24', '2019-05-20 17:57:24'),
(770, 80, 82, 'Hello prin dev, Dr.Haya Sent you investigation & prescription', NULL, NULL, '2019-05-20 17:58:14', '2019-05-20 17:58:14'),
(771, 80, 82, 'Hello prin dev, Dr.Haya Sent you investigation & prescription', NULL, NULL, '2019-05-20 17:58:52', '2019-05-20 17:58:52'),
(772, 82, 80, 'heello', NULL, NULL, '2019-05-20 18:02:55', '2019-05-20 18:02:55'),
(773, 82, 80, 'Hello Haya, incoming video call from prin dev', NULL, NULL, '2019-05-20 18:07:27', '2019-05-20 18:07:27'),
(774, 80, 82, 'Hello prin dev incoming video call from Haya', 'video', 195, '2019-05-20 18:07:56', '2019-05-20 18:07:56'),
(775, 80, 82, 'Hello prin dev, Dr.Haya Sent you investigation & prescription', NULL, NULL, '2019-05-20 18:09:11', '2019-05-20 18:09:11'),
(776, 6, 67, 'Hello Raj, incoming video call from Priyanka Patel', NULL, NULL, '2019-05-20 18:43:23', '2019-05-20 18:43:23'),
(777, 67, 6, 'hello', NULL, NULL, '2019-05-20 18:48:58', '2019-05-20 18:48:58'),
(778, 6, 67, 'hii', NULL, NULL, '2019-05-20 18:49:06', '2019-05-20 18:49:06'),
(779, 75, 76, 'Hello Syed Safeer, Dr.Dr. Testing Sent you investigation & prescription', NULL, NULL, '2019-05-21 01:22:16', '2019-05-21 01:22:16'),
(780, 75, 76, 'Hello Syed Safeer, Dr.Dr. Testing Sent you investigation & prescription', NULL, NULL, '2019-05-21 01:24:43', '2019-05-21 01:24:43'),
(781, 75, 76, 'Hello Syed Safeer, Dr.Dr. Testing Sent you investigation & prescription', NULL, NULL, '2019-05-21 01:25:23', '2019-05-21 01:25:23'),
(782, 75, 76, 'Hello Syed Safeer, Dr.Dr. Testing Sent you investigation & prescription', NULL, NULL, '2019-05-21 01:25:35', '2019-05-21 01:25:35'),
(783, 75, 76, 'Hello Syed Safeer, Dr.Dr. Testing Sent you investigation & prescription', NULL, NULL, '2019-05-21 01:25:52', '2019-05-21 01:25:52'),
(784, 76, 75, 'Hello Dr. Testing, incoming video call from Syed Safeer', NULL, NULL, '2019-05-21 01:31:21', '2019-05-21 01:31:21'),
(785, 75, 76, 'test', NULL, NULL, '2019-05-21 01:32:13', '2019-05-21 01:32:13'),
(786, 75, 76, 'Hello Syed Safeer incoming video call from Dr. Testing', 'video', 197, '2019-05-21 01:32:17', '2019-05-21 01:32:17'),
(787, 75, 76, 'Hello Syed Safeer, Dr.Dr. Testing Sent you investigation & prescription', NULL, NULL, '2019-05-21 01:32:40', '2019-05-21 01:32:40'),
(788, 75, 76, 'Hello Syed Safeer incoming video call from Dr. Testing', 'video', 197, '2019-05-21 01:32:58', '2019-05-21 01:32:58'),
(789, 75, 76, 'Hello Syed Safeer incoming video call from Dr. Testing', 'audio', 197, '2019-05-21 01:38:40', '2019-05-21 01:38:40'),
(790, 75, 76, 'hh', NULL, NULL, '2019-05-21 01:38:53', '2019-05-21 01:38:53'),
(791, 75, 76, 'Hello Syed Safeer, Dr.Dr. Testing Sent you investigation & prescription', NULL, NULL, '2019-05-21 01:39:23', '2019-05-21 01:39:23'),
(792, 75, 76, 'Hello Syed Safeer, Dr.Dr. Testing Sent you investigation & prescription', NULL, NULL, '2019-05-21 01:39:29', '2019-05-21 01:39:29'),
(793, 6, 67, 'Hello Raj, incoming video call from Priyanka Patel', NULL, NULL, '2019-05-21 10:34:41', '2019-05-21 10:34:41'),
(794, 6, 67, 'Hello Raj, incoming video call from Priyanka Patel', NULL, NULL, '2019-05-21 10:37:51', '2019-05-21 10:37:51'),
(795, 6, 67, 'Hello Raj, incoming video call from Priyanka Patel', NULL, NULL, '2019-05-21 10:40:01', '2019-05-21 10:40:01'),
(796, 6, 67, 'Hello Raj, incoming video call from Priyanka Patel', NULL, NULL, '2019-05-21 10:43:14', '2019-05-21 10:43:14'),
(797, 6, 67, 'Hello Raj, incoming video call from Priyanka Patel', NULL, NULL, '2019-05-21 10:52:03', '2019-05-21 10:52:03'),
(798, 6, 67, 'Hello Raj, incoming video call from Priyanka Patel', NULL, NULL, '2019-05-21 10:53:11', '2019-05-21 10:53:11'),
(799, 6, 67, 'Hello Raj, incoming video call from Priyanka Patel', NULL, NULL, '2019-05-21 10:58:06', '2019-05-21 10:58:06'),
(800, 6, 67, 'Hello Raj, incoming video call from Priyanka Patel', NULL, NULL, '2019-05-21 11:03:23', '2019-05-21 11:03:23'),
(801, 6, 67, 'Hello Raj, incoming video call from Priyanka Patel', NULL, NULL, '2019-05-21 11:15:54', '2019-05-21 11:15:54'),
(802, 6, 67, 'Hello Raj, incoming video call from Priyanka Patel', NULL, NULL, '2019-05-21 11:31:34', '2019-05-21 11:31:34'),
(803, 6, 67, 'Hello Raj, incoming video call from Priyanka Patel', NULL, NULL, '2019-05-21 11:42:32', '2019-05-21 11:42:32'),
(804, 6, 67, 'Hello Raj, incoming video call from Priyanka Patel', NULL, NULL, '2019-05-21 11:48:10', '2019-05-21 11:48:10'),
(805, 6, 80, 'Hello Haya, incoming video call from Priyanka Patel', NULL, NULL, '2019-05-21 12:00:18', '2019-05-21 12:00:18'),
(806, 6, 80, 'Hello Haya, incoming video call from Priyanka Patel', NULL, NULL, '2019-05-21 12:00:50', '2019-05-21 12:00:50'),
(807, 80, 6, 'Hello Priyanka Patel incoming video call from Haya', 'video', 211, '2019-05-21 12:01:13', '2019-05-21 12:01:13'),
(808, 80, 6, 'Hello Priyanka Patel incoming video call from Haya', 'video', 211, '2019-05-21 12:03:33', '2019-05-21 12:03:33'),
(809, 80, 6, 'Hello Priyanka Patel incoming video call from Haya', 'video', 211, '2019-05-21 12:04:52', '2019-05-21 12:04:52'),
(810, 67, 6, 'Hello Priyanka Patel, Dr.Raj Sent you investigation & prescription', NULL, NULL, '2019-05-21 12:06:46', '2019-05-21 12:06:46'),
(811, 80, 6, 'Hello Priyanka Patel, Dr.Haya Sent you investigation & prescription', NULL, NULL, '2019-05-21 12:09:19', '2019-05-21 12:09:19'),
(812, 6, 80, 'Hello Haya incoming video call from Priyanka Patel', 'video', 210, '2019-05-21 12:27:18', '2019-05-21 12:27:18'),
(813, 6, 80, 'Hello Haya incoming video call from Priyanka Patel', 'video', 210, '2019-05-21 12:27:53', '2019-05-21 12:27:53'),
(814, 6, 80, 'Hello Haya incoming video call from Priyanka Patel', 'video', 210, '2019-05-21 12:30:42', '2019-05-21 12:30:42'),
(815, 6, 67, 'Hello Raj incoming video call from Priyanka Patel', 'video', 209, '2019-05-21 12:35:25', '2019-05-21 12:35:25'),
(816, 6, 67, 'Hello Raj incoming video call from Priyanka Patel', 'video', 209, '2019-05-21 12:55:14', '2019-05-21 12:55:14'),
(817, 6, 67, 'Hello Raj incoming video call from Priyanka Patel', 'video', 205, '2019-05-21 13:00:57', '2019-05-21 13:00:57'),
(818, 67, 6, 'Hello Priyanka Patel incoming video call from Raj', 'video', 202, '2019-05-21 14:17:58', '2019-05-21 14:17:58'),
(819, 67, 6, 'Hello Priyanka Patel incoming video call from Raj', 'video', 202, '2019-05-21 14:23:33', '2019-05-21 14:23:33'),
(820, 6, 67, 'hello', NULL, NULL, '2019-05-21 14:25:46', '2019-05-21 14:25:46'),
(821, 67, 6, 'Hello Priyanka Patel incoming video call from Raj', 'video', 202, '2019-05-21 14:27:00', '2019-05-21 14:27:00'),
(822, 67, 6, 'Hello Priyanka Patel incoming video call from Raj', 'video', 202, '2019-05-21 14:36:04', '2019-05-21 14:36:04'),
(823, 67, 6, 'Hello Priyanka Patel incoming video call from Raj', 'video', 202, '2019-05-21 14:37:28', '2019-05-21 14:37:28'),
(824, 67, 6, 'Hello Priyanka Patel incoming video call from Raj', 'video', 202, '2019-05-21 14:39:57', '2019-05-21 14:39:57'),
(825, 67, 6, 'Hello Priyanka Patel incoming video call from Raj', 'video', 204, '2019-05-21 14:43:47', '2019-05-21 14:43:47'),
(826, 67, 6, 'Hello Priyanka Patel incoming video call from Raj', 'video', 202, '2019-05-21 14:46:02', '2019-05-21 14:46:02'),
(827, 67, 6, 'Hello Priyanka Patel incoming video call from Raj', 'video', 202, '2019-05-21 14:47:51', '2019-05-21 14:47:51'),
(828, 67, 6, 'Hello Priyanka Patel incoming video call from Raj', 'video', 202, '2019-05-21 14:50:12', '2019-05-21 14:50:12'),
(829, 67, 6, 'Hello Priyanka Patel incoming video call from Raj', 'video', 204, '2019-05-21 14:50:39', '2019-05-21 14:50:39'),
(830, 67, 6, 'Hello Priyanka Patel incoming video call from Raj', 'video', 202, '2019-05-21 15:03:51', '2019-05-21 15:03:51'),
(831, 6, 67, 'thank', NULL, NULL, '2019-05-21 15:04:15', '2019-05-21 15:04:15'),
(832, 67, 6, 'Hello Priyanka Patel incoming video call from Raj', 'video', 202, '2019-05-21 15:06:36', '2019-05-21 15:06:36'),
(833, 67, 6, 'hey', NULL, NULL, '2019-05-21 15:06:47', '2019-05-21 15:06:47'),
(834, 6, 67, 'yes', NULL, NULL, '2019-05-21 15:14:41', '2019-05-21 15:14:41'),
(835, 6, 67, 'Hello Raj incoming video call from Priyanka Patel', 'video', 204, '2019-05-21 15:14:52', '2019-05-21 15:14:52'),
(836, 67, 6, 'in video', NULL, NULL, '2019-05-21 15:15:10', '2019-05-21 15:15:10'),
(837, 67, 6, 'Hello Priyanka Patel incoming video call from Raj', 'video', 202, '2019-05-21 15:15:57', '2019-05-21 15:15:57'),
(838, 6, 67, 'ujk', NULL, NULL, '2019-05-21 15:16:10', '2019-05-21 15:16:10'),
(839, 67, 6, 'fff', NULL, NULL, '2019-05-21 15:16:13', '2019-05-21 15:16:13'),
(840, 6, 67, 'hello', NULL, NULL, '2019-05-21 15:19:17', '2019-05-21 15:19:17'),
(841, 67, 6, 'gh', NULL, NULL, '2019-05-21 15:19:20', '2019-05-21 15:19:20'),
(842, 67, 6, 'Hello Priyanka Patel incoming video call from Raj', 'video', 202, '2019-05-21 15:19:59', '2019-05-21 15:19:59'),
(843, 6, 67, 'thank', NULL, NULL, '2019-05-21 15:20:09', '2019-05-21 15:20:09'),
(844, 67, 6, 'your', NULL, NULL, '2019-05-21 15:20:15', '2019-05-21 15:20:15'),
(845, 67, 6, 'Hello Priyanka Patel, Dr.Raj Sent you investigation & prescription', NULL, NULL, '2019-05-21 15:58:39', '2019-05-21 15:58:39'),
(846, 6, 67, 'Hello Raj incoming video call from Priyanka Patel', 'video', 204, '2019-05-21 16:15:32', '2019-05-21 16:15:32'),
(847, 6, 67, 'Hello Raj incoming video call from Priyanka Patel', 'video', 204, '2019-05-21 16:16:15', '2019-05-21 16:16:15'),
(848, 6, 67, 'Hello Raj incoming video call from Priyanka Patel', 'video', 204, '2019-05-21 16:22:13', '2019-05-21 16:22:13'),
(849, 6, 67, 'Hello Raj incoming video call from Priyanka Patel', 'video', 204, '2019-05-21 16:33:30', '2019-05-21 16:33:30'),
(850, 6, 67, 'Hello Raj incoming video call from Priyanka Patel', 'video', 204, '2019-05-21 16:56:57', '2019-05-21 16:56:57'),
(851, 6, 67, 'Hello Raj incoming video call from Priyanka Patel', 'video', 204, '2019-05-21 16:58:52', '2019-05-21 16:58:52'),
(852, 6, 67, 'Hello Raj incoming video call from Priyanka Patel', 'video', 202, '2019-05-21 17:01:01', '2019-05-21 17:01:01'),
(853, 6, 67, 'Hello Raj incoming video call from Priyanka Patel', 'video', 202, '2019-05-21 17:02:43', '2019-05-21 17:02:43'),
(854, 67, 6, 'Hello Priyanka Patel incoming video call from Raj', 'video', 202, '2019-05-21 17:04:58', '2019-05-21 17:04:58'),
(855, 6, 67, 'Hello Raj incoming video call from Priyanka Patel', 'video', 202, '2019-05-21 17:05:23', '2019-05-21 17:05:23'),
(856, 82, 80, 'Hello Haya, incoming video call from prin dev', NULL, NULL, '2019-05-21 18:03:28', '2019-05-21 18:03:28'),
(857, 82, 80, 'Hello Haya, incoming video call from prin dev', NULL, NULL, '2019-05-21 18:12:24', '2019-05-21 18:12:24'),
(858, 80, 82, 'Hello prin dev incoming video call from Haya', 'video', 212, '2019-05-21 18:13:42', '2019-05-21 18:13:42'),
(859, 80, 82, 'Hello prin dev incoming video call from Haya', 'video', 212, '2019-05-21 18:25:26', '2019-05-21 18:25:26'),
(860, 80, 82, 'hii', NULL, NULL, '2019-05-21 18:28:49', '2019-05-21 18:28:49'),
(861, 80, 82, 'Hello prin dev incoming video call from Haya', 'video', 212, '2019-05-21 18:34:07', '2019-05-21 18:34:07'),
(862, 80, 82, 'Hello prin dev incoming video call from Haya', 'video', 213, '2019-05-21 18:52:37', '2019-05-21 18:52:37'),
(863, 80, 82, 'heyyyy', NULL, NULL, '2019-05-21 18:52:49', '2019-05-21 18:52:49'),
(864, 80, 82, 'Hello prin dev incoming video call from Haya', 'video', 212, '2019-05-21 19:00:44', '2019-05-21 19:00:44'),
(865, 6, 67, 'Hello Raj, incoming video call from Priyanka Patel', NULL, NULL, '2019-05-21 19:00:47', '2019-05-21 19:00:47'),
(866, 80, 82, 'Hello prin dev, Dr.Haya Sent you investigation & prescription', NULL, NULL, '2019-05-22 08:28:50', '2019-05-22 08:28:50'),
(867, 82, 80, 'Hello Haya, incoming video call from prin dev', NULL, NULL, '2019-05-22 10:36:36', '2019-05-22 10:36:36'),
(868, 80, 82, 'Hello prin dev incoming video call from Haya', 'video', 215, '2019-05-22 10:37:41', '2019-05-22 10:37:41'),
(869, 80, 82, 'Hello prin dev, Dr.Haya Sent you investigation & prescription', NULL, NULL, '2019-05-22 10:42:34', '2019-05-22 10:42:34'),
(870, 80, 82, 'Hello prin dev, Dr.Haya Sent you investigation & prescription', NULL, NULL, '2019-05-22 10:44:05', '2019-05-22 10:44:05'),
(871, 80, 82, 'Hello prin dev incoming video call from Haya', 'video', 215, '2019-05-22 10:46:16', '2019-05-22 10:46:16'),
(872, 80, 82, 'Hello prin dev, Dr.Haya Sent you investigation & prescription', NULL, NULL, '2019-05-22 10:47:53', '2019-05-22 10:47:53'),
(873, 80, 82, 'Hello prin dev incoming video call from Haya', 'audio', 215, '2019-05-22 10:51:01', '2019-05-22 10:51:01'),
(874, 82, 80, 'Hello Haya, incoming video call from prin dev', NULL, NULL, '2019-05-22 10:59:52', '2019-05-22 10:59:52'),
(875, 82, 80, 'Hello Haya, incoming video call from prin dev', NULL, NULL, '2019-05-22 11:00:54', '2019-05-22 11:00:54'),
(876, 80, 82, 'Hello prin dev incoming video call from Haya', 'video', 215, '2019-05-22 11:01:27', '2019-05-22 11:01:27'),
(877, 80, 82, 'Hello prin dev, Dr.Haya Sent you investigation & prescription', NULL, NULL, '2019-05-22 11:04:21', '2019-05-22 11:04:21'),
(878, 80, 82, 'Hello prin dev, Dr.Haya Sent you investigation & prescription', NULL, NULL, '2019-05-22 11:05:24', '2019-05-22 11:05:24'),
(879, 80, 82, 'Hello prin dev incoming video call from Haya', 'video', 216, '2019-05-22 11:06:00', '2019-05-22 11:06:00'),
(880, 80, 82, 'Hello prin dev, Dr.Haya Sent you investigation & prescription', NULL, NULL, '2019-05-22 11:06:50', '2019-05-22 11:06:50'),
(881, 80, 82, 'Hello prin dev incoming video call from Haya', 'video', 215, '2019-05-22 11:07:06', '2019-05-22 11:07:06'),
(882, 80, 82, 'Hello prin dev, Dr.Haya Sent you investigation & prescription', NULL, NULL, '2019-05-22 11:08:22', '2019-05-22 11:08:22'),
(883, 6, 67, 'Hello Raj, incoming video call from Priyanka Patel', NULL, NULL, '2019-05-22 11:47:58', '2019-05-22 11:47:58'),
(884, 78, 67, 'Hello Raj, incoming video call from muzammil modan', NULL, NULL, '2019-05-22 11:48:56', '2019-05-22 11:48:56'),
(885, 78, 67, 'Hello Raj, incoming video call from muzammil modan', NULL, NULL, '2019-05-22 11:51:14', '2019-05-22 11:51:14'),
(886, 6, 67, 'Hello Raj incoming video call from Priyanka Patel', 'video', 218, '2019-05-22 12:01:58', '2019-05-22 12:01:58'),
(887, 78, 67, 'Hello Raj incoming video call from muzammil modan', 'video', 219, '2019-05-22 12:02:10', '2019-05-22 12:02:10'),
(888, 78, 67, 'Hello Raj incoming video call from muzammil modan', 'video', 219, '2019-05-22 12:14:40', '2019-05-22 12:14:40'),
(889, 6, 67, 'Hello Raj incoming video call from Priyanka Patel', 'audio', 218, '2019-05-22 12:16:11', '2019-05-22 12:16:11'),
(890, 6, 67, 'Hello Raj incoming video call from Priyanka Patel', 'audio', 218, '2019-05-22 12:20:17', '2019-05-22 12:20:17'),
(891, 6, 67, 'Hello Raj incoming video call from Priyanka Patel', 'audio', 218, '2019-05-22 12:21:14', '2019-05-22 12:21:14'),
(892, 67, 6, 'Hello Priyanka Patel, Dr.Raj Sent you investigation & prescription', NULL, NULL, '2019-05-22 12:58:11', '2019-05-22 12:58:11'),
(893, 67, 6, 'Hello Priyanka Patel, Dr.Raj Sent you investigation & prescription', NULL, NULL, '2019-05-22 13:01:18', '2019-05-22 13:01:18'),
(894, 80, 82, 'Hello prin dev incoming video call from Haya', 'video', 217, '2019-05-22 14:01:28', '2019-05-22 14:01:28'),
(895, 80, 82, 'Hello prin dev incoming video call from Haya', 'audio', 216, '2019-05-22 14:02:22', '2019-05-22 14:02:22'),
(896, 6, 67, 'Hello Raj, incoming video call from Priyanka Patel', NULL, NULL, '2019-05-22 15:41:57', '2019-05-22 15:41:57'),
(897, 78, 67, 'Hello Raj, incoming video call from muzammil modan', NULL, NULL, '2019-05-22 15:43:45', '2019-05-22 15:43:45'),
(898, 78, 67, 'Hello Raj incoming video call from muzammil modan', 'video', 222, '2019-05-22 15:46:53', '2019-05-22 15:46:53'),
(899, 80, 82, 'Hello prin dev incoming video call from Haya', 'video', 216, '2019-05-22 16:00:28', '2019-05-22 16:00:28'),
(900, 80, 82, 'Hello prin dev incoming video call from Haya', 'video', 216, '2019-05-22 16:00:56', '2019-05-22 16:00:56'),
(901, 80, 82, 'Hello prin dev, Dr.Haya Sent you investigation & prescription', NULL, NULL, '2019-05-22 16:04:51', '2019-05-22 16:04:51'),
(902, 80, 82, 'Hello prin dev incoming video call from Haya', 'video', 217, '2019-05-22 16:06:26', '2019-05-22 16:06:26'),
(903, 80, 82, 'Hello prin dev incoming video call from Haya', 'video', 216, '2019-05-22 16:12:38', '2019-05-22 16:12:38'),
(904, 6, 67, 'Hello Raj, incoming video call from Priyanka Patel', NULL, NULL, '2019-05-22 16:48:18', '2019-05-22 16:48:18'),
(905, 67, 6, 'hey', NULL, NULL, '2019-05-22 16:48:59', '2019-05-22 16:48:59'),
(906, 67, 6, 'the', NULL, NULL, '2019-05-22 16:56:44', '2019-05-22 16:56:44'),
(907, 67, 6, 'hello', NULL, NULL, '2019-05-22 16:58:42', '2019-05-22 16:58:42'),
(908, 6, 67, 'Hello Raj, incoming video call from Priyanka Patel', NULL, NULL, '2019-05-22 17:22:17', '2019-05-22 17:22:17'),
(909, 67, 6, 'Hello Priyanka Patel, Dr.Raj Sent you investigation & prescription', NULL, NULL, '2019-05-22 17:32:49', '2019-05-22 17:32:49'),
(910, 67, 6, 'Hello Priyanka Patel, Dr.Raj Sent you investigation & prescription', NULL, NULL, '2019-05-22 18:18:59', '2019-05-22 18:18:59'),
(911, 82, 67, 'Hello Raj, incoming video call from prin dev', NULL, NULL, '2019-05-22 18:52:30', '2019-05-22 18:52:30'),
(912, 80, 82, 'Hello prin dev, Dr.Haya Sent you investigation & prescription', NULL, NULL, '2019-05-22 18:53:08', '2019-05-22 18:53:08'),
(914, 85, 75, 'Hello Dr. Testing, incoming video call from saferr jxbbx', NULL, NULL, '2019-05-22 22:00:49', '2019-05-22 22:00:49'),
(915, 76, 75, 'Hello Dr. Testing, incoming video call from Syed Safeer', NULL, NULL, '2019-05-22 22:03:25', '2019-05-22 22:03:25'),
(916, 76, 75, 'Hello Dr. Testing, incoming video call from Syed Safeer', NULL, NULL, '2019-05-22 22:04:43', '2019-05-22 22:04:43'),
(917, 76, 75, 'Hello Dr. Testing, incoming video call from Syed Safeer', NULL, NULL, '2019-05-22 22:05:40', '2019-05-22 22:05:40'),
(918, 76, 75, 'Hello Dr. Testing, incoming video call from Syed Safeer', NULL, NULL, '2019-05-22 22:06:51', '2019-05-22 22:06:51'),
(919, 76, 86, 'Hello New doc, incoming video call from Syed Safeer', NULL, NULL, '2019-05-22 22:17:15', '2019-05-22 22:17:15'),
(920, 86, 76, 'hi', NULL, NULL, '2019-05-22 22:19:02', '2019-05-22 22:19:02'),
(921, 86, 76, 'test', NULL, NULL, '2019-05-22 22:20:22', '2019-05-22 22:20:22'),
(922, 85, 30, 'Hello Lorem Ipsum, incoming video call from saferr jxbbx', NULL, NULL, '2019-05-22 22:23:08', '2019-05-22 22:23:08'),
(923, 86, 76, 'tes', NULL, NULL, '2019-05-22 22:23:22', '2019-05-22 22:23:22'),
(924, 86, 76, 'Hello Syed Safeer incoming video call from New doc', 'video', 232, '2019-05-22 22:23:36', '2019-05-22 22:23:36'),
(925, 85, 86, 'Hello New doc, incoming video call from saferr jxbbx', NULL, NULL, '2019-05-22 22:24:56', '2019-05-22 22:24:56'),
(926, 86, 76, 'Hello Syed Safeer incoming video call from New doc', 'audio', 232, '2019-05-22 22:25:15', '2019-05-22 22:25:15'),
(927, 86, 76, 'gh', NULL, NULL, '2019-05-22 22:43:26', '2019-05-22 22:43:26'),
(928, 86, 76, 'Hello Syed Safeer incoming video call from New doc', 'video', 232, '2019-05-22 22:44:00', '2019-05-22 22:44:00'),
(929, 86, 76, 'Hello Syed Safeer, Dr.New doc Sent you investigation & prescription', NULL, NULL, '2019-05-22 22:45:41', '2019-05-22 22:45:41'),
(930, 86, 76, 'Hello Syed Safeer incoming video call from New doc', 'audio', 232, '2019-05-22 22:46:07', '2019-05-22 22:46:07'),
(931, 86, 76, 'Hello Syed Safeer incoming video call from New doc', 'audio', 232, '2019-05-22 22:46:52', '2019-05-22 22:46:52'),
(932, 76, 75, 'hehd', NULL, NULL, '2019-05-22 22:47:33', '2019-05-22 22:47:33'),
(933, 86, 76, 'yyg', NULL, NULL, '2019-05-22 22:47:34', '2019-05-22 22:47:34'),
(934, 76, 75, 'jshd', NULL, NULL, '2019-05-22 22:47:49', '2019-05-22 22:47:49'),
(936, 75, 85, 'Hello saferr jxbbx incoming video call from Dr. Testing', 'video', 0, '2019-05-23 04:58:01', '2019-05-23 04:58:01'),
(938, 76, 75, 'Hello Dr. Testing, incoming video call from Syed Safeer', NULL, NULL, '2019-05-23 05:03:47', '2019-05-23 05:03:47'),
(941, 76, 75, 'Hello Dr. Testing, incoming video call from Syed Safeer', NULL, NULL, '2019-05-23 05:07:58', '2019-05-23 05:07:58'),
(942, 82, 67, 'Hello Raj, incoming video call from prin dev', NULL, NULL, '2019-05-23 10:11:15', '2019-05-23 10:11:15'),
(943, 82, 67, 'Hello Raj, incoming video call from prin dev', NULL, NULL, '2019-05-23 10:14:11', '2019-05-23 10:14:11'),
(944, 82, 72, 'Hello Aafrin, incoming video call from prin dev', NULL, NULL, '2019-05-23 10:35:38', '2019-05-23 10:35:38'),
(945, 82, 87, 'Hello Dr. Mohammed AlRowaily, incoming video call from prin dev', NULL, NULL, '2019-05-23 10:36:39', '2019-05-23 10:36:39'),
(946, 67, 82, 'Hello prin dev, Dr.Raj Sent you investigation & prescription', NULL, NULL, '2019-05-23 10:46:28', '2019-05-23 10:46:28'),
(947, 72, 82, 'hello', NULL, NULL, '2019-05-23 10:50:19', '2019-05-23 10:50:19'),
(948, 67, 6, 'Hello Priyanka Patel, Dr.Raj Sent you investigation & prescription', NULL, NULL, '2019-05-23 10:50:50', '2019-05-23 10:50:50'),
(949, 88, 87, 'Hello Dr. Mohammed AlRowaily, incoming video call from shahid shekh', NULL, NULL, '2019-05-23 11:03:03', '2019-05-23 11:03:03'),
(950, 82, 87, 'Hello Dr. Mohammed AlRowaily, incoming video call from prin dev', NULL, NULL, '2019-05-23 11:06:02', '2019-05-23 11:06:02'),
(951, 82, 87, 'Hello Dr. Mohammed AlRowaily, incoming video call from prin dev', NULL, NULL, '2019-05-23 11:07:05', '2019-05-23 11:07:05'),
(952, 82, 87, 'Hello Dr. Mohammed AlRowaily, incoming video call from prin dev', NULL, NULL, '2019-05-23 11:08:08', '2019-05-23 11:08:08'),
(953, 87, 82, 'Hello prin dev incoming video call from Dr. Mohammed AlRowaily', 'video', 0, '2019-05-23 11:09:08', '2019-05-23 11:09:08'),
(954, 87, 82, 'Hello prin dev incoming video call from Dr. Mohammed AlRowaily', 'video', 0, '2019-05-23 11:10:05', '2019-05-23 11:10:05'),
(955, 87, 82, 'Hello prin dev incoming video call from Dr. Mohammed AlRowaily', 'video', 0, '2019-05-23 11:10:45', '2019-05-23 11:10:45'),
(956, 87, 82, 'Hello prin dev incoming video call from Dr. Mohammed AlRowaily', 'video', 0, '2019-05-23 11:11:06', '2019-05-23 11:11:06'),
(957, 82, 67, 'Hello Raj incoming video call from prin dev', 'video', 237, '2019-05-23 11:11:38', '2019-05-23 11:11:38'),
(958, 82, 30, 'Hello Lorem Ipsum, incoming video call from prin dev', NULL, NULL, '2019-05-23 11:12:23', '2019-05-23 11:12:23'),
(959, 82, 30, 'Hello Lorem Ipsum, incoming video call from prin dev', NULL, NULL, '2019-05-23 11:13:16', '2019-05-23 11:13:16'),
(960, 82, 72, 'Hello Aafrin incoming video call from prin dev', 'video', 239, '2019-05-23 11:14:17', '2019-05-23 11:14:17'),
(961, 72, 82, 'Hello prin dev incoming video call from Aafrin', 'video', 239, '2019-05-23 11:21:25', '2019-05-23 11:21:25'),
(962, 6, 67, 'Hello Raj, incoming video call from Priyanka Patel', NULL, NULL, '2019-05-23 11:25:52', '2019-05-23 11:25:52'),
(963, 88, 80, 'Hello Haya, incoming video call from shahid shekh', NULL, NULL, '2019-05-23 11:27:47', '2019-05-23 11:27:47'),
(964, 67, 6, 'Hello Priyanka Patel, Dr.Raj Sent you investigation & prescription', NULL, NULL, '2019-05-23 11:32:28', '2019-05-23 11:32:28'),
(965, 82, 72, 'Hello Aafrin, incoming video call from prin dev', NULL, NULL, '2019-05-23 11:39:53', '2019-05-23 11:39:53'),
(966, 67, 6, 'Hello Priyanka Patel, Dr.Raj Sent you investigation & prescription', NULL, NULL, '2019-05-23 06:50:38', '2019-05-23 06:50:38'),
(967, 67, 6, 'Hello Priyanka Patel, Dr.Raj Sent you investigation & prescription', NULL, NULL, '2019-05-23 06:59:08', '2019-05-23 06:59:08');

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
('00787297e975872be2f4f4b7fe11edb592ab0bdd38616b759e6f44cbc8f033ad01cda9fea9142ddb', 67, 1, 'MyApp', '[]', 0, '2019-05-23 10:38:57', '2019-05-23 10:38:57', '2020-05-23 16:08:57'),
('00fa6e63cc3e23ba4f7856c64ba23a305fad421752dcced55a29a09954897471e407a50211fe862b', 69, 1, 'MyApp', '[]', 0, '2019-05-13 16:02:09', '2019-05-13 16:02:09', '2020-05-13 16:02:09'),
('013830e1dde24cb09b96efe09da4d0fe81d3a7e7e2c9fc0dead22c360dc1e585e51b9ba5bb1bfa7e', 7, 1, 'MyApp', '[]', 0, '2019-04-30 10:16:27', '2019-04-30 10:16:27', '2020-04-30 10:16:27'),
('015ef53f1022bee69177db8e1df98454d6816b187997c38c3591484ba4933be03e138cf97cbb4596', 12, 1, 'MyApp', '[]', 0, '2019-04-26 20:42:25', '2019-04-26 20:42:25', '2020-04-26 20:42:25'),
('01cb8f386fecac4f67e8119f60b7589c6c8622eb9edf615330c10675146db190457860363c573c38', 23, 1, 'MyApp', '[]', 0, '2019-04-25 16:38:42', '2019-04-25 16:38:42', '2020-04-25 16:38:42'),
('03c5519777d3a9b14688ebea067e5c66466afff03a7a916a0468c208858a9416b263e0ca8bf56f8f', 6, 1, 'MyApp', '[]', 0, '2019-05-20 15:53:01', '2019-05-20 15:53:01', '2020-05-20 15:53:01'),
('04426b085249e15e53921f2d634204121aadeaba5a7944e0bb2bf23614ea8d4534118152ba609e08', 6, 1, 'MyApp', '[]', 0, '2019-05-15 16:26:13', '2019-05-15 16:26:13', '2020-05-15 16:26:13'),
('04ed58d1b1a3b66e3e08837edf796497d5fb908eac30831ed8f341922f02251d53cb132bd87e1436', 6, 1, 'MyApp', '[]', 0, '2019-04-22 06:03:30', '2019-04-22 06:03:30', '2020-04-22 06:03:30'),
('0545116bd6f8612201b7fd2d5119c952a421423491dfbc758c21e9242675b99d4ae02dd1162ff9ef', 6, 1, 'MyApp', '[]', 0, '2019-05-22 16:59:25', '2019-05-22 16:59:25', '2020-05-22 16:59:25'),
('0610faf7c91eb9db34a7c19d5d0477a8be5d1e2698427bb9a555ebd05f04b0880779e14867d1478f', 76, 1, 'MyApp', '[]', 0, '2019-05-18 18:54:37', '2019-05-18 18:54:37', '2020-05-18 18:54:37'),
('062f7a90c3d2ab23933373409135f61f9dc8fee86c4fd8839e0ab0ae152dfeed0fa03ee8e0089843', 71, 1, 'MyApp', '[]', 0, '2019-05-17 14:26:02', '2019-05-17 14:26:02', '2020-05-17 14:26:02'),
('0696546614325546f971de1abb4dfaca55d78c1c9745f3e21b5c124de190774b5c1a47f804ae16b8', 12, 1, 'MyApp', '[]', 0, '2019-05-04 19:19:11', '2019-05-04 19:19:11', '2020-05-04 19:19:11'),
('0696c9504c0f6cef3b60290b919ea2eae30d17d5900a299e36f3d5ec9be4fd4c02e18c446966791f', 13, 1, 'MyApp', '[]', 0, '2019-04-18 09:11:25', '2019-04-18 09:11:25', '2020-04-18 09:11:25'),
('07a8be63eb8660f69d3e493c66f41b098f1da1646dfe8b78ed1c6a6a278a817aeb8ac641fe09d9a9', 60, 1, 'MyApp', '[]', 0, '2019-05-08 17:12:12', '2019-05-08 17:12:12', '2020-05-08 17:12:12'),
('085a1f995faa2a25c7539cbece01b4d8e229c7943bc19b73bf49f6830684a36e4bd4ac9e02a2d656', 12, 1, 'MyApp', '[]', 0, '2019-04-18 13:17:20', '2019-04-18 13:17:20', '2020-04-18 13:17:20'),
('098e416d9d1d568eafe90803bc5e7aad05f4e5caa3599683caae64d02af7be534924a458007d5d2f', 6, 1, 'MyApp', '[]', 0, '2019-05-11 12:56:22', '2019-05-11 12:56:22', '2020-05-11 12:56:22'),
('09f8f9a3ec69a6fdaebc61de2a17bdfd8cb8b4835117f63c467338a528baaaffe51dbb0f5c0a3ce7', 65, 1, 'MyApp', '[]', 0, '2019-05-11 10:39:40', '2019-05-11 10:39:40', '2020-05-11 10:39:40'),
('0a8ce88fc392e7611240f047b504784145b7b9ba3864b2681f494244c3a0b5f5320cb301e1bd7e68', 7, 1, 'MyApp', '[]', 0, '2019-04-18 09:26:20', '2019-04-18 09:26:20', '2020-04-18 09:26:20'),
('0bfef753e204dbfb556fa003179d40c37a8d4fd0e28439bc443e41bf1712e233e3c7e4ad899bcfcb', 7, 1, 'MyApp', '[]', 0, '2019-05-09 12:50:56', '2019-05-09 12:50:56', '2020-05-09 12:50:56'),
('0c08a6e96ba43ee2c6a20bcb75df3b3f4306221f4d3921cdd411ea1ead3af704a92c66fb105e42dc', 6, 1, 'MyApp', '[]', 0, '2019-05-13 12:51:37', '2019-05-13 12:51:37', '2020-05-13 12:51:37'),
('0c5534baf0b3584abd4bae30dd4b070a30ea8f4fc775dd65dd6b4e3c57ca798cf34ebf5cf7af565b', 13, 1, 'MyApp', '[]', 0, '2019-04-18 09:08:38', '2019-04-18 09:08:38', '2020-04-18 09:08:38'),
('0c9a22a3c420621eed261c729a43bfdf321f1b2b9f371598ea010f9e4e6be824e1970968ff1e9573', 67, 1, 'MyApp', '[]', 0, '2019-05-14 11:40:29', '2019-05-14 11:40:29', '2020-05-14 11:40:29'),
('0d9981d3ef780bdea0c90b5d084b70ec174d936eebff7b0b5e4119019ef9fef0c133ce5faa079efa', 7, 1, 'MyApp', '[]', 0, '2019-05-10 11:06:59', '2019-05-10 11:06:59', '2020-05-10 11:06:59'),
('0e9b65c7a6613d5f7909b6768aa5cc34144822e889eb26e3f530a61518e826241012fea0f601343b', 67, 1, 'MyApp', '[]', 0, '2019-05-22 10:21:31', '2019-05-22 10:21:31', '2020-05-22 10:21:31'),
('0f42e453fb3f5e3b3b830bed458cfaa38e98754e301a81d8b85198762da0d448c1b4433ab88b3248', 1, 1, 'MyApp', '[]', 0, '2019-04-25 10:48:30', '2019-04-25 10:48:30', '2020-04-25 10:48:30'),
('0f50c1d3738f6d2d5edb6e624d669c3920cd2dfb914debf01b80c2a20aa89a32c7554157219c1326', 16, 1, 'MyApp', '[]', 0, '2019-04-27 18:54:53', '2019-04-27 18:54:53', '2020-04-27 18:54:53'),
('0fb254485b4f8b7d03a349f27ee26b3ee2ceb30a6f8ce47fb14d43b8627624c8ed4683a33fbdf8af', 69, 1, 'MyApp', '[]', 0, '2019-05-13 14:32:58', '2019-05-13 14:32:58', '2020-05-13 14:32:58'),
('10a48f61df710d588847c0b78e1282b1be07f4b3454e6ff5c9a2d786d836b9fa962c015f535bde05', 7, 1, 'MyApp', '[]', 0, '2019-04-25 15:47:12', '2019-04-25 15:47:12', '2020-04-25 15:47:12'),
('116a60c0a6d2f69ccb03e83c3acd98d1ab8ac350af2b8cb097d947b166c78f98cdb278d61034643e', 6, 1, 'MyApp', '[]', 0, '2019-04-17 09:19:27', '2019-04-17 09:19:27', '2020-04-17 09:19:27'),
('12254f074f56a87bb3c5555960dd91c551f936993dc2be46e8afb65b4b9ca834164af0c08d94c179', 6, 1, 'MyApp', '[]', 0, '2019-04-25 17:51:54', '2019-04-25 17:51:54', '2020-04-25 17:51:54'),
('128cce42071eaa8447b4ec356214b898ddafcf0b666da34d30bec866908572fe74e1081a25f27aec', 12, 1, 'MyApp', '[]', 0, '2019-04-18 09:49:11', '2019-04-18 09:49:11', '2020-04-18 09:49:11'),
('12f8aa3d95354903f570c53fede1246b42c5811b04fe75f04da9407bf0fd828ed186651acbb7a3ed', 66, 1, 'MyApp', '[]', 0, '2019-05-11 10:46:25', '2019-05-11 10:46:25', '2020-05-11 10:46:25'),
('1300b2249e7d5332c007b02c75306f6d8d882d836791f089cad26d7cbd9e8061134fe046af658a60', 6, 1, 'MyApp', '[]', 0, '2019-05-08 01:40:47', '2019-05-08 01:40:47', '2020-05-08 01:40:47'),
('136008648d352825a2dfb1629c8eaec31eb710e3c396c48db79e1df083735dfe79a93b64b8f0b208', 6, 1, 'MyApp', '[]', 0, '2019-04-23 10:41:04', '2019-04-23 10:41:04', '2020-04-23 10:41:04'),
('144f3f02d4fd86b26d6c5b9cf1bc7327b973e17a7ac44d9cc8623818d4bb9aebb3773eaf9170af32', 16, 1, 'MyApp', '[]', 0, '2019-05-06 12:53:57', '2019-05-06 12:53:57', '2020-05-06 12:53:57'),
('146ea54e437a2c4cdb6db6b08de873a4d3b4cb1b1b2d904ef5b99ea5a7a11d6832d59a0dae5e447d', 6, 1, 'MyApp', '[]', 0, '2019-04-23 14:17:30', '2019-04-23 14:17:30', '2020-04-23 14:17:30'),
('1481d3b55c9ef46f036edb00b69fc3da15b604839d07a9f575d28b8e0b94ca35bb3210f5193785b4', 1, 1, 'MyApp', '[]', 0, '2019-05-21 13:39:28', '2019-05-21 13:39:28', '2020-05-21 13:39:28'),
('1516a1d92549716b704de3d59c21fe012989e166a62dc50418281d148e4ed397c9d933d824271c5e', 12, 1, 'MyApp', '[]', 0, '2019-04-27 19:05:23', '2019-04-27 19:05:23', '2020-04-27 19:05:23'),
('15c3954968ab0998f659aae782b5044f51147b384fb8e2e881459d02b20eee2d83a7a259d81226bb', 68, 1, 'MyApp', '[]', 0, '2019-05-13 15:48:51', '2019-05-13 15:48:51', '2020-05-13 15:48:51'),
('16a9f69afb894ddd01edb69be9b11e8d4093e693ea16bbbec80882f6d68fbcf91b3c9a1d658b0c68', 6, 1, 'MyApp', '[]', 0, '2019-04-22 01:44:04', '2019-04-22 01:44:04', '2020-04-22 01:44:04'),
('16b95887d2cc3a967805d355abda842e25e5381fb63be01aa4c7622d41f6fa55f273ed2507df17f7', 7, 1, 'MyApp', '[]', 0, '2019-05-08 15:49:18', '2019-05-08 15:49:18', '2020-05-08 15:49:18'),
('16ca0fc1c58636c7bfd69ca0793b7b1023994920765982b88fe5fdda214b5962b0f44d31aed64f0b', 15, 1, 'MyApp', '[]', 0, '2019-04-18 10:08:00', '2019-04-18 10:08:00', '2020-04-18 10:08:00'),
('16ca48f5a94c934317815857be1b38b615f54f42ce97e5845a876ee6c3c18df311f72e773a7730ac', 84, 1, 'MyApp', '[]', 0, '2019-05-21 18:41:25', '2019-05-21 18:41:25', '2020-05-21 18:41:25'),
('181927d4558304f852d40ec288a559899e06f3126dbad1c12dd38348f748e0d1933ab63a2c5c1320', 7, 1, 'MyApp', '[]', 0, '2019-04-25 17:48:22', '2019-04-25 17:48:22', '2020-04-25 17:48:22'),
('182093f0c698d5c9a9c1e88549f20d8826bce04b7e8769ca82295d4ef50e25b77d1981bca36e1748', 6, 1, 'MyApp', '[]', 0, '2019-05-06 10:23:01', '2019-05-06 10:23:01', '2020-05-06 10:23:01'),
('18f62c4affee6aaab304d85f98afb3e91b3a93968f6e4985e49ded8fb1ec49758d66d497a2224eef', 12, 1, 'MyApp', '[]', 0, '2019-05-06 11:27:51', '2019-05-06 11:27:51', '2020-05-06 11:27:51'),
('1a5d291f56a13bf4f0f6e67144ad06f3830fce05d71b21be83328d531a459477ffcbda52caeb9266', 6, 1, 'MyApp', '[]', 0, '2019-05-22 19:00:07', '2019-05-22 19:00:07', '2020-05-22 19:00:07'),
('1a8995ca94e2af525550881853ef5ef67c042719901adee5d802be0deaf4d061cfa701ce64e182f6', 74, 1, 'MyApp', '[]', 0, '2019-05-18 18:41:52', '2019-05-18 18:41:52', '2020-05-18 18:41:52'),
('1ad2fa79c6f1e2be176a404da6d3dd1c7f0643088cf4e22e36ce00a704742ce33844fa429739e699', 16, 1, 'MyApp', '[]', 0, '2019-05-10 17:04:13', '2019-05-10 17:04:13', '2020-05-10 17:04:13'),
('1ae292156f1f942e4164d9d4b6565458ee5c52734f10787ff358716bd8d646e97b495d66be262628', 7, 1, 'MyApp', '[]', 0, '2019-04-23 10:38:49', '2019-04-23 10:38:49', '2020-04-23 10:38:49'),
('1afe9dc904b5de0fce2d6e64fe82a67f677178bbb628245d0dfd53825c6a774fe7ac5b6c3d7776b3', 6, 1, 'MyApp', '[]', 0, '2019-05-21 19:00:28', '2019-05-21 19:00:28', '2020-05-21 19:00:28'),
('1b38740d1732bb87543161b51182765d0f9eeaa08cedc5d0ca8ec055bd516125470773b1ad1add37', 6, 1, 'MyApp', '[]', 0, '2019-04-22 05:47:28', '2019-04-22 05:47:28', '2020-04-22 05:47:28'),
('1b72f7006947489ef09bfc33b107c1a50ce8a6dc9739fa6bdbe7aa841b0618fd7aeea5f8c56d6c6a', 67, 1, 'MyApp', '[]', 0, '2019-05-21 12:36:10', '2019-05-21 12:36:10', '2020-05-21 12:36:10'),
('1bc417e98e4d9b8f062a6970a92b0b7663e5f82c34d61cc3c7d855be2604fc31523c84e832141c99', 12, 1, 'MyApp', '[]', 0, '2019-05-11 18:44:12', '2019-05-11 18:44:12', '2020-05-11 18:44:12'),
('1c58e847accc76953f7af4d51990b062f58042be5126ffc49f65035213952bf1243b4fdc0dd53bb7', 78, 1, 'MyApp', '[]', 0, '2019-05-22 12:13:20', '2019-05-22 12:13:20', '2020-05-22 12:13:20'),
('1c73b388085e42c5060f6e743ec5b1a4be5296f3f36451e83ef7ccd887eb9bfb1b9b37b9936ea34d', 82, 1, 'MyApp', '[]', 0, '2019-05-22 14:10:51', '2019-05-22 14:10:51', '2020-05-22 14:10:51'),
('1d0beca46823f899211a3c037d9042d166d0a9ada45da836f17078772682b14e7f9ae7d6d84cdc6e', 1, 1, 'MyApp', '[]', 0, '2019-05-13 12:02:20', '2019-05-13 12:02:20', '2020-05-13 12:02:20'),
('1d840c8fb9f640bfe0656af57b1da45790da8c27324fe53f9a02e4d4165952cfd8dcc6f87d7ff98e', 25, 1, 'MyApp', '[]', 0, '2019-04-27 10:36:41', '2019-04-27 10:36:41', '2020-04-27 10:36:41'),
('1e486ef3e67a7503cd479ef9759c935b316e0488a347bcc4802828b77dbfb6df9067ebc3f7660be1', 25, 1, 'MyApp', '[]', 0, '2019-04-25 18:10:15', '2019-04-25 18:10:15', '2020-04-25 18:10:15'),
('1e75a418e8b81c9471b95f923faa85f0bad720ac36f158831d84abc49cb3bc5b7d1fbe89dd8110d7', 67, 1, 'MyApp', '[]', 0, '2019-05-13 11:06:09', '2019-05-13 11:06:09', '2020-05-13 11:06:09'),
('1eb6c7e7a176b5782c25df3ee4f843b4a83539e73dadef546337e21fc9425e073b8c68046222e194', 87, 1, 'MyApp', '[]', 0, '2019-05-23 11:04:31', '2019-05-23 11:04:31', '2020-05-23 11:04:31'),
('1ef58e22a5d67da759de80bf977ed4c636091e87927639d957eca9063c03cabf5195619daa8ead8c', 71, 1, 'MyApp', '[]', 0, '2019-05-17 14:26:25', '2019-05-17 14:26:25', '2020-05-17 14:26:25'),
('207becd911f2449458f58b72d0d172a04c910de41d53571fe5b08428003ad28aa3baabdc12e4d05e', 6, 1, 'MyApp', '[]', 0, '2019-05-14 11:27:29', '2019-05-14 11:27:29', '2020-05-14 11:27:29'),
('2194396d53d93aea7b3b1bbd97b9fc0d8f196be5f5d7b512b5cf79fb1ebe2770c1dee7253a159b38', 16, 1, 'MyApp', '[]', 0, '2019-04-25 20:30:32', '2019-04-25 20:30:32', '2020-04-25 20:30:32'),
('219f6b17b95d8d691e2e9fcd1927ce049af3ca65c2d3854e5dc408f56a28b9f87a1e80e1580742cb', 6, 1, 'MyApp', '[]', 0, '2019-04-17 07:20:40', '2019-04-17 07:20:40', '2020-04-17 07:20:40'),
('21a8590ab559a1f95044f2b29966242f49cd999b278b5dd25b32b8c3059bdf55fc44e62280456941', 5, 1, 'MyApp', '[]', 0, '2019-04-17 07:13:58', '2019-04-17 07:13:58', '2020-04-17 07:13:58'),
('22e88f424ae81c79ae7b3e9153ab3f66a9fbbdd6b3498534899ba555b845f7ec44b938c1c6a172f6', 58, 1, 'MyApp', '[]', 0, '2019-05-08 14:44:34', '2019-05-08 14:44:34', '2020-05-08 14:44:34'),
('231904a2935c4f114359f49141ac691d7062cde139d112b7d470a8052d5315787a38964a065f7405', 12, 1, 'MyApp', '[]', 0, '2019-04-22 22:27:23', '2019-04-22 22:27:23', '2020-04-22 22:27:23'),
('232829eed6f832f4ef74725f7c781a88e78f93edd2709ae0401dfb37211c8ada0accd2e21064a08c', 6, 1, 'MyApp', '[]', 0, '2019-05-22 15:36:18', '2019-05-22 15:36:18', '2020-05-22 15:36:18'),
('23d618c88dd4f7791654e25e92ee515c905edb350c093c52ad96207c13affa5206d581f4fd43fd1f', 6, 1, 'MyApp', '[]', 0, '2019-04-17 09:10:47', '2019-04-17 09:10:47', '2020-04-17 09:10:47'),
('23de0cb3d304d38acef3335648808018e0856946a8904a0b3d5fdcd0a7116fba307dbe0b25939bdf', 87, 1, 'MyApp', '[]', 0, '2019-05-23 11:48:31', '2019-05-23 11:48:31', '2020-05-23 11:48:31'),
('246184e64a3df405a2551021cd2f98f6067f24da73fe64991da1fb6551c26e5e3c55cff1e7eae6c8', 74, 1, 'MyApp', '[]', 0, '2019-05-18 18:29:42', '2019-05-18 18:29:42', '2020-05-18 18:29:42'),
('2563d52ae512e791e452f7cf0ef3b638cde2fa0d20378b1fae651e086e071d9475a6c8e63336545a', 6, 1, 'MyApp', '[]', 0, '2019-05-14 16:24:28', '2019-05-14 16:24:28', '2020-05-14 16:24:28'),
('258ce1320c40b0ec1b3c2f54b191c2124ec236706bbf675de7b382860fbf032c70ff3acee6abdd35', 88, 1, 'MyApp', '[]', 0, '2019-05-23 11:01:21', '2019-05-23 11:01:21', '2020-05-23 11:01:21'),
('261b1093d0b9532edc2ec5a51b177681c8a405de6cd88f86f3ce1992cb205563c7fc38a67cca606f', 7, 1, 'MyApp', '[]', 0, '2019-04-22 03:15:20', '2019-04-22 03:15:20', '2020-04-22 03:15:20'),
('2664d664a4097e1a0500db83cb702ba2f12372d33fe324218ed42124b74efcd238a418af82965012', 4, 1, 'MyApp', '[]', 0, '2019-04-17 07:10:13', '2019-04-17 07:10:13', '2020-04-17 07:10:13'),
('26863b4e44c4008acf0702c9abcc897c8c8a711976cbe186d8f1c18fbf09dccbd960e657ad91db8c', 6, 1, 'MyApp', '[]', 0, '2019-05-21 12:03:26', '2019-05-21 12:03:26', '2020-05-21 12:03:26'),
('26ae97cd12a1e350939a188b7e3710959b724708d8583cd3b9a8cdef8179fc4234d0fb6f88c38d71', 6, 1, 'MyApp', '[]', 0, '2019-05-07 06:00:04', '2019-05-07 06:00:04', '2020-05-07 06:00:04'),
('27d03e22fe011c5352844d040dd2c5960bfbb8ad36b4866411734caaabdb08776a0456afcbafd2cb', 75, 1, 'MyApp', '[]', 0, '2019-05-22 22:05:56', '2019-05-22 22:05:56', '2020-05-22 22:05:56'),
('27d460812ee19e089381f671232cacf87f4617e3aa01042ae4947019a5b8b4cf37962f40ff134938', 6, 1, 'MyApp', '[]', 0, '2019-04-17 08:31:30', '2019-04-17 08:31:30', '2020-04-17 08:31:30'),
('2812192b87ccd4728808b0fb33e1fd44e7174bf9d930c57fdffe57977adedb182e04a5e2c3a7eab9', 82, 1, 'MyApp', '[]', 0, '2019-05-23 10:10:25', '2019-05-23 10:10:25', '2020-05-23 10:10:25'),
('289705b8eee64c96e6061beab054fdee6b24595192221f0424254ed436cf6a28f2eee842d3c1749e', 7, 1, 'MyApp', '[]', 0, '2019-05-11 12:23:09', '2019-05-11 12:23:09', '2020-05-11 12:23:09'),
('295e228abc5618019bbb234bd17113c3865858870c8788bd4a937d166e6e80a557d6836f10819eb6', 67, 1, 'MyApp', '[]', 0, '2019-05-23 06:43:59', '2019-05-23 06:43:59', '2020-05-23 12:13:59'),
('2969817e1ff253d56b43a15c3e60e0a30ee39d2f87ca3d404716810a7127542a42a6b24355a703eb', 16, 1, 'MyApp', '[]', 0, '2019-04-18 10:58:27', '2019-04-18 10:58:27', '2020-04-18 10:58:27'),
('29dfd7c85b7f3984920761ea55bf872b66a0f68fc4318a1a702c3635738a0b3deecba531ef978da0', 60, 1, 'MyApp', '[]', 0, '2019-05-08 15:33:07', '2019-05-08 15:33:07', '2020-05-08 15:33:07'),
('29e79b09b01e5aa76a728fa8769b79e6ad52d35651d9dd613143cf66fd6c37ba53eb1c137dbce53e', 6, 1, 'MyApp', '[]', 0, '2019-04-18 03:25:46', '2019-04-18 03:25:46', '2020-04-18 03:25:46'),
('2ad96f60462e8d3f342805edbc79f5855a27c13ebde6a4b2cf402b74acc15c6843a894b072e1cc07', 7, 1, 'MyApp', '[]', 0, '2019-05-08 03:09:44', '2019-05-08 03:09:44', '2020-05-08 03:09:44'),
('2adb9f74e6b20b891b6f60b14cdc767470a8083034318fbf453cfbd4f32964dc6d8aa8504ba2e2ea', 1, 1, 'MyApp', '[]', 0, '2019-05-23 10:33:40', '2019-05-23 10:33:40', '2020-05-23 16:03:40'),
('2adca80c3acd1c1cbf91237bedc3024140711ad58e6e5d1e9fea22e941bdcf5e33cc863f48610f21', 63, 1, 'MyApp', '[]', 0, '2019-05-10 17:18:59', '2019-05-10 17:18:59', '2020-05-10 17:18:59'),
('2afbee5730757bd61c2ddb81a5b9edbbcfbb0607f2f7777bf30724b6b2cbf994cf3250be90384dd1', 76, 1, 'MyApp', '[]', 0, '2019-05-21 01:35:30', '2019-05-21 01:35:30', '2020-05-21 01:35:30'),
('2b07d070c47ca082cda59e537fb8efe57d4755e8b9d2aaa04b41b46102243f39f285a6b6f9ebcc7a', 77, 1, 'MyApp', '[]', 0, '2019-05-20 13:04:49', '2019-05-20 13:04:49', '2020-05-20 13:04:49'),
('2b1a334d245a228807c7b319374cdc63e87ba008921d5948bd904c3f523aadab4ccafe1708ef6e41', 72, 1, 'MyApp', '[]', 0, '2019-05-23 11:21:16', '2019-05-23 11:21:16', '2020-05-23 11:21:16'),
('2b375dfe70bec4247420d7d703108327c69d171f11c8f4c70f43321fd32af18154ae851ba2448421', 7, 1, 'MyApp', '[]', 0, '2019-05-10 12:48:58', '2019-05-10 12:48:58', '2020-05-10 12:48:58'),
('2b4a45410b2c2de0b287ab6e8199e47968292e5fefb14084b958a94ebb44d620072314ac388b6848', 67, 1, 'MyApp', '[]', 0, '2019-05-22 15:35:33', '2019-05-22 15:35:33', '2020-05-22 15:35:33'),
('2bb8b634416b928e66fed76e225877d3332cca5e4a2d8fba5ad6b67dc711c63badc9e18b408d01d1', 64, 1, 'MyApp', '[]', 0, '2019-05-10 17:03:20', '2019-05-10 17:03:20', '2020-05-10 17:03:20'),
('2c502365a9fb04c68625fdf3bda9756f559fac287157e33f3bc971deb8cfd0e333970537686f74be', 6, 1, 'MyApp', '[]', 0, '2019-05-08 19:04:02', '2019-05-08 19:04:02', '2020-05-08 19:04:02'),
('2d1379ead5fe8de6a0f38c176300ce363d48965ac3eff715ad9667a5f87334c436f0ea5ac61888ad', 67, 1, 'MyApp', '[]', 0, '2019-05-15 15:43:32', '2019-05-15 15:43:32', '2020-05-15 15:43:32'),
('2d3e498234cc05215673382a560fe75376144045136c10683ccf259dc111ce461c908a064b6cc06a', 6, 1, 'MyApp', '[]', 0, '2019-04-25 18:28:23', '2019-04-25 18:28:23', '2020-04-25 18:28:23'),
('2d4530eb7ca122d08023acc1985553836811c3b6be10a5682b33380d1cd8a33fdee342f95e2398c4', 7, 1, 'MyApp', '[]', 0, '2019-04-25 16:08:52', '2019-04-25 16:08:52', '2020-04-25 16:08:52'),
('2d53faaa8be838077cb04e689456f4ab56ba566dbcb66d20ce5413e1803fb5b98658dac957b9c8d2', 6, 1, 'MyApp', '[]', 0, '2019-05-14 12:37:58', '2019-05-14 12:37:58', '2020-05-14 12:37:58'),
('2d68b3413b9ae3b634ef24bbe6ed2c12ed68828b3bf370363069682f9de90643c27502ecbfe6400e', 7, 1, 'MyApp', '[]', 0, '2019-05-09 17:53:03', '2019-05-09 17:53:03', '2020-05-09 17:53:03'),
('2dab4722edccb7a64cdde1a0f69c2f3984585cf157fcbb729c24808a896a0d89d3f3391fdc6d43c8', 67, 1, 'MyApp', '[]', 0, '2019-05-22 12:19:50', '2019-05-22 12:19:50', '2020-05-22 12:19:50'),
('30210c984ce1b3dec5621a0b5719c078b6e985180bf707f3863f8c791683954b2a56713869419f98', 12, 1, 'MyApp', '[]', 0, '2019-04-23 15:34:31', '2019-04-23 15:34:31', '2020-04-23 15:34:31'),
('311d920997ef0955549a663a7ba1fc7e46ad64d621bfdb9230ee046979fd0e918af9580c47cd57c3', 16, 1, 'MyApp', '[]', 0, '2019-04-26 21:56:55', '2019-04-26 21:56:55', '2020-04-26 21:56:55'),
('313d2149d0757ffd35369faff4973c152c3adac98ffb944940db4e85e81ef329199d0fbc7485ca88', 1, 1, 'MyApp', '[]', 0, '2019-05-23 10:34:11', '2019-05-23 10:34:11', '2020-05-23 16:04:11'),
('3148fc3743183d206d4111b26d35d4b3c5d5b94dcf7d72ddbfa76bc02adc869ca5beca7a4ba3d894', 67, 1, 'MyApp', '[]', 0, '2019-05-16 15:31:26', '2019-05-16 15:31:26', '2020-05-16 15:31:26'),
('31d7de2913110f2d6c7a40c068f5a29109e87c4a06f70e75f8afe5482cc0eaf8673da729a2ed54dd', 6, 1, 'MyApp', '[]', 0, '2019-05-16 12:29:59', '2019-05-16 12:29:59', '2020-05-16 12:29:59'),
('320e6a2f8f31318034855f7fd76bf37d27dec0de8c3ee65efdc9a6309c9a97a5b19212a061863abc', 83, 1, 'MyApp', '[]', 0, '2019-05-21 10:39:22', '2019-05-21 10:39:22', '2020-05-21 10:39:22'),
('32d6ab0e37575237f9cb416e2bc1de604f58dafc25174c1d0da02be20ace02f5e928812abcd9b283', 75, 1, 'MyApp', '[]', 0, '2019-05-18 18:51:09', '2019-05-18 18:51:09', '2020-05-18 18:51:09'),
('33104611ba01f04ead4d2de223eacae68f01d5823d475f721602627559782c65134e090edcb792b9', 7, 1, 'MyApp', '[]', 0, '2019-05-07 01:46:29', '2019-05-07 01:46:29', '2020-05-07 01:46:29'),
('338b435bf90173327ebe668505cd03740f2357b088a71d36776628ea9af2428124d6f7f81d60e12d', 85, 1, 'MyApp', '[]', 0, '2019-05-22 22:22:41', '2019-05-22 22:22:41', '2020-05-22 22:22:41'),
('33e0c8720a74906c0f480adce251e74e835a82f297115de6c50221614756d1cfc359bcfb6d5ce5e0', 23, 1, 'MyApp', '[]', 0, '2019-04-25 16:40:31', '2019-04-25 16:40:31', '2020-04-25 16:40:31'),
('3490e763cbcb50f150d37ac412a91ab1206c120d88d02b341b049fe4601ed4efd4f22fe6cc564730', 87, 1, 'MyApp', '[]', 0, '2019-05-23 11:25:16', '2019-05-23 11:25:16', '2020-05-23 11:25:16'),
('35ecd225474651eaf885881e69bc9389e0bca5266cf38d5f1186e507052298ac0382787af940e7af', 76, 1, 'MyApp', '[]', 0, '2019-05-22 22:02:48', '2019-05-22 22:02:48', '2020-05-22 22:02:48'),
('3689039a91cbe5f0f081f910c0e093504b4f59e7455e2deb193a062c18bd60162a053af58d23c311', 7, 1, 'MyApp', '[]', 0, '2019-04-18 07:13:05', '2019-04-18 07:13:05', '2020-04-18 07:13:05'),
('36a827dcee4998032dd391e35fa735ac86b58648e6b2a6972f8935903901b8fb5c35f7296d75c001', 7, 1, 'MyApp', '[]', 0, '2019-05-03 12:29:24', '2019-05-03 12:29:24', '2020-05-03 12:29:24'),
('374985858a8fa50adcf4a34929de593f4a5b604a23ff6ae8c8ef4aadbeacea01ff5c21690e735bd1', 6, 1, 'MyApp', '[]', 0, '2019-05-14 12:02:18', '2019-05-14 12:02:18', '2020-05-14 12:02:18'),
('380891b91406a17e2bcec6d18df8d1abc253b08ca3b6cda560e5340c5e428c9923979fdd0ab5b823', 23, 1, 'MyApp', '[]', 0, '2019-04-25 16:41:21', '2019-04-25 16:41:21', '2020-04-25 16:41:21'),
('386a09b5f48aa187cedf16f6e3ee99fff2abb4d38fe5ef3b3b08069876ce960978ec7b11b0b48fd6', 12, 1, 'MyApp', '[]', 0, '2019-05-11 19:06:39', '2019-05-11 19:06:39', '2020-05-11 19:06:39'),
('388624a94a4650ec217942d31734fc9f16dd99b87a636b1809b7f329c2e59430e2cc49751e63ebab', 67, 1, 'MyApp', '[]', 0, '2019-05-22 10:14:35', '2019-05-22 10:14:35', '2020-05-22 10:14:35'),
('38d950145543731a45e339c9bfd48b7ae0cbd968e55497236b6888fb49046177ca404840c677f126', 75, 1, 'MyApp', '[]', 0, '2019-05-23 05:09:04', '2019-05-23 05:09:04', '2020-05-23 05:09:04'),
('39b64b8dfd42ebd80129445aa949f1c4e1f91bc2a8159f9383dd8cb58af8b30bc2ac7821610f9c68', 6, 1, 'MyApp', '[]', 0, '2019-04-17 09:09:23', '2019-04-17 09:09:23', '2020-04-17 09:09:23'),
('3a3cbd3b7c6d9ba48fe00c85563ade16d03e0d84d481bd3d86460d4c4c2fa23e68e9b2152de3b545', 12, 1, 'MyApp', '[]', 0, '2019-04-22 06:29:11', '2019-04-22 06:29:11', '2020-04-22 06:29:11'),
('3a4c8ccfb61a12765dfd3a0400e5562723a5766511fac78c67ebf514168116e3383d8e841be1aa2c', 6, 1, 'MyApp', '[]', 0, '2019-05-14 14:32:40', '2019-05-14 14:32:40', '2020-05-14 14:32:40'),
('3ad4885481ee80123069bc1db90d1038d29d77df011d95065c2deabc536426b7a24515ab070b86e1', 13, 1, 'MyApp', '[]', 0, '2019-04-18 09:09:53', '2019-04-18 09:09:53', '2020-04-18 09:09:53'),
('3add37876810cad6b8d779bbc3c131e74e45c9b5c9ae96124cc666da62a50a02d2efdc0800ebf754', 67, 1, 'MyApp', '[]', 0, '2019-05-21 10:34:03', '2019-05-21 10:34:03', '2020-05-21 10:34:03'),
('3af219789407e0a77bc729aaf1fbd35bf4e5be68b988188eeebf1869bfd96a9efee4096c66bf0782', 68, 1, 'MyApp', '[]', 0, '2019-05-13 14:31:31', '2019-05-13 14:31:31', '2020-05-13 14:31:31'),
('3af7177f7d62155e4e1a92b3ec1e54b74beda1e25eaadc8efcdb5f1b1e2ecab254985ef03e5ba366', 77, 1, 'MyApp', '[]', 0, '2019-05-20 12:24:04', '2019-05-20 12:24:04', '2020-05-20 12:24:04'),
('3b06ea6c8c5c4c879c2e1fafa0cc48c8c7021d6ce98fc69433c2d5863ec12124b669cf3d74165b97', 16, 1, 'MyApp', '[]', 0, '2019-04-22 22:28:40', '2019-04-22 22:28:40', '2020-04-22 22:28:40'),
('3bb9f9216629ab0c3ec25e89453d69af5845f02b1beede67c7fd431a86c98f2971601dec6c6876fc', 67, 1, 'MyApp', '[]', 0, '2019-05-13 14:28:14', '2019-05-13 14:28:14', '2020-05-13 14:28:14'),
('3c638f93b32bfb19633bab3ab3473662640e90b78f7ab5eb2a07fee938488334345af9c71319f981', 76, 1, 'MyApp', '[]', 0, '2019-05-18 18:54:46', '2019-05-18 18:54:46', '2020-05-18 18:54:46'),
('3caa52f7fe5b590f02a17d1d64e9176f7ba8ab1e9c145b39f7a03c31a23005544f12ce47367a7a63', 12, 1, 'MyApp', '[]', 0, '2019-04-23 15:34:26', '2019-04-23 15:34:26', '2020-04-23 15:34:26'),
('3d36122a46640501a4ac2430290343abd6d3774b1c5b7b97f892e857e326b9a64615ae87600ab0c1', 4, 1, 'MyApp', '[]', 0, '2019-04-17 08:54:06', '2019-04-17 08:54:06', '2020-04-17 08:54:06'),
('3ec3f81bf0ee2a7d184a041807ed0c9814400b4396e8559ba1ebe6bbaba638f586125c990999602f', 6, 1, 'MyApp', '[]', 0, '2019-04-18 08:17:11', '2019-04-18 08:17:11', '2020-04-18 08:17:11'),
('3f3028bc51d7e02f96bc653c3ed73b08c5579ba62632bc2af2cd0862f73968f2c2704f09c1bbeb84', 6, 1, 'MyApp', '[]', 0, '2019-05-16 14:24:49', '2019-05-16 14:24:49', '2020-05-16 14:24:49'),
('3f46a149fb48c6d23055157e56ea890c9206c7ecefc62df518e2bec252dc99001deaa50fd8217760', 23, 1, 'MyApp', '[]', 0, '2019-04-25 16:39:10', '2019-04-25 16:39:10', '2020-04-25 16:39:10'),
('406065a42d0cfc1d9a3c2a4a4c2786fa8d07511980933e0caa17f8716443522ffe58de5ddecda907', 12, 1, 'MyApp', '[]', 0, '2019-04-25 17:53:10', '2019-04-25 17:53:10', '2020-04-25 17:53:10'),
('42082ad76c34d57af9fc98e75d12dafed079b64a3b7a519cd5d553a4f5f9cf2036ac8e98b9605914', 7, 1, 'MyApp', '[]', 0, '2019-04-25 10:50:11', '2019-04-25 10:50:11', '2020-04-25 10:50:11'),
('4224ddcd77e4c32c3d4f38044aeb27ddf25afb213178d2fbca0ba7b1e5faa3168b5f6a111900a8b7', 6, 1, 'MyApp', '[]', 0, '2019-05-13 13:06:58', '2019-05-13 13:06:58', '2020-05-13 13:06:58'),
('425f79d09cb8cdd7d15285cad1ccf0c7be8b2a9a824c8577bfb3425e0f62a764bbd6a29bdc63c7f8', 80, 1, 'MyApp', '[]', 0, '2019-05-21 18:25:13', '2019-05-21 18:25:13', '2020-05-21 18:25:13'),
('43049f2f1e4e9dd20899ea0f85a579d9196e945bb9711fbbf84421cb282d7caf9ac4661679ff11ad', 80, 1, 'MyApp', '[]', 0, '2019-05-21 18:00:03', '2019-05-21 18:00:03', '2020-05-21 18:00:03'),
('430faae02b1d931064f0c362bfcf1a204ecc7f3e02d54fc43f27e9b5ccf88e5f854159ca552f93b4', 6, 1, 'MyApp', '[]', 0, '2019-05-08 15:50:57', '2019-05-08 15:50:57', '2020-05-08 15:50:57'),
('43587eab0455b04a8aab0bb0a55dc18bd4b18c1429d4506478401d69184bc8dd6ec0ea4115b1f9e0', 6, 1, 'MyApp', '[]', 0, '2019-05-02 15:30:53', '2019-05-02 15:30:53', '2020-05-02 15:30:53'),
('43afd7f7dd45bff0fb7f1d530d5534421a2af5d9cc931b2a800fac3318c2689619ec9c700fe3c2b8', 7, 1, 'MyApp', '[]', 0, '2019-05-10 17:05:51', '2019-05-10 17:05:51', '2020-05-10 17:05:51'),
('43d76a26700c9a402c51eebc01958f96f4a54c0686b62b742af3c07f030fc83b39653a34587570d7', 74, 1, 'MyApp', '[]', 0, '2019-05-18 18:37:45', '2019-05-18 18:37:45', '2020-05-18 18:37:45'),
('441d3827d6b1f2c48f1ddd279c17a370805ec0252ad531d6b368c5ba5759b9e176c7e54bfa713d02', 68, 1, 'MyApp', '[]', 0, '2019-05-13 16:01:31', '2019-05-13 16:01:31', '2020-05-13 16:01:31'),
('44319e971b97c3e691180de663552242522fb4deed414dd6e95b8a4e28e156463e91a387b81d75c2', 72, 1, 'MyApp', '[]', 0, '2019-05-17 14:27:06', '2019-05-17 14:27:06', '2020-05-17 14:27:06'),
('4436d9a1b06e0a203a091c81b13e06186eb251eccf4303b0f3e7e9220c896b1f16a8d32e427c7607', 4, 1, 'MyApp', '[]', 0, '2019-04-17 09:04:07', '2019-04-17 09:04:07', '2020-04-17 09:04:07'),
('4459d81e47672296516ee5bfa16480548a9efe361d0db294c9733e479faafb4123ecc596b0fd772d', 6, 1, 'MyApp', '[]', 0, '2019-05-13 12:07:14', '2019-05-13 12:07:14', '2020-05-13 12:07:14'),
('446561c20d51199c9d397f76b9855f8e80013a61d8e2a24e37965e708a7ce6cb1629add6d81513d3', 6, 1, 'MyApp', '[]', 0, '2019-05-22 14:27:47', '2019-05-22 14:27:47', '2020-05-22 14:27:47'),
('454d250b9c9c64ea5bfe4cb52cc0613d82ed1e5bd792746a1038cd2102020c72cd6bf8813a0e928f', 7, 1, 'MyApp', '[]', 0, '2019-05-03 13:01:44', '2019-05-03 13:01:44', '2020-05-03 13:01:44'),
('457998a3f7a2c9ad01e44b3063761fd44711b735f9a5ab17266e9343fa05105173c2d7306cb84593', 12, 1, 'MyApp', '[]', 0, '2019-05-11 19:29:07', '2019-05-11 19:29:07', '2020-05-11 19:29:07'),
('46c26e678047c03081968cef80114d005cc2aea6518ccbaabb543e939720636411fe9c858910531b', 67, 1, 'MyApp', '[]', 0, '2019-05-13 14:45:20', '2019-05-13 14:45:20', '2020-05-13 14:45:20'),
('48cb8daee17fd87f61af053ab6656ca4a69171a7a83be5c8dd0f452c21e86c794b5fe59005aef746', 82, 1, 'MyApp', '[]', 0, '2019-05-22 18:41:15', '2019-05-22 18:41:15', '2020-05-22 18:41:15'),
('48d367864445bec424560eadbc6091a46d530a4b797ada77615f687ead9018b835e17a4b29674e28', 66, 1, 'MyApp', '[]', 0, '2019-05-11 12:01:26', '2019-05-11 12:01:26', '2020-05-11 12:01:26'),
('49641307854487bb39c4dbe39768a2761ef60ef69d258fe14fba99d6ed62fabae34d281564d0e214', 12, 1, 'MyApp', '[]', 0, '2019-04-18 09:22:49', '2019-04-18 09:22:49', '2020-04-18 09:22:49'),
('4967ee01c7cee9270489bd4ce444fd2054d73150c74a5c1653e35e446b4d25d614e77ca0d5ef8937', 7, 1, 'MyApp', '[]', 0, '2019-05-08 18:10:31', '2019-05-08 18:10:31', '2020-05-08 18:10:31'),
('49ac8ff094a2dae72947577422c12d1549922abe9278b765cc8af0759465ec3fdc534f18508a3a3a', 75, 1, 'MyApp', '[]', 0, '2019-05-22 21:51:19', '2019-05-22 21:51:19', '2020-05-22 21:51:19'),
('4a0397a1e685637bd60b72d57f3c541ddf349ca38de088c381332b034b34a4f4beb71ad9dbfee076', 6, 1, 'MyApp', '[]', 0, '2019-05-15 18:39:58', '2019-05-15 18:39:58', '2020-05-15 18:39:58'),
('4a0deb1efe20e5de830b446a01f8b2fd735bf0c68871bf3ea7e00ad29e7bfaec69246088ce69f77c', 67, 1, 'MyApp', '[]', 0, '2019-05-22 14:28:00', '2019-05-22 14:28:00', '2020-05-22 14:28:00'),
('4b093e943d98dd80998b15b45c765182c7a68766a1a325dedaac1bf938b89e0260d22ec32a0423fc', 6, 1, 'MyApp', '[]', 0, '2019-05-13 18:17:27', '2019-05-13 18:17:27', '2020-05-13 18:17:27'),
('4b42a92165881fb8cd8a79a6bdaa4a9668e9411afcff2c1ce121b7b7113053d1438209e85ab71702', 75, 1, 'MyApp', '[]', 0, '2019-05-18 18:43:38', '2019-05-18 18:43:38', '2020-05-18 18:43:38'),
('4bac2e2f8f8f046f321d44212b072cf14057f47d258a22c78747e917150575a67617158ac8213963', 68, 1, 'MyApp', '[]', 0, '2019-05-13 15:14:54', '2019-05-13 15:14:54', '2020-05-13 15:14:54'),
('4cd0c4a36baa34a179d70cf407036862bb1b8b4346cb7477a8ced952bcf2a03327d0f94e2d9ccbd2', 7, 1, 'MyApp', '[]', 0, '2019-04-29 16:13:25', '2019-04-29 16:13:25', '2020-04-29 16:13:25'),
('4cdafdd4d39cac9b8f09d4271287c10ff1c9d3906614516f7c5e00864a1586760ec0832412ed5b64', 77, 1, 'MyApp', '[]', 0, '2019-05-20 11:53:48', '2019-05-20 11:53:48', '2020-05-20 11:53:48'),
('4d157cd0de86419b12f0d0653046fae8e41cff94050a3cbf22ed0e457c50d54053218baa9f4ff69e', 6, 1, 'MyApp', '[]', 0, '2019-05-07 01:40:15', '2019-05-07 01:40:15', '2020-05-07 01:40:15'),
('4df3bc6911a7fe639363d0b76354af054e10cafb6db70647edd35654a5256074197fdccb92cff8c6', 63, 1, 'MyApp', '[]', 0, '2019-05-10 16:59:29', '2019-05-10 16:59:29', '2020-05-10 16:59:29'),
('4f3053e5ac97396aa7739529902c4700b495a361911fbfd1c1c41bc66b68fc05e465a755b16a785a', 7, 1, 'MyApp', '[]', 0, '2019-04-29 16:30:00', '2019-04-29 16:30:00', '2020-04-29 16:30:00'),
('4f5b479ed27e6e96a5fb5840562b90cd817a33461381acb4c06d07a5d1a639b9961168b06dff34c7', 88, 1, 'MyApp', '[]', 0, '2019-05-23 11:26:57', '2019-05-23 11:26:57', '2020-05-23 11:26:57'),
('4f99abc7ed2dcedb35fdc3ba4f7f3ada26899436592700015ded65ef11b87b6159a0d69905b12706', 6, 1, 'MyApp', '[]', 0, '2019-05-07 05:55:30', '2019-05-07 05:55:30', '2020-05-07 05:55:30'),
('5002bc241aaa1b8971d231e667e217588860ada2bb7519e2bf15a40c168c09815ca82eab9af3c2ff', 82, 1, 'MyApp', '[]', 0, '2019-05-22 18:50:25', '2019-05-22 18:50:25', '2020-05-22 18:50:25'),
('501ea863df7dc95949b3a4d8d72755ff0bed21519873dd8455e1096601f91cfaa8583917799e9501', 78, 1, 'MyApp', '[]', 0, '2019-05-20 15:11:41', '2019-05-20 15:11:41', '2020-05-20 15:11:41'),
('5090e9f62e4ce8f5e7d9c76c471c2aaefac4758879f1c46a6af25d32bdca038fc6a9c1f02cacde20', 67, 1, 'MyApp', '[]', 0, '2019-05-22 09:26:07', '2019-05-22 09:26:07', '2020-05-22 09:26:07'),
('51034b1da5a60204ca9a417da51765dcbd93d5f8a5d3862f102db5ae474082a04e01f82195a174e8', 16, 1, 'MyApp', '[]', 0, '2019-04-25 17:46:11', '2019-04-25 17:46:11', '2020-04-25 17:46:11'),
('51ee553feb004a3fd8081ddf1cdf20d32fe96c94131047d2c1c4f410836a8ae02f9e4901b1baa9fb', 77, 1, 'MyApp', '[]', 0, '2019-05-20 12:23:10', '2019-05-20 12:23:10', '2020-05-20 12:23:10'),
('52402312244ee87bb4a26506591ff8d72db3a78accaf48c2e832a72777bb9011746b1445fc17859d', 6, 1, 'MyApp', '[]', 0, '2019-04-24 17:06:49', '2019-04-24 17:06:49', '2020-04-24 17:06:49'),
('52ceb0935b95c1029a9020deffc61d7a925c0467282a676d053adf40a721a70eefe1518b1dcd65b2', 6, 1, 'MyApp', '[]', 0, '2019-05-13 14:39:20', '2019-05-13 14:39:20', '2020-05-13 14:39:20'),
('5348c5b29cd234b4af401eab8b6767160a3bd159ef94a88acb4cbb4c92bd0a62c7d61c0b9d3c3b86', 16, 1, 'MyApp', '[]', 0, '2019-05-11 18:39:21', '2019-05-11 18:39:21', '2020-05-11 18:39:21'),
('534faf40fdad1b158c5fc2c3c2defefac760821befeeab456a72bc7ceac196ae0fa59172a56238aa', 1, 1, 'MyApp', '[]', 0, '2019-05-23 10:32:29', '2019-05-23 10:32:29', '2020-05-23 16:02:29'),
('54de2b64e87ac8e0a80bdcb216dfb7bbc8bd400af4ce7a41bf5031e1f61f800daeb36f7e561c6223', 12, 1, 'MyApp', '[]', 0, '2019-04-25 10:06:34', '2019-04-25 10:06:34', '2020-04-25 10:06:34'),
('54f6e7c0b19d5ec06beb8dca237b354672a42954d61f55106f7906108f542bc082df2760bbca1f3a', 16, 1, 'MyApp', '[]', 0, '2019-04-23 20:01:57', '2019-04-23 20:01:57', '2020-04-23 20:01:57'),
('55655b8a962b1532deb096ac4089c41da00c1f2d97e600fd3d1e41eca70f91bab65d06d743bfdc4e', 7, 1, 'MyApp', '[]', 0, '2019-05-08 01:19:46', '2019-05-08 01:19:46', '2020-05-08 01:19:46'),
('55945be35104ea105f3c3cbab514ce67b4dbee9d5087e1e30d143739d55c976a48e0d8dbb1a54935', 36, 1, 'MyApp', '[]', 0, '2019-05-03 17:59:58', '2019-05-03 17:59:58', '2020-05-03 17:59:58'),
('570061ac43a198e2b0a0b7f9cc573e5fc2ff28639930e96295980c09dc16116c4fd0d67e3a474f43', 6, 1, 'MyApp', '[]', 0, '2019-04-25 18:11:44', '2019-04-25 18:11:44', '2020-04-25 18:11:44'),
('570db765bd781a9b57e68a8b011c9787187c22fae7b34a6f56bb127f7170b4af1bf4c4d6cb838827', 74, 1, 'MyApp', '[]', 0, '2019-05-17 20:02:59', '2019-05-17 20:02:59', '2020-05-17 20:02:59'),
('5747971e5f6dbb127ff37e788d7a71a18a5f6140329dc9aac838664aa65606fa8f4ec45b0879c8e3', 6, 1, 'MyApp', '[]', 0, '2019-04-25 19:07:38', '2019-04-25 19:07:38', '2020-04-25 19:07:38'),
('57edf281f24a25bcb21b845d1e27016a93354a0d1264ffe741030752c5f2b3453d3b7c47c3366ee3', 22, 1, 'MyApp', '[]', 0, '2019-04-25 15:21:49', '2019-04-25 15:21:49', '2020-04-25 15:21:49'),
('590f1a31ff4ab7d84a9d70de83bf12ce168850e76155cb0778078ca54c1b49efb734828e994f1226', 6, 1, 'MyApp', '[]', 0, '2019-04-27 18:44:04', '2019-04-27 18:44:04', '2020-04-27 18:44:04'),
('5939efd1953f99c7b821bbdbb9e475b2ec8d9757548bf257d0156e353967f4a28a45f3bf6987198d', 7, 1, 'MyApp', '[]', 0, '2019-05-06 15:29:40', '2019-05-06 15:29:40', '2020-05-06 15:29:40'),
('5a552c9bc4d454d1c78e225a267e21e4fdacecb7e9658a75529c5e14a102ec82c007902fac2f633c', 67, 1, 'MyApp', '[]', 0, '2019-05-22 09:24:59', '2019-05-22 09:24:59', '2020-05-22 09:24:59'),
('5b252ead0af6dfade3d02e057527d2ec09870da83f71c4c8d42d2e227d552e7c3a8691b8d8377b2a', 6, 1, 'MyApp', '[]', 0, '2019-04-27 18:14:38', '2019-04-27 18:14:38', '2020-04-27 18:14:38'),
('5ca7e6f7b0b5aede7d54d83202c70b22d33416fef9fea9107d4b4da2780f49bfac381531e85a6213', 67, 1, 'MyApp', '[]', 0, '2019-05-23 11:29:23', '2019-05-23 11:29:23', '2020-05-23 11:29:23'),
('5d3d6d389a2293b9c9332de684b57786784ede16afc87662362b4eba317bec70f255a280b23e7e59', 67, 1, 'MyApp', '[]', 0, '2019-05-21 18:23:27', '2019-05-21 18:23:27', '2020-05-21 18:23:27'),
('5da6d2abd0696798b7830fe7a31ed80afac68d146d3c827d2de06d377e4754f22f9df5c349baa5c2', 12, 1, 'MyApp', '[]', 0, '2019-05-11 19:06:25', '2019-05-11 19:06:25', '2020-05-11 19:06:25'),
('5e9cdc3d9112ca76ea67b0109b1aa6eecc34cc2242c60c43bf815215e555fcc9e7db83d5f633832b', 12, 1, 'MyApp', '[]', 0, '2019-04-18 11:20:53', '2019-04-18 11:20:53', '2020-04-18 11:20:53'),
('5fa5b1ef5ade625b6e7b9b13ecbf06c8af0eff1b3b7ccbbfca407bf4cfde02a08f23b2d8032d136d', 16, 1, 'MyApp', '[]', 0, '2019-04-23 18:49:37', '2019-04-23 18:49:37', '2020-04-23 18:49:37'),
('604a936067cef834911818435b7be0c8e6ab90674eed594ccde8055e9fd5ac553f55b5934d83efb0', 6, 1, 'MyApp', '[]', 0, '2019-05-11 12:32:09', '2019-05-11 12:32:09', '2020-05-11 12:32:09'),
('6060e5bbf87e273bfe56552c06f61afdefe300a4c92fd4a6d085ed5970cd7c808c1a5665d070291e', 6, 1, 'MyApp', '[]', 0, '2019-05-13 11:01:00', '2019-05-13 11:01:00', '2020-05-13 11:01:00'),
('60be5086ce479d3af0fa6f8e9020d0ca06407d0e7506b08786372d6d97c72cf8070cdc0f87f27799', 6, 1, 'MyApp', '[]', 0, '2019-04-18 01:22:52', '2019-04-18 01:22:52', '2020-04-18 01:22:52'),
('61e98b8532206fc358e6656a757f3652a73a021ab9692f01aed9da6d342ba6ad533017c9ff3fdf05', 6, 1, 'MyApp', '[]', 0, '2019-05-08 15:00:41', '2019-05-08 15:00:41', '2020-05-08 15:00:41'),
('61eeadaddb9591042e815764ca2522686a2271780a2e42a2d7b9b0140dba63449eb465bc63772c02', 6, 1, 'MyApp', '[]', 0, '2019-04-17 09:05:54', '2019-04-17 09:05:54', '2020-04-17 09:05:54'),
('6281d61089310366d1b3ec184261e20c7b33802a16a01029d48b8e152bda500fd8d99a580bfc56bd', 7, 1, 'MyApp', '[]', 0, '2019-05-08 01:17:57', '2019-05-08 01:17:57', '2020-05-08 01:17:57'),
('62cb366c1b24251ffee2feca647557ff1d582c215a9bb4506582068fe3483b91899bae1b9a849340', 6, 1, 'MyApp', '[]', 0, '2019-05-21 10:33:25', '2019-05-21 10:33:25', '2020-05-21 10:33:25'),
('62f7722efdf870e6d9bb749fcddca393693f692312a242ac1fcf5c7c6d512987012e5cde6ba06341', 63, 1, 'MyApp', '[]', 0, '2019-05-10 16:59:36', '2019-05-10 16:59:36', '2020-05-10 16:59:36'),
('659c7af51f6e19de637d1e35bb6c1e477b8309139a1ee69d79929116a42101443b3dcfcb299f23ea', 64, 1, 'MyApp', '[]', 0, '2019-05-10 16:57:57', '2019-05-10 16:57:57', '2020-05-10 16:57:57'),
('67b009f5aec7a0c741a357a072379228f90f30790e44adef0dad0f2e1bd315bc3d35bde960e086d3', 12, 1, 'MyApp', '[]', 0, '2019-04-18 07:57:30', '2019-04-18 07:57:30', '2020-04-18 07:57:30'),
('68108845ccfc2fa30e928ca9db3eb3a1c7f00a5413a7c287a54c085c20e589ab5a9becbd0df9d429', 67, 1, 'MyApp', '[]', 0, '2019-05-14 16:10:55', '2019-05-14 16:10:55', '2020-05-14 16:10:55'),
('68429325be9fb74444c2355062fa4f3f27f6a4f0305d7eab1908eba35fedb6180dbbc936bf3a4d08', 6, 1, 'MyApp', '[]', 0, '2019-04-25 15:50:02', '2019-04-25 15:50:02', '2020-04-25 15:50:02'),
('685e1ee8a78568af5a2847e19e1aa3bd62608bdb64db89ed41a9f855d19353ba66f69ac3202b599b', 60, 1, 'MyApp', '[]', 0, '2019-05-08 15:36:17', '2019-05-08 15:36:17', '2020-05-08 15:36:17'),
('69f775f64ddb3f3a995aea1700e0ae3ca7e8a7b4e31017b165ab35cbdcfa6d4a3136a9b61ab3d490', 81, 1, 'MyApp', '[]', 0, '2019-05-20 17:23:06', '2019-05-20 17:23:06', '2020-05-20 17:23:06'),
('6a4fd6ff67bde51ac12251fe4bfb635f121dac14c46f4d7fb9f995cf24e611c31695629291cc51ba', 67, 1, 'MyApp', '[]', 0, '2019-05-22 12:38:54', '2019-05-22 12:38:54', '2020-05-22 12:38:54'),
('6a54ab3c3419115332bef8d41cf8dbc127dc7111834d6b7011f97331fb17efe220c2ad8cbac519a7', 7, 1, 'MyApp', '[]', 0, '2019-04-24 10:51:44', '2019-04-24 10:51:44', '2020-04-24 10:51:44'),
('6bf6de659a8c5143f12ad9af49a2d78ca06425d8bcc4ae7cacba5391a769c9c26a7616a665ddbc5d', 6, 1, 'MyApp', '[]', 0, '2019-04-24 19:03:17', '2019-04-24 19:03:17', '2020-04-24 19:03:17'),
('6c8209bf73bf7c3e6f58459f5b680228a2d12f766e8612b4d5a3af0dc38e0869282e77aa3a0c90d3', 7, 1, 'MyApp', '[]', 0, '2019-04-25 18:16:36', '2019-04-25 18:16:36', '2020-04-25 18:16:36'),
('6c9055a924ebefabb860f8a1521e477c5b8e40a5455715481f7f1afbe729fb104cda71a1cf95fd3a', 6, 1, 'MyApp', '[]', 0, '2019-04-29 18:21:46', '2019-04-29 18:21:46', '2020-04-29 18:21:46'),
('6cea36dc2c8a4fc54218e478a2d766c85b160871eb3fc450f048312d3c482feeb48e76991327da13', 7, 1, 'MyApp', '[]', 0, '2019-04-24 11:25:10', '2019-04-24 11:25:10', '2020-04-24 11:25:10'),
('6dc6bbe264ecd753311fe1628ab7cb57d4263fc7b910330e4e39f6eac1c8e26ed96b18cc2c5a5bc1', 7, 1, 'MyApp', '[]', 0, '2019-04-22 01:45:31', '2019-04-22 01:45:31', '2020-04-22 01:45:31'),
('6e6c448cee9efb5e64f37ee4c68772825e78a84d6e31cc31eb08f301bb0398410fd7cd0687f136d8', 7, 1, 'MyApp', '[]', 0, '2019-05-08 15:35:49', '2019-05-08 15:35:49', '2020-05-08 15:35:49'),
('6e98114f9831d8a552708a3a4f6e29f8da5f136f0f241f478ead82139e6af0e82a461f190ac48b4a', 6, 1, 'MyApp', '[]', 0, '2019-05-22 17:00:28', '2019-05-22 17:00:28', '2020-05-22 17:00:28'),
('6ebaf6032acdd9b6b2dcc98a22b4be9b6309b2c9d0b8382d617246b2a94cef593dba1863b63a3912', 78, 1, 'MyApp', '[]', 0, '2019-05-20 15:58:13', '2019-05-20 15:58:13', '2020-05-20 15:58:13'),
('6ec461e67bdc833a390b332fcd819801cede489a29229d00135cc030cce3e9199f2790c86658a469', 7, 1, 'MyApp', '[]', 0, '2019-05-07 09:36:08', '2019-05-07 09:36:08', '2020-05-07 09:36:08'),
('6ecd72df64ff47e868cb4466c6688660adc430e12ac6570797b6a9aa3063fda078e9f0392fcf92fb', 6, 1, 'MyApp', '[]', 0, '2019-04-23 10:03:19', '2019-04-23 10:03:19', '2020-04-23 10:03:19'),
('709b8101166c0b77e041cde43e536b425ee4641e6ee9a0d3a08fe343e219e23051a08ea40de653ae', 36, 1, 'MyApp', '[]', 0, '2019-05-03 18:01:23', '2019-05-03 18:01:23', '2020-05-03 18:01:23'),
('70cecc5168d06f3d3fa609892732b0d58a0005fc8d87624f0330c1cc5efea2d3023743d3f78155d7', 12, 1, 'MyApp', '[]', 0, '2019-05-11 19:18:17', '2019-05-11 19:18:17', '2020-05-11 19:18:17'),
('70d27c59aa123bee06b75c16e26e1d24098f2556ed42619c849be990a19a28ed9149cea4c431d2eb', 60, 1, 'MyApp', '[]', 0, '2019-05-08 15:35:17', '2019-05-08 15:35:17', '2020-05-08 15:35:17'),
('71118ceb8792321bef8c19aab4f00b3214ce1743e7ee0ebf314e71134b43278d3505ec3874e4a6a9', 80, 1, 'MyApp', '[]', 0, '2019-05-20 17:31:11', '2019-05-20 17:31:11', '2020-05-20 17:31:11'),
('715791ac258d04e01f1eb5f65f932c49c0a1e5667fa147c67270e01a6466934c979c2f261baff0b5', 12, 1, 'MyApp', '[]', 0, '2019-05-07 04:04:28', '2019-05-07 04:04:28', '2020-05-07 04:04:28'),
('72115df8c8d2c5c3883878b25a387fe24a703553ca89e2508a7c950f22bcc2f5cd1a543ce5489ffc', 16, 1, 'MyApp', '[]', 0, '2019-04-18 11:03:09', '2019-04-18 11:03:09', '2020-04-18 11:03:09'),
('73211cf34d508fe10852855d7795f5504ef9fce08c955ce10fd946e61bdca3a3b5a3f1a398e01c09', 78, 1, 'MyApp', '[]', 0, '2019-05-22 15:43:17', '2019-05-22 15:43:17', '2020-05-22 15:43:17'),
('737793247a8e815742493ff2a5f1782dab575a8bc0285cfdceaa56ae567af7964be407cc4e6829ca', 7, 1, 'MyApp', '[]', 0, '2019-04-25 14:45:22', '2019-04-25 14:45:22', '2020-04-25 14:45:22'),
('754dc1f6cc036cf421a883e220f7138bb005fe25c6cc78a582acbe068d9e42b7aab93054872dc46b', 6, 1, 'MyApp', '[]', 0, '2019-04-18 07:40:25', '2019-04-18 07:40:25', '2020-04-18 07:40:25'),
('77577536e250017d180781375d3843277d62b7f1a8c2b5f43cbc6575c1b796c87305b966d722db81', 88, 1, 'MyApp', '[]', 0, '2019-05-23 10:54:33', '2019-05-23 10:54:33', '2020-05-23 10:54:33'),
('77c796383cae2bead4d2ffc82e96d9b1d1a20825761be1c00e74a016e8d0b443613db3fb76ee57db', 12, 1, 'MyApp', '[]', 0, '2019-04-25 20:24:15', '2019-04-25 20:24:15', '2020-04-25 20:24:15'),
('78942e04bb70417bfa8ea7bb733709658b1452f479e4aeadd310369e5c7a894f66c98827e8e6c3c7', 7, 1, 'MyApp', '[]', 0, '2019-05-08 03:09:40', '2019-05-08 03:09:40', '2020-05-08 03:09:40'),
('78b6309e651cfa9bf7bcdffb975b4a686450fa7a64d268da97bb675719e40240fcb112fba5010711', 6, 1, 'MyApp', '[]', 0, '2019-04-24 11:13:07', '2019-04-24 11:13:07', '2020-04-24 11:13:07'),
('78c0515e2178643b17c52016ed46709c9b6517968b8a9955f2919b372024623355be523e7b3d2cca', 16, 1, 'MyApp', '[]', 0, '2019-05-11 19:06:52', '2019-05-11 19:06:52', '2020-05-11 19:06:52'),
('78c8653edadf926094702cf12bfbbae64af0633756548465c626a0bee5969fd2f4a3597f7998a440', 12, 1, 'MyApp', '[]', 0, '2019-05-10 17:04:47', '2019-05-10 17:04:47', '2020-05-10 17:04:47'),
('79584ed2f9a60611c92bbf76ff5d00830735c7d6466f102994c6cb191e75b475c3adabd977b99ad1', 63, 1, 'MyApp', '[]', 0, '2019-05-10 17:00:49', '2019-05-10 17:00:49', '2020-05-10 17:00:49'),
('795970f3424bc975166dde0d5d296c0d23b49ab67113a842d18de62bc7d8bdbda62287078a75058a', 12, 1, 'MyApp', '[]', 0, '2019-05-11 18:39:42', '2019-05-11 18:39:42', '2020-05-11 18:39:42'),
('795db8d37313caa75373a1a766912279ebc79fc38089c025e9f72579920aaddb9998b6a59230a69b', 7, 1, 'MyApp', '[]', 0, '2019-04-25 18:28:47', '2019-04-25 18:28:47', '2020-04-25 18:28:47'),
('7a0c126c2714a5c0d5e7df24e56f51ade0692a58c7601e4a0ffb684ab6e1a2c8c420d554c40fc252', 7, 1, 'MyApp', '[]', 0, '2019-05-06 18:29:05', '2019-05-06 18:29:05', '2020-05-06 18:29:05'),
('7a11c885d209dd00d6762401370be008653a890b2c37fefd97e37688d0fea68e7200cedfeae95d35', 12, 1, 'MyApp', '[]', 0, '2019-05-16 11:52:40', '2019-05-16 11:52:40', '2020-05-16 11:52:40'),
('7a335abefaf15aeb59c785559e1caa753ae54c040aa1379ef46fe79d1cc089a00557ce53bdeb39aa', 72, 1, 'MyApp', '[]', 0, '2019-05-17 15:19:17', '2019-05-17 15:19:17', '2020-05-17 15:19:17'),
('7a74b96ebee565d0cff4c6cf020779e520ec797ad9f3cf645d350dee55bd7cfcc8ed2680bb00a0b0', 6, 1, 'MyApp', '[]', 0, '2019-05-16 15:30:34', '2019-05-16 15:30:34', '2020-05-16 15:30:34'),
('7a8a087f6ba3259af7ac06d4e9aae7ddff81b2b1ffd4e38e4913c21116e7b7f3aace5e8782378612', 6, 1, 'MyApp', '[]', 0, '2019-05-08 14:23:27', '2019-05-08 14:23:27', '2020-05-08 14:23:27'),
('7bdaea7260bba46793f7fa6e308cafa31d7fc3e57d9e98ea3e4fc68ad01a174dc9166edf6d04bb0f', 67, 1, 'MyApp', '[]', 0, '2019-05-13 13:07:16', '2019-05-13 13:07:16', '2020-05-13 13:07:16'),
('7c0aa86efda3a03d2dc2e269a078895d9cde877ad515fba2186f42947f2d5019ea7a09871f41cb17', 6, 1, 'MyApp', '[]', 0, '2019-04-17 09:19:52', '2019-04-17 09:19:52', '2020-04-17 09:19:52'),
('7c18f86e07a7801af7339849c96a1a8e576d589221ba8a74c9a85ffcc933fb6bafdd9921ba57f1b0', 16, 1, 'MyApp', '[]', 0, '2019-04-27 18:07:20', '2019-04-27 18:07:20', '2020-04-27 18:07:20'),
('7c3995f3aad7da1e2624cb6ef03dc34a31540c394bfbaffc65b8429dcf2682b04f1dcf251c7a82e0', 67, 1, 'MyApp', '[]', 0, '2019-05-16 12:28:08', '2019-05-16 12:28:08', '2020-05-16 12:28:08'),
('7c3a47674bdd40ff067d1c9a8281a6781d2c687843c224edbd15e24233dad5f5a7d4b7aeb7797ff6', 21, 1, 'MyApp', '[]', 0, '2019-04-24 18:53:24', '2019-04-24 18:53:24', '2020-04-24 18:53:24'),
('7c6dc2b7d31bacc7b6b9a3f6dc688bed4d0e7d0402fb439838b45ff11e55900e38b7ef684d930270', 80, 1, 'MyApp', '[]', 0, '2019-05-22 13:42:12', '2019-05-22 13:42:12', '2020-05-22 13:42:12'),
('7d26448e4b20c29911c46321b3458b3f7e0028a0ba0052bb0553253b14dee937e475190c364a2ef1', 7, 1, 'MyApp', '[]', 0, '2019-04-18 07:04:53', '2019-04-18 07:04:53', '2020-04-18 07:04:53'),
('7d979fe20322261c962bf07e7ecb4f8c94ca76bb720e94d8a26e1dd428dfbfada8eab1392dbf3446', 12, 1, 'MyApp', '[]', 0, '2019-04-23 18:50:01', '2019-04-23 18:50:01', '2020-04-23 18:50:01'),
('7de38a68146a6036d5a4a778f5bec3617bc5dd49882794b1a808daa121d3cf539b98de1189408ca5', 12, 1, 'MyApp', '[]', 0, '2019-05-12 23:59:34', '2019-05-12 23:59:34', '2020-05-12 23:59:34'),
('7e4af4a24ed009014b5e689b5199e0789f24dd3d72cbb8f4dfb4f2cc221d7b5b16fce97914c36f67', 7, 1, 'MyApp', '[]', 0, '2019-04-27 15:13:08', '2019-04-27 15:13:08', '2020-04-27 15:13:08'),
('7e6b855219870fe45539f2ba75dfce8d963831fa53b24d79a9ff71571f10396a908b2961492aa970', 75, 1, 'MyApp', '[]', 0, '2019-05-18 18:49:41', '2019-05-18 18:49:41', '2020-05-18 18:49:41'),
('7eac5aa078392647e3f74f72fb18d63ed6f07db7c9d4e0203ef54b6a49f9ec76283884bd21e35091', 6, 1, 'MyApp', '[]', 0, '2019-04-24 11:44:30', '2019-04-24 11:44:30', '2020-04-24 11:44:30'),
('7ffa81ed275e4671b6be8423ef5fed05fd5225e6d5986737d797a0b7a38cc8f04dfcea1e2a1b2767', 67, 1, 'MyApp', '[]', 0, '2019-05-16 11:58:44', '2019-05-16 11:58:44', '2020-05-16 11:58:44'),
('80eadb08344d936d7b23fa4132c96ec7d538a3df39ebd60f307c2e19c70cb565097386af3e21a405', 1, 1, 'MyApp', '[]', 0, '2019-05-22 09:23:03', '2019-05-22 09:23:03', '2020-05-22 09:23:03'),
('80f890c0d506040bdabde6b85be9e2f0c50d8257a593d923e5309c536b50c798d4b6030a834f39f3', 6, 1, 'MyApp', '[]', 0, '2019-05-20 12:40:47', '2019-05-20 12:40:47', '2020-05-20 12:40:47'),
('82a107a47f62e95bd24bed0fb86f81eaca5ae9e5c74337470f00a9c6e515e02fc33c38b3dfc11fc0', 16, 1, 'MyApp', '[]', 0, '2019-04-18 11:24:47', '2019-04-18 11:24:47', '2020-04-18 11:24:47'),
('8378b4682b3d9b050e9543e16886ca0e230388048ef00350bb03d3f8ec77feb6919c8fc8621a8f34', 6, 1, 'MyApp', '[]', 0, '2019-04-23 15:56:17', '2019-04-23 15:56:17', '2020-04-23 15:56:17'),
('8452e0459a0a97a10593b24d575dfb3fa3b69794b6dd5680c72710facebc2993d5698f4256136846', 15, 1, 'MyApp', '[]', 0, '2019-04-18 10:08:16', '2019-04-18 10:08:16', '2020-04-18 10:08:16'),
('847f9c86bcf725464ab25a8b0cc4da7b866540e0d2e209dd8d24094a4e2355fd6ef740ecdf34083f', 7, 1, 'MyApp', '[]', 0, '2019-04-24 18:02:34', '2019-04-24 18:02:34', '2020-04-24 18:02:34'),
('84f12398b0938a1b4bd086323a0565a88b59708bb98605d0512ee83acea268529daede88a54039e4', 12, 1, 'MyApp', '[]', 0, '2019-04-30 18:44:52', '2019-04-30 18:44:52', '2020-04-30 18:44:52'),
('84f31ece464200fef73df8b2a82bea6a553e005228e5c569f0b3bc1218c4561e9f27b92e745eb96a', 16, 1, 'MyApp', '[]', 0, '2019-05-11 19:21:07', '2019-05-11 19:21:07', '2020-05-11 19:21:07'),
('851bae022d2159d7539d82fc91a0955ef9745601c81ec5dfdfdd276cb20e3f06b47bcd00d0ab5c4b', 7, 1, 'MyApp', '[]', 0, '2019-05-08 02:21:03', '2019-05-08 02:21:03', '2020-05-08 02:21:03'),
('85377792e137a8ce8c8b1812ef722c3a8ff3d6a940b1079bb777de4f41ce4bde52434826d743d579', 74, 1, 'MyApp', '[]', 0, '2019-05-18 18:18:53', '2019-05-18 18:18:53', '2020-05-18 18:18:53'),
('853f34b841245dd1ba08c7b9263cc2d5ea849fbbd5f6b3ee4ba794394f1b996c3b135b95438470f0', 7, 1, 'MyApp', '[]', 0, '2019-05-07 06:09:49', '2019-05-07 06:09:49', '2020-05-07 06:09:49'),
('85b1829a18d798c98ae0bc90f41c00ca4399ab42fcdccdf62254c5addf29f79a20ab7244c69afd2a', 67, 1, 'MyApp', '[]', 0, '2019-05-20 10:47:07', '2019-05-20 10:47:07', '2020-05-20 10:47:07'),
('85f3003fbc28bd150c5a962ab0bf99c7921279d49dc45241b9a1cb923516c5f0b8999908059151d7', 67, 1, 'MyApp', '[]', 0, '2019-05-22 11:42:14', '2019-05-22 11:42:14', '2020-05-22 11:42:14'),
('873e9c4ba4d13b1e17b79360efa20f8b1a04587833a791a65d6904ce5d8979c8f33907c638ae83be', 59, 1, 'MyApp', '[]', 0, '2019-05-08 14:44:57', '2019-05-08 14:44:57', '2020-05-08 14:44:57'),
('87ef056debff47ac350b359e8b026980ea70ba282b9826cedb36af73092f6c6f4abf0ea770d3e02f', 7, 1, 'MyApp', '[]', 0, '2019-05-08 02:09:08', '2019-05-08 02:09:08', '2020-05-08 02:09:08'),
('8814066760da802bfc6348b0a62f11a2f28bffb82925d721584856b44d9b02081d06a7a3f6f3629c', 7, 1, 'MyApp', '[]', 0, '2019-04-23 14:42:34', '2019-04-23 14:42:34', '2020-04-23 14:42:34'),
('886ff5f069899bd1519128f3d69bce4d6e6a86c48ff2eb3a7b405e9071dcb1196d892b0361f9925a', 1, 1, 'MyApp', '[]', 0, '2019-05-23 10:33:37', '2019-05-23 10:33:37', '2020-05-23 16:03:37'),
('88cc69447a382c07a8809e17d06f5a07aa191f851f7c01e7026b88f5d6b138bde6b3e04e72318348', 67, 1, 'MyApp', '[]', 0, '2019-05-14 12:33:30', '2019-05-14 12:33:30', '2020-05-14 12:33:30'),
('89d23ad41d3cf2ce53f90f648fe4168545f83cba25c2a71e58aac2adb0cf34d7723f3088e3bcf728', 60, 1, 'MyApp', '[]', 0, '2019-05-08 15:17:41', '2019-05-08 15:17:41', '2020-05-08 15:17:41'),
('8a3409a6fdb8888aa92385898a5f469c0979e59cf5195d3c3e2e548feb4bc0e9e2d32d57cbe5ad06', 6, 1, 'MyApp', '[]', 0, '2019-05-20 12:43:54', '2019-05-20 12:43:54', '2020-05-20 12:43:54'),
('8a7721314c2bb612d6a611a0e8f97e989a633b62cc9face92fca5d5ff8e1ccb3de142d1fb56d1f31', 7, 1, 'MyApp', '[]', 0, '2019-05-07 06:13:03', '2019-05-07 06:13:03', '2020-05-07 06:13:03'),
('8af83dd7dedab5ce4ef825a27dd8765c903d5d5715738ecab2cbce551dafd2d732bf31915553273e', 6, 1, 'MyApp', '[]', 0, '2019-04-22 01:43:07', '2019-04-22 01:43:07', '2020-04-22 01:43:07');
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('8b7408ac2712e8ec1de405bb60feb444dff9f0d1d782e7fffa3b1444bd407b3ff287f342eb0bb33b', 7, 1, 'MyApp', '[]', 0, '2019-05-10 14:15:22', '2019-05-10 14:15:22', '2020-05-10 14:15:22'),
('8c54f876357b355c2fd0aa1ccda647d3326d6c4c801eeffa5ea65caeec7b0ae51f5447f657df80e9', 7, 1, 'MyApp', '[]', 0, '2019-04-19 06:08:34', '2019-04-19 06:08:34', '2020-04-19 06:08:34'),
('8c81201174d4d737601aafb57c46f7c6b99ff897ac869d21d784a1f0e5c2ae59973a6475abac3b9d', 72, 1, 'MyApp', '[]', 0, '2019-05-23 10:34:25', '2019-05-23 10:34:25', '2020-05-23 10:34:25'),
('8cca29048b00884ed7067a38a46915019ad2fefeb5fbe8f1cea299f8a86614721e546062f2aefaed', 16, 1, 'MyApp', '[]', 0, '2019-05-11 18:51:02', '2019-05-11 18:51:02', '2020-05-11 18:51:02'),
('8d13a98f0357f9af5d27a25c5b69d2344ee5e85593b0c96cdf28a215c0b871f58ee4264d20cc1456', 7, 1, 'MyApp', '[]', 0, '2019-05-07 01:42:36', '2019-05-07 01:42:36', '2020-05-07 01:42:36'),
('8d1e05000703fd371829e597d1477d314ca79a52a5229196743d36df8aaab5b1f5093ff9febe4714', 6, 1, 'MyApp', '[]', 0, '2019-04-17 09:09:29', '2019-04-17 09:09:29', '2020-04-17 09:09:29'),
('8dc1a7d46c90398e4c00b1100fdf0e6909007097631148d98ebfead33d3956438d1fb0276e9a0452', 12, 1, 'MyApp', '[]', 0, '2019-05-16 10:55:00', '2019-05-16 10:55:00', '2020-05-16 10:55:00'),
('8e38aa6cb74b4a4ab531ed7bf19f19db365d5cc52911a078be91d5753b3bbafa85c4e7bffe565efd', 85, 1, 'MyApp', '[]', 0, '2019-05-22 21:55:08', '2019-05-22 21:55:08', '2020-05-22 21:55:08'),
('8edde43097808cd3d11a92a88c33e18ff653cf70a68046299ce6fc9ab14d5f74d21976bdae8a2dd1', 6, 1, 'MyApp', '[]', 0, '2019-05-16 12:11:34', '2019-05-16 12:11:34', '2020-05-16 12:11:34'),
('8fe4395b6c182570b0c9e9f3fb43afe003bcdb84c5bb1417313b1c9c599b569971ab370ebb4eb6a8', 15, 1, 'MyApp', '[]', 0, '2019-04-18 09:56:56', '2019-04-18 09:56:56', '2020-04-18 09:56:56'),
('900b9177328bb2e2066423da511146dbfb812de9c24f1c2b4824a57d3d954e874c6f98cd8e3f50d5', 12, 1, 'MyApp', '[]', 0, '2019-05-15 21:45:39', '2019-05-15 21:45:39', '2020-05-15 21:45:39'),
('9043768520e3583c897d5d263408c4ca58f7ba62219f6801634c497e855b70d5bfe794cc217b6157', 67, 1, 'MyApp', '[]', 0, '2019-05-15 18:47:31', '2019-05-15 18:47:31', '2020-05-15 18:47:31'),
('907c2fb14c7fe6889350970fb696a992ce4ddd11681bfe3cde74c1990e6d3ac1bb423fc2140005cf', 6, 1, 'MyApp', '[]', 0, '2019-04-24 18:05:00', '2019-04-24 18:05:00', '2020-04-24 18:05:00'),
('90855870b5a6599bc0570da2eb4db23a2d5bc61a0b43b04ac4b1cb31007817218817f1be1badbbba', 60, 1, 'MyApp', '[]', 0, '2019-05-08 15:32:24', '2019-05-08 15:32:24', '2020-05-08 15:32:24'),
('91c0c1808e5627ceadc0fcb21d4d04dbcaedff6fec2408aa5e9bb1c3ef5d8e0591310e474ff049d8', 36, 1, 'MyApp', '[]', 0, '2019-05-03 18:00:24', '2019-05-03 18:00:24', '2020-05-03 18:00:24'),
('92dd2f9cd2230922836930b77929dbfd7dfe44f2bc124eecc83bdc11a7dcfcbd6e9c24e5f82839c3', 67, 1, 'MyApp', '[]', 0, '2019-05-15 17:26:35', '2019-05-15 17:26:35', '2020-05-15 17:26:35'),
('9306b8e354f2466a0ccec0ea3a04bc795a72ef458e7480cbdd5f7796069b6df5b68904979b3ff514', 7, 1, 'MyApp', '[]', 0, '2019-04-23 14:17:14', '2019-04-23 14:17:14', '2020-04-23 14:17:14'),
('93a73ff643ed6149a85b702881c1b260bd93cffd96308e856fd278b71aa45098cb60dc52d619cd82', 16, 1, 'MyApp', '[]', 0, '2019-04-18 13:13:59', '2019-04-18 13:13:59', '2020-04-18 13:13:59'),
('93b2bc0f3d5f82ecfd061902de0214ab8721725b761ead0c527a9442023f1d5b5a157c0b85d33e08', 67, 1, 'MyApp', '[]', 0, '2019-05-16 13:04:44', '2019-05-16 13:04:44', '2020-05-16 13:04:44'),
('942625fb5cd07ae1725e54ae6a7988bae93e4f90b49b6609f176dd293e0d64ad42f679276681a4cc', 6, 1, 'MyApp', '[]', 0, '2019-05-13 14:26:59', '2019-05-13 14:26:59', '2020-05-13 14:26:59'),
('94da124f94bd67ddbd7a6ef54485bf71fff16d8b994b4c67ecf620750896304d9f3e472318faa313', 6, 1, 'MyApp', '[]', 0, '2019-05-20 18:05:59', '2019-05-20 18:05:59', '2020-05-20 18:05:59'),
('94e4a94d56f2d39acc48183c028414a788f14f3b572f70b4d2afede3008d4944d1ebf4612d1e340e', 66, 1, 'MyApp', '[]', 0, '2019-05-11 10:46:42', '2019-05-11 10:46:42', '2020-05-11 10:46:42'),
('953e96500d5e3a5fa7e51e3309d0d4306040f4d0cbedea67cff2ec9aa27db024b59a0f62eac707cb', 7, 1, 'MyApp', '[]', 0, '2019-05-09 12:05:06', '2019-05-09 12:05:06', '2020-05-09 12:05:06'),
('95919817ae8615487a99c9ce7bb7d636d57100de144f4aaadde2e75fd6405dfec26bfbf6c467a891', 16, 1, 'MyApp', '[]', 0, '2019-04-18 11:03:34', '2019-04-18 11:03:34', '2020-04-18 11:03:34'),
('959222632cfa6dc6682a559272260602f8f09b5ab382590bd9fb01446df6f1df3d91df3ff874a2b4', 12, 1, 'MyApp', '[]', 0, '2019-04-25 17:02:15', '2019-04-25 17:02:15', '2020-04-25 17:02:15'),
('95baba6823c1e9cb76b5b46516ed9e0abf90b02c45b728475306657666c320a7790b9129eb9ecbe8', 14, 1, 'MyApp', '[]', 0, '2019-04-18 09:52:47', '2019-04-18 09:52:47', '2020-04-18 09:52:47'),
('95cdea9ea0f58b23731e718036f9d52548deffd57f7b1f6bce8529a1fa7593445fc5cdbff7dc4f10', 7, 1, 'MyApp', '[]', 0, '2019-05-09 12:30:46', '2019-05-09 12:30:46', '2020-05-09 12:30:46'),
('96491487a3703e76b1943dbb86645212d7764b2d0c90132cc10a0d91a76f34047638f77f36a2bdb1', 6, 1, 'MyApp', '[]', 0, '2019-05-13 15:01:24', '2019-05-13 15:01:24', '2020-05-13 15:01:24'),
('97c0ebefc7fc7169ecd31df1a24da10fbf7fe64d203301eda0d51a392f5a1d6fdeea82b9ce6c01db', 4, 1, 'MyApp', '[]', 0, '2019-04-18 02:36:01', '2019-04-18 02:36:01', '2020-04-18 02:36:01'),
('97d2c0fe4acee63e619ee835420a14163e02bd990101bf7bfbb3be6a32a07b54880f8621dd809207', 12, 1, 'MyApp', '[]', 0, '2019-04-18 09:49:12', '2019-04-18 09:49:12', '2020-04-18 09:49:12'),
('980f0a8419c990fdb2f038fe6e6eeefa29ecab057901f17013ef135666e7b0af60c345f464fff307', 16, 1, 'MyApp', '[]', 0, '2019-04-18 13:16:14', '2019-04-18 13:16:14', '2020-04-18 13:16:14'),
('9953384c2fa013060443aa174d3dd3af51dfb61a17332ce61615bd69722430a311ded14020c44cb1', 16, 1, 'MyApp', '[]', 0, '2019-04-23 18:50:36', '2019-04-23 18:50:36', '2020-04-23 18:50:36'),
('99df9571ab4d4168ee4ba25ac66f5f9af84cd722af0f32801b4434f8be22f2100eaa653f9dc22f8f', 70, 1, 'MyApp', '[]', 0, '2019-05-14 16:30:19', '2019-05-14 16:30:19', '2020-05-14 16:30:19'),
('99e104dbebcf4f3015a7637ce358c5822575e8be8437e5f1491f7bbfe075e9fc1973a3a17fb6e359', 12, 1, 'MyApp', '[]', 0, '2019-05-16 15:32:30', '2019-05-16 15:32:30', '2020-05-16 15:32:30'),
('9a067f693f54111c7b46888b368325fe50584b79aa08ff434437c6313cb155a06afe3ffb3ca2b981', 20, 1, 'MyApp', '[]', 0, '2019-04-24 18:44:21', '2019-04-24 18:44:21', '2020-04-24 18:44:21'),
('9a26f23cf843d2c9a952d4591018ad267d3ee76d40484b2ac19a00422a7c530a68471ec227190143', 7, 1, 'MyApp', '[]', 0, '2019-05-07 06:00:50', '2019-05-07 06:00:50', '2020-05-07 06:00:50'),
('9a796b7b196b0e6bca34060dc6a13548cc556369c3f3b466c0976727e2150b64f17c5dc771c5f708', 12, 1, 'MyApp', '[]', 0, '2019-04-18 10:56:01', '2019-04-18 10:56:01', '2020-04-18 10:56:01'),
('9ae9b930f48f97008cfb58f4e7facdc225646ed0669ce3746c6a41f22209b24ff93fb80c0eec4f32', 1, 1, 'MyApp', '[]', 0, '2019-05-02 13:57:17', '2019-05-02 13:57:17', '2020-05-02 13:57:17'),
('9b48659239e5f90def0529cc1193357aa31074f28a6a112116d72a1aa37ab19f5594ecaf447b8169', 76, 1, 'MyApp', '[]', 0, '2019-05-22 22:16:49', '2019-05-22 22:16:49', '2020-05-22 22:16:49'),
('9b938e985264e6b1a0f382ac91b1264da2c2fc73426f9d13b68286894296476a7b99fbd59a171e4b', 6, 1, 'MyApp', '[]', 0, '2019-04-29 14:30:56', '2019-04-29 14:30:56', '2020-04-29 14:30:56'),
('9b9907e54f086992f3f59737edf7d7bb904b4c33b741380fe3bf0b9c77de02d00b3a8d6cfb99d48f', 6, 1, 'MyApp', '[]', 0, '2019-05-07 09:35:11', '2019-05-07 09:35:11', '2020-05-07 09:35:11'),
('9c3594f6f2ac2f2b51ba140792f93ddb69572d8dbd76da175b6c8184043dd42217be9093041bc5e7', 7, 1, 'MyApp', '[]', 0, '2019-04-24 11:05:35', '2019-04-24 11:05:35', '2020-04-24 11:05:35'),
('9c3b1d37bd07df93ed5af27156a8350cca5ab36795958e3a49da0474f73054a5444d267217993dcb', 6, 1, 'MyApp', '[]', 0, '2019-05-23 11:25:34', '2019-05-23 11:25:34', '2020-05-23 11:25:34'),
('9c515bdf4c67708c2909e5c1fc56976cfcceeada6196030ebef2ea52f51ed92a3df20521eea5c176', 75, 1, 'MyApp', '[]', 0, '2019-05-22 22:00:08', '2019-05-22 22:00:08', '2020-05-22 22:00:08'),
('9ca1ce6d9a10ef817dbba0c9fa64dc4b032d6a49e0872c4f4f2144dc2135fc70ceeb3c131fdc8059', 67, 1, 'MyApp', '[]', 0, '2019-05-16 15:16:05', '2019-05-16 15:16:05', '2020-05-16 15:16:05'),
('9d29692838d8408cd1a4147aa63f6e503d8d1234bd9e39d7e1ded019a8db8bff5b71ecad18cd32db', 82, 1, 'MyApp', '[]', 0, '2019-05-21 18:49:41', '2019-05-21 18:49:41', '2020-05-21 18:49:41'),
('9d5aeb386f3ea17601a13b810ba069798d30f38716ec638be9d3b6659460a5407908699a90cd198c', 6, 1, 'MyApp', '[]', 0, '2019-05-07 01:44:52', '2019-05-07 01:44:52', '2020-05-07 01:44:52'),
('9d694dd4847a9df7c9462248604014a4d4ed52f47a99be98eb5b1de99cfc986f74c555e1723a175a', 6, 1, 'MyApp', '[]', 0, '2019-04-17 09:19:34', '2019-04-17 09:19:34', '2020-04-17 09:19:34'),
('9d877e199972fc67f356162697a56f7bafce4adc210611bf467f958334fb67aaa574b6cae0a4c1ff', 74, 1, 'MyApp', '[]', 0, '2019-05-18 18:37:29', '2019-05-18 18:37:29', '2020-05-18 18:37:29'),
('9dc78e3e7bbbe611eff1de349aea549fba33163a3d39020a77b30c668310fe2f91048fc89986229f', 67, 1, 'MyApp', '[]', 0, '2019-05-21 10:50:22', '2019-05-21 10:50:22', '2020-05-21 10:50:22'),
('9dee0dd7d5b774db5da43946e0943a3dc4fb6bd1661dac2fa6c5f6e6bc7b1c26e0ecc7e5ad926d9b', 76, 1, 'MyApp', '[]', 0, '2019-05-23 05:10:36', '2019-05-23 05:10:36', '2020-05-23 05:10:36'),
('9effc10d464381df1cbaa10136228de8cbd8d33421b2e40d40a627b8564ea682bc688bb212ffcacb', 6, 1, 'MyApp', '[]', 0, '2019-05-10 16:59:42', '2019-05-10 16:59:42', '2020-05-10 16:59:42'),
('9f866f88b2597fa8fd79949b5e16cf5062d0f63b7658b5f32c20d3191ce26d3d893fbe874aa08a3a', 15, 1, 'MyApp', '[]', 0, '2019-04-18 09:56:26', '2019-04-18 09:56:26', '2020-04-18 09:56:26'),
('9f8d959634e801c0bff1a004eb6444223870eab0bb3acf3b5e5f7fc94cc1aabac289d8203c103982', 6, 1, 'MyApp', '[]', 0, '2019-05-06 18:27:24', '2019-05-06 18:27:24', '2020-05-06 18:27:24'),
('a03e50c6ccb96f27829409af414d78f34a9b7bf67465c770e6e1badcda35b59240915f42579ee56a', 78, 1, 'MyApp', '[]', 0, '2019-05-20 15:58:47', '2019-05-20 15:58:47', '2020-05-20 15:58:47'),
('a0aca0e201c55ec635283d703aad90a577ec8be3dd0d9b17db86bca4711c29653a27d7c4a21ca7a1', 6, 1, 'MyApp', '[]', 0, '2019-05-22 16:47:45', '2019-05-22 16:47:45', '2020-05-22 16:47:45'),
('a1b17148ff2f9b097365a6acc347a6585aa7dc7d936a0b46105b1059d42680c9fce338af897f0065', 16, 1, 'MyApp', '[]', 0, '2019-04-25 20:23:10', '2019-04-25 20:23:10', '2020-04-25 20:23:10'),
('a28399d835e2e8805cfd146ce49eb9d3329b3c11b15d6fb883524b705ec51c0b6708b7131fc1fa5e', 16, 1, 'MyApp', '[]', 0, '2019-04-26 22:00:37', '2019-04-26 22:00:37', '2020-04-26 22:00:37'),
('a2cc52604fb8fa66a823a048f115608c1848f9035d687e4fed72f67d76915cd65c50bd774e170f5f', 6, 1, 'MyApp', '[]', 0, '2019-05-08 18:01:16', '2019-05-08 18:01:16', '2020-05-08 18:01:16'),
('a30867b3ab5a6a715d17706816beaa8ddcfdf4fe12bede9366b1849e27d3470bc8a3c1a4cd0e75f9', 6, 1, 'MyApp', '[]', 0, '2019-04-19 02:28:06', '2019-04-19 02:28:06', '2020-04-19 02:28:06'),
('a34250c26b2325734a8c385af47d081a6f7fa2a99e2f048d56c48233cad181d86e464370c34f5cb7', 62, 1, 'MyApp', '[]', 0, '2019-05-10 16:51:26', '2019-05-10 16:51:26', '2020-05-10 16:51:26'),
('a3ca13ea045c36179716be5f9f9e8ff314e398a0c3dae32ba4b175803243e9b3053097f642dad08a', 6, 1, 'MyApp', '[]', 0, '2019-04-17 08:21:29', '2019-04-17 08:21:29', '2020-04-17 08:21:29'),
('a43837d062dee3be1262792703fc37248925ff5b3d0877d8e23c1b74479a7ffed83baa1370e4410e', 76, 1, 'MyApp', '[]', 0, '2019-05-21 01:29:51', '2019-05-21 01:29:51', '2020-05-21 01:29:51'),
('a4e44380b98fce0f3ef70845fe0bda0ff354f5bb876dc954f48fb02a50e892581a9219ca948fbcaf', 67, 1, 'MyApp', '[]', 0, '2019-05-16 11:12:27', '2019-05-16 11:12:27', '2020-05-16 11:12:27'),
('a559e36f2cad5f53e27f7baf973c4f30449fddbe978df9df2055648b588f287271cacdcaf79982fb', 12, 1, 'MyApp', '[]', 0, '2019-05-13 00:05:02', '2019-05-13 00:05:02', '2020-05-13 00:05:02'),
('a707e472584b16a3d409d76ec6068c197406ec8849178d603d1b40adbd0d017fb9f98c639e0503f8', 16, 1, 'MyApp', '[]', 0, '2019-04-22 06:28:04', '2019-04-22 06:28:04', '2020-04-22 06:28:04'),
('a7107432a1534567354214ccb57fd886f15810f5a76bfb46f34fcfd8721a6e45ac1ef2b7ad96f55a', 81, 1, 'MyApp', '[]', 0, '2019-05-20 17:24:07', '2019-05-20 17:24:07', '2020-05-20 17:24:07'),
('a784cdaa906599b53d84f42362351a62bf8a73bafcd4a41224d2d147ea04f186053ffcf6afd45c5e', 16, 1, 'MyApp', '[]', 0, '2019-04-27 19:03:07', '2019-04-27 19:03:07', '2020-04-27 19:03:07'),
('a822798f7754f8a07d355d4381e5fcdba10703b867024a121d6c508f9666eb416b7f3cf0400e95c5', 6, 1, 'MyApp', '[]', 0, '2019-05-07 00:37:38', '2019-05-07 00:37:38', '2020-05-07 00:37:38'),
('a86afb1769ea5c49c97b2c25b4efdef686270832da807c68a89c954617a5c6985c7346ecf8466db4', 21, 1, 'MyApp', '[]', 0, '2019-04-24 18:53:41', '2019-04-24 18:53:41', '2020-04-24 18:53:41'),
('a87a5dc2766d8ceb94760457f5e9300ac2d54fa3413c0e3f694f2b8d68fa147e675ca24e7099f52c', 86, 1, 'MyApp', '[]', 0, '2019-05-22 22:18:35', '2019-05-22 22:18:35', '2020-05-22 22:18:35'),
('a8cd99b924b92bfce4e037541d55ae391d49f666251aa4ddee7412d6c375709e03ce2160306499c4', 75, 1, 'MyApp', '[]', 0, '2019-05-21 01:32:00', '2019-05-21 01:32:00', '2020-05-21 01:32:00'),
('aa3ace7aa6d6b375a17ecd7d0ea843e27455e470d1bc6498d5473983f920cf36642db1840459f427', 67, 1, 'MyApp', '[]', 0, '2019-05-21 17:04:41', '2019-05-21 17:04:41', '2020-05-21 17:04:41'),
('aa70c48dc828f23a02cca8e58998b50dd7fc89ebec3b085238b1b8f2fa85a888335d70635e3184b3', 6, 1, 'MyApp', '[]', 0, '2019-04-17 08:57:40', '2019-04-17 08:57:40', '2020-04-17 08:57:40'),
('aae8cb7e0508c4b0162a2d7206f815d1b1649377d965b0df608ea49b32bfc1148e87c3c6c173ee1e', 12, 1, 'MyApp', '[]', 0, '2019-05-16 11:54:33', '2019-05-16 11:54:33', '2020-05-16 11:54:33'),
('ab143f5a3056b966e13d2f7ffdbd51f2a41528bc608669e39d28e830c97689da68b02fe824c2207a', 14, 1, 'MyApp', '[]', 0, '2019-04-18 10:02:40', '2019-04-18 10:02:40', '2020-04-18 10:02:40'),
('ac7359cd925d2b1405b3230f45a9b0fdd216d1990bf9117ea1273433e8359097c75846105e906b57', 67, 1, 'MyApp', '[]', 0, '2019-05-13 11:27:33', '2019-05-13 11:27:33', '2020-05-13 11:27:33'),
('ad74bde86a054bda977aa5fe82d6a353d7b14b1c5d8efb6de790fa903e6a66fccc15c3f9c6f1c643', 67, 1, 'MyApp', '[]', 0, '2019-05-13 12:07:42', '2019-05-13 12:07:42', '2020-05-13 12:07:42'),
('ada0d7aff96f1ea5a93e2fc15f0e00c85d78c54662ce3d08a0f03f45b52f32db832788c7a7c2d809', 73, 1, 'MyApp', '[]', 0, '2019-05-17 15:46:54', '2019-05-17 15:46:54', '2020-05-17 15:46:54'),
('aecab0b9bb42f0e3d286286b586f2505fa02039c66fa3a3912a671b422dc50afcb859cddae900144', 78, 1, 'MyApp', '[]', 0, '2019-05-20 15:06:12', '2019-05-20 15:06:12', '2020-05-20 15:06:12'),
('aee6245a2319c991d84acc934db42852d6ba9923e401c18ad196b7a8f191ef456826002f69d121c0', 6, 1, 'MyApp', '[]', 0, '2019-05-13 15:40:20', '2019-05-13 15:40:20', '2020-05-13 15:40:20'),
('b0413e1bdc4cd33e280032a4ad688ef2bb28f3c505bad796b44ae5d7f48e41f26e9df501d8ca50b1', 15, 1, 'MyApp', '[]', 0, '2019-04-18 10:07:12', '2019-04-18 10:07:12', '2020-04-18 10:07:12'),
('b0a1624e253ee8f58dbf058b696cc82a2d6a3e42ef7902f24e11f3bab22e6f8e5f6c86510b8f70ed', 22, 1, 'MyApp', '[]', 0, '2019-04-25 16:49:43', '2019-04-25 16:49:43', '2020-04-25 16:49:43'),
('b0c148b5c1a89ead019d131e807bddd48185f74125aa8cb5e9c9c53505d3a4bb72a1382ed68e152c', 16, 1, 'MyApp', '[]', 0, '2019-05-13 00:00:45', '2019-05-13 00:00:45', '2020-05-13 00:00:45'),
('b10061600511546acc3e610602e81cdddcfaf281d18c9c33c8c83328764f42814a3b35f0b258af64', 6, 1, 'MyApp', '[]', 0, '2019-05-03 16:27:52', '2019-05-03 16:27:52', '2020-05-03 16:27:52'),
('b1017f7ca0af9172db9c311ec030d326a3bcbcfc762deb4012075478081176d0164f415bd1976440', 16, 1, 'MyApp', '[]', 0, '2019-04-18 10:58:56', '2019-04-18 10:58:56', '2020-04-18 10:58:56'),
('b1185865f0dd880d371ca808c0dfc28d913888fa5d5c14d84e49b4a48ade582938f4e4139b13cdcf', 1, 1, 'MyApp', '[]', 0, '2019-04-25 10:48:59', '2019-04-25 10:48:59', '2020-04-25 10:48:59'),
('b20ac2184cac395a406ba0d7b0c57bc326c0befb6f13d76c5817f9824d1d9acb2afda37ba3490a48', 12, 1, 'MyApp', '[]', 0, '2019-05-16 11:50:06', '2019-05-16 11:50:06', '2020-05-16 11:50:06'),
('b282a320f84da962a5adc31f23ab3648035e75f707d8b12dc5c5add9288aee059014033addc95886', 76, 1, 'MyApp', '[]', 0, '2019-05-22 22:43:07', '2019-05-22 22:43:07', '2020-05-22 22:43:07'),
('b29931248d59c578a14db0ba172779de34e8e33dbd871f174355ce7f3c50b992deb1d2148c894168', 67, 1, 'MyApp', '[]', 0, '2019-05-13 11:12:29', '2019-05-13 11:12:29', '2020-05-13 11:12:29'),
('b2c55993d8a8cff7682036b6d18a21e90551cee18f98f6f453faf09af6a54b349e332c535dd1758c', 6, 1, 'MyApp', '[]', 0, '2019-05-23 10:09:31', '2019-05-23 10:09:31', '2020-05-23 10:09:31'),
('b2fcb4872092b7aae2a2ef313cee349cc4175b6833c5f81f586bcb76df4ad8644b32b6611e5cf49d', 78, 1, 'MyApp', '[]', 0, '2019-05-22 17:31:38', '2019-05-22 17:31:38', '2020-05-22 17:31:38'),
('b38b06d66933cccbfe1a6183a1fb524f340951f9fda14257260bddcdd83b4d38c20ba9de46da0672', 6, 1, 'MyApp', '[]', 0, '2019-05-20 11:42:48', '2019-05-20 11:42:48', '2020-05-20 11:42:48'),
('b3a23ed36a0b43e5497f03448fb9e5f2585390811e9f4d94d130a3668f13d6b098d81ce21a1f4790', 74, 1, 'MyApp', '[]', 0, '2019-05-17 20:02:21', '2019-05-17 20:02:21', '2020-05-17 20:02:21'),
('b433d578ecaf5844d2bddb421796b0467c21236b29331e8b72301c55ad7243457ed6dca89634819b', 6, 1, 'MyApp', '[]', 0, '2019-04-25 10:09:01', '2019-04-25 10:09:01', '2020-04-25 10:09:01'),
('b479d82701c05a435fe242a17b000166dd04db212de1eb1d246b863c9326ad4cd25b8ad709f6f032', 75, 1, 'MyApp', '[]', 0, '2019-05-18 18:35:08', '2019-05-18 18:35:08', '2020-05-18 18:35:08'),
('b48f89b36cd7eb33624df4ee1127cad8d5f10d4382fbf3c628c355bfb9aec4770525ae73849025cd', 15, 1, 'MyApp', '[]', 0, '2019-04-18 09:58:54', '2019-04-18 09:58:54', '2020-04-18 09:58:54'),
('b4c68440fd2a4029098b6b66f82895be775eafde4c757dfe113e7ef0b8409f5d54be1096e7c43127', 7, 1, 'MyApp', '[]', 0, '2019-04-22 03:25:06', '2019-04-22 03:25:06', '2020-04-22 03:25:06'),
('b4ee7c38c6f75eddbf887cb807b1f87450603c0438e301d90aadf9b593f8990b2e627576355d553a', 6, 1, 'MyApp', '[]', 0, '2019-04-17 08:57:30', '2019-04-17 08:57:30', '2020-04-17 08:57:30'),
('b554d7e8242f2671ef27c2ea61b25153d0ff5bafbc5501b1725d96a376b724a6cee8604bc7a121b5', 76, 1, 'MyApp', '[]', 0, '2019-05-23 05:03:05', '2019-05-23 05:03:05', '2020-05-23 05:03:05'),
('b59f6ee30d6f7b4f8855d610eb7801d5bf1fe91bc8444c81c4c442cfac760184bf812b9d74c7ae1a', 6, 1, 'MyApp', '[]', 0, '2019-05-07 06:13:31', '2019-05-07 06:13:31', '2020-05-07 06:13:31'),
('b5d8d4e1d841f1be9cc40c9103eb08df65806220b705b4e59562b824971a1496c70a08fe57a3d640', 82, 1, 'MyApp', '[]', 0, '2019-05-21 17:58:07', '2019-05-21 17:58:07', '2020-05-21 17:58:07'),
('b5dfdf3c45b586d648a2fc860c4b256e3d700843160b81c067fcb14a198d7d4a57b9d4097f6b44c7', 67, 1, 'MyApp', '[]', 0, '2019-05-20 18:42:54', '2019-05-20 18:42:54', '2020-05-20 18:42:54'),
('b6407d3d5975dfdc74712a4295e9c372f4165a6fbdc7b21c12f1bd1ed66db68afdacaf59627fa9f9', 6, 1, 'MyApp', '[]', 0, '2019-04-22 05:01:10', '2019-04-22 05:01:10', '2020-04-22 05:01:10'),
('b68066c94f918c041476af2432a5c935a030c23867c2dde0a2673cf98c3761a4c7226cd92218201e', 6, 1, 'MyApp', '[]', 0, '2019-05-16 16:58:32', '2019-05-16 16:58:32', '2020-05-16 16:58:32'),
('b77af9416cc082dda494367aa38017e99da4545c2481ffc4d4363d1cfaaaa4f638e7db3acde6b1f9', 67, 1, 'MyApp', '[]', 0, '2019-05-21 14:23:21', '2019-05-21 14:23:21', '2020-05-21 14:23:21'),
('b840c3a55affc7c90f279f54626da7552e3b397b17597f167692d0ca2722b8aad00e34d8b98b1764', 7, 1, 'MyApp', '[]', 0, '2019-04-25 18:33:20', '2019-04-25 18:33:20', '2020-04-25 18:33:20'),
('b8772635b23d21169cfb1c77669bf2a6a47b00a6e261d7feea04a455ddb23593beffb5554bfb4ac5', 16, 1, 'MyApp', '[]', 0, '2019-05-10 17:12:55', '2019-05-10 17:12:55', '2020-05-10 17:12:55'),
('b87a525da56c656b0b4240fa8bd2bd3e959e1ec720f6a9bc71a9f3cd47b643ac522be373d945f3bb', 6, 1, 'MyApp', '[]', 0, '2019-05-20 16:53:38', '2019-05-20 16:53:38', '2020-05-20 16:53:38'),
('b8dc27c2cd2f074803bbe471bff46736af5dd4fa6476a203015e8e0259954edab974625edc37cba7', 7, 1, 'MyApp', '[]', 0, '2019-04-22 06:57:27', '2019-04-22 06:57:27', '2020-04-22 06:57:27'),
('b8ea6a15271cd885c24cca6b7e6e7f2f9e5c4886a589e66831cab438e08d25c80e243fe375ad5ed9', 16, 1, 'MyApp', '[]', 0, '2019-05-04 18:54:56', '2019-05-04 18:54:56', '2020-05-04 18:54:56'),
('b97de47eb207b19b176408840e1498e506618be9206c120f55f32bad72931b508397de793cc21667', 16, 1, 'MyApp', '[]', 0, '2019-05-11 19:29:19', '2019-05-11 19:29:19', '2020-05-11 19:29:19'),
('ba24d3f4d9a7a1299d28353cb365a57a8637d5e03e9625e95974caa18120e39cbb1062992b7bc15a', 6, 1, 'MyApp', '[]', 0, '2019-04-23 15:30:59', '2019-04-23 15:30:59', '2020-04-23 15:30:59'),
('ba64e4d9237d5050045d4f336b9df86b0c030188dbaad3840fa1876d9e787f1cd75f7a8a9541c104', 12, 1, 'MyApp', '[]', 0, '2019-05-11 19:28:45', '2019-05-11 19:28:45', '2020-05-11 19:28:45'),
('babda35c4cedf5d9a2d95f58130effeb1867109900568633b33cede7400d01ce5b0cf97c282294ef', 78, 1, 'MyApp', '[]', 0, '2019-05-20 16:12:53', '2019-05-20 16:12:53', '2020-05-20 16:12:53'),
('bb0fff0ab6114e585cda7782afc3ba5609103104ed5a5094a9eee43c06520b26c71ce6577eb30eb6', 12, 1, 'MyApp', '[]', 0, '2019-04-23 20:05:26', '2019-04-23 20:05:26', '2020-04-23 20:05:26'),
('bb246db5a2668250b49d82a600a80973f891867831bc4b4b5f1973543b9d5d956ff9851c18d6e8bc', 7, 1, 'MyApp', '[]', 0, '2019-05-11 12:57:03', '2019-05-11 12:57:03', '2020-05-11 12:57:03'),
('bb6c1bc95186afb18923d408901eccbd3dce7c726f4a773dadf828f9896a0c9db6c2e0df3b9c7885', 6, 1, 'MyApp', '[]', 0, '2019-05-11 10:32:34', '2019-05-11 10:32:34', '2020-05-11 10:32:34'),
('bb74cec358176d1ea29ebf31fc17cc18e88ea2ae53e810f99ff0340e687d9272f1c211cf0ce47881', 80, 1, 'MyApp', '[]', 0, '2019-05-21 18:27:30', '2019-05-21 18:27:30', '2020-05-21 18:27:30'),
('bb776ebd11f6c0803e09aa5e821b9a89b76a3c80759c7b83526bb0d5013cd50f863d990249a90580', 16, 1, 'MyApp', '[]', 0, '2019-05-15 21:41:25', '2019-05-15 21:41:25', '2020-05-15 21:41:25'),
('bc8f3ab8846cd9d3e1e68306608d48346fbbfcec42a2ca58ec696a94185fe4de29db111f7c9146d0', 38, 1, 'MyApp', '[]', 0, '2019-05-03 17:39:44', '2019-05-03 17:39:44', '2020-05-03 17:39:44'),
('bcfae1c018d285e3651f433bf0bad0771ecdc5569f48f17c189886b3eca3818a6b847d105aeba520', 60, 1, 'MyApp', '[]', 0, '2019-05-08 15:31:16', '2019-05-08 15:31:16', '2020-05-08 15:31:16'),
('bea825f2ced17987b7e419ec791e078f465e5dade7f656f035c1a0ffea5718c3f1c7a332a0af8f8b', 6, 1, 'MyApp', '[]', 0, '2019-04-29 11:27:16', '2019-04-29 11:27:16', '2020-04-29 11:27:16'),
('bf2a51419fcfaf3e6b02832f6b10c9f21ee4965512f678e1d6a57a8b8f9827d24aa16791e4c76b33', 6, 1, 'MyApp', '[]', 0, '2019-04-25 19:00:41', '2019-04-25 19:00:41', '2020-04-25 19:00:41'),
('bfa654885496046d77893c2fd1932d333bf497ac2ee83dfd8fe3412d7bdd7a9fd3ae6726464e3eb7', 75, 1, 'MyApp', '[]', 0, '2019-05-18 18:38:07', '2019-05-18 18:38:07', '2020-05-18 18:38:07'),
('bfeaf4b5e2f5a7a7df8af325e4e8007cfd95401e567cc62367bf9fb6f42eca4ad76f8fe2ba9d7aff', 77, 1, 'MyApp', '[]', 0, '2019-05-20 12:23:47', '2019-05-20 12:23:47', '2020-05-20 12:23:47'),
('c078dfd1b292913b5d04d4cd876ec227af696d4a2ffff542f7829bfa1fe48c9f459eae9ebcc34d1a', 15, 1, 'MyApp', '[]', 0, '2019-04-18 09:57:44', '2019-04-18 09:57:44', '2020-04-18 09:57:44'),
('c0df51eaf8fb63d59c32a6f24b88ca388befb6739fdff6eb34a5c0eb4886535798aabb7c70818097', 12, 1, 'MyApp', '[]', 0, '2019-05-07 00:43:15', '2019-05-07 00:43:15', '2020-05-07 00:43:15'),
('c2e2304a5d0fbbb0df67c3a32c74fed6304371cf0d4f437ad2477e4c9d2010ff2c7effa544f22e62', 85, 1, 'MyApp', '[]', 0, '2019-05-22 21:56:17', '2019-05-22 21:56:17', '2020-05-22 21:56:17'),
('c32237a9723189f13b9083b9fa35904c32a079fb1a8d9498149374c1bcb7e50d0a1db1e5064a1276', 6, 1, 'MyApp', '[]', 0, '2019-04-18 07:16:24', '2019-04-18 07:16:24', '2020-04-18 07:16:24'),
('c3325b87ebf4feb541f41d51b89ff30dab309c39fe94bb20d45bf2e0b8a53404d6407b4b7d960f40', 12, 1, 'MyApp', '[]', 0, '2019-04-24 16:22:18', '2019-04-24 16:22:18', '2020-04-24 16:22:18'),
('c35c34ac1e01ac760beba5ab735f2ad1ef03973ca793ac172411b2ff93693aff86a3ec9be9dde5ff', 6, 1, 'MyApp', '[]', 0, '2019-05-22 16:53:59', '2019-05-22 16:53:59', '2020-05-22 16:53:59'),
('c36d64350b35128114d96a5a49a4d3d23baaff87f28b6e36c68356b0e4948fd4191e828997784c95', 74, 1, 'MyApp', '[]', 0, '2019-05-18 18:42:15', '2019-05-18 18:42:15', '2020-05-18 18:42:15'),
('c49eae35ef46bfde5b0c3afaa9a96a3da5ccaa1dd31a452d45ef9f1ff649f7b4b354be3f49804cb2', 12, 1, 'MyApp', '[]', 0, '2019-05-15 21:49:43', '2019-05-15 21:49:43', '2020-05-15 21:49:43'),
('c67224bc7e40e07a0c8856591a2d7896de7772fc888039cdecf137d9577d809b519f1447d0db945a', 6, 1, 'MyApp', '[]', 0, '2019-05-22 11:42:37', '2019-05-22 11:42:37', '2020-05-22 11:42:37'),
('c68f784bee12b61171f27fc3080df09cf82183359a86986ecce64948d38beb600d54839da87be7e9', 6, 1, 'MyApp', '[]', 0, '2019-05-10 12:45:25', '2019-05-10 12:45:25', '2020-05-10 12:45:25'),
('c7306cd7ab14022db162e4a3d6b02dda5e0df942343d9d14e6275e7deaacd5b8b24655a03bf9075d', 67, 1, 'MyApp', '[]', 0, '2019-05-22 17:54:10', '2019-05-22 17:54:10', '2020-05-22 17:54:10'),
('c83b6288cddbecc4b93d32e71aacbf935f49310a307aa7bb95d5f533d1a5c4e65ba368670de7bd13', 7, 1, 'MyApp', '[]', 0, '2019-05-03 11:33:59', '2019-05-03 11:33:59', '2020-05-03 11:33:59'),
('c84a6121ba68f64779104ab6517318b707626d74280412c1cc986e6edb4ac5feb93b54161eea0180', 6, 1, 'MyApp', '[]', 0, '2019-05-22 16:45:58', '2019-05-22 16:45:58', '2020-05-22 16:45:58'),
('c84ca775d91f153da9149faa0b04cae18b74d80a3592dcae43866f1c17112ce4bc926c415d2d2269', 67, 1, 'MyApp', '[]', 0, '2019-05-13 12:52:42', '2019-05-13 12:52:42', '2020-05-13 12:52:42'),
('c894e8d6e60a4ba3aad1f38ceb1f2a9a808edc42587317a33820b1104d85beda4f4027a8b22fa281', 6, 1, 'MyApp', '[]', 0, '2019-04-24 11:24:07', '2019-04-24 11:24:07', '2020-04-24 11:24:07'),
('c8a2814223e69365c74c8f910d18f6b75604411593e21aeb25fc52c14c0487f7a23c4a8831d5108f', 67, 1, 'MyApp', '[]', 0, '2019-05-20 16:36:50', '2019-05-20 16:36:50', '2020-05-20 16:36:50'),
('c8caf6e23a87c84ed77c6a53964cdd6b74344ae373059ba0e0d251659a7bbeda746af51fd58928aa', 78, 1, 'MyApp', '[]', 0, '2019-05-22 11:45:02', '2019-05-22 11:45:02', '2020-05-22 11:45:02'),
('ca1a6e37f52ae1b965b2a6603b9be224cc790cc48d16d445a2f534eebfd600763cc0d953345e9a44', 12, 1, 'MyApp', '[]', 0, '2019-05-16 10:58:56', '2019-05-16 10:58:56', '2020-05-16 10:58:56'),
('ca74ad125669b6a0669da0b2193f4052da742f8512c768bd42f2a042400d171144fc88df8c1f0843', 6, 1, 'MyApp', '[]', 0, '2019-04-23 17:25:24', '2019-04-23 17:25:24', '2020-04-23 17:25:24'),
('cab022b01962eba8c4c7d75a58f43e17f722c73051f5f92961992f546846ad276ec90662d6c599e2', 7, 1, 'MyApp', '[]', 0, '2019-05-07 08:54:49', '2019-05-07 08:54:49', '2020-05-07 08:54:49'),
('cad134e3d9956674fb2b5c972ddd0e40f5b5f00c52ac36ac6210f19c06fe9a48f9249440024fba46', 60, 1, 'MyApp', '[]', 0, '2019-05-08 15:33:58', '2019-05-08 15:33:58', '2020-05-08 15:33:58'),
('caec549b43b5204f2799d4bc29fa8a399e3a4f5a79c5ae46f5cea3a8217c03b8d8aaff041e0ef7a8', 7, 1, 'MyApp', '[]', 0, '2019-04-23 10:02:45', '2019-04-23 10:02:45', '2020-04-23 10:02:45'),
('cd43670e05c604d1336e78f2c6ee72f186b8f317a99e34ee5667e0aab88cfa138d224f6f95c348fb', 16, 1, 'MyApp', '[]', 0, '2019-04-19 08:46:25', '2019-04-19 08:46:25', '2020-04-19 08:46:25'),
('cda83492bab84fb4151116b7494afbe7ed7e0e2e630330aecf034459844f850fe4a2deda44484acc', 60, 1, 'MyApp', '[]', 0, '2019-05-08 15:29:17', '2019-05-08 15:29:17', '2020-05-08 15:29:17'),
('cded3d3d7516ef98f4ae95d23e238b008c7c2807663dd260b0bce0074b178ae1a2cc84d22235f711', 4, 1, 'MyApp', '[]', 0, '2019-04-17 06:49:59', '2019-04-17 06:49:59', '2020-04-17 06:49:59'),
('ce4c2ec4c643152d096456da9263a6670e4a0ff84684667debe205bd4c0b062493f9aaed0420fff2', 76, 1, 'MyApp', '[]', 0, '2019-05-22 21:59:32', '2019-05-22 21:59:32', '2020-05-22 21:59:32'),
('cea3e65ba0d9916ba8f22e8cebd0979ec9e5d4c563bf8f0a58e471507201959535381b784ebe4d05', 75, 1, 'MyApp', '[]', 0, '2019-05-18 18:55:39', '2019-05-18 18:55:39', '2020-05-18 18:55:39'),
('cef5f58bb85d789469d7ec151f2cd3b4e629a5fc31af29a103a09ca6b07cc9110f5b6b238bb7cbf7', 78, 1, 'MyApp', '[]', 0, '2019-05-20 16:36:50', '2019-05-20 16:36:50', '2020-05-20 16:36:50'),
('cf53fe5bd9a92136c9dcae4d89c9a0990aa2ea4b3b55a33c37e4212bc6a5dd91252b444b28f89c3a', 78, 1, 'MyApp', '[]', 0, '2019-05-22 16:55:40', '2019-05-22 16:55:40', '2020-05-22 16:55:40'),
('d031526871fcb05dbf9efdb54a15cd7eb68159e91f07872872291c9718d40b4e4cc5716960a1b6aa', 6, 1, 'MyApp', '[]', 0, '2019-05-07 02:32:38', '2019-05-07 02:32:38', '2020-05-07 02:32:38'),
('d0318053405112dee47ee5b3a7c72ca3135d2d995e3bcac81c4d087e0626062d5cd720c07e291bca', 6, 1, 'MyApp', '[]', 0, '2019-05-03 15:37:42', '2019-05-03 15:37:42', '2020-05-03 15:37:42'),
('d12a162bcc14a038f01d9a7d8ab7aad0059d4cf53aa7c26cb0118a027999666bed48d14bf5f84adb', 6, 1, 'MyApp', '[]', 0, '2019-04-27 15:12:46', '2019-04-27 15:12:46', '2020-04-27 15:12:46'),
('d1441f712e4051bbb5381be2c4a857c2729b6dc06f86811de169e9c22cd17f591f2725385ab21308', 6, 1, 'MyApp', '[]', 0, '2019-05-10 17:05:29', '2019-05-10 17:05:29', '2020-05-10 17:05:29'),
('d167b7ad76d6f79fe3039121963a5b9be98ac35c18ff69b3d812226f8d381846effafa43f208dfe5', 16, 1, 'MyApp', '[]', 0, '2019-05-11 18:38:27', '2019-05-11 18:38:27', '2020-05-11 18:38:27'),
('d1a9ca8e8aa0fff8c46a33e7bfb57be752d856d0bef5142f7cf092cf1db5baab6ad51cdb9a5c3970', 82, 1, 'MyApp', '[]', 0, '2019-05-22 15:58:33', '2019-05-22 15:58:33', '2020-05-22 15:58:33'),
('d38e4c581437876b3d50ecf461bae30ee4c6501a95592b80fc53c1b3557530ada167bf367ac36da8', 16, 1, 'MyApp', '[]', 0, '2019-05-06 11:25:04', '2019-05-06 11:25:04', '2020-05-06 11:25:04'),
('d39659531ed67ebc0fdc36e9a52c14c500d5f6297fd2b314ad8dfa64850f458221cf0bbe73f4d93d', 7, 1, 'MyApp', '[]', 0, '2019-05-06 18:34:04', '2019-05-06 18:34:04', '2020-05-06 18:34:04'),
('d3c6f0e5ff306c122015bc1dde6a1866d2d269816f2e5534a92a2164a21d57add2fe5b9d211ce440', 78, 1, 'MyApp', '[]', 0, '2019-05-20 16:38:43', '2019-05-20 16:38:43', '2020-05-20 16:38:43'),
('d463159aba5c00a1cae65bfa4c034e18a580340fb7585a568f38d58d1a809dd64aa82957aa465b5f', 80, 1, 'MyApp', '[]', 0, '2019-05-22 18:49:18', '2019-05-22 18:49:18', '2020-05-22 18:49:18'),
('d494b61bd1ba04f556603fb9354ca88cb411c5f482d998ea2cb468c1390316461f4442008fdaf001', 67, 1, 'MyApp', '[]', 0, '2019-05-14 10:12:59', '2019-05-14 10:12:59', '2020-05-14 10:12:59'),
('d4bf3c966b53450cbe5d6c14a2d87dc96c98d819766fa9f38fef1cc4018ae8f33736f06e74db9d96', 67, 1, 'MyApp', '[]', 0, '2019-05-20 16:39:07', '2019-05-20 16:39:07', '2020-05-20 16:39:07'),
('d4c32e932932c493a96a5b3ac24868f8a396c1ed47e5726dcf340a2eea6cfad08210ef1d87a1a818', 6, 1, 'MyApp', '[]', 0, '2019-05-11 12:23:42', '2019-05-11 12:23:42', '2020-05-11 12:23:42'),
('d51b2c7a8b4bc1b60c6822416565e1d13fc62a6b12810b957bced2dd7c02d30b351c0225bb8fc78e', 67, 1, 'MyApp', '[]', 0, '2019-05-23 11:21:28', '2019-05-23 11:21:28', '2020-05-23 11:21:28'),
('d6a82c2e0756173451feda1b73326c3b0ed35efcb10ab3c35baad64eef695271a086d5162f2826b9', 12, 1, 'MyApp', '[]', 0, '2019-04-27 18:55:31', '2019-04-27 18:55:31', '2020-04-27 18:55:31'),
('d72ee680bdc0aef9f6ebe7124d276b0a4b2a956dc41ddc3ea097d798a970705502ffe239bc30882e', 1, 1, 'MyApp', '[]', 0, '2019-05-13 12:02:34', '2019-05-13 12:02:34', '2020-05-13 12:02:34'),
('d8253c333b4e6687e518fef5b74cfe8271f397d0ee3ceac540314746e5e180c51ca6c0703de7d294', 6, 1, 'MyApp', '[]', 0, '2019-05-15 17:18:16', '2019-05-15 17:18:16', '2020-05-15 17:18:16'),
('d85587760f6c30a6286bb5e870dce352a45d003ed3f79c640f17c90188b16f2f7486c0e66fbca0ee', 82, 1, 'MyApp', '[]', 0, '2019-05-20 17:30:00', '2019-05-20 17:30:00', '2020-05-20 17:30:00'),
('d86c658acc828689986f7d05af483fc2ec86f8b2ff3340371cd74aa6fe6682d5a116f6b8ae3dd667', 82, 1, 'MyApp', '[]', 0, '2019-05-20 18:28:30', '2019-05-20 18:28:30', '2020-05-20 18:28:30'),
('d88bf375b87db04fba852a20e25b07fbe7d7523d13b64e62fd993a8133b85a94bed3356827cda41b', 6, 1, 'MyApp', '[]', 0, '2019-05-07 05:24:46', '2019-05-07 05:24:46', '2020-05-07 05:24:46'),
('d89b1704ba3121a6fd943e92d44b374678b3e7f68772c0e9204ccff0e16f8c2eb5bccca11c2b7d54', 12, 1, 'MyApp', '[]', 0, '2019-04-26 21:55:25', '2019-04-26 21:55:25', '2020-04-26 21:55:25'),
('d8e8b80b0c1d192a9b567f4e98c1fbf5290ac91798e29d19c825d3eb56e6778f8ac04778e2ae4be4', 76, 1, 'MyApp', '[]', 0, '2019-05-22 21:59:51', '2019-05-22 21:59:51', '2020-05-22 21:59:51'),
('d967a9655c8d44e3da04ff4b6262d957b2d5eee4afc1e954b9355b23b855ca74b9cb859cc1f5c109', 6, 1, 'MyApp', '[]', 0, '2019-05-13 11:17:26', '2019-05-13 11:17:26', '2020-05-13 11:17:26'),
('d9d4743e3757b537b4263a8affffe8f9844afe96716da634d5a07f39507f81b2e96bc280739a9fb7', 78, 1, 'MyApp', '[]', 0, '2019-05-20 15:36:22', '2019-05-20 15:36:22', '2020-05-20 15:36:22'),
('da294cbd5f821ddf9c02dd86488702687778c1480c7194339ef01c6b2f6b3e4c552d2a77fe1b0f8b', 15, 1, 'MyApp', '[]', 0, '2019-04-18 09:58:34', '2019-04-18 09:58:34', '2020-04-18 09:58:34'),
('da87d51ae7928abdaec75824ad213ef1b6f69791f808b3eac52553472823ed716d4c33f27ba42395', 6, 1, 'MyApp', '[]', 0, '2019-04-17 07:26:45', '2019-04-17 07:26:45', '2020-04-17 07:26:45'),
('db24e6b2041fd7b9d40780bd2d34ee46b770ac30b4bd048b4f98d8466949b1213ec3949636b3798b', 6, 1, 'MyApp', '[]', 0, '2019-05-22 16:57:21', '2019-05-22 16:57:21', '2020-05-22 16:57:21'),
('db902421f2f31012ff12716c045360aa028f221657538cdae6b72aeeaa1df1696715c800f965b9cb', 6, 1, 'MyApp', '[]', 0, '2019-04-22 03:24:35', '2019-04-22 03:24:35', '2020-04-22 03:24:35'),
('dbc330e7d28e4ef288777423b488c7fd1fc74f9ae89a658b983da30158bcfc0f95f388643003ec58', 16, 1, 'MyApp', '[]', 0, '2019-05-11 19:28:32', '2019-05-11 19:28:32', '2020-05-11 19:28:32'),
('dbc8ea7e56be8f2ce2ad7f975357887029fb0ab3f2e5a1826be4d4003462c3cbd8c84e6d4caf5cef', 67, 1, 'MyApp', '[]', 0, '2019-05-20 11:43:20', '2019-05-20 11:43:20', '2020-05-20 11:43:20'),
('dbf917e20089938356ca91e2734f93ae65d1295fb36875d8bf3d5c55713d456b449ad34c69f75b7f', 6, 1, 'MyApp', '[]', 0, '2019-05-16 10:53:05', '2019-05-16 10:53:05', '2020-05-16 10:53:05'),
('dcb466774b1d531ab4b1497d48b282dc52bf6535d8ea88af6217e1bbc0d54ac057f7792c748d4b24', 12, 1, 'MyApp', '[]', 0, '2019-04-18 10:01:48', '2019-04-18 10:01:48', '2020-04-18 10:01:48'),
('dda2f55b7ed61e324afb7e3b7ee632613df32bf353ca712c0ddd3ec061e1933d8fa1abf95cdfb5e8', 1, 1, 'MyApp', '[]', 0, '2019-05-22 08:27:03', '2019-05-22 08:27:03', '2020-05-22 08:27:03'),
('ddf9d92a7143f2d0876ce05cb1a8d2edc211d7d5f590259c32f6247bd50bbd9e68a6410754ce92c8', 6, 1, 'MyApp', '[]', 0, '2019-04-22 01:42:28', '2019-04-22 01:42:28', '2020-04-22 01:42:28'),
('de01ece6f5ca9fdd16383884fe3dfbaff28436e937cd3194a4405b8b86ed8d3b090ebc66072a9865', 67, 1, 'MyApp', '[]', 0, '2019-05-23 10:10:37', '2019-05-23 10:10:37', '2020-05-23 10:10:37'),
('de2c11f7c6d4852d2641956b5b993e6509556dcac8401b1c08c904b04ead35ccd2af560b31c6b1c0', 7, 1, 'MyApp', '[]', 0, '2019-04-25 15:42:52', '2019-04-25 15:42:52', '2020-04-25 15:42:52'),
('deea1bab5a8061900f6bd13f03ae1703e9877dded60ab5836a0f53c9ad3ee5871d42e2933ca56af4', 6, 1, 'MyApp', '[]', 0, '2019-05-16 10:46:28', '2019-05-16 10:46:28', '2020-05-16 10:46:28'),
('df5f3d3d8491dd0069f3f937d808e7857844d113ef3da664634b02058b960052c9c93eb1d828f9d3', 80, 1, 'MyApp', '[]', 0, '2019-05-20 17:38:36', '2019-05-20 17:38:36', '2020-05-20 17:38:36'),
('df713c2f52444af87aadc86cd1118d977e28c95879ad61bf7b6ddc87435079430423edf07bbc6f84', 7, 1, 'MyApp', '[]', 0, '2019-05-07 08:45:54', '2019-05-07 08:45:54', '2020-05-07 08:45:54'),
('df7152d314102b05166016e530e5134b2caf6b8de2fe1097f6aaa23bf9bc80a60b71b2797f76d6f3', 74, 1, 'MyApp', '[]', 0, '2019-05-18 18:51:26', '2019-05-18 18:51:26', '2020-05-18 18:51:26'),
('dfd6319146800d865a6e5e65f2c9677d17261dd84244a9a1521101ad5640df45aac6e2699f854c62', 7, 1, 'MyApp', '[]', 0, '2019-04-22 05:23:56', '2019-04-22 05:23:56', '2020-04-22 05:23:56'),
('e07001710f71e2df8de730badc6aea20402371d411fb9e71675be66a389493ad88cb7d9863b3511c', 75, 1, 'MyApp', '[]', 0, '2019-05-21 01:38:32', '2019-05-21 01:38:32', '2020-05-21 01:38:32'),
('e0c1eafb5267b02f9ee86a8be198222ffceb20b5aed005522772b01f940ac730650de5e211d820ce', 12, 1, 'MyApp', '[]', 0, '2019-05-16 11:52:11', '2019-05-16 11:52:11', '2020-05-16 11:52:11'),
('e0e470d2328c450dd55eccdca81e05f7ca096744b7e224d8854464fa49de37ebf81c33bda11c00c3', 67, 1, 'MyApp', '[]', 0, '2019-05-16 12:47:41', '2019-05-16 12:47:41', '2020-05-16 12:47:41'),
('e100e4036aae939318f3b59708d54b7e74127c5c2921df85e99e315492fd0adbf2d66553ca238a76', 63, 1, 'MyApp', '[]', 0, '2019-05-10 16:51:35', '2019-05-10 16:51:35', '2020-05-10 16:51:35'),
('e1b6720c4895ee2e1a8cea8cb6710abd3fea0cb34a51a1bcaaba8e1c0b05f7209905efb4897f7de8', 75, 1, 'MyApp', '[]', 0, '2019-05-21 01:20:45', '2019-05-21 01:20:45', '2020-05-21 01:20:45'),
('e1e4467abbc78ec5fe347b1e073d64b015ae6c42176f3970e0df0aa00366426c9679a461f33bdd08', 6, 1, 'MyApp', '[]', 0, '2019-04-25 14:44:33', '2019-04-25 14:44:33', '2020-04-25 14:44:33'),
('e2127aa821401c58a7db39574caaacf3ac08a2da4cb41662d6d2a7f4e97dfe04338de454ba8bb81a', 15, 1, 'MyApp', '[]', 0, '2019-04-18 10:07:32', '2019-04-18 10:07:32', '2020-04-18 10:07:32'),
('e22098e0b473c35365e36273af4069cdbbb7d2f28f18a79111e7f6b8ea91ff748a26e189c2e87d85', 6, 1, 'MyApp', '[]', 0, '2019-04-24 11:03:39', '2019-04-24 11:03:39', '2020-04-24 11:03:39'),
('e25d9b68603ecdb41cdc074859d4447e8df7e6e597157ad82c959099ef1384ce171ce42bd2e8e2ab', 12, 1, 'MyApp', '[]', 0, '2019-05-11 12:13:20', '2019-05-11 12:13:20', '2020-05-11 12:13:20'),
('e2e5fc4191efbd36baea20f1cb5e88b902051f0bf9310537a67e6c54b37c13f0a66d2cbce432023e', 16, 1, 'MyApp', '[]', 0, '2019-05-12 23:59:20', '2019-05-12 23:59:20', '2020-05-12 23:59:20'),
('e317e84b7b79993d7c4c6d5f7736e5aebfaf946643f5e9e30b40b39c46cc63551d6bfb1e38982f08', 84, 1, 'MyApp', '[]', 0, '2019-05-21 18:42:16', '2019-05-21 18:42:16', '2020-05-21 18:42:16'),
('e383c23207893565a0bd7e420a180f3d68f49e504d09bf1eb61f3485e69cfa836c83267762693c38', 6, 1, 'MyApp', '[]', 0, '2019-04-25 16:34:30', '2019-04-25 16:34:30', '2020-04-25 16:34:30'),
('e39a19be5a6d2a5116f4229fec933d6e9066f4dd3274c957d0bacbb92b7e1839ed489de58f3c46b0', 6, 1, 'MyApp', '[]', 0, '2019-05-08 01:39:19', '2019-05-08 01:39:19', '2020-05-08 01:39:19'),
('e3ac5a3243803622de01f98c249856407af3e6a880e5fa01cd9735398d329196be765206949dbd60', 80, 1, 'MyApp', '[]', 0, '2019-05-22 18:43:58', '2019-05-22 18:43:58', '2020-05-22 18:43:58'),
('e468d98229c8148e4be804056319e6e2d8a5a0de333bb2b2a819e62cdcba1d10ff1033a019dd6862', 7, 1, 'MyApp', '[]', 0, '2019-05-07 05:45:08', '2019-05-07 05:45:08', '2020-05-07 05:45:08'),
('e47db3ebd755aa3c523845b109685603dd9c70c477dcf2b416273a5f232951260b37aa21aa66634c', 6, 1, 'MyApp', '[]', 0, '2019-05-13 12:17:21', '2019-05-13 12:17:21', '2020-05-13 12:17:21'),
('e596f274f1377170b9c5a475040fce3a6213c5f48ef9a7663835ffb72c3bbf260a778bc58013b224', 12, 1, 'MyApp', '[]', 0, '2019-05-13 00:14:01', '2019-05-13 00:14:01', '2020-05-13 00:14:01'),
('e6455b32213be93899b8fc3959fb33fa564a33c6d76b1a01a4b69493d3679ed8283510ddcddd5ab3', 6, 1, 'MyApp', '[]', 0, '2019-05-14 10:20:53', '2019-05-14 10:20:53', '2020-05-14 10:20:53'),
('e7de511919107860c1bb901dab245e79652bbda8e3818860e89f0f6d63b267b340eb98ee414c22ba', 82, 1, 'MyApp', '[]', 0, '2019-05-22 10:25:59', '2019-05-22 10:25:59', '2020-05-22 10:25:59'),
('e8f064b0aeda288e89a87f120b2a3d77f9d8f7d3b4680ab78370cd9ff2fd97c1127cbb9a8382d664', 7, 1, 'MyApp', '[]', 0, '2019-05-07 05:25:49', '2019-05-07 05:25:49', '2020-05-07 05:25:49'),
('e94ed556ca51b1eba306e62613d4f88d2764a7d15960d002116de4e56d8806d13e02acbad818b0a5', 7, 1, 'MyApp', '[]', 0, '2019-04-19 06:13:50', '2019-04-19 06:13:50', '2020-04-19 06:13:50'),
('ea5bd594247eb3e0c4bce648212e49345e50186156e14108e128254045cec2f23d5af1b6e7bfce08', 7, 1, 'MyApp', '[]', 0, '2019-04-23 15:18:25', '2019-04-23 15:18:25', '2020-04-23 15:18:25'),
('eac3879582e8492fa66d20d92c43048252780c6789c07950cecb9d771918217687fee715a3152d45', 12, 1, 'MyApp', '[]', 0, '2019-05-16 10:48:41', '2019-05-16 10:48:41', '2020-05-16 10:48:41'),
('eaeb6019895e7d5fa1e2cca2063fba3a3ef5cd9a3dc2d20e0b3533f2843a33d2002135fb7ca43e01', 6, 1, 'MyApp', '[]', 0, '2019-05-22 16:50:11', '2019-05-22 16:50:11', '2020-05-22 16:50:11'),
('eb138fce84e856dbdff09d04f0d8f92062a9b7dabf46194786242d44c12d09a06d1d3dbe69ff35d0', 68, 1, 'MyApp', '[]', 0, '2019-05-13 14:31:53', '2019-05-13 14:31:53', '2020-05-13 14:31:53'),
('eb645993d54d1ed25dedbbf17be352efbf9599dc5d50eec839b7cb9be56fc5560febf02500048471', 12, 1, 'MyApp', '[]', 0, '2019-04-27 19:01:26', '2019-04-27 19:01:26', '2020-04-27 19:01:26'),
('eb73dd21954ef05a01e9b03b9f5edd2fe91878e711410a7346687a88d02181b96054a9ed6d11c61a', 12, 1, 'MyApp', '[]', 0, '2019-05-11 19:19:08', '2019-05-11 19:19:08', '2020-05-11 19:19:08'),
('ec31060a243165b785e2cab7762914594553098cefdde89a3921b4391dc86f6ee68b5a9c252ee7a9', 67, 1, 'MyApp', '[]', 0, '2019-05-13 11:06:47', '2019-05-13 11:06:47', '2020-05-13 11:06:47'),
('ec3e2b80d5a206be5df39f78132959d9b45c5fec76e71be6d49736d21b0a986debda3751ecc97d95', 1, 1, 'MyApp', '[]', 0, '2019-05-22 09:24:23', '2019-05-22 09:24:23', '2020-05-22 09:24:23'),
('ec616f32ccaaf10b885408e5aadb7dc3ceb5b9a1b46c8404ef38613077c3964e8f03ae33ad15de11', 86, 1, 'MyApp', '[]', 0, '2019-05-22 22:25:34', '2019-05-22 22:25:34', '2020-05-22 22:25:34'),
('ec7dd8567ed232f58d52279992065cb2176cc5e643e24e29335374a8d1360698ab98ef69915ce6a4', 6, 1, 'MyApp', '[]', 0, '2019-05-03 11:49:08', '2019-05-03 11:49:08', '2020-05-03 11:49:08'),
('eda21aed13e44a7796032cd5415373f97cfe4d3b734262a376a5bc6a59e5f2ae8c959bd977e12b8b', 82, 1, 'MyApp', '[]', 0, '2019-05-20 17:30:24', '2019-05-20 17:30:24', '2020-05-20 17:30:24'),
('eda7586a9ed59255f3ebbbaf1a89633bf0b8cc3e194c96da57695f75e8cd35a5caf9e1e5d31fe315', 12, 1, 'MyApp', '[]', 0, '2019-05-13 00:12:29', '2019-05-13 00:12:29', '2020-05-13 00:12:29'),
('eea70204c4b74afb6c050d5e573e755fb25497fde11cfa2650cd1e58361462e51d92d7e00be948b4', 75, 1, 'MyApp', '[]', 0, '2019-05-21 01:35:15', '2019-05-21 01:35:15', '2020-05-21 01:35:15'),
('eeeabc07c1ae96a41e764db3e19def012e0449d9e4161c8d967bb057cba26c14e616d8db730e73d0', 6, 1, 'MyApp', '[]', 0, '2019-04-23 10:51:44', '2019-04-23 10:51:44', '2020-04-23 10:51:44'),
('ef8db107ccd7eb6f0303966acd9ac77961b8a5e9a166305acf9390c6d582619867635e46ffb9f87d', 75, 1, 'MyApp', '[]', 0, '2019-05-22 22:03:58', '2019-05-22 22:03:58', '2020-05-22 22:03:58'),
('efa86f7c71df962d4068e8729e2dca7d469902102a1c54b55131005ee5f205dac8d7e10ef6428594', 76, 1, 'MyApp', '[]', 0, '2019-05-22 22:09:57', '2019-05-22 22:09:57', '2020-05-22 22:09:57'),
('f137dce262486a6983fa11efa22ec5c6aa88f18146a2dbaa4ff69e667e0abc27794e6e473ce3bf02', 87, 1, 'MyApp', '[]', 0, '2019-05-23 10:37:35', '2019-05-23 10:37:35', '2020-05-23 10:37:35'),
('f1a26d33738f10bd288cf560f47786fbcf9dceb5a5d8e1b52d28f8fe59882bf54c030c6fc9a0b9c1', 6, 1, 'MyApp', '[]', 0, '2019-04-24 11:42:56', '2019-04-24 11:42:56', '2020-04-24 11:42:56'),
('f278e81de5dbf69be377909114b4334acfd18dce8bc52dd385628c0d594f900c8bed16d4e400a462', 25, 1, 'MyApp', '[]', 0, '2019-04-25 19:06:47', '2019-04-25 19:06:47', '2020-04-25 19:06:47'),
('f2991198ba08b16fb892a5ce22cfb99c5e9e453817ba69f30f0f76693b3f6508a13401d07e4ec8e8', 7, 1, 'MyApp', '[]', 0, '2019-05-07 07:08:48', '2019-05-07 07:08:48', '2020-05-07 07:08:48'),
('f2f6a5637c4c1a6f49376a801e8015b2c41e6f4a664b7126b9e4c98d2097fb5191ca887a954894ba', 6, 1, 'MyApp', '[]', 0, '2019-04-18 09:11:27', '2019-04-18 09:11:27', '2020-04-18 09:11:27'),
('f3207e77b55d8e1df1121665295c66c685b9b6dcb5b754f99574d921caeea92f1fc8078b1c65367a', 7, 1, 'MyApp', '[]', 0, '2019-04-22 06:01:57', '2019-04-22 06:01:57', '2020-04-22 06:01:57'),
('f34d91ff05fca5b931d1be91aa428e572e06c5445c7fdacd96d88b1ffc1f5c505dc87e52dc35043f', 6, 1, 'MyApp', '[]', 0, '2019-04-24 15:49:01', '2019-04-24 15:49:01', '2020-04-24 15:49:01'),
('f37399fb9dac2b2967fe0721952fd6f2c83875bdf8ccb630ec8f6b2716bd1552d802731c688a004d', 6, 1, 'MyApp', '[]', 0, '2019-05-06 18:27:45', '2019-05-06 18:27:45', '2020-05-06 18:27:45'),
('f39f0cd50eac2affb2c5d95615a74f3a805cf5280c40dd22aeba5df2b3012e62dd60d7b280c718ff', 36, 1, 'MyApp', '[]', 0, '2019-05-03 17:02:25', '2019-05-03 17:02:25', '2020-05-03 17:02:25'),
('f576d85d0e5340042f282c7281342427d7b5834948b19d42109ccc8b3458f894c99faff7654199fa', 16, 1, 'MyApp', '[]', 0, '2019-04-30 18:48:08', '2019-04-30 18:48:08', '2020-04-30 18:48:08'),
('f691e9cbb6169a724f6d666cbff86f0b5a51cda141feaec3b2a0ecb1122c6a1a97122311b8956ea4', 6, 1, 'MyApp', '[]', 0, '2019-05-09 11:16:29', '2019-05-09 11:16:29', '2020-05-09 11:16:29'),
('f6a1310e00f44dedf0dbf4f46a92ff941bf314abf88519d26a3191a8e1c7b7246e0904d257fae09d', 67, 1, 'MyApp', '[]', 0, '2019-05-15 17:15:51', '2019-05-15 17:15:51', '2020-05-15 17:15:51'),
('f6f591d16754dea7f67a511029ddab02b617602031d2fc27a0a309cad0cf5d0bbec4d309447bf40a', 67, 1, 'MyApp', '[]', 0, '2019-05-21 14:17:41', '2019-05-21 14:17:41', '2020-05-21 14:17:41'),
('f75bde85d13c817db439437033e0411554b61d3600c871767c5b45643ebc0936e6e01ae4908ab043', 75, 1, 'MyApp', '[]', 0, '2019-05-23 04:57:46', '2019-05-23 04:57:46', '2020-05-23 04:57:46'),
('f7b04ae5362733a9c84460bda02fac672401cb1b7d5f577304f73246d7a0affb3ac524ac1c174d6d', 6, 1, 'MyApp', '[]', 0, '2019-05-16 11:13:01', '2019-05-16 11:13:01', '2020-05-16 11:13:01'),
('f7c9d1cbc906bda6fcd0786bcb455875c2f089080a8800876de9d7eaea5219615fc18dfb69361888', 6, 1, 'MyApp', '[]', 0, '2019-05-02 16:02:41', '2019-05-02 16:02:41', '2020-05-02 16:02:41'),
('f815a43091f072493a0379586147505198d55c4ae66dbbec5374e54f2d3b43155b156dec84f729e5', 7, 1, 'MyApp', '[]', 0, '2019-04-29 11:05:01', '2019-04-29 11:05:01', '2020-04-29 11:05:01'),
('f842fd36ac18385462b1a2e58ff6892dd9a585134c82ed333286e3f385c00e2124d0f9fc342bb15d', 70, 1, 'MyApp', '[]', 0, '2019-05-14 16:30:50', '2019-05-14 16:30:50', '2020-05-14 16:30:50'),
('f8dbf2ff3a3f0fe9b03cfac0b5e3d08fb67e11a90f38b78556c9b346b1811cca7a9af1fbe8cb0f73', 16, 1, 'MyApp', '[]', 0, '2019-04-23 01:18:54', '2019-04-23 01:18:54', '2020-04-23 01:18:54'),
('f91659e5b35071ceb94785057631e798dbee12743b588ed3da7572aa2ad607bec03d3ccbe9a1faad', 6, 1, 'MyApp', '[]', 0, '2019-04-17 07:21:06', '2019-04-17 07:21:06', '2020-04-17 07:21:06'),
('f9848b1b8d6302fefc9d7da88db34c1dfe60802ffbbcafde8e74790adea45ee1fd797cf1fedc7d75', 7, 1, 'MyApp', '[]', 0, '2019-04-25 11:21:29', '2019-04-25 11:21:29', '2020-04-25 11:21:29'),
('f9d6e18ca0b0db1a9f87edab6aec39b1b11b16c375a482bf143c0a8919fb2c2ee2e6247802c617d6', 12, 1, 'MyApp', '[]', 0, '2019-05-13 00:00:30', '2019-05-13 00:00:30', '2020-05-13 00:00:30'),
('f9efcec8ee570b7a394d761e989823e911c80186326e060427591b2c6507b19c609a896ab0640576', 67, 1, 'MyApp', '[]', 0, '2019-05-14 11:16:25', '2019-05-14 11:16:25', '2020-05-14 11:16:25'),
('fa6841c027d72d129300c2b54eb73eac00d7492d799691d7a3a1f0b12dfc8827723c7b4d5733a08a', 7, 1, 'MyApp', '[]', 0, '2019-04-23 11:34:56', '2019-04-23 11:34:56', '2020-04-23 11:34:56'),
('fc6f2364e0fd4cbd60c291bd179373796759df9da227bf9b41d9180efaa1747a1f5e2443eda6cd0c', 16, 1, 'MyApp', '[]', 0, '2019-04-30 18:46:26', '2019-04-30 18:46:26', '2020-04-30 18:46:26'),
('fcaf0c62287a1a926d04a7bc8008e405da9b1f2c5b0bc9dfdc7b015630121bd87d76f6387f00068b', 7, 1, 'MyApp', '[]', 0, '2019-04-22 07:20:18', '2019-04-22 07:20:18', '2020-04-22 07:20:18'),
('fcb466bc3386c897e0192bf3ccb58c894de89173b6cd2841446790d4ebc282b4f1ae39d42573fac8', 36, 1, 'MyApp', '[]', 0, '2019-05-03 17:02:54', '2019-05-03 17:02:54', '2020-05-03 17:02:54'),
('fcdf24724e8d5a4b60a1555d101fa6126fab14b4e36037e93fdc1bf6834d4b37ef4a92fbff7a5abc', 73, 1, 'MyApp', '[]', 0, '2019-05-17 15:46:35', '2019-05-17 15:46:35', '2020-05-17 15:46:35'),
('fd7ba3ed863c2fe8fcfa4ffe22b918f1be1c837107c36100b3fafd96f159da31d6fd178755d7dc97', 67, 1, 'MyApp', '[]', 0, '2019-05-22 16:47:19', '2019-05-22 16:47:19', '2020-05-22 16:47:19'),
('fe751638114b11bfdb6662bba5a90808003c7f5ca0652a0930e56fd9d4d453c5c63dc8dfb8662168', 79, 1, 'MyApp', '[]', 0, '2019-05-20 15:08:48', '2019-05-20 15:08:48', '2020-05-20 15:08:48'),
('fec7cf4dd84ce393a7986932de22966893e8e31781086479bbc73846925453b05e6c6bb625f21b53', 6, 1, 'MyApp', '[]', 0, '2019-05-07 06:03:58', '2019-05-07 06:03:58', '2020-05-07 06:03:58'),
('fef4f9edc22904dab90cf71a97701479b3d8474cb34496a70a91731b80abf2724772b2916b2582b8', 6, 1, 'MyApp', '[]', 0, '2019-05-16 12:50:53', '2019-05-16 12:50:53', '2020-05-16 12:50:53'),
('fef5f2351b2c6d0a23494dbfd9fc1c0a4b6698b052c26e0f25a68aacb6fb6ef22b924dc0eacf1b9f', 80, 1, 'MyApp', '[]', 0, '2019-05-22 10:25:28', '2019-05-22 10:25:28', '2020-05-22 10:25:28'),
('ff2f0acfb05f3d6a67df4306952afd57aaf2e52b21544e07481757a5f5542c3679ff1a028e136dbc', 6, 1, 'MyApp', '[]', 0, '2019-05-10 10:51:22', '2019-05-10 10:51:22', '2020-05-10 10:51:22'),
('ff5daed253f056063df9213c51c2abe59e57fd4cf974d69c409fa1db28cee747d30df28c3fe3aa49', 74, 1, 'MyApp', '[]', 0, '2019-05-18 18:36:46', '2019-05-18 18:36:46', '2020-05-18 18:36:46'),
('ff9c3c0f784b24ba910b2ce89589d18ef6abc70d3309067f3486580c22903da821ccbfac68fb88b2', 12, 1, 'MyApp', '[]', 0, '2019-04-22 22:47:04', '2019-04-22 22:47:04', '2020-04-22 22:47:04');

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
(1, NULL, 'Omnee Personal Access Client', 'p29Uv4xgEXDOtuAahstk49gwFvDTNJZM8RVRavRk', 'http://localhost', 1, 0, 0, '2019-04-17 00:25:18', '2019-04-17 00:25:18'),
(2, NULL, 'Omnee Password Grant Client', 'LaXEgrFbMVgFoB1gC63XJFS1IeBEPEQVBRx845k6', 'http://localhost', 0, 1, 0, '2019-04-17 00:25:19', '2019-04-17 00:25:19');

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
(1, 1, '2019-04-17 00:25:19', '2019-04-17 00:25:19');

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

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('tuser9556+23@gmail.com', 'qv2bMllXYdGaQlN8Yz13ibCaTVEZF8i7fCZHoX44ekJBloypwxWSsIPTg9HG', '2019-05-22 05:54:53'),
('sinourr@gmail.com', 'REYCGPXZWaEsOJrijm94HHrPJEBPK0GBtKBtkBM2aUqkxkQXuFmJ3qBkFq4m', '2019-05-22 09:52:15'),
('aafrin.innovius@gmail.com', 'n3YMQtKHmM5XoshduZX3Pca5HYR3tTdYymMhopOotZ74vS1rxvFEFuRuZ9t9', '2019-05-23 11:17:03'),
('robschauhan@gmail.com', '0KBxI8rDg8XSrFlftHEl5RFh1wSCtlSrCiVM7trfuB8uULPRNUbP2DEVBuef', '2019-05-23 11:17:16'),
('robin.innovius@gmail.com', 'DZaTbh51xOEPFFXJbgl3PHxlHTNPlhoXrgZ6ZPPCsaTvhaSF4WfJS2Lsv2Lb', '2019-05-23 11:55:18'),
('eclinic@gmail.com', 'ucFKhwBsANE0p0052AzbUjlPu2WKuIegNSSd8WNeSMF0TKi6cmIAQSwjukl4', '2019-05-23 12:04:55');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `prescriptions`
--

CREATE TABLE `prescriptions` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(255) UNSIGNED NOT NULL,
  `emr_number` varchar(255) DEFAULT NULL,
  `notetopharmacy` text,
  `diagnosis` varchar(255) DEFAULT NULL,
  `prescription_number` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prescriptions`
--

INSERT INTO `prescriptions` (`id`, `user_id`, `emr_number`, `notetopharmacy`, `diagnosis`, `prescription_number`, `status`, `created_at`, `updated_at`) VALUES
(22, 16, '0000023', NULL, 'Aplastic anaemia', '907236', 1, NULL, NULL),
(30, 36, '0000032', 'test only', 'ew', '735173', 1, NULL, NULL),
(32, 23, '0000023', 'test only', 'bbvbb', '358390', 1, NULL, NULL),
(41, 59, '0000059', 'Give satchel', 'Catatonia', '257686', 1, NULL, NULL),
(42, 54, '0000054', 'test', 'Death occurring less than 24 hours from onset of symptoms, not otherwise explained', '947072', 1, NULL, NULL),
(43, 82, '0000081', 'mm', 'need', '706975', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `prescription_medicines`
--

CREATE TABLE `prescription_medicines` (
  `id` int(10) UNSIGNED NOT NULL,
  `p_id` int(11) DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `medicines_id` int(10) UNSIGNED NOT NULL,
  `dose` varchar(255) DEFAULT NULL,
  `unit` varchar(255) DEFAULT NULL,
  `route` varchar(255) DEFAULT NULL,
  `frequency` varchar(255) DEFAULT NULL,
  `frequency2` varchar(255) DEFAULT NULL,
  `frequency3` varchar(255) DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prescription_medicines`
--

INSERT INTO `prescription_medicines` (`id`, `p_id`, `user_id`, `medicines_id`, `dose`, `unit`, `route`, `frequency`, `frequency2`, `frequency3`, `duration`, `created_at`, `updated_at`) VALUES
(20, 22, 16, 13, 'admin', '', 'admin', 'aaa', 'admin', 'admin', '1', NULL, NULL),
(21, 22, 16, 13, 'admin', '', 'admin', 'admin', 'admin', 'admin', '1', NULL, NULL),
(27, 27, 36, 7, '4', '', 'mouth', '8', '9', '87', '12', NULL, NULL),
(30, 30, 36, 7, '4', '', 'mouth', '8', '9', '87', '12', NULL, NULL),
(33, 32, 23, 4, '10', '', 'injection', '2', '2', '2', '30', NULL, NULL),
(34, 32, 23, 4, '12', '', 'mouth', '5', '1', '4', '25', NULL, NULL),
(55, 41, 59, 14, '5', 'ml', 'Oral', '1', '1', '1', '1', NULL, NULL),
(56, 41, 59, 14, '11', 'mg', 'Suppository', '2', '1', '1', '2', NULL, NULL),
(57, 41, 59, 14, '11', 'mg', '23', '11', '11', '11', '11', NULL, NULL),
(58, 43, 82, 13, 'admin', 'ml', 'admin', 'admin', 'admin', 'admin', '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `refreal`
--

CREATE TABLE `refreal` (
  `id` int(10) NOT NULL,
  `speciality_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `diagonis` text NOT NULL,
  `reason_of_refreal` text,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `refreal`
--

INSERT INTO `refreal` (`id`, `speciality_id`, `user_id`, `diagonis`, `reason_of_refreal`, `status`, `created_at`, `updated_at`) VALUES
(4, 5, 9, 'Its all about headache.', 'Its all about headache.', 1, NULL, '2019-05-07 07:15:03'),
(5, 4, 9, '(or a group of several) that is pathognomonic.', '(or a group of several) that is pathognomonic.', 1, NULL, '2019-05-08 04:53:55');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Admin', NULL, NULL, NULL),
(2, 'doctor', 'Doctor', NULL, NULL, NULL),
(3, 'patient', 'Patient', NULL, NULL, NULL),
(4, 'pharmacy', 'Pharmacy', NULL, NULL, NULL),
(5, 'labs', 'Labs', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`user_id`, `role_id`) VALUES
(1, 1),
(4, 3),
(6, 3),
(9, 2),
(11, 2),
(13, 3),
(30, 2),
(53, 3),
(60, 3),
(67, 2),
(70, 3),
(72, 2),
(73, 3),
(75, 2),
(76, 3),
(78, 3),
(79, 3),
(80, 2),
(82, 3),
(85, 3),
(86, 2),
(87, 2),
(88, 3);

-- --------------------------------------------------------

--
-- Table structure for table `speciality`
--

CREATE TABLE `speciality` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `speciality`
--

INSERT INTO `speciality` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Test Speciality', 1, '2019-04-16 21:22:07', '2019-04-17 00:14:30'),
(4, 'Addiction psychiatrist', 1, '2019-04-18 07:07:32', NULL),
(5, 'Anesthesiologist', 1, '2019-04-18 07:07:40', NULL),
(6, 'Cardiologist', 1, '2019-04-18 07:07:49', NULL),
(7, 'Family medicine physician', 1, '2019-04-18 07:07:57', NULL),
(8, 'Gynecologist', 1, '2019-04-18 07:08:11', NULL),
(9, 'Gastroenterologist', 1, '2019-04-18 07:08:29', NULL),
(10, 'Neonatologist', 1, '2019-04-18 07:08:41', NULL),
(11, 'Obstetrician', 1, '2019-04-18 07:10:17', NULL),
(12, 'Oncologist', 1, '2019-04-18 07:10:26', NULL),
(13, 'Ophthalmologist', 1, '2019-04-18 07:10:36', NULL),
(14, 'Radiologist', 1, '2019-04-18 07:10:59', NULL),
(15, 'Surgeon', 1, '2019-04-18 07:11:06', NULL),
(16, 'Physiatrist', 1, '2019-04-18 07:11:18', '2019-05-23 09:51:07');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_mail` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `age` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT 'male',
  `date_of_birth` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_pic` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `insurance_company_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `insurance_policy_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emr_number` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `total_subscription_month` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `plan_start_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `plan_end_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `post_mail`, `mobile`, `age`, `password`, `gender`, `date_of_birth`, `profile_pic`, `device_id`, `language`, `insurance_company_name`, `insurance_policy_no`, `description`, `emr_number`, `start_time`, `end_time`, `remember_token`, `status`, `total_subscription_month`, `plan_start_date`, `plan_end_date`, `created_at`, `updated_at`) VALUES
(1, 'Admin', '', 'eclinic@gmail.com', NULL, '9874563210', NULL, '$2y$10$/x9eZTVHqXK2ruwvGGV9gurlBUvqbbeaHyBjTkd79iA4XHGtNha0S', 'male', NULL, 'doctor_profile/Cn9mPqfl7EkBIOi9R2zxH4EXIaYcollTMrtb4Jm4.png', '11111', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'n8NaRKQvKov575J8zIWRuDdLv5bceP0Aakd259crxj4dqFXWvMRhqD6v0Z0O', 1, NULL, NULL, NULL, '2019-04-16 20:53:38', '2019-05-20 09:29:14'),
(4, 'Raj', 'Barot', 'raj.innovius@gmail.com', '213', '8460521190', NULL, '$2y$10$nFBaP4GNdZz67K5NRFTBoOkO6jKguAQK76DCaaMB8OBG033P0n9N2', 'male', '31-05-1996', 'users/patient-1555505638.png', 'null', 'english', NULL, NULL, NULL, NULL, NULL, NULL, 'gaEfhKda2DPOkbDSBsnvn4Z3bgNYhRkpkuTxI5mpbSJjSruGAFF31XlLDe3K', 1, NULL, NULL, NULL, '2019-04-17 06:49:53', NULL),
(6, 'Priyanka', 'Patel', 'priyanka.innovius@gmail.com', 'priyanka@gmail.com', '7878451244', NULL, '$2y$10$09AXrU038FLNbMhjYtUf7.BZoj8BuBUchC4XdvdxvxdB6cJANEXcW', 'female', '17/04/1996', 'users/patient-1555507167.jpg', '', 'English', 'LIC', '656', NULL, '0000006', NULL, NULL, 'J2odaOy6VhhCQIHBDLwdP0K92kwFgIFQbpgXUDefOVLTihv2PE2mahtOGwXf', 1, NULL, NULL, NULL, '2019-04-17 07:20:33', NULL),
(9, 'Dr Raed Batania', NULL, 'Read@gmail.com', NULL, '6578298909', '50', '$2y$10$FsyIW3rly9LdMCc7AKNeieeoIDJ1kuKWouQuFn6qbRSoFBPeSw01e', 'Male', NULL, 'doctor_profile/Sx6ATbiZDLAO7c2DzUYZJgFEpdExxMj2OC2dtcbF.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(11, 'Dr Muzzamil Modan', NULL, 'mujju@gmail.com', NULL, '2316789789', '57', '$2y$10$JdaVaWhFxpBlWIMY7Rsov./epldDqShFvIV9jJlxz7NgJ7sbnZZU6', 'Male', NULL, 'doctor_profile/J4a41WnCuvmu7f9ofUlUpnbHhjgpgR1QMzTuauqm.jpeg', NULL, NULL, NULL, NULL, 'test', NULL, '08:00 AM', '05:00 PM', NULL, 1, NULL, NULL, NULL, NULL, '2019-05-14 04:46:08'),
(13, 'priyanka', 'patel', 'priyanka.innovius31@gmail.com', '1212', '8460521188', NULL, '$2y$10$iJSIIHzLjgroS9S2zK0b1eMCkT9vYn3AL49JBUUs8l21fbtl6ju8O', 'male', '29/05/1996', NULL, 'test', 'English', NULL, NULL, NULL, '0000013', NULL, NULL, NULL, 1, NULL, NULL, NULL, '2019-04-18 09:08:31', NULL),
(30, 'Lorem Ipsum', NULL, 'lorem420@gmail.com', NULL, '7845451212', '22', '$2y$10$xAwH.u9LxgfSnn0Awbb7L.X2gfzf5H2Ien56BREiRx3exs6pvKy5m', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, 'aaaaaa', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2019-04-29 10:38:28'),
(53, 'daddy’s', 'as fast', 'shahidpatel.innovius@gmail.com', 'daadas', '3423423423', NULL, '$2y$10$rGbFdWlSE3.8I/fbgYwuke4DEksuBrxTgXgxlYdXQ/P/xArqLK6Ey', 'female', '08/06/2019', NULL, 'ehlgn9_bXUw:APA91bG4rRzOKMfLwX-og4__LsdWlU9nrwM3JAMEsZaYyiYgRbAS5F5Jh7uK6-5SL5q7d9IRANjQgGiTWIbwO3_0Ry9uZ-DjV3MoQevTtVqVqWPmflrRUmoU1BD_92WtjP3ho9fltsNm', 'Arabic', NULL, NULL, NULL, '0000053', NULL, NULL, 'C4eG99tLpiCXA1GLhSvCOOdg4IyzAf926YmYT081TDYUbZqtIrNFQm0gpEi3', 1, NULL, NULL, NULL, '2019-05-08 01:23:12', NULL),
(60, 'Natasha', 'jkdfadsf', 'jay@gmail.com', 'jay@gmail.com', '2123412342', NULL, '$2y$10$sfCpSdRrm8lh7tWm3kDNduxXfzI2j1uIcioKMwiBfPkXNzJ9lbZrm', 'Female', '08/05/2019', 'users/patient-1557315732.jpeg', 'desx1qciP2k:APA91bH9dj47vVNqdlWwmuJ7BEJKPGpDaB_8xX1QasB25BYKk2-Sxa3U16AsJO0nAd8CW6M2Qa1Z2P3Z1yZ-Z8SNkfJGPYaoIkNKBbk3ZbadWZgbOtGz1jTmTDX1bnnRuBB7XlpwHet4', 'English', 'sdfsdf', '23rfqfasas', NULL, '0000060', NULL, NULL, NULL, 1, NULL, NULL, NULL, '2019-05-08 03:17:34', '2019-05-08 04:52:46'),
(67, 'Raj', NULL, 'raj.innovius1@gmail.com', NULL, '8460521189', '24', '$2y$10$09AXrU038FLNbMhjYtUf7.BZoj8BuBUchC4XdvdxvxdB6cJANEXcW', 'Male', NULL, 'doctor_profile/3Qmlq0B6qH5II2n6sKlUN0TmHqg4rbrnA4ei9M7m.jpeg', '11111', NULL, NULL, NULL, 'Experienced Family doctor', NULL, '08:00 AM', '09:00 PM', 'kJ2hGwde41VyZqcD8gWIK4iUgkMAP3rJwm2b5ikfkWqEmYRCtWI1fT9aASe7', 1, NULL, NULL, NULL, NULL, '2019-05-22 06:51:49'),
(70, 'Hussain', 'Rauf', 'hussey32542@gmail.com', 'hussey32542@gmail.com', '0599719617', NULL, '$2y$10$Wq3ZQNhvuMzqJ5PJjDXYD.hyIVNHF9Lfr5v/leA3kf0cEumAqJcsm', 'male', '14/05/2019', NULL, 'cnNWLWEoMBo:APA91bGzPqaQrr-1hTPTL3q8c9esxKLcL27e2D-52WnnNghoADQTmz_MZZAkOd_GD9sFFyPkgTL3ssjZZV-sVw6qJrnhN87qt-9IkO5IKXgf5-KQR_84R8pJAZ-_TBoudQ8p3pfo2jGT', 'English', NULL, NULL, NULL, '0000070', NULL, NULL, NULL, 1, NULL, NULL, NULL, '2019-05-14 04:30:11', NULL),
(72, 'Aafrin', NULL, 'aafrin.innovius@gmail.com', NULL, '9998067124', '23', '$2y$10$mANtfUOVCtre2G9DjNp2ZOaxmQqj4JamsSlf9Zz/HSH1m7JOLHmL.', 'Female', NULL, 'doctor_profile/facbL5CjtwFTH4t2T8zHlo6OssEzlqku7XWgZhmu.png', 'eS4dqi1OetM:APA91bGZh8Ex3c58OMpcOviKD0Julok94no0YyZXatnXmpdughC-3BBAMoIoUWXM9kGXmBiYYKu74XGpHMgTrMWTu1K0l7OMRYpTzFcl_qPgf49lIdcNLtKVO0BtesKzSBsS7XMmgSxV', NULL, NULL, NULL, 'Its all about Med art clinic.\r\nWe are providing all types of facilities.\r\nWe are believing in quality as well.', NULL, '10:30 AM', '06:00 PM', '7h3c3d93I3oXi5cDElHDrguL9DDeUM6qacxL36Hf1NUbpLBa1bE4My3ymyrG', 1, NULL, NULL, NULL, NULL, '2019-05-17 03:44:10'),
(73, 'Disha', 'Pdas', 'disha@gmail.com', 'disha@gmail.com', '9864005134', NULL, '$2y$10$0rzW1FHLCyAyJiF5womceubgFwyTPOFTPRl3sFDiwpIIS1ZwAia4.', 'female', '17/05/1996', NULL, 'cVHQUFXZTUw:APA91bE_7SSxTEZx_K2qj9eAmF1pfVNBdIMS2MFVP34cpAbsyT6X6Jygqu1rwu6xXzWBDf0oKyDrcOgs7gCY-9lA_CcJz_aKZgJIdfqCoSAX5E9T7YNM2jN41nW7pyEuYQDzlrMK1vDK', 'English', NULL, NULL, NULL, '0000073', NULL, NULL, NULL, 1, NULL, NULL, NULL, '2019-05-17 03:46:25', NULL),
(75, 'Dr. Testing', NULL, 'Safeer@otc.sa.com', NULL, '0597832291', '30', '$2y$10$xkKN/UQn2xex.lEQ3dYw6ez7ySVPwGcwMm5HOcbiAe.vz9MgC8kGG', 'Male', NULL, 'doctor_profile/vEibtI74dT6z6eLVq6QHnXXtx5Gwz0b8nZk60Fiv.jpeg', '', NULL, NULL, NULL, 'Heart surgeon', NULL, '08:00 AM', '08:00 PM', '4337CUMOFoMnc1hIXquwyKdeTLdvl2tZDnrreotBKIYIOtiK29qLD0E4sc3V', 1, NULL, NULL, NULL, NULL, '2019-05-18 06:41:12'),
(76, 'Syed', 'Safeer', 'sinourr@gmail.com', '112', '0597832290', NULL, '$2y$10$W8y4k0MU5a17GnYIVBiFeeQ2ziZqhDxhG/OmzcPFLWjFG/UsmIRyG', 'male', '18/05/2019', NULL, 'dwNms-DVfY8:APA91bEKNw0Hvl2HksCGXxgV9PAsJp9CFfaSMIDgubHSOIyunhNnGYzv2DJSe3u7oeq8xbPciTKPcrszH3xfmmCvZ7ux4xGjOq__2n17tiyW51XsOgKkGAmqj3aNuocHccutM2mrT-xY', 'English', NULL, NULL, NULL, '0000076', NULL, NULL, NULL, 1, NULL, NULL, NULL, '2019-05-18 06:54:31', NULL),
(78, 'muzammil', 'modan', 'muzammil.innovius@gmail.com', 'abc', '9965823565', NULL, '$2y$10$25dvVrqJ0n5tKMSbUW/TJO6T1l6OkzIGnh/JRNDMOWO1KUWdI7tku', 'male', '20/05/1999', NULL, '', 'English', 'icici', '12345', NULL, '0000077', NULL, NULL, NULL, 1, '5', '2019-05-01', '2019-10-01', '2019-05-20 03:06:04', NULL),
(79, 'Nick', 'Jones', 'aaadfdfdfdfssse@gmail.com', 'sdfj@gmail.com', '1234567890', NULL, '$2y$10$Xk7jiOVc2slFHLmZyQJiFOuABW/JW8oRPnomrcntbzEFCLAHwv1t2', 'male', '29/05/1996', NULL, '123456', 'English', 'lic', '4654', NULL, '0000079', NULL, NULL, NULL, 1, '4', '2019-05-04', '2019-09-04', '2019-05-20 03:08:38', NULL),
(80, 'Haya', NULL, 'tuser9556+23@gmail.com', NULL, '9875463215', '35', '$2y$10$TERuXeWSwW3y90JX7mNefOG1HKrtTDfEkRvE4pCuO2NDkXgZjafPu', 'Male', NULL, 'doctor_profile/vgyTclF89vTedUmAE02vk6YLqlyjbxuCNEdrqDml.jpeg', '', NULL, NULL, NULL, 'happy to  help', NULL, '11:20 AM', '08:20 PM', 'rcoEiaG4Zf7CRKcmBLVwGfqrdcAGKHpUUDbXPkql1jX1xeaOgoE3V4gcKdpm', 1, NULL, NULL, NULL, NULL, '2019-05-21 06:02:52'),
(82, 'prin', 'dev', 'tuser9556@gmail.com', 'princy@gmail.com', '9876543212', NULL, '$2y$10$TCT821ORlnFWS3mGzKLcNeRuwDMfNjjYhmd5NFzYydXDHj9DLgv/O', 'Female', '15/06/1998', NULL, 'fb9u-f_AAG0:APA91bFt9krltW0U70xJsStQjsWQxc66Unx_6khVOtfATITaI3VO9VtCx6mfbK1lvUs3b-38EI1mqbFPcd7KJpNBMTzg4ndHlRq1TxYBxh9fiuUnZNEP2lbt_3JuHNkyceRGhZrYLdYQ', 'English', NULL, NULL, NULL, '0000081', NULL, NULL, NULL, 1, '6', '2019-05-20', '2019-11-20', '2019-05-20 05:29:54', '2019-05-23 10:32:45'),
(85, 'saferr', 'jxbbx', 'murtaza.seder@gmail.com', 'jxhxb', '0997576976', NULL, '$2y$10$yt5PUJXBLWSxfhhiC90fdeAK4U612H49iNYM1I3J7dzxX/jKjAbhC', 'male', '22/05/2019', NULL, '', 'English', NULL, NULL, NULL, '0000083', NULL, NULL, NULL, 1, '12', '2019-05-22', '2020-05-22', '2019-05-22 09:55:01', '2019-05-22 09:56:12'),
(86, 'New doc', NULL, 'sin.ourr@gmail.com', NULL, '0597832293', '35', '$2y$10$ty5C6ekOAMBHktiO6jxHVexlLY6x.Q5XVS723ezMhoWDVbuxwnHo.', 'Male', NULL, 'doctor_profile/6EfbK9VCMZ2db1zDrsEHzyqO7RtSew0XEUBbEVEu.jpeg', '', NULL, NULL, NULL, 'Ff', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(87, 'Dr. Mohammed AlRowaily', NULL, 'robin.innovius@gmail.com', NULL, '8460178906', '45', '$2y$10$G0RMjNW3ZkjcuvZQ/HAvs.Ag9osmQwJmQ.rijGn.EF2MORCTcH4qe', 'Male', NULL, 'doctor_profile/nP3fowuGhEHcvUfFaolR28fCUYvMOi43ZsNVFk2e.jpeg', '', NULL, NULL, NULL, 'This is demo doctor', NULL, '09:35 AM', '05:20 PM', NULL, 1, NULL, NULL, NULL, NULL, NULL),
(88, 'shahid', 'shekh', 'robschauhan@gmail.com', 'riyadh', '9724532091', NULL, '$2y$10$GqrYvVGE46/jWBUjRtHnmezeUxu0qQRhmj64bVo39PKcGqcYTJ6z6', 'male', '12/04/1985', NULL, '', 'English', NULL, NULL, NULL, '0000088', NULL, NULL, NULL, 1, '6', '2019-05-23', '2019-11-23', '2019-05-23 10:54:26', '2019-05-23 10:54:59');

-- --------------------------------------------------------

--
-- Table structure for table `videocall_room_detail`
--

CREATE TABLE `videocall_room_detail` (
  `id` int(10) UNSIGNED NOT NULL,
  `from_id` int(10) UNSIGNED NOT NULL,
  `to_id` int(10) UNSIGNED NOT NULL,
  `room_id` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `booking_id` int(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `videocall_room_detail`
--

INSERT INTO `videocall_room_detail` (`id`, `from_id`, `to_id`, `room_id`, `type`, `booking_id`, `created_at`, `updated_at`) VALUES
(61, 6, 6, '454208', '', NULL, '2019-04-24 05:19:20', '2019-04-24 05:19:20'),
(82, 1, 1, '818316', '', NULL, '2019-04-25 05:22:17', '2019-04-25 05:22:17'),
(406, 6, 67, 'eclinic_986850', 'audio', 156, '2019-05-13 13:07:39', '2019-05-13 13:07:39'),
(413, 6, 67, 'eclinic_771559', 'video', 161, '2019-05-13 15:24:34', '2019-05-13 15:24:34'),
(417, 6, 67, 'eclinic_243703', 'audio', 157, '2019-05-13 15:45:45', '2019-05-13 15:45:45'),
(418, 67, 6, 'eclinic_928675', 'audio', 161, '2019-05-13 15:46:21', '2019-05-13 15:46:21'),
(425, 67, 6, 'eclinic_824995', 'video', 179, '2019-05-16 11:58:56', '2019-05-16 11:58:56'),
(426, 67, 6, 'eclinic_665003', 'video', 179, '2019-05-16 11:59:52', '2019-05-16 11:59:52'),
(443, 67, 6, 'eclinic_728656', 'video', 193, '2019-05-20 16:56:06', '2019-05-20 16:56:06'),
(444, 80, 82, 'eclinic_328423', 'video', 194, '2019-05-20 17:34:05', '2019-05-20 17:34:05'),
(445, 80, 82, 'eclinic_187705', 'video', 194, '2019-05-20 17:41:18', '2019-05-20 17:41:18'),
(446, 80, 82, 'eclinic_706399', 'audio', 194, '2019-05-20 17:53:11', '2019-05-20 17:53:11'),
(447, 80, 82, 'eclinic_299992', 'video', 194, '2019-05-20 17:53:27', '2019-05-20 17:53:27'),
(448, 80, 82, 'eclinic_191249', 'video', 194, '2019-05-20 17:57:23', '2019-05-20 17:57:23'),
(449, 80, 82, 'eclinic_371286', 'video', 195, '2019-05-20 18:07:55', '2019-05-20 18:07:55'),
(450, 75, 76, 'eclinic_885454', 'video', 197, '2019-05-21 01:32:16', '2019-05-21 01:32:16'),
(451, 75, 76, 'eclinic_484223', 'video', 197, '2019-05-21 01:32:57', '2019-05-21 01:32:57'),
(452, 75, 76, 'eclinic_938757', 'audio', 197, '2019-05-21 01:38:39', '2019-05-21 01:38:39'),
(453, 80, 6, 'eclinic_865312', 'video', 211, '2019-05-21 12:01:12', '2019-05-21 12:01:12'),
(454, 80, 6, 'eclinic_198378', 'video', 211, '2019-05-21 12:03:32', '2019-05-21 12:03:32'),
(455, 80, 6, 'eclinic_106315', 'video', 211, '2019-05-21 12:04:51', '2019-05-21 12:04:51'),
(456, 6, 80, 'eclinic_247671', 'video', 210, '2019-05-21 12:27:16', '2019-05-21 12:27:16'),
(457, 6, 80, 'eclinic_925119', 'video', 210, '2019-05-21 12:27:52', '2019-05-21 12:27:52'),
(458, 6, 80, 'eclinic_110326', 'video', 210, '2019-05-21 12:30:41', '2019-05-21 12:30:41'),
(459, 6, 67, 'eclinic_187016', 'video', 209, '2019-05-21 12:35:24', '2019-05-21 12:35:24'),
(460, 6, 67, 'eclinic_148731', 'video', 209, '2019-05-21 12:55:12', '2019-05-21 12:55:12'),
(461, 6, 67, 'eclinic_790949', 'video', 205, '2019-05-21 13:00:56', '2019-05-21 13:00:56'),
(462, 67, 6, 'eclinic_771020', 'video', 202, '2019-05-21 14:17:56', '2019-05-21 14:17:56'),
(463, 67, 6, 'eclinic_533581', 'video', 202, '2019-05-21 14:23:32', '2019-05-21 14:23:32'),
(464, 67, 6, 'eclinic_253472', 'video', 202, '2019-05-21 14:26:59', '2019-05-21 14:26:59'),
(465, 67, 6, 'eclinic_895150', 'video', 202, '2019-05-21 14:36:03', '2019-05-21 14:36:03'),
(466, 67, 6, 'eclinic_482628', 'video', 202, '2019-05-21 14:37:27', '2019-05-21 14:37:27'),
(467, 67, 6, 'eclinic_699350', 'video', 202, '2019-05-21 14:39:56', '2019-05-21 14:39:56'),
(468, 67, 6, 'eclinic_905785', 'video', 204, '2019-05-21 14:43:44', '2019-05-21 14:43:44'),
(469, 67, 6, 'eclinic_120526', 'video', 202, '2019-05-21 14:46:00', '2019-05-21 14:46:00'),
(470, 67, 6, 'eclinic_895583', 'video', 202, '2019-05-21 14:47:50', '2019-05-21 14:47:50'),
(471, 67, 6, 'eclinic_272128', 'video', 202, '2019-05-21 14:50:11', '2019-05-21 14:50:11'),
(472, 67, 6, 'eclinic_940611', 'video', 204, '2019-05-21 14:50:38', '2019-05-21 14:50:38'),
(473, 67, 6, 'eclinic_103544', 'video', 202, '2019-05-21 15:03:49', '2019-05-21 15:03:49'),
(474, 67, 6, 'eclinic_649802', 'video', 202, '2019-05-21 15:06:35', '2019-05-21 15:06:35'),
(475, 6, 67, 'eclinic_359426', 'video', 204, '2019-05-21 15:14:51', '2019-05-21 15:14:51'),
(476, 67, 6, 'eclinic_972507', 'video', 202, '2019-05-21 15:15:56', '2019-05-21 15:15:56'),
(477, 67, 6, 'eclinic_812048', 'video', 202, '2019-05-21 15:19:58', '2019-05-21 15:19:58'),
(478, 6, 67, 'eclinic_740270', 'video', 204, '2019-05-21 16:15:30', '2019-05-21 16:15:30'),
(479, 6, 67, 'eclinic_263344', 'video', 204, '2019-05-21 16:16:14', '2019-05-21 16:16:14'),
(480, 6, 67, 'eclinic_770569', 'video', 204, '2019-05-21 16:22:12', '2019-05-21 16:22:12'),
(481, 6, 67, 'eclinic_557366', 'video', 204, '2019-05-21 16:33:29', '2019-05-21 16:33:29'),
(482, 6, 67, 'eclinic_208804', 'video', 204, '2019-05-21 16:56:55', '2019-05-21 16:56:55'),
(483, 6, 67, 'eclinic_902882', 'video', 204, '2019-05-21 16:58:51', '2019-05-21 16:58:51'),
(484, 6, 67, 'eclinic_663953', 'video', 202, '2019-05-21 17:01:00', '2019-05-21 17:01:00'),
(485, 6, 67, 'eclinic_107392', 'video', 202, '2019-05-21 17:02:42', '2019-05-21 17:02:42'),
(486, 67, 6, 'eclinic_333557', 'video', 202, '2019-05-21 17:04:57', '2019-05-21 17:04:57'),
(487, 6, 67, 'eclinic_287834', 'video', 202, '2019-05-21 17:05:22', '2019-05-21 17:05:22'),
(488, 80, 82, 'eclinic_501295', 'video', 212, '2019-05-21 18:13:41', '2019-05-21 18:13:41'),
(489, 80, 82, 'eclinic_540863', 'video', 212, '2019-05-21 18:25:25', '2019-05-21 18:25:25'),
(490, 80, 82, 'eclinic_929844', 'video', 212, '2019-05-21 18:34:06', '2019-05-21 18:34:06'),
(491, 80, 82, 'eclinic_604926', 'video', 213, '2019-05-21 18:52:36', '2019-05-21 18:52:36'),
(492, 80, 82, 'eclinic_250901', 'video', 212, '2019-05-21 19:00:43', '2019-05-21 19:00:43'),
(493, 80, 82, 'eclinic_695021', 'video', 215, '2019-05-22 10:37:40', '2019-05-22 10:37:40'),
(494, 80, 82, 'eclinic_545138', 'video', 215, '2019-05-22 10:46:15', '2019-05-22 10:46:15'),
(495, 80, 82, 'eclinic_913703', 'audio', 215, '2019-05-22 10:51:00', '2019-05-22 10:51:00'),
(496, 80, 82, 'eclinic_758678', 'video', 215, '2019-05-22 11:01:26', '2019-05-22 11:01:26'),
(497, 80, 82, 'eclinic_657656', 'video', 216, '2019-05-22 11:05:59', '2019-05-22 11:05:59'),
(498, 80, 82, 'eclinic_460880', 'video', 215, '2019-05-22 11:07:05', '2019-05-22 11:07:05'),
(499, 6, 67, 'eclinic_157835', 'video', 218, '2019-05-22 12:01:57', '2019-05-22 12:01:57'),
(500, 78, 67, 'eclinic_296760', 'video', 219, '2019-05-22 12:02:09', '2019-05-22 12:02:09'),
(501, 78, 67, 'eclinic_146075', 'video', 219, '2019-05-22 12:14:38', '2019-05-22 12:14:38'),
(502, 6, 67, 'eclinic_990545', 'audio', 218, '2019-05-22 12:16:10', '2019-05-22 12:16:10'),
(503, 6, 67, 'eclinic_374957', 'audio', 218, '2019-05-22 12:20:16', '2019-05-22 12:20:16'),
(504, 6, 67, 'eclinic_883630', 'audio', 218, '2019-05-22 12:21:13', '2019-05-22 12:21:13'),
(505, 80, 82, 'eclinic_950279', 'video', 217, '2019-05-22 14:01:27', '2019-05-22 14:01:27'),
(506, 80, 82, 'eclinic_246705', 'audio', 216, '2019-05-22 14:02:21', '2019-05-22 14:02:21'),
(507, 78, 67, 'eclinic_391947', 'video', 222, '2019-05-22 15:46:52', '2019-05-22 15:46:52'),
(508, 80, 82, 'eclinic_823500', 'video', 216, '2019-05-22 16:00:27', '2019-05-22 16:00:27'),
(509, 80, 82, 'eclinic_479452', 'video', 216, '2019-05-22 16:00:55', '2019-05-22 16:00:55'),
(510, 80, 82, 'eclinic_538845', 'video', 217, '2019-05-22 16:06:25', '2019-05-22 16:06:25'),
(511, 80, 82, 'eclinic_901560', 'video', 216, '2019-05-22 16:12:37', '2019-05-22 16:12:37'),
(512, 86, 76, 'eclinic_210774', 'video', 232, '2019-05-22 22:23:35', '2019-05-22 22:23:35'),
(513, 86, 76, 'eclinic_363211', 'audio', 232, '2019-05-22 22:25:14', '2019-05-22 22:25:14'),
(514, 86, 76, 'eclinic_998368', 'video', 232, '2019-05-22 22:43:59', '2019-05-22 22:43:59'),
(515, 86, 76, 'eclinic_748896', 'audio', 232, '2019-05-22 22:46:06', '2019-05-22 22:46:06'),
(516, 86, 76, 'eclinic_455442', 'audio', 232, '2019-05-22 22:46:51', '2019-05-22 22:46:51'),
(517, 75, 85, 'eclinic_817736', 'video', 0, '2019-05-23 04:57:58', '2019-05-23 04:57:58'),
(518, 75, 76, 'eclinic_232452', 'audio', 231, '2019-05-23 05:01:59', '2019-05-23 05:01:59'),
(519, 75, 76, 'eclinic_718394', 'audio', 235, '2019-05-23 05:04:04', '2019-05-23 05:04:04'),
(520, 75, 76, 'eclinic_259929', 'video', 235, '2019-05-23 05:05:08', '2019-05-23 05:05:08'),
(521, 87, 82, 'eclinic_882203', 'video', 0, '2019-05-23 11:09:06', '2019-05-23 11:09:06'),
(522, 87, 82, 'eclinic_104314', 'video', 0, '2019-05-23 11:10:04', '2019-05-23 11:10:04'),
(523, 87, 82, 'eclinic_937827', 'video', 0, '2019-05-23 11:10:44', '2019-05-23 11:10:44'),
(524, 87, 82, 'eclinic_460338', 'video', 0, '2019-05-23 11:11:05', '2019-05-23 11:11:05'),
(525, 82, 67, 'eclinic_471691', 'video', 237, '2019-05-23 11:11:37', '2019-05-23 11:11:37'),
(526, 82, 72, 'eclinic_589445', 'video', 239, '2019-05-23 11:14:16', '2019-05-23 11:14:16'),
(527, 72, 82, 'eclinic_660994', 'video', 239, '2019-05-23 11:21:24', '2019-05-23 11:21:24');

-- --------------------------------------------------------

--
-- Table structure for table `visit_investigation`
--

CREATE TABLE `visit_investigation` (
  `id` int(11) NOT NULL,
  `emr_id` int(10) DEFAULT NULL,
  `investigation_id` int(11) NOT NULL,
  `investigation_name` varchar(255) DEFAULT NULL,
  `note` text NOT NULL,
  `patient_id` int(10) DEFAULT NULL,
  `doctor_id` int(10) DEFAULT NULL,
  `pdf` varchar(255) DEFAULT NULL,
  `status` int(10) NOT NULL DEFAULT '0',
  `result` text,
  `uploaded_by` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `visit_investigation`
--

INSERT INTO `visit_investigation` (`id`, `emr_id`, `investigation_id`, `investigation_name`, `note`, `patient_id`, `doctor_id`, `pdf`, `status`, `result`, `uploaded_by`, `created_at`, `updated_at`) VALUES
(97, 64, 5, 'aaa', 'investigation note 1', 6, 7, 'storage/pdf/orders/97_labereport.pdf', 0, NULL, '', '2019-05-11 15:18:08', '2019-05-14 13:00:23'),
(98, 64, 5, 'aaa', 'investigation note 2', 6, 7, 'storage/pdf/orders/98_labereport.pdf', 0, NULL, '', '2019-05-11 15:18:08', '2019-05-14 13:00:23'),
(99, 65, 5, 'aaa', 'investigation note 1', 6, 7, 'storage/pdf/orders/99_labereport.pdf', 0, NULL, NULL, '2019-05-11 15:20:14', '2019-05-14 13:00:23'),
(100, 65, 5, 'aaa', 'investigation note 2', 6, 7, 'storage/pdf/orders/100_labereport.pdf', 0, NULL, NULL, '2019-05-11 15:20:14', '2019-05-14 13:00:23'),
(101, 66, 5, 'aaa', 'investigation note 1', 6, 7, 'storage/pdf/orders/101_labereport.pdf', 0, NULL, NULL, '2019-05-11 15:22:42', '2019-05-14 13:00:23'),
(102, 66, 5, 'aaa', 'investigation note 2', 6, 7, 'storage/pdf/orders/102_labereport.pdf', 0, NULL, NULL, '2019-05-11 15:22:42', '2019-05-14 13:00:23'),
(103, 68, 4, 'CT-Scan', '44', 16, 12, NULL, 1, 'lab_report/report-01558001170.jpg | lab_report/report-11558001170.jpg', '12', '2019-05-13 00:07:44', '2019-05-16 15:36:10'),
(104, 69, 4, 'CT-Scan', 't', 16, 12, NULL, 0, NULL, NULL, '2019-05-13 00:08:09', '2019-05-13 00:08:09'),
(105, 75, 4, 'CT-Scan', 'ctscan is required', 6, 67, 'storage/pdf/orders/105_labereport.pdf', 0, NULL, NULL, '2019-05-14 11:18:32', '2019-05-14 13:00:23'),
(106, 75, 5, 'MRI', 'mri from Dr. xyz', 6, 67, 'storage/pdf/orders/106_labereport.pdf', 1, 'lab_report/report-01557831516.png', NULL, '2019-05-14 11:18:32', '2019-05-14 16:28:36'),
(107, 76, 5, 'MRI', 'mri note', 6, 67, 'storage/pdf/lab_reports/107_labereport.pdf', 0, NULL, NULL, '2019-05-14 16:13:21', '2019-05-14 16:13:25'),
(108, 77, 5, 'MRI', 'mri note', 6, 67, 'storage/pdf/lab_reports/108_labereport.pdf', 0, NULL, NULL, '2019-05-14 16:14:23', '2019-05-14 16:14:25'),
(109, 78, 5, 'MRI', 'mri note', 6, 67, NULL, 0, NULL, NULL, '2019-05-14 16:19:58', '2019-05-14 16:19:58'),
(110, 79, 5, 'MRI', 'mri note', 6, 67, 'storage/pdf/lab_reports/110_labereport.pdf', 1, 'lab_report/report-01557991322.png | lab_report/report-11557991322.png', NULL, '2019-05-14 16:20:50', '2019-05-16 12:52:02'),
(111, 80, 5, 'MRI', 'mri note', 6, 67, 'storage/pdf/lab_reports/111_labereport.pdf', 1, 'lab_report/report-01557921321.png | lab_report/report-11557921321.png | lab_report/report-21557921321.png', '6', '2019-05-14 16:22:21', '2019-05-15 17:25:21'),
(117, 100, 5, 'MRI', 'it\'s all about investigation. ', 71, 72, 'storage/pdf/lab_reports/117_labereport.pdf', 0, NULL, NULL, '2019-05-17 14:57:01', '2019-05-17 14:57:03'),
(118, 101, 6, 'Blood Test', 'blood test note', 71, 72, 'storage/pdf/lab_reports/118_labereport.pdf', 0, NULL, NULL, '2019-05-17 15:25:06', '2019-05-17 15:25:09'),
(119, 119, 6, 'Blood Test', 'blood test note', 6, 67, 'storage/pdf/lab_reports/119_labereport.pdf', 0, NULL, NULL, '2019-05-20 16:47:55', '2019-05-20 16:47:59'),
(120, 120, 6, 'Blood Test', 'blood test note', 6, 67, 'storage/pdf/lab_reports/120_labereport.pdf', 0, NULL, NULL, '2019-05-20 16:50:14', '2019-05-20 16:50:17'),
(121, 121, 6, 'Blood Test', 'blood test note', 6, 67, 'storage/pdf/lab_reports/121_labereport.pdf', 0, NULL, NULL, '2019-05-20 16:51:01', '2019-05-20 16:51:03'),
(122, 122, 6, 'Blood Test', 'blood test note', 6, 67, 'storage/pdf/lab_reports/122_labereport.pdf', 0, NULL, NULL, '2019-05-20 16:52:28', '2019-05-20 16:52:30'),
(123, 123, 6, 'Blood Test', 'blood test note', 6, 67, 'storage/pdf/lab_reports/123_labereport.pdf', 0, NULL, NULL, '2019-05-20 16:52:51', '2019-05-20 16:52:53'),
(124, 124, 6, 'Blood Test', 'blood test note', 6, 67, 'storage/pdf/lab_reports/124_labereport.pdf', 0, NULL, NULL, '2019-05-20 16:53:32', '2019-05-20 16:53:34'),
(125, 125, 6, 'Blood Test', 'blood test note', 6, 67, 'storage/pdf/lab_reports/125_labereport.pdf', 0, NULL, NULL, '2019-05-20 16:53:59', '2019-05-20 16:54:01'),
(126, 126, 6, 'Blood Test', 'blood test note', 6, 67, 'storage/pdf/lab_reports/126_labereport.pdf', 0, NULL, NULL, '2019-05-20 16:55:40', '2019-05-20 16:55:42'),
(127, 127, 6, 'Blood Test', 'lab report ', 6, 67, 'storage/pdf/lab_reports/127_labereport.pdf', 0, NULL, NULL, '2019-05-20 16:57:24', '2019-05-20 16:57:26'),
(130, 131, 6, 'Blood Test', 'blood test', 82, 80, 'storage/pdf/lab_reports/130_labereport.pdf', 0, NULL, NULL, '2019-05-20 17:58:11', '2019-05-20 17:58:13'),
(131, 130, 5, 'MRI', 'jdjdj', 82, 80, 'storage/pdf/lab_reports/131_labereport.pdf', 0, NULL, NULL, '2019-05-20 17:58:46', '2019-05-20 17:58:48'),
(134, 133, 6, 'Blood Test', 'test', 76, 75, 'storage/pdf/lab_reports/134_labereport.pdf', 1, 'lab_report/report-01558382200.jpg', '75', '2019-05-21 01:25:46', '2019-05-21 01:26:40'),
(135, 136, 6, 'Blood Test', 'test of blood', 6, 67, 'storage/pdf/lab_reports/135_labereport.pdf', 0, NULL, NULL, '2019-05-21 11:58:47', '2019-05-21 11:58:51'),
(136, 137, 6, 'Blood Test', 'test of blood', 6, 67, 'storage/pdf/lab_reports/136_labereport.pdf', 0, NULL, NULL, '2019-05-21 11:59:01', '2019-05-21 11:59:03'),
(137, 138, 6, 'Blood Test', 'test of blood', 6, 67, 'storage/pdf/lab_reports/137_labereport.pdf', 0, NULL, NULL, '2019-05-21 11:59:59', '2019-05-21 12:00:01'),
(138, 139, 6, 'Blood Test', 'blood test note', 6, 67, 'storage/pdf/lab_reports/138_labereport.pdf', 0, NULL, NULL, '2019-05-21 12:00:29', '2019-05-21 12:00:31'),
(139, 140, 6, 'Blood Test', 'test of blood', 6, 67, 'storage/pdf/lab_reports/139_labereport.pdf', 0, NULL, NULL, '2019-05-21 12:01:39', '2019-05-21 12:01:41'),
(141, 142, 6, 'Blood Test', 'blood test', 6, 80, 'storage/pdf/lab_reports/141_labereport.pdf', 0, NULL, NULL, '2019-05-21 12:09:07', '2019-05-21 12:09:09'),
(143, 143, 4, 'CT-Scan', 'needed', 82, 80, 'storage/pdf/lab_reports/143_labereport.pdf', 0, NULL, NULL, '2019-05-21 18:16:12', '2019-05-21 18:16:14'),
(149, 146, 5, 'MRI', 'test note', 82, 80, 'storage/pdf/lab_reports/149_labereport.pdf', 0, NULL, NULL, '2019-05-21 18:30:45', '2019-05-21 18:30:47'),
(154, 149, 6, 'Blood Test', 'blood test', 82, 80, 'storage/pdf/lab_reports/154_labereport.pdf', 0, NULL, NULL, '2019-05-21 18:51:06', '2019-05-21 18:51:09'),
(165, 154, 6, 'Blood Test', 'blood test', 82, 80, 'storage/pdf/lab_reports/165_labereport.pdf', 0, NULL, NULL, '2019-05-22 11:05:15', '2019-05-22 11:05:17'),
(166, 154, 5, 'MRI', 'mri', 82, 80, 'storage/pdf/lab_reports/166_labereport.pdf', 0, NULL, NULL, '2019-05-22 11:05:17', '2019-05-22 11:05:19'),
(167, 154, 4, 'CT-Scan', 'today', 82, 80, 'storage/pdf/lab_reports/167_labereport.pdf', 0, NULL, NULL, '2019-05-22 11:05:19', '2019-05-22 11:05:22'),
(168, 157, 6, 'Blood Test', 'needed today', 82, 80, 'storage/pdf/lab_reports/168_labereport.pdf', 0, NULL, NULL, '2019-05-22 11:08:15', '2019-05-22 11:08:18'),
(169, 141, 6, 'Blood Test', 'test of blood', 6, 67, 'storage/pdf/lab_reports/169_labereport.pdf', 0, NULL, NULL, '2019-05-22 12:58:00', '2019-05-22 12:58:04'),
(170, 158, 4, 'CT-Scan', 'xray report type', 6, 67, 'storage/pdf/lab_reports/170_labereport.pdf', 0, NULL, NULL, '2019-05-22 13:01:12', '2019-05-22 13:01:14'),
(171, 159, 5, 'MRI', 'nedetueie', 82, 80, 'storage/pdf/lab_reports/171_labereport.pdf', 0, NULL, NULL, '2019-05-22 16:04:40', '2019-05-22 16:04:44'),
(172, 160, 4, 'CT-Scan', 'hshshs', 6, 67, 'storage/pdf/lab_reports/172_labereport.pdf', 0, NULL, NULL, '2019-05-22 17:32:33', '2019-05-22 17:32:37'),
(173, 160, 0, 'Select lab test', 'hshshs', 6, 67, 'storage/pdf/lab_reports/173_labereport.pdf', 0, NULL, NULL, '2019-05-22 17:32:37', '2019-05-22 17:32:39'),
(174, 160, 6, 'Blood Test', 'hshshd', 6, 67, 'storage/pdf/lab_reports/174_labereport.pdf', 0, NULL, NULL, '2019-05-22 17:32:39', '2019-05-22 17:32:41'),
(175, 160, 0, 'Select lab test', 'hshhshs', 6, 67, 'storage/pdf/lab_reports/175_labereport.pdf', 0, NULL, NULL, '2019-05-22 17:32:41', '2019-05-22 17:32:43'),
(176, 160, 4, 'CT-Scan', 'hshshdhd', 6, 67, 'storage/pdf/lab_reports/176_labereport.pdf', 0, NULL, NULL, '2019-05-22 17:32:43', '2019-05-22 17:32:45'),
(177, 162, 4, 'CT-Scan', 'needed', 82, 80, 'storage/pdf/lab_reports/177_labereport.pdf', 0, NULL, NULL, '2019-05-22 18:53:01', '2019-05-22 18:53:03'),
(178, 164, 5, 'MRI', 'test note', 82, 67, 'storage/pdf/lab_reports/178_labereport.pdf', 0, NULL, NULL, '2019-05-23 10:46:20', '2019-05-23 10:46:24'),
(179, 165, 5, 'MRI', 'test note', 6, 67, 'storage/pdf/lab_reports/179_labereport.pdf', 0, NULL, NULL, '2019-05-23 10:50:19', '2019-05-23 10:50:22'),
(180, 166, 5, 'MRI', 'test note', 6, 67, 'storage/pdf/lab_reports/180_labereport.pdf', 0, NULL, NULL, '2019-05-23 10:50:44', '2019-05-23 10:50:46'),
(192, 167, 4, 'CT-Scan', 'sh', 6, 67, 'storage/pdf/lab_reports/192_labereport.pdf', 0, NULL, NULL, '2019-05-23 06:58:57', '2019-05-23 06:58:59');

-- --------------------------------------------------------

--
-- Table structure for table `visit_prescription`
--

CREATE TABLE `visit_prescription` (
  `id` int(10) NOT NULL,
  `emr_id` int(10) DEFAULT NULL,
  `medicine_id` varchar(255) NOT NULL,
  `medicine_name` varchar(255) DEFAULT NULL,
  `dose` varchar(255) NOT NULL,
  `unit` varchar(255) DEFAULT NULL,
  `duration` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `strength` varchar(255) DEFAULT NULL,
  `frequency` varchar(255) DEFAULT NULL,
  `frequency2` varchar(255) DEFAULT NULL,
  `frequency3` varchar(255) DEFAULT NULL,
  `patient_id` int(10) DEFAULT NULL,
  `doctor_id` int(10) DEFAULT NULL,
  `status` int(10) DEFAULT '0' COMMENT '0: Prescribed  1: Bought',
  `result` text,
  `pdf` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `visit_prescription`
--

INSERT INTO `visit_prescription` (`id`, `emr_id`, `medicine_id`, `medicine_name`, `dose`, `unit`, `duration`, `route`, `strength`, `frequency`, `frequency2`, `frequency3`, `patient_id`, `doctor_id`, `status`, `result`, `pdf`, `created_at`, `updated_at`) VALUES
(41, 64, '\"8,6\"', '\"aaa\"', '1', NULL, '1 week', 'oral', 'no', NULL, NULL, NULL, 6, 7, NULL, NULL, NULL, '2019-05-11 15:18:08', '2019-05-11 15:18:08'),
(42, 64, '\"12\"', '\"aaa\"', '3', NULL, '3 days', 'iv', 'not', NULL, NULL, NULL, 6, 7, NULL, NULL, NULL, '2019-05-11 15:18:08', '2019-05-11 15:18:08'),
(43, 65, '\"8,6\"', '\"aaa\"', '1', NULL, '1 week', 'oral', 'no', NULL, NULL, NULL, 6, 7, NULL, NULL, NULL, '2019-05-11 15:20:14', '2019-05-11 15:20:14'),
(44, 65, '\"12\"', '\"aaa\"', '3', NULL, '3 days', 'iv', 'not', NULL, NULL, NULL, 6, 7, NULL, NULL, NULL, '2019-05-11 15:20:14', '2019-05-11 15:20:14'),
(45, 66, '\"8,6\"', '\"aaa\"', '1', NULL, '1 week', 'oral', 'no', NULL, NULL, NULL, 6, 7, NULL, NULL, NULL, '2019-05-11 15:22:42', '2019-05-11 15:22:42'),
(46, 66, '\"12\"', '\"aaa\"', '3', NULL, '3 days', 'iv', 'not', NULL, NULL, NULL, 6, 7, NULL, NULL, NULL, '2019-05-11 15:22:42', '2019-05-11 15:22:42'),
(47, 67, '\"5\"', '\"ADOL cold\"', 'Mg', NULL, '10', 'oral', '1-1-1', NULL, NULL, NULL, 16, 12, NULL, NULL, NULL, '2019-05-11 18:50:36', '2019-05-11 18:50:36'),
(48, 68, '\"14\"', '\"Tuser\"', 'Mg', NULL, '5', 'oral', '55', NULL, NULL, NULL, 16, 12, NULL, NULL, NULL, '2019-05-13 00:07:44', '2019-05-13 00:07:44'),
(49, 74, '\"5,5,3,8,9\"', '\"ADOL cold,ADOL cold,ABILIFY,ANDRIOL1,ARTANE\"', 'ml/g', NULL, '4', '1-1-1', '2', NULL, NULL, NULL, 68, 69, NULL, NULL, NULL, '2019-05-13 15:11:52', '2019-05-13 15:11:52'),
(50, 75, '\"7,3\"', '\"ALGAPHAN,ABILIFY\"', 'Mg', NULL, 'week', 'oral', '2', NULL, NULL, NULL, 6, 67, 0, NULL, NULL, '2019-05-14 11:18:32', '2019-05-14 11:18:32'),
(51, 76, '\"14,7\"', '\"Tuser,ALGAPHAN\"', 'Mg', NULL, 'week', 'oral', '2', NULL, NULL, NULL, 6, 67, 0, NULL, NULL, '2019-05-14 16:13:25', '2019-05-14 16:13:25'),
(52, 77, '\"14,7\"', '\"Tuser,ALGAPHAN\"', 'Mg', NULL, 'week', 'oral', '2', NULL, NULL, NULL, 6, 67, 0, NULL, NULL, '2019-05-14 16:14:25', '2019-05-14 16:14:25'),
(53, 79, '\"14,7\"', '\"Tuser,ALGAPHAN\"', 'Mg', NULL, 'week', 'oral', '2', NULL, NULL, NULL, 6, 67, 0, NULL, NULL, '2019-05-14 16:20:52', '2019-05-14 16:20:52'),
(54, 80, '\"14,7\"', '\"Tuser,ALGAPHAN\"', 'Mg', NULL, 'week', 'oral', '2', NULL, NULL, NULL, 6, 67, 0, NULL, 'storage/pdf/prescription/54_labereport.pdf', '2019-05-14 16:22:23', '2019-05-14 16:22:25'),
(55, 99, '\"7,7,5\"', '\"ALGAPHAN,ALGAPHAN,ADOL cold\"', 'Mg', NULL, '10', 'mouth', '3-1-2', NULL, NULL, NULL, 71, 72, 0, NULL, NULL, '2019-05-17 14:56:55', '2019-05-17 14:56:55'),
(56, 100, '\"7,7,5\"', '\"ALGAPHAN,ALGAPHAN,ADOL cold\"', 'Mg', NULL, '10', 'mouth', '3-1-2', NULL, NULL, NULL, 71, 72, 0, NULL, NULL, '2019-05-17 14:57:03', '2019-05-17 14:57:03'),
(57, 103, '\"7\"', '\"ALGAPHAN\"', 'Mg', NULL, '6-7-5', 'mouth', '2', NULL, NULL, NULL, 71, 72, 0, NULL, NULL, '2019-05-17 15:29:59', '2019-05-17 15:29:59'),
(58, 104, '\"7\"', '\"ALGAPHAN\"', 'Mg', NULL, '6-7-5', 'mouth', '2', NULL, NULL, NULL, 71, 72, 0, NULL, NULL, '2019-05-17 15:31:27', '2019-05-17 15:31:27'),
(59, 110, '\"7\"', '\"ALGAPHAN\"', 'Mg', NULL, '7', '5', '2', NULL, NULL, NULL, 71, 72, 0, NULL, NULL, '2019-05-17 15:41:21', '2019-05-17 15:41:21'),
(60, 119, '\"14\"', '\"Tuser\"', 'Mg', NULL, 'week', 'oral', '2', NULL, NULL, NULL, 6, 67, 0, NULL, NULL, '2019-05-20 16:47:59', '2019-05-20 16:47:59'),
(61, 120, '\"14\"', '\"Tuser\"', 'Mg', NULL, 'week', 'oral', '2', NULL, NULL, NULL, 6, 67, 0, NULL, NULL, '2019-05-20 16:50:17', '2019-05-20 16:50:17'),
(62, 121, '\"14\"', '\"Tuser\"', 'Mg', NULL, 'week', 'oral', '2', NULL, NULL, NULL, 6, 67, 0, NULL, NULL, '2019-05-20 16:51:03', '2019-05-20 16:51:03'),
(63, 122, '\"14\"', '\"Tuser\"', 'Mg', NULL, 'week', 'oral', '2', NULL, NULL, NULL, 6, 67, 0, NULL, NULL, '2019-05-20 16:52:30', '2019-05-20 16:52:30'),
(64, 123, '\"14\"', '\"Tuser\"', 'Mg', NULL, 'week', 'oral', '2', NULL, NULL, NULL, 6, 67, 0, NULL, NULL, '2019-05-20 16:52:53', '2019-05-20 16:52:53'),
(65, 124, '\"14\"', '\"Tuser\"', 'Mg', NULL, 'week', 'oral', '2', NULL, NULL, NULL, 6, 67, 0, NULL, 'storage/pdf/prescription/65_labereport.pdf', NULL, NULL),
(66, 125, '\"14\"', '\"Tuser\"', 'Mg', NULL, 'week', 'oral', '2', NULL, NULL, NULL, 6, 67, 0, NULL, 'storage/pdf/prescription/66_labereport.pdf', NULL, NULL),
(67, 126, '\"14\"', '\"Tuser\"', 'Mg', NULL, 'week', 'oral', '2', NULL, NULL, NULL, 6, 67, 0, NULL, 'storage/pdf/prescription/67_labereport.pdf', NULL, NULL),
(68, 127, '\"14\"', '\"Tuser\"', 'mcg', NULL, 'week', 'oral', '2', NULL, NULL, NULL, 6, 67, 0, NULL, 'storage/pdf/prescription/68_labereport.pdf', NULL, NULL),
(69, 129, '\"6\"', '\"AKINETON\"', 'Mg', NULL, 'hh', '5', '2', NULL, NULL, NULL, 82, 80, 0, NULL, 'storage/pdf/prescription/69_labereport.pdf', NULL, NULL),
(71, 130, '\"\\\"8,6\\\"\"', '\"\\\"ANDRIOL1,AKINETON\\\"\"', 'Mg', NULL, '6', 'daily', '1', NULL, NULL, NULL, 82, 80, 0, NULL, 'storage/pdf/prescription/71_labereport.pdf', NULL, NULL),
(73, 133, '\"\\\"14\\\"\"', '\"\\\"Tuser\\\"\"', 'ml/g', NULL, '50', 'oral', '1', NULL, NULL, NULL, 76, 75, 0, NULL, 'storage/pdf/prescription/73_labereport.pdf', NULL, NULL),
(74, 136, '\"14\"', '\"Tuser\"', 'mcg', NULL, 'week', 'oral', '2', NULL, NULL, NULL, 6, 67, 0, NULL, NULL, '2019-05-21 11:58:51', '2019-05-21 11:58:51'),
(75, 137, '\"14\"', '\"Tuser\"', 'mcg', NULL, 'week', 'oral', '2', NULL, NULL, NULL, 6, 67, 0, NULL, NULL, '2019-05-21 11:59:03', '2019-05-21 11:59:03'),
(76, 138, '\"14\"', '\"Tuser\"', 'mcg', NULL, 'week', 'oral', '2', NULL, NULL, NULL, 6, 67, 0, NULL, NULL, '2019-05-21 12:00:01', '2019-05-21 12:00:01'),
(77, 139, '\"14\"', '\"Tuser\"', 'Mg', NULL, 'week', 'oral', '2', NULL, NULL, NULL, 6, 67, 0, NULL, NULL, '2019-05-21 12:00:31', '2019-05-21 12:00:31'),
(78, 140, '\"14\"', '\"Tuser\"', 'mcg', NULL, 'week', 'oral', '2', NULL, NULL, NULL, 6, 67, 0, NULL, NULL, '2019-05-21 12:01:41', '2019-05-21 12:01:41'),
(80, 142, '\"14,5,6\"', '\"Tuser,ADOL cold,AKINETON\"', 'ml/g', NULL, '6', 'every day', '1', NULL, NULL, NULL, 6, 80, 0, NULL, 'storage/pdf/prescription/80_labereport.pdf', '2019-05-21 12:09:09', '2019-05-21 12:09:16'),
(81, 143, '\"8,13,14\"', '\"ANDRIOL1,admin,Tuser\"', 'ml/g', NULL, '6 hrs', 'daily', '1-1-1', NULL, NULL, NULL, 82, 80, 0, NULL, NULL, '2019-05-21 18:16:16', '2019-05-21 18:16:16'),
(82, 144, '\"8,13,14\"', '\"ANDRIOL1,admin,Tuser\"', 'ml/g', NULL, '6 hrs', 'daily', '1-1-1', NULL, NULL, NULL, 82, 80, 0, NULL, NULL, '2019-05-21 18:16:27', '2019-05-21 18:16:27'),
(83, 145, '\"14\"', '\"Tuser\"', 'mcg', NULL, 'week', 'oral', '2', NULL, NULL, NULL, 82, 80, 0, NULL, NULL, '2019-05-21 18:26:53', '2019-05-21 18:26:53'),
(84, 146, '\"14\"', '\"Tuser\"', 'mcg', NULL, 'week', 'oral', '2', NULL, NULL, NULL, 82, 80, 0, NULL, NULL, '2019-05-21 18:30:47', '2019-05-21 18:30:47'),
(85, 147, '\"14\"', '\"Tuser\"', 'mcg', NULL, 'week', 'oral', '2', NULL, NULL, NULL, 82, 80, 0, NULL, NULL, '2019-05-21 18:32:24', '2019-05-21 18:32:24'),
(86, 148, '\"8,14,3\"', '\"ANDRIOL1,Tuser,ABILIFY\"', 'ml/g', NULL, '6 hr', 'daily', '1-1-1', NULL, NULL, NULL, 82, 80, 0, NULL, NULL, '2019-05-21 18:39:07', '2019-05-21 18:39:07'),
(87, 149, '\"8,14,3\"', '\"ANDRIOL1,Tuser,ABILIFY\"', 'ml/g', NULL, '6 hr', 'daily', '1-1-1', NULL, NULL, NULL, 82, 80, 0, NULL, NULL, '2019-05-21 18:51:13', '2019-05-21 18:51:13'),
(88, 150, '\"8,14,3\"', '\"ANDRIOL1,Tuser,ABILIFY\"', 'ml/g', NULL, '6 hr', 'daily', '1-1-1', NULL, NULL, NULL, 82, 80, 0, NULL, NULL, '2019-05-21 18:51:52', '2019-05-21 18:51:52'),
(89, 151, '\"14\"', '\"Tuser\"', 'mcg', NULL, 'week', 'oral', '2', NULL, NULL, NULL, 82, 80, 0, NULL, NULL, '2019-05-22 08:27:48', '2019-05-22 08:27:48'),
(90, 152, '\"14\"', '\"Tuser\"', 'mcg', NULL, 'week', 'oral', '2', NULL, NULL, NULL, 82, 80, 0, NULL, 'storage/pdf/prescription/90_labereport.pdf', '2019-05-22 08:28:44', '2019-05-22 08:28:47'),
(91, 155, '\"5,13,14,9\"', '\"ADOL cold,admin,Tuser,ARTANE\"', 'Mg', NULL, '2', 'daily', '1', NULL, NULL, NULL, 82, 80, 0, NULL, 'storage/pdf/prescription/91_labereport.pdf', '2019-05-22 11:04:17', '2019-05-22 11:04:19'),
(92, 157, '\"5,14\"', '\"ADOL cold,Tuser\"', 'mcg', NULL, '6', 'daily', '1', NULL, NULL, NULL, 82, 80, 0, NULL, 'storage/pdf/prescription/92_labereport.pdf', '2019-05-22 11:08:18', '2019-05-22 11:08:20'),
(93, 141, '\"14\"', '\"Tuser\"', 'mcg', NULL, 'week', 'oral', '2', NULL, NULL, NULL, 6, 67, 0, NULL, 'storage/pdf/prescription/93_labereport.pdf', '2019-05-22 12:58:04', '2019-05-22 12:58:06'),
(94, 141, '4', '\"ACTIVELLE\"', 'ml/g', NULL, '2 days', 'oral', '3', NULL, NULL, NULL, 6, 67, 0, NULL, 'storage/pdf/prescription/94_labereport.pdf', '2019-05-22 12:58:06', '2019-05-22 12:58:09'),
(95, 158, '\"5\"', '\"ADOL cold\"', 'Mg', NULL, 'week', 'iv', '2', NULL, NULL, NULL, 6, 67, 0, NULL, 'storage/pdf/prescription/95_labereport.pdf', '2019-05-22 13:01:14', '2019-05-22 13:01:16'),
(96, 159, '\"12\"', '\"AURORIX 300\"', 'Mg', NULL, '5', 'daily', '1-1-1', NULL, NULL, NULL, 82, 80, 0, NULL, 'storage/pdf/prescription/96_labereport.pdf', '2019-05-22 16:04:44', '2019-05-22 16:04:46'),
(97, 159, '\"14\"', '\"Tuser\"', 'ml/g', NULL, '6 ', 'alternate', '1-1', NULL, NULL, NULL, 82, 80, 0, NULL, 'storage/pdf/prescription/97_labereport.pdf', '2019-05-22 16:04:46', '2019-05-22 16:04:48'),
(98, NULL, '\"5,7,13,14\"', NULL, '3', 'mcg', '5', 'oral', NULL, '1', '1', '1', 78, 1, 0, NULL, NULL, '2019-05-22 16:26:43', '2019-05-22 16:26:43'),
(99, NULL, '\"4\"', NULL, '12', 'mg', '12', 'oral', NULL, '1', '2', '3', 78, 1, 0, NULL, NULL, '2019-05-22 16:27:04', '2019-05-22 16:27:04'),
(101, NULL, '\"4\"', NULL, '1', 'mg', '6', 'IV', NULL, 'Monring', 'Noon', 'Night', 6, 1, 0, NULL, NULL, '2019-05-22 17:16:17', '2019-05-22 17:16:17'),
(102, 160, '\"4\"', '\"ACTIVELLE\"', 'ml/g', NULL, '6', 'iv', 'morning ', NULL, NULL, NULL, 6, 67, 0, NULL, 'storage/pdf/prescription/102_labereport.pdf', '2019-05-22 17:32:45', '2019-05-22 17:32:47'),
(103, 162, '13', 'admin', 'admin', 'mg', '2', 'admin', 'fg', 'admin', 'admin', 'admin', 82, 1, 0, NULL, 'storage/pdf/lab_reports/103_labereport.pdf', '2019-05-22 18:53:03', '2019-05-23 08:50:03'),
(104, NULL, '14', 'Tuser', '11', 'mg', '11', '23', NULL, '11', '11', '11', 4, 1, 0, NULL, 'storage/pdf/lab_reports/104_labereport.pdf', '2019-05-23 08:50:53', '2019-05-23 08:50:56'),
(105, 164, '14', 'Tuser', 'mcg', 'mg', 'week', 'oral', NULL, '2', '2', '2', 82, 67, 0, NULL, 'storage/pdf/prescription/105_labereport.pdf', '2019-05-23 10:46:24', '2019-05-23 10:46:26'),
(106, 166, '14', 'Tuser', '3', 'mcg', 'week', 'oral', NULL, '11', '21', '31', 6, 67, 0, NULL, 'storage/pdf/prescription/106_labereport.pdf', '2019-05-23 10:50:46', '2019-05-23 10:50:48'),
(108, 167, '3', 'ABILIFY', '4', 'mcg', 'week', 'oral', NULL, '1', '2', '3', NULL, NULL, 0, NULL, 'storage/pdf/prescription/108_labereport.pdf', '2019-05-23 06:58:59', '2019-05-23 06:59:04'),
(109, 167, '14', 'Tuser', '120', 'Mg', '2 day', 'iv', NULL, '1', '0', '1', NULL, NULL, 0, NULL, 'storage/pdf/prescription/109_labereport.pdf', '2019-05-23 06:59:04', '2019-05-23 06:59:07'),
(110, NULL, '3', 'ABILIFY', 'aaa', 'mg', 'aaaa', 'aaa', NULL, '1', '1', '1', 4, 1, 0, NULL, NULL, '2019-05-24 09:00:36', '2019-05-24 09:00:36'),
(111, NULL, '3', 'ABILIFY', 'aaa', 'mg', 'aaaa', 'aaa', NULL, '1', '1', '1', 4, 1, 0, NULL, NULL, '2019-05-24 09:01:54', '2019-05-24 09:01:54'),
(112, NULL, '3', 'ABILIFY', 'aaa', 'mg', 'aaaa', 'aaa', NULL, '1', '1', '1', 4, 1, 0, NULL, NULL, '2019-05-24 09:02:24', '2019-05-24 09:02:24'),
(113, NULL, '3', 'ABILIFY', 'aaa', 'mg', 'aaaa', 'aaa', NULL, '1', '1', '1', 4, 1, 0, NULL, NULL, '2019-05-24 09:03:03', '2019-05-24 09:03:03'),
(114, NULL, '3', 'ABILIFY', 'aaa', 'mg', 'aaaa', 'aaa', NULL, '1', '1', '1', 4, 1, 0, NULL, NULL, '2019-05-24 09:03:22', '2019-05-24 09:03:22'),
(115, NULL, '3', 'ABILIFY', 'aaa', 'mg', 'aaaa', 'aaa', NULL, '1', '1', '1', 4, 1, 0, NULL, NULL, '2019-05-24 09:03:40', '2019-05-24 09:03:40'),
(116, NULL, '3', 'ABILIFY', 'aaa', 'mg', 'aaaa', 'aaa', NULL, '1', '1', '1', 4, 1, 0, NULL, NULL, '2019-05-24 09:03:51', '2019-05-24 09:03:51'),
(117, NULL, '3', 'ABILIFY', 'aaa', 'mg', 'aaaa', 'aaa', NULL, '1', '1', '1', 4, 1, 0, NULL, 'storage/pdf/lab_reports/117_labereport.pdf', '2019-05-24 09:04:29', '2019-05-24 09:04:32');

-- --------------------------------------------------------

--
-- Table structure for table `visit_referral`
--

CREATE TABLE `visit_referral` (
  `id` int(10) NOT NULL,
  `emr_id` int(10) DEFAULT NULL,
  `speciality_id` int(10) NOT NULL,
  `doctor_id` int(10) NOT NULL,
  `doctor_name` varchar(255) DEFAULT NULL,
  `speciality_name` varchar(255) DEFAULT NULL,
  `diagnosis` varchar(255) NOT NULL,
  `reason` varchar(255) NOT NULL,
  `pdf` varchar(255) DEFAULT NULL,
  `patient_id` int(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `visit_referral`
--

INSERT INTO `visit_referral` (`id`, `emr_id`, `speciality_id`, `doctor_id`, `doctor_name`, `speciality_name`, `diagnosis`, `reason`, `pdf`, `patient_id`, `created_at`, `updated_at`) VALUES
(45, 67, 5, 7, 'Raj', 'Anesthesiologist', 'test', 'test', NULL, 16, '2019-05-11 18:50:42', '2019-05-11 18:50:42'),
(46, 74, 8, 69, 'Aafrin', 'Gynecologist', 'fever\nfever Only\n', 'test Only', NULL, 68, '2019-05-13 15:11:54', '2019-05-13 15:11:54'),
(47, 75, 6, 12, 'Dr. Mohammed AlRowaily', 'Cardiologist', 'diabetes', 'best cardiologist', NULL, 6, '2019-05-14 11:18:34', '2019-05-14 11:18:34'),
(48, 80, 5, 49, 'Lorem Ipsum', 'Anesthesiologist', 'test', 'test', NULL, 6, '2019-05-14 16:22:26', '2019-05-14 16:22:26'),
(49, 124, 4, 30, 'Lorem Ipsum', 'Addiction psychiatrist', 'diabetes', 'best doctor', NULL, 6, '2019-05-20 16:53:41', '2019-05-20 16:53:41'),
(50, 125, 4, 30, 'Lorem Ipsum', 'Addiction psychiatrist', 'diabetes', 'best doctor', NULL, 6, '2019-05-20 16:54:07', '2019-05-20 16:54:07'),
(51, 126, 4, 30, 'Lorem Ipsum', 'Addiction psychiatrist', 'diabetes', 'best doctor', 'storage/pdf/referral/51_referral.pdf', 6, '2019-05-20 16:55:49', '2019-05-20 16:55:51'),
(52, 127, 6, 72, 'Aafrin', 'Cardiologist', 'tb', 'best', 'storage/pdf/referral/52_referral.pdf', 6, '2019-05-20 16:57:33', '2019-05-20 16:57:35'),
(54, 129, 4, 75, 'Dr. Testing', 'Addiction psychiatrist', 'test', 'test', 'storage/pdf/referral/54_referral.pdf', 82, '2019-05-20 17:50:50', '2019-05-20 17:50:52'),
(56, 130, 6, 72, 'Aafrin', 'Cardiologist', 'ofhsjs', 'if i am not available', 'storage/pdf/referral/56_referral.pdf', 82, '2019-05-20 17:58:52', '2019-05-20 17:58:54'),
(57, 132, 7, 9, 'Dr Raed Batania', 'Family medicine physician', 'fojdsjjs', 'bsshsks', 'storage/pdf/referral/57_referral.pdf', 82, '2019-05-20 18:09:11', '2019-05-20 18:09:13'),
(59, 133, 4, 30, 'Lorem Ipsum', 'Addiction psychiatrist', 'tt\n', 'hh', 'storage/pdf/referral/59_referral.pdf', 76, '2019-05-21 01:25:52', '2019-05-21 01:25:54'),
(61, 142, 6, 72, 'Aafrin', 'Cardiologist', 'needed', 'if not', 'storage/pdf/referral/61_referral.pdf', 6, '2019-05-21 12:09:19', '2019-05-21 12:09:21'),
(62, 152, 4, 75, 'Dr. Testing', 'Addiction psychiatrist', 'diagnosis', 'best doctor', 'storage/pdf/referral/62_referral.pdf', 82, '2019-05-22 08:28:50', '2019-05-22 08:28:52'),
(63, 156, 6, 72, 'Aafrin', 'Cardiologist', 'ner\n', 'ggg', 'storage/pdf/referral/63_referral.pdf', 82, '2019-05-22 11:06:50', '2019-05-22 11:06:53'),
(64, 157, 6, 80, 'Haya', 'Cardiologist', 'guvug', 'hfh ', 'storage/pdf/referral/64_referral.pdf', 82, '2019-05-22 11:08:22', '2019-05-22 11:08:24'),
(65, 141, 6, 72, 'Aafrin', 'Cardiologist', 'tb', 'best doctor ', 'storage/pdf/referral/65_referral.pdf', 6, '2019-05-22 12:58:11', '2019-05-22 12:58:14'),
(66, 158, 4, 75, 'Dr. Testing', 'Addiction psychiatrist', 'diabetes', 'best doctor', 'storage/pdf/referral/66_referral.pdf', 6, '2019-05-22 13:01:18', '2019-05-22 13:01:20'),
(67, 159, 6, 72, 'Aafrin', 'Cardiologist', 'hshs', 'nsns', 'storage/pdf/referral/67_referral.pdf', 82, '2019-05-22 16:04:51', '2019-05-22 16:04:53'),
(68, 160, 6, 72, 'Aafrin', 'Cardiologist', 'diagnosis Nissan here', 'reasoned 1', 'storage/pdf/referral/68_referral.pdf', 6, '2019-05-22 17:32:49', '2019-05-22 17:32:52'),
(69, 162, 6, 72, 'Aafrin', 'Cardiologist', 'nrgig', 'not available', 'storage/pdf/referral/69_referral.pdf', 82, '2019-05-22 18:53:08', '2019-05-22 18:53:10'),
(70, 164, 4, 75, 'Dr. Testing', 'Addiction psychiatrist', 'diagnosis', 'best doctor', 'storage/pdf/referral/70_referral.pdf', 82, '2019-05-23 10:46:28', '2019-05-23 10:46:31'),
(71, 166, 4, 75, 'Dr. Testing', 'Addiction psychiatrist', 'diagnosis', 'best doctor', 'storage/pdf/referral/71_referral.pdf', 6, '2019-05-23 10:50:50', '2019-05-23 10:50:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `api_services`
--
ALTER TABLE `api_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clinic`
--
ALTER TABLE `clinic`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctor_availability`
--
ALTER TABLE `doctor_availability`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctor_booking`
--
ALTER TABLE `doctor_booking`
  ADD PRIMARY KEY (`id`),
  ADD KEY `doctor_booking_patient_id_foreign` (`patient_id`),
  ADD KEY `doctor_booking_doctor_id_foreign` (`doctor_id`);

--
-- Indexes for table `doctor_booking_form`
--
ALTER TABLE `doctor_booking_form`
  ADD PRIMARY KEY (`id`),
  ADD KEY `doctor_booking_form_patient_id_foreign` (`patient_id`),
  ADD KEY `doctor_booking_form_doctor_id_foreign` (`doctor_id`);

--
-- Indexes for table `doctor_clinic`
--
ALTER TABLE `doctor_clinic`
  ADD PRIMARY KEY (`id`),
  ADD KEY `doctor_clinic_user_id_foreign` (`user_id`),
  ADD KEY `doctor_clinic_clinic_id_foreign` (`clinic_id`);

--
-- Indexes for table `doctor_education`
--
ALTER TABLE `doctor_education`
  ADD PRIMARY KEY (`id`),
  ADD KEY `doctor_education_user_id_foreign` (`user_id`);

--
-- Indexes for table `doctor_experience`
--
ALTER TABLE `doctor_experience`
  ADD PRIMARY KEY (`id`),
  ADD KEY `doctor_experience_user_id_foreign` (`user_id`);

--
-- Indexes for table `doctor_speciality`
--
ALTER TABLE `doctor_speciality`
  ADD PRIMARY KEY (`id`),
  ADD KEY `doctor_speciality_user_id_foreign` (`user_id`),
  ADD KEY `doctor_speciality_speciality_id_foreign` (`speciality_id`);

--
-- Indexes for table `document_type`
--
ALTER TABLE `document_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emrdetails`
--
ALTER TABLE `emrdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `investigations`
--
ALTER TABLE `investigations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_admin_setting`
--
ALTER TABLE `master_admin_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medicines`
--
ALTER TABLE `medicines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notification_from_id_foreign` (`from_id`),
  ADD KEY `notification_to_id_foreign` (`to_id`);

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
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `prescriptions`
--
ALTER TABLE `prescriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `prescription_medicines`
--
ALTER TABLE `prescription_medicines`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `medicines_id` (`medicines_id`);

--
-- Indexes for table `refreal`
--
ALTER TABLE `refreal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indexes for table `speciality`
--
ALTER TABLE `speciality`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `videocall_room_detail`
--
ALTER TABLE `videocall_room_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `videocall_room_detail_from_id_foreign` (`from_id`),
  ADD KEY `videocall_room_detail_to_id_foreign` (`to_id`);

--
-- Indexes for table `visit_investigation`
--
ALTER TABLE `visit_investigation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `emr_id` (`emr_id`);

--
-- Indexes for table `visit_prescription`
--
ALTER TABLE `visit_prescription`
  ADD PRIMARY KEY (`id`),
  ADD KEY `emr_id` (`emr_id`);

--
-- Indexes for table `visit_referral`
--
ALTER TABLE `visit_referral`
  ADD PRIMARY KEY (`id`),
  ADD KEY `emr_id` (`emr_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `api_services`
--
ALTER TABLE `api_services`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `clinic`
--
ALTER TABLE `clinic`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `doctor_availability`
--
ALTER TABLE `doctor_availability`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `doctor_booking`
--
ALTER TABLE `doctor_booking`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=250;

--
-- AUTO_INCREMENT for table `doctor_booking_form`
--
ALTER TABLE `doctor_booking_form`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=162;

--
-- AUTO_INCREMENT for table `doctor_clinic`
--
ALTER TABLE `doctor_clinic`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `doctor_education`
--
ALTER TABLE `doctor_education`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `doctor_experience`
--
ALTER TABLE `doctor_experience`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `doctor_speciality`
--
ALTER TABLE `doctor_speciality`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;

--
-- AUTO_INCREMENT for table `document_type`
--
ALTER TABLE `document_type`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `emrdetails`
--
ALTER TABLE `emrdetails`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=168;

--
-- AUTO_INCREMENT for table `investigations`
--
ALTER TABLE `investigations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `master_admin_setting`
--
ALTER TABLE `master_admin_setting`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `medicines`
--
ALTER TABLE `medicines`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=968;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prescriptions`
--
ALTER TABLE `prescriptions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `prescription_medicines`
--
ALTER TABLE `prescription_medicines`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `refreal`
--
ALTER TABLE `refreal`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `speciality`
--
ALTER TABLE `speciality`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `videocall_room_detail`
--
ALTER TABLE `videocall_room_detail`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=528;

--
-- AUTO_INCREMENT for table `visit_investigation`
--
ALTER TABLE `visit_investigation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=193;

--
-- AUTO_INCREMENT for table `visit_prescription`
--
ALTER TABLE `visit_prescription`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT for table `visit_referral`
--
ALTER TABLE `visit_referral`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `doctor_booking`
--
ALTER TABLE `doctor_booking`
  ADD CONSTRAINT `doctor_booking_doctor_id_foreign` FOREIGN KEY (`doctor_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `doctor_booking_patient_id_foreign` FOREIGN KEY (`patient_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `doctor_booking_form`
--
ALTER TABLE `doctor_booking_form`
  ADD CONSTRAINT `doctor_booking_form_doctor_id_foreign` FOREIGN KEY (`doctor_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `doctor_booking_form_patient_id_foreign` FOREIGN KEY (`patient_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `notification`
--
ALTER TABLE `notification`
  ADD CONSTRAINT `notification_from_id_foreign` FOREIGN KEY (`from_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `notification_to_id_foreign` FOREIGN KEY (`to_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `videocall_room_detail`
--
ALTER TABLE `videocall_room_detail`
  ADD CONSTRAINT `videocall_room_detail_from_id_foreign` FOREIGN KEY (`from_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `videocall_room_detail_to_id_foreign` FOREIGN KEY (`to_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
