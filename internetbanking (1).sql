-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1 , @suNNy69
-- Generation Time: Dec 04, 2024 at 02:37 PM
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
-- Database: `internetbanking`
--

-- --------------------------------------------------------

--
-- Table structure for table `ib_acc_types`
--

CREATE TABLE `ib_acc_types` (
  `acctype_id` int(20) NOT NULL,
  `name` varchar(200) NOT NULL,
  `description` longtext NOT NULL,
  `rate` varchar(200) NOT NULL,
  `code` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ib_acc_types`
--

INSERT INTO `ib_acc_types` (`acctype_id`, `name`, `description`, `rate`, `code`) VALUES
(1, 'Savings', '<p>Savings accounts&nbsp;are typically the first official bank account anybody opens. Children may open an account with a parent to begin a pattern of saving. Teenagers open accounts to stash cash earned&nbsp;from a first job&nbsp;or household chores.</p><p>Savings accounts are an excellent place to park&nbsp;emergency cash. Opening a savings account also marks the beginning of your relationship with a financial institution. For example, when joining a credit union, your &ldquo;share&rdquo; or savings account establishes your membership.</p>', '5', 'ACC-CAT-4EZFO'),
(5, 'Fixed Deposit Account', '<p>In <strong>Fixed Deposit Account</strong> (also known as <strong>FD Account</strong>), a particular sum of money is deposited in a bank for specific&nbsp;period of time. It&rsquo;s one time deposit and one time take away (withdraw) account.&nbsp;The money deposited in this account can not be withdrawn before the expiry of period.&nbsp;</p><p>However, in case of need,&nbsp; the depositor can ask for closing the fixed deposit prematurely by paying a penalty. The penalty amount varies with banks.</p><p>A high interest rate is paid on fixed deposits. The rate of interest paid for fixed deposit vary according to amount, period and also from bank to bank.</p>', '8', 'ACC-CAT-A86GO'),
(7, 'Current account', '<p><strong>Current account</strong> is mainly for business persons, firms, companies, public enterprises etc and are never used for the purpose of investment or savings.These deposits are the most liquid deposits and there are no limits for number of transactions or the amount of transactions in a day. While, there is no interest paid on amount held in the account, banks charges certain &nbsp;service charges, on such accounts. The current accounts do not have any fixed maturity as these are on continuous basis accounts.</p>', '2', 'ACC-CAT-4O8QW');

-- --------------------------------------------------------

--
-- Table structure for table `ib_admin`
--

CREATE TABLE `ib_admin` (
  `admin_id` int(20) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `number` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `profile_pic` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ib_admin`
--

INSERT INTO `ib_admin` (`admin_id`, `name`, `email`, `number`, `password`, `profile_pic`) VALUES
(2, 'Snehal Modi', 'smodi4790@gmail.com', 'iBank-ADM-0516', 'fe703d258c7ef5f50b71e06565a65aa07194907f', 'admin-icn.png');

-- --------------------------------------------------------

--
-- Table structure for table `ib_bankaccounts`
--

CREATE TABLE `ib_bankaccounts` (
  `account_id` int(20) NOT NULL,
  `acc_name` varchar(200) NOT NULL,
  `account_number` varchar(200) NOT NULL,
  `acc_type` varchar(200) NOT NULL,
  `acc_rates` varchar(200) NOT NULL,
  `acc_status` varchar(200) NOT NULL,
  `acc_amount` varchar(200) NOT NULL,
  `client_id` varchar(200) NOT NULL,
  `client_name` varchar(200) NOT NULL,
  `client_national_id` varchar(200) NOT NULL,
  `client_phone` varchar(200) NOT NULL,
  `client_number` varchar(200) NOT NULL,
  `client_email` varchar(200) NOT NULL,
  `client_adr` varchar(200) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ib_bankaccounts`
--

INSERT INTO `ib_bankaccounts` (`account_id`, `acc_name`, `account_number`, `acc_type`, `acc_rates`, `acc_status`, `acc_amount`, `client_id`, `client_name`, `client_national_id`, `client_phone`, `client_number`, `client_email`, `client_adr`, `created_at`) VALUES
(22, 'sanjay', '546783190', 'Current account ', '2', 'Active', '0', '12', 'sanjay', '215485', '2154856532', 'iBank-CLIENT-2054', 'sanju12@gmail.com', 'valsad', '2024-03-18 04:28:31.523988'),
(23, 'gaurav', '142503796', 'Savings ', '5', 'Active', '0', '10', 'Gaurav', '2514362545', '1245856535', 'iBank-CLIENT-0159', 'gmali@gmail.com', 'navsari', '2024-03-18 04:29:14.499563'),
(26, 'hevin', '902758641', 'Savings ', '5', 'Active', '0', '14', 'hevin', '2159632', '2514364525', 'iBank-CLIENT-8409', 'hevu12@gmail.com', 'mumbai', '2024-03-22 06:37:47.615249'),
(30, 'm a GUPTA', '586712403', 'Savings ', '5', 'Active', '', '11', 'mayur', '124578', '5214789656', 'iBank-CLIENT-4536', 'ma@gmail.com', 'valsad', '2024-12-04 08:11:10.270142'),
(32, 'modi sunny', '403826157', 'Savings ', '5', 'Active', '0', '16', 'Snehal Modi', '396445', '9898256325', 'iBank-CLIENT-0426', 'Smodi@gmail.com', 'Surat', '2024-09-21 20:34:31.958006'),
(33, 'mayur', '019458637', 'Current account ', '2', 'Active', '0', '11', 'mayur', '124578', '5214789656', 'iBank-CLIENT-4536', 'ma@gmail.com', 'valsad', '2024-12-04 10:40:20.966721');

-- --------------------------------------------------------

--
-- Table structure for table `ib_clients`
--

CREATE TABLE `ib_clients` (
  `client_id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `national_id` varchar(200) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `profile_pic` varchar(200) NOT NULL,
  `client_number` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ib_clients`
--

INSERT INTO `ib_clients` (`client_id`, `name`, `national_id`, `phone`, `address`, `email`, `password`, `profile_pic`, `client_number`) VALUES
(10, 'Gaurav', '2514362545', '1245856535', 'Navsari', 'gmali@gmail.com', '63982e54a7aeb0d89910475ba6dbd3ca6dd4e5a1', '', 'iBank-CLIENT-0159'),
(11, 'mayur', '124578', '5214789656', 'valsad', 'ma@gmail.com', 'fe703d258c7ef5f50b71e06565a65aa07194907f', '', 'iBank-CLIENT-4536'),
(12, 'sanjay', '215485', '2154856532', 'valsad', 'sanju12@gmail.com', '10470c3b4b1fed12c3baac014be15fac67c6e815', '', 'iBank-CLIENT-2054'),
(14, 'Hevin Bhagat ', '2159632', '2514364525', 'mumbai', 'hevu12@gmail.com', '63982e54a7aeb0d89910475ba6dbd3ca6dd4e5a1', '', 'iBank-CLIENT-8409'),
(26, 'Snehal Modi', '254163', '1256859652', 'navsari', 'Smodi@gmail.com', 'fe703d258c7ef5f50b71e06565a65aa07194907f', '', 'iBank-CLIENT-1649');

-- --------------------------------------------------------

--
-- Table structure for table `ib_systemsettings`
--

CREATE TABLE `ib_systemsettings` (
  `id` int(20) NOT NULL,
  `sys_name` longtext NOT NULL,
  `sys_tagline` longtext NOT NULL,
  `sys_logo` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ib_systemsettings`
--

INSERT INTO `ib_systemsettings` (`id`, `sys_name`, `sys_tagline`, `sys_logo`) VALUES
(1, 'PUBLIC BANK', 'Financial success at every service we offer.', 'OIP (2).jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `ib_transactions`
--

CREATE TABLE `ib_transactions` (
  `tr_id` int(20) NOT NULL,
  `tr_code` varchar(200) NOT NULL,
  `account_id` varchar(200) NOT NULL,
  `acc_name` varchar(200) NOT NULL,
  `account_number` varchar(200) NOT NULL,
  `acc_type` varchar(200) NOT NULL,
  `acc_amount` varchar(200) NOT NULL,
  `tr_type` varchar(200) NOT NULL,
  `tr_status` varchar(200) NOT NULL,
  `client_id` varchar(200) NOT NULL,
  `client_name` varchar(200) NOT NULL,
  `client_national_id` varchar(200) NOT NULL,
  `transaction_amt` varchar(200) NOT NULL,
  `client_phone` varchar(200) NOT NULL,
  `receiving_acc_no` varchar(200) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `receiving_acc_name` varchar(200) NOT NULL,
  `receiving_acc_holder` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ib_transactions`
--

INSERT INTO `ib_transactions` (`tr_id`, `tr_code`, `account_id`, `acc_name`, `account_number`, `acc_type`, `acc_amount`, `tr_type`, `tr_status`, `client_id`, `client_name`, `client_national_id`, `transaction_amt`, `client_phone`, `receiving_acc_no`, `created_at`, `receiving_acc_name`, `receiving_acc_holder`) VALUES
(52, 'EklqZMf68s5H1rP40wFe', '19', 'Gaurav', '173509628', 'Savings ', '', 'Deposit', 'Success ', '10', 'Gaurav', '2514362545', '50000', '1245856535', '', '2024-03-16 09:39:18.466525', '', ''),
(53, 'jvfiwQgutrx9SN3W6V1h', '19', 'Gaurav', '173509628', 'Savings ', '', 'Transfer', 'Success ', '10', 'Gaurav', '2514362545', '500', '1245856535', '705239816', '2024-03-16 09:40:38.437686', 'Johnnie Reyes', 'Johnnie J. Reyes'),
(54, 'ljW0EFCOgr1cXoni54xy', '19', 'Gaurav', '173509628', 'Savings ', '', 'Withdrawal', 'Success ', '10', 'Gaurav', '2514362545', '500', '1245856535', '', '2024-03-16 09:41:08.324498', '', ''),
(55, 'hcAB0QKTSjszVZPaJO1e', '19', 'Gaurav', '173509628', 'Savings ', '', 'Transfer', 'Success ', '10', 'Gaurav', '2514362545', '500', '1245856535', '357146928', '2024-03-17 08:14:19.035361', 'Harry M Den', 'Harry Den'),
(56, 'Bok7UhRFb6seOa2wPT1i', '19', 'Gaurav', '173509628', 'Savings ', '', 'Transfer', 'Success ', '10', 'Gaurav', '2514362545', '5000', '1245856535', '173509628', '2024-03-17 08:20:54.580410', 'Gaurav', 'Gaurav'),
(57, 'nxsq56Vb7GjKHd2TfgX1', '19', 'Gaurav', '173509628', 'Savings ', '', 'Withdrawal', 'Success ', '10', 'Gaurav', '2514362545', '250', '1245856535', '', '2024-03-17 08:35:04.736658', '', ''),
(58, 'L7u6SyMnEGBgReq5PobZ', '21', 'mayur', '051423678', 'Savings ', '', 'Deposit', 'Success ', '11', 'mayur', '124578', '50000', '5214789656', '', '2024-03-17 09:00:18.288730', '', ''),
(59, '7tqYilGcHXgR2pvr6Lae', '21', 'mayur', '051423678', 'Savings ', '', 'Deposit', 'Success ', '11', 'mayur', '124578', '500', '5214789656', '', '2024-03-17 19:51:46.443669', '', ''),
(60, 'D2QGTcO6uBi9lrx8aYog', '21', 'mayur', '051423678', 'Savings ', '', 'Withdrawal', 'Success ', '11', 'mayur', '124578', '500', '5214789656', '', '2024-03-17 19:52:00.158194', '', ''),
(61, 'vswDGRpOWPZTga5QMKkb', '23', 'gaurav', '142503796', 'Savings ', '', 'Deposit', 'Success ', '10', 'Gaurav', '2514362545', '50000', '1245856535', '', '2024-03-18 04:30:36.289461', '', ''),
(62, 'vswDGRpOWPZTga5QMKkb', '23', 'gaurav', '142503796', 'Savings ', '', 'Deposit', 'Success ', '10', 'Gaurav', '2514362545', '50000', '1245856535', '', '2024-03-18 04:31:53.938591', '', ''),
(63, 'fXd5mbnATSp3itwGvol1', '22', 'sanjay', '546783190', 'Current account ', '', 'Deposit', 'Success ', '12', 'sanjay', '215485', '125468', '2154856532', '', '2024-03-18 04:33:21.484278', '', ''),
(64, 'QvMhsaTfLSW4troHgFJ9', '22', 'sanjay', '546783190', 'Current account ', '', 'Transfer', 'Success ', '12', 'sanjay', '215485', '50000', '2154856532', '142503796', '2024-03-18 04:34:17.839865', 'gaurav', 'Gaurav'),
(65, 'MB9Wi4UNe6vpFYAJRC0j', '21', 'mayur', '051423678', 'Savings ', '', 'Transfer', 'Success ', '11', 'mayur', '124578', '2544', '5214789656', '546783190', '2024-03-18 05:14:09.397102', 'sanjay', 'sanjay'),
(66, 'J3Iosz5KZcRnMkmqfC2b', '21', 'mayur', '051423678', 'Savings ', '', 'Transfer', 'Success ', '11', 'mayur', '124578', '3000', '5214789656', '546783190', '2024-03-18 05:28:15.640860', 'sanjay', 'sanjay'),
(67, 'Aoct3H5zDgYkxdsf7Lj6', '21', 'mayur', '051423678', 'Savings ', '', 'Transfer', 'Success ', '11', 'mayur', '124578', '100', '5214789656', '546783190', '2024-03-19 05:31:05.919096', 'sanjay', 'sanjay'),
(68, 'AsF0I4mQOuXV3BwnPaEb', '21', 'mayur', '051423678', 'Savings ', '', 'Transfer', 'Success ', '11', 'mayur', '124578', '5000', '5214789656', '546783190', '2024-03-20 06:08:59.772477', 'sanjay', 'sanjay'),
(69, 'SeZ0iJ5wK2px7rmouEhW', '25', 'harsh', '526189437', 'Current account ', '', 'Deposit', 'Success ', '15', 'harsh', '1459623', '355823', '25143656', '', '2024-03-22 06:36:35.463639', '', ''),
(70, 'gakVOKqwLUMiNRDCcvlZ', '26', 'hevin', '902758641', 'Savings ', '', 'Deposit', 'Success ', '14', 'hevin', '2159632', '897596', '2514364525', '', '2024-03-22 06:38:15.983466', '', ''),
(71, 'YtgCQoNqLsda9empu80M', '27', 'mayur', '406239758', 'Fixed Deposit Account ', '', 'Deposit', 'Success ', '11', 'mayur', '124578', '215465', '5214789656', '', '2024-03-22 06:40:26.318736', '', ''),
(72, 's4dfSj7vJYUR68tEir1O', '27', 'mayur', '406239758', 'Fixed Deposit Account ', '', 'Withdrawal', 'Success ', '11', 'mayur', '124578', '2546', '5214789656', '', '2024-03-22 06:43:15.910389', '', ''),
(73, 'pisOUe2aHQqWCfdBM5Ez', '27', 'mayur', '406239758', 'Fixed Deposit Account ', '', 'Withdrawal', 'Success ', '11', 'mayur', '124578', '256', '5214789656', '', '2024-03-22 06:43:22.956796', '', ''),
(74, 'MmxyWCeU26b0EJwTlPYG', '28', 'mayur gupta', '453208719', 'Savings ', '', 'Deposit', 'Success ', '11', 'mayur', '124578', '215632', '5214789656', '', '2024-03-22 06:45:31.185442', '', ''),
(75, 'DmC1nlAu97yUrcekzVtf', '28', 'mayur gupta', '453208719', 'Savings ', '', 'Transfer', 'Success ', '11', 'mayur', '124578', '2153', '5214789656', '142503796', '2024-03-22 06:45:48.835377', 'gaurav', 'Gaurav'),
(76, 'EaQ3HXyIr2DY169kdRwv', '28', 'mayur gupta', '453208719', 'Savings ', '', 'Transfer', 'Success ', '11', 'mayur', '124578', '2153', '5214789656', '142503796', '2024-03-22 06:48:34.192839', 'gaurav', 'Gaurav'),
(77, 'Gtxr4ETNAUjguYnHIvmp', '27', 'mayur', '406239758', 'Fixed Deposit Account ', '', 'Transfer', 'Success ', '11', 'mayur', '124578', '1245', '5214789656', '142503796', '2024-03-22 08:35:49.368934', 'gaurav', 'Gaurav'),
(78, 'Njn3QlEFqw21UTmSJ87I', '23', 'gaurav', '142503796', 'Savings ', '', 'Withdrawal', 'Success ', '10', 'Gaurav', '2514362545', '256', '1245856535', '', '2024-03-22 09:45:58.143686', '', ''),
(79, 'DJ437I6z2LHNtSsYOUlg', '25', 'harsh', '526189437', 'Current account ', '', 'Deposit', 'Success ', '15', 'harsh', '1459623', '2545', '25143656', '', '2024-03-23 05:05:03.009114', '', ''),
(80, 'iLlENezHhSQmAkf4a9YR', '22', 'sanjay', '546783190', 'Current account ', '', 'Withdrawal', 'Success ', '12', 'sanjay', '215485', '2512', '2154856532', '', '2024-03-23 05:06:00.264686', '', ''),
(81, 'wo7kNIdqP8GvSceAi1nx', '25', 'harsh', '526189437', 'Current account ', '', 'Transfer', 'Success ', '15', 'harsh', '1459623', '250', '25143656', '526189437', '2024-03-23 05:06:58.597173', 'harsh', 'harsh'),
(82, 'GzMDiX0J43wWCIAVEuOg', '27', 'mayur', '406239758', 'Fixed Deposit Account ', '', 'Transfer', 'Success ', '11', 'mayur', '124578', '50000', '5214789656', '526189437', '2024-03-28 07:08:25.526990', 'harsh', 'harsh'),
(83, 'kdmHxZMLIzpJraK53Ou7', '25', 'harsh', '526189437', 'Current account ', '', 'Deposit', 'Success ', '15', 'harsh', '1459623', '2500', '25143656', '', '2024-03-28 07:44:54.334227', '', ''),
(84, 'zR1V3NioAESk0KmljTCW', '27', 'mayur', '406239758', 'Fixed Deposit Account ', '', 'Transfer', 'Success ', '11', 'mayur', '124578', '5000', '5214789656', '142503796', '2024-04-09 06:43:29.010983', 'gaurav', 'Gaurav'),
(85, 'JWfNydS9mFIDXZhGR7lb', '22', 'sanjay', '546783190', 'Current account ', '', 'Deposit', 'Success ', '12', 'sanjay', '215485', '2500', '2154856532', '', '2024-04-09 06:46:23.394759', '', ''),
(86, 'yLAiK8vmITnYzCSOh1Rt', '23', 'gaurav', '142503796', 'Savings ', '', 'Withdrawal', 'Success ', '10', 'Gaurav', '2514362545', '200', '1245856535', '', '2024-04-09 06:46:36.922248', '', ''),
(87, 'FaNsU0PMWDiVp4Gjd9lR', '26', 'hevin', '902758641', 'Savings ', '', 'Deposit', 'Success ', '14', 'hevin', '2159632', '500', '2514364525', '', '2024-09-10 11:55:29.683797', '', ''),
(88, 'lEti25zmKAGyxpvkFHZJ', '32', 'modi sunny', '403826157', 'Savings ', '', 'Deposit', 'Success ', '16', 'Snehal Modi', '396445', '500', '9898256325', '', '2024-09-21 20:38:53.218020', '', ''),
(89, 'lEti25zmKAGyxpvkFHZJ', '32', 'modi sunny', '403826157', 'Savings ', '', 'Deposit', 'Success ', '16', 'Snehal Modi', '396445', '500', '9898256325', '', '2024-09-21 20:39:10.562289', '', ''),
(90, 'mJaCdShvjoqWkVUTDIXc', '32', 'modi sunny', '403826157', 'Savings ', '', 'Deposit', 'Success ', '16', 'Snehal Modi', '396445', '500', '9898256325', '', '2024-09-21 20:39:17.675963', '', ''),
(91, 'LtPNVfxdQG9e07H2s3jv', '32', 'modi sunny', '403826157', 'Savings ', '', 'Deposit', 'Success ', '16', 'Snehal Modi', '396445', '50000', '9898256325', '', '2024-09-21 20:39:27.732232', '', ''),
(92, 'FZ3LN2D5ArYbGTl6tE7f', '26', 'hevin', '902758641', 'Savings ', '', 'Deposit', 'Success ', '14', 'hevin', '2159632', '500', '2514364525', '', '2024-09-21 20:40:50.990541', '', ''),
(93, '6lQMmdfxVjKeBS3405XI', '30', 'm a GUPTA', '586712403', 'Savings ', '', 'Deposit', 'Success ', '11', 'mayur', '124578', '100', '5214789656', '', '2024-12-04 08:08:53.977603', '', ''),
(94, 'sXzAnMOgvQJVkxoI0ThY', '30', 'm a GUPTA', '586712403', 'Savings ', '', 'Deposit', 'Success ', '11', 'mayur', '124578', '2000', '5214789656', '', '2024-12-04 08:09:00.016470', '', ''),
(95, 'BLCpbHM0NFjcPi2ewZXS', '30', 'm a GUPTA', '586712403', 'Savings ', '', 'Deposit', 'Success ', '11', 'mayur', '124578', '100', '5214789656', '', '2024-12-04 08:11:10.267097', '', ''),
(96, 'Eg5b26fovzQ3ZBkNMjiO', '30', 'm a GUPTA', '586712403', 'Savings ', '', 'Deposit', 'Success ', '11', 'mayur', '124578', '10', '5214789656', '', '2024-12-04 08:15:44.201892', '', ''),
(97, 'SweD50nh3vIWfKAXzHy7', '30', 'm a GUPTA', '586712403', 'Savings ', '', 'Withdrawal', 'Success ', '11', 'mayur', '124578', '20', '5214789656', '', '2024-12-04 08:17:45.881130', '', ''),
(98, 'zekdU2bPpqRIjy3QNBK9', '30', 'm a GUPTA', '586712403', 'Savings ', '', 'Transfer', 'Success ', '11', 'mayur', '124578', '200', '5214789656', '403826157', '2024-12-04 08:22:05.784170', 'modi sunny', 'Snehal Modi'),
(99, 'rupaf3WjCYbS4Mqecthd', '22', 'sanjay', '546783190', 'Current account ', '', 'Withdrawal', 'Success ', '12', 'sanjay', '215485', '100', '2154856532', '', '2024-12-04 08:24:07.000039', '', ''),
(100, '08VXStZcl536j1s9mEHx', '23', 'gaurav', '142503796', 'Savings ', '', 'Transfer', 'Success ', '10', 'Gaurav', '2514362545', '10', '1245856535', '902758641', '2024-12-04 08:26:29.954589', 'hevin', 'hevin'),
(101, 'wAS6O0uidtB8Gx52FJXq', '30', 'm a GUPTA', '586712403', 'Savings ', '', 'Transfer', 'Success ', '11', 'mayur', '124578', '200', '5214789656', '902758641', '2024-12-04 10:44:39.230294', 'hevin', 'hevin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ib_acc_types`
--
ALTER TABLE `ib_acc_types`
  ADD PRIMARY KEY (`acctype_id`);

--
-- Indexes for table `ib_admin`
--
ALTER TABLE `ib_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `ib_bankaccounts`
--
ALTER TABLE `ib_bankaccounts`
  ADD PRIMARY KEY (`account_id`);

--
-- Indexes for table `ib_clients`
--
ALTER TABLE `ib_clients`
  ADD PRIMARY KEY (`client_id`);

--
-- Indexes for table `ib_systemsettings`
--
ALTER TABLE `ib_systemsettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ib_transactions`
--
ALTER TABLE `ib_transactions`
  ADD PRIMARY KEY (`tr_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ib_acc_types`
--
ALTER TABLE `ib_acc_types`
  MODIFY `acctype_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `ib_admin`
--
ALTER TABLE `ib_admin`
  MODIFY `admin_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ib_bankaccounts`
--
ALTER TABLE `ib_bankaccounts`
  MODIFY `account_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `ib_clients`
--
ALTER TABLE `ib_clients`
  MODIFY `client_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `ib_systemsettings`
--
ALTER TABLE `ib_systemsettings`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ib_transactions`
--
ALTER TABLE `ib_transactions`
  MODIFY `tr_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
