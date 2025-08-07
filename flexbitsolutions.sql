-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 07, 2025 at 09:32 PM
-- Server version: 9.1.0
-- PHP Version: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `flexbitsolutions`
--

-- --------------------------------------------------------

--
-- Table structure for table `basic_info`
--

DROP TABLE IF EXISTS `basic_info`;
CREATE TABLE IF NOT EXISTS `basic_info` (
  `location` varchar(50) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `contact_email` varchar(100) DEFAULT NULL,
  `contact_phone` varchar(50) DEFAULT NULL,
  `logo_url` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `basic_info`
--

INSERT INTO `basic_info` (`location`, `address`, `contact_email`, `contact_phone`, `logo_url`) VALUES
('Dhaka, Bangladesh', 'House #22, Road #4, Dhanmondi', 'contact@flexbit.com', '+8801234567890', 'images/logo.png');

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

DROP TABLE IF EXISTS `blog`;
CREATE TABLE IF NOT EXISTS `blog` (
  `blog_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(150) NOT NULL,
  `content` text NOT NULL,
  `author_id` int DEFAULT NULL,
  `published_date` date DEFAULT NULL,
  `status` enum('Draft','Published','Archived') DEFAULT 'Draft',
  PRIMARY KEY (`blog_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`blog_id`, `title`, `content`, `author_id`, `published_date`, `status`) VALUES
(1, 'Why Choose Laravel for Web Development?', 'Laravel is a powerful PHP framework...', 1, '2024-06-10', 'Published'),
(2, 'Top 5 UI/UX Tips for 2025', 'User experience is more important than ever...', 2, '2024-07-01', 'Draft');

-- --------------------------------------------------------

--
-- Table structure for table `careers`
--

DROP TABLE IF EXISTS `careers`;
CREATE TABLE IF NOT EXISTS `careers` (
  `career_id` int NOT NULL AUTO_INCREMENT,
  `job_title` varchar(150) NOT NULL,
  `department` varchar(100) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `employment_type` enum('Full-Time','Part-Time','Contract','Internship') DEFAULT 'Full-Time',
  `salary_range` varchar(100) DEFAULT NULL,
  `job_description` text NOT NULL,
  `requirements` text,
  `posted_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `closing_date` date DEFAULT NULL,
  `status` enum('Open','Closed','Paused') DEFAULT 'Open',
  PRIMARY KEY (`career_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `careers`
--

INSERT INTO `careers` (`career_id`, `job_title`, `department`, `location`, `employment_type`, `salary_range`, `job_description`, `requirements`, `posted_date`, `closing_date`, `status`) VALUES
(1, 'Full Stack Developer', 'Development', 'Onsite', 'Full-Time', '$2000 - $3000', 'We are looking for a full stack developer...', 'Experience in Laravel, Vue.js', '2025-08-07 11:27:33', '2025-01-01', 'Open'),
(2, 'Graphic Designer', 'Design', 'Dhaka', 'Full-Time', '$800 - $1200', 'Creative designer needed for web and mobile assets...', 'Proficiency in Adobe Suite', '2025-08-07 11:27:33', '2024-12-01', 'Open');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
CREATE TABLE IF NOT EXISTS `employees` (
  `employee_id` int NOT NULL AUTO_INCREMENT,
  `full_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `role` varchar(50) DEFAULT NULL,
  `department` varchar(50) DEFAULT NULL,
  `designation` varchar(50) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `date_joined` date DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`employee_id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`employee_id`, `full_name`, `email`, `role`, `department`, `designation`, `image`, `date_joined`, `is_active`) VALUES
(1, 'Md Samiul Islam', 'samiulislam@gmail.com', 'CEO', 'CEO', 'Sales Manager', 'images/samiulislam.jpg', '2022-01-15', 1),
(2, 'Jubayer Hossain', 'jubayer@gmail.com', 'Software Developer', 'IT', 'Software Developer', 'images/jubayer.jpg', '2023-03-22', 1),
(3, 'Shakib Islam', 'shakib@gmail.com', 'Graphic Designer', 'Marketing', 'Graphic Designer', 'images/shakib.jpg', '2021-10-01', 1),
(4, 'Raabi Islam', 'rabbiislam@gmail.com', 'HR', 'Human Resources', 'HR Executive', 'images/rabbi.jpg', '2020-07-30', 0),
(5, 'Tamim', 'tamim@gmail.com', 'Support', 'Customer Service', 'Support Agent', 'images/tamim.jpg', '2024-06-12', 1);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `portfolio`
--

DROP TABLE IF EXISTS `portfolio`;
CREATE TABLE IF NOT EXISTS `portfolio` (
  `portfolio_id` int NOT NULL AUTO_INCREMENT,
  `project_title` varchar(150) NOT NULL,
  `description` text,
  `client_id` int DEFAULT NULL,
  `completion_date` date DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `project_link` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`portfolio_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `portfolio`
--

INSERT INTO `portfolio` (`portfolio_id`, `project_title`, `description`, `client_id`, `completion_date`, `image_url`, `project_link`) VALUES
(1, 'E-commerce Website', 'An online shopping platform with payment integration.', 101, '2024-05-20', 'images/ecommerce.png', 'https://clientsite.com/project/ecommerce'),
(2, 'Company Profile Website', 'Static site for corporate profile.', 102, '2024-02-15', 'images/profile.png', 'https://clientsite.com/project/profile');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
CREATE TABLE IF NOT EXISTS `services` (
  `services_id` int DEFAULT NULL,
  `services_name` varchar(150) NOT NULL,
  `description` text,
  `technology` text,
  `price` decimal(10,2) DEFAULT NULL,
  `duration` varchar(50) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`services_id`, `services_name`, `description`, `technology`, `price`, `duration`, `image_url`) VALUES
(1, 'Web Development', 'Building responsive and modern websites', 'HTML, CSS, JS, Laravel', 1200.00, '2 months', 'images/web-dev.png'),
(2, 'Mobile App Development', 'Android and iOS native app development', 'Flutter, Dart, Firebase', 2500.00, '3 months', 'images/mobile-app.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
