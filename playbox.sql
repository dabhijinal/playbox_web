-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 08, 2025 at 05:46 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `playbox`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `adid` int(10) NOT NULL,
  `adname` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`adid`, `adname`, `password`, `email`) VALUES
(1, 'test', '12345', 'test@demo.com'),
(2, 'jinal', '12345', 'Jinal@email.com'),
(3, 'aarti', '12345', 'arti@gmail.com'),
(4, 'princy', '12345', 'princy@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `bid` int(10) NOT NULL,
  `cid` int(10) NOT NULL,
  `usid` int(10) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(50) NOT NULL,
  `duration` varchar(50) NOT NULL,
  `total_rent` int(40) NOT NULL,
  `adv_amount` int(40) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`bid`, `cid`, `usid`, `date`, `time`, `duration`, `total_rent`, `adv_amount`, `status`) VALUES
(1, 4, 1, '2025-01-22', '10', '3', 3300, 500, 'Pending'),
(2, 1, 2, '2025-01-22', '10', '1', 1100, 200, 'Pending'),
(3, 3, 3, '2025-01-23', '11', '2', 6000, 250, 'Pending'),
(5, 2, 3, '2025-01-22', '12', '2', 3600, 200, 'Pending'),
(6, 7, 1, '2025-01-24', '13', '2', 2400, 200, 'Pending'),
(7, 4, 1, '2025-01-24', '10', '2', 2200, 500, 'Confirm');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `coid` int(10) NOT NULL,
  `coname` varchar(50) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `message` varchar(80) NOT NULL,
  `date` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`coid`, `coname`, `subject`, `message`, `date`, `email`) VALUES
(1, 'popat', 'about the process of booking', 'to rent sports ground for half day this sunday 12/01/2025.\r\ni want to know about', '2025-01-01', 'popat@123.com'),
(2, 'hathi', 'about availability of ground', 'i want to know the that at 14 dec 2024\r\nthe astha ground is available or not, if', '2024-12-11', 'hathi@123.com');

-- --------------------------------------------------------

--
-- Table structure for table `courts`
--

CREATE TABLE `courts` (
  `cid` int(10) NOT NULL,
  `pid` int(10) NOT NULL,
  `spid` int(10) NOT NULL,
  `cname` varchar(50) NOT NULL,
  `location` varchar(100) NOT NULL,
  `area` varchar(50) NOT NULL,
  `rating` varchar(50) NOT NULL,
  `time` varchar(30) NOT NULL,
  `img1` varchar(50) NOT NULL,
  `img2` varchar(50) NOT NULL,
  `rent` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `courts`
--

INSERT INTO `courts` (`cid`, `pid`, `spid`, `cname`, `location`, `area`, `rating`, `time`, `img1`, `img2`, `rent`) VALUES
(1, 1, 1, 'Kites Sports', 'National Public School - Banashankari 5th Stage, Badminton Court, Bharath Housing Society Layout, Su', '20.12 Meter long, 3.05 meter wide', '4.1', '6 AM - 11 PM', 'crimg7.jpg', 'crimg2.jpg', 2000),
(2, 5, 2, 'The Grid Turf and Cafe', 'The Grid Turf and Cafe, near Mahakali Farm, beside Vaishno devi Under bridge, Tragad, Ahmedabad, Guj', '20.12 Meter long, 3.05 meter wide', '3.9', '24 Hours', 'hock1.jpg', 'hock1.jpg', 1800),
(3, 1, 3, 'Score Hub Box ', 'Poojan Farm Near Vedant Kadam Ognaj To Bhadaj Road, SP Ring Road, Ahmedabad - 380060', '105 meter long, 68 meter wide', '4.0', '24 Hours', 'footimg1.jpg', 'footimg2.jpg', 3000),
(4, 2, 1, 'CRICBOXX', 'CRICBOXX, Royal Cafe & Restro, TP-44, New CG Road, Opp. Swaminarayan Mandir, Chandkheda, Ahmedabad, ', '28 meter long, 15 meter wide', '3.2', '24 Hours', 'crimg3.jpg', 'crimg4.jpg', 1100),
(5, 2, 3, 'OneStop Turf', 'Ruta farm(PARTY PLOT), Opposite Ahmedabad-Mehsana Toll Tax, Near Tri-Mandir, Adalaj, Gujarat', '91 meter X 55 meter', '3.2', '24 hours', 'footimg3.jpg', 'footimg4.jpg', 1000),
(6, 3, 5, 'Colosseum', 'Behind Shilp Aaron, Sindhu Bhavan Marg, opp. New LJ College, Bodakdev, Ahmedabad, Gujarat 380054', '28 x 15 meter', '3.2', '24 Hours', 'bad1.jpg', 'bad1.jpg', 1100),
(7, 3, 4, 'Phoenix Sports Academy', 'Survery no. 182, Opp Trilok Elegance Motera Bhat, Link Road, Motera Koteshwar Rd, Ahmedabad, Gujarat', '18 meter long, 9 meter wide', '4.1', '9 AM - 10 PM', 'vollimg1.jpg', 'vollimg2.jpg', 1200),
(8, 4, 2, 'The Gaming Club ', '647/1, Mumatpura Karnavati Club Rd, Off Billionaire St, Mumatpura, Ahmedabad, Gujarat 380054\r\nTiming', '13.4 m long, 6.1 m wide', '3.2', '4 AM - 10 PM', 'hockey1.jpg', 'hockey2.jpg', 900),
(9, 5, 1, 'Royal Sports Academy', 'Survery no. 182, Opp Trilok Elegance Motera Bhat, Link Road, Motera Koteshwar Rd, Ahmedabad, Gujarat', '18 meter long, 9 meter wide', '4.1', '9 AM - 11 PM', 'crimg5.jpg', 'crimg6.jpg', 1000),
(10, 4, 3, 'Freke Football Club', 'Apcha Nagar, Althan, Surat, Gujarat 395007\r\n\r\n', '90 meter long, 60 meter wide', '3.2', '6 PM - 9 PM', 'footimg.jpg', 'footimg1.jpg', 400),
(11, 1, 4, 'Wilson Garden Club', 'No 35/2, 9th Cross Road, Hombe Gowda Nagara, Wilson Garden,  Ahmedabad, Gujarat - 380001', '28 x 15 meter', '3', '24 Hour', 'vollimg5.jpg', 'vollimg6.jpg', 800),
(12, 3, 5, 'Citi Nest Sports Centre', '91/72, 7th Cross Rd, Indiranagar II Stage, Eshwara Layout, Indiranagar,Rajkot ,Gujarat-36001', '28m long x 15m wide', '4', '24 Hour', 'bad9.jpg', 'bad9.jpg', 950),
(13, 1, 5, 'Dr. Rajkumar Badminton Academy', '1819, Dr Rajkumar Road, Next to Suguna hospital, 4th N block, Ahmedabad-380002', '28 x 15 meter', '4.5', '24 Hour', 'badbasket1.jpg', 'badbasket2.jpg', 1000),
(14, 2, 1, 'Fusion - The Turf', '1, Cornwell Rd, Akkithimana Halli, Bheemanna Garden, Langford Gardens,Ahmedabad', '20.12 Meter long, 4 meter wide', '4.1', '24 Hour', 'cri1.jpg', 'cri1.jpg', 1800),
(15, 3, 3, 'South United Football Club', 'South United Football Club, RBANM\'s Grounds, Gate No 3, Gangadhar Chetty Road, near Ulsoor, Gandhina', '91 meter X 55 meter', '4.3', '24 Hour', 'foot4.jpg', 'foot2.jpg', 1000),
(16, 2, 2, 'Game Theory - Tackle', 'No 183, Hombegowda Nagara, Siddapura Road, Lalbagh, Ahembdabad.', '13.4 m long, 6.1 m wide', '3.9', '24 Hour', 'hock4.jpg', 'hock4.jpg', 900),
(17, 5, 4, 'Rush Arena', '11th Floor (Terrace), Golden Heights, Dr. Rajkumar Road, 4th M Block, 4th Block,vadodara.', '16 M long x 8 M wide', '4.7', '4 AM - 10 PM', 'volley1.jpg', 'volley4.jpg', 1000),
(18, 2, 6, 'Cloud9 Box', 'Cloud9 Box Cricket, Upparpally Rd, near KAYNS Badminton, Sri Sai Janachithanya Colony, Golden Height', '91 feet L X 48 feet W', '4.0', '24 Hour', 'badbasket2.jpg', 'badbasket1.jpg', 900),
(19, 4, 4, 'RKO3 Ground', 'Brindavan Extension, South City Main Road, Bangalore, Karnataka- 560076', '18 x 9 meter', '3.9', '24 Hour', 'volley7.jpg', 'volley7.jpg', 1500),
(20, 3, 2, 'Cowell 77E', 'Amrita International Vidalayam, Huskur P.O, Choodasandra, Bengaluru, Karnataka - 560035\r\n', '13.4 m long, 6.1 m wide', '4.6', '24 Hour', 'hock2.jpg', 'hock2.jpg', 1200),
(21, 4, 4, 'SPT Sports Ground', 'WP39+H65, Mullur', '21 x 11 meter', '4.3', '6 AM - 9 PM', 'volley6.jpg', 'volley6.jpg', 800),
(22, 5, 1, 'Golden cricket ground', 'Brindavan Extension, South City Main Road, Bangalore, Karnataka- 560076', '91 meter X 55 meter', '3.0', '24 Hour', 'cri4.jpg', 'cri4.jpg', 1250),
(23, 1, 6, 'amaze basket court', 'No 183, Hombegowda Nagara, Siddapura Road, Lalbagh, Ahembdabad.', '91 feet L X 48 feet W', '4.8', '6 AM - 10 PM', 'basket1.jpg', 'basket1.jpg', 1000),
(24, 5, 6, 'Big basket court', 'The Grid Turf and Cafe, near Mahakali Farm, beside Vaishno devi Under bridge, Tragad, Ahmedabad, Guj', '28 X 14 Meter', '4.6', '24 Hours', 'basket9.jpg', 'basket8.jpg', 850),
(25, 3, 6, 'Basket court', 'Apcha Nagar, Althan, Surat, Gujarat 395007', '26 M long X 12 M wide', '4.0', '24 Hours', 'basket4.jpg', 'basket4.jpg', 800),
(26, 4, 6, 'Big  court', '', '', '3.7', '24 Hours', 'basket7.jpg', 'basket6.jpg', 750);

-- --------------------------------------------------------

--
-- Table structure for table `provider`
--

CREATE TABLE `provider` (
  `pid` int(10) NOT NULL,
  `pname` varchar(50) NOT NULL,
  `img` varchar(50) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `about` mediumtext NOT NULL,
  `location` varchar(50) NOT NULL,
  `amenities` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `provider`
--

INSERT INTO `provider` (`pid`, `pname`, `img`, `contact`, `about`, `location`, `amenities`, `email`, `password`) VALUES
(1, 'Dilip Singh', 'prov1.jpg', '7208603472', 'has multiple grounds at \r\nrural area with greenery at one side and \r\ncourts at other side. ', 'surat', 'coach, canteen, changing room', 'dilip@123.com', '12345'),
(2, 'Rohit Shahu', 'prov2.jpg', '7208603472', 'wertyu,cvb\r\ndtyui\r\nedrtfgyuhi,yuiop', 'rajkot', 'Parking, restroom, canteen ', 'rohit@123.com', '12345'),
(3, 'Chirag Mittal', 'prov3.jpg', '9876543210', 'qwertyuiop\r\nsdfghjk', 'Ahmedabad', 'Restroom, Parking, Cafe', 'ronak@123.com', '12345'),
(4, 'Kirti Malhotra', 'prov4.jpg', '1234567890', 'asdfghjk\r\nxcvbnm', 'rajkot', 'Washroom, Drinking Water, Equipment On Rent', 'kirti@123.com', '12345'),
(5, 'Meera Choudhry', 'prov5.jpg', '9876543210', 'dghyuk grthfygh ,re5yr6t7\r\ntytuyi\r\ntytuyiuio', 'Ahmedabad', 'Parking, Restroom, Cafe, Refreshments', 'meera@123.com', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `revid` int(10) NOT NULL,
  `usid` int(10) NOT NULL,
  `cid` int(10) NOT NULL,
  `revdate` date NOT NULL,
  `message` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`revid`, `usid`, `cid`, `revdate`, `message`) VALUES
(1, 2, 1, '2024-08-01', 'the ground was awesome plus the whether, just wow'),
(2, 4, 2, '2025-01-15', 'greate place to prectice');

-- --------------------------------------------------------

--
-- Table structure for table `sports`
--

CREATE TABLE `sports` (
  `spid` int(10) NOT NULL,
  `spname` varchar(50) NOT NULL,
  `icon` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sports`
--

INSERT INTO `sports` (`spid`, `spname`, `icon`) VALUES
(1, 'Cricket', 'cricket.png'),
(2, 'Hockey', 'hockey.png'),
(3, 'Football', 'football.png'),
(4, 'Volleyball', 'volleyball.png'),
(5, 'Badminton', 'badminton.png'),
(6, 'Basketball', 'basketball.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `usid` int(10) NOT NULL,
  `usname` varchar(50) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `city` varchar(20) NOT NULL,
  `address` mediumtext NOT NULL,
  `contact` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`usid`, `usname`, `gender`, `city`, `address`, `contact`, `email`, `password`) VALUES
(1, 'user', 'male', 'limbdi', 'chanunda park society', '9865326573', 'user@demo.com', '12345'),
(2, 'shivam', 'male', 'bhavnagar', 'Pramukh nagar society', '9865326573', 'shivam@gmail.com', '12345'),
(3, 'janvi', 'female', 'surendranagar', 'chabutara chowk ', '9867546645', 'janavi@gmail.com', '12345');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`adid`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`bid`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`coid`);

--
-- Indexes for table `courts`
--
ALTER TABLE `courts`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `provider`
--
ALTER TABLE `provider`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`revid`);

--
-- Indexes for table `sports`
--
ALTER TABLE `sports`
  ADD PRIMARY KEY (`spid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`usid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `adid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `bid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `coid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `courts`
--
ALTER TABLE `courts`
  MODIFY `cid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `provider`
--
ALTER TABLE `provider`
  MODIFY `pid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `revid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sports`
--
ALTER TABLE `sports`
  MODIFY `spid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `usid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
