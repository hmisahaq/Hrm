-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 24, 2017 at 07:34 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hrmbdtas_hrm`
--

-- --------------------------------------------------------

--
-- Table structure for table `acc_account_name`
--
-- Creation: Aug 16, 2017 at 10:18 AM
--

CREATE TABLE IF NOT EXISTS `acc_account_name` (
  `account_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `account_name` varchar(255) NOT NULL,
  `account_type` int(11) NOT NULL,
  PRIMARY KEY (`account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- RELATIONS FOR TABLE `acc_account_name`:
--

--
-- Dumping data for table `acc_account_name`
--

INSERT INTO `acc_account_name` (`account_id`, `account_name`, `account_type`) VALUES
(1, 'Employee Salary', 0),
(2, 'Product Sale', 1);

-- --------------------------------------------------------

--
-- Table structure for table `acn_account_transaction`
--
-- Creation: Aug 16, 2017 at 10:19 AM
--

CREATE TABLE IF NOT EXISTS `acn_account_transaction` (
  `account_tran_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `account_id` int(11) NOT NULL,
  `transaction_description` varchar(255) NOT NULL,
  `amount` varchar(25) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `create_by_id` varchar(25) NOT NULL,
  PRIMARY KEY (`account_tran_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- RELATIONS FOR TABLE `acn_account_transaction`:
--

--
-- Dumping data for table `acn_account_transaction`
--

INSERT INTO `acn_account_transaction` (`account_tran_id`, `account_id`, `transaction_description`, `amount`, `payment_id`, `create_by_id`) VALUES
(1, 2, 'dfsadfasdf', '234234', 12, 'John Doe');

-- --------------------------------------------------------

--
-- Table structure for table `award`
--
-- Creation: Aug 16, 2017 at 11:09 AM
--

CREATE TABLE IF NOT EXISTS `award` (
  `award_id` int(11) NOT NULL AUTO_INCREMENT,
  `award_name` varchar(50) NOT NULL,
  `aw_description` varchar(200) NOT NULL,
  `awr_gift_item` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `employee_id` int(11) NOT NULL,
  `awarded_by` varchar(30) NOT NULL,
  PRIMARY KEY (`award_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- RELATIONS FOR TABLE `award`:
--

--
-- Dumping data for table `award`
--

INSERT INTO `award` (`award_id`, `award_name`, `aw_description`, `awr_gift_item`, `date`, `employee_id`, `awarded_by`) VALUES
(1, 'Super Performance', 'dsfsdfsdf', 'check', '2017-08-17', 201012, 'dsf');

-- --------------------------------------------------------

--
-- Table structure for table `candidate_basic_info`
--
-- Creation: Aug 13, 2017 at 11:22 AM
--

CREATE TABLE IF NOT EXISTS `candidate_basic_info` (
  `can_id` varchar(20) NOT NULL,
  `first_name` varchar(11) CHARACTER SET latin1 NOT NULL,
  `last_name` varchar(30) CHARACTER SET latin1 NOT NULL,
  `email` varchar(30) CHARACTER SET latin1 NOT NULL,
  `phone` varchar(20) CHARACTER SET latin1 NOT NULL,
  `alter_phone` varchar(20) CHARACTER SET latin1 NOT NULL,
  `present_address` varchar(100) CHARACTER SET latin1 NOT NULL,
  `parmanent_address` varchar(100) CHARACTER SET latin1 NOT NULL,
  `picture` text NOT NULL,
  PRIMARY KEY (`can_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- RELATIONS FOR TABLE `candidate_basic_info`:
--

--
-- Dumping data for table `candidate_basic_info`
--

INSERT INTO `candidate_basic_info` (`can_id`, `first_name`, `last_name`, `email`, `phone`, `alter_phone`, `present_address`, `parmanent_address`, `picture`) VALUES
('150072625687S', 'Sumon', 'Ahmad', 'hab@gmail.com', '01955110016', '01730164623', 'sfdsfsd', 'fsdfsdf', './application/modules/circularprocess/assets/images/2017-07-22/2.jpg'),
('150073610425S', 'Rinku ', 'Thandar Mill', 'tr@bdtask.com', '3456789098', '3345678987', '98/A, East Lackx view,West Nkhali', '98/A, East Lackx view,West Nkhali', './application/modules/circularprocess/assets/images/2017-07-22/cha1.jpg'),
('150073627021S', 'Rex ', 'Mattins', 'rax@bdtask.com', '762345678', '876543456', 'South Ferri Ghat,Padma River,Chandpur', 'South Ferri Ghat,Padma River,Chandpur', './application/modules/circularprocess/assets/images/2017-07-22/hum.jpg'),
('150073648921S', 'Michael ', 'Jerad ', 'mic@bdtask.com', '234567890', '234567890', '231,East Patalipur,Sonamuri', '231,East Patalipur,Sonamuri', './application/modules/circularprocess/assets/images/2017-07-22/por1.jpg'),
('150073689333S', 'Rishab ', 'Pant', 'pant@bdtask.com', '987654323456', '976544564567', 'South Ferri Ghat,Padma River,Chandpur', 'South Ferri Ghat,Padma River,Chandpur', './application/modules/circularprocess/assets/images/2017-07-22/hum1.jpg'),
('150078881074S', 'Mr', 'Kabir', 'kabir@gmail.com', '01955110016', '01730164623', 'Mirpur', 'Shariatpur', './application/modules/circularprocess/assets/images/2017-07-23/3.jpg'),
('150080778404S', 'Tory', 'Burhan', 'tory@bdtask.com', '123456789078', '876543456789', 'South Ferri Ghat,Padma River,Chandpur', '231,East Patalipur,Sonamuri', './application/modules/circularprocess/assets/images/2017-07-23/cha.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `candidate_education_info`
--
-- Creation: Aug 13, 2017 at 11:22 AM
--

CREATE TABLE IF NOT EXISTS `candidate_education_info` (
  `can_edu_id` int(11) NOT NULL AUTO_INCREMENT,
  `can_id` varchar(30) NOT NULL,
  `degree_name` varchar(30) CHARACTER SET latin1 NOT NULL,
  `university_name` varchar(50) CHARACTER SET latin1 NOT NULL,
  `cgp` varchar(30) CHARACTER SET latin1 NOT NULL,
  `comments` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `sequencee` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`can_edu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;

--
-- RELATIONS FOR TABLE `candidate_education_info`:
--

--
-- Dumping data for table `candidate_education_info`
--

INSERT INTO `candidate_education_info` (`can_edu_id`, `can_id`, `degree_name`, `university_name`, `cgp`, `comments`, `sequencee`) VALUES
(7, '150072625687S', 'MSC', 'National University', '3.30', 'fghfghfgh', NULL),
(8, '150072625687S', 'Bsc', 'fgh', 'fgh', 'fghfghfgh', NULL),
(9, '150072625687S', 'ff', 'fgh', 'fgh', 'fghfghfgh', NULL),
(47, '150073627021S', 'kkkkkkkkkk', 'University Of Mosco', '3.45', 'Lorem ipsum dolor sit amet, consectetur adipiscing', NULL),
(48, '150073627021S', 'Diploma in International Relat', 'University Of Mosco', '3.45', 'Lorem ipsum dolor sit amet, consectetur adipiscing', NULL),
(49, '150073627021S', 'Diploma in International Relat', 'University Of Mosco', '3.45', 'Lorem ipsum dolor sit amet, consectetur adipiscing', NULL),
(50, '150073627021S', 'Goood88', 'Nordan', '3', 'Lorem ipsum dolor sit amet, consectetur adipiscing', NULL),
(51, '150073627021S', 'MSceeeeeeeeee', 'National University', '3.30', 'Lorem ipsum dolor sit amet, consectetur adipiscing', NULL),
(52, '150073627021S', 'MMMMMMMMM', 'National University', '3.30', 'Lorem ipsum dolor sit amet, consectetur adipiscing', NULL),
(53, '150073627021S', 'hhhhhhhhhh', 'df', '3.30', 'Lorem ipsum dolor sit amet, consectetur adipiscing', NULL),
(54, '150080778404S', 'MBA', 'Dhaka University', '3.45', 'lorem ipasd orgat tugan rtuedr', NULL),
(55, '150080778404S', 'BBA', 'University Of South Amishapara', '3.47', 'lorem ipasd orgat tugan rtuedr', NULL),
(56, '150080778404S', '', '', '', 'lorem ipasd orgat tugan rtuedr', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `candidate_interview`
--
-- Creation: Aug 13, 2017 at 11:22 AM
--

CREATE TABLE IF NOT EXISTS `candidate_interview` (
  `can_int_id` int(11) NOT NULL AUTO_INCREMENT,
  `can_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  `job_adv_id` varchar(50) CHARACTER SET latin1 NOT NULL,
  `interview_date` varchar(30) CHARACTER SET latin1 NOT NULL,
  `interviewer_id` varchar(50) CHARACTER SET latin1 NOT NULL,
  `interview_marks` varchar(50) CHARACTER SET latin1 NOT NULL,
  `written_total_marks` varchar(50) CHARACTER SET latin1 NOT NULL,
  `mcq_total_marks` varchar(50) CHARACTER SET latin1 NOT NULL,
  `total_marks` varchar(30) NOT NULL,
  `recommandation` varchar(50) CHARACTER SET latin1 NOT NULL,
  `selection` varchar(50) CHARACTER SET latin1 NOT NULL,
  `details` varchar(50) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`can_int_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- RELATIONS FOR TABLE `candidate_interview`:
--

--
-- Dumping data for table `candidate_interview`
--

INSERT INTO `candidate_interview` (`can_int_id`, `can_id`, `job_adv_id`, `interview_date`, `interviewer_id`, `interview_marks`, `written_total_marks`, `mcq_total_marks`, `total_marks`, `recommandation`, `selection`, `details`) VALUES
(1, '150028880547S', 'Pk', '20-07-2017', 'test', '20', '32', '25', '91', 'ewr', 'ok', 'fgdfg'),
(2, '14995956377771L', 'management', '2017-07-23', 'ceo', '50', '100', '50', '200', 'na', 'ok', 'uyyh'),
(3, '150073610425S', 'Junior Executive ', '2017-07-27', 'Michele Kusu', '78', '70', '89', '237', 'Yes', 'ok', 'Lorem ipsum dolor sit amet, consectetur adipiscing'),
(4, '150073648921S', 'Junior Software Developer', '2017-07-28', 'Niranjan Khan Bin Latif', '50', '60', '70', '180', 'No', 'No', 'Lorem ipsum dolor sit amet, consectetur adipiscing'),
(5, '150078881074S', 'Chief Executive', '2017-07-23', 'MR', '25', '25', '20', '70', 'ewr', 'ok', 'ghfg'),
(6, '150073689333S', 'Lead Programmar Manager', '2017-07-17', 'MR', '10', '26', '23', '59', 'ewr', 'ok', 'sdfsdf');

-- --------------------------------------------------------

--
-- Table structure for table `candidate_selection`
--
-- Creation: Aug 13, 2017 at 11:23 AM
--

CREATE TABLE IF NOT EXISTS `candidate_selection` (
  `can_sel_id` int(11) NOT NULL AUTO_INCREMENT,
  `can_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  `employee_id` varchar(50) CHARACTER SET latin1 NOT NULL,
  `pos_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  `selection_terms` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`can_sel_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- RELATIONS FOR TABLE `candidate_selection`:
--

--
-- Dumping data for table `candidate_selection`
--

INSERT INTO `candidate_selection` (`can_sel_id`, `can_id`, `employee_id`, `pos_id`, `selection_terms`) VALUES
(1, '150073610425S', 'STD897', 'Junior Executive ', 'Lorem ipsum dolor sit amet, consectetur adipiscing'),
(2, '150028880547S', 'TRD567', 'Pk', 'Lorem ipsum dolor sit amet, consectetur adipiscing'),
(3, '150078881074S', '1111', 'Chief Executive', 'Mango');

-- --------------------------------------------------------

--
-- Table structure for table `candidate_shortlist`
--
-- Creation: Aug 13, 2017 at 11:23 AM
--

CREATE TABLE IF NOT EXISTS `candidate_shortlist` (
  `can_short_id` int(11) NOT NULL AUTO_INCREMENT,
  `can_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  `job_adv_id` varchar(50) CHARACTER SET latin1 NOT NULL,
  `date_of_shortlist` varchar(50) CHARACTER SET latin1 NOT NULL,
  `interview_date` varchar(30) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`can_short_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- RELATIONS FOR TABLE `candidate_shortlist`:
--

--
-- Dumping data for table `candidate_shortlist`
--

INSERT INTO `candidate_shortlist` (`can_short_id`, `can_id`, `job_adv_id`, `date_of_shortlist`, `interview_date`) VALUES
(5, '150073610425S', 'Junior Executive ', '2017-07-22', '29-07-2017'),
(6, '150072625687S', 'Senior Executive', '2017-07-22', '30-07-2017'),
(7, '150073648921S', 'Junior Software Developer', '2017-07-22', '26-07-2017'),
(8, '150073689333S', 'Lead OOOOOOOOOO', '2017-07-22', '27-07-2017');

-- --------------------------------------------------------

--
-- Table structure for table `candidate_workexperience`
--
-- Creation: Aug 13, 2017 at 11:23 AM
--

CREATE TABLE IF NOT EXISTS `candidate_workexperience` (
  `can_workexp_id` int(11) NOT NULL AUTO_INCREMENT,
  `can_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  `company_name` varchar(50) CHARACTER SET latin1 NOT NULL,
  `working_period` varchar(50) CHARACTER SET latin1 NOT NULL,
  `duties` varchar(30) CHARACTER SET latin1 NOT NULL,
  `supervisor` varchar(50) CHARACTER SET latin1 NOT NULL,
  `sequencee` varchar(10) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`can_workexp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

--
-- RELATIONS FOR TABLE `candidate_workexperience`:
--

--
-- Dumping data for table `candidate_workexperience`
--

INSERT INTO `candidate_workexperience` (`can_workexp_id`, `can_id`, `company_name`, `working_period`, `duties`, `supervisor`, `sequencee`) VALUES
(1, '150072625687S', 'Infostystem', '07/22/2017 - 07/22/2017', 'Senior Programmar', 'sdfsdf', ''),
(2, '150072625687S', 'sdf', '07/22/2017 - 07/22/2017', 'dsfsd', 'fsdf', ''),
(3, '150072625687S', 'sdf', '07/22/2017 - 07/22/2017', 'sdfsdf', 'dsfsdf', ''),
(4, '150073610425S', 'ELIASH & ASSOCIATES', '03/22/2017 - 07/22/2017', '500', 'Mira Chetarjee ', ''),
(5, '150073610425S', '', '07/22/2017 - 07/22/2017', '', '', ''),
(6, '150073610425S', '', '07/22/2017 - 07/22/2017', '', '', ''),
(7, '150073627021S', 'UTY BANG', '07/22/2017 - 07/22/2017', '670', 'Murat Rodriguaz', ''),
(8, '150073627021S', 'MEDI LIVE', '07/22/2017 - 07/22/2017', '5000', 'Nicola Ogastin', ''),
(9, '150073627021S', '', '07/22/2017 - 07/22/2017', '', '', ''),
(10, '150073648921S', 'BDTASK', '01/22/2017 - 07/22/2017', '5000', 'Murat Rodriguaz', ''),
(11, '150073648921S', 'ELIASH & ASSOCIATES', '07/22/2017 - 07/22/2017', '700', 'Murad Zadran', ''),
(12, '150073648921S', '', '07/22/2017 - 07/22/2017', '', '', ''),
(13, '150073689333S', 'Michle Co.', '01/22/2017 - 07/22/2017', 'Executive', 'Murad Zadran', ''),
(14, '150073689333S', 'Motiur Verities Ltd ', '07/22/2016 - 07/22/2016', 'Junior Executive', 'Mira Chetarjee ', ''),
(15, '150073689333S', '', '07/22/2017 - 07/22/2017', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `employee_history`
--
-- Creation: Aug 13, 2017 at 11:23 AM
--

CREATE TABLE IF NOT EXISTS `employee_history` (
  `emp_his_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` varchar(30) NOT NULL,
  `pos_id` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(32) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `alter_phone` varchar(30) NOT NULL,
  `present_address` varchar(100) NOT NULL,
  `parmanent_address` varchar(100) NOT NULL,
  `picture` text NOT NULL,
  `degree_name` varchar(30) NOT NULL,
  `university_name` varchar(50) NOT NULL,
  `cgp` varchar(30) NOT NULL,
  `passing_year` varchar(30) NOT NULL,
  `company_name` varchar(30) NOT NULL,
  `working_period` varchar(30) NOT NULL,
  `duties` varchar(30) NOT NULL,
  `supervisor` varchar(30) NOT NULL,
  `signature` text NOT NULL,
  PRIMARY KEY (`emp_his_id`)
) ENGINE=InnoDB AUTO_INCREMENT=134 DEFAULT CHARSET=utf8;

--
-- RELATIONS FOR TABLE `employee_history`:
--

--
-- Dumping data for table `employee_history`
--

INSERT INTO `employee_history` (`emp_his_id`, `employee_id`, `pos_id`, `first_name`, `last_name`, `email`, `phone`, `alter_phone`, `present_address`, `parmanent_address`, `picture`, `degree_name`, `university_name`, `cgp`, `passing_year`, `company_name`, `working_period`, `duties`, `supervisor`, `signature`) VALUES
(83, '100001', 'Junior Software Developer', 'Alistai', 'cooke', 'alister@gmail.com', '+9874561238', '+9874525588', 'Thomas Nolan Kaszas II 5322 Otter Lane Middleberge FL 32068', 'Thomas Nolan Kaszas II 5322 Otter Lane Middleberge FL 32068', './application/modules/employee/assets/images/2017-07-22/man.jpg', 'Bsc in Csc', 'Massachusetts Institute of Technology', '3.61', '2010', 'Harbingers Systems', '07/22/2010 - 07/22/2016', 'Software Developer', 'Morris Alon', ''),
(84, '100001', 'Junior Software Developer', 'Alistai', 'cooke', 'alister@gmail.com', '+9874561238', '+9874525588', 'Thomas Nolan Kaszas II 5322 Otter Lane Middleberge FL 32068', 'Thomas Nolan Kaszas II 5322 Otter Lane Middleberge FL 32068', './application/modules/employee/assets/images/2017-07-22/man.jpg', '', '', '', '', '', '07/22/2017 - 07/22/2017', '', '', ''),
(85, '100001', 'Junior Software Developer', 'Alistai', 'cooke', 'alister@gmail.com', '+9874561238', '+9874525588', 'Thomas Nolan Kaszas II 5322 Otter Lane Middleberge FL 32068', 'Thomas Nolan Kaszas II 5322 Otter Lane Middleberge FL 32068', './application/modules/employee/assets/images/2017-07-22/man.jpg', '', '', '', '', '', '07/22/2017 - 07/22/2017', '', '', ''),
(92, '20019', 'Marketing Manager', 'Rabina', 'ance', 'Rabina@gmail.com', '+7898452692', '+4587954789', 'Peter Lin 74 Green Street Tunapuna Trinidad W.I.', 'Peter Lin 74 Green Street Tunapuna Trinidad W.I.', './application/modules/employee/assets/images/2017-07-22/peo.jpg', 'MBA', 'Cornell University', '3.88', '20112', 'Root It', '07/10/2013 - 07/22/2016', 'Marketing Manager', 'Morris Alon', ''),
(93, '20019', 'Marketing Manager', 'Rabina', 'ance', 'Rabina@gmail.com', '+7898452692', '+4587954789', 'Peter Lin 74 Green Street Tunapuna Trinidad W.I.', 'Peter Lin 74 Green Street Tunapuna Trinidad W.I.', './application/modules/employee/assets/images/2017-07-22/peo.jpg', '', '', '', '', '', '07/22/2017 - 07/22/2017', '', '', ''),
(94, '20019', 'Marketing Manager', 'Rabina', 'ance', 'Rabina@gmail.com', '+7898452692', '+4587954789', 'Peter Lin 74 Green Street Tunapuna Trinidad W.I.', 'Peter Lin 74 Green Street Tunapuna Trinidad W.I.', './application/modules/employee/assets/images/2017-07-22/peo.jpg', '', '', '', '', '', '07/22/2017 - 07/22/2017', '', '', ''),
(95, '20019', 'Marketing Manager', 'Rabina', 'ance', 'Rabina@gmail.com', '+7898452692', '+4587954789', 'Peter Lin 74 Green Street Tunapuna Trinidad W.I.', 'Peter Lin 74 Green Street Tunapuna Trinidad W.I.', './application/modules/employee/assets/images/2017-07-22/peo.jpg', '', '', '', '', '', '07/22/2017 - 07/22/2017', '', '', ''),
(96, '20019', 'Marketing Manager', 'Rabina', 'ance', 'Rabina@gmail.com', '+7898452692', '+4587954789', 'Peter Lin 74 Green Street Tunapuna Trinidad W.I.', 'Peter Lin 74 Green Street Tunapuna Trinidad W.I.', './application/modules/employee/assets/images/2017-07-22/peo.jpg', '', '', '', '', '', '07/22/2017 - 07/22/2017', '', '', ''),
(97, '1235', 'General Manager', 'Alax', 'Robin', 'alaxr@example.com', '+5753221212', '+7301646238', 'Cheng Li\r\n7-301 Houjie\r\nMiddle of JiangNan Road\r\nGuang Zhou 510240\r\nGuangDong  P.R', 'Cheng Li\r\n7-301 Houjie\r\nMiddle of JiangNan Road\r\nGuang Zhou 510240\r\nGuangDong  P.R. Chin', './application/modules/employee/assets/images/2017-07-22/man1.jpg', 'M.Sc in It', 'Harvard University', '3.50', '2005', 'CMCS Limited', '07/10/2007 - 07/10/2016', 'Manager', 'Root Ron', ''),
(98, '1235', 'General Manager', 'Alax', 'Robin', 'alaxr@example.com', '+5753221212', '+7301646238', 'Cheng Li\r\n7-301 Houjie\r\nMiddle of JiangNan Road\r\nGuang Zhou 510240\r\nGuangDong  P.R', 'Cheng Li\r\n7-301 Houjie\r\nMiddle of JiangNan Road\r\nGuang Zhou 510240\r\nGuangDong  P.R. Chin', './application/modules/employee/assets/images/2017-07-22/man1.jpg', '', '', '', '', '', '07/10/2017 - 07/10/2020', 'j', '', ''),
(99, '1235', 'General Manager', 'Alax', 'Robin', 'alaxr@example.com', '+5753221212', '+7301646238', 'Cheng Li\r\n7-301 Houjie\r\nMiddle of JiangNan Road\r\nGuang Zhou 510240\r\nGuangDong  P.R', 'Cheng Li\r\n7-301 Houjie\r\nMiddle of JiangNan Road\r\nGuang Zhou 510240\r\nGuangDong  P.R. Chin', './application/modules/employee/assets/images/2017-07-22/man1.jpg', '', '', '', '', '', '07/10/2017 - 07/10/2017', '', '', ''),
(100, '1235', 'General Manager', 'Alax', 'Robin', 'alaxr@example.com', '+5753221212', '+7301646238', 'Cheng Li\r\n7-301 Houjie\r\nMiddle of JiangNan Road\r\nGuang Zhou 510240\r\nGuangDong  P.R', 'Cheng Li\r\n7-301 Houjie\r\nMiddle of JiangNan Road\r\nGuang Zhou 510240\r\nGuangDong  P.R. Chin', './application/modules/employee/assets/images/2017-07-22/man1.jpg', '', '', '', '', '', '07/22/2017 - 07/22/2017', '', '', ''),
(101, '1235', 'General Manager', 'Alax', 'Robin', 'alaxr@example.com', '+5753221212', '+7301646238', 'Cheng Li\r\n7-301 Houjie\r\nMiddle of JiangNan Road\r\nGuang Zhou 510240\r\nGuangDong  P.R', 'Cheng Li\r\n7-301 Houjie\r\nMiddle of JiangNan Road\r\nGuang Zhou 510240\r\nGuangDong  P.R. Chin', './application/modules/employee/assets/images/2017-07-22/man1.jpg', '', '', '', '', '', '07/22/2017 - 07/22/2017', '', '', ''),
(107, '20021', 'Accountant', 'Alisa', 'ali', 'alios@yahoo.com', '+1245789564', '+124578945', 'Peter Lin 74 Green Street Tunapuna Trinidad W.I.', 'Peter Lin 74 Green Street Tunapuna Trinidad W.I.', './application/modules/employee/assets/images/2017-07-22/gir.jpg', 'MBA', 'University of California, Berkeley', '3.75', '2015', '', '07/22/2017 - 07/22/2017', '', '', ''),
(108, '20021', 'Accountant', 'Alisa', 'ali', 'alios@yahoo.com', '+1245789564', '+124578945', 'Peter Lin 74 Green Street Tunapuna Trinidad W.I.', 'Peter Lin 74 Green Street Tunapuna Trinidad W.I.', './application/modules/employee/assets/images/2017-07-22/gir.jpg', '', '', '', '', '', '07/22/2017 - 07/22/2017', '', '', ''),
(109, '20021', 'Accountant', 'Alisa', 'ali', 'alios@yahoo.com', '+1245789564', '+124578945', 'Peter Lin 74 Green Street Tunapuna Trinidad W.I.', 'Peter Lin 74 Green Street Tunapuna Trinidad W.I.', './application/modules/employee/assets/images/2017-07-22/gir.jpg', '', '', '', '', '', '07/22/2017 - 07/22/2017', '', '', ''),
(110, '20030', 'Hrm', 'Morgan ', 'Aliot', 'aliotm@gmail.com', '+5448548975', '+4895623489', 'John Alexander Diaz HQ USAREUR & 7A, CMR 420 Box 676 APO AE 09063-0000', 'John Alexander Diaz HQ USAREUR & 7A, CMR 420 Box 676 APO AE 09063-0000', './application/modules/employee/assets/images/2017-07-22/man2.jpg', 'MBA', 'University of Michigan', '3.5', '2015', '', '07/22/2017 - 07/22/2017', '', '', ''),
(111, '20030', 'Hrm', 'Morgan ', 'Aliot', 'aliotm@gmail.com', '+5448548975', '+4895623489', 'John Alexander Diaz HQ USAREUR & 7A, CMR 420 Box 676 APO AE 09063-0000', 'John Alexander Diaz HQ USAREUR & 7A, CMR 420 Box 676 APO AE 09063-0000', './application/modules/employee/assets/images/2017-07-22/man2.jpg', '', '', '', '', '', '07/22/2017 - 07/22/2017', '', '', ''),
(112, '20030', 'Hrm', 'Morgan ', 'Aliot', 'aliotm@gmail.com', '+5448548975', '+4895623489', 'John Alexander Diaz HQ USAREUR & 7A, CMR 420 Box 676 APO AE 09063-0000', 'John Alexander Diaz HQ USAREUR & 7A, CMR 420 Box 676 APO AE 09063-0000', './application/modules/employee/assets/images/2017-07-22/man2.jpg', '', '', '', '', '', '07/22/2017 - 07/22/2017', '', '', ''),
(113, '201012', 'senior Software Developer', 'Morris', ' Alon', 'morris@yahoo.com', '+154749654', '+12345689', 'Nicholas Desmond Simon Graham Half-Way Pond, Georgetown,', 'Permanent Address Thomas Nolan Kaszas II 5322 Otter Lane Middleberge FL 32068', './application/modules/employee/assets/images/2017-07-22/hum.jpg', 'Bsc in Csc', 'Stanford University', '3.5', '2008', 'Firstsource Time', '08/22/0209 - 07/22/2015', 'Junior Software Developer', 'Al robin', ''),
(114, '201012', 'senior Software Developer', 'Morris', ' Alon', 'morris@yahoo.com', '+154749654', '+12345689', 'Nicholas Desmond Simon Graham Half-Way Pond, Georgetown,', 'Permanent Address Thomas Nolan Kaszas II 5322 Otter Lane Middleberge FL 32068', './application/modules/employee/assets/images/2017-07-22/hum.jpg', '', '', '', '', '', '07/22/2017 - 07/22/2017', '', '', ''),
(115, '201012', 'senior Software Developer', 'Morris', ' Alon', 'morris@yahoo.com', '+154749654', '+12345689', 'Nicholas Desmond Simon Graham Half-Way Pond, Georgetown,', 'Permanent Address Thomas Nolan Kaszas II 5322 Otter Lane Middleberge FL 32068', './application/modules/employee/assets/images/2017-07-22/hum.jpg', '', '', '', '', '', '07/22/2017 - 07/22/2017', '', '', ''),
(116, '201012', 'senior Software Developer', 'Morris', ' Alon', 'morris@yahoo.com', '+154749654', '+12345689', 'Nicholas Desmond Simon Graham Half-Way Pond, Georgetown,', 'Permanent Address Thomas Nolan Kaszas II 5322 Otter Lane Middleberge FL 32068', './application/modules/employee/assets/images/2017-07-22/hum.jpg', '', '', '', '', '', '07/22/2017 - 07/22/2017', '', '', ''),
(117, '201012', 'senior Software Developer', 'Morris', ' Alon', 'morris@yahoo.com', '+154749654', '+12345689', 'Nicholas Desmond Simon Graham Half-Way Pond, Georgetown,', 'Permanent Address Thomas Nolan Kaszas II 5322 Otter Lane Middleberge FL 32068', './application/modules/employee/assets/images/2017-07-22/hum.jpg', '', '', '', '', '', '07/22/2017 - 07/22/2017', '', '', ''),
(118, '201012', 'senior Software Developer', 'Morris', ' Alon', 'morris@yahoo.com', '+154749654', '+12345689', 'Nicholas Desmond Simon Graham Half-Way Pond, Georgetown,', 'Permanent Address Thomas Nolan Kaszas II 5322 Otter Lane Middleberge FL 32068', './application/modules/employee/assets/images/2017-07-22/hum.jpg', '', '', '', '', '', '07/22/2017 - 07/22/2017', '', '', ''),
(119, '201012', 'senior Software Developer', 'Morris', ' Alon', 'morris@yahoo.com', '+154749654', '+12345689', 'Nicholas Desmond Simon Graham Half-Way Pond, Georgetown,', 'Permanent Address Thomas Nolan Kaszas II 5322 Otter Lane Middleberge FL 32068', './application/modules/employee/assets/images/2017-07-22/hum.jpg', '', '', '', '', '', '07/22/2017 - 07/22/2017', '', '', ''),
(120, 'STD897', 'Junior Executive ', 'Rinku ', 'Thandar Mill', 'tr@bdtask.com', '3456789098', '3345678987', '98/A, East Lackx view,West Nkhali', '98/A, East Lackx view,West Nkhali', './application/modules/circularprocess/assets/images/2017-07-22/cha1.jpg', 'MBA', 'University Of South Carolina', '3.60', '', '', '07/22/2017 - 07/22/2017', '', '', ''),
(121, 'STD897', 'Junior Executive ', 'Rinku ', 'Thandar Mill', 'tr@bdtask.com', '3456789098', '3345678987', '98/A, East Lackx view,West Nkhali', '98/A, East Lackx view,West Nkhali', './application/modules/circularprocess/assets/images/2017-07-22/cha1.jpg', 'BBA', 'Dhaka University', '3.47', '', '', '07/22/2017 - 07/22/2017', '', '', ''),
(122, 'STD897', 'Junior Executive ', 'Rinku ', 'Thandar Mill', 'tr@bdtask.com', '3456789098', '3345678987', '98/A, East Lackx view,West Nkhali', '98/A, East Lackx view,West Nkhali', './application/modules/circularprocess/assets/images/2017-07-22/cha1.jpg', '', '', '', '', '', '07/22/2017 - 07/22/2017', '', '', ''),
(129, '111133', 'Lead Programmer', 'Abdullah', 'Azad', 'abdulla@yahoo.com', '01714287187', '01730164623', 'Muhammadpur', 'kumilla VA', './application/modules/employee/assets/images/2017-07-23/pro1.png', 'MSC', 'National University', 'First Class', '2013', 'Infostystem', '07/23/2017 - 07/23/2017', 'junior Programmar', 'Shamim', ''),
(130, '111133', 'Lead Programmer', 'Abdullah', 'Azad', 'abdulla@yahoo.com', '01714287187', '01730164623', 'Muhammadpur', 'kumilla VA', './application/modules/employee/assets/images/2017-07-23/pro1.png', 'B.Sc', 'National University', 'First Class', '2012', 'bdtask', '07/23/2017 - 07/23/2017', 'Senior Programmar', 'Shamim', ''),
(131, '111133', 'Lead Programmer', 'Abdullah', 'Azad', 'abdulla@yahoo.com', '01714287187', '01730164623', 'Muhammadpur', 'kumilla VA', './application/modules/employee/assets/images/2017-07-23/pro1.png', 'H.S.C', 'Sayed Abul Hossain college Madaripur', '5', '2008', 'Bank', '07/23/2017 - 07/23/2017', 'dfsd', 'Isahaq', ''),
(132, '111133', 'Lead Programmer', 'Abdullah', 'Azad', 'abdulla@yahoo.com', '01714287187', '01730164623', 'Muhammadpur', 'kumilla VA', './application/modules/employee/assets/images/2017-07-23/pro1.png', '', '', '', '', '', '07/23/2017 - 07/23/2017', '', '', ''),
(133, '111133', 'Lead Programmer', 'Abdullah', 'Azad', 'abdulla@yahoo.com', '01714287187', '01730164623', 'Muhammadpur', 'kumilla VA', './application/modules/employee/assets/images/2017-07-23/pro1.png', '', '', '', '', '', '07/23/2017 - 07/23/2017', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `employee_performance`
--
-- Creation: Aug 13, 2017 at 11:23 AM
--

CREATE TABLE IF NOT EXISTS `employee_performance` (
  `emp_per_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` varchar(50) CHARACTER SET latin1 NOT NULL,
  `note` varchar(50) CHARACTER SET latin1 NOT NULL,
  `date` varchar(50) CHARACTER SET latin1 NOT NULL,
  `note_by` varchar(50) CHARACTER SET latin1 NOT NULL,
  `number_of_star` varchar(50) CHARACTER SET latin1 NOT NULL,
  `status` varchar(50) CHARACTER SET latin1 NOT NULL,
  `updated_by` varchar(50) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`emp_per_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- RELATIONS FOR TABLE `employee_performance`:
--

--
-- Dumping data for table `employee_performance`
--

INSERT INTO `employee_performance` (`emp_per_id`, `employee_id`, `note`, `date`, `note_by`, `number_of_star`, `status`, `updated_by`) VALUES
(1, '  120', 'rfgf', '07-07-2017', 'Erik Rowan', 'dfg', 'fg', 'Erik Rowan'),
(2, '5001', 'work hardly', '19-07-2017', 'Erik Rowan', '5', 'verygood', ''),
(3, '1000', 'na', '17-07-2017', 'Erik Rowan', '6', 'verry verry good', ''),
(4, 'asf987', '', '', 'Jhon  Doe', '', '', ''),
(5, 'asf987', 'ssdxxdf', '2017-06-01', 'Jhon  Doe', '5', 'fine', ''),
(6, '    100001', 'Lorem ipsum dolor sit amet, consectetur adipiscing', '2017-07-28', 'Jhon  Doe', '3', 'So Nice ', 'Jhon  Doe');

-- --------------------------------------------------------

--
-- Table structure for table `employee_position`
--
-- Creation: Aug 13, 2017 at 11:22 AM
--

CREATE TABLE IF NOT EXISTS `employee_position` (
  `emp_pos_id` int(10) UNSIGNED NOT NULL,
  `employee_id` varchar(50) CHARACTER SET latin1 NOT NULL,
  `first_name` varchar(50) CHARACTER SET latin1 NOT NULL,
  `position_name` varchar(50) CHARACTER SET latin1 NOT NULL,
  `position_details` varchar(100) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- RELATIONS FOR TABLE `employee_position`:
--

-- --------------------------------------------------------

--
-- Table structure for table `employee_salary_payment`
--
-- Creation: Aug 13, 2017 at 11:23 AM
--

CREATE TABLE IF NOT EXISTS `employee_salary_payment` (
  `emp_sal_pay_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` varchar(50) CHARACTER SET latin1 NOT NULL,
  `total_salary` varchar(50) CHARACTER SET latin1 NOT NULL,
  `total_working_minutes` varchar(50) CHARACTER SET latin1 NOT NULL,
  `working_period` varchar(50) CHARACTER SET latin1 NOT NULL,
  `payment_due` varchar(50) CHARACTER SET latin1 NOT NULL,
  `payment_date` varchar(50) CHARACTER SET latin1 NOT NULL,
  `paid_by` varchar(50) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`emp_sal_pay_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- RELATIONS FOR TABLE `employee_salary_payment`:
--

--
-- Dumping data for table `employee_salary_payment`
--

INSERT INTO `employee_salary_payment` (`emp_sal_pay_id`, `employee_id`, `total_salary`, `total_working_minutes`, `working_period`, `payment_due`, `payment_date`, `paid_by`) VALUES
(1, '1000', '5000', '500', '1', 'paid', '22-07-2017', 'Jhon  Doe'),
(2, '5002', '0.00', '0.00', '0', '', '', ''),
(3, '5001', '1,097.00', '28.68', '1', '', '', ''),
(4, '120', '-131,296.00', '0.00', '4', '', '', ''),
(5, '111133', '0.00', '1.58', '2', '', '', ''),
(6, '1235', '25,705.00', '0.00', '0', '', '', ''),
(7, '20021', '-141,423.00', '0.00', '0', '', '', ''),
(8, '100001', '0.00', '0.00', '0', '', '', ''),
(9, '20030', '0.00', '0.00', '0', '', '', ''),
(10, '201012', '0.00', '0.00', '0', '', '', ''),
(11, '20019', '0.00', '0.00', '0', 'paid', '23-08-2017', 'John Doe'),
(12, 'STD897', '100000', '190', '180', 'paid', '24-07-2017', 'Jhon  Doe');

-- --------------------------------------------------------

--
-- Table structure for table `employee_salary_setup`
--
-- Creation: Aug 13, 2017 at 11:23 AM
--

CREATE TABLE IF NOT EXISTS `employee_salary_setup` (
  `e_s_s_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `employee_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  `sal_type` varchar(30) NOT NULL,
  `salary_type_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  `amount` varchar(30) CHARACTER SET latin1 NOT NULL,
  `create_date` date DEFAULT NULL,
  `update_date` datetime(6) DEFAULT NULL,
  `update_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`e_s_s_id`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8;

--
-- RELATIONS FOR TABLE `employee_salary_setup`:
--

--
-- Dumping data for table `employee_salary_setup`
--

INSERT INTO `employee_salary_setup` (`e_s_s_id`, `employee_id`, `sal_type`, `salary_type_id`, `amount`, `create_date`, `update_date`, `update_id`) VALUES
(1, '101', 'weekly', '5', '10000', NULL, NULL, ''),
(2, '101', 'weekly', '6', '120', NULL, NULL, ''),
(3, '101', 'weekly', '10', '123', NULL, NULL, ''),
(4, '101', 'weekly', '11', '120', NULL, NULL, ''),
(5, '101', 'weekly', '12', '120', NULL, NULL, ''),
(6, '101', 'weekly', '13', '12', NULL, NULL, ''),
(7, '120', 'monthly', '5', '3', NULL, NULL, ''),
(8, '120', 'monthly', '6', '10', NULL, NULL, ''),
(9, '120', 'monthly', '10', '5000', NULL, NULL, ''),
(10, '120', 'monthly', '11', '152120', NULL, NULL, ''),
(11, '120', 'monthly', '12', '1000', NULL, NULL, ''),
(12, '120', 'monthly', '13', '12', NULL, NULL, ''),
(13, '101', 'monthly', '5', '10000', NULL, NULL, ''),
(14, '101', 'monthly', '6', '300000000000000', NULL, NULL, ''),
(15, '101', 'monthly', '10', '100', NULL, NULL, ''),
(16, '101', 'monthly', '11', '2000', NULL, NULL, ''),
(17, '101', 'monthly', '12', '1000', NULL, NULL, ''),
(18, '101', 'monthly', '13', '12', NULL, NULL, ''),
(19, '5001', 'monthly', '5', '500', NULL, NULL, ''),
(20, '5001', 'monthly', '6', '50', NULL, NULL, ''),
(21, '5001', 'monthly', '10', '50', NULL, NULL, ''),
(22, '5001', 'monthly', '14', '12', NULL, NULL, ''),
(23, '5001', 'monthly', '11', '50', NULL, NULL, ''),
(24, '5001', 'monthly', '12', '20', NULL, NULL, ''),
(25, '5001', 'monthly', '13', '5', NULL, NULL, ''),
(26, '120', 'monthly', '5', '10000', NULL, NULL, ''),
(27, '120', 'monthly', '6', '2000', NULL, NULL, ''),
(28, '120', 'monthly', '10', '5000', NULL, NULL, ''),
(29, '120', 'monthly', '14', '2323', NULL, NULL, ''),
(30, '120', 'monthly', '11', '500', NULL, NULL, ''),
(31, '120', 'monthly', '12', '1000', NULL, NULL, ''),
(32, '120', 'monthly', '13', '1000', NULL, NULL, ''),
(33, 'Bdtask-123', 'weekly', '5', '30000', NULL, NULL, ''),
(34, 'Bdtask-123', 'weekly', '6', '2000', NULL, NULL, ''),
(35, 'Bdtask-123', 'weekly', '10', '100', NULL, NULL, ''),
(36, 'Bdtask-123', 'weekly', '14', '2323', NULL, NULL, ''),
(37, 'Bdtask-123', 'weekly', '11', '2000', NULL, NULL, ''),
(38, 'Bdtask-123', 'weekly', '12', '1000', NULL, NULL, ''),
(39, 'Bdtask-123', 'weekly', '13', '1000', NULL, NULL, ''),
(47, '5001', 'monthly', '5', '500', NULL, NULL, ''),
(48, '5001', 'monthly', '6', '50', NULL, NULL, ''),
(49, '5001', 'monthly', '10', '50', NULL, NULL, ''),
(50, '5001', 'monthly', '14', '12', NULL, NULL, ''),
(51, '5001', 'monthly', '16', '23', NULL, NULL, ''),
(52, '5001', 'monthly', '11', '50', NULL, NULL, ''),
(53, '5001', 'monthly', '12', '20', NULL, NULL, ''),
(54, '5001', 'monthly', '13', '5', NULL, NULL, ''),
(55, '1234bd', 'monthly', '5', '5000', NULL, NULL, ''),
(56, '1234bd', 'monthly', '6', '40', NULL, NULL, ''),
(57, '1234bd', 'monthly', '10', '50', NULL, NULL, ''),
(58, '1234bd', 'monthly', '14', '12', NULL, NULL, ''),
(59, '1234bd', 'monthly', '16', '12', NULL, NULL, ''),
(60, '1234bd', 'monthly', '11', '20', NULL, NULL, ''),
(61, '1234bd', 'monthly', '12', '10', NULL, NULL, ''),
(62, '1234bd', 'monthly', '13', '5', NULL, NULL, ''),
(63, '1235', 'weekly', '5', '10000', NULL, NULL, ''),
(64, '1235', 'weekly', '6', '300', NULL, NULL, ''),
(65, '1235', 'weekly', '10', '15000', NULL, NULL, ''),
(66, '1235', 'weekly', '15', '1200', NULL, NULL, ''),
(67, '1235', 'weekly', '16', '12', NULL, NULL, ''),
(68, '1235', 'weekly', '11', '135', NULL, NULL, ''),
(69, '1235', 'weekly', '12', '123', NULL, NULL, ''),
(70, '1235', 'weekly', '13', '545', NULL, NULL, ''),
(71, '1235', 'weekly', '17', '4', NULL, NULL, ''),
(72, '20021', 'monthly', '5', '10000', '2017-07-23', NULL, ''),
(73, '20021', 'monthly', '6', '2000', '2017-07-23', NULL, ''),
(74, '20021', 'monthly', '10', '10', '2017-07-23', NULL, ''),
(75, '20021', 'monthly', '15', '1200', '2017-07-23', NULL, ''),
(76, '20021', 'monthly', '16', '12', '2017-07-23', NULL, ''),
(77, '20021', 'monthly', '11', '152120', '2017-07-23', NULL, ''),
(78, '20021', 'monthly', '12', '1521', '2017-07-23', NULL, ''),
(79, '20021', 'monthly', '13', '1000', '2017-07-23', NULL, ''),
(80, '20021', 'monthly', '17', '4', '2017-07-23', NULL, ''),
(81, '100001', 'monthly', '5', '', '2017-08-10', NULL, ''),
(82, '100001', 'monthly', '6', '', '2017-08-10', NULL, ''),
(83, '100001', 'monthly', '10', '', '2017-08-10', NULL, ''),
(84, '100001', 'monthly', '15', '', '2017-08-10', NULL, ''),
(85, '100001', 'monthly', '16', '', '2017-08-10', NULL, ''),
(86, '100001', 'monthly', '11', '', '2017-08-10', NULL, ''),
(87, '100001', 'monthly', '12', '', '2017-08-10', NULL, ''),
(88, '100001', 'monthly', '13', '', '2017-08-10', NULL, ''),
(89, '100001', 'monthly', '17', '', '2017-08-10', NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `employee_sal_pay_type`
--
-- Creation: Aug 13, 2017 at 11:22 AM
--

CREATE TABLE IF NOT EXISTS `employee_sal_pay_type` (
  `emp_sal_pay_type_id` int(11) UNSIGNED NOT NULL,
  `payment_period` varchar(50) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- RELATIONS FOR TABLE `employee_sal_pay_type`:
--

--
-- Dumping data for table `employee_sal_pay_type`
--

INSERT INTO `employee_sal_pay_type` (`emp_sal_pay_type_id`, `payment_period`) VALUES
(2, 'test'),
(4, 'monthly'),
(5, 'weekly'),
(6, 'hourly');

-- --------------------------------------------------------

--
-- Table structure for table `emp_attendance`
--
-- Creation: Aug 23, 2017 at 07:46 AM
--

CREATE TABLE IF NOT EXISTS `emp_attendance` (
  `att_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `employee_id` varchar(50) CHARACTER SET latin1 NOT NULL,
  `date` varchar(30) CHARACTER SET latin1 NOT NULL,
  `sign_in` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `sign_out` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `staytime` time DEFAULT NULL,
  PRIMARY KEY (`att_id`)
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=utf8;

--
-- RELATIONS FOR TABLE `emp_attendance`:
--

--
-- Dumping data for table `emp_attendance`
--

INSERT INTO `emp_attendance` (`att_id`, `employee_id`, `date`, `sign_in`, `sign_out`, `staytime`) VALUES
(2, '120', '2017-03-20', '03:56:39 pm', '', '00:00:00'),
(3, '120', '2017-05-20', '03:56:50 pm', '', '00:00:00'),
(4, '120', '2017-02-20', '03:56:54 pm', '', '00:00:00'),
(5, '111', '2017-02-20', '03:58:19 pm', '', '00:00:00'),
(6, '1000', '2017-02-20', '04:07:23 pm', '', '00:00:00'),
(7, '120', '2017-02-20', '04:36:58 pm', '', '00:00:00'),
(8, '5001', '2017-02-20', '04:37:05 pm', '05:05:46 pm', '00:28:41'),
(9, '1234bd', '18-03-2017', '02:47:37 pm', '', '00:00:00'),
(10, '111133', '2017-03-23', '12:23:03 pm', '12:24:38 pm', '00:01:35'),
(11, '120', '07-03-2017', '9:30', '4:55', '00:00:07'),
(12, '123', '07-03-2017', '11:00', '5:10', '00:00:08'),
(13, '111133', '2017-03-23', '12:25:58 pm', '', '00:00:00'),
(14, '100001', '2017-03-23', '04:01:15 pm', '', '00:00:00'),
(15, '201012', '2017-03-23', '04:02:12 pm', '04:12:09 pm', '00:09:57'),
(16, '20021', '2017-02-23', '04:12:40 pm', '04:13:52 pm', '00:01:12'),
(17, '100001', '2017-04-23', '04:41:36 pm', '', '00:00:00'),
(18, '20019', '2017-07-23', '04:41:43 pm', '', '00:00:00'),
(19, '20021', '2017-04-23', '04:41:54 pm', '', '00:00:00'),
(20, '20030', '2017-07-23', '04:42:02 pm', '', '00:00:00'),
(21, '20030', '2017-04-23', '04:42:11 pm', '', '00:00:00'),
(22, '100001', '2017-07-23', '04:46:29 pm', '', '00:00:00'),
(23, '20019', '2017-07-23', '04:46:35 pm', '', '00:00:00'),
(24, '1235', '2017-04-23', '04:47:57 pm', '', '00:00:00'),
(25, '20021', '2017-07-23', '04:48:12 pm', '', '00:00:00'),
(26, '201012', '2017-04-23', '04:48:26 pm', '', '00:00:00'),
(27, '20030', '2017-07-23', '04:48:36 pm', '', '00:00:00'),
(28, '20030', '2017-07-23', '04:50:30 pm', '', '00:00:00'),
(29, '1235', '2017-04-23', '04:50:41 pm', '', '00:00:00'),
(30, '1235', '2017-04-23', '04:50:50 pm', '', '00:00:00'),
(31, '1235', '2017-07-23', '04:50:59 pm', '', '00:00:00'),
(32, '100001', '2017-04-23', '04:51:09 pm', '', '00:00:00'),
(33, '201012', '2017-07-23', '04:51:15 pm', '', '00:00:00'),
(34, '100001', '2017-01-23', '04:56:08 pm', '', '00:00:00'),
(35, '100001', '2017-01-23', '04:56:33 pm', '', '00:00:00'),
(36, '100001', '2017-01-23', '04:57:01 pm', '', '00:00:00'),
(37, '100001', '2017-01-23', '04:57:25 pm', '', '00:00:00'),
(38, '100001', '2017-04-23', '04:58:45 pm', '', '00:00:00'),
(39, '120', '2017-01-17', '9:30', '4:55', '00:00:07'),
(40, '123', '2017-01-17', '11:00', '5:10', '00:00:08'),
(41, '124', '2017-01-18', '9:30', '4:55', '00:00:07'),
(42, '125', '2017-01-19', '11:00', '5:10', '00:00:08'),
(43, '126', '2017-01-20', '9:30', '4:55', '00:00:07'),
(44, '127', '2017-01-17', '11:00', '5:10', '00:00:08'),
(45, '128', '2017-01-17', '9:30', '4:55', '00:00:07'),
(46, '129', '2017-01-17', '11:00', '5:10', '00:00:08'),
(47, '120', '2017-01-17', '9:30', '4:55', '00:00:07'),
(48, '130', '2017-01-17', '11:00', '5:10', '00:00:08'),
(49, '120', '2017-01-17', '9:30', '4:55', '00:00:07'),
(50, '123', '2017-01-17', '11:00', '5:10', '00:00:08'),
(51, '124', '2017-01-18', '9:30', '4:55', '00:00:07'),
(52, '125', '2017-01-19', '11:00', '5:10', '00:00:08'),
(53, '126', '2017-01-20', '9:30', '4:55', '00:00:07'),
(54, '127', '2017-01-17', '11:00', '5:10', '00:00:08'),
(55, '128', '2017-01-17', '9:30', '4:55', '00:00:07'),
(56, '129', '2017-01-17', '11:00', '5:10', '00:00:08'),
(57, '120', '2017-01-17', '9:30', '4:55', '00:00:07'),
(58, '130', '2017-01-17', '11:00', '5:10', '00:00:08'),
(63, '120', '2017-05-17', '9:30', '4:55', '00:00:07'),
(64, '123', '2017-05-17', '11:00', '5:10', '00:00:08'),
(65, '124', '2017-05-18', '9:30', '4:55', '00:00:07'),
(66, '125', '2017-05-19', '11:00', '5:10', '00:00:08'),
(71, '120', '2017-05-17', '9:30', '4:55', '00:00:07'),
(72, '130', '2017-05-17', '11:00', '5:10', '00:00:08'),
(73, '120', '2017-05-17', '9:30', '4:55', '00:00:07'),
(74, '123', '2017-05-17', '11:00', '5:10', '00:00:08'),
(75, '124', '2017-05-18', '9:30', '4:55', '00:00:07'),
(76, '125', '2017-05-19', '11:00', '5:10', '00:00:08'),
(77, '126', '2017-05-20', '9:30', '4:55', '00:00:07'),
(78, '127', '2017-05-17', '11:00', '5:10', '00:00:08'),
(79, '128', '2017-05-17', '9:30', '4:55', '00:00:07'),
(80, '129', '2017-05-17', '11:00', '5:10', '00:00:08'),
(81, '120', '2017-05-17', '9:30', '4:55', '00:00:07'),
(82, '130', '2017-05-17', '11:00', '5:10', '00:00:08'),
(87, '120', '2017-05-17', '9:30', '4:55', '00:00:07'),
(88, '123', '2017-05-17', '11:00', '5:10', '00:00:08'),
(89, '124', '2017-05-18', '9:30', '4:55', '00:00:07'),
(90, '125', '2017-05-19', '11:00', '5:10', '00:00:08'),
(91, '126', '2017-05-20', '9:30', '4:55', '00:00:07'),
(92, '127', '2017-05-17', '11:00', '5:10', '00:00:08'),
(93, '128', '2017-05-17', '9:30', '4:55', '00:00:07'),
(94, '129', '2017-05-17', '11:00', '5:10', '00:00:08'),
(95, '120', '2017-05-17', '9:30', '4:55', '00:00:07'),
(96, '130', '2017-05-17', '11:00', '5:10', '00:00:08'),
(97, '120', '2017-05-17', '9:30', '4:55', '00:00:07'),
(98, '123', '2017-05-17', '11:00', '5:10', '00:00:08'),
(99, '124', '2017-05-18', '9:30', '4:55', '00:00:07'),
(100, '125', '2017-05-19', '11:00', '5:10', '00:00:08'),
(101, '126', '2017-05-20', '9:30', '4:55', '00:00:07'),
(111, '120', '2017-06-17', '9:30', '4:55', '00:00:07'),
(112, '123', '2017-06-17', '11:00', '5:10', '00:00:08'),
(113, '124', '2017-06-18', '9:30', '4:55', '00:00:07'),
(114, '125', '2017-06-19', '11:00', '5:10', '00:00:08'),
(115, '126', '2017-06-20', '9:30', '4:55', '00:00:07'),
(116, '127', '2017-06-17', '11:00', '5:10', '00:00:08'),
(117, '128', '2017-06-17', '9:30', '4:55', '00:00:07'),
(118, '129', '2017-06-17', '11:00', '5:10', '00:00:08'),
(119, '120', '2017-06-17', '9:30', '4:55', '00:00:07'),
(120, '130', '2017-06-17', '11:00', '5:10', '00:00:08'),
(121, '120', '2017-06-17', '9:30', '4:55', '00:00:07'),
(122, '123', '2017-06-17', '11:00', '5:10', '00:00:08'),
(123, '124', '2017-06-18', '9:30', '4:55', '00:00:07'),
(124, '125', '2017-06-19', '11:00', '5:10', '00:00:08'),
(125, '126', '2017-06-20', '9:30', '4:55', '00:00:07'),
(126, '127', '2017-06-17', '11:00', '5:10', '00:00:08'),
(127, '128', '2017-06-17', '9:30', '4:55', '00:00:07'),
(128, '129', '2017-06-17', '11:00', '03:52:35 pm', '04:52:35'),
(129, '120', '2017-06-17', '9:30', '05:44:05 pm', '08:14:05'),
(130, '130', '2017-06-17', '11:00', '04:04:43 pm', '05:04:43'),
(131, '100001', '2017-08-21', '03:12:06 pm', '03:17:32 pm', '00:05:26'),
(132, '20019', '2017-08-21', '03:23:40 pm', '03:24:59 pm', '00:01:19'),
(133, '20030', '2017-08-21', '04:52:45 pm', '', '00:00:00'),
(134, '100001', '2017-08-22', '12:48:40 pm', '01:56:27 pm', '01:07:47'),
(135, '100001', '2017-08-22', '03:13:45 pm', '01:56:16 pm', '01:17:29'),
(136, '100001', '2017-08-23', '11:36:39 am', '01:45:43 pm', '02:09:04'),
(137, '20019', '2017-08-23', '01:48:07 pm', '01:48:28 pm', '00:00:21'),
(138, '20030', '2017-08-23', '04:18:30 pm', '04:19:40 pm', '00:01:10'),
(139, '111133', '2017-08-23', '04:20:14 pm', '04:21:20 pm', '00:01:06');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--
-- Creation: Aug 19, 2017 at 06:54 AM
--

CREATE TABLE IF NOT EXISTS `events` (
  `event_date` date NOT NULL,
  `total_events` int(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`event_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONS FOR TABLE `events`:
--

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`event_date`, `total_events`) VALUES
('2017-08-02', 2),
('2017-08-19', 2),
('2017-08-21', 2),
('2017-08-23', 1),
('2017-10-12', 1);

-- --------------------------------------------------------

--
-- Table structure for table `eventsss`
--
-- Creation: Aug 19, 2017 at 04:59 AM
--

CREATE TABLE IF NOT EXISTS `eventsss` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `color` varchar(7) NOT NULL DEFAULT '#3a87ad',
  `start` datetime NOT NULL,
  `end` datetime DEFAULT NULL,
  `allDay` varchar(50) NOT NULL DEFAULT 'true',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- RELATIONS FOR TABLE `eventsss`:
--

-- --------------------------------------------------------

--
-- Table structure for table `event_detail`
--
-- Creation: Aug 19, 2017 at 06:47 AM
--

CREATE TABLE IF NOT EXISTS `event_detail` (
  `idevent` int(11) NOT NULL AUTO_INCREMENT,
  `event_date` date NOT NULL,
  `event_time` time NOT NULL,
  `event` varchar(200) NOT NULL,
  PRIMARY KEY (`idevent`),
  KEY `event_date` (`event_date`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- RELATIONS FOR TABLE `event_detail`:
--

--
-- Dumping data for table `event_detail`
--

INSERT INTO `event_detail` (`idevent`, `event_date`, `event_time`, `event`) VALUES
(3, '2017-08-19', '02:11:13', 'good'),
(4, '2017-10-12', '01:05:00', 'Hi'),
(6, '2017-08-02', '02:02:00', 'gfdfg'),
(7, '2017-08-19', '03:05:00', 'Hello alamin'),
(10, '2017-08-21', '01:02:00', 'hj'),
(11, '2017-08-21', '01:02:00', 'teas'),
(13, '2017-08-02', '01:03:00', 'how'),
(14, '2017-08-23', '03:03:00', 'how are you');

-- --------------------------------------------------------

--
-- Table structure for table `grand_loan`
--
-- Creation: Aug 13, 2017 at 11:23 AM
--

CREATE TABLE IF NOT EXISTS `grand_loan` (
  `loan_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` varchar(50) CHARACTER SET latin1 NOT NULL,
  `permission_by` varchar(30) CHARACTER SET latin1 NOT NULL,
  `loan_details` varchar(30) CHARACTER SET latin1 NOT NULL,
  `amount` varchar(30) CHARACTER SET latin1 NOT NULL,
  `interest_rate` varchar(30) CHARACTER SET latin1 NOT NULL,
  `installment` varchar(30) CHARACTER SET latin1 NOT NULL,
  `installment_period` varchar(30) CHARACTER SET latin1 NOT NULL,
  `repayment_amount` varchar(30) CHARACTER SET latin1 NOT NULL,
  `date_of_approve` varchar(30) CHARACTER SET latin1 NOT NULL,
  `repayment_start_date` varchar(30) CHARACTER SET latin1 NOT NULL,
  `created_by` varchar(30) CHARACTER SET latin1 NOT NULL,
  `updated_by` varchar(30) CHARACTER SET latin1 NOT NULL,
  `loan_status` varchar(30) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`loan_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- RELATIONS FOR TABLE `grand_loan`:
--

--
-- Dumping data for table `grand_loan`
--

INSERT INTO `grand_loan` (`loan_id`, `employee_id`, `permission_by`, `loan_details`, `amount`, `interest_rate`, `installment`, `installment_period`, `repayment_amount`, `date_of_approve`, `repayment_start_date`, `created_by`, `updated_by`, `loan_status`) VALUES
(1, 'Bdtask-123', 'sdf', 'sdfsdf', '10000', '1200', '11667', '12', '140000.00', '2017-07-21', '2017-07-31', '', '', '1'),
(2, 'Bdtask-123', 'ceo', 'house lone', '4000', '10', 'NaN', '12', 'NaN', '2017-07-21', '2018-01-01', '', '', '1'),
(3, 'asf987', 'asf987', 'house', '6000555', '5', '527132', '12', '6325585.00', '2017-07-02', '2017-06-17', '', '', '1'),
(4, '120', 'isahaq', 'sdfsdf', '10000', '12', '942', '12', '11300.00', '2017-07-02', '2017-07-22', '', '', '1'),
(5, '1000', '1000', 'sdfsdf', '200000', '10', '10069', '24', '241667.00', '2017-07-02', '2017-07-29', '', '', '1'),
(6, '1235', 'Isahaq', 'sdfsda', '2000', '10', '183', '12', '2200.00', '2017-08-22', '2017-08-22', '', '', '1'),
(7, '201012', 'Alamin', 'sdfsdaf', '30000', '20', '1771', '24', '42500.00', '2017-08-22', '2017-08-25', '', '', '1'),
(8, '20030', '20030', 'some thing heree', '50000', '10', '2517', '24', '60417.00', '2017-08-23', '2017-08-22', '', '', '1'),
(10, '1235', 'Alamin', 'sdfsf', '123', '12', '12', '12', '138.00', '2017-08-23', '2017-08-23', '', '', '1');

-- --------------------------------------------------------

--
-- Table structure for table `job_advertisement`
--
-- Creation: Aug 13, 2017 at 11:22 AM
--

CREATE TABLE IF NOT EXISTS `job_advertisement` (
  `job_adv_id` int(10) UNSIGNED NOT NULL,
  `pos_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  `adv_circular_date` varchar(30) CHARACTER SET latin1 NOT NULL,
  `circular_dadeline` varchar(30) CHARACTER SET latin1 NOT NULL,
  `adv_file` tinytext CHARACTER SET latin1 NOT NULL,
  `adv_details` varchar(255) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- RELATIONS FOR TABLE `job_advertisement`:
--

--
-- Dumping data for table `job_advertisement`
--

INSERT INTO `job_advertisement` (`job_adv_id`, `pos_id`, `adv_circular_date`, `circular_dadeline`, `adv_file`, `adv_details`) VALUES
(1, 'Pk', '09-07-2017', '09-07-2017', '0', 'dsfdsf'),
(2, 'Pk', '10-07-2017', '10-07-2017', './application/modules/circularprocess/assets/images/2017-07-10/Exa1.pdf', 'dfgsdf');

-- --------------------------------------------------------

--
-- Table structure for table `language`
--
-- Creation: Aug 13, 2017 at 11:23 AM
--

CREATE TABLE IF NOT EXISTS `language` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phrase` varchar(100) NOT NULL,
  `english` varchar(255) NOT NULL,
  `bangla` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=403 DEFAULT CHARSET=utf8;

--
-- RELATIONS FOR TABLE `language`:
--

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES
(2, 'login', 'Login', NULL),
(3, 'email', 'Email Address', NULL),
(4, 'password', 'Password', NULL),
(5, 'reset', 'Reset', NULL),
(6, 'dashboard', 'Dashboard', NULL),
(7, 'home', 'Home', NULL),
(8, 'profile', 'Profile', NULL),
(9, 'profile_setting', 'Profile Setting', NULL),
(10, 'firstname', 'First Name', NULL),
(11, 'lastname', 'Last Name', NULL),
(12, 'about', 'About', NULL),
(13, 'preview', 'Preview', NULL),
(14, 'image', 'Image', NULL),
(15, 'save', 'Save', NULL),
(16, 'upload_successfully', 'Upload Successfully!', NULL),
(17, 'user_added_successfully', 'User Added Successfully!', NULL),
(18, 'please_try_again', 'Please Try Again...', NULL),
(19, 'inbox_message', 'Inbox Messages', NULL),
(20, 'sent_message', 'Sent Message', NULL),
(21, 'message_details', 'Message Details', NULL),
(22, 'new_message', 'New Message', NULL),
(23, 'receiver_name', 'Receiver Name', NULL),
(24, 'sender_name', 'Sender Name', NULL),
(25, 'subject', 'Subject', NULL),
(26, 'message', 'Message', NULL),
(27, 'message_sent', 'Message Sent!', NULL),
(28, 'ip_address', 'IP Address', NULL),
(29, 'last_login', 'Last Login', NULL),
(30, 'last_logout', 'Last Logout', NULL),
(31, 'status', 'Status', NULL),
(32, 'delete_successfully', 'Delete Successfully!', NULL),
(33, 'send', 'Send', NULL),
(34, 'date', 'Date', NULL),
(35, 'action', 'Action', NULL),
(36, 'sl_no', 'SL No.', NULL),
(37, 'are_you_sure', 'Are You Sure ? ', NULL),
(38, 'application_setting', 'Application Setting', NULL),
(39, 'application_title', 'Application Title', NULL),
(40, 'address', 'Address', NULL),
(41, 'phone', 'Phone', NULL),
(42, 'favicon', 'Favicon', NULL),
(43, 'logo', 'Logo', NULL),
(44, 'language', 'Language', NULL),
(45, 'left_to_right', 'Left To Right', NULL),
(46, 'right_to_left', 'Right To Left', NULL),
(47, 'footer_text', 'Footer Text', NULL),
(48, 'site_align', 'Application Alignment', NULL),
(49, 'welcome_back', 'Welcome Back!', NULL),
(50, 'please_contact_with_admin', 'Please Contact With Admin', NULL),
(51, 'incorrect_email_or_password', 'Incorrect Email/Password', NULL),
(52, 'select_option', 'Select Option', NULL),
(53, 'ftp_setting', 'Data Synchronize [FTP Setting]', NULL),
(54, 'hostname', 'Host Name', NULL),
(55, 'username', 'User Name', NULL),
(56, 'ftp_port', 'FTP Port', NULL),
(57, 'ftp_debug', 'FTP Debug', NULL),
(58, 'project_root', 'Project Root', NULL),
(59, 'update_successfully', 'Update Successfully', NULL),
(60, 'save_successfully', 'Save Successfully!', NULL),
(61, 'delete_successfully', 'Delete Successfully!', NULL),
(62, 'internet_connection', 'Internet Connection', NULL),
(63, 'ok', 'Ok', NULL),
(64, 'not_available', 'Not Available', NULL),
(65, 'available', 'Available', NULL),
(66, 'outgoing_file', 'Outgoing File', NULL),
(67, 'incoming_file', 'Incoming File', NULL),
(68, 'data_synchronize', 'Data Synchronize', NULL),
(69, 'unable_to_upload_file_please_check_configuration', 'Unable to upload file! please check configuration', NULL),
(70, 'please_configure_synchronizer_settings', 'Please configure synchronizer settings', NULL),
(71, 'download_successfully', 'Download Successfully', NULL),
(72, 'unable_to_download_file_please_check_configuration', 'Unable to download file! please check configuration', NULL),
(73, 'data_import_first', 'Data Import First', NULL),
(74, 'data_import_successfully', 'Data Import Successfully!', NULL),
(75, 'unable_to_import_data_please_check_config_or_sql_file', 'Unable to import data! please check configuration / SQL file.', NULL),
(76, 'download_data_from_server', 'Download Data from Server', NULL),
(77, 'data_import_to_database', 'Data Import To Database', NULL),
(79, 'data_upload_to_server', 'Data Upload to Server', NULL),
(80, 'please_wait', 'Please Wait...', NULL),
(81, 'ooops_something_went_wrong', ' Ooops something went wrong...', NULL),
(82, 'module_permission_list', 'Module Permission List', NULL),
(83, 'user_permission', 'User Permission', NULL),
(84, 'add_module_permission', 'Add Module Permission', NULL),
(85, 'module_permission_added_successfully', 'Module Permission Added Successfully!', NULL),
(86, 'update_module_permission', 'Update Module Permission', NULL),
(87, 'download', 'Download', NULL),
(88, 'module_name', 'Module Name', NULL),
(89, 'create', 'Create', NULL),
(90, 'read', 'Read', NULL),
(91, 'update', 'Update', NULL),
(92, 'delete', 'Delete', NULL),
(93, 'module_list', 'Module List', NULL),
(94, 'add_module', 'Add Module', NULL),
(95, 'directory', 'Module Direcotory', NULL),
(96, 'description', 'Description', NULL),
(97, 'image_upload_successfully', 'Image Upload Successfully!', NULL),
(98, 'module_added_successfully', 'Module Added Successfully', NULL),
(99, 'inactive', 'Inactive', NULL),
(100, 'active', 'Active', NULL),
(101, 'user_list', 'User List', NULL),
(102, 'see_all_message', 'See All Messages', NULL),
(103, 'setting', 'Setting', NULL),
(104, 'logout', 'Logout', NULL),
(105, 'admin', 'Admin', NULL),
(106, 'add_user', 'Add User', NULL),
(107, 'user', 'User', NULL),
(108, 'module', 'Module', NULL),
(109, 'new', 'New', NULL),
(110, 'inbox', 'Inbox', NULL),
(111, 'sent', 'Sent', NULL),
(112, 'synchronize', 'Synchronize', NULL),
(113, 'data_synchronizer', 'Data Synchronizer', NULL),
(114, 'module_permission', 'Module Permission', NULL),
(115, 'backup_now', 'Backup Now!', NULL),
(116, 'restore_now', 'Restore Now!', NULL),
(117, 'backup_and_restore', 'Backup and Restore', NULL),
(118, 'captcha', 'Captcha Word', NULL),
(119, 'database_backup', 'Database Backup', NULL),
(120, 'restore_successfully', 'Restore Successfully', NULL),
(121, 'backup_successfully', 'Backup Successfully', NULL),
(122, 'filename', 'File Name', NULL),
(123, 'file_information', 'File Information', NULL),
(124, 'size', 'size', NULL),
(125, 'backup_date', 'Backup Date', NULL),
(126, 'overwrite', 'Overwrite', NULL),
(127, 'invalid_file', 'Invalid File!', NULL),
(128, 'invalid_module', 'Invalid Module', NULL),
(129, 'remove_successfully', 'Remove Successfully!', NULL),
(130, 'install', 'Install', NULL),
(131, 'uninstall', 'Uninstall', NULL),
(132, 'tables_are_not_available_in_database', 'Tables are not available in database.sql', NULL),
(133, 'no_tables_are_registered_in_config', 'No tables are registerd in config.php', NULL),
(134, 'enquiry', 'Enquiry', NULL),
(135, 'read_unread', 'Read/Unread', NULL),
(136, 'enquiry_information', 'Enquiry Information', NULL),
(137, 'user_agent', 'User Agent', NULL),
(138, 'checked_by', 'Checked By', NULL),
(139, 'new_enquiry', 'New Enquiry', NULL),
(140, 'crud', 'Crud', NULL),
(141, 'view', 'View', NULL),
(142, 'name', 'Name', NULL),
(143, 'add', 'Address', NULL),
(144, 'ph', 'Phone', NULL),
(145, 'cid', 'Cid', NULL),
(146, 'view_atn', 'AttendanceView', NULL),
(147, 'mang', 'Employemanagement', NULL),
(148, 'designation', 'Designation', NULL),
(149, 'test', 'Test', NULL),
(150, 'sl', 'SL', NULL),
(151, 'bdtask', 'BDTASK', NULL),
(152, 'practice', 'Practice', NULL),
(153, 'branch_name', 'Branch Name', NULL),
(154, 'chairman_name', 'Chairman', NULL),
(155, 'b_photo', 'Photo', NULL),
(156, 'b_address', 'Address', NULL),
(157, 'position', 'Position', NULL),
(158, 'advertisement', 'Advertisement', NULL),
(159, 'position_name', 'Position', NULL),
(160, 'position_details', 'Details', NULL),
(161, 'circularprocess', 'Recruitment', NULL),
(162, 'pos_id', 'Position', NULL),
(163, 'adv_circular_date', 'Publish Date', NULL),
(164, 'circular_dadeline', 'Dadeline', NULL),
(165, 'adv_file', 'Documents', NULL),
(166, 'adv_details', 'Details', NULL),
(167, 'attendance', 'Attendance', NULL),
(168, 'employee', 'Employee', NULL),
(169, 'emp_id', 'Employee Name', NULL),
(170, 'sign_in', 'Sign In', NULL),
(171, 'sign_out', 'Sign Out', NULL),
(172, 'staytime', 'Stay Time', NULL),
(173, 'abc', '1', NULL),
(174, 'first_name', 'First Name', NULL),
(175, 'last_name', 'Last Name', NULL),
(176, 'alter_phone', 'Alternative Phone', NULL),
(177, 'present_address', 'Present Address', NULL),
(178, 'parmanent_address', 'Parmenent Address', NULL),
(179, 'candidateinfo', 'Candidate Info', NULL),
(180, 'add_advertisement', 'Add Advertisement', NULL),
(181, 'advertisement_list', 'Manage Advertisement ', NULL),
(182, 'candidate_basic_info', 'Candidate Information', NULL),
(183, 'can_basicinfo_list', 'Manage Candidate', NULL),
(184, 'add_canbasic_info', 'Add New Candidate', NULL),
(185, 'candidate_education_info', 'Candidate Educational Info', NULL),
(186, 'can_educationinfo_list', 'Candidate Edu Info list', NULL),
(187, 'add_edu_info', 'Add Educational Info', NULL),
(188, 'can_id', 'Candidate Id', NULL),
(189, 'degree_name', 'Obtained Degree', NULL),
(190, 'university_name', 'University', NULL),
(191, 'cgp', 'CGPA', NULL),
(192, 'comments', 'Comments', NULL),
(193, 'signature', 'Signature', NULL),
(194, 'candidate_workexperience', 'Candidate Work Experience', NULL),
(195, 'can_workexperience_list', 'Work Experience list', NULL),
(196, 'add_can_experience', 'Add Work Experience', NULL),
(197, 'company_name', 'Company Name', NULL),
(198, 'working_period', 'Working Period', NULL),
(199, 'duties', 'Duties', NULL),
(200, 'supervisor', 'Supervisor', NULL),
(201, 'candidate_workexpe', 'Candidate Work Experience', NULL),
(202, 'candidate_shortlist', 'Candidate Shortlist', NULL),
(203, 'shortlist_view', 'Manage Shortlist', NULL),
(204, 'add_shortlist', 'Add Shortlist', NULL),
(205, 'date_of_shortlist', 'Shortlist Date', NULL),
(206, 'interview_date', 'Interview Date', NULL),
(207, 'submit', 'Submit', NULL),
(208, 'candidate_id', 'Your ID', NULL),
(209, 'job_adv_id', 'Job Position', NULL),
(210, 'sequence', 'Sequence', NULL),
(211, 'candidate_interview', 'Interview', NULL),
(212, 'interview_list', 'Interview list', NULL),
(213, 'add_interview', 'Add interview', NULL),
(214, 'interviewer_id', 'Interviewer', NULL),
(215, 'interview_marks', 'Viva Marks', NULL),
(216, 'written_total_marks', 'Written Total Marks', NULL),
(217, 'mcq_total_marks', 'MCQ Total Marks', NULL),
(218, 'recommandation', 'Recommandation', NULL),
(219, 'selection', 'Selection', NULL),
(220, 'details', 'Details', NULL),
(221, 'candidate_selection', 'Candidate Selection', NULL),
(222, 'selection_list', 'Selection List', NULL),
(223, 'add_selection', 'Add Selection', NULL),
(224, 'employee_id', 'Employee Id', NULL),
(225, 'position_id', '1', NULL),
(226, 'selection_terms', 'Selection Terms', NULL),
(227, 'total_marks', 'Total Marks', NULL),
(228, 'photo', 'Picture', NULL),
(229, 'your_id', 'Your ID', NULL),
(230, 'change_image', 'Change Photo', NULL),
(231, 'picture', 'Photograph', NULL),
(232, 'ad', 'Add', NULL),
(233, 'write_y_p_info', 'Write Your Persoanal Information', NULL),
(234, 'emp_position', 'Employee Position', NULL),
(235, 'add_pos', 'Add Position', NULL),
(236, 'list_pos', 'List of Position', NULL),
(237, 'emp_salary_stup', 'Employee Salary SetUp', NULL),
(238, 'add_salary_stup', 'Add Salary Setup', NULL),
(239, 'list_salarystup', 'List of Salary Setup', NULL),
(240, 'emp_sal_name', 'Salary Name', NULL),
(241, 'emp_sal_type', 'Salary Type', NULL),
(242, 'emp_performance', 'Employee Performance', NULL),
(243, 'add_performance', 'Add Performance', NULL),
(244, 'list_performance', 'List of Performance', NULL),
(245, 'note', 'Note', NULL),
(246, 'note_by', 'Note By', NULL),
(247, 'number_of_star', 'Number of Star', NULL),
(248, 'updated_by', 'Updated By', NULL),
(249, 'emp_sal_payment', 'Manage Employee Salary', NULL),
(250, 'add_payment', 'Add Payment', NULL),
(251, 'list_payment', 'List of payment', NULL),
(252, 'total_salary', 'Total Salary', NULL),
(253, 'total_working_minutes', 'Working Hour', NULL),
(254, 'payment_due', 'Payment Type', NULL),
(255, 'payment_date', 'Date', NULL),
(256, 'paid_by', 'Paid By', NULL),
(257, 'view_employee_payment', 'Employee Payment List', NULL),
(258, 'sal_payment_type', 'Salary Payment Type', NULL),
(259, 'add_payment_type', 'Add Payment Type', NULL),
(260, 'list_payment_type', 'List of Payment Type', NULL),
(261, 'payment_period', 'Payment Period', NULL),
(262, 'payment_type', 'Payment Type', NULL),
(263, 'time', 'Punch Time', NULL),
(264, 'shift', 'Shift', NULL),
(265, 'location', 'Location', NULL),
(266, 'logtype', 'Log Type', NULL),
(267, 'branch', 'Location', NULL),
(268, 'student', 'Students', NULL),
(269, 'csv', 'CSV', NULL),
(270, 'save_successfull', 'Your Data Save Successfully', NULL),
(271, 'successfully_updated', 'Your Data Successfully Updated', NULL),
(272, 'atn_form', 'Attendance Form', NULL),
(273, 'atn_report', 'Attendance Reports', NULL),
(274, 'end_date', 'To', NULL),
(275, 'start_date', 'From', NULL),
(276, 'done', 'Done', NULL),
(277, 'employee_id_se', 'Write Employee Id or name here ', NULL),
(278, 'attendance_repor', 'Attendance Report', NULL),
(279, 'e_time', 'End Time', NULL),
(280, 's_time', 'Start Time', NULL),
(281, 'atn_datewiserer', 'Date Wise Report', NULL),
(282, 'atn_report_id', 'Date And Id base Report', NULL),
(283, 'atn_report_time', 'Date And Time report', NULL),
(284, 'payroll', 'Payroll', NULL),
(285, 'loan', 'Loan', NULL),
(286, 'loan_grand', 'GrandLoan', NULL),
(287, 'add_loan', 'Add Loan', NULL),
(288, 'loan_list', 'List of Loan', NULL),
(289, 'loan_details', 'Loan Details', NULL),
(290, 'amount', 'Amount', NULL),
(291, 'interest_rate', 'Interest Percentage', NULL),
(292, 'installment_period', 'Installment Period', NULL),
(293, 'repayment_amount', 'Repayment Total', NULL),
(294, 'date_of_approve', 'Approve Date', NULL),
(295, 'repayment_start_date', 'Repayment From', NULL),
(296, 'permission_by', 'Permitted By', NULL),
(297, 'grand', 'Grand', NULL),
(298, 'installment', 'Installment', NULL),
(299, 'loan_status', 'status', NULL),
(300, 'installment_period_m', 'Installment Period in Month', NULL),
(301, 'successfully_inserted', 'Your loan Successfully Granted', NULL),
(302, 'loan_installment', 'Loan Installment', NULL),
(303, 'add_installment', 'Add Installment', NULL),
(304, 'installment_list', 'List of Installment', NULL),
(305, 'loan_id', 'Loan No', NULL),
(306, 'installment_amount', 'Installment Amount', NULL),
(307, 'payment', 'Payment', NULL),
(308, 'received_by', 'Receiver', NULL),
(309, 'installment_no', 'Install No', NULL),
(310, 'notes', 'Notes', NULL),
(311, 'paid', 'Paid', NULL),
(312, 'loan_report', 'Loan Report', NULL),
(313, 'e_r_id', 'Enter Your Employee ID', NULL),
(314, 'leave', 'Leave', NULL),
(315, 'add_leave', 'Add Leave', NULL),
(316, 'list_leave', 'List of Leave', NULL),
(317, 'dayname', 'Weekly Leave Day', NULL),
(318, 'holiday', 'Holiday', NULL),
(319, 'list_holiday', 'List of Holidays', NULL),
(320, 'no_of_days', 'Number of Days', NULL),
(321, 'holiday_name', 'Holiday Name', NULL),
(322, 'set', 'SET', NULL),
(323, 'tax', 'Tax', NULL),
(324, 'tax_setup', 'Tax Setup', NULL),
(325, 'add_tax_setup', 'Add Tax Setup', NULL),
(326, 'list_tax_setup', 'List of Tax setup', NULL),
(327, 'tax_collection', 'Tax collection', NULL),
(328, 'start_amount', 'Start Amount', NULL),
(329, 'end_amount', 'End Amount', NULL),
(330, 'rate', 'Tax Rate', NULL),
(331, 'date_start', 'Date Start', NULL),
(332, 'amount_tax', 'Tax Amount', NULL),
(333, 'collection_by', 'Collection By', NULL),
(334, 'date_end', 'Date End', NULL),
(335, 'income_net_period', 'Income  Net period', NULL),
(336, 'default_amount', 'Default Amount', NULL),
(337, 'add_sal_type', 'Add Salary Type', NULL),
(338, 'list_sal_type', 'Salary Type List', NULL),
(339, 'salary_type_setup', 'Salary Type Setup', NULL),
(340, 'salary_setup', 'Salary SetUp', NULL),
(341, 'add_sal_setup', 'Add Salary Setup', NULL),
(342, 'list_sal_setup', 'Salary Setup List', NULL),
(343, 'salary_type_id', 'Salary Type', NULL),
(344, 'salary_generate', 'Salary Generate', NULL),
(345, 'add_sal_generate', 'Generate Now', NULL),
(346, 'list_sal_generate', 'Generated Salary List', NULL),
(347, 'gdate', 'Generate Date', NULL),
(348, 'start_dates', 'Start Date', NULL),
(349, 'generate', 'Generate ', NULL),
(350, 'successfully_saved_saletup', ' Set up Successfull', NULL),
(351, 's_date', 'Start Date', NULL),
(352, 'e_date', 'End Date', NULL),
(353, 'salary_payable', 'Payable Salary', NULL),
(354, 'tax_manager', 'Tax', NULL),
(355, 'generate_by', 'Generate By', NULL),
(356, 'successfully_paid', 'Successfully Paid', NULL),
(357, 'direct_empl', ' Employee', NULL),
(358, 'add_emp_info', 'Add New Employee', NULL),
(359, 'new_empl_pos', 'Add New Employee Position', NULL),
(360, 'manage', 'Manage Position', NULL),
(361, 'ad_advertisement', 'ADD POSITION', NULL),
(362, 'moduless', 'Modules', NULL),
(363, 'next', 'Next', NULL),
(364, 'finish', 'Finish', NULL),
(365, 'request', 'Request', NULL),
(366, 'successfully_saved', 'Your Data Successfully Saved', NULL),
(367, 'sal_type', 'Salary Type', NULL),
(368, 'sal_name', 'Salary Name', NULL),
(369, 'leave_application', 'Leave Application', NULL),
(370, 'apply_strt_date', 'Application Start Date', NULL),
(371, 'apply_end_date', 'Application End date', NULL),
(372, 'leave_aprv_strt_date', 'Approve Start Date', NULL),
(373, 'leave_aprv_end_date', 'Approved End Date', NULL),
(374, 'num_aprv_day', 'Aproved Day', NULL),
(375, 'reason', 'Reason', NULL),
(376, 'approve_date', 'Approved Date', NULL),
(377, 'leave_type', 'Leave Type', NULL),
(378, 'apply_hard_copy', 'Application Hard Copy', NULL),
(379, 'approved_by', 'Approved By', NULL),
(380, 'notice', 'Notice Board', NULL),
(381, 'noticeboard', 'Notice Board', NULL),
(382, 'notice_descriptiion', 'Description', NULL),
(383, 'notice_date', 'Notice Date', NULL),
(384, 'notice_type', 'Notice Type', NULL),
(385, 'notice_by', 'Notice By', NULL),
(386, 'notice_attachment', 'Attachment', NULL),
(387, 'account_name', 'Account Name', NULL),
(388, 'account_type', 'Account Type', NULL),
(389, 'account_id', 'Account Name', NULL),
(390, 'transaction_description', 'Description', NULL),
(391, 'payment_id', 'Payment', NULL),
(392, 'create_by_id', 'Created By', NULL),
(393, 'account', 'Account', NULL),
(394, 'account_add', 'Add Account', NULL),
(395, 'account_transaction', 'Transaction', NULL),
(396, 'award', 'Award', NULL),
(397, 'new_award', 'New Award', NULL),
(398, 'award_name', 'Award Name', NULL),
(399, 'aw_description', 'Award Description', NULL),
(400, 'awr_gift_item', 'Gift Item', NULL),
(401, 'awarded_by', 'Award By', NULL),
(402, 'employee_name', 'Employee Name', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `leave_apply`
--
-- Creation: Aug 16, 2017 at 04:49 AM
--

CREATE TABLE IF NOT EXISTS `leave_apply` (
  `leave_appl_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `apply_strt_date` varchar(20) NOT NULL,
  `apply_end_date` varchar(20) NOT NULL,
  `leave_aprv_strt_date` varchar(20) NOT NULL,
  `leave_aprv_end_date` varchar(20) NOT NULL,
  `num_aprv_day` varchar(15) NOT NULL,
  `reason` varchar(100) NOT NULL,
  `apply_hard_copy` text,
  `apply_date` varchar(20) NOT NULL,
  `approve_date` varchar(20) NOT NULL,
  `approved_by` varchar(30) NOT NULL,
  `leave_type` varchar(50) NOT NULL,
  PRIMARY KEY (`leave_appl_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- RELATIONS FOR TABLE `leave_apply`:
--

--
-- Dumping data for table `leave_apply`
--

INSERT INTO `leave_apply` (`leave_appl_id`, `employee_id`, `apply_strt_date`, `apply_end_date`, `leave_aprv_strt_date`, `leave_aprv_end_date`, `num_aprv_day`, `reason`, `apply_hard_copy`, `apply_date`, `approve_date`, `approved_by`, `leave_type`) VALUES
(2, 20019, '17-08-2017', '17-08-2017', '17-08-2017', '24-08-2017', '5', 'Marriage ceremony', '0', '09-08-2017', '24-08-2017', 'Isahaq', 'df'),
(3, 1235, '2017-08-16', '2017-08-16', '2017-08-17', '2017-08-17', '5', 'Marriage ceremony', '', '2017-08-09', '2017-08-24', 'Jasim', 'ere'),
(4, 20019, '2017-08-22', '2017-08-31', '2017-08-22', '2017-08-31', '8', 'Fever', '0', '2017-08-22', '2017-08-22', 'Isahaq', 'Sikness'),
(5, 20021, '2017-08-22', '2017-08-31', '2017-08-22', '2017-08-31', '7', 'Marriage ceremony', '0', '2017-08-22', '2017-08-22', 'kk', 'as'),
(6, 20030, '2017-08-23', '2017-08-23', '2017-08-23', '2017-08-31', '8', 'Family reasons', '', '2017-08-23', '2017-08-23', 'Isahaq', 'sdf'),
(7, 100001, '2017-08-23', '2017-08-23', '2017-08-23', '2017-08-25', '2', 'f', NULL, '2017-08-23', '2017-08-23', 'f', 'f');

-- --------------------------------------------------------

--
-- Table structure for table `loan_installment`
--
-- Creation: Aug 13, 2017 at 11:23 AM
--

CREATE TABLE IF NOT EXISTS `loan_installment` (
  `loan_inst_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` varchar(21) CHARACTER SET latin1 NOT NULL,
  `loan_id` varchar(21) CHARACTER SET latin1 NOT NULL,
  `installment_amount` varchar(20) CHARACTER SET latin1 NOT NULL,
  `payment` varchar(20) CHARACTER SET latin1 NOT NULL,
  `date` varchar(20) CHARACTER SET latin1 NOT NULL,
  `received_by` varchar(20) CHARACTER SET latin1 NOT NULL,
  `installment_no` varchar(20) CHARACTER SET latin1 NOT NULL,
  `notes` varchar(80) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`loan_inst_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- RELATIONS FOR TABLE `loan_installment`:
--

--
-- Dumping data for table `loan_installment`
--

INSERT INTO `loan_installment` (`loan_inst_id`, `employee_id`, `loan_id`, `installment_amount`, `payment`, `date`, `received_by`, `installment_no`, `notes`) VALUES
(1, '120', '4', '942', '500', '2017-07-01', 'uu', '1', 'hjkl"'),
(2, '1000', '6', '4000', '4200', '2017-07-01', '12', '12', '1212'),
(3, '1234bd', '1', '500', '400', '2017-07-22', 'minka', '1', 'kjbhgui'),
(4, '1000', '5', '10069', '2000', '2017-07-21', 'sdf', '13', 'sdf');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--
-- Creation: Aug 13, 2017 at 11:23 AM
--

CREATE TABLE IF NOT EXISTS `message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sender_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `datetime` datetime NOT NULL,
  `sender_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0=unseen, 1=seen, 2=delete',
  `receiver_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0=unseen, 1=seen, 2=delete',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- RELATIONS FOR TABLE `message`:
--

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `sender_id`, `receiver_id`, `subject`, `message`, `datetime`, `sender_status`, `receiver_status`) VALUES
(1, 2, 1, 'TEST', '<p> TEST</p>', '2017-02-07 00:00:00', 0, 2),
(3, 26, 3, 'TEST', '<p>receiver_id<strong></strong></p>', '2017-02-07 00:00:00', 0, 1),
(10, 2, 17, 'TEST', '<p>bbjkjhjh</p>', '2017-02-07 11:34:41', 0, 0),
(11, 2, 1, 'morning', '<p>sadefsdasdaff</p>', '2017-07-19 06:57:36', 1, 1),
(12, 2, 7, 'hi', '<p>fgdfg</p>', '2017-07-23 10:08:55', 1, 0),
(13, 2, 1, 'Salary report', '<p>Please send me salary report.....</p>', '2017-07-23 02:01:04', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `module`
--
-- Creation: Aug 13, 2017 at 11:23 AM
--

CREATE TABLE IF NOT EXISTS `module` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` text,
  `image` varchar(255) NOT NULL,
  `directory` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

--
-- RELATIONS FOR TABLE `module`:
--

--
-- Dumping data for table `module`
--

INSERT INTO `module` (`id`, `name`, `description`, `image`, `directory`, `status`) VALUES
(39, 'attendance Details ', 'Simple attendance processing System', 'application/modules/attendance/assets/images/thumbnail.jpg', 'attendance', 1),
(40, 'Employee circulation processing System', 'Simple circulation processing System', 'application/modules/circularprocess/assets/images/thumbnail.jpg', 'circularprocess', 1),
(41, 'Employee Details ', 'Simple hrm processing System', 'application/modules/employee/assets/images/thumbnail.jpg', 'employee', 1),
(42, 'Leave Details ', 'Simple leave processing System', 'application/modules/leave/assets/images/thumbnail.jpg', 'leave', 1),
(43, 'Loan Details ', 'Simple loan processing System', 'application/modules/loan/assets/images/thumbnail.jpg', 'loan', 1),
(44, 'TAX Details ', 'Simple tax processing System', 'application/modules/tax/assets/images/thumbnail.jpg', 'tax', 1),
(46, 'Payroll Details ', 'Simple payroll processing System', 'application/modules/payroll/assets/images/thumbnail.jpg', 'payroll', 1),
(48, 'Account', 'Account information', 'application/modules/account/assets/images/thumbnail.jpg', 'account', 1);

-- --------------------------------------------------------

--
-- Table structure for table `module_permission`
--
-- Creation: Aug 13, 2017 at 11:23 AM
--

CREATE TABLE IF NOT EXISTS `module_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_module_id` int(11) NOT NULL,
  `fk_user_id` int(11) NOT NULL,
  `create` tinyint(1) DEFAULT NULL,
  `read` tinyint(1) DEFAULT NULL,
  `update` tinyint(1) DEFAULT NULL,
  `delete` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_module_id` (`fk_module_id`),
  KEY `fk_user_id` (`fk_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- RELATIONS FOR TABLE `module_permission`:
--

--
-- Dumping data for table `module_permission`
--

INSERT INTO `module_permission` (`id`, `fk_module_id`, `fk_user_id`, `create`, `read`, `update`, `delete`) VALUES
(5, 39, 3, 1, 1, 1, 1),
(6, 40, 3, 0, 0, 0, 0),
(7, 41, 3, 0, 1, 1, 1),
(8, 42, 3, 0, 0, 0, 0),
(9, 43, 3, 0, 1, 1, 0),
(10, 44, 3, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `notice_board`
--
-- Creation: Aug 23, 2017 at 09:11 AM
--

CREATE TABLE IF NOT EXISTS `notice_board` (
  `notice_id` int(11) NOT NULL AUTO_INCREMENT,
  `notice_descriptiion` text NOT NULL,
  `notice_date` date NOT NULL,
  `notice_type` varchar(50) NOT NULL,
  `notice_by` varchar(50) NOT NULL,
  `notice_attachment` text,
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- RELATIONS FOR TABLE `notice_board`:
--

--
-- Dumping data for table `notice_board`
--

INSERT INTO `notice_board` (`notice_id`, `notice_descriptiion`, `notice_date`, `notice_type`, `notice_by`, `notice_attachment`) VALUES
(2, 'Attention Please It is a large for Describe our notice', '2017-08-25', 'Salary', 'sdfdsf', './application/modules/noticeboard/assets/images/2017-08-16/Exa.pdf'),
(3, 'sdf', '2017-08-22', 'Testing Notice', 'sdf', './application/modules/noticeboard/assets/images/2017-08-22/Exa.pdf'),
(4, 'sdf', '2017-08-22', 'Second test', 'Isahq', '0'),
(5, 'dsfdsf', '2017-08-21', 'Vacaition holiday', 'sdfsdf', './application/modules/noticeboard/assets/images/2017-08-22/Exa1.pdf'),
(6, 'Holy Eid ul Azha', '2017-08-23', 'Leave', 'Isahaq', '0'),
(7, 'sdfsdf', '2017-08-23', 'Eid Ul Azha', 'Khan', '0'),
(8, 'sdfsaf', '2017-08-16', 'Vacaition holiday', 'ewr', '');

-- --------------------------------------------------------

--
-- Table structure for table `payroll_holiday`
--
-- Creation: Aug 13, 2017 at 11:23 AM
--

CREATE TABLE IF NOT EXISTS `payroll_holiday` (
  `payrl_holi_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `holiday_name` varchar(30) CHARACTER SET latin1 NOT NULL,
  `start_date` varchar(30) CHARACTER SET latin1 NOT NULL,
  `end_date` varchar(30) CHARACTER SET latin1 NOT NULL,
  `no_of_days` varchar(30) CHARACTER SET latin1 NOT NULL,
  `created_by` varchar(30) CHARACTER SET latin1 NOT NULL,
  `updated_by` varchar(30) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`payrl_holi_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- RELATIONS FOR TABLE `payroll_holiday`:
--

--
-- Dumping data for table `payroll_holiday`
--

INSERT INTO `payroll_holiday` (`payrl_holi_id`, `holiday_name`, `start_date`, `end_date`, `no_of_days`, `created_by`, `updated_by`) VALUES
(1, 'Eid holiay', '2017-07-16', '2017-07-21', '232', '', ''),
(2, 'fdgds', '2017-07-20', '2017-07-23', '3', '', ''),
(3, 'sad', '2017-07-18', '2017-07-21', '3', '', ''),
(4, 'Eid holiay', '2017-07-18', '2017-07-20', '2', '', ''),
(5, 'eid', '2017-08-01', '2017-08-11', 'NaN', '', ''),
(6, 'eid ul fitar', '2017-07-20', '2017-07-25', '5', '', ''),
(7, 'pohela Bayshak', '2017-07-20', '2017-07-25', '7', '', ''),
(8, 'summer vacation', '2017-07-23', '2017-07-30', '7', '', ''),
(10, 'Ramadan', '2017-07-01', '2017-07-25', '24', '', ''),
(11, 'Eid Ul Azha', '2017-08-30', '2017-09-05', '6', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `payroll_tax_collection`
--
-- Creation: Aug 13, 2017 at 11:23 AM
--

CREATE TABLE IF NOT EXISTS `payroll_tax_collection` (
  `tax_coll_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `employee_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  `date_start` varchar(30) CHARACTER SET latin1 NOT NULL,
  `amount_tax` varchar(30) CHARACTER SET latin1 NOT NULL,
  `collection_by` varchar(30) CHARACTER SET latin1 NOT NULL,
  `date_end` varchar(30) CHARACTER SET latin1 NOT NULL,
  `income_net_period` varchar(30) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`tax_coll_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- RELATIONS FOR TABLE `payroll_tax_collection`:
--

-- --------------------------------------------------------

--
-- Table structure for table `payroll_tax_setup`
--
-- Creation: Aug 13, 2017 at 11:23 AM
--

CREATE TABLE IF NOT EXISTS `payroll_tax_setup` (
  `tax_setup_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `start_amount` varchar(30) CHARACTER SET latin1 NOT NULL,
  `end_amount` varchar(30) CHARACTER SET latin1 NOT NULL,
  `rate` varchar(30) CHARACTER SET latin1 NOT NULL,
  `status` varchar(30) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`tax_setup_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- RELATIONS FOR TABLE `payroll_tax_setup`:
--

--
-- Dumping data for table `payroll_tax_setup`
--

INSERT INTO `payroll_tax_setup` (`tax_setup_id`, `start_amount`, `end_amount`, `rate`, `status`) VALUES
(1, '1', '5000', '10', ''),
(2, '2000', '3000', '10', ''),
(3, '3000', '3500', '12', ''),
(4, '3500', '4200', '12', ''),
(5, '4000', '4500', '20', ''),
(7, '2000', '5500', '10', ''),
(8, '01', '200000', '10%', ''),
(9, '200001', '500000', '12%', '');

-- --------------------------------------------------------

--
-- Table structure for table `position`
--
-- Creation: Aug 13, 2017 at 11:23 AM
--

CREATE TABLE IF NOT EXISTS `position` (
  `pos_id` int(11) NOT NULL AUTO_INCREMENT,
  `position_name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `position_details` varchar(255) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`pos_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- RELATIONS FOR TABLE `position`:
--

--
-- Dumping data for table `position`
--

INSERT INTO `position` (`pos_id`, `position_name`, `position_details`) VALUES
(4, 'Junior Executive ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam auctor quam eu maximus pulvinar.'),
(5, 'Senior Executive', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam auctor quam eu maximus pulvinar.'),
(6, 'Chief Executive', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam auctor quam eu maximus pulvinar.'),
(7, 'Junior Software Developer', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam auctor quam eu maximus pulvinar.'),
(8, 'Lead Programmer', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam auctor quam eu maximus pulvinar.'),
(9, 'HR Admin', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam auctor quam eu maximus pulvinar.'),
(10, 'Chief Information Officer  ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam auctor quam eu maximus pulvinar.'),
(11, 'Chief Operation Officer ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam auctor quam eu maximus pulvinar.'),
(12, 'Chief Executive Officer', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam auctor quam eu maximus pulvinar.'),
(13, 'SEO', 'highligting');

-- --------------------------------------------------------

--
-- Table structure for table `salary_setup_header`
--
-- Creation: Aug 13, 2017 at 11:23 AM
--

CREATE TABLE IF NOT EXISTS `salary_setup_header` (
  `s_s_h_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `employee_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  `salary_payable` varchar(30) CHARACTER SET latin1 NOT NULL,
  `absent_deduct` varchar(30) CHARACTER SET latin1 NOT NULL,
  `tax_manager` varchar(30) CHARACTER SET latin1 NOT NULL,
  `status` varchar(30) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`s_s_h_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- RELATIONS FOR TABLE `salary_setup_header`:
--

--
-- Dumping data for table `salary_setup_header`
--

INSERT INTO `salary_setup_header` (`s_s_h_id`, `employee_id`, `salary_payable`, `absent_deduct`, `tax_manager`, `status`) VALUES
(1, '5001', 'monthly', '1', '1', ''),
(2, '1234bd', 'monthly', '1', '1', ''),
(3, '1235', 'weekly', '1', '1', ''),
(4, '20021', 'monthly', '1', '1', ''),
(5, '100001', 'monthly', '1', '1', '');

-- --------------------------------------------------------

--
-- Table structure for table `salary_sheet_generate`
--
-- Creation: Aug 13, 2017 at 11:23 AM
--

CREATE TABLE IF NOT EXISTS `salary_sheet_generate` (
  `ssg_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `employee_id` varchar(20) NOT NULL,
  `name` varchar(30) CHARACTER SET latin1 NOT NULL,
  `gdate` varchar(20) DEFAULT NULL,
  `start_date` varchar(30) CHARACTER SET latin1 NOT NULL,
  `end_date` varchar(30) CHARACTER SET latin1 NOT NULL,
  `generate_by` varchar(30) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`ssg_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- RELATIONS FOR TABLE `salary_sheet_generate`:
--

--
-- Dumping data for table `salary_sheet_generate`
--

INSERT INTO `salary_sheet_generate` (`ssg_id`, `employee_id`, `name`, `gdate`, `start_date`, `end_date`, `generate_by`) VALUES
(4, '120', 'bdtaskit', '2017-07-22', '2017-06-01', '2017-07-31', 'Jhon  Doe'),
(5, '111133', 'January', '2017-07-23', '2017-07-01', '2017-07-31', 'Jhon  Doe'),
(6, '1235', 'January', '2017-07-23', '2017-07-01', '2017-07-31', 'Jhon  Doe'),
(7, '20021', 'January', '2017-07-23', '2017-07-01', '2017-07-31', 'Jhon  Doe'),
(8, '100001', 'January', '2017-07-23', '2017-07-01', '2017-07-31', 'Jhon  Doe'),
(9, '20030', 'January', '2017-07-23', '2017-07-01', '2017-07-31', 'Jhon  Doe'),
(10, '201012', 'January', '2017-07-23', '2017-07-01', '2017-07-31', 'Jhon  Doe'),
(11, '20019', 'January', '2017-07-23', '2017-07-01', '2017-07-31', 'Jhon  Doe'),
(12, 'STD897', 'January', '2017-07-23', '2017-07-01', '2017-07-31', 'Jhon  Doe');

-- --------------------------------------------------------

--
-- Table structure for table `salary_type`
--
-- Creation: Aug 13, 2017 at 11:23 AM
--

CREATE TABLE IF NOT EXISTS `salary_type` (
  `salary_type_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `sal_name` varchar(50) CHARACTER SET latin1 NOT NULL,
  `emp_sal_type` varchar(50) CHARACTER SET latin1 NOT NULL,
  `default_amount` varchar(30) NOT NULL,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`salary_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

--
-- RELATIONS FOR TABLE `salary_type`:
--

--
-- Dumping data for table `salary_type`
--

INSERT INTO `salary_type` (`salary_type_id`, `sal_name`, `emp_sal_type`, `default_amount`, `status`) VALUES
(5, 'Basic', '1', '10', ''),
(6, 'Medical', '1', '10000', ''),
(10, 'house Rent', '1', '1000', ''),
(11, 'Loan', '0', '1200', ''),
(12, 'Provident fund', '0', '200', ''),
(13, 'Bima', '0', '1000', ''),
(15, 'manth', '1', '50', ''),
(16, 'new', '1', '321', ''),
(17, 'B', '0', '1000', '');

-- --------------------------------------------------------

--
-- Table structure for table `sampledata`
--
-- Creation: Aug 13, 2017 at 11:22 AM
--

CREATE TABLE IF NOT EXISTS `sampledata` (
  `brand` varchar(30) NOT NULL,
  `dealer_name` varchar(30) NOT NULL,
  `authorized` varchar(30) NOT NULL,
  `address` varchar(30) NOT NULL,
  `contact_no` varchar(30) NOT NULL,
  `mobile_no` varchar(30) NOT NULL,
  `fax` varchar(30) NOT NULL,
  `email_id` varchar(30) NOT NULL,
  `website_addr` varchar(30) NOT NULL,
  `state` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONS FOR TABLE `sampledata`:
--

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--
-- Creation: Aug 13, 2017 at 11:23 AM
--

CREATE TABLE IF NOT EXISTS `setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `address` text,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `logo` varchar(50) DEFAULT NULL,
  `favicon` varchar(100) DEFAULT NULL,
  `language` varchar(100) DEFAULT NULL,
  `site_align` varchar(50) DEFAULT NULL,
  `footer_text` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- RELATIONS FOR TABLE `setting`:
--

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `title`, `address`, `email`, `phone`, `logo`, `favicon`, `language`, `site_align`, `footer_text`) VALUES
(2, 'Human Resource Management', '98 Green Road, Farmgate, Dhaka-1215.', 'bdtask@gmail.com', '0123456789', 'assets/img/icons/2017-07-22/HRM.png', 'assets/img/icons/2017-04-03/m.png', 'english', 'LTR', '2017©Copyright');

-- --------------------------------------------------------

--
-- Table structure for table `synchronizer_setting`
--
-- Creation: Aug 13, 2017 at 11:23 AM
--

CREATE TABLE IF NOT EXISTS `synchronizer_setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hostname` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `port` varchar(10) NOT NULL,
  `debug` varchar(10) NOT NULL,
  `project_root` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- RELATIONS FOR TABLE `synchronizer_setting`:
--

--
-- Dumping data for table `synchronizer_setting`
--

INSERT INTO `synchronizer_setting` (`id`, `hostname`, `username`, `password`, `port`, `debug`, `project_root`) VALUES
(8, '70.35.198.244', 'spreadcargo', 'SpreadShorob1@', '21', 'true', './public_html/');

-- --------------------------------------------------------

--
-- Table structure for table `tablename`
--
-- Creation: Aug 13, 2017 at 11:22 AM
--

CREATE TABLE IF NOT EXISTS `tablename` (
  `id` int(11) NOT NULL,
  `empName` varchar(100) DEFAULT NULL,
  `empAddress` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONS FOR TABLE `tablename`:
--

-- --------------------------------------------------------

--
-- Table structure for table `user`
--
-- Creation: Aug 13, 2017 at 11:23 AM
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `about` text,
  `email` varchar(100) NOT NULL,
  `password` varchar(32) NOT NULL,
  `password_reset_token` varchar(20) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `last_logout` datetime DEFAULT NULL,
  `ip_address` varchar(14) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `is_admin` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- RELATIONS FOR TABLE `user`:
--

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `firstname`, `lastname`, `about`, `email`, `password`, `password_reset_token`, `image`, `last_login`, `last_logout`, `ip_address`, `status`, `is_admin`) VALUES
(1, 'John', 'Doe', 'TEST', 'john@doe.com', '827ccb0eea8a706c4c34a16891f84e7b', '', './assets/img/user/images41.jpg', '2017-08-24 06:10:59', '2017-08-22 10:57:50', '::1', 1, 1),
(2, 'Jhon ', 'Doe', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s', 'admin@example.com', '1234', '', './assets/img/user/profile_img1.png', '2017-08-13 09:50:27', '2017-08-11 12:49:47', '27.147.175.112', 1, 0),
(3, 'Tahia ', 'Duke', 'Test', 'tahia@example.com', '827ccb0eea8a706c4c34a16891f84e7b', '', './assets/img/user/download13.jpg', '2017-04-10 14:00:29', '2017-04-09 14:01:46', '::1', 1, 0),
(7, 'abs', 'link', 'm ,mn,.m', 'abs@yahoo.com', '202cb962ac59075b964b07152d234b70', '', './assets/img/user/images_(3)2.jpg', NULL, NULL, NULL, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `weekly_holiday`
--
-- Creation: Aug 13, 2017 at 11:23 AM
--

CREATE TABLE IF NOT EXISTS `weekly_holiday` (
  `wk_id` int(11) NOT NULL AUTO_INCREMENT,
  `dayname` varchar(30) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`wk_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

--
-- RELATIONS FOR TABLE `weekly_holiday`:
--

--
-- Dumping data for table `weekly_holiday`
--

INSERT INTO `weekly_holiday` (`wk_id`, `dayname`) VALUES
(9, 'Friday'),
(10, 'Satarday'),
(20, 'Friday'),
(21, 'Friday,Satarday,Sunday'),
(22, 'Friday,Satarday,Sunday');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
