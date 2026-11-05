-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 05, 2026 at 04:55 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jobseeker_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_logs`
--

CREATE TABLE `activity_logs` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `action` varchar(100) NOT NULL,
  `details` varchar(255) DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activity_logs`
--

INSERT INTO `activity_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`) VALUES
(1, 8, 'User registered', 'ramon@example.com', '127.0.0.1', '2026-11-05 00:51:38'),
(2, 1, 'Staff account created', 'Maria Santos', '127.0.0.1', '2026-11-04 21:51:38'),
(3, 2, 'Job posted', 'Frontend Developer', '127.0.0.1', '2026-11-04 02:51:38'),
(4, 1, 'Job approved', 'Web Developer', '127.0.0.1', '2026-11-04 02:51:38'),
(5, 1, 'System backup completed', 'Automated', '127.0.0.1', '2026-11-03 02:51:38'),
(6, 1, 'User login', 'admin@jobseeker.com', '::1', '2026-11-05 03:18:42'),
(7, 1, 'User logout', '', '::1', '2026-11-05 03:19:52'),
(8, 9, 'User registered', 'earl@gmail.com', '::1', '2026-11-05 03:20:44'),
(9, 9, 'User logout', '', '::1', '2026-11-05 03:21:53'),
(10, 9, 'User login', 'earl@gmail.com', '::1', '2026-11-05 03:22:07'),
(11, 9, 'User logout', '', '::1', '2026-11-05 03:22:15'),
(12, 2, 'User login', 'maria@jobseeker.com', '::1', '2026-11-05 03:22:42'),
(13, 2, 'Job posted', 'Call Center', '::1', '2026-11-05 03:24:30'),
(14, 2, 'User logout', '', '::1', '2026-11-05 03:24:35'),
(15, 9, 'User login', 'earl@gmail.com', '::1', '2026-11-05 03:24:44'),
(16, 9, 'Application submitted', 'Call Center', '::1', '2026-11-05 03:25:45'),
(17, 9, 'User logout', '', '::1', '2026-11-05 03:25:48'),
(18, 2, 'User login', 'maria@jobseeker.com', '::1', '2026-11-05 03:26:05'),
(19, 2, 'Resume downloaded', 'application #13', '::1', '2026-11-05 03:26:59'),
(20, 2, 'Interview scheduled', 'Call Center', '::1', '2026-11-05 03:27:51'),
(21, 2, 'User logout', '', '::1', '2026-11-05 03:28:02'),
(22, 9, 'User login', 'earl@gmail.com', '::1', '2026-11-05 03:28:10'),
(23, 9, 'User logout', '', '::1', '2026-11-05 03:28:48'),
(24, 1, 'User login', 'admin@jobseeker.com', '::1', '2026-11-05 03:29:02'),
(25, 1, 'Job updated', 'Call Center', '::1', '2026-11-05 03:29:44'),
(26, 1, 'Job closed', 'Call Center', '::1', '2026-11-05 03:29:47'),
(27, 1, 'Job open', 'Call Center', '::1', '2026-11-05 03:29:49'),
(28, 1, 'Job closed', 'Call Center', '::1', '2026-11-05 03:29:57'),
(29, 1, 'Job open', 'Call Center', '::1', '2026-11-05 03:30:01'),
(30, 1, 'Staff account created', 'John Clyde', '::1', '2026-11-05 03:31:36'),
(31, 1, 'User logout', '', '::1', '2026-11-05 03:31:54'),
(32, 10, 'User login', 'clyde@gmail.com', '::1', '2026-11-05 03:32:09'),
(33, 10, 'Job posted', 'Virtual Assistant', '::1', '2026-11-05 03:35:06'),
(34, 10, 'User logout', '', '::1', '2026-11-05 03:35:24'),
(35, 9, 'User login', 'earl@gmail.com', '::1', '2026-11-05 03:35:44'),
(36, 9, 'Application submitted', 'Virtual Assistant', '::1', '2026-11-05 03:41:12'),
(37, 9, 'User logout', '', '::1', '2026-11-05 03:41:21'),
(38, 10, 'User login', 'clyde@gmail.com', '::1', '2026-11-05 03:41:44'),
(39, 10, 'Resume downloaded', 'application #14', '::1', '2026-11-05 03:42:41'),
(40, 10, 'User logout', '', '::1', '2026-11-05 03:43:48'),
(41, 11, 'User registered', 'dave@gmail.com', '::1', '2026-11-05 03:45:39'),
(42, 11, 'Profile updated', '', '::1', '2026-11-05 03:48:37'),
(43, 11, 'Application submitted', 'Call Center', '::1', '2026-11-05 03:50:15'),
(44, 11, 'User logout', '', '::1', '2026-11-05 03:50:28'),
(45, 10, 'User login', 'clyde@gmail.com', '::1', '2026-11-05 03:50:40'),
(46, 10, 'User logout', '', '::1', '2026-11-05 03:51:07'),
(47, 2, 'User login', 'maria@jobseeker.com', '::1', '2026-11-05 03:51:14'),
(48, 2, 'User logout', '', '::1', '2026-11-05 03:51:53'),
(49, 1, 'User login', 'admin@jobseeker.com', '::1', '2026-11-05 03:52:08'),
(50, 1, 'User logout', '', '::1', '2026-11-05 03:53:12');

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE `announcements` (
  `id` int(11) NOT NULL,
  `title` varchar(150) NOT NULL,
  `body` text NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `announcements`
--

INSERT INTO `announcements` (`id`, `title`, `body`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'Career Fair 2026', 'Join our virtual career fair on December 5. Over 40 companies are hiring!', 2, '2026-11-03 02:51:38', '2026-11-05 02:51:38'),
(2, 'Resume Tips Webinar', 'Free webinar on writing a winning resume this Friday at 3 PM.', 2, '2026-10-30 02:51:38', '2026-11-05 02:51:38');

-- --------------------------------------------------------

--
-- Table structure for table `applications`
--

CREATE TABLE `applications` (
  `id` int(11) NOT NULL,
  `job_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `cover_letter` text DEFAULT NULL,
  `resume` varchar(255) DEFAULT NULL,
  `status` enum('Pending','Under Review','Shortlisted','Interview','Rejected','Hired') NOT NULL DEFAULT 'Pending',
  `staff_notes` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `applications`
--

INSERT INTO `applications` (`id`, `job_id`, `user_id`, `cover_letter`, `resume`, `status`, `staff_notes`, `created_at`, `updated_at`) VALUES
(1, 1, 4, 'I would love to join your frontend team.', NULL, 'Under Review', NULL, '2026-10-23 02:00:00', '2026-11-05 02:51:38'),
(2, 2, 4, 'I have strong communication skills.', NULL, 'Under Review', NULL, '2026-10-22 02:00:00', '2026-11-05 02:51:38'),
(3, 7, 4, 'Interested in this support role.', NULL, 'Under Review', NULL, '2026-10-21 02:00:00', '2026-11-05 02:51:38'),
(4, 4, 4, 'I have helpdesk experience.', NULL, 'Shortlisted', NULL, '2026-10-20 02:00:00', '2026-11-05 02:51:38'),
(5, 3, 4, 'I also do basic design work.', NULL, 'Pending', NULL, '2026-10-19 02:00:00', '2026-11-05 02:51:38'),
(6, 1, 5, 'Please consider my application.', NULL, 'Shortlisted', NULL, '2026-10-22 03:00:00', '2026-11-05 02:51:38'),
(7, 3, 5, 'Eager to grow as a designer.', NULL, 'Interview', NULL, '2026-10-21 03:00:00', '2026-11-05 02:51:38'),
(8, 4, 6, 'Experienced IT professional.', NULL, 'Interview', NULL, '2026-10-20 03:00:00', '2026-11-05 02:51:38'),
(9, 5, 7, 'Looking for a web role.', NULL, 'Rejected', NULL, '2026-10-19 03:00:00', '2026-11-05 02:51:38'),
(10, 1, 8, 'Frontend is my passion.', NULL, 'Under Review', NULL, '2026-10-24 03:00:00', '2026-11-05 02:51:38'),
(11, 6, 6, 'Marketing is a great fit for my skills.', NULL, 'Hired', NULL, '2026-10-10 03:00:00', '2026-11-05 02:51:38'),
(12, 2, 7, 'Fast learner and team player.', NULL, 'Pending', NULL, '2026-10-26 03:00:00', '2026-11-05 02:51:38'),
(13, 15, 9, 'i want this job', 'b24bd152342b8781cff62b44.docx', 'Interview', NULL, '2026-11-05 03:25:43', '2026-11-05 03:27:49'),
(14, 16, 9, 'willing to learn', '02e195f216d960488f9c3366.pdf', 'Pending', NULL, '2026-11-05 03:41:10', '2026-11-05 03:41:10'),
(15, 15, 11, 'i am college degree', 'b9b3e8d984c536d04bacdda9.pdf', 'Pending', NULL, '2026-11-05 03:50:13', '2026-11-05 03:50:13');

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `industry` varchar(100) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `website` varchar(150) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `name`, `industry`, `location`, `website`, `description`, `created_at`, `updated_at`) VALUES
(1, 'TechSolutions Inc.', 'IT & Software', 'Manila', 'https://example.com', 'Software house building web and mobile products.', '2026-11-05 02:51:38', '2026-11-05 02:51:38'),
(2, 'Global Call Center', 'BPO', 'Cebu', 'https://example.com', 'Customer experience and outsourcing provider.', '2026-11-05 02:51:38', '2026-11-05 02:51:38'),
(3, 'Creative Hub', 'Design', 'Davao', 'https://example.com', 'Design and branding studio.', '2026-11-05 02:51:38', '2026-11-05 02:51:38'),
(4, 'NexTech Solutions', 'IT & Software', 'Manila', 'https://example.com', 'Managed IT services and support.', '2026-11-05 02:51:38', '2026-11-05 02:51:38'),
(5, 'Bright Media', 'Marketing', 'Quezon City', 'https://example.com', 'Digital marketing agency.', '2026-11-05 02:51:38', '2026-11-05 02:51:38'),
(6, 'HealthFirst Clinic', 'Healthcare', 'Cebu', 'https://example.com', 'Multi-specialty community clinic.', '2026-11-05 02:51:38', '2026-11-05 02:51:38');

-- --------------------------------------------------------

--
-- Table structure for table `interviews`
--

CREATE TABLE `interviews` (
  `id` int(11) NOT NULL,
  `application_id` int(11) NOT NULL,
  `scheduled_at` datetime NOT NULL,
  `location` varchar(200) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `interviews`
--

INSERT INTO `interviews` (`id`, `application_id`, `scheduled_at`, `location`, `notes`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 7, '2026-11-12 10:00:00', 'Creative Hub Office, Davao', 'Bring your portfolio.', 1, '2026-11-05 02:51:38', '2026-11-05 02:51:38'),
(2, 8, '2026-11-14 14:00:00', 'Zoom (link will be emailed)', 'Technical interview.', 2, '2026-11-05 02:51:38', '2026-11-05 02:51:38'),
(3, 13, '2026-12-02 00:27:00', 'Pampanga', 'big brew caffe', 2, '2026-11-05 03:27:49', '2026-11-05 03:27:49');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `posted_by` int(11) DEFAULT NULL,
  `title` varchar(150) NOT NULL,
  `description` text NOT NULL,
  `requirements` text DEFAULT NULL,
  `location` varchar(100) NOT NULL,
  `job_type` enum('Full Time','Part Time','Contract','Internship') NOT NULL DEFAULT 'Full Time',
  `salary_min` int(11) DEFAULT NULL,
  `salary_max` int(11) DEFAULT NULL,
  `status` enum('open','closed','draft') NOT NULL DEFAULT 'open',
  `is_featured` tinyint(1) NOT NULL DEFAULT 0,
  `deadline` date DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `company_id`, `category_id`, `posted_by`, `title`, `description`, `requirements`, `location`, `job_type`, `salary_min`, `salary_max`, `status`, `is_featured`, `deadline`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 2, 'Frontend Developer', 'We are looking for a skilled Frontend Developer to join our growing team. You will build responsive interfaces and work closely with designers and backend engineers.', '2+ years of experience in React or Vue\nStrong HTML, CSS and JavaScript\nBasic understanding of UI/UX', 'Manila', 'Full Time', 30000, 50000, 'open', 1, '2027-03-31', '2026-10-20 01:00:00', '2026-11-05 02:51:38'),
(2, 2, 4, 3, 'Customer Service Representative', 'Handle inbound customer inquiries via phone and chat for our international clients. Training provided.', 'Good English communication skills\nWilling to work shifting schedules\nHigh school graduate or higher', 'Cebu', 'Full Time', 18000, 25000, 'open', 1, '2027-02-28', '2026-10-18 01:00:00', '2026-11-05 02:51:38'),
(3, 3, 3, 1, 'Graphic Designer', 'Create engaging visuals for brands across print and digital campaigns.', 'Portfolio of previous work\nProficient in Photoshop and Illustrator\nCreative mindset', 'Davao', 'Full Time', 20000, 30000, 'open', 1, '2027-04-15', '2026-10-15 01:00:00', '2026-11-05 02:51:38'),
(4, 4, 1, 2, 'IT Support Specialist', 'Provide first and second-level technical support to internal users and clients.', 'Knowledge of Windows and networking basics\nGood troubleshooting skills\nCertification is a plus', 'Manila', 'Full Time', 22000, 35000, 'open', 1, '2027-03-15', '2026-10-12 01:00:00', '2026-11-05 02:51:38'),
(5, 1, 1, 2, 'Web Developer', 'Develop and maintain PHP/MySQL web applications for our clients.', 'Experience with PHP and MySQL\nFamiliar with Bootstrap\nKnowledge of Git', 'Manila', 'Full Time', 30000, 50000, 'open', 0, '2027-03-20', '2026-10-10 01:00:00', '2026-11-05 02:51:38'),
(6, 5, 2, 1, 'Marketing Assistant', 'Support campaign planning, social media and content creation.', 'Degree in Marketing or related field\nStrong writing skills\nFamiliar with social media tools', 'Quezon City', 'Full Time', 18000, 25000, 'open', 0, '2027-02-15', '2026-10-08 01:00:00', '2026-11-05 02:51:38'),
(7, 2, 4, 3, 'Customer Support Specialist', 'Support chat and email customers for a global e-commerce client.', 'Excellent communication skills\nPrior BPO experience preferred', 'Cebu', 'Part Time', 16000, 25000, 'open', 0, '2027-03-01', '2026-10-05 01:00:00', '2026-11-05 02:51:38'),
(8, 6, 6, 1, 'Clinic Nurse', 'Provide patient care and assist physicians in daily clinic operations.', 'Licensed nurse\nAt least 1 year of clinical experience', 'Cebu', 'Full Time', 25000, 35000, 'open', 0, '2027-04-01', '2026-09-28 01:00:00', '2026-11-05 02:51:38'),
(9, 4, 8, 2, 'Network Engineer Intern', 'Assist our engineers with network installation and monitoring.', 'Currently enrolled in IT or Engineering\nBasic networking knowledge', 'Manila', 'Internship', 8000, 12000, 'open', 0, '2027-01-31', '2026-09-25 01:00:00', '2026-11-05 02:51:38'),
(10, 3, 3, 1, 'UI/UX Designer', 'Design intuitive web and mobile interfaces from research to hi-fi prototypes.', 'Figma proficiency\nPortfolio required', 'Davao', 'Contract', 35000, 55000, 'open', 0, '2027-03-10', '2026-09-20 01:00:00', '2026-11-05 02:51:38'),
(11, 5, 7, 1, 'Accounting Staff', 'Prepare financial records, reconcile accounts and assist with audits.', 'Accountancy graduate\nKnowledge of accounting software', 'Quezon City', 'Full Time', 22000, 30000, 'open', 0, '2027-02-20', '2026-09-15 01:00:00', '2026-11-05 02:51:38'),
(12, 1, 5, 2, 'Online English Tutor', 'Teach conversational English to students online.', 'Fluent English\nTeaching certificate is a plus', 'Manila', 'Part Time', 12000, 20000, 'open', 0, '2027-05-01', '2026-09-10 01:00:00', '2026-11-05 02:51:38'),
(13, 4, 1, 2, 'Junior Data Analyst', 'Clean, analyze and visualize data for business reports.', 'Excel and SQL basics\nAnalytical mindset', 'Manila', 'Full Time', 25000, 38000, 'draft', 0, '2027-04-30', '2026-10-25 01:00:00', '2026-11-05 02:51:38'),
(14, 2, 4, 3, 'Technical Support Agent (Expired)', 'Technical support role for a telecom client.', 'Good communication', 'Cebu', 'Full Time', 19000, 26000, 'closed', 0, '2026-09-01', '2026-08-01 01:00:00', '2026-11-05 03:16:18'),
(15, 1, 4, 2, 'Call Center', 'pls make sure send a resume', '2yrs graduate', 'Pampanga', 'Full Time', 20000, 20000, 'open', 0, '2026-11-05', '2026-11-05 03:24:30', '2026-11-05 03:30:01'),
(16, 4, 4, 10, 'Virtual Assistant', 'Graduated 4yrs course\r\n6 months BPO industry', 'dala ka isang papel tsaka kape', 'CLARK PAMPANGA', 'Full Time', 10000, 24000, 'open', 0, '2026-11-10', '2026-11-05 03:35:06', '2026-11-05 03:35:06');

-- --------------------------------------------------------

--
-- Table structure for table `job_categories`
--

CREATE TABLE `job_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_categories`
--

INSERT INTO `job_categories` (`id`, `name`, `created_at`) VALUES
(1, 'IT & Software', '2026-11-05 02:51:38'),
(2, 'Marketing', '2026-11-05 02:51:38'),
(3, 'Design', '2026-11-05 02:51:38'),
(4, 'Customer Service', '2026-11-05 02:51:38'),
(5, 'Education', '2026-11-05 02:51:38'),
(6, 'Healthcare', '2026-11-05 02:51:38'),
(7, 'Finance', '2026-11-05 02:51:38'),
(8, 'Engineering', '2026-11-05 02:51:38');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(150) NOT NULL,
  `message` text NOT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `user_id`, `title`, `message`, `is_read`, `created_at`) VALUES
(1, 4, 'Application under review', 'Your application for Frontend Developer is now Under Review.', 0, '2026-11-05 00:51:38'),
(2, 4, 'Shortlisted', 'You were shortlisted for IT Support Specialist.', 0, '2026-11-04 21:51:38'),
(3, 4, 'Welcome to JobSeeker', 'Complete your profile to get better job matches.', 1, '2026-11-02 02:51:38'),
(4, 2, 'New application', 'Juan Dela Cruz applied for Frontend Developer.', 0, '2026-11-04 02:51:38'),
(5, 1, 'System ready', 'JobSeeker has been installed successfully.', 0, '2026-11-04 02:51:38'),
(6, 9, 'Welcome to JobSeeker', 'Complete your profile and upload your resume to start applying.', 1, '2026-11-05 03:20:44'),
(7, 9, 'Application submitted', 'You applied for Call Center at TechSolutions Inc..', 1, '2026-11-05 03:25:43'),
(8, 2, 'New application', 'Earl John applied for Call Center.', 0, '2026-11-05 03:25:45'),
(9, 9, 'Interview scheduled', 'Interview for Call Center on Dec 02, 2026 12:27 AM at Pampanga.', 1, '2026-11-05 03:27:49'),
(10, 9, 'Application submitted', 'You applied for Virtual Assistant at NexTech Solutions.', 0, '2026-11-05 03:41:10'),
(11, 10, 'New application', 'Earl John applied for Virtual Assistant.', 0, '2026-11-05 03:41:12'),
(12, 11, 'Welcome to JobSeeker', 'Complete your profile and upload your resume to start applying.', 0, '2026-11-05 03:45:39'),
(13, 11, 'Application submitted', 'You applied for Call Center at TechSolutions Inc..', 0, '2026-11-05 03:50:13'),
(14, 2, 'New application', 'Dave Suarez applied for Call Center.', 0, '2026-11-05 03:50:15');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `id` int(11) NOT NULL,
  `email` varchar(150) NOT NULL,
  `token_hash` char(64) NOT NULL,
  `expires_at` datetime NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `saved_jobs`
--

CREATE TABLE `saved_jobs` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `job_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `saved_jobs`
--

INSERT INTO `saved_jobs` (`id`, `user_id`, `job_id`, `created_at`) VALUES
(1, 4, 3, '2026-11-05 02:51:38'),
(2, 4, 6, '2026-11-05 02:51:38'),
(3, 4, 10, '2026-11-05 02:51:38'),
(4, 5, 1, '2026-11-05 02:51:38'),
(5, 9, 2, '2026-11-05 03:21:39'),
(6, 9, 16, '2026-11-05 03:36:15'),
(7, 11, 15, '2026-11-05 03:49:18');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `company_id` int(11) DEFAULT NULL,
  `position` varchar(100) DEFAULT NULL,
  `department` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `user_id`, `company_id`, `position`, `department`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 'HR Officer', 'Human Resources', '2026-11-05 02:51:38', '2026-11-05 02:51:38'),
(2, 3, 2, 'Recruitment Specialist', 'Talent Acquisition', '2026-11-05 02:51:38', '2026-11-05 02:51:38'),
(3, 10, 4, 'Manager', 'Recruiter', '2026-11-05 03:31:36', '2026-11-05 03:31:36');

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE `system_settings` (
  `id` int(11) NOT NULL,
  `setting_key` varchar(80) NOT NULL,
  `setting_value` text DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `system_settings`
--

INSERT INTO `system_settings` (`id`, `setting_key`, `setting_value`, `updated_at`) VALUES
(1, 'site_name', 'JobSeeker', '2026-11-05 02:51:38'),
(2, 'contact_email', 'hello@jobseeker.com', '2026-11-05 02:51:38'),
(3, 'contact_phone', '+63 900 123 4567', '2026-11-05 02:51:38'),
(4, 'contact_address', 'Ayala Avenue, Makati City, Philippines', '2026-11-05 02:51:38'),
(5, 'email_notifications', '1', '2026-11-05 02:51:38'),
(6, 'allow_registration', '1', '2026-11-05 02:51:38'),
(7, 'jobs_per_page', '6', '2026-11-05 02:51:38');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `full_name` varchar(120) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('seeker','staff','admin') NOT NULL DEFAULT 'seeker',
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `failed_attempts` tinyint(4) NOT NULL DEFAULT 0,
  `locked_until` datetime DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `full_name`, `username`, `email`, `password`, `role`, `status`, `failed_attempts`, `locked_until`, `last_login`, `created_at`, `updated_at`) VALUES
(1, 'Alex Rivera', 'admin', 'admin@jobseeker.com', '$2b$10$GpoK2S9uqNHW4DVqikV3z.b3SgdoBedJ8Pz0mlc5tDLhG8Fnxyhea', 'admin', 'active', 0, NULL, '2026-11-05 11:52:08', '2026-01-05 01:00:00', '2026-11-05 03:52:08'),
(2, 'Maria Santos', 'maria', 'maria@jobseeker.com', '$2b$10$GpoK2S9uqNHW4DVqikV3z.b3SgdoBedJ8Pz0mlc5tDLhG8Fnxyhea', 'staff', 'active', 0, NULL, '2026-11-05 11:51:14', '2026-02-10 01:00:00', '2026-11-05 03:51:14'),
(3, 'Paolo Reyes', 'paolo', 'paolo@jobseeker.com', '$2b$10$GpoK2S9uqNHW4DVqikV3z.b3SgdoBedJ8Pz0mlc5tDLhG8Fnxyhea', 'staff', 'active', 0, NULL, NULL, '2026-03-12 01:00:00', '2026-11-05 02:51:38'),
(4, 'Juan Dela Cruz', 'juan', 'juan@example.com', '$2b$10$GpoK2S9uqNHW4DVqikV3z.b3SgdoBedJ8Pz0mlc5tDLhG8Fnxyhea', 'seeker', 'active', 0, NULL, NULL, '2026-03-20 02:00:00', '2026-11-05 02:51:38'),
(5, 'Ana Lopez', 'ana', 'ana@example.com', '$2b$10$GpoK2S9uqNHW4DVqikV3z.b3SgdoBedJ8Pz0mlc5tDLhG8Fnxyhea', 'seeker', 'active', 0, NULL, NULL, '2026-05-02 02:00:00', '2026-11-05 02:51:38'),
(6, 'Carlo Mendoza', 'carlo', 'carlo@example.com', '$2b$10$GpoK2S9uqNHW4DVqikV3z.b3SgdoBedJ8Pz0mlc5tDLhG8Fnxyhea', 'seeker', 'active', 0, NULL, NULL, '2026-06-18 02:00:00', '2026-11-05 02:51:38'),
(7, 'Liza Garcia', 'liza', 'liza@example.com', '$2b$10$GpoK2S9uqNHW4DVqikV3z.b3SgdoBedJ8Pz0mlc5tDLhG8Fnxyhea', 'seeker', 'active', 0, NULL, NULL, '2026-08-07 02:00:00', '2026-11-05 02:51:38'),
(8, 'Ramon Padilla', 'ramon', 'ramon@example.com', '$2b$10$GpoK2S9uqNHW4DVqikV3z.b3SgdoBedJ8Pz0mlc5tDLhG8Fnxyhea', 'seeker', 'active', 0, NULL, NULL, '2026-10-01 02:00:00', '2026-11-05 02:51:38'),
(9, 'Earl John', 'earl', 'earl@gmail.com', '$2y$10$tlso7mcRnIm5xUgbU/4kXuORP6rFChsHuCmifUzW5EDFV3gT/OnEm', 'seeker', 'active', 0, NULL, '2026-11-05 11:35:44', '2026-11-05 03:20:44', '2026-11-05 03:35:44'),
(10, 'John Clyde', 'clyde', 'clyde@gmail.com', '$2y$10$GmXrZQeoZIXbglR97PhM0OYCcxyz.13SSchv/44rNs1tf2l7gWKq2', 'staff', 'active', 0, NULL, '2026-11-05 11:50:40', '2026-11-05 03:31:36', '2026-11-05 03:50:40'),
(11, 'Dave Suarez', 'dave', 'dave@gmail.com', '$2y$10$FvkrkpgAAsgzNYiUgGIpe.KMzJpws9cUM1hJKSZajM7svC8ti/yG2', 'seeker', 'active', 0, NULL, NULL, '2026-11-05 03:45:39', '2026-11-05 03:45:39');

-- --------------------------------------------------------

--
-- Table structure for table `user_profiles`
--

CREATE TABLE `user_profiles` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `headline` varchar(150) DEFAULT NULL,
  `skills` varchar(255) DEFAULT NULL,
  `bio` text DEFAULT NULL,
  `profile_picture` varchar(255) DEFAULT NULL,
  `resume` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_profiles`
--

INSERT INTO `user_profiles` (`id`, `user_id`, `phone`, `location`, `headline`, `skills`, `bio`, `profile_picture`, `resume`, `created_at`, `updated_at`) VALUES
(1, 1, '0917 000 0001', 'Manila', 'System Administrator', '', 'Platform administrator.', NULL, NULL, '2026-11-05 02:51:38', '2026-11-05 02:51:38'),
(2, 2, '0917 000 0002', 'Manila', 'HR Officer', 'Recruitment', 'Recruitment lead at TechSolutions.', NULL, NULL, '2026-11-05 02:51:38', '2026-11-05 02:51:38'),
(3, 3, '0917 000 0003', 'Cebu', 'Recruitment Specialist', 'Recruitment', 'Handles BPO hiring.', NULL, NULL, '2026-11-05 02:51:38', '2026-11-05 02:51:38'),
(4, 4, '0917 111 2222', 'Manila', 'Junior Web Developer', 'HTML, CSS, JavaScript, PHP, React', 'Passionate about building clean, accessible websites.', NULL, NULL, '2026-11-05 02:51:38', '2026-11-05 02:51:38'),
(5, 5, '0917 111 3333', 'Cebu', 'Customer Support Associate', 'Communication, CRM', 'Friendly and detail-oriented.', NULL, NULL, '2026-11-05 02:51:38', '2026-11-05 02:51:38'),
(6, 6, '0917 111 4444', 'Davao', 'Graphic Designer', 'Photoshop, Illustrator, Figma', 'Creative designer with 3 years experience.', NULL, NULL, '2026-11-05 02:51:38', '2026-11-05 02:51:38'),
(7, 7, '0917 111 5555', 'Quezon City', 'Marketing Assistant', 'SEO, Social Media', 'Digital marketing graduate.', NULL, NULL, '2026-11-05 02:51:38', '2026-11-05 02:51:38'),
(8, 8, '0917 111 6666', 'Manila', 'IT Support Specialist', 'Networking, Windows, Helpdesk', 'Certified IT support technician.', NULL, NULL, '2026-11-05 02:51:38', '2026-11-05 02:51:38'),
(9, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-11-05 03:20:44', '2026-11-05 03:20:44'),
(10, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-11-05 03:31:36', '2026-11-05 03:31:36'),
(11, 11, '09462413354', 'Angeles,Pampanga', 'Senior Web', 'Barista', 'willing to learn', 'ea00a3c57fbb9b2c0f347a6b.jpg', '480534a0d46ef7bf08c2bc44.pdf', '2026-11-05 03:45:39', '2026-11-05 03:48:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_created` (`created_at`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_by` (`created_by`);

--
-- Indexes for table `applications`
--
ALTER TABLE `applications`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_job_user` (`job_id`,`user_id`),
  ADD KEY `idx_status` (`status`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_name` (`name`);

--
-- Indexes for table `interviews`
--
ALTER TABLE `interviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_when` (`scheduled_at`),
  ADD KEY `application_id` (`application_id`),
  ADD KEY `created_by` (`created_by`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_status` (`status`),
  ADD KEY `idx_location` (`location`),
  ADD KEY `idx_type` (`job_type`),
  ADD KEY `company_id` (`company_id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `posted_by` (`posted_by`);
ALTER TABLE `jobs` ADD FULLTEXT KEY `idx_search` (`title`,`description`);

--
-- Indexes for table `job_categories`
--
ALTER TABLE `job_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_read` (`user_id`,`is_read`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_email` (`email`),
  ADD KEY `idx_token` (`token_hash`);

--
-- Indexes for table `saved_jobs`
--
ALTER TABLE `saved_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_saved` (`user_id`,`job_id`),
  ADD KEY `job_id` (`job_id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `company_id` (`company_id`);

--
-- Indexes for table `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `setting_key` (`setting_key`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `idx_role` (`role`),
  ADD KEY `idx_status` (`status`);

--
-- Indexes for table `user_profiles`
--
ALTER TABLE `user_profiles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_logs`
--
ALTER TABLE `activity_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `announcements`
--
ALTER TABLE `announcements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `applications`
--
ALTER TABLE `applications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `interviews`
--
ALTER TABLE `interviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `job_categories`
--
ALTER TABLE `job_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `saved_jobs`
--
ALTER TABLE `saved_jobs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `user_profiles`
--
ALTER TABLE `user_profiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD CONSTRAINT `activity_logs_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `announcements`
--
ALTER TABLE `announcements`
  ADD CONSTRAINT `announcements_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `applications`
--
ALTER TABLE `applications`
  ADD CONSTRAINT `applications_ibfk_1` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `applications_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `interviews`
--
ALTER TABLE `interviews`
  ADD CONSTRAINT `interviews_ibfk_1` FOREIGN KEY (`application_id`) REFERENCES `applications` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `interviews_ibfk_2` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `jobs`
--
ALTER TABLE `jobs`
  ADD CONSTRAINT `jobs_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `jobs_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `job_categories` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `jobs_ibfk_3` FOREIGN KEY (`posted_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `saved_jobs`
--
ALTER TABLE `saved_jobs`
  ADD CONSTRAINT `saved_jobs_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `saved_jobs_ibfk_2` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `staff`
--
ALTER TABLE `staff`
  ADD CONSTRAINT `staff_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `staff_ibfk_2` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `user_profiles`
--
ALTER TABLE `user_profiles`
  ADD CONSTRAINT `user_profiles_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
