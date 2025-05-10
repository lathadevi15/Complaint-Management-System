-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 10, 2025 at 06:04 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `complaintdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `adreg`
--

CREATE TABLE `adreg` (
  `id` int(11) NOT NULL,
  `aid` int(15) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` int(10) NOT NULL,
  `email` varchar(20) NOT NULL,
  `pwd` varchar(20) NOT NULL,
  `repwd` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `adreg`
--

INSERT INTO `adreg` (`id`, `aid`, `name`, `phone`, `email`, `pwd`, `repwd`) VALUES
(1, 2147483647, 'Tharak', 2147483647, 'tharak@gmail.com', 'tharak', 'tharak'),
(2, 738273, 'Latha', 2147483647, 'lathadevi0007@gmail.', 'qqq', 'qqq'),
(3, 738273, 'Latha', 2147483647, 'lathadevi0007@gmail.', 'ppp', 'ppp'),
(4, 2147483647, 'Latha', 2147483647, 'lathadevi0007@gmail.', 'qqq', 'qqq'),
(5, 738273, 'Latha', 2147483647, 'lathadevi0007@gmail.', 'ddd', 'ddd'),
(6, 738273, 'Latha', 2147483647, 'lathadevi0007@gmail.', 'ddd', 'ddd'),
(7, 738273, 'Latha', 2147483647, 'lathadevi0007@gmail.', 'jhkjh', 'hkjhkjh'),
(8, 738273, 'Latha', 2147483647, 'lathadevi0007@gmail.', 'jhkjh', 'hkjhkjh');

-- --------------------------------------------------------

--
-- Table structure for table `athreg`
--

CREATE TABLE `athreg` (
  `id` int(11) NOT NULL,
  `aid` int(15) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Phoneno` varchar(10) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `pwd` varchar(20) NOT NULL,
  `Repwd` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `athreg`
--

INSERT INTO `athreg` (`id`, `aid`, `Name`, `Phoneno`, `Email`, `pwd`, `Repwd`) VALUES
(1, 1000, 'Sita', '9876543219', 'sita@gmail.com', 'sita', 'sita'),
(2, 1002, 'Ramulu', '9876543632', 'ramulu@gmail.com', 'ramulu', 'ramulu'),
(3, 1003, 'vijayalakshmi', '9123456789', 'vijayalakshmi@gmail.', 'vijaya', 'vijaya'),
(4, 1004, 'Arjun', '9123456786', 'arjun@gmail.com', 'arjun', 'arjun'),
(5, 1005, 'Balaji', '9123456781', 'balaji@gmail.com', 'balaji', 'balaji'),
(6, 738273, 'Latha', '0630989278', 'lathadevi0007@gmail.', 'www', 'www'),
(7, 2147483647, 'Latha', '0630989278', 'lathadevi0007@gmail.', 'jkljlk', 'lkllkl;k'),
(8, 2147483647, 'Latha', '0630989278', 'lathadevi0007@gmail.', 'jkljlk', 'lkllkl;k'),
(9, 2147483647, 'Latha', '0630989278', 'lathadevi0007@gmail.', 'jkljlk', 'lkllkl;k'),
(10, 2147483647, 'Latha', '0630989278', 'lathadevi0007@gmail.', 'jkljlk', 'lkllkl;k'),
(11, 2147483647, 'Latha', '0630989278', 'lathadevi0007@gmail.', 'jkljlk', 'lkllkl;k'),
(12, 2147483647, 'Latha', '0630989278', 'lathadevi0007@gmail.', 'jkljlk', 'lkllkl;k'),
(13, 2147483647, 'Latha', '0630989278', 'lathadevi0007@gmail.', 'jkljlk', 'lkllkl;k'),
(14, 738273, 'Latha', '0630989278', 'lathadevi0007@gmail.', 'aaa', 'aaa');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$720000$G6cBxZ6VVOiGljW0Yf63Oq$/pqV2XWREAvbY33AOEYjUbvZ5VxfRfB2QyQoi45Q2l4=', NULL, 0, 'lathadevi0007@gmail.com', 'Latha', '', '', 0, 1, '2025-05-10 08:15:38.346699'),
(2, 'pbkdf2_sha256$720000$sDg1ccJnsr7qBzHtfy4t3R$hFqeSClb8aiPWUoYrIqeodLtbLIb0M3JV00PV+NH+tk=', NULL, 0, 'lathadevi@gmail.com', 'Latha', '', '', 0, 1, '2025-05-10 08:18:40.802777');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `compreg`
--

CREATE TABLE `compreg` (
  `name` varchar(10) NOT NULL,
  `description` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comreg`
--

CREATE TABLE `comreg` (
  `id` int(5) NOT NULL,
  `cid` varchar(20) NOT NULL,
  `name` varchar(10) NOT NULL,
  `hostel` varchar(20) NOT NULL,
  `issuetype` varchar(20) NOT NULL,
  `description` varchar(200) NOT NULL,
  `date_registered` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `comreg`
--

INSERT INTO `comreg` (`id`, `cid`, `name`, `hostel`, `issuetype`, `description`, `date_registered`) VALUES
(4, '9876543210', 'kavitha', 'Premises.1', 'messissues', 'Food is not good in Premises 1', '2025-05-10 10:40:11');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-11-29 16:26:13.190376'),
(2, 'auth', '0001_initial', '2024-11-29 16:26:13.651201'),
(3, 'admin', '0001_initial', '2024-11-29 16:26:13.783731'),
(4, 'admin', '0002_logentry_remove_auto_add', '2024-11-29 16:26:13.792653'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2024-11-29 16:26:13.805354'),
(6, 'contenttypes', '0002_remove_content_type_name', '2024-11-29 16:26:13.867730'),
(7, 'auth', '0002_alter_permission_name_max_length', '2024-11-29 16:26:13.889041'),
(8, 'auth', '0003_alter_user_email_max_length', '2024-11-29 16:26:13.908164'),
(9, 'auth', '0004_alter_user_username_opts', '2024-11-29 16:26:13.919156'),
(10, 'auth', '0005_alter_user_last_login_null', '2024-11-29 16:26:13.958194'),
(11, 'auth', '0006_require_contenttypes_0002', '2024-11-29 16:26:13.961202'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2024-11-29 16:26:13.972615'),
(13, 'auth', '0008_alter_user_username_max_length', '2024-11-29 16:26:13.992047'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2024-11-29 16:26:14.013171'),
(15, 'auth', '0010_alter_group_name_max_length', '2024-11-29 16:26:14.029695'),
(16, 'auth', '0011_update_proxy_permissions', '2024-11-29 16:26:14.040219'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2024-11-29 16:26:14.060049'),
(18, 'sessions', '0001_initial', '2024-11-29 16:26:14.088893');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emp`
--

CREATE TABLE `emp` (
  `id` int(20) NOT NULL,
  `Name` varchar(45) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `Address` varchar(53) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(20) NOT NULL,
  `name` varchar(45) NOT NULL,
  `email` varchar(20) NOT NULL,
  `password` varchar(53) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `name`, `email`, `password`) VALUES
(1, '', '', ''),
(2, 'M Manjula', 'lathadevi0007@gmail.', 'aAaAsas'),
(3, 'N. Lathadevi', 'dsmn@gmail.com', 'cccdfds');

-- --------------------------------------------------------

--
-- Table structure for table `response`
--

CREATE TABLE `response` (
  `id` int(11) NOT NULL,
  `hostel` varchar(11) NOT NULL,
  `issuetype` varchar(20) NOT NULL,
  `response` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `response`
--

INSERT INTO `response` (`id`, `hostel`, `issuetype`, `response`) VALUES
(1, 'Premises.1', 'maintanence issues', 'lk;lk;lkl;kqq'),
(2, 'Premises.1', 'maintanence issues', 'kljkjl;k;lk'),
(3, 'Premises.1', 'messissues', 'khklhlk'),
(4, 'Premises.1', 'messissues', 'my response');

-- --------------------------------------------------------

--
-- Table structure for table `streg`
--

CREATE TABLE `streg` (
  `id` int(11) NOT NULL,
  `sid` int(20) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Phoneno` int(10) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `pwd` varchar(20) NOT NULL,
  `pepwd` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `streg`
--

INSERT INTO `streg` (`id`, `sid`, `Name`, `Phoneno`, `Email`, `pwd`, `pepwd`) VALUES
(1, 738273, 'Latha', 2147483647, 'lathadevi0007@gmail.', '123', '123'),
(2, 738273, 'Latha', 2147483647, 'lathadevi0007@gmail.', 'sss', 'sss'),
(3, 738273, 'Latha', 2147483647, 'lathadevi0007@gmail.', 'sss', 'sss'),
(4, 789789, 'Latha', 6309, 'lathadevi@gmail.com', '', ''),
(5, 7382733, 'Latha', 333, 'latha7@gmail.com', '', ''),
(6, 7382732, 'Latha', 222, 'lathai0007@gmail.com', 'lll', ''),
(7, 123456789, 'Latha', 630989278, 'latha@gmail.com', 'aaa', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adreg`
--
ALTER TABLE `adreg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `athreg`
--
ALTER TABLE `athreg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `comreg`
--
ALTER TABLE `comreg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `response`
--
ALTER TABLE `response`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `streg`
--
ALTER TABLE `streg`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adreg`
--
ALTER TABLE `adreg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `athreg`
--
ALTER TABLE `athreg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comreg`
--
ALTER TABLE `comreg`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `streg`
--
ALTER TABLE `streg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
