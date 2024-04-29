-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 14, 2023 at 10:34 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `medisecure`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=49 ;

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
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add doctor', 7, 'add_doctor'),
(26, 'Can change doctor', 7, 'change_doctor'),
(27, 'Can delete doctor', 7, 'delete_doctor'),
(28, 'Can view doctor', 7, 'view_doctor'),
(29, 'Can add patient', 8, 'add_patient'),
(30, 'Can change patient', 8, 'change_patient'),
(31, 'Can delete patient', 8, 'delete_patient'),
(32, 'Can view patient', 8, 'view_patient'),
(33, 'Can add patient record', 9, 'add_patientrecord'),
(34, 'Can change patient record', 9, 'change_patientrecord'),
(35, 'Can delete patient record', 9, 'delete_patientrecord'),
(36, 'Can view patient record', 9, 'view_patientrecord'),
(37, 'Can add appoint', 10, 'add_appoint'),
(38, 'Can change appoint', 10, 'change_appoint'),
(39, 'Can delete appoint', 10, 'delete_appoint'),
(40, 'Can view appoint', 10, 'view_appoint'),
(41, 'Can add slot', 11, 'add_slot'),
(42, 'Can change slot', 11, 'change_slot'),
(43, 'Can delete slot', 11, 'delete_slot'),
(44, 'Can view slot', 11, 'view_slot'),
(45, 'Can add staff', 12, 'add_staff'),
(46, 'Can change staff', 12, 'change_staff'),
(47, 'Can delete staff', 12, 'delete_staff'),
(48, 'Can view staff', 12, 'view_staff');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `basic_appoint`
--

CREATE TABLE IF NOT EXISTS `basic_appoint` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `dname` varchar(200) NOT NULL,
  `time` varchar(200) NOT NULL,
  `symptom` varchar(200) NOT NULL,
  `date` varchar(200) NOT NULL,
  `pname` varchar(200) NOT NULL,
  `prescribe` varchar(1000) NOT NULL,
  `status` varchar(200) NOT NULL,
  `amount` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `basic_appoint`
--

INSERT INTO `basic_appoint` (`id`, `dname`, `time`, `symptom`, `date`, `pname`, `prescribe`, `status`, `amount`) VALUES
(1, 'arun', '12.00-3.00pm', 'fever', '2023-05-31', 'vava', 'hkjhjh', 'paid', '300'),
(2, 'arun', '2', 'feverrrr', '2023-05-14', 'jerin', 'dolo\r\nparacetamol 2 times', 'approved', '200'),
(3, 'arun', '2', 'feverrrr', '2023-05-20', 'jerin', '', 'pending', ''),
(4, 'arun', '55', 'jh', '2023-05-09', 'jerin', '', 'pending', '');

-- --------------------------------------------------------

--
-- Table structure for table `basic_blockchainoutput`
--

CREATE TABLE IF NOT EXISTS `basic_blockchainoutput` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `output` varchar(10000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `basic_blockchainoutput`
--

INSERT INTO `basic_blockchainoutput` (`id`, `output`) VALUES
(1, ''),
(2, 'ddacb25fcc8b90bfdb4a15a8ed05ce7ff3ad951582f8301ad9a307f62caae35c\n'),
(3, ''),
(4, '63d22a9a66559d9ec131f8294a116c9ad4784711e9319cc8990621e4058e917b\n'),
(5, ''),
(6, 'a27451cdb681aabc4125045b598e00228f77288e8eae16daa7c5c5ec7bc0d0c4\n'),
(7, ''),
(8, '6fac9ad450be1ea279bd3d772b49158d835ec7e0ad7891c4ce282ee3cdc9ea9e\n');

-- --------------------------------------------------------

--
-- Table structure for table `basic_doctor`
--

CREATE TABLE IF NOT EXISTS `basic_doctor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(130) NOT NULL,
  `password` varchar(100) NOT NULL,
  `address` varchar(230) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `department` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `basic_doctor`
--

INSERT INTO `basic_doctor` (`id`, `name`, `email`, `username`, `password`, `address`, `phone`, `department`, `gender`) VALUES
(1, 'Ashwin Eldose', 'arun@gmail.com', 'arun', '1234', 'ktm', '9655456786', 'Gynecologists', 'Female');

-- --------------------------------------------------------

--
-- Table structure for table `basic_patient`
--

CREATE TABLE IF NOT EXISTS `basic_patient` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(130) NOT NULL,
  `password` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `age` varchar(100) NOT NULL,
  `key` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `basic_patient`
--

INSERT INTO `basic_patient` (`id`, `name`, `email`, `username`, `password`, `gender`, `age`, `key`, `phone`) VALUES
(1, 'amal bs6', 'anu@gmail.com', 'vava', '3457', 'Female', '34', '8516', '6238974688'),
(2, 'test', 'test@gmail.com', 'test', '456', 'Male', '34', '8729', '9446859408'),
(3, 'christy', 'christeenadaniel1999@gmail.com', 'christy', '1212', 'Female', '24', '8629', '6238974688'),
(4, 'aleena', 'christeenadaniel1999@gmail.com', 'aleena', '1231', 'Female', '24', '5539', '8234567890'),
(5, 'jeny', 'jerinjames707@gmail.com', 'jeny@', 'jeny@121', 'Female', '21', '6826', '9400320156'),
(6, 'Babu', 'j@gmail.com', 'jerin', '123', 'Male', '29', '4538', '9645277457');

-- --------------------------------------------------------

--
-- Table structure for table `basic_patientrecord`
--

CREATE TABLE IF NOT EXISTS `basic_patientrecord` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file` varchar(200) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `basic_patientrecord_doctor_id_04dacedd_fk_basic_doctor_id` (`doctor_id`),
  KEY `basic_patientrecord_patient_id_087dcf81_fk_basic_patient_id` (`patient_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `basic_patientrecord`
--

INSERT INTO `basic_patientrecord` (`id`, `file`, `doctor_id`, `patient_id`) VALUES
(1, 'manage105052023143909.py.aes', 1, 1),
(2, 'appli105052023155152.html.aes', 1, 1),
(3, 'appli105052023155349.html.aes', 1, 1),
(4, 'block105062023115753.txt.aes', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `basic_payment`
--

CREATE TABLE IF NOT EXISTS `basic_payment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pname` varchar(200) NOT NULL,
  `dname` varchar(225) NOT NULL,
  `amount` varchar(225) NOT NULL,
  `cardname` varchar(290) NOT NULL,
  `cardnumber` varchar(200) NOT NULL,
  `cvv` varchar(200) NOT NULL,
  `date` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `basic_payment`
--

INSERT INTO `basic_payment` (`id`, `pname`, `dname`, `amount`, `cardname`, `cardnumber`, `cvv`, `date`) VALUES
(1, 'vava', 'arun', '300', 'hih', '098080808088', '899', '2023-05-10'),
(2, 'vava', 'arun', '300', 'uyeuwa', '76576587587585', '6789', '2023-05-06'),
(3, 'vava', 'arun', '300', 'fgg', '54545', '555', '2023-05-18'),
(4, 'vava', 'arun', '300', '5ryty', '24354546', '4545', '2023-05-18'),
(5, 'vava', 'arun', '300', '5ryty', '24354546', '4545', '2023-05-18'),
(6, 'vava', 'arun', '300', 'uyeuwa', '7987979', '778', '2023-05-17');

-- --------------------------------------------------------

--
-- Table structure for table `basic_slot`
--

CREATE TABLE IF NOT EXISTS `basic_slot` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dname` varchar(200) NOT NULL,
  `starttime` varchar(200) NOT NULL,
  `endtime` varchar(200) NOT NULL,
  `date` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `basic_slot`
--

INSERT INTO `basic_slot` (`id`, `dname`, `starttime`, `endtime`, `date`) VALUES
(1, 'arun', '4.00 pm', '9.00 pm', '2023-05-06');

-- --------------------------------------------------------

--
-- Table structure for table `basic_staff`
--

CREATE TABLE IF NOT EXISTS `basic_staff` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(130) NOT NULL,
  `password` varchar(100) NOT NULL,
  `address` varchar(230) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `gender` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `basic_staff`
--

INSERT INTO `basic_staff` (`id`, `name`, `email`, `username`, `password`, `address`, `phone`, `gender`) VALUES
(1, 'amal bs6', 'anu@gmail.com', 'anu', '678', 'ktm', '9655456786', 'Male');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(10, 'basic', 'appoint'),
(7, 'basic', 'doctor'),
(8, 'basic', 'patient'),
(9, 'basic', 'patientrecord'),
(11, 'basic', 'slot'),
(12, 'basic', 'staff'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-05-05 07:14:41.909562'),
(2, 'auth', '0001_initial', '2023-05-05 07:14:43.879379'),
(3, 'admin', '0001_initial', '2023-05-05 07:14:44.421834'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-05-05 07:14:44.444927'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-05-05 07:14:44.465694'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-05-05 07:14:44.676147'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-05-05 07:14:44.826322'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-05-05 07:14:44.945172'),
(9, 'auth', '0004_alter_user_username_opts', '2023-05-05 07:14:44.966538'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-05-05 07:14:45.077534'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-05-05 07:14:45.089593'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-05-05 07:14:45.112585'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-05-05 07:14:45.317627'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-05-05 07:14:45.431491'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-05-05 07:14:45.572390'),
(16, 'auth', '0011_update_proxy_permissions', '2023-05-05 07:14:45.593713'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-05-05 07:14:45.698212'),
(18, 'basic', '0001_initial', '2023-05-05 07:14:46.736600'),
(19, 'basic', '0002_appoint_slot_staff', '2023-05-05 07:14:47.432557'),
(20, 'sessions', '0001_initial', '2023-05-05 07:14:47.671907');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('xxchlu8fwzfzfigd0es7vlwtuuaec8ei', 'eyJkaWQiOjEsImRuYW1lIjoiYXJ1biIsInVzZXIiOiJkb2N0b3IifQ:1py74C:HeDA6L-7AcRZqgD0IpC3un-nnp8-u9Xq4sEeSO8ECWs', '2023-05-28 08:26:56.844807');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

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
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `basic_patientrecord`
--
ALTER TABLE `basic_patientrecord`
  ADD CONSTRAINT `basic_patientrecord_doctor_id_04dacedd_fk_basic_doctor_id` FOREIGN KEY (`doctor_id`) REFERENCES `basic_doctor` (`id`),
  ADD CONSTRAINT `basic_patientrecord_patient_id_087dcf81_fk_basic_patient_id` FOREIGN KEY (`patient_id`) REFERENCES `basic_patient` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
