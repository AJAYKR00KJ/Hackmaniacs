-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 07, 2021 at 09:22 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `food_filler_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admintable`
--

CREATE TABLE `admintable` (
  `id` int(11) NOT NULL,
  `email` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admintable`
--

INSERT INTO `admintable` (`id`, `email`, `password`) VALUES
(1, 'madadmin@gmail.com', 'cf1ef61fbec0eb674a2ad96ddfe5256d');

-- --------------------------------------------------------

--
-- Table structure for table `contactpage`
--

CREATE TABLE `contactpage` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contactpage`
--

INSERT INTO `contactpage` (`id`, `name`, `email`, `subject`, `message`, `date`) VALUES
(1, 'ajay', 'abc@gmail.com', 'temp', 'message', '2021-01-19'),
(2, 'hola', 'fg@gmail.com', 'subject', 'message', '2021-01-16'),
(3, 'ajay', 'ajay@gmail.com', 'queries', 'message', '2021-01-16'),
(4, 'abcder', 'abc@gmail.com', 'kjhadkaj', 'jhaskjlasa', '2021-01-16'),
(5, 'abc', 'fgh@gmail.com', 'Test', 'Test_message', '2021-01-28'),
(6, 'hfhghjgyuy', 'fghgf@vcgh', 'kjhklmkjloi', 'nkhiguyuyy', '2021-02-02'),
(7, '', '', '', '', '2021-02-02'),
(8, '', '', '', '', '2021-02-02'),
(9, 'giuuii', 'fhg@ggj', 'jgihui', 'iuyhiuyihu', '2021-02-02'),
(10, 'giuuii', 'fhg@ggj', 'jgihui', 'iuyhiuyihu', '2021-02-02'),
(11, 'igi', 'ghjh@ghvh', 'hgiuhi', 'hjhgjh', '2021-02-02'),
(12, 'hjghjkh', 'hgfjg@hggvhg', 'jgkhkjhk', 'hjgikhkjk', '2021-02-02');

-- --------------------------------------------------------

--
-- Table structure for table `donate`
--

CREATE TABLE `donate` (
  `event` varchar(255) DEFAULT NULL,
  `fooditem` varchar(255) DEFAULT NULL,
  `plate` int(11) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `upi` varchar(255) DEFAULT NULL,
  `money` int(11) DEFAULT NULL,
  `id` int(11) DEFAULT NULL,
  `donateddate` date NOT NULL DEFAULT current_timestamp(),
  `email` varchar(250) NOT NULL,
  `pointsearned` int(11) DEFAULT NULL,
  `uniqueid` int(11) NOT NULL,
  `overallpointearned` int(11) DEFAULT NULL,
  `d_name` varchar(245) NOT NULL,
  `d_address` varchar(245) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `donate`
--

INSERT INTO `donate` (`event`, `fooditem`, `plate`, `weight`, `upi`, `money`, `id`, `donateddate`, `email`, `pointsearned`, `uniqueid`, `overallpointearned`, `d_name`, `d_address`) VALUES
('Marriage', 'Sweets, Halwa, Puri', 34, 23, '', 0, NULL, '2021-02-02', 'neer00neer@gmail.com', 57, 132, NULL, 'Ajay Kumar', 'Allahabad'),
('', 'Rs. 90', 0, 0, '', 90, NULL, '2021-02-02', 'neer00neer@gmail.com', 90, 133, NULL, 'etre tet', 'sdf'),
('', 'Rs. 90', 0, 0, '', 90, NULL, '2021-02-02', 'userajay89@gmail.com', 90, 134, NULL, 'ajay kr', 'Alld'),
('', 'Rs. 90', 0, 0, '', 90, NULL, '2021-02-03', 'userajay89@gmail.com', 90, 135, NULL, 'ajay kr', 'Alld'),
('', 'Rs. 90', 0, 0, '', 90, NULL, '2021-02-05', 'userajay89@gmail.com', 90, 136, NULL, 'ajay kr', 'Alld'),
('', 'Rs. 90', 0, 0, '', 90, NULL, '2021-02-05', 'userajay89@gmail.com', 90, 137, NULL, 'ajay kr', 'Alld'),
('', 'Rs. 89', 0, 0, '', 89, NULL, '2021-02-06', 'userajay89@gmail.com', 89, 138, NULL, 'ajay kr', 'Alld'),
('', 'Rs. 9000', 0, 0, '', 9000, NULL, '2021-02-06', 'userajay89@gmail.com', 9000, 139, NULL, 'Vijay kr', 'Alld'),
('', 'Rs. 101', 0, 0, '', 101, NULL, '2021-02-06', 'userajay89@gmail.com', 101, 140, NULL, 'Vijay kr', 'Alld'),
('', 'Rs. 101', 0, 0, '', 101, NULL, '2021-02-06', 'userajay89@gmail.com', 101, 141, NULL, 'Vijay kr', 'Alld'),
('', 'Rs. 89', 0, 0, '', 89, NULL, '2021-02-07', 'userajay89@gmail.com', 89, 186, NULL, 'Vijay kr', 'Alld');

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `id` int(11) NOT NULL,
  `item` varchar(20) NOT NULL,
  `total_weight` double NOT NULL,
  `energy_kcal` double NOT NULL,
  `fat_g` double NOT NULL,
  `fiber_g` double NOT NULL,
  `sugar_g` double NOT NULL,
  `protein_g` double NOT NULL,
  `cholestrol_mg` double NOT NULL,
  `calciium_mg` double NOT NULL,
  `vitaminA_ug` double NOT NULL,
  `vitaminC_ug` double NOT NULL,
  `vitaminB12_ug` double NOT NULL,
  `vitaminD_ug` double NOT NULL,
  `vitaminE_ug` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`id`, `item`, `total_weight`, `energy_kcal`, `fat_g`, `fiber_g`, `sugar_g`, `protein_g`, `cholestrol_mg`, `calciium_mg`, `vitaminA_ug`, `vitaminC_ug`, `vitaminB12_ug`, `vitaminD_ug`, `vitaminE_ug`) VALUES
(6, 'apple', 182, 94.64, 0.3094, 4.368, 18.9098, 0.4732, 0, 10.92, 5.46, 8.372, 0, 0, 0.3276),
(11, 'pineapple', 905, 452.5, 1.086, 12.67, 89.1425, 4.887, 0, 117.65, 27.15, 432.59, 0, 0, 0.181),
(17, 'potato', 213, 164.01, 0.1917, 4.686, 1.6614, 4.3026, 0, 25.56, 0, 41.961, 0, 0, 0.0213),
(20, 'ghee', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(24, 'coconut', 33.75, 119.475, 11.302875, 3.0375, 2.102625, 1.123875, 0, 4.725, 0, 1.11375, 0, 0, 0.081),
(26, 'paneer', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(28, 'cheese', 28, 113.68, 9.4696, 0, 0.0784, 6.7312, 28.56, 189, 73.64, 0, 0.2464, 0.168, 0.2184),
(29, 'noodles', 340, 1305.6, 15.096, 11.22, 6.392, 48.144, 285.6, 119, 57.8, 0, 0.986, 1.02, 1.258),
(32, 'butter', 113, 810.21, 91.6543, 0, 0.0678, 0.9605, 242.95, 27.12, 772.92, 0, 0.1921, 1.695, 2.6216),
(33, 'meat', 340, 442, 16.354, 0, 0, 73.576, 214.2, 44.2, 6.8, 0, 7.718, 0.34, 0.612),
(35, 'kdfkjs', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36, '3eqwe', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(67, 'sweet', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(71, 'Orange', 131, 61.57, 0.1572, 3.144, 12.2485, 1.2314, 0, 52.4, 14.41, 69.692, 0, 0, 0.2358),
(72, 'Wheat', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(73, 'Rice', 24.375, 87.75, 0.141375, 0, 0, 1.6111875, 0, 2.19375, 0, 0, 0, 0, 0),
(74, 'Tomato', 123, 22.14, 0.246, 1.476, 3.2349, 1.0824, 0, 12.3, 51.66, 16.851, 0, 0, 0.6642);

-- --------------------------------------------------------

--
-- Table structure for table `ngotable`
--

CREATE TABLE `ngotable` (
  `id` int(11) NOT NULL,
  `owneremail` varchar(250) NOT NULL,
  `ngoname` varchar(250) NOT NULL,
  `ngocontact` varchar(250) NOT NULL,
  `ngoemail` varchar(250) NOT NULL,
  `ngoaddress` varchar(250) NOT NULL,
  `ngocity` varchar(250) NOT NULL,
  `ngopin` varchar(250) NOT NULL,
  `ngofile` varchar(250) NOT NULL,
  `ngoid` varchar(250) NOT NULL,
  `ngostatus` int(1) NOT NULL DEFAULT 30,
  `status_comment` varchar(30) NOT NULL DEFAULT 'Pending',
  `registereddate` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ngotable`
--

INSERT INTO `ngotable` (`id`, `owneremail`, `ngoname`, `ngocontact`, `ngoemail`, `ngoaddress`, `ngocity`, `ngopin`, `ngofile`, `ngoid`, `ngostatus`, `status_comment`, `registereddate`) VALUES
(80, 'gdkk@lljsf', 'New Check ', 'slkdfnkls', 'sljdfk@kjhf', 'sjdfkjs', 'lkdjfls', 'lkdjfklss', 'New Check images.jpg', 'kjhdfw98', 1, 'Pending', '2021-01-29'),
(81, 'test@gmmial', 'test_ngo', '52322342', 'ytfsd@gmail', 'test_address', 'raipur', '324623', 'test_ngo images.jpg', 'gfvfuy7657', 1, 'Pending', '2021-01-29'),
(82, 'sdjfjh@jhf', 'ldfjg', '59874', 'dfjkh@jkhf', 'dfnj', 'dfjgn', '34335', 'ldfjg beat-punctuation.gif', 'dgrt', 1, 'Pending', '2021-02-02'),
(83, 'neer00neer@gmail.com', 'Ram NGO', '3424325353', 'ramngo@gmail.com', 'RamNGO_ADDRESS', 'Alld', '211008', 'Ram NGO o-music-heart-facebook-1068x801.jpg', 'ertet34', 100, 'Published', '2021-02-02'),
(85, '', 'jguj', '234243', 'dfs@Jhd', 'jguj', 'jguj', '3432', 'jguj hipjazz.jpg', 'fd', 30, 'Pending', '2021-02-06'),
(86, 'neer00neer@gmail.com', 'jguj', '234243', 'dfs@Jhd', 'jguj', 'jguj', '3432', 'jguj hipjazz.jpg', 'fd', 30, 'Pending', '2021-02-06'),
(87, '', 'dsfs', '12312', 'xchjz@hjgjs', 'yutasu', 'ajgdsj', '21312313', 'prof.jpg', 'kdhw98e', 30, 'Pending', '2021-02-06'),
(88, 'neer00neer@gmail.com', 'dsfs', '12312', 'xchjz@hjgjs', 'yutasu', 'ajgdsj', '21312313', 'prof.jpg', 'kdhw98e', 60, 'Review', '2021-02-06'),
(89, '', 'khkjh', 'sdfh3240', 'sdkjh@hddsdfkh', 'jsjdhf', 'wer2039', '211008', 'khkjh music.jpg', '09342', 30, 'Pending', '2021-02-07'),
(90, 'neer00neer@gmail.com', 'khkjh', 'sdfh3240', 'sdkjh@hddsdfkh', 'jsjdhf', 'wer2039', '211008', 'khkjh music.jpg', '09342', 30, 'Pending', '2021-02-07'),
(91, '', 'hgbj', '465', 'fhg@gfd', 'gu', 'yutyu', '564675', 'hgbj energy.jpg', 'jgj', 30, 'Pending', '2021-02-07'),
(92, 'r@gmail.com', 'hgbj', '465', 'fhg@gfd', 'gu', 'yutyu', '564675', 'hgbj energy.jpg', 'jgj', 30, 'Pending', '2021-02-07');

-- --------------------------------------------------------

--
-- Table structure for table `ngo_owner`
--

CREATE TABLE `ngo_owner` (
  `id` int(11) NOT NULL,
  `ngo_o_name` varchar(250) NOT NULL,
  `ngo_o_email` varchar(255) NOT NULL,
  `ngo_o_address` varchar(250) NOT NULL,
  `ngo_o_mobile` varchar(12) NOT NULL,
  `ngo_o_pin` varchar(6) NOT NULL,
  `ngo_o_password` varchar(256) NOT NULL,
  `ngo_o_avatar` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ngo_owner`
--

INSERT INTO `ngo_owner` (`id`, `ngo_o_name`, `ngo_o_email`, `ngo_o_address`, `ngo_o_mobile`, `ngo_o_pin`, `ngo_o_password`, `ngo_o_avatar`) VALUES
(1, 'gfffhgh', 'hjj@hgvh', 'min@gmail.com', '868769879879', '868798', 'fbade9e36a3f36d3d676c1b808451dd7', 'hjj@hgvh d-the-music-corner-37256450-500-313.jpg'),
(2, 'hllo singh', 'neer0eer@gmail.com', 'in@gmail.com', '216837648737', '887987', 'fbade9e36a3f36d3d676c1b808451dd7', 'neer00neer@gmail.com energy.jpg'),
(3, 'Ajay Owner', 'neer00neer@gmail.com', 'NGO_OWNER_ADDRESS', '134324283538', '211008', 'fbade9e36a3f36d3d676c1b808451dd7', 'neer00neer@gmail.com beat-punctuation.gif'),
(4, 'asd', 'r@gmail.com', 'Asdd', '123423424323', '313213', 'fbade9e36a3f36d3d676c1b808451dd7', 'r@gmail.com d-the-music-corner-37256450-500-313.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `recharge_food`
--

CREATE TABLE `recharge_food` (
  `id` int(11) NOT NULL,
  `email` varchar(30) NOT NULL,
  `item` varchar(20) NOT NULL,
  `qty` int(11) NOT NULL,
  `doe` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `recharge_food`
--

INSERT INTO `recharge_food` (`id`, `email`, `item`, `qty`, `doe`) VALUES
(1, 'userajay89@gmail.com', 'tomato sauce', 2, '2021-02-17'),
(2, 'userajay89@gmail.com', 'chili sauce', 1, '2021-02-24'),
(7, 'userajay89@gmail.com', 'atta', 10, '2021-02-22'),
(9, 'shivam@gmail.com', 'besan', 2, '2021-02-17'),
(10, 'shivam@gmail.com', 'chana', 1, '2021-02-22'),
(11, 'shashwat@gmail.com', 'kurkure', 8, '2021-02-09'),
(12, 'shashwat@gmail.com', 'chips', 6, '2021-02-15'),
(13, 'rahulsingh21249@gmail.com', 'paneer', 1, '2021-02-28'),
(24, 'rahulsingh21249@gmail.com', 'rava', 3, '2021-02-18'),
(31, 'rahulsingh21249@gmail.com', 'khiva', 2, '2021-02-10'),
(40, 'rahulsingh21249@gmail.com', 'ghee', 2, '2021-02-20'),
(41, 'rahulsingh21249@gmail.com', 'paneer', 4, '2021-02-26'),
(43, 'rahulsingh21249@gmail.com', 'cheese', 2, '2021-02-12'),
(44, 'rahulsingh21249@gmail.com', 'cheese', 4, '2021-02-12'),
(47, 'rahulsingh21249@gmail.com', 'pineapple', 4, '2021-02-18'),
(48, 'rahulsingh21249@gmail.com', 'butter', 4, '2021-02-11'),
(49, 'rahulsingh21249@gmail.com', 'meat', 3, '2021-02-10'),
(52, 'rahulsingh21249@gmail.com', 'apple', 2, '2021-02-11'),
(53, 'userajay89@gmail.com', 'kdfkjs', 23, '2021-02-26'),
(55, 'userajay89@gmail.com', 'kdfkjs', 23, '2021-02-26'),
(90, 'userajay89@gmail.com', 'Wheat', 3, '2021-02-19'),
(92, 'userajay89@gmail.com', 'Tomato', 2, '2021-02-19');

-- --------------------------------------------------------

--
-- Table structure for table `registered_ngo`
--

CREATE TABLE `registered_ngo` (
  `id` int(11) NOT NULL,
  `ownerfirstname` varchar(250) NOT NULL,
  `ownerlastname` varchar(250) NOT NULL,
  `owneremail` varchar(250) NOT NULL,
  `ownercontact` varchar(250) NOT NULL,
  `ngoname` varchar(250) NOT NULL,
  `ngocontact` varchar(250) NOT NULL,
  `ngoemail` varchar(250) NOT NULL,
  `ngoaddress` varchar(250) NOT NULL,
  `ngocity` varchar(250) NOT NULL,
  `ngopin` varchar(250) NOT NULL,
  `ngofile` varchar(250) NOT NULL,
  `ngoid` varchar(250) NOT NULL,
  `ngostatus` tinyint(1) NOT NULL,
  `registereddate` date NOT NULL DEFAULT current_timestamp(),
  `latitude` float NOT NULL,
  `longitude` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `registered_ngo`
--

INSERT INTO `registered_ngo` (`id`, `ownerfirstname`, `ownerlastname`, `owneremail`, `ownercontact`, `ngoname`, `ngocontact`, `ngoemail`, `ngoaddress`, `ngocity`, `ngopin`, `ngofile`, `ngoid`, `ngostatus`, `registereddate`, `latitude`, `longitude`) VALUES
(1, 'shivam', 'sahu', 'email@gmail.com', '6754789125', 'seva', '9516251234', 'shivam.raipur1234@gmail.com', 'ram sagar para', 'raipur', '492001', '', 'IM78', 0, '2021-02-04', 21.2478, 81.6303),
(55, 'ram ', 'sharma', 'neer00neer@gmail.com', '9171653864', 'caringforeveyone', '9516251233', 'shivammaniharsahu27@gmail.com', 'agrasan chouk', 'raipur', '492001', '', 'hf@gmail', 1, '2021-01-12', 21.2488, 81.6313),
(56, 'ajay', 'kumar', 'neer00neer@gmail.com', '27348923', 'ngo name', '7836487234', 'ngo@gmail.com', 'ngo address', 'Prayagraj', '211008', '', 'ngoid', 0, '2021-01-12', 25.3679, 81.872),
(57, 'rahul', 'singh', 'neer00neer@gmail.com', '976543218', 'sevasarovar', '9876543210', 'hf@gmail', 'hf@gmail', 'Prayagraj', '211008', '', 'hf@gmail', 1, '2021-01-12', 25.4466, 81.8547),
(58, 'frst', 'lst', 'owner@gmail', '12345', 'ngo name', '1234567', 'ngor@gmail', 'address', 'mirzapur', '123456', 'energy.jpg', '43665', 1, '2021-01-12', 0, 0),
(59, 'Ajay', 'Kr', 'ajay_ngo@gmail.com', '1234567890', 'Ajay Kumar NGO, 2020 Established', '7266026387', 'hiban5538@gmail.com', '647 gali no 4, rail marg, shiv nagar mirzapur', 'mirzapur', '123456', '', 'NGOID12345', 0, '2021-01-12', 0, 0),
(60, 'ajay', 'kumar', 'ajay@gmail.com', '123456789', 'ajay_ngo_select_it', '123456789', 'hiban5538@gmail.com', 'ajay ngo address', 'mirzapur', '123456', '', 'AD_NGO_ID', 1, '2021-01-12', 0, 0),
(61, 'ram', 'lakhan', 'neer00neer@gmail.com', '123456791', 'ram ngo', '4235367876', 'ramngo@gmail.com', 'ram ngo address', 'mirzapur', '123456', '', 'ram ngo id', 1, '2021-01-12', 0, 0),
(62, 'ram', 'lakhan', 'ramlakhan@gmail.com', '123456791', 'ram ngo', '4235367876', 'ramngo@gmail.com', 'ram ngo address', 'mirzapur', '123456', '', 'ram ngo id', 1, '2021-01-12', 0, 0),
(63, 'aj', 'kr', 'ajemail@gmail.com', '1234567', 'aj_ngo', '876543', 'ajngo@gmail.com', 'ajngo_address', 'mirzapur', '123456', '', 'hdskjakda', 1, '2021-01-13', 0, 0),
(64, 'shasy_f', 'shasy_l', 'shashy@gmail.com', '1234567891', 'shashy_ngo', '987654321', 'shashy_ngo@gmail.com', 'railway station', 'Raipur', '492001', '', 'ABCDEF', 0, '2021-01-13', 21.2548, 81.6305),
(65, 'rahul', 'singh', 'rahul@gmail.com', '3634e8274982739', 'rahul_ngo', '9723982', 'rahulngo@gmail.com', 'rahul raipur ljdos', 'raipur', '492001', '', 'khfkdj', 1, '2021-01-13', 0, 0),
(66, 'nishan', 'singh', 'nishan@owner', 'w3324345', 'ngo_n', '32423423', 'n_ngo@gmail.com', 'ngo_n_address', 'Raipur', '492001', '', 'n_id', 1, '2021-01-13', 0, 0),
(67, 'Daily', 'Singh', 'daily@gmail.com', '123456', 'Daily@ngo', '65426267', 'daily@ngogmail.com', 'daily_address', 'Raipur', '492001', '', 'bkhjdhw987yw', 1, '2021-01-14', 0, 0),
(68, 'abc', 'jkl', 'abc@gmail.com', '1234567890', 'abc_ngo', '1232123432', 'abc_ngo@gmail.com', 'abc_ngo_address', 'abc_ngo_city', '12345', '', 'abc_ngo_id', 0, '2021-01-14', 0, 0),
(99, 'NGO_OWNER_F', 'Last_NAME', 'asdf@gmail.com', '1234567890', 'NGO_NAME', '657898765', 'hiban8@gmail.com', 'Ajay_NGO_ADDRESS', 'Allahabad', '211008', 'New Check images.jpg', 'NGOID', 1, '2021-02-01', 0, 0),
(100, 'Dev', 'Nath', 'ajay@gmail.com', '83473473436', 'Dev NGO', '23472937498', 'ajaykr000kj@gmail.com', 'Allahabad, ', 'Allahabad, ', '211008', 'test_ngo images.jpg', 'gjh', 1, '2021-02-02', 0, 0),
(101, 'skdhf', 'sfsd', 'neer00neer@gmail.com', '34534', 'sjfn', '3453dhj@hbd', 'sdh@kjhd', 'sdk', 'djkf', '24353', 'ldfjg beat-punctuation.gif', 'khk', 0, '2021-02-02', 0, 0),
(102, 'ram', 'nath', 'ram@gmail.com', '356135576', 'Ram NGO', '3424325353', 'ramngo@gmail.com', 'RamNGO_ADDRESS', 'Alld', '211008', 'Ram NGO o-music-heart-facebook-1068x801.jpg', 'efwefe', 1, '2021-02-02', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `testimonial`
--

CREATE TABLE `testimonial` (
  `testimonial_id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `address` varchar(250) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `testimonial_text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `testimonial`
--

INSERT INTO `testimonial` (`testimonial_id`, `name`, `address`, `date`, `testimonial_text`) VALUES
(206, 'k k_l', 'k_address', '2021-01-16', 'Nice, awesome plateform'),
(207, 'k k_l', 'k_address', '2021-01-16', 'Want more features'),
(208, 'k k_l', 'k_address', '2021-01-16', 'jkkj'),
(209, 'k k_l', 'k_address', '2021-01-16', 'hello fine'),
(210, 'k k_l', 'k_address', '2021-01-17', 'Wow'),
(211, 'kj_first kj_last', 'kj_address', '2021-01-17', 'Wow, its a amazing plateform and easy to use. We can donate our food easily, great things.'),
(212, 'QWERTY SINGH', 'Allahabad', '2021-01-29', 'ghjkl,mnb'),
(213, 'QWERTY SINGH', 'Allahabad', '2021-01-29', 'hjkuytqwerty'),
(214, 'QWERTY SINGH', 'Allahabad', '2021-01-29', 'Hello good night'),
(215, 'Mr. X y', 'X_address', '2021-01-29', 'Nice and fully working plateform'),
(216, 'ajay kr', 'Alld', '2021-02-06', 'hELLO'),
(217, 'Vijay kr', 'Alld', '2021-02-07', 'okk');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(250) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `mobile` varchar(250) NOT NULL,
  `dob` date NOT NULL,
  `occupation` varchar(250) NOT NULL,
  `address` varchar(250) NOT NULL,
  `pincode` int(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `avatar` varchar(256) NOT NULL,
  `overall_points` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `mobile`, `dob`, `occupation`, `address`, `pincode`, `password`, `avatar`, `overall_points`) VALUES
(42, 'Ajay', 'Kumar', 'useray@gmail.com', '567876456', '2021-02-19', 'Student', 'Allahabad', 211008, 'fbade9e36a3f36d3d676c1b808451dd7', 'userajay89@gmail.com beats.jpg', 5970),
(70, 'Vijay', 'kr', 'userajay89@gmail.com', '468624283747', '2021-02-04', 'Student', 'Alld', 211008, 'e3e4cc1a907a4c9739a42242da41c7aa', 'userajay89@gmail.com energy.jpg', 448215),
(71, 'erwe', 'werw', 'a@gmail.com', '234234234242', '2021-02-26', 'fgef', 'raipur', 211008, 'fbade9e36a3f36d3d676c1b808451dd7', 'a@gmail.com beat-punctuation.gif', 0),
(72, 'sdf', 'efrw', 'q@gmail.com', '234534654545', '2021-02-13', 'asdad', 'Raipur', 211008, 'fbade9e36a3f36d3d676c1b808451dd7', 'q@gmail.com d-the-music-corner-37256450-500-313.jpg', 0),
(73, 'weweeqwe', 'wqe', 'c@gmail.com', '231242343534', '2021-02-12', 'Student', 'sadsd', 123123, 'fbade9e36a3f36d3d676c1b808451dd7', 'c@gmail.com d-the-music-corner-37256450-500-313.jpg', 0),
(74, 'sdfs', 'dfdf', 'w@gmail.com', '321234242534', '2021-02-04', 'Student', 'Raipur', 211008, 'fbade9e36a3f36d3d676c1b808451dd7', 'w@gmail.com d-the-music-corner-37256450-500-313.jpg', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admintable`
--
ALTER TABLE `admintable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contactpage`
--
ALTER TABLE `contactpage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donate`
--
ALTER TABLE `donate`
  ADD PRIMARY KEY (`uniqueid`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product` (`item`);

--
-- Indexes for table `ngotable`
--
ALTER TABLE `ngotable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ngo_owner`
--
ALTER TABLE `ngo_owner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recharge_food`
--
ALTER TABLE `recharge_food`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registered_ngo`
--
ALTER TABLE `registered_ngo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonial`
--
ALTER TABLE `testimonial`
  ADD PRIMARY KEY (`testimonial_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admintable`
--
ALTER TABLE `admintable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contactpage`
--
ALTER TABLE `contactpage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `donate`
--
ALTER TABLE `donate`
  MODIFY `uniqueid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=187;

--
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `ngotable`
--
ALTER TABLE `ngotable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `ngo_owner`
--
ALTER TABLE `ngo_owner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `recharge_food`
--
ALTER TABLE `recharge_food`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `registered_ngo`
--
ALTER TABLE `registered_ngo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `testimonial`
--
ALTER TABLE `testimonial`
  MODIFY `testimonial_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=218;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `donate`
--
ALTER TABLE `donate`
  ADD CONSTRAINT `donate_ibfk_1` FOREIGN KEY (`id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
