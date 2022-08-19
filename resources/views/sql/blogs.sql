-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 19, 2022 at 12:19 PM
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
-- Database: `blogs`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.jpg',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `image`, `created_at`, `updated_at`) VALUES
(3, 'PHP', 'php', 'php-62b40c5de8057.jpg', '2022-06-23 00:46:54', '2022-06-23 00:46:54'),
(4, 'Laravel', 'laravel', 'laravel-62b40c6d11250.jpg', '2022-06-23 00:47:09', '2022-06-23 00:47:09'),
(5, 'Python', 'python', 'python-62b40c7ba50db.jpg', '2022-06-23 00:47:23', '2022-06-23 00:47:23'),
(6, 'HTML', 'html', 'html-62b40c8e3c939.jpg', '2022-06-23 00:47:42', '2022-06-23 00:47:42'),
(7, 'Css', 'css', 'css-62b40c9c10d30.jpg', '2022-06-23 00:47:56', '2022-06-23 00:47:56'),
(8, 'Wordpress', 'wordpress', 'wordpress-62b40cb9d9eca.jpg', '2022-06-23 00:48:26', '2022-06-23 00:48:26'),
(9, 'English', 'english', 'english-62b40cd8066e5.jpg', '2022-06-23 00:48:56', '2022-06-23 00:48:56'),
(10, 'Jquery', 'jquery', 'jquery-62b40cf5a9ee6.jpg', '2022-06-23 00:49:25', '2022-06-23 00:49:25');

-- --------------------------------------------------------

--
-- Table structure for table `category_post`
--

CREATE TABLE `category_post` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_post`
--

INSERT INTO `category_post` (`id`, `post_id`, `category_id`, `created_at`, `updated_at`) VALUES
(16, 10, 3, '2022-06-23 00:59:09', '2022-06-23 00:59:09'),
(17, 10, 4, '2022-06-23 00:59:09', '2022-06-23 00:59:09'),
(18, 10, 10, '2022-06-23 00:59:09', '2022-06-23 00:59:09'),
(21, 12, 7, '2022-06-23 01:19:05', '2022-06-23 01:19:05'),
(22, 12, 8, '2022-06-23 01:19:05', '2022-06-23 01:19:05'),
(23, 12, 9, '2022-06-23 01:19:05', '2022-06-23 01:19:05'),
(28, 15, 4, '2022-06-23 03:19:52', '2022-06-23 03:19:52'),
(29, 15, 5, '2022-06-23 03:19:52', '2022-06-23 03:19:52'),
(30, 16, 3, '2022-07-04 21:03:55', '2022-07-04 21:03:55'),
(31, 16, 4, '2022-07-04 21:03:55', '2022-07-04 21:03:55'),
(32, 16, 7, '2022-07-04 21:03:55', '2022-07-04 21:03:55'),
(33, 16, 8, '2022-07-04 21:03:55', '2022-07-04 21:03:55'),
(34, 16, 9, '2022-07-04 21:03:55', '2022-07-04 21:03:55'),
(35, 12, 10, '2022-07-05 20:45:31', '2022-07-05 20:45:31'),
(36, 17, 4, '2022-07-05 20:47:42', '2022-07-05 20:47:42'),
(37, 17, 5, '2022-07-05 20:47:42', '2022-07-05 20:47:42'),
(38, 17, 7, '2022-07-05 20:47:42', '2022-07-05 20:47:42'),
(39, 17, 9, '2022-07-05 20:47:42', '2022-07-05 20:47:42'),
(40, 18, 3, '2022-07-05 20:49:19', '2022-07-05 20:49:19'),
(41, 18, 5, '2022-07-05 20:49:19', '2022-07-05 20:49:19'),
(42, 18, 7, '2022-07-05 20:49:19', '2022-07-05 20:49:19'),
(43, 18, 9, '2022-07-05 20:49:19', '2022-07-05 20:49:19'),
(44, 15, 6, '2022-07-05 20:54:15', '2022-07-05 20:54:15'),
(45, 19, 3, '2022-07-05 20:56:43', '2022-07-05 20:56:43'),
(46, 19, 4, '2022-07-05 20:56:43', '2022-07-05 20:56:43'),
(47, 19, 5, '2022-07-05 20:56:43', '2022-07-05 20:56:43'),
(48, 19, 7, '2022-07-05 20:56:43', '2022-07-05 20:56:43'),
(49, 19, 8, '2022-07-05 20:56:43', '2022-07-05 20:56:43'),
(50, 20, 3, '2022-07-05 20:59:39', '2022-07-05 20:59:39'),
(51, 20, 7, '2022-07-05 20:59:39', '2022-07-05 20:59:39'),
(52, 20, 9, '2022-07-05 20:59:39', '2022-07-05 20:59:39'),
(53, 20, 10, '2022-07-05 20:59:39', '2022-07-05 20:59:39'),
(54, 21, 4, '2022-07-05 21:00:57', '2022-07-05 21:00:57'),
(55, 21, 5, '2022-07-05 21:00:57', '2022-07-05 21:00:57'),
(56, 21, 7, '2022-07-05 21:00:57', '2022-07-05 21:00:57'),
(57, 21, 8, '2022-07-05 21:00:57', '2022-07-05 21:00:57'),
(58, 21, 9, '2022-07-05 21:00:57', '2022-07-05 21:00:57');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

--
-- Dumping data for table `failed_jobs`
--

INSERT INTO `failed_jobs` (`id`, `uuid`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
(1, 'a532b753-206a-4b23-9d37-9960a754ddda', 'database', 'default', '{\"uuid\":\"a532b753-206a-4b23-9d37-9960a754ddda\",\"displayName\":\"App\\\\Notifications\\\\AuthorPostApproved\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:2;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:36:\\\"App\\\\Notifications\\\\AuthorPostApproved\\\":2:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Post\\\";s:2:\\\"id\\\";i:6;s:9:\\\"relations\\\";a:1:{i:0;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"0b30f269-d2de-4896-bbd8-baff3bdf821e\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 'Symfony\\Component\\Mailer\\Exception\\TransportException: Expected response code \"250\" but got an empty response. in C:\\xampp\\htdocs\\kit\\vendor\\symfony\\mailer\\Transport\\Smtp\\SmtpTransport.php:301\nStack trace:\n#0 C:\\xampp\\htdocs\\kit\\vendor\\symfony\\mailer\\Transport\\Smtp\\SmtpTransport.php(182): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->assertResponseCode(\'\', Array)\n#1 C:\\xampp\\htdocs\\kit\\vendor\\symfony\\mailer\\Transport\\Smtp\\SmtpTransport.php(235): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->executeCommand(\'MAIL FROM:<hell...\', Array)\n#2 C:\\xampp\\htdocs\\kit\\vendor\\symfony\\mailer\\Transport\\Smtp\\SmtpTransport.php(199): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->doMailFromCommand(\'hello@example.c...\')\n#3 C:\\xampp\\htdocs\\kit\\vendor\\symfony\\mailer\\Transport\\AbstractTransport.php(68): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->doSend(Object(Symfony\\Component\\Mailer\\SentMessage))\n#4 C:\\xampp\\htdocs\\kit\\vendor\\symfony\\mailer\\Transport\\Smtp\\SmtpTransport.php(136): Symfony\\Component\\Mailer\\Transport\\AbstractTransport->send(Object(Symfony\\Component\\Mailer\\SentMessage), Object(Symfony\\Component\\Mailer\\DelayedEnvelope))\n#5 C:\\xampp\\htdocs\\kit\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(521): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->send(Object(Symfony\\Component\\Mime\\Email), Object(Symfony\\Component\\Mailer\\DelayedEnvelope))\n#6 C:\\xampp\\htdocs\\kit\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(285): Illuminate\\Mail\\Mailer->sendSymfonyMessage(Object(Symfony\\Component\\Mime\\Email))\n#7 C:\\xampp\\htdocs\\kit\\vendor\\laravel\\framework\\src\\Illuminate\\Notifications\\Channels\\MailChannel.php(67): Illuminate\\Mail\\Mailer->send(Object(Illuminate\\Support\\HtmlString), Array, Object(Closure))\n#8 C:\\xampp\\htdocs\\kit\\vendor\\laravel\\framework\\src\\Illuminate\\Notifications\\NotificationSender.php(148): Illuminate\\Notifications\\Channels\\MailChannel->send(Object(App\\Models\\User), Object(App\\Notifications\\AuthorPostApproved))\n#9 C:\\xampp\\htdocs\\kit\\vendor\\laravel\\framework\\src\\Illuminate\\Notifications\\NotificationSender.php(106): Illuminate\\Notifications\\NotificationSender->sendToNotifiable(Object(App\\Models\\User), \'4c2b0acb-cc08-4...\', Object(App\\Notifications\\AuthorPostApproved), \'mail\')\n#10 C:\\xampp\\htdocs\\kit\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Notifications\\NotificationSender->Illuminate\\Notifications\\{closure}()\n#11 C:\\xampp\\htdocs\\kit\\vendor\\laravel\\framework\\src\\Illuminate\\Notifications\\NotificationSender.php(109): Illuminate\\Notifications\\NotificationSender->withLocale(NULL, Object(Closure))\n#12 C:\\xampp\\htdocs\\kit\\vendor\\laravel\\framework\\src\\Illuminate\\Notifications\\ChannelManager.php(54): Illuminate\\Notifications\\NotificationSender->sendNow(Object(Illuminate\\Database\\Eloquent\\Collection), Object(App\\Notifications\\AuthorPostApproved), Array)\n#13 C:\\xampp\\htdocs\\kit\\vendor\\laravel\\framework\\src\\Illuminate\\Notifications\\SendQueuedNotifications.php(104): Illuminate\\Notifications\\ChannelManager->sendNow(Object(Illuminate\\Database\\Eloquent\\Collection), Object(App\\Notifications\\AuthorPostApproved), Array)\n#14 C:\\xampp\\htdocs\\kit\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Notifications\\SendQueuedNotifications->handle(Object(Illuminate\\Notifications\\ChannelManager))\n#15 C:\\xampp\\htdocs\\kit\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#16 C:\\xampp\\htdocs\\kit\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#17 C:\\xampp\\htdocs\\kit\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#18 C:\\xampp\\htdocs\\kit\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(651): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#19 C:\\xampp\\htdocs\\kit\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#20 C:\\xampp\\htdocs\\kit\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Notifications\\SendQueuedNotifications))\n#21 C:\\xampp\\htdocs\\kit\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Notifications\\SendQueuedNotifications))\n#22 C:\\xampp\\htdocs\\kit\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#23 C:\\xampp\\htdocs\\kit\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(123): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Notifications\\SendQueuedNotifications), false)\n#24 C:\\xampp\\htdocs\\kit\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Notifications\\SendQueuedNotifications))\n#25 C:\\xampp\\htdocs\\kit\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Notifications\\SendQueuedNotifications))\n#26 C:\\xampp\\htdocs\\kit\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(125): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#27 C:\\xampp\\htdocs\\kit\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(69): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Notifications\\SendQueuedNotifications))\n#28 C:\\xampp\\htdocs\\kit\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#29 C:\\xampp\\htdocs\\kit\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(428): Illuminate\\Queue\\Jobs\\Job->fire()\n#30 C:\\xampp\\htdocs\\kit\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(378): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#31 C:\\xampp\\htdocs\\kit\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(172): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#32 C:\\xampp\\htdocs\\kit\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(130): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#33 C:\\xampp\\htdocs\\kit\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(114): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#34 C:\\xampp\\htdocs\\kit\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#35 C:\\xampp\\htdocs\\kit\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#36 C:\\xampp\\htdocs\\kit\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#37 C:\\xampp\\htdocs\\kit\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#38 C:\\xampp\\htdocs\\kit\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(651): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#39 C:\\xampp\\htdocs\\kit\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(136): Illuminate\\Container\\Container->call(Array)\n#40 C:\\xampp\\htdocs\\kit\\vendor\\symfony\\console\\Command\\Command.php(291): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#41 C:\\xampp\\htdocs\\kit\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#42 C:\\xampp\\htdocs\\kit\\vendor\\symfony\\console\\Application.php(998): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#43 C:\\xampp\\htdocs\\kit\\vendor\\symfony\\console\\Application.php(299): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#44 C:\\xampp\\htdocs\\kit\\vendor\\symfony\\console\\Application.php(171): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#45 C:\\xampp\\htdocs\\kit\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(102): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#46 C:\\xampp\\htdocs\\kit\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#47 C:\\xampp\\htdocs\\kit\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#48 {main}', '2022-06-23 00:23:40');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(37, 'default', '{\"uuid\":\"b5b6281d-2b2d-45ef-ba3f-97cdec69af92\",\"displayName\":\"App\\\\Notifications\\\\AuthorPostApproved\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:1;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:36:\\\"App\\\\Notifications\\\\AuthorPostApproved\\\":2:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Post\\\";s:2:\\\"id\\\";i:15;s:9:\\\"relations\\\";a:1:{i:0;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"0e91e4db-8db6-43cb-991f-45b6ef03a763\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1656989426, 1656989426),
(38, 'default', '{\"uuid\":\"aff376cd-7fc1-4ac6-8519-5989a02dd784\",\"displayName\":\"App\\\\Notifications\\\\NewPostNotiry\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:29:\\\"Illuminate\\\\Support\\\\Collection\\\":2:{s:8:\\\"\\u0000*\\u0000items\\\";a:1:{i:0;O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:23:\\\"freelancer369@gmail.com\\\";}}}s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewPostNotiry\\\":2:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Post\\\";s:2:\\\"id\\\";i:15;s:9:\\\"relations\\\";a:1:{i:0;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"78537698-c233-4670-acab-085e8d0cbdd5\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1656989426, 1656989426),
(39, 'default', '{\"uuid\":\"a421ee9a-7c2e-4fd1-8e66-00107392c550\",\"displayName\":\"App\\\\Notifications\\\\NewPostNotiry\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:29:\\\"Illuminate\\\\Support\\\\Collection\\\":2:{s:8:\\\"\\u0000*\\u0000items\\\";a:1:{i:0;O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:16:\\\"farahd@gmail.com\\\";}}}s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewPostNotiry\\\":2:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Post\\\";s:2:\\\"id\\\";i:15;s:9:\\\"relations\\\";a:1:{i:0;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"39b1c49f-3353-479c-8925-371d308f5bbe\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1656989426, 1656989426),
(40, 'default', '{\"uuid\":\"6d6bf058-b49a-4994-bbe5-4d1b5460ae1c\",\"displayName\":\"App\\\\Notifications\\\\NewPostNotiry\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:29:\\\"Illuminate\\\\Support\\\\Collection\\\":2:{s:8:\\\"\\u0000*\\u0000items\\\";a:1:{i:0;O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:29:\\\"freelancerfarhad369@gmail.com\\\";}}}s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewPostNotiry\\\":2:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Post\\\";s:2:\\\"id\\\";i:15;s:9:\\\"relations\\\";a:1:{i:0;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"8919f0b6-c54f-43fe-9698-e95d2d6bb61d\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1656989426, 1656989426),
(41, 'default', '{\"uuid\":\"9293d593-4635-48c2-97f9-14a392777a54\",\"displayName\":\"App\\\\Notifications\\\\NewPostNotiry\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:29:\\\"Illuminate\\\\Support\\\\Collection\\\":2:{s:8:\\\"\\u0000*\\u0000items\\\";a:1:{i:0;O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:24:\\\"freelancers369@gmail.com\\\";}}}s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewPostNotiry\\\":2:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Post\\\";s:2:\\\"id\\\";i:15;s:9:\\\"relations\\\";a:1:{i:0;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"5e922508-ac99-4ec2-858a-25a070964e74\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1656989426, 1656989426),
(42, 'default', '{\"uuid\":\"cf1940df-2c1b-44f5-8c1c-3be5c1dfa498\",\"displayName\":\"App\\\\Notifications\\\\AuthorPostApproved\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:2;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:36:\\\"App\\\\Notifications\\\\AuthorPostApproved\\\":2:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Post\\\";s:2:\\\"id\\\";i:15;s:9:\\\"relations\\\";a:1:{i:0;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"0c49e484-d897-47d7-9f66-2f0d68fa2416\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1656989672, 1656989672),
(43, 'default', '{\"uuid\":\"12492e9b-1f02-4dd8-9c8d-35db74b35a62\",\"displayName\":\"App\\\\Notifications\\\\NewPostNotiry\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:29:\\\"Illuminate\\\\Support\\\\Collection\\\":2:{s:8:\\\"\\u0000*\\u0000items\\\";a:1:{i:0;O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:23:\\\"freelancer369@gmail.com\\\";}}}s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewPostNotiry\\\":2:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Post\\\";s:2:\\\"id\\\";i:15;s:9:\\\"relations\\\";a:1:{i:0;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"56d54a63-8546-4556-8237-1f173a250d32\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1656989673, 1656989673),
(44, 'default', '{\"uuid\":\"d59ad54b-0eef-47c9-ab78-75d72f02d001\",\"displayName\":\"App\\\\Notifications\\\\NewPostNotiry\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:29:\\\"Illuminate\\\\Support\\\\Collection\\\":2:{s:8:\\\"\\u0000*\\u0000items\\\";a:1:{i:0;O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:16:\\\"farahd@gmail.com\\\";}}}s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewPostNotiry\\\":2:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Post\\\";s:2:\\\"id\\\";i:15;s:9:\\\"relations\\\";a:1:{i:0;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"98ad3e23-c8ad-4248-9438-e0239b1eda31\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1656989673, 1656989673),
(45, 'default', '{\"uuid\":\"bc6a0182-06f1-4c99-b2e7-bec75f504d44\",\"displayName\":\"App\\\\Notifications\\\\NewPostNotiry\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:29:\\\"Illuminate\\\\Support\\\\Collection\\\":2:{s:8:\\\"\\u0000*\\u0000items\\\";a:1:{i:0;O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:29:\\\"freelancerfarhad369@gmail.com\\\";}}}s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewPostNotiry\\\":2:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Post\\\";s:2:\\\"id\\\";i:15;s:9:\\\"relations\\\";a:1:{i:0;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"af7a76ac-dd6f-400a-8c73-9017dc81caed\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1656989673, 1656989673),
(46, 'default', '{\"uuid\":\"0b7ff347-be98-497b-a5cf-986ac6fd255a\",\"displayName\":\"App\\\\Notifications\\\\NewPostNotiry\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:29:\\\"Illuminate\\\\Support\\\\Collection\\\":2:{s:8:\\\"\\u0000*\\u0000items\\\";a:1:{i:0;O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:24:\\\"freelancers369@gmail.com\\\";}}}s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewPostNotiry\\\":2:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Post\\\";s:2:\\\"id\\\";i:15;s:9:\\\"relations\\\";a:1:{i:0;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"c1c4de75-e848-46bc-8309-9368ad6c1ec1\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1656989673, 1656989673),
(47, 'default', '{\"uuid\":\"0d58d962-175e-4db9-b611-a635cb6be73c\",\"displayName\":\"App\\\\Notifications\\\\AuthorPostApproved\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:2;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:36:\\\"App\\\\Notifications\\\\AuthorPostApproved\\\":2:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Post\\\";s:2:\\\"id\\\";i:15;s:9:\\\"relations\\\";a:1:{i:0;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"fcd7aa32-51d2-44f8-8f05-12359b19957b\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1656989783, 1656989783),
(48, 'default', '{\"uuid\":\"a43e6fc4-42d5-4dd9-afcb-5fd6293e6bd7\",\"displayName\":\"App\\\\Notifications\\\\NewPostNotiry\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:29:\\\"Illuminate\\\\Support\\\\Collection\\\":2:{s:8:\\\"\\u0000*\\u0000items\\\";a:1:{i:0;O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:23:\\\"freelancer369@gmail.com\\\";}}}s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewPostNotiry\\\":2:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Post\\\";s:2:\\\"id\\\";i:15;s:9:\\\"relations\\\";a:1:{i:0;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"b4bc8dc2-945e-4d5f-b6eb-2409ed7a09e5\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1656989783, 1656989783),
(49, 'default', '{\"uuid\":\"85ca6d6a-38a6-4aa4-939d-1521d005eb21\",\"displayName\":\"App\\\\Notifications\\\\NewPostNotiry\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:29:\\\"Illuminate\\\\Support\\\\Collection\\\":2:{s:8:\\\"\\u0000*\\u0000items\\\";a:1:{i:0;O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:16:\\\"farahd@gmail.com\\\";}}}s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewPostNotiry\\\":2:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Post\\\";s:2:\\\"id\\\";i:15;s:9:\\\"relations\\\";a:1:{i:0;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"be10fa7f-012d-4d0c-9767-dee19f043a99\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1656989783, 1656989783),
(50, 'default', '{\"uuid\":\"c7b78929-a34f-4197-8393-b6d5f95ab53b\",\"displayName\":\"App\\\\Notifications\\\\NewPostNotiry\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:29:\\\"Illuminate\\\\Support\\\\Collection\\\":2:{s:8:\\\"\\u0000*\\u0000items\\\";a:1:{i:0;O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:29:\\\"freelancerfarhad369@gmail.com\\\";}}}s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewPostNotiry\\\":2:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Post\\\";s:2:\\\"id\\\";i:15;s:9:\\\"relations\\\";a:1:{i:0;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"a9930d70-ef3d-47aa-a57d-2cca77f3b2d5\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1656989783, 1656989783),
(51, 'default', '{\"uuid\":\"b6da6bda-aa6e-405c-86d1-5ed61e5a2535\",\"displayName\":\"App\\\\Notifications\\\\NewPostNotiry\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:29:\\\"Illuminate\\\\Support\\\\Collection\\\":2:{s:8:\\\"\\u0000*\\u0000items\\\";a:1:{i:0;O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:24:\\\"freelancers369@gmail.com\\\";}}}s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewPostNotiry\\\":2:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Post\\\";s:2:\\\"id\\\";i:15;s:9:\\\"relations\\\";a:1:{i:0;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"f6b34f94-95b8-4d5c-93bf-7c167c6462ff\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1656989783, 1656989783),
(52, 'default', '{\"uuid\":\"d5a25267-34c1-4fbd-8211-96116a6b21d3\",\"displayName\":\"App\\\\Notifications\\\\AuthorPostApproved\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:2;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:36:\\\"App\\\\Notifications\\\\AuthorPostApproved\\\":2:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Post\\\";s:2:\\\"id\\\";i:15;s:9:\\\"relations\\\";a:1:{i:0;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"10249a52-4455-455a-b658-8c8dd5193d7a\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1656990191, 1656990191),
(53, 'default', '{\"uuid\":\"7c5441b5-e55f-4991-8d18-eb6a51eb8175\",\"displayName\":\"App\\\\Notifications\\\\NewPostNotiry\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:29:\\\"Illuminate\\\\Support\\\\Collection\\\":2:{s:8:\\\"\\u0000*\\u0000items\\\";a:1:{i:0;O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:23:\\\"freelancer369@gmail.com\\\";}}}s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewPostNotiry\\\":2:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Post\\\";s:2:\\\"id\\\";i:15;s:9:\\\"relations\\\";a:1:{i:0;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"f15ef6ae-4242-427f-af42-79d7a96aebb4\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1656990191, 1656990191),
(54, 'default', '{\"uuid\":\"6e92d83f-2546-49ef-a34f-c1415a564cce\",\"displayName\":\"App\\\\Notifications\\\\NewPostNotiry\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:29:\\\"Illuminate\\\\Support\\\\Collection\\\":2:{s:8:\\\"\\u0000*\\u0000items\\\";a:1:{i:0;O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:16:\\\"farahd@gmail.com\\\";}}}s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewPostNotiry\\\":2:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Post\\\";s:2:\\\"id\\\";i:15;s:9:\\\"relations\\\";a:1:{i:0;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"c1e876a8-0a7e-4eea-b009-add74bdb0c71\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1656990191, 1656990191),
(55, 'default', '{\"uuid\":\"35dab11f-0261-431f-950d-e22c548f8362\",\"displayName\":\"App\\\\Notifications\\\\NewPostNotiry\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:29:\\\"Illuminate\\\\Support\\\\Collection\\\":2:{s:8:\\\"\\u0000*\\u0000items\\\";a:1:{i:0;O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:29:\\\"freelancerfarhad369@gmail.com\\\";}}}s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewPostNotiry\\\":2:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Post\\\";s:2:\\\"id\\\";i:15;s:9:\\\"relations\\\";a:1:{i:0;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"01294dde-852e-46fc-82cc-cfcd17fc1805\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1656990191, 1656990191),
(56, 'default', '{\"uuid\":\"3d55f26a-6576-4384-90cc-feb62a1a6f9e\",\"displayName\":\"App\\\\Notifications\\\\NewPostNotiry\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:29:\\\"Illuminate\\\\Support\\\\Collection\\\":2:{s:8:\\\"\\u0000*\\u0000items\\\";a:1:{i:0;O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:24:\\\"freelancers369@gmail.com\\\";}}}s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewPostNotiry\\\":2:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Post\\\";s:2:\\\"id\\\";i:15;s:9:\\\"relations\\\";a:1:{i:0;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"67929385-b85a-41b8-b254-930e45945ce1\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1656990191, 1656990191),
(57, 'default', '{\"uuid\":\"4a92d798-e5d7-4ef1-8822-f852705c2f28\",\"displayName\":\"App\\\\Notifications\\\\NewUser\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:1;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:25:\\\"App\\\\Notifications\\\\NewUser\\\":2:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Post\\\";s:2:\\\"id\\\";i:16;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"42ad0404-f09d-4a4e-af6c-55ccb854fa8e\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1656990235, 1656990235),
(58, 'default', '{\"uuid\":\"c38d964a-0684-44ba-a2f0-ecb6f8643f68\",\"displayName\":\"App\\\\Notifications\\\\AuthorPostApproved\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:2;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:36:\\\"App\\\\Notifications\\\\AuthorPostApproved\\\":2:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Post\\\";s:2:\\\"id\\\";i:16;s:9:\\\"relations\\\";a:1:{i:0;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"48b815c0-c692-4f59-acc2-f89779218b3f\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1656990249, 1656990249),
(59, 'default', '{\"uuid\":\"ce18538f-41c2-43d1-a61b-7d8b73348e7e\",\"displayName\":\"App\\\\Notifications\\\\NewPostNotiry\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:29:\\\"Illuminate\\\\Support\\\\Collection\\\":2:{s:8:\\\"\\u0000*\\u0000items\\\";a:1:{i:0;O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:23:\\\"freelancer369@gmail.com\\\";}}}s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewPostNotiry\\\":2:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Post\\\";s:2:\\\"id\\\";i:16;s:9:\\\"relations\\\";a:1:{i:0;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"00fac454-606d-4ed9-9763-9c1e708dcdf8\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1656990249, 1656990249),
(60, 'default', '{\"uuid\":\"e00e30ec-8926-4ecb-93f4-570af8a6e5a8\",\"displayName\":\"App\\\\Notifications\\\\NewPostNotiry\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:29:\\\"Illuminate\\\\Support\\\\Collection\\\":2:{s:8:\\\"\\u0000*\\u0000items\\\";a:1:{i:0;O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:16:\\\"farahd@gmail.com\\\";}}}s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewPostNotiry\\\":2:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Post\\\";s:2:\\\"id\\\";i:16;s:9:\\\"relations\\\";a:1:{i:0;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"051e5799-cdbf-4013-833f-e6200d63eb37\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1656990249, 1656990249),
(61, 'default', '{\"uuid\":\"b10df23d-d299-4c1b-bc66-24f7434f9a24\",\"displayName\":\"App\\\\Notifications\\\\NewPostNotiry\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:29:\\\"Illuminate\\\\Support\\\\Collection\\\":2:{s:8:\\\"\\u0000*\\u0000items\\\";a:1:{i:0;O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:29:\\\"freelancerfarhad369@gmail.com\\\";}}}s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewPostNotiry\\\":2:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Post\\\";s:2:\\\"id\\\";i:16;s:9:\\\"relations\\\";a:1:{i:0;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"31b7d3f1-318e-4bbb-ac7c-7751877aafc7\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1656990249, 1656990249),
(62, 'default', '{\"uuid\":\"e0728bfd-2670-4c6e-aa34-c75e63f49eac\",\"displayName\":\"App\\\\Notifications\\\\NewPostNotiry\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:29:\\\"Illuminate\\\\Support\\\\Collection\\\":2:{s:8:\\\"\\u0000*\\u0000items\\\";a:1:{i:0;O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:24:\\\"freelancers369@gmail.com\\\";}}}s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewPostNotiry\\\":2:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Post\\\";s:2:\\\"id\\\";i:16;s:9:\\\"relations\\\";a:1:{i:0;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"d7c2556c-a6f7-4604-9533-3ed8a720f56a\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1656990249, 1656990249),
(63, 'default', '{\"uuid\":\"c679bbbf-88c5-4382-a275-d91f67fbe109\",\"displayName\":\"App\\\\Notifications\\\\AuthorPostApproved\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:2;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:36:\\\"App\\\\Notifications\\\\AuthorPostApproved\\\":2:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Post\\\";s:2:\\\"id\\\";i:16;s:9:\\\"relations\\\";a:1:{i:0;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"1c4f6dbe-293a-4b7d-94d7-47311a2e3182\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1656991089, 1656991089),
(64, 'default', '{\"uuid\":\"2f134fdd-6d9e-4624-9e6c-54487d9efbf7\",\"displayName\":\"App\\\\Notifications\\\\NewPostNotiry\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:29:\\\"Illuminate\\\\Support\\\\Collection\\\":2:{s:8:\\\"\\u0000*\\u0000items\\\";a:1:{i:0;O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:23:\\\"freelancer369@gmail.com\\\";}}}s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewPostNotiry\\\":2:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Post\\\";s:2:\\\"id\\\";i:16;s:9:\\\"relations\\\";a:1:{i:0;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"8b86ebe3-6ed5-4c85-91ed-e8290288ff31\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1656991089, 1656991089),
(65, 'default', '{\"uuid\":\"ec4b4bef-ad9b-411f-bfff-2cc87abcee39\",\"displayName\":\"App\\\\Notifications\\\\NewPostNotiry\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:29:\\\"Illuminate\\\\Support\\\\Collection\\\":2:{s:8:\\\"\\u0000*\\u0000items\\\";a:1:{i:0;O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:16:\\\"farahd@gmail.com\\\";}}}s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewPostNotiry\\\":2:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Post\\\";s:2:\\\"id\\\";i:16;s:9:\\\"relations\\\";a:1:{i:0;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"8217c4a9-d59c-44b2-9fbf-11501feeb503\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1656991089, 1656991089),
(66, 'default', '{\"uuid\":\"90d1783b-7708-4099-83a5-f4a9dcb1cca6\",\"displayName\":\"App\\\\Notifications\\\\NewPostNotiry\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:29:\\\"Illuminate\\\\Support\\\\Collection\\\":2:{s:8:\\\"\\u0000*\\u0000items\\\";a:1:{i:0;O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:29:\\\"freelancerfarhad369@gmail.com\\\";}}}s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewPostNotiry\\\":2:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Post\\\";s:2:\\\"id\\\";i:16;s:9:\\\"relations\\\";a:1:{i:0;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"04162cff-b6c7-4d18-bb3e-ec937d009f8e\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1656991089, 1656991089),
(67, 'default', '{\"uuid\":\"a8cdc36b-6343-4b92-b79c-4a7e0aa9264a\",\"displayName\":\"App\\\\Notifications\\\\NewPostNotiry\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:29:\\\"Illuminate\\\\Support\\\\Collection\\\":2:{s:8:\\\"\\u0000*\\u0000items\\\";a:1:{i:0;O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:24:\\\"freelancers369@gmail.com\\\";}}}s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewPostNotiry\\\":2:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Post\\\";s:2:\\\"id\\\";i:16;s:9:\\\"relations\\\";a:1:{i:0;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"68d72ae8-42a2-4506-8c22-bc361a2614d8\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1656991089, 1656991089),
(68, 'default', '{\"uuid\":\"bfb7eb7b-c5c4-40a8-85d5-efc30ec4ca1e\",\"displayName\":\"App\\\\Notifications\\\\AuthorPostApproved\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:2;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:36:\\\"App\\\\Notifications\\\\AuthorPostApproved\\\":2:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Post\\\";s:2:\\\"id\\\";i:16;s:9:\\\"relations\\\";a:1:{i:0;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"32e21345-791a-45ad-9b9a-9a55982bf11a\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1656991203, 1656991203),
(69, 'default', '{\"uuid\":\"e8a28eba-75ec-4ef8-bc01-3a6e96a3e4f2\",\"displayName\":\"App\\\\Notifications\\\\NewPostNotiry\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:29:\\\"Illuminate\\\\Support\\\\Collection\\\":2:{s:8:\\\"\\u0000*\\u0000items\\\";a:1:{i:0;O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:23:\\\"freelancer369@gmail.com\\\";}}}s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewPostNotiry\\\":2:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Post\\\";s:2:\\\"id\\\";i:16;s:9:\\\"relations\\\";a:1:{i:0;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"0e543151-fc33-463c-9cbb-68a76326b758\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1656991203, 1656991203),
(70, 'default', '{\"uuid\":\"7f031316-c976-4c8e-9eb2-344ccd4939d9\",\"displayName\":\"App\\\\Notifications\\\\NewPostNotiry\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:29:\\\"Illuminate\\\\Support\\\\Collection\\\":2:{s:8:\\\"\\u0000*\\u0000items\\\";a:1:{i:0;O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:16:\\\"farahd@gmail.com\\\";}}}s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewPostNotiry\\\":2:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Post\\\";s:2:\\\"id\\\";i:16;s:9:\\\"relations\\\";a:1:{i:0;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"072769a9-bc75-4183-9a64-90ead7dc25f2\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1656991203, 1656991203),
(71, 'default', '{\"uuid\":\"df873951-6339-4b2e-ad99-1c9b6107ee32\",\"displayName\":\"App\\\\Notifications\\\\NewPostNotiry\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:29:\\\"Illuminate\\\\Support\\\\Collection\\\":2:{s:8:\\\"\\u0000*\\u0000items\\\";a:1:{i:0;O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:29:\\\"freelancerfarhad369@gmail.com\\\";}}}s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewPostNotiry\\\":2:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Post\\\";s:2:\\\"id\\\";i:16;s:9:\\\"relations\\\";a:1:{i:0;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"d99ca5e9-f1af-4330-b893-b0afb1b53848\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1656991203, 1656991203),
(72, 'default', '{\"uuid\":\"58fb13c9-85ed-4b79-8073-bbd60fc70205\",\"displayName\":\"App\\\\Notifications\\\\NewPostNotiry\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:29:\\\"Illuminate\\\\Support\\\\Collection\\\":2:{s:8:\\\"\\u0000*\\u0000items\\\";a:1:{i:0;O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:24:\\\"freelancers369@gmail.com\\\";}}}s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewPostNotiry\\\":2:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Post\\\";s:2:\\\"id\\\";i:16;s:9:\\\"relations\\\";a:1:{i:0;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"78efa3ca-473f-48e8-8bc2-f6a62ca3f322\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1656991203, 1656991203),
(73, 'default', '{\"uuid\":\"c148394d-2a13-4cf1-af63-de4120d69b05\",\"displayName\":\"App\\\\Notifications\\\\AuthorPostApproved\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:2;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:36:\\\"App\\\\Notifications\\\\AuthorPostApproved\\\":2:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Post\\\";s:2:\\\"id\\\";i:15;s:9:\\\"relations\\\";a:1:{i:0;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"53bdecd3-8f48-48a2-a0ff-7421bf64e23b\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1656995098, 1656995098),
(74, 'default', '{\"uuid\":\"361a1f22-fca3-452b-8f84-5da7fe3c725f\",\"displayName\":\"App\\\\Notifications\\\\NewPostNotiry\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:29:\\\"Illuminate\\\\Support\\\\Collection\\\":2:{s:8:\\\"\\u0000*\\u0000items\\\";a:1:{i:0;O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:23:\\\"freelancer369@gmail.com\\\";}}}s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewPostNotiry\\\":2:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Post\\\";s:2:\\\"id\\\";i:15;s:9:\\\"relations\\\";a:1:{i:0;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"75dff114-fb06-486d-be6d-e57a28f5eed1\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1656995098, 1656995098),
(75, 'default', '{\"uuid\":\"9e97e2d5-9188-42b3-918a-f00aa51da04a\",\"displayName\":\"App\\\\Notifications\\\\NewPostNotiry\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:29:\\\"Illuminate\\\\Support\\\\Collection\\\":2:{s:8:\\\"\\u0000*\\u0000items\\\";a:1:{i:0;O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:16:\\\"farahd@gmail.com\\\";}}}s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewPostNotiry\\\":2:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Post\\\";s:2:\\\"id\\\";i:15;s:9:\\\"relations\\\";a:1:{i:0;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"95a40a44-2c43-4838-a815-23bb55cdeb19\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1656995098, 1656995098);
INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(76, 'default', '{\"uuid\":\"009f2853-1e33-4e8e-9398-97548a9eeee9\",\"displayName\":\"App\\\\Notifications\\\\NewPostNotiry\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:29:\\\"Illuminate\\\\Support\\\\Collection\\\":2:{s:8:\\\"\\u0000*\\u0000items\\\";a:1:{i:0;O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:29:\\\"freelancerfarhad369@gmail.com\\\";}}}s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewPostNotiry\\\":2:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Post\\\";s:2:\\\"id\\\";i:15;s:9:\\\"relations\\\";a:1:{i:0;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"823ab750-9b66-450a-9b8b-7b0b0367b015\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1656995098, 1656995098),
(77, 'default', '{\"uuid\":\"935c0930-984e-42e6-a917-f6174687ad17\",\"displayName\":\"App\\\\Notifications\\\\NewPostNotiry\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:29:\\\"Illuminate\\\\Support\\\\Collection\\\":2:{s:8:\\\"\\u0000*\\u0000items\\\";a:1:{i:0;O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:24:\\\"freelancers369@gmail.com\\\";}}}s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewPostNotiry\\\":2:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Post\\\";s:2:\\\"id\\\";i:15;s:9:\\\"relations\\\";a:1:{i:0;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"8f33cf95-bab7-49ef-b8e2-5e47abfaf037\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1656995098, 1656995098),
(78, 'default', '{\"uuid\":\"8eabedad-07a0-421f-aad3-efbe27da1259\",\"displayName\":\"App\\\\Notifications\\\\AuthorPostApproved\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:2;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:36:\\\"App\\\\Notifications\\\\AuthorPostApproved\\\":2:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Post\\\";s:2:\\\"id\\\";i:16;s:9:\\\"relations\\\";a:1:{i:0;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"eaf1af08-793a-42da-8aab-45ca104a3eee\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1657075321, 1657075321),
(79, 'default', '{\"uuid\":\"bd912b3f-fae2-4e45-8992-0373d486cbea\",\"displayName\":\"App\\\\Notifications\\\\NewPostNotiry\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:29:\\\"Illuminate\\\\Support\\\\Collection\\\":2:{s:8:\\\"\\u0000*\\u0000items\\\";a:1:{i:0;O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:23:\\\"freelancer369@gmail.com\\\";}}}s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewPostNotiry\\\":2:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Post\\\";s:2:\\\"id\\\";i:16;s:9:\\\"relations\\\";a:1:{i:0;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"f6bfbf12-6853-4791-9b0e-bb2a99d6f2fc\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1657075321, 1657075321),
(80, 'default', '{\"uuid\":\"0c3b94f3-c5de-4808-9559-d247c2487f0d\",\"displayName\":\"App\\\\Notifications\\\\NewPostNotiry\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:29:\\\"Illuminate\\\\Support\\\\Collection\\\":2:{s:8:\\\"\\u0000*\\u0000items\\\";a:1:{i:0;O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:16:\\\"farahd@gmail.com\\\";}}}s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewPostNotiry\\\":2:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Post\\\";s:2:\\\"id\\\";i:16;s:9:\\\"relations\\\";a:1:{i:0;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"3b245428-32d5-4055-92f1-92e46692e443\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1657075321, 1657075321),
(81, 'default', '{\"uuid\":\"3d9adfbf-90dc-4d79-b604-063f0c3f9ebe\",\"displayName\":\"App\\\\Notifications\\\\NewPostNotiry\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:29:\\\"Illuminate\\\\Support\\\\Collection\\\":2:{s:8:\\\"\\u0000*\\u0000items\\\";a:1:{i:0;O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:29:\\\"freelancerfarhad369@gmail.com\\\";}}}s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewPostNotiry\\\":2:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Post\\\";s:2:\\\"id\\\";i:16;s:9:\\\"relations\\\";a:1:{i:0;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"4b988b74-db9e-4fb0-94c0-42fe7ee3d7f6\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1657075321, 1657075321),
(82, 'default', '{\"uuid\":\"1767366d-0843-4efe-8f90-cdcbcbfbdbeb\",\"displayName\":\"App\\\\Notifications\\\\NewPostNotiry\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:29:\\\"Illuminate\\\\Support\\\\Collection\\\":2:{s:8:\\\"\\u0000*\\u0000items\\\";a:1:{i:0;O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:24:\\\"freelancers369@gmail.com\\\";}}}s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewPostNotiry\\\":2:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Post\\\";s:2:\\\"id\\\";i:16;s:9:\\\"relations\\\";a:1:{i:0;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"5ed09f76-0538-42ff-ac63-bac3778a14e4\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1657075321, 1657075321),
(83, 'default', '{\"uuid\":\"af92962a-097a-4946-9ecf-80942a4b5e01\",\"displayName\":\"App\\\\Notifications\\\\NewPostNotiry\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:29:\\\"Illuminate\\\\Support\\\\Collection\\\":2:{s:8:\\\"\\u0000*\\u0000items\\\";a:1:{i:0;O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:23:\\\"freelancer369@gmail.com\\\";}}}s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewPostNotiry\\\":2:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Post\\\";s:2:\\\"id\\\";i:17;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"75f30e97-0aeb-48b4-a1dc-02d2dc878edb\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1657075662, 1657075662),
(84, 'default', '{\"uuid\":\"f5d81662-e986-4ab4-94bf-776c558397b0\",\"displayName\":\"App\\\\Notifications\\\\NewPostNotiry\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:29:\\\"Illuminate\\\\Support\\\\Collection\\\":2:{s:8:\\\"\\u0000*\\u0000items\\\";a:1:{i:0;O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:16:\\\"farahd@gmail.com\\\";}}}s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewPostNotiry\\\":2:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Post\\\";s:2:\\\"id\\\";i:17;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"38421587-2051-4301-bc0b-a139717c831d\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1657075662, 1657075662),
(85, 'default', '{\"uuid\":\"d4951d8a-03ed-4d19-97b5-c4505cf3cdc0\",\"displayName\":\"App\\\\Notifications\\\\NewPostNotiry\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:29:\\\"Illuminate\\\\Support\\\\Collection\\\":2:{s:8:\\\"\\u0000*\\u0000items\\\";a:1:{i:0;O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:29:\\\"freelancerfarhad369@gmail.com\\\";}}}s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewPostNotiry\\\":2:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Post\\\";s:2:\\\"id\\\";i:17;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"c844aa57-f9f9-4586-8017-4910e8c0a3b0\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1657075662, 1657075662),
(86, 'default', '{\"uuid\":\"5d0d2577-68ad-4ae8-95b2-ca4d045af3da\",\"displayName\":\"App\\\\Notifications\\\\NewPostNotiry\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:29:\\\"Illuminate\\\\Support\\\\Collection\\\":2:{s:8:\\\"\\u0000*\\u0000items\\\";a:1:{i:0;O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:24:\\\"freelancers369@gmail.com\\\";}}}s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewPostNotiry\\\":2:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Post\\\";s:2:\\\"id\\\";i:17;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"39220e8f-b8c4-4441-bde5-7689de773abf\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1657075662, 1657075662),
(87, 'default', '{\"uuid\":\"4089b08a-4fea-4885-9d32-aa3ec2c88dde\",\"displayName\":\"App\\\\Notifications\\\\NewPostNotiry\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:29:\\\"Illuminate\\\\Support\\\\Collection\\\":2:{s:8:\\\"\\u0000*\\u0000items\\\";a:1:{i:0;O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:23:\\\"freelancer369@gmail.com\\\";}}}s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewPostNotiry\\\":2:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Post\\\";s:2:\\\"id\\\";i:18;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"3bd12ac7-ecc5-42d8-9e70-4c8844d90264\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1657075759, 1657075759),
(88, 'default', '{\"uuid\":\"c7da8f87-f91f-4a3e-930d-42e30ce7e4ca\",\"displayName\":\"App\\\\Notifications\\\\NewPostNotiry\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:29:\\\"Illuminate\\\\Support\\\\Collection\\\":2:{s:8:\\\"\\u0000*\\u0000items\\\";a:1:{i:0;O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:16:\\\"farahd@gmail.com\\\";}}}s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewPostNotiry\\\":2:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Post\\\";s:2:\\\"id\\\";i:18;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"01832bc0-4886-4037-b30c-a096f609fa8f\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1657075759, 1657075759),
(89, 'default', '{\"uuid\":\"15624bd6-26f5-4554-bb31-92f7ceb787f9\",\"displayName\":\"App\\\\Notifications\\\\NewPostNotiry\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:29:\\\"Illuminate\\\\Support\\\\Collection\\\":2:{s:8:\\\"\\u0000*\\u0000items\\\";a:1:{i:0;O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:29:\\\"freelancerfarhad369@gmail.com\\\";}}}s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewPostNotiry\\\":2:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Post\\\";s:2:\\\"id\\\";i:18;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"99322f5a-1d6d-4f4f-93a5-19a206d8f4cd\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1657075759, 1657075759),
(90, 'default', '{\"uuid\":\"78e22bca-0203-4283-8157-73e17133dc78\",\"displayName\":\"App\\\\Notifications\\\\NewPostNotiry\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:29:\\\"Illuminate\\\\Support\\\\Collection\\\":2:{s:8:\\\"\\u0000*\\u0000items\\\";a:1:{i:0;O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:24:\\\"freelancers369@gmail.com\\\";}}}s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewPostNotiry\\\":2:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Post\\\";s:2:\\\"id\\\";i:18;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"63c76487-20ac-4f13-9453-35b7216060a8\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1657075759, 1657075759),
(91, 'default', '{\"uuid\":\"4cdbaf68-9986-48a8-a825-cd659049e728\",\"displayName\":\"App\\\\Notifications\\\\NewUser\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:1;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:25:\\\"App\\\\Notifications\\\\NewUser\\\":2:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Post\\\";s:2:\\\"id\\\";i:19;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"636f1836-b890-4aa2-a871-230ef63172cd\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1657076203, 1657076203),
(92, 'default', '{\"uuid\":\"bde570b7-907c-4029-a799-73d3df02aac1\",\"displayName\":\"App\\\\Notifications\\\\AuthorPostApproved\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:2;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:36:\\\"App\\\\Notifications\\\\AuthorPostApproved\\\":2:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Post\\\";s:2:\\\"id\\\";i:15;s:9:\\\"relations\\\";a:1:{i:0;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"304da4c2-aa92-46ca-9edf-480e9a8c681e\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1657076225, 1657076225),
(93, 'default', '{\"uuid\":\"08ed109d-eb5d-434b-8552-7ded08b33744\",\"displayName\":\"App\\\\Notifications\\\\NewPostNotiry\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:29:\\\"Illuminate\\\\Support\\\\Collection\\\":2:{s:8:\\\"\\u0000*\\u0000items\\\";a:1:{i:0;O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:23:\\\"freelancer369@gmail.com\\\";}}}s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewPostNotiry\\\":2:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Post\\\";s:2:\\\"id\\\";i:15;s:9:\\\"relations\\\";a:1:{i:0;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"cdcca7f2-2bac-457a-9af2-c82a97916fa0\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1657076226, 1657076226),
(94, 'default', '{\"uuid\":\"beba7646-fabb-43c5-a76d-dcb4ce9ad502\",\"displayName\":\"App\\\\Notifications\\\\NewPostNotiry\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:29:\\\"Illuminate\\\\Support\\\\Collection\\\":2:{s:8:\\\"\\u0000*\\u0000items\\\";a:1:{i:0;O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:16:\\\"farahd@gmail.com\\\";}}}s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewPostNotiry\\\":2:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Post\\\";s:2:\\\"id\\\";i:15;s:9:\\\"relations\\\";a:1:{i:0;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"681b4706-a8b3-48b7-85f9-fb254449411a\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1657076226, 1657076226),
(95, 'default', '{\"uuid\":\"617967f9-4139-4e8f-9b05-bec4f4d2315a\",\"displayName\":\"App\\\\Notifications\\\\NewPostNotiry\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:29:\\\"Illuminate\\\\Support\\\\Collection\\\":2:{s:8:\\\"\\u0000*\\u0000items\\\";a:1:{i:0;O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:29:\\\"freelancerfarhad369@gmail.com\\\";}}}s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewPostNotiry\\\":2:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Post\\\";s:2:\\\"id\\\";i:15;s:9:\\\"relations\\\";a:1:{i:0;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"39040f9f-0dbe-4e35-bc54-1d16e5b1b773\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1657076226, 1657076226),
(96, 'default', '{\"uuid\":\"2203a953-58e6-414c-a367-7a96a58f3ce4\",\"displayName\":\"App\\\\Notifications\\\\NewPostNotiry\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:29:\\\"Illuminate\\\\Support\\\\Collection\\\":2:{s:8:\\\"\\u0000*\\u0000items\\\";a:1:{i:0;O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:24:\\\"freelancers369@gmail.com\\\";}}}s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewPostNotiry\\\":2:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Post\\\";s:2:\\\"id\\\";i:15;s:9:\\\"relations\\\";a:1:{i:0;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"6aff7a6d-f013-4891-9935-0d3a0240f874\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1657076226, 1657076226),
(97, 'default', '{\"uuid\":\"7adc4f94-8a76-4473-8951-2b75650bd2ae\",\"displayName\":\"App\\\\Notifications\\\\AuthorPostApproved\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:2;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:36:\\\"App\\\\Notifications\\\\AuthorPostApproved\\\":2:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Post\\\";s:2:\\\"id\\\";i:16;s:9:\\\"relations\\\";a:1:{i:0;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"a2f28454-1fe4-4cdc-b35c-2f74934d6315\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1657076239, 1657076239),
(98, 'default', '{\"uuid\":\"7468c2ff-65c1-45ed-9776-c205be0abbe4\",\"displayName\":\"App\\\\Notifications\\\\NewPostNotiry\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:29:\\\"Illuminate\\\\Support\\\\Collection\\\":2:{s:8:\\\"\\u0000*\\u0000items\\\";a:1:{i:0;O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:23:\\\"freelancer369@gmail.com\\\";}}}s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewPostNotiry\\\":2:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Post\\\";s:2:\\\"id\\\";i:16;s:9:\\\"relations\\\";a:1:{i:0;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"3c501936-28f9-4b55-b536-a36cb2c4e9e0\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1657076239, 1657076239),
(99, 'default', '{\"uuid\":\"09b83c5b-61c0-43df-b1fa-84961efce31a\",\"displayName\":\"App\\\\Notifications\\\\NewPostNotiry\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:29:\\\"Illuminate\\\\Support\\\\Collection\\\":2:{s:8:\\\"\\u0000*\\u0000items\\\";a:1:{i:0;O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:16:\\\"farahd@gmail.com\\\";}}}s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewPostNotiry\\\":2:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Post\\\";s:2:\\\"id\\\";i:16;s:9:\\\"relations\\\";a:1:{i:0;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"3c47d2f6-83b8-449e-a987-4b171ff08d68\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1657076239, 1657076239),
(100, 'default', '{\"uuid\":\"7b2a5d0a-2e5c-4a4c-994c-e487849804ea\",\"displayName\":\"App\\\\Notifications\\\\NewPostNotiry\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:29:\\\"Illuminate\\\\Support\\\\Collection\\\":2:{s:8:\\\"\\u0000*\\u0000items\\\";a:1:{i:0;O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:29:\\\"freelancerfarhad369@gmail.com\\\";}}}s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewPostNotiry\\\":2:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Post\\\";s:2:\\\"id\\\";i:16;s:9:\\\"relations\\\";a:1:{i:0;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"7cfdeef8-93db-485a-86ab-0c7363c21a98\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1657076239, 1657076239),
(101, 'default', '{\"uuid\":\"da87d150-b897-4c67-b22c-f11dc2b0f060\",\"displayName\":\"App\\\\Notifications\\\\NewPostNotiry\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:29:\\\"Illuminate\\\\Support\\\\Collection\\\":2:{s:8:\\\"\\u0000*\\u0000items\\\";a:1:{i:0;O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:24:\\\"freelancers369@gmail.com\\\";}}}s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewPostNotiry\\\":2:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Post\\\";s:2:\\\"id\\\";i:16;s:9:\\\"relations\\\";a:1:{i:0;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"7265ff84-3e37-472e-b69b-bd52f6793bc7\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1657076239, 1657076239),
(102, 'default', '{\"uuid\":\"f35e6601-b3e5-4987-bdb7-0aae9d0ac23c\",\"displayName\":\"App\\\\Notifications\\\\AuthorPostApproved\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:2;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:36:\\\"App\\\\Notifications\\\\AuthorPostApproved\\\":2:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Post\\\";s:2:\\\"id\\\";i:19;s:9:\\\"relations\\\";a:1:{i:0;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"99e2c69b-9d6f-4291-bc39-8e2c9dd543ff\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1657076246, 1657076246),
(103, 'default', '{\"uuid\":\"ebe0c26a-350f-4f81-ba2f-73a96ca6f5fc\",\"displayName\":\"App\\\\Notifications\\\\NewPostNotiry\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:29:\\\"Illuminate\\\\Support\\\\Collection\\\":2:{s:8:\\\"\\u0000*\\u0000items\\\";a:1:{i:0;O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:23:\\\"freelancer369@gmail.com\\\";}}}s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewPostNotiry\\\":2:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Post\\\";s:2:\\\"id\\\";i:19;s:9:\\\"relations\\\";a:1:{i:0;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"f69f19a2-9c5b-4fc6-9d1e-d05211420183\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1657076246, 1657076246),
(104, 'default', '{\"uuid\":\"bfb209c6-4c3b-4fcc-bc8f-4ec10e5b6b6e\",\"displayName\":\"App\\\\Notifications\\\\NewPostNotiry\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:29:\\\"Illuminate\\\\Support\\\\Collection\\\":2:{s:8:\\\"\\u0000*\\u0000items\\\";a:1:{i:0;O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:16:\\\"farahd@gmail.com\\\";}}}s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewPostNotiry\\\":2:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Post\\\";s:2:\\\"id\\\";i:19;s:9:\\\"relations\\\";a:1:{i:0;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"8c403d2e-85f3-4d94-b684-5bcd26981906\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1657076246, 1657076246),
(105, 'default', '{\"uuid\":\"326ddfb2-41cf-4aea-8113-c0b1a449d01a\",\"displayName\":\"App\\\\Notifications\\\\NewPostNotiry\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:29:\\\"Illuminate\\\\Support\\\\Collection\\\":2:{s:8:\\\"\\u0000*\\u0000items\\\";a:1:{i:0;O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:29:\\\"freelancerfarhad369@gmail.com\\\";}}}s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewPostNotiry\\\":2:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Post\\\";s:2:\\\"id\\\";i:19;s:9:\\\"relations\\\";a:1:{i:0;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"c9e721ed-fa0e-4e9f-aa95-490b42c71e4a\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1657076246, 1657076246),
(106, 'default', '{\"uuid\":\"047d5de5-fd59-4ae0-bf5b-2f043da45180\",\"displayName\":\"App\\\\Notifications\\\\NewPostNotiry\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:29:\\\"Illuminate\\\\Support\\\\Collection\\\":2:{s:8:\\\"\\u0000*\\u0000items\\\";a:1:{i:0;O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:24:\\\"freelancers369@gmail.com\\\";}}}s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewPostNotiry\\\":2:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Post\\\";s:2:\\\"id\\\";i:19;s:9:\\\"relations\\\";a:1:{i:0;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"6b6b46bb-fa7c-4f0a-812b-b1a7aed6454a\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1657076246, 1657076246),
(107, 'default', '{\"uuid\":\"45c8bb92-25e1-4676-80e9-83ed7229d2c6\",\"displayName\":\"App\\\\Notifications\\\\NewPostNotiry\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:29:\\\"Illuminate\\\\Support\\\\Collection\\\":2:{s:8:\\\"\\u0000*\\u0000items\\\";a:1:{i:0;O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:23:\\\"freelancer369@gmail.com\\\";}}}s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewPostNotiry\\\":2:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Post\\\";s:2:\\\"id\\\";i:20;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"e089cb9d-2a6c-4448-a150-fa9f4fc60b8e\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1657076379, 1657076379),
(108, 'default', '{\"uuid\":\"2a3e3045-f1f8-41a1-97d0-f50d733d0bfe\",\"displayName\":\"App\\\\Notifications\\\\NewPostNotiry\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:29:\\\"Illuminate\\\\Support\\\\Collection\\\":2:{s:8:\\\"\\u0000*\\u0000items\\\";a:1:{i:0;O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:16:\\\"farahd@gmail.com\\\";}}}s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewPostNotiry\\\":2:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Post\\\";s:2:\\\"id\\\";i:20;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"21ab928f-eaa0-48dd-8fdd-5d5ef32c5baf\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1657076379, 1657076379),
(109, 'default', '{\"uuid\":\"a1b02b5e-f145-4a87-87aa-9112059a6f7c\",\"displayName\":\"App\\\\Notifications\\\\NewPostNotiry\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:29:\\\"Illuminate\\\\Support\\\\Collection\\\":2:{s:8:\\\"\\u0000*\\u0000items\\\";a:1:{i:0;O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:29:\\\"freelancerfarhad369@gmail.com\\\";}}}s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewPostNotiry\\\":2:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Post\\\";s:2:\\\"id\\\";i:20;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"e9ff27af-e682-4949-b348-ab3e839a6d61\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1657076379, 1657076379),
(110, 'default', '{\"uuid\":\"2012e57b-0b92-4287-83e8-3b16f8122847\",\"displayName\":\"App\\\\Notifications\\\\NewPostNotiry\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:29:\\\"Illuminate\\\\Support\\\\Collection\\\":2:{s:8:\\\"\\u0000*\\u0000items\\\";a:1:{i:0;O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:24:\\\"freelancers369@gmail.com\\\";}}}s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewPostNotiry\\\":2:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Post\\\";s:2:\\\"id\\\";i:20;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"ffaa7b5a-0112-4ab7-8aa1-960b9f43b47c\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1657076379, 1657076379),
(111, 'default', '{\"uuid\":\"52b9dabe-9018-4f75-b4b6-83973be2fdc7\",\"displayName\":\"App\\\\Notifications\\\\NewPostNotiry\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:29:\\\"Illuminate\\\\Support\\\\Collection\\\":2:{s:8:\\\"\\u0000*\\u0000items\\\";a:1:{i:0;O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:23:\\\"freelancer369@gmail.com\\\";}}}s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewPostNotiry\\\":2:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Post\\\";s:2:\\\"id\\\";i:21;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"94dbbddc-fe28-4922-b4b8-88541b4cdcf2\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1657076457, 1657076457),
(112, 'default', '{\"uuid\":\"b3aa4e96-edb7-4f0b-ae24-3c89f1d85d3e\",\"displayName\":\"App\\\\Notifications\\\\NewPostNotiry\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:29:\\\"Illuminate\\\\Support\\\\Collection\\\":2:{s:8:\\\"\\u0000*\\u0000items\\\";a:1:{i:0;O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:16:\\\"farahd@gmail.com\\\";}}}s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewPostNotiry\\\":2:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Post\\\";s:2:\\\"id\\\";i:21;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"977847eb-2cf8-439b-8838-46a427796678\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1657076457, 1657076457),
(113, 'default', '{\"uuid\":\"50daca78-9bd4-4325-928b-d354b1675129\",\"displayName\":\"App\\\\Notifications\\\\NewPostNotiry\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:29:\\\"Illuminate\\\\Support\\\\Collection\\\":2:{s:8:\\\"\\u0000*\\u0000items\\\";a:1:{i:0;O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:29:\\\"freelancerfarhad369@gmail.com\\\";}}}s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewPostNotiry\\\":2:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Post\\\";s:2:\\\"id\\\";i:21;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"a8eea380-002a-4fc6-b42b-a809368e95a7\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1657076457, 1657076457),
(114, 'default', '{\"uuid\":\"6851dcc6-7be3-47f1-b536-324e7e40350d\",\"displayName\":\"App\\\\Notifications\\\\NewPostNotiry\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:29:\\\"Illuminate\\\\Support\\\\Collection\\\":2:{s:8:\\\"\\u0000*\\u0000items\\\";a:1:{i:0;O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:24:\\\"freelancers369@gmail.com\\\";}}}s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewPostNotiry\\\":2:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Post\\\";s:2:\\\"id\\\";i:21;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"491d2c90-32d2-4623-8ebc-bbf68901968f\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1657076457, 1657076457);

-- --------------------------------------------------------

--
-- Table structure for table `logos`
--

CREATE TABLE `logos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'logo.png',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `logos`
--

INSERT INTO `logos` (`id`, `logo`, `created_at`, `updated_at`) VALUES
(1, 'logos.png', NULL, '2022-07-05 08:07:30');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_06_13_053545_create_roles_table', 1),
(6, '2022_06_15_052713_create_tags_table', 1),
(21, '2022_06_16_063119_create_categories_table', 2),
(22, '2022_06_19_050447_create_category_post_table', 2),
(23, '2022_06_19_050530_create_post_tag_table', 2),
(24, '2022_06_19_053640_create_posts_table', 3),
(27, '2022_06_21_124506_create_subscrivers_table', 4),
(28, '2022_06_23_054148_create_jobs_table', 4),
(29, '2022_06_23_054546_create_posts_table', 5),
(32, '2022_06_29_065049_create_post_user_table', 6),
(42, '2022_07_03_024702_create_comments_table', 7),
(43, '2022_07_05_102239_create_logos_table', 7),
(44, '2022_07_05_103238_create_socials_table', 7);

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
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.png',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `view_count` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `is_approved` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`, `slug`, `thumbnail`, `body`, `view_count`, `status`, `is_approved`, `created_at`, `updated_at`) VALUES
(10, 1, 'How Did Van Gogh\'s Turbulent Mind Depict One of the Most Complex Concepts in Physics?', 'how-did-van-goghs-turbulent-mind-depict-one-of-the-most-complex-concepts-in-physics', 'how-did-van-goghs-turbulent-mind-depict-one-of-the-most-complex-concepts-in-physics-62c3a9c1d2977.jpg', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<ul>\r\n<li><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</li>\r\n<li><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</li>\r\n</ul>', 15, 1, 1, '2022-06-23 00:59:09', '2022-07-06 07:09:39'),
(12, 1, 'এইচএসসি এবং এডমিশন এর জন্য দরকারি অনেকগুলো পিডিএফ বইয়ের লিংক একসাথে । এইচএসসি পড়ুয়া স্টুডেন্টরা পোস্টটি অবশ্যই দেখবেন।', 'eicessi-ebng-edmisn-er-jnz-drkari-onekgulo-pidief-bizer-lingk-eksathe-eicessi-pduza-studentra-postti-obszi-dekhben', 'eicessi-ebng-edmisn-er-jnz-drkari-onekgulo-pidief-bizer-lingk-eksathe-eicessi-pduza-studentra-postti-obszi-dekhben-62c4f74b0884f.jpg', '<p>হ্যালো ব্রো, স্বাগতম, সবাইকে, আমার আজকে আরেক টা নতুন পোস্টে । আশা করি সবাই খুবই ভালো আছেন। পোস্টের টাইটেল দেখে আশা করি আপনারা অবশ্যই বুঝতে পেরেছেন যে আজকে আমি কি নিয়ে এই পোস্টটি সাজিয়েছি l তাহলে চলুন পরম সৃষ্টিকর্তার নাম নিয়ে পোস্ট টি শুরু করা যাক।</p>\r\n<p>&nbsp;</p>\r\n<p>তো, আজকে আমি এই পোষ্টে&nbsp; আপনাদেরকে আপনার প্রয়োজনীয় অনেকগুলা পিডিএফ বইেএর লিঙ্ক শেয়ার করবো। আপনার যেকোন বিশ্ববিদ্যালয়ের ভর্তি পরীক্ষায় এসব বই অনেক কাজে আসবে। তাছাড়া একাডেমিক পড়াশোনাতেও এই বইগুলো অনেকে পড়েন। তাই এইচএসসি পরীক্ষার্থী এবং এডমিশন পরীক্ষার্থীদের জন্য এই পোস্টটি খুবই গুরুত্বপূর্ণ। তাই দেরী না করে এখনই দেখে নিন আপনার দরকারি বইটা এখানে আছে কিনা।</p>\r\n<p>চলুন কথা না বাড়িয়ে&nbsp; আমরা main পোষ্টে চলে যাই।</p>\r\n<p>&nbsp;</p>\r\n<p>এখানে আমি এই পোস্টে আপনাদের দরকারি অনেকগুলো পিডিএফ বইয়ের লিংক গুগল ড্রাইভে দিয়ে দিচ্ছি l আপনাদের যে কয়টি বই দরকার সেই বইয়ের পাশে দেয়া লিঙ্কে ক্লিক করে আপনি আপনার মত আপনার দরকারী বইটি ডাউনলোড করে নিতে পারেন l</p>\r\n<p>এখানে সর্বমোট 25 টার মত বই আছে l&nbsp; আপনারা যদি আমাকে অনুপ্রেরণা দেন, তাহলে আমি হয়তো বা আরো বই কালেক্ট করে একসাথে এভাবে পোস্ট আকারে দিতে পারি l অবশ্যই আপনারা কমেন্টে জানাবেন যে আপনারা এরকম পোস্ট আরও চান কিনা l</p>', 13, 1, 1, '2022-06-23 01:19:05', '2022-07-05 20:45:56'),
(15, 2, 'নগদ থেকে বিদ্যুৎ বিল দেওয়ার নিয়ম', 'ngd-theke-bidzutt-bil-deoozar-nizm', 'ngd-theke-bidzutt-bil-deoozar-nizm-62c4f956f2660.png', '<p>আপনি হয়তো এই সম্পর্কে জানেন যে, বিভিন্ন মোবাইল ব্যাংকিং অপারেটরের মাধ্যমে বিদ্যুৎ বিল দেয়া সম্ভব, এরই ধারাবাহিকতায় নগদ থেকে বিদ্যুৎ বিল দেয়ার নিয়ম সম্পর্কে জেনে Nagad Pay Bill সম্ভব।অর্থাৎ আপনি যদি ঘরে বসেই বিদ্যুৎ বিল দিতে চান, তাহলে মোবাইল ব্যাংকিং অপারেটরের মাধ্যমে তা দিতে পারেন এবং মোবাইল ব্যাংকিং অপারেটর মধ্যে থেকে একটি হল নগদ।</p>\r\n<p>সেজন্য আপনি চাইলে নগদ থেকে বিদ্যুৎ বিল দেয়ার নিয়ম সম্পর্কে বিস্তারিত জেনে নেয়ার পরে নগদ থেকে বিদ্যুৎ বিল দিতে পারেন।</p>\r\n<h2>নগদ থেকে বিদ্যুৎ বিল কিভাবে দেওয়া যায়?</h2>\r\n<p>আপনি চাইলে ভিন্ন দুটি উপায়ে নগদ থেকে বিদ্যুৎ বিল দেয়ার নিয়ম জেনে, Nagad Pay Bill দেয়ার কাজ সম্পন্ন করতে পারেন।</p>\r\n<p>এর মধ্যে থেকে একটি হলো নগদ কোড ডায়াল করার মাধ্যমে এবং অন্যটি হলো নগদের যে অফিশিয়াল অ্যাপ রয়েছে, সেই অ্যাপস ব্যবহার করার মাধ্যমে।</p>\r\n<p>বলাবাহুল্য, ইউএসএসডি কোড ডায়াল করার জটিলতা ছাড়া আপনি যদি সহজভাবে নগদ থেকে বিদ্যুৎ বিল পরিশোধ করতে চান, তাহলে নগদ এর অফিশিয়াল এপের মাধ্যমে এই কাজটি সম্পন্ন করতে পারেন।</p>\r\n<p>এতে আপনার সময় বাঁচবে এবং চার্জ অনেকাংশে কমিয়ে আনবে।</p>\r\n<p>এই আর্টিকেলে ইউএসএসডি কোড ডায়াল করে বিদ্যুৎ বিল পরিশোধ এবং নগদ অ্যাপ এর ব্যবহারের মাধ্যমে বিদ্যুৎ বিল পরিশোধ করা এই দুইটি উপায় সম্পর্কে বিস্তারিত আলোচনা করা হবে।</p>\r\n<h3>ইউএসএসডি কোড ডায়াল করে বিদ্যুৎ বিল পরিশোধ</h3>\r\n<p>আপনি যদি ইউএসএসডি কোড ডায়াল করার মাধ্যমে বিদ্যুৎ বিল পরিশোধ করতে চান, তাহলে প্রথমত&nbsp;<a href=\"https://mobilebankinginfo.com/nagad-balance-check/\">নগদ একাউন্ট দেখার নিয়ম</a>&nbsp;এর জন্য যে কোড রয়েছে সেই কোড ডায়াল করে নিতে হবে।</p>\r\n<p>ইউএসএসডি কোড ডায়াল করার মাধ্যমে বিদ্যুৎ বিল দেয়ার জন্য প্রথমে আপনার ফোনের ডায়াল প্যাড থেকে ডায়াল করুনঃ<strong>&nbsp;*১৬৭#</strong></p>\r\n<p>এরপরে আপনার সামনে অনেকগুলো অপশন চলে আসবে। এখন আপনি যেহেতু বিদ্যুৎ বিল পরিশোধ করতে চান সে জন্য&nbsp;<strong>5</strong>&nbsp;নাম্বার অপশন সিলেক্ট করে নিন অর্থাৎ<strong>&nbsp;5</strong>&nbsp;লিখে তারপরে সেন্ড বাটনে ক্লিক করুন।</p>', 15, 1, 1, '2022-06-23 03:19:52', '2022-07-06 07:09:45'),
(16, 2, 'উইন্ডোজ অপারেটিং সিস্টেম চালিত পিসির জন্য সেরা ফ্রি পার্সোনাল ফিন্যান্স অ্যাপ।', 'uindoj-opareting-sistem-calit-pisir-jnz-sera-fri-parsonal-finzans-ozap', 'uindoj-opareting-sistem-calit-pisir-jnz-sera-fri-parsonal-finzans-ozap-62c4f8daa9dca.jpg', '<p>মাস শেষে আপনি যদি আপনার টাকার খরচের হিসাব রাখতে চান তাহলে আপনার জন্য আমার আজকের এই টপিক। অনেকেই আছেন মাসে যা আয় করেন তার দ্বিগুণ খরচ করে ফেলেন। এখন আপনি যদি এর নিয়ন্ত্রণ করতে চান অর্থাৎ কোন খাতে আপনার অতিরিক্ত খরচ হয়ে যায় তা দেখতে চান এবং এর লাগাম ধরতে চান তাহলে আপনি কিছু সেরা অ্যাপের সাহায্য নিতে পারেন। যেগুলোর মাধ্যমে আপনি মাসিক খরচ দেখার পাশাপাশি সঠিকভাবে খরচ করার পরিকল্পনা করার দক্ষতা অর্জন করতে পারবেন। তবে এর জন্য আপনার একটি উইন্ডোজ অপারেটিং সিস্টেম চালিত কম্পিউটার প্রয়োজন পড়বে। কারণ আজকে শুধু আমি এই টপিকে মাসিক খরচের হিসাব রাখার জন্য উইন্ডোজ অপারেটিং সিস্টেম চালিত কম্পিউটার অ্যাপ নিয়ে আলোচনা করব।</p>\r\n<p>আর হ্যাঁ আপনার চিন্তা করার কিছু নেই। যদি আপনার যদি বা কম্পিউটার না থেকে থাকে তবে অ্যান্ড্রয়েড অপারেটিং সিস্টেম চালিত স্মার্টফোন থেকে থাকে তাহলে আপনি আপনার&nbsp;<strong><a href=\"https://tutorialbd71.blogspot.com/2021/07/blog-post_24.html\">এই টপিকটি</a></strong>&nbsp;দেখতে পারেন। এখানে আমি অ্যান্ড্রয়েডের জন্য মাসিক খরচের হিসাব রাখার জন্য একটি অ্যাপ নিয়ে আলোচনা করেছি।</p>\r\n<p>উইন্ডোজ এর জন্য পার্সোনাল ফিন্যান্স অ্যাপ:<br />আমি বলব না যে আপনি এইগুলো ব্যবহার মাধ্যমে আপনার খরচ একইবারে কমে যাবে। তবে এতটুকু বলতে পারি এগুলোর মাধ্যমে আপনি সনাক্ত করে নিতে পারবেন যে আপনার কোন খাতে বেশি খরচ হচ্ছে এবং তখনি আপনি বুঝতে পারবেন যে এর খরচ কেন অতিরিক্ত হচ্ছে আর তার ব্যয় কমানো যায় কিনা। তো চলুন বেশী কথা না বলে উইন্ডোজ এর জন্য সেরা কয়েকটি ফ্রি ফিন্যান্স অ্যাপ সম্পর্কে জেনে নেই এবং সেগুলোর লিংক থেকে ডাউনলোড করে ব্যবহার করে দেখি।</p>\r\n<p>Money Keeper অ্যাপটি আপনার মাসিক হিসাব রাখার জন্য অসাধারণ একটি অ্যাপ। যার সাহায্যে আপনি আপনার মাসিক আয় ও ব্যয়ের হিসাব সহজে রাখতে পারবেন। আপনি এটির মাধ্যমে আয় ও ব্যয়ের রিপোর্ট তৈরি করা সহ সামারাইজ ও ফোরকাস্ট তৈরি করতে পারবেন। আপনি আপনার খরচ সীমিত করে আপনার আয়ে থেকে কিছু টাকা সঞ্চয় করার জন্য বাজেট তৈরি করতে পারবেন। অ্যাপটির মাধ্যমে প্রধান অ্যাকাউন্ট থেকে আলাদাভাবে খাত বা ইভেন্ট তৈরি করতে পারবেন এবং সেগুলোর খরচ আলাদাভাবে ট্র্যাক করতে পারবেন। এটির সবচেয়ে ভালো দিক হচ্ছে এর মাধ্যমে আপনি সীমাহীন আলাদা আলাদা খাত তৈরি করতে পারবেন। এই অ্যাপটি আপনি চাইলে উইন্ডোজ কম্পিউটার এর পাশাপাশি উইন্ডোজ ফোনেও ব্যবহার করতে পারবেন। যার ফলে আপনি যেকোন জায়গায় থেকে আপনার আয় ও ব্যয়ের হিসাব রাখতে পারবেন।</p>\r\n<p>ফিন্যান্স অ্যাপ Money Lover:</p>\r\n<p>&nbsp;</p>', 2, 1, 1, '2022-07-04 21:03:55', '2022-07-06 14:32:57'),
(17, 1, 'YouTube_এ চাইলে আর Subscriber সংখ্যা লুকাতে পারবেন না।', 'youtube-e-caile-ar-subscriber-sngkhza-lukate-parben-na', 'youtube-e-caile-ar-subscriber-sngkhza-lukate-parben-na-62c4f7cdc49ff.jpg', '<p>আপনি যদি একজন ইউটিউবার হোন তাহলে জেনে রাখুন এখন থেকে আপনি আর চাইলে আর আপনার YouTube চ্যানেলের Subscriber সংখ্যা লুকাতে পারবেন না। এই ব্যাপারে একটি বিজ্ঞপ্তি বা নোটিশ ইউটিউব থেকে জানানো হয়েছে। বিশেষ করে যারা নতুন ইউটিউবার তারা নিজেদের ইউটিউব চ্যানেলের সাবস্ক্রাইবার সংখ্যা কম হওয়ার কারণে তা লুকিয়ে রাখে বা হাইড করে রাখে। যাতে করে কেউ বুঝতে না পারে যে চ্যানেলের সাবস্ক্রাইবার কতজন। এরফলে যারা একদমই নতুন ইউটিউব প্লাটফর্মে তাদের জন্য এটা খুবই খারাপ খবর। বিশেষ করে এটি বন্ধ করার কারণ হচ্ছে কিছু কিছু স্প্যামারদের জন্য।</p>\r\n<p>যদিও সোশ্যাল মিডিয়ার জন্য স্প্যাম কোন নতুন সমস্যা না, তবে ইদানিং বা দিন দিন এটির অবস্থা খুব খারাপ হচ্ছে বা খারাপের দিকে যাচ্ছে। আর এই স্প্যামারদের রুখতে জনপ্রিয় ভিডিও প্লাটফর্ম ইউটিউব এক নতুন কৌশল হাতে নিয়েছে।</p>\r\n<p>মূলত ইউটিউব তার নিজস্ব স্প্যাম সমস্যাগুলি দূর করার জন্য কিছু বৈশিষ্ট্য বা ফাংশনের পরিবর্তন এনেছে। যা নকল অ্যাকাউন্টগুলিকে বাস্তবের ছদ্মবেশ ধারণ করা কঠিন করে তোলার জন্য ডিজাইন করা হয়েছে৷ অর্থাৎ অনেকেই আছে একটি জনপ্রিয় চ্যানেলের নকল আরেকটি চ্যানেল তৈরি করে যেটাকে সহজে সনাক্ত করার জন্য এই পদক্ষেপ।</p>\r\n<p>গত ২৯ জুলাই থেকে YouTube চ্যানেলগুলি আর তাদের গ্রাহক সংখ্যা লুকাতে পারবে না৷ এই মর্মে একটি বিজ্ঞপ্তি প্রকাশ করে যা মূলত ইউটিউব চ্যানেলের ড্যাশবোর্ডে প্রবেশ করার পর দেখা যায়। হয়তো অনেকেই বিষয়টি লক্ষ্য করেছেন। প্রতিষ্ঠিত বা জনপ্রিয় কোন চ্যানেলের নকল তৈরি কারক স্প্যামাররা সহজে সাবস্ক্রাইবার সংখ্যা লুকানোর মাধ্যমে সফল হতে পারতো। যা এখন আর সম্ভব হবে না।</p>\r\n<p>যদিও ইউটিউব স্বয়ং নিজেই স্বীকার করে যে &ldquo;কিছু ইউটিউবাররা তাদের সাবস্ক্রিপশনের সংখ্যা লুকিয়ে রাখতে পছন্দ করেন কারণ তারা তাদের সাবস্ক্রাইবার সংখ্যা বাড়ানোর চেষ্টা করেন&rdquo; কিন্তু ইদানিংকালে ইউটিউবে ছদ্মবেশীদের সংখ্যা অধিক হারে বৃদ্ধি পাওয়াতে এর ব্যাপকতা কমাতে এই পদক্ষেপ। অবশ্যক এই পদক্ষেপটি নিশ্চিতভাবে কিছু লোককে বিরক্ত করবে। যেহেতু ইউটিউব এখানে নতুন কিছু যোগ করার পরিবর্তে একটি বিকল্প সরিয়ে দিচ্ছে, তবে সংস্থাটি তা সত্ত্বেও পদক্ষেপ নিচ্ছে।</p>\r\n<p>স্প্যামাদের রুখতে সাবস্ক্রাইবার সংখ্যা লুকানোর ফাংশন বাতিল করার পাশাপাশি ইউটিউব চ্যানেলের নামের উপরও নতুন করে নিষেধাজ্ঞা আরোপ করেছে। এর ফলে এখন থেকে আর ইউটিউব চ্যানেলের নামের মধ্যে স্পেশাল ক্যারেক্টার বা বিশেষ চরিত্রের কোন সিম্বল বা সংকেত ব্যবহার করা যাবে না। এটিতে নিষেধাজ্ঞা দেওয়ার কারণ হচ্ছে ছদ্মবেশকারীদের সহজে দৃষ্টিতে লুকিয়ে রাখা কঠিন করে তোলার জন্য। মূলত, YouTube চায় না যে বিশেষ অক্ষর আর কেউ ব্যবহার করুক যেমন &agrave; la&nbsp;<strong>&ldquo;&yen;ouⓉube&rdquo;</strong>&nbsp;&ndash; এই ধরনের বিশেষ অক্ষর বা স্পেশাল ক্যারেক্টার স্প্যামাররা ব্যবহার করে আরকটি জনপ্রিয় বা প্রতিষ্ঠিত চ্যানেলের নকল তৈরি করে থাকে।</p>\r\n<p>স্প্যাম অ্যাকাউন্টগুলি মূলত যে চ্যানেলের কপি তৈরি করতে চায় তার নাম অনুলিপি করে সূক্ষ্মভাবে অথবা সূক্ষ্মভাবে নয় এক বা দুটি অক্ষর পরিবর্তন করে। যার ফলে এক নজরে বা প্রথম নজরে একটি নকল চ্যানেলকে চিনতে মুশকিল হয়ে যায়। এতে করে সাধারণ ব্যবহারকারীরা নকল বা জাল চ্যানেলকে আসল মনে করে ব্যবহার করতে থাকে।</p>', 2, 1, 1, '2022-07-05 20:47:42', '2022-07-06 14:33:13'),
(18, 1, 'মাইনক্রাফট কেমন গেম? সাথে রয়েছে ১.১৯ এর ডাউনলোড লিংক একদম ফ্রিতে!!', 'mainkraft-kemn-gem-sathe-ryeche-119-er-daunlod-lingk-ekdm-frite', 'mainkraft-kemn-gem-sathe-ryeche-119-er-daunlod-lingk-ekdm-frite-62c4f82f6ba7f.jpeg', '<p>আজকে যে গেম টা নিয়ে কথা বলবো তার নাম টা হচ্ছে মাইনক্রাফট। হা এটা কে অনেকে বাচ্চাদের গেম ও বলে। প্রথমে বলি যারা মনে প্রানে বিশ্বাস করেন যে কি &ldquo;Graphic doesn&rsquo;t matter&rdquo; তাদের জন্য এই গেমটা একদম পারফেক্ট। এই গেমটা মূলত একটা সারভাইভাল গেম। বিশাল বড় একটা পৃথিবীতে আপনাকে একটা জায়গায় নামায় দিবে। এর পর বিভিন্ন ধরনের কাজ করে। নিজেকে বাচিয়ে রাখতে হবে । এবার আসুন কয়েকটা QnA এর মাধ্যমে বুঝে নেওয়া যাক।<br /><strong>এর কয়টা ভার্শন আছে?</strong><br />এই গেমের আমার জানা মতে ৩টা ভার্শন রয়েছে।জাবা,বেডরক,পকেটে এডিশন, পকেট এডিশন কে বেডরক এডিশনের মধ্যে পরে।যারা মোবাইল দিয়ে খেলতে চান তাদের পকেট এডিশন খেলতে হবে।<br /><strong>এর গ্রাপিক্স কেমন?</strong><br />এর গ্রাপিক্স বলতে এই গেম টার সব থেকে বাজে একটা দিক। এই গেমটা সব থেকে বেশি হেট পায় গ্রাপিক্সের জন্য। এর সব কিছু একটা একটা বক্সের মত। মানে সব গুলো চার কোনা শেপ এর গরু ছাগল গাছ থেকে নিয়ে একদম সব। নেদার এর ক্ষেত্রেও সেম।আর নেদারটা এমন ভাবে তুলে ধরছে মনে হয় কোন একটা ভুতুড়ে জায়গায় একা বসে আছি। এক কথায় মাইনক্রাফটে গ্রাফিক্সের আশা করা টা বোকামি বলে আমি মনে করি। তবে আপনারা চাইলে বিভিন্ন ধরনের প্যাক ব্যাবহার করে এটার গ্রাফিক্সের কিছু পরিবর্তন আনতে পারবেন।<br /><strong>এই গেমের ভিলেন/ এনিমি কে?</strong><br />ছোট কালে যেরকম দাদা-দাদী/নানা-নানী আমাদের রাত হলে ভয় লাগায় ত। ভুত আসবে পেত্নী আসবে। টিক তেমন ভাবে মাইনক্রাফটে ও রাত হলে বিভিন্ন ধরনের mob স্পন হয়। তবে সেটা শুধু নরমাল ওয়াল্ডে। নেদার বা এন্ড সিটিতে সব সময় mob স্পন হয়।নরমাল ওয়াল্ডের কয়েকটা mob হলোঃ- জম্বি, স্কেলেটন, ক্রিপার,স্পাইডার,হুইচ সহ আরো অনেক।<br />নেদারের কয়েকটা mob হলোঃ- পিগলিন, হগলিন, গেস্ট, মেগমাকিউব,<br />এন্ডসিটির mob এর নাম হলোঃ- এন্ডার ম্যান, সালকার,<br /><strong>নেদার কি?</strong><br />নেদার হল এমন একটা জায়গা যেখানে সব সময় মরার ভয় থাকে। সব এখানে আগুন আর লাভা দিয়ে ভরা থাকে নরমাল ওয়াল্ডে যে রকম পানি থাকে নেদারে একই রকম লাভা আর আগুন থাকে, নেদারে যাওয়া আবশ্যক কারণ নেদারে যাওয়া পর আমাদের নেদার ফোর্টরেস নামের একটা স্টেকচার এ যাওয়া লাগবে ঐখান থেকে ব্লেজ রড কালেক্ট করা লাগবে। যেটা গেম কে কন্টিনিউ করতে লাগবে।</p>\r\n<p><strong>এন্ড সিটি কি?</strong><br />এন্ড সিটি হল নেদারের মত আরো একটা ওয়াল্ড যেখানে গেমের শেষ ধরা হয়। এই ওয়াল্ড তেমন টা বিপদজনক নয় যেমনটা নেদার। তবে এই ওয়াল্ড একটা হাওয়ার উপর ভাসমান ছোট বড় দ্বীপ এ ভরা।</p>', 0, 1, 1, '2022-07-05 20:49:19', '2022-07-05 20:49:19'),
(19, 2, 'Free Fire Id Facebook To Gamil Transfer | কিভাবে আপনার গেম আইডি ফেসবুক থেকে জিমেল এ নিবেন দেখুন।', 'free-fire-id-facebook-to-gamil-transfer-kivabe-apnar-gem-aidi-fesbuk-theke-jimel-e-niben-dekhun', 'free-fire-id-facebook-to-gamil-transfer-kivabe-apnar-gem-aidi-fesbuk-theke-jimel-e-niben-dekhun-62c4f9eb65a61.jpeg', '<h2><span style=\"color: green;\">আজকে দেখাবো আপনার Facebook Account দিয়ে Login করা আইডি কিভাবে Gmail এ Transfer করে নিবেন। একদম সহজ ও বিনামুল্যে কোন রকম ঝুঁকি ছাড়াই</span><br />বিস্তারিত কিছু কথাঃ এটার জন্য আপনার ফোন একটু ভালো কনফিগারেশন এর হতে হবে মানে ৪/৬৪ । তবে লো কনফিগের ফোন হলে সেক্ষেত্রে ২ টি ফোন ব্যাবহার করতে হবে।তারপর নতুন বা এমন একটা জিমেল লাগবে যেটায় কখনো গেম লগিন করা হয় নি।<br />ব্যাস এটুকুই&hellip;..</h2>\r\n<p>এবার মুল কার্যক্রমঃ যে আইডি ফেসবুক থেকে জিমেল এ নিবেন সেটা Free Fire এবং Free Fire Max ২ ভার্সনেই লগিন দিবেন।</p>\r\n<p>একবার Free Fire Login দিয়ে গেমে ঢুকবেন &ndash; ব্যাকগ্রাউন্ড রেখে আবার Free Fire Max Login দিয়ে ঢুকবেন। তখন দেখবেন এরকম মেসেজ শো করবে&hellip;</p>', 2, 1, 1, '2022-07-05 20:56:43', '2022-07-08 02:02:38'),
(20, 1, 'আজকে দেখাবো আপনার Facebook Account দিয়ে Login করা |', 'ajke-dekhabo-apnar-facebook-account-diye-login-kra', 'ajke-dekhabo-apnar-facebook-account-diye-login-kra-62c4fa9ba1f8a.jpg', '<h2><span style=\"color: green;\">আজকে দেখাবো আপনার Facebook Account দিয়ে Login করা আইডি কিভাবে Gmail এ Transfer করে নিবেন। একদম সহজ ও বিনামুল্যে কোন রকম ঝুঁকি ছাড়াই</span></h2>\r\n<p><br />।<br />বিস্তারিত কিছু কথাঃ এটার জন্য আপনার ফোন একটু ভালো কনফিগারেশন এর হতে হবে মানে ৪/৬৪ । তবে লো কনফিগের ফোন হলে সেক্ষেত্রে ২ টি ফোন ব্যাবহার করতে হবে।</p>\r\n<p>&nbsp;</p>\r\n<p>তারপর নতুন বা এমন একটা জিমেল লাগবে যেটায় কখনো গেম লগিন করা হয় নি।<br />ব্যাস এটুকুই&hellip;..</p>', 3, 1, 1, '2022-07-05 20:59:39', '2022-07-10 05:36:46'),
(21, 1, 'চোখের যত্নে আমাদের সকলের করণীয়সমূহ', 'cokher-ztne-amader-skler-krneeysmuuh', 'cokher-ztne-amader-skler-krneeysmuuh-62c4fae90805b.jpg', '<p>আপনি কি আপনার চোখের যত্ন সঠিকভাবে নিচ্ছেন?? আপনি আপনার চোখের যত্ন নিতে ব্যথ হচ্ছেন না তো?? আপনি আপনার চোখের যত্ন কীভাবে নিবেন ??</p>\r\n<p>চোখের যত্নের বিষয়ে লেখা আমার আজকের আটিকেলটি মনযোগ সহকারে পড়ার জন্য অনুরোধ রইল । আটিকেলটি পাঠের মাধ্যমে আপনি আপনার চোখের যত্নের প্রতি প্রয়োজনীয় টিপস সহজেই খুঁজে পাবেন । তো চলুন শুরু করে দেওয়া যাক ।</p>\r\n<p>&nbsp;</p>\r\n<p><span style=\"color: red;\">এই অপরুপ সৌন্দযে ভরপুর পৃথিবীকে আমরা আমাদের চোখ দিয়েই দেখি । যদি চোখ না থাকত তাহলে আমরা কিছুই দেখতে পেতাম না । উপভোগও করতে পারতাম না । তাই চোখের যত্ন নেওয়ার গুরুত্ব সীমাহীন ।</span></p>\r\n<p><strong>চোখের যত্নে আপনার করণীয় সম্পকে নিম্নে সুস্পষ্টভাবে আলোচনা করা হলো ::</strong></p>\r\n<p>#আমাদের দেশের বেশিরভাগ ছেলেমেয়ে ও লোকজন বিশেষ করে ১০ বছর থেকে শুরু করে ৪০ ও তার ঊধ্ববয়সী যারা আছে তারা দিনের অধিকাংশ সময় মোবাইল ফোন ব্যবহার করে থাকে । একজন চিকিৎসকের মতে একনাগারে দেড়ঘন্টা ও তার বেশি সময় ধরে মোবাইল ফোন ব্যবহার করলে চোখের বিভিন্ন সমস্যার উপসগ দেখা দিতে পারে । শুধুমাত্র মোবাইল ফোনই নয় একনাগারে অতিরিক্ত ল্যাপটপ, কম্পিউটার ইত্যাদি ব্যবহারে চোখের সমস্যা দেখা দিতে পারে । তাই আমাদের মোবাইল ফোন বা এই জাতীয় ইলেক্ট্রনিক ডিভাইসের অতিরিক্ত ব্যবহার থেকে বিরত থাকতে হবে ।</p>\r\n<p><strong>~~আমাদের বাংলাদেশের বেশিরভাগ মানুষ পরিশ্রমী কৃষক । কৃষি তাদের প্রধান পেশা । কৃষি কাজ সম্পাদনার মাধ্যমে তারা জীবিকা নিবাহ করে । এই কাজ করতে গিয়ে তাদেরকে দীঘসময় রৌদ্রজ্জল পরিবেশে থাকতে হয় । সূযের অতি তীযক রশি মানুষের চোখের ক্ষতির কারণ হয়ে দাঁড়ায় । শুধু চোখের নয় চমরোগের কারণ হয়ে থাকে সূযের তীযক রশি । সূযের আলোয় দীঘক্ষণ অবস্থান করলে চোখে হলুদাভ বণ ধারণ । জন্ডিস হলে এরকম হয় । তাই সূযের অতি তীযক রশিতে দূরে থাকতে হবে ।</strong></p>', 5, 1, 1, '2022-07-05 21:00:57', '2022-08-19 05:45:13');

-- --------------------------------------------------------

--
-- Table structure for table `post_tag`
--

CREATE TABLE `post_tag` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_tag`
--

INSERT INTO `post_tag` (`id`, `post_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(28, 10, 1, '2022-06-23 00:59:09', '2022-06-23 00:59:09'),
(29, 10, 2, '2022-06-23 00:59:09', '2022-06-23 00:59:09'),
(30, 10, 3, '2022-06-23 00:59:09', '2022-06-23 00:59:09'),
(34, 12, 6, '2022-06-23 01:19:05', '2022-06-23 01:19:05'),
(35, 12, 7, '2022-06-23 01:19:05', '2022-06-23 01:19:05'),
(40, 15, 1, '2022-06-23 03:19:52', '2022-06-23 03:19:52'),
(41, 15, 3, '2022-06-23 03:19:52', '2022-06-23 03:19:52'),
(42, 16, 1, '2022-07-04 21:03:55', '2022-07-04 21:03:55'),
(43, 16, 2, '2022-07-04 21:03:55', '2022-07-04 21:03:55'),
(44, 16, 6, '2022-07-04 21:03:55', '2022-07-04 21:03:55'),
(45, 16, 7, '2022-07-04 21:03:55', '2022-07-04 21:03:55'),
(46, 12, 2, '2022-07-05 20:45:31', '2022-07-05 20:45:31'),
(47, 17, 2, '2022-07-05 20:47:42', '2022-07-05 20:47:42'),
(48, 17, 3, '2022-07-05 20:47:42', '2022-07-05 20:47:42'),
(49, 17, 6, '2022-07-05 20:47:42', '2022-07-05 20:47:42'),
(50, 18, 1, '2022-07-05 20:49:19', '2022-07-05 20:49:19'),
(51, 18, 2, '2022-07-05 20:49:19', '2022-07-05 20:49:19'),
(52, 18, 3, '2022-07-05 20:49:19', '2022-07-05 20:49:19'),
(53, 18, 6, '2022-07-05 20:49:19', '2022-07-05 20:49:19'),
(54, 15, 2, '2022-07-05 20:54:15', '2022-07-05 20:54:15'),
(55, 19, 2, '2022-07-05 20:56:43', '2022-07-05 20:56:43'),
(56, 19, 3, '2022-07-05 20:56:43', '2022-07-05 20:56:43'),
(57, 19, 6, '2022-07-05 20:56:43', '2022-07-05 20:56:43'),
(58, 20, 1, '2022-07-05 20:59:39', '2022-07-05 20:59:39'),
(59, 20, 6, '2022-07-05 20:59:39', '2022-07-05 20:59:39'),
(60, 20, 7, '2022-07-05 20:59:39', '2022-07-05 20:59:39'),
(61, 21, 1, '2022-07-05 21:00:57', '2022-07-05 21:00:57'),
(62, 21, 2, '2022-07-05 21:00:57', '2022-07-05 21:00:57'),
(63, 21, 3, '2022-07-05 21:00:57', '2022-07-05 21:00:57'),
(64, 21, 7, '2022-07-05 21:00:57', '2022-07-05 21:00:57');

-- --------------------------------------------------------

--
-- Table structure for table `post_user`
--

CREATE TABLE `post_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_user`
--

INSERT INTO `post_user` (`id`, `post_id`, `user_id`, `created_at`, `updated_at`) VALUES
(3, 15, 1, '2022-07-03 20:00:14', '2022-07-03 20:00:14'),
(6, 12, 1, '2022-07-03 20:08:31', '2022-07-03 20:08:31'),
(7, 10, 1, '2022-07-03 20:08:39', '2022-07-03 20:08:39'),
(8, 15, 2, '2022-07-05 02:01:13', '2022-07-05 02:01:13');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', NULL, NULL),
(2, 'Author', 'author', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `socials`
--

CREATE TABLE `socials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `socials`
--

INSERT INTO `socials` (`id`, `facebook`, `twitter`, `instagram`, `youtube`, `created_at`, `updated_at`) VALUES
(1, 'https://www.facebook.com/freelancermdfarhad/', 'https://www.linkedin.com/in/freelancermdfarhad/', 'https://www.instagram.com/freelancermdfarhad/', 'https://www.youtube.com/c/freelancerfarhad', NULL, '2022-07-05 20:41:02');

-- --------------------------------------------------------

--
-- Table structure for table `subscrivers`
--

CREATE TABLE `subscrivers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscrivers`
--

INSERT INTO `subscrivers` (`id`, `email`, `created_at`, `updated_at`) VALUES
(1, 'freelancer369@gmail.com', '2022-06-23 00:28:02', '2022-06-23 00:28:02'),
(2, 'farahd@gmail.com', '2022-06-23 00:28:05', '2022-06-23 00:28:05'),
(3, 'freelancerfarhad369@gmail.com', '2022-06-23 00:28:09', '2022-06-23 00:28:09'),
(4, 'freelancers369@gmail.com', '2022-06-29 04:16:24', '2022-06-29 04:16:24');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Laravel', 'laravel', '2022-06-15 20:54:38', '2022-06-15 20:54:38'),
(2, 'Css', 'css', '2022-06-15 21:18:31', '2022-06-15 23:46:01'),
(3, 'Java', 'java', '2022-06-15 23:40:02', '2022-06-15 23:46:13'),
(6, 'Php', 'php', '2022-06-15 23:43:47', '2022-06-15 23:45:39'),
(7, 'Java Script', 'java-script', '2022-06-16 19:48:29', '2022-06-16 19:48:29');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` int(11) NOT NULL DEFAULT 2,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'avater5.png',
  `about` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `username`, `email_verified_at`, `password`, `image`, `about`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@gmail.com', 'admin', NULL, '$2y$10$w4b0ULrny2VFRUDhHdLF..m1SPxnoe9e0JEli75S/Kjni1Jtoaj1K', 'admin-62bc1aaf65f9a.jpg', 'To contact with me,you can mail me. and admin login:admin@gamil.com....password:11223344', 'zFq9cZf7xc2MkrVTwkAQJtJmclsbjJA1nQHNpn7407cutfYhYWmjA9MEFBso', NULL, '2022-06-29 03:26:07'),
(2, 2, 'Authors', 'author@gmail.com', 'author', NULL, '$2y$10$Z7m8feaGg7P6wU0VbRk9rupqOmylvDYCc1KBtdTsTNqSuukDTZsZO', 'authors-62c3e6dc6e92b.jpg', 'ng industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with', NULL, NULL, '2022-07-05 01:23:08'),
(3, 2, 'Farhad hossain', 'users@gmail.com', 'farhad', NULL, '$2y$10$t3b8.S.jkWsfzLvxZ1.a2.jQWSkG6CLu34OQaZj.gZAosG1DYx9li', 'avater5.png', NULL, NULL, '2022-07-05 00:01:19', '2022-07-05 00:01:19'),
(4, 2, 'Rabbi', 'rasel@gmail.com', 'rabbi', NULL, '$2y$10$5oLZ/ZyWoa5188TOvYFJzOqbQBQX1go7JPNgDOkNenZerkQb0V0X6', 'avater5.png', NULL, NULL, '2022-07-05 00:06:18', '2022-07-05 00:06:18'),
(5, 2, 'Rabbi', 'rassel@gmail.com', 'rabbis', NULL, '$2y$10$xwQKeQG9cN24TT2i43Z6zeEwJZMf4e8nsg7h1BOkS3GJCSV8ZOo2O', 'avater5.png', NULL, NULL, '2022-07-05 00:09:58', '2022-07-05 00:09:58'),
(6, 2, 'admin', 'freelancerfasdfrhad369@gmail.com', 'rabbimonshi', NULL, '$2y$10$fwyHtpihlYpckRnvILsYZONNXIQo.Vd3HIIpKl40vKvDdnd0El46C', 'avater5.png', NULL, NULL, '2022-07-05 00:11:31', '2022-07-05 00:11:31'),
(7, 2, 'admins', 'admisdfn@gmail.com', 'rabbishidsf', NULL, '$2y$10$d0xjXMJ4BYCt6nkvn0ZxO.XaQ3.dsqz.po6lEbM03js5ErNaIGJsy', 'avater5.png', NULL, NULL, '2022-07-05 00:13:48', '2022-07-05 00:13:48'),
(8, 2, 'freelancerfarhaom', 'freelancer369@gmail.com', 'super-admin', NULL, '$2y$10$K2qz5jZBeQVcTxGFnPtmq.SxXq/80TP6gdo9YIpAuUeyhX1hSNGIe', 'avater5.png', NULL, NULL, '2022-08-19 05:25:59', '2022-08-19 05:25:59');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_post`
--
ALTER TABLE `category_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `logos`
--
ALTER TABLE `logos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_tag`
--
ALTER TABLE `post_tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_user`
--
ALTER TABLE `post_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `socials`
--
ALTER TABLE `socials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscrivers`
--
ALTER TABLE `subscrivers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `category_post`
--
ALTER TABLE `category_post`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `logos`
--
ALTER TABLE `logos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `post_tag`
--
ALTER TABLE `post_tag`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `post_user`
--
ALTER TABLE `post_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `socials`
--
ALTER TABLE `socials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `subscrivers`
--
ALTER TABLE `subscrivers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
