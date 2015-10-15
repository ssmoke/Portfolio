-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 24, 2014 at 05:46 AM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `mathdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `divisions`
--

CREATE TABLE IF NOT EXISTS `divisions` (
  `division` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `divisions`
--

INSERT INTO `divisions` (`division`) VALUES
(1),
(2),
(3);

-- --------------------------------------------------------

--
-- Table structure for table `schools`
--

CREATE TABLE IF NOT EXISTS `schools` (
`schoolid` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `address` varchar(64) NOT NULL,
  `city` varchar(64) NOT NULL,
  `state` char(2) NOT NULL,
  `zip` varchar(10) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=507 ;

--
-- Dumping data for table `schools`
--

INSERT INTO `schools` (`schoolid`, `name`, `address`, `city`, `state`, `zip`) VALUES
(1, 'Autauga County Alternative School', '153 W 4th St', 'Prattville', 'AL', '36067-3011'),
(2, 'Autaugaville School', 'PO Box 99', 'Autaugaville', 'AL', '36003-0099'),
(3, 'Billingsley High School', 'PO Box 118', 'Billingsley', 'AL', '36006-0118'),
(4, 'Louise M Smith Development Center', 'PO Box 681952', 'Prattville', 'AL', '36068-1952'),
(5, 'Marbury High School', '2360 US Highway 31 N', 'Deatsville', 'AL', '36022-2831'),
(6, 'Prattville High School', '1315 Upper Kingston Rd', 'Prattville', 'AL', '36067-6835'),
(7, 'Autauga County Technology Center', '1301 Upper Kingston Rd', 'Prattville', 'AL', '36067-6850'),
(8, 'Baldwin County High School', '1 Tiger Dr', 'Bay Minette', 'AL', '36507-3300'),
(9, 'Daphne High School', '9300 Champions Way', 'Daphne', 'AL', '36526-8090'),
(10, 'Fairhope High School', '1 Pirate Dr', 'Fairhope', 'AL', '36532-7085'),
(11, 'Foley High School', '1 Pride Pl', 'Foley', 'AL', '36535-1199'),
(12, 'Gulf Shores High School', 'PO Box 3729', 'Gulf Shores', 'AL', '36547-3729'),
(13, 'Robertsdale High School', 'PO Box 69', 'Robertsdale', 'AL', '36567-0069'),
(14, 'Spanish Fort High School', '1 Plaza De Toros', 'Spanish Fort', 'AL', '36527-8679'),
(15, 'North Baldwin Center For Technology', '505 Dr Martin Luther King Blvd', 'Bay Minette', 'AL', '36507-2822'),
(16, 'South Baldwin Center For Technology', '19200 Carolina St', 'Robertsdale', 'AL', '36567-6812'),
(17, 'Barbour County High School', 'PO Box 339', 'Clayton', 'AL', '36016-0339'),
(18, 'Bibb County High School', '220 Birmingham Rd', 'Centreville', 'AL', '35042-2911'),
(19, 'West Blocton High School', '4734 Truman Aldrich Pkwy', 'West Blocton', 'AL', '35184-3900'),
(20, 'Bibb County Career Academy', '17191 Highway 5', 'West Blocton', 'AL', '35184-3638'),
(21, 'Allgood Alternative School', '45 Community Rd', 'Oneonta', 'AL', '35121-3308'),
(22, 'Appalachian  School', '350 County Highway 12', 'Oneonta', 'AL', '35121-7112'),
(23, 'Blount County Learning Center', '189 Horton Ln', 'Cleveland', 'AL', '35049-3341'),
(24, 'Cleveland High School', '71 High School St', 'Cleveland', 'AL', '35049-3691'),
(25, 'Hayden High School', '125 Atwood Rd', 'Hayden', 'AL', '35079-6502'),
(26, 'JB Pennington High School', '81 College St', 'Blountsville', 'AL', '35031-6820'),
(27, 'Locust Fork High School', '77 School Rd', 'Locust Fork', 'AL', '35097-5811'),
(28, 'Southeastern School', '18770 State Highway 75', 'Remlap', 'AL', '35133-3208'),
(29, 'Susan Moore High School', '4040 Susan Moore Rd', 'Blountsville', 'AL', '35031-7039'),
(30, 'Blount County Career Technical Center', 'PO Box 125', 'Cleveland', 'AL', '35049-0125'),
(31, 'Bullock County High School', 'PO Box 5108', 'Union Springs', 'AL', '36089-5108'),
(32, 'Bullock County Career Technical Center', '304 Blackmon Ave E', 'Union Springs', 'AL', '36089-1625'),
(33, 'Greenville High School', '100 Tiger Dr', 'Greenville', 'AL', '36037-3819'),
(34, 'McKenzie High School', 'PO Box 158', 'McKenzie', 'AL', '36456-0158'),
(35, 'Georgiana School', '866 Highway 31 South', 'Georgiana', 'AL', '36033-0000'),
(36, 'Butler County Area Vocational School', '211 School Highlands Rd', 'Greenville', 'AL', '36037-3213'),
(37, 'Alexandria High School', 'PO Box 180', 'Alexandria', 'AL', '36250-0180'),
(38, 'Calhoun County Alternative School', '1200 Church Ave SE', 'Jacksonville', 'AL', '36265-2914'),
(39, 'Ohatchee High School', '100 Cherokee Trl', 'Ohatchee', 'AL', '36271-5085'),
(40, 'Pleasant Valley High School', '4141 Pleasant Valley Rd', 'Jacksonville', 'AL', '36265-7828'),
(41, 'Saks High School', '4401 Saks Rd', 'Anniston', 'AL', '36206-1998'),
(42, 'Weaver High School', '917 Clairmont Dr', 'Weaver', 'AL', '36277-3438'),
(43, 'Wellborn High School', '135 Pinson Rd', 'Anniston', 'AL', '36201-5855'),
(44, 'White Plains High School', '250 White Plains Rd', 'Anniston', 'AL', '36207-0405'),
(45, 'Calhoun County Career Technical Center', '1200 Church Ave SE', 'Jacksonville', 'AL', '36265-2914'),
(46, 'Lafayette High School', '214 1st Ave SE', 'Lafayette', 'AL', '36862-2199'),
(47, 'Valley High School', '501 Highway 29', 'Valley', 'AL', '36854-4499'),
(48, 'Chambers County Career Technology Center', 'PO Box 318', 'Lafayette', 'AL', '36862-0318'),
(49, 'Cedar Bluff High School', '3655 Old Highway 9', 'Cedar Bluff', 'AL', '35959-5215'),
(50, 'Cherokee County High School', '910 Warrior Dr', 'Centre', 'AL', '35960-1099'),
(51, 'Gaylesville High School', '760 Trojan Way', 'Gaylesville', 'AL', '35973-4423'),
(52, 'Sand Rock High School', '1950 Sand Rock Ave', 'Sand Rock', 'AL', '35983-4336'),
(53, 'Spring Garden High School', 'PO Box 31', 'Spring Garden', 'AL', '36275-0031'),
(54, 'Cherokee County Career & Technology Center', '600 Bay Springs Rd', 'Centre', 'AL', '35960-1213'),
(55, 'Chilton County High School', '1214 7th St S', 'Clanton', 'AL', '35045-3799'),
(56, 'Isabella High School', '11338 County Road 15', 'Maplesville', 'AL', '36750-3504'),
(57, 'Jemison High School', '25195 US Highway 31', 'Jemison', 'AL', '35085-4409'),
(58, 'Maplesville High School', '1256 Al Highway 139', 'Maplesville', 'AL', '36750-3308'),
(59, 'Thorsby High School', '54 Opportunity Dr', 'Thorsby', 'AL', '35171-7646'),
(60, 'Verbena High School', '202 County Road 510', 'Verbena', 'AL', '36091-3921'),
(61, 'Chilton County Alternative School', '835 Temple Road', 'Clanton', 'AL', '35045-0000'),
(62, 'W A Lecroy Career / Technical Center', '2829 4th Ave N', 'Clanton', 'AL', '35045-8655'),
(63, 'Choctaw County High School', '277 Tom Orr Dr', 'Butler', 'AL', '36904-2409'),
(64, 'Southern Choctaw High School', '10941 Highway 17', 'Gilbertown', 'AL', '36908-2237'),
(65, 'Clarke County High School', 'PO Box 937', 'Grove Hill', 'AL', '36451-0937'),
(66, 'Jackson High School', '321 Stanley Dr', 'Jackson', 'AL', '36545-2267'),
(67, 'Central High School of Clay County', '1 Bob Riley Drive', 'Lineville', 'AL', '36266-0000'),
(68, 'Cleburne County High School', '520 Evans Bridge Rd', 'Heflin', 'AL', '36264-2235'),
(69, 'Ranburne High School', '21045 Main St', 'Ranburne', 'AL', '36273-4216'),
(70, 'Cleburne County Alternative School', '11200 Highway 46', 'Heflin', 'AL', '36264-5414'),
(71, 'Cleburne County Career Technical School', '11200 Highway 46', 'Heflin', 'AL', '36264-5414'),
(72, 'Kinston School', '201 College St', 'Kinston', 'AL', '36453-3499'),
(73, 'New Brockton High School', 'PO Box 399', 'New Brockton', 'AL', '36351-0399'),
(74, 'Zion Chapel High School', '29256 Highway 87', 'Jack', 'AL', '36346-5060'),
(75, 'Cherokee High School', '850 High School Dr', 'Cherokee', 'AL', '35616-7010'),
(76, 'Colbert County High School', '2200 High School St', 'Leighton', 'AL', '35646-4013'),
(77, 'Colbert Heights High School', '6825 Woodmont Dr', 'Tuscumbia', 'AL', '35674-4612'),
(78, 'Genesis School', '101 Perryman Street', 'Evergreen', 'AL', '36401-0000'),
(79, 'Hillcrest High School', '1989 Jaguar Dr', 'Evergreen', 'AL', '36401-2789'),
(80, 'Central High School', '243 Coosa County Road 75', 'Rockford', 'AL', '35136-3710'),
(81, 'Coosa County Science & Technology School', '17768 US Highway 231', 'Rockford', 'AL', '35136-5091'),
(82, 'Florala High School', '22114 Begonia St', 'Florala', 'AL', '36442-3427'),
(83, 'Pleasant Home School', '12548 Falco Rd', 'Andalusia', 'AL', '36420-7199'),
(84, 'Red Level High School', 'PO Box D', 'Red Level', 'AL', '36474-0040'),
(85, 'Straughn High School', '29448 Straughn School Rd', 'Andalusia', 'AL', '36421-5584'),
(86, 'Brantley High School', 'PO Box 86', 'Brantley', 'AL', '36009-0086'),
(87, 'Highland Home School', '18434 Montgomery Hwy', 'Highland Home', 'AL', '36041-3308'),
(88, 'Luverne High School', '194 First Ave', 'Luverne', 'AL', '36049-1608'),
(89, 'Crenshaw County Area Vocational', '183 Votec Dr', 'Luverne', 'AL', '36049-1100'),
(90, 'Cold Springs High School', 'PO Box 130', 'Bremen', 'AL', '35033-0130'),
(91, 'Cullman Child Development Center', '17600 US Highway 31', 'Cullman', 'AL', '35058-0403'),
(92, 'Fairview High School', '841 Welcome Rd', 'Cullman', 'AL', '35058-1212'),
(93, 'Good Hope High School', '210 Good Hope School Rd', 'Cullman', 'AL', '35057-0120'),
(94, 'Hanceville High School', '801 Commercial St SE', 'Hanceville', 'AL', '35077-5523'),
(95, 'Holly Pond High School', '160 New Hope Rd', 'Holly Pond', 'AL', '35083-6440'),
(96, 'Vinemont High School', 'PO Box 189', 'Vinemont', 'AL', '35179-0189'),
(97, 'West Point High School', '4314 County Road 1141', 'Cullman', 'AL', '35057-6651'),
(98, 'Cullman Area Resource Education', '192 County Road 940', 'Cullman', 'AL', '35057-4020'),
(99, 'Cullman County Area Career Center', '17640 US Highway 31', 'Cullman', 'AL', '35058-0403'),
(100, 'Ariton School', 'PO Box 750', 'Ariton', 'AL', '36311-0750'),
(101, 'Dale County High School', 'PO Box 1140', 'Midland City', 'AL', '36350-1140'),
(102, 'George W Long High School', '2565 County Road 60', 'Skipperville', 'AL', '36374-7707'),
(103, 'Dallas County High School', 'PO Box 145', 'Plantersville', 'AL', '36758-0145'),
(104, 'Keith Middle-High School', '1166 Dallas Road 115', 'Orrville', 'AL', '36767-2634'),
(105, 'Southside High School', '7975 US Highway 80 E', 'Selma', 'AL', '36701-1003'),
(106, 'Dallas County Career Technical Center', '1306 Roosevelt St', 'Selma', 'AL', '36701-7857'),
(107, 'Alternative School', '155 20th St NE', 'Fort Payne', 'AL', '35967-3523'),
(108, 'Collinsville High School', 'PO Box 269', 'Collinsville', 'AL', '35961-0269'),
(109, 'Crossville High School', '5405 Co Road 28', 'Crossville', 'Al', '35962-0000'),
(110, 'Dekalb Annex School', 'PO Box 488', 'Rainsville', 'AL', '35986-0488'),
(111, 'Fyffe High School', 'PO Box 7', 'Fyffe', 'AL', '35971-0007'),
(112, 'Geraldine School', 'PO Box 157', 'Geraldine', 'AL', '35974-0157'),
(113, 'Ider School', '1064 Crabapple Ln', 'Ider', 'AL', '35981-4644'),
(114, 'Plainview School', 'PO Box 469', 'Rainsville', 'AL', '35986-0469'),
(115, 'Sylvania School', 'PO Box 390', 'Sylvania', 'AL', '35988-0390'),
(116, 'Valley Head High School', 'PO Box 145', 'Valley Head', 'AL', '35989-0145'),
(117, 'Dekalb Technical Center', 'PO Box 529', 'Rainsville', 'AL', '35986-0529'),
(118, 'Elmore County High School', '155 N College Ave', 'Eclectic', 'AL', '36024-6210'),
(119, 'Holtville High School', '10425 Holtville Rd', 'Deatsville', 'AL', '36022-3014'),
(120, 'Stanhope Elmore High School', '4300 Main St', 'Millbrook', 'AL', '36054-2899'),
(121, 'Wetumpka High School', '1251 Coosa River Pkwy', 'Wetumpka', 'AL', '36092-9701'),
(122, 'Elmore County Technical Center', '800 Kelly Fitzpatrick Dr', 'Wetumpka', 'AL', '36092-1105'),
(123, 'Escambia County High School', '1215 S Presley St', 'Atmore', 'AL', '36502-3221'),
(124, 'Escambia County Alternative School', '21280 Highway 31', 'Flomaton', 'AL', '36441-5480'),
(125, 'Flomaton High School', '21200 Highway 31', 'Flomaton', 'AL', '36441-5492'),
(126, 'W S Neal High School', '801 Andrew Jackson St', 'East Brewton', 'AL', '36426-2591'),
(127, 'Escambia-Brewton Career Technical Center', '2824 Pea Ridge Rd', 'Brewton', 'AL', '36426-6550'),
(128, 'Etowah County Special Education Learning Center', '209A W Grand Ave', 'Rainbow City', 'AL', '35906-3240'),
(129, 'Etowah County Alternative School', '106 Burke Ave SE', 'Attalla', 'AL', '35954-3460'),
(130, 'PASE High School', '106 Burke Avenue', 'Gadsden', 'AL', '35954-1732'),
(131, 'Gaston High School', '4550 US Highway 411', 'Gadsden', 'AL', '35901-9516'),
(132, 'Glencoe High School', '803 Lonesome Bend Rd', 'Glencoe', 'AL', '35905-1098'),
(133, 'Hokes Bluff High School', '1865 Appalachia Rd', 'Hokes Bluff', 'AL', '35903-0000'),
(134, 'Sardis High School', '1420 Church St', 'Sardis City', 'AL', '35956-2201'),
(135, 'Southside High School', '2361 School Dr', 'Southside', 'AL', '35907-7809'),
(136, 'West End High School', '4515 Elm St', 'Walnut Grove', 'AL', '35990-0000'),
(137, 'Career Technical Center', '105 Burke Ave SE', 'Attalla', 'AL', '35954-3459'),
(138, 'Berry High School', '18242 Highway 18 E', 'Berry', 'AL', '35546-2208'),
(139, 'Fayette County High School', '202 14th Ct NE', 'Fayette', 'AL', '35555-1720'),
(140, 'Hubbertville School', '7360 County Road 49', 'Fayette', 'AL', '35555-6339'),
(141, 'Belgreen High School', '14220 Highway 187', 'Russellville', 'AL', '35653-7039'),
(142, 'Phil Campbell High School', 'PO Box 849', 'Phil Campbell', 'AL', '35581-0849'),
(143, 'Red Bay High School', 'PO Box 1518', 'Red Bay', 'AL', '35582-1518'),
(144, 'Tharptown High School', '255 Highway 80', 'Russellville', 'AL', '35654-9136'),
(145, 'Vina High School', '8250 County Road 23', 'Vina', 'AL', '35593-4602'),
(146, 'Franklin County Career Technical Center', '85 Jail Springs Rd', 'Russellville', 'AL', '35653-6663'),
(147, 'Geneva County High School', '301 Lily St', 'Hartford', 'AL', '36344-0000'),
(148, 'Samson High School', '209 N Broad St', 'Samson', 'AL', '36477-1199'),
(149, 'Slocomb High School', '591 S County Road 9', 'Slocomb', 'AL', '36375-4199'),
(150, 'Greene County High School', 'PO Box 658', 'Eutaw', 'AL', '35462-0658'),
(151, 'Peter J Kirksey Career Center', '836 County Road 131', 'Eutaw', 'AL', '35462-0000'),
(152, 'Greene County Career Center', 'PO Box 711', 'Eutaw', 'AL', '35462-0711'),
(153, 'Akron Community School', 'PO Box 38141 College St', 'Akron', 'AL', '35441-0038'),
(154, 'Greensboro High School', '620 Carver St', 'Greensboro', 'AL', '36744-1302'),
(155, 'Hale County High School', 'PO Box 188', 'Moundville', 'AL', '35474-0188'),
(156, 'Sunshine High School', '3125 County Road 10', 'Newbern', 'AL', '36765-3324'),
(157, 'Hale County Technology Center', 'PO Box 517', 'Greensboro', 'AL', '36744-0517'),
(158, 'Abbeville High School', '411 Graball Cutoff', 'Abbeville', 'AL', '36310-2073'),
(159, 'Henry County Virtual Campus', '300a North Trawick Street', 'Abbeville', 'AL', '36310-0000'),
(160, 'Headland High School', '8 Sporman St', 'Headland', 'AL', '36345-2199'),
(161, 'Ashford High School', '607 Church St', 'Ashford', 'AL', '36312-4552'),
(162, 'Cottonwood High School', '663 Houston St', 'Cottonwood', 'AL', '36320-4299'),
(163, 'Houston County Alternative School', '315 N Foster St', 'Dothan', 'AL', '36303-4543'),
(164, 'Houston County High School', '200 W Church St', 'Columbia', 'AL', '36319-3522'),
(165, 'Rehobeth High School', '373 Malvern Rd', 'Dothan', 'AL', '36301-7262'),
(166, 'Wicksburg High School', '1172 S State Highway 123', 'Newton', 'AL', '36352-8411'),
(167, 'Hope High School', '404 West Washington', 'Dothan', 'AL', '36302-0000'),
(168, 'Houston County Area Vocational Center', 'PO Box 3005', 'Ashford', 'AL', '36312-3005'),
(169, 'Jackson County Alternative School', 'PO Box 490', 'Scottsboro', 'AL', '35768-0490'),
(170, 'North Jackson High School', '45549 Al Highway 277', 'Stevenson', 'AL', '35772-6732'),
(171, 'North Sand Mountain School', 'PO Box 129', 'Higdon', 'AL', '35979-0129'),
(172, 'Paint Rock Valley High School', 'PO Box 150', 'Princeton', 'AL', '35766-0150'),
(173, 'Pisgah High School', '60 Metcalf St', 'Pisgah', 'AL', '35765-8050'),
(174, 'Section High School', 'PO Box 10', 'Section', 'AL', '35771-0010'),
(175, 'Skyline High School', '897 County Road 25', 'Scottsboro', 'AL', '35768-5668'),
(176, 'Woodville High School', '290 County Road 63', 'Woodville', 'AL', '35776-6074'),
(177, 'Epruett Center Of Technology', '29490 US Highway 72', 'Hollywood', 'AL', '35752-6111'),
(178, 'Jefferson County Counseling Learning Center-East', '50 Long St', 'Birmingham', 'AL', '35217-1320'),
(179, 'Jefferson County Couns And Learning Ctr-West', '131 Dabbs Ave', 'Hueytown', 'AL', '35023-2217'),
(180, 'Clay-Chalkville High School', '6623 Roe Chandler Rd', 'Pinson', 'AL', '35126-3043'),
(181, 'Corner High School', '4301 Warrior Jasper Rd', 'Dora', 'AL', '35062-2052'),
(182, 'Center Point High School', '1000 Eagle Drive', 'Center Point', 'AL', '35215-0000'),
(183, 'Fultondale High School', '1450 Carson Rd N', 'Birmingham', 'AL', '35217-1198'),
(184, 'Gardendale High School', '800 Main St', 'Gardendale', 'AL', '35071-2634'),
(185, 'Hueytown High School', '4881 15th Street Road', 'Hueytown', 'AL', '35023-0000'),
(186, 'McAdory High School', '4800 McAdory School Rd', 'Mc Calla', 'AL', '35111-3438'),
(187, 'Minor High School', '2285 Minor Pkwy', 'Adamsville', 'AL', '35005-2531'),
(188, 'Mortimer Jordan High School', '1920 Blue Devil Dr', 'Kimberly', 'AL', '35091-3174'),
(189, 'Oak Grove High School', '9494 Oak Grove Pkwy', 'Bessemer', 'AL', '35023-7190'),
(190, 'Pinson Valley High School', '6895 Highway 75', 'Pinson', 'AL', '35126-0000'),
(191, 'Pleasant Grove High School', '100 Spartan Dr', 'Pleasant Grove', 'AL', '35127-4000'),
(192, 'Shades Valley High School', '6100 Old Leeds Rd', 'Irondale', 'AL', '35210-4278'),
(193, 'William E Burkett Multi-Handicapped Center', '8601 Old Highway 31', 'Morris', 'AL', '35116-0000'),
(194, 'Spain Rehab', '1717 6th Ave S', 'Birmingham', 'AL', '35233-1801'),
(195, 'South Lamar School', '300 Sls Rd', 'Millport', 'AL', '35576-2533'),
(196, 'Sulligent School', 'PO Box 367', 'Sulligent', 'AL', '35586-0367'),
(197, 'Lamar County High-Intermediate', '8990 Highway 18', 'Vernon', 'AL', '35592-5817'),
(198, 'Lamar County School Of Technology', '43880 Highway 17', 'Vernon', 'AL', '35592-5000'),
(199, 'Brooks High School', '4300 Highway 72', 'Killen', 'AL', '35645-8348'),
(200, 'Central High School', '3000 County Road 200', 'Florence', 'AL', '35633-3930'),
(201, 'Lauderdale County High School', 'PO Box 220', 'Rogersville', 'AL', '35652-0220'),
(202, 'Lexington School', '101 School St', 'Lexington', 'AL', '35648-3644'),
(203, 'Rogers High School', '300 Rogers Ln', 'Florence', 'AL', '35634-4324'),
(204, 'Waterloo High School', '311 Schoolhouse Ln', 'Waterloo', 'AL', '35677-0068'),
(205, 'Wilson High School', '7601 Highway 17', 'Florence', 'AL', '35634-5709'),
(206, 'Allen Thornton Career Technical Center', '7275 Highway 72', 'Killen', 'AL', '35645-7916'),
(207, 'The Judy Jester Learning Center', '371 School St', 'Moulton', 'AL', '35650-1406'),
(208, 'East Lawrence High School', '55 County Road 370', 'Trinity', 'AL', '35673-3314'),
(209, 'R A Hubbard High School', '12905 Jessie Jackson Pkwy', 'Courtland', 'AL', '35618-3147'),
(210, 'Hatton High School', '6909 Al Highway 101', 'Town Creek', 'AL', '35672-6715'),
(211, 'Lawrence County High School', '102 College St', 'Moulton', 'AL', '35650-1499'),
(212, 'Lawrence County Developmental', '55 County Road 370', 'Trinity', 'AL', '35673-0000'),
(213, 'Lawrence County Center Technology', '179 College St', 'Moulton', 'AL', '35650-1425'),
(214, 'Beauregard High School', '7343 Al Highway 51', 'Opelika', 'AL', '36804-2064'),
(215, 'Beulah High School', '4848 Lee Road 270', 'Valley', 'AL', '36854-8806'),
(216, 'Loachapoka High School', 'PO Box 187', 'Loachapoka', 'AL', '36865-0187'),
(217, 'Smiths Station High School', '4228 Lee Road 430', 'Smiths Station', 'AL', '36877-3744'),
(218, 'Smith Station Freshman Center', '1150 Lee Road 298', 'Smiths Station', 'AL', '36877-0000'),
(219, 'Ardmore High School', '30285 Ardmore Ave', 'Ardmore', 'AL', '35739-7468'),
(220, 'Clements High School', '7730 Highway 72 W', 'Athens', 'AL', '35611-0000'),
(221, 'East Limestone High School', '15641 E Limestone Rd', 'Athens', 'AL', '35613-7518'),
(222, 'Elkmont High School', '25630 Evans Ave', 'Elkmont', 'AL', '35620-5530'),
(223, 'Tanner High School', '12060 Sommers Rd', 'Tanner', 'AL', '35671-3801'),
(224, 'West Limestone High School', '10945 W School House Rd', 'Lester', 'AL', '35647-3635'),
(225, 'Limestone County Area Vocational Technology', '505 E Sanderfer Rd', 'Athens', 'AL', '35611-4300'),
(226, 'Calhoun High School', '8213 County Road 33', 'Letohatchee', 'AL', '36047-5760'),
(227, 'Central High School', '145 Main St', 'Hayneville', 'AL', '36040-6424'),
(228, 'Project Success Learning Center', '147 Main St', 'Hayneville', 'AL', '36040-6401'),
(229, 'Booker T Washington High', '3803 W Martin Luther King Hwy', 'Tuskegee', 'AL', '36083-3093'),
(230, 'Notasulga High School', '500 E Main St', 'Notasulga', 'AL', '36866-0010'),
(231, 'Macon County Area Vocational School', '1902 Taylor St', 'Tuskegee Institute', 'AL', '36088-1810'),
(232, 'Buckhorn High School', '4123 Winchester Rd', 'New Market', 'AL', '35761-9408'),
(233, 'Madison County Alternative School', '1275 Jordan Rd', 'Huntsville', 'AL', '35811-9379'),
(234, 'Hazel Green High School', '14380 Highway 231 431 N', 'Hazel Green', 'AL', '35750-8656'),
(235, 'Madison County High School', '174 Brock Rd', 'Gurley', 'AL', '35748-5700'),
(236, 'New Hope High School', '5216 Main Dr', 'New Hope', 'AL', '35760-9056'),
(237, 'Sparkman High School', '2616 Jeff Rd', 'Harvest', 'AL', '35749-8641'),
(238, 'Sparkman Ninth Grade School', '2680 Jeff Rd', 'Harvest', 'AL', '35749-9548'),
(239, 'Madison County Career Technical Center', '1275 Jordan RdBldg 8', 'Huntsville', 'AL', '35811-9378'),
(240, 'Amelia L. Johnson High School', 'PO Box 67', 'Thomaston', 'AL', '36783-0067'),
(241, 'Marengo High School', '212 Panther Drive', 'Dixons Mills', 'AL', '36736-2566'),
(242, 'Sweet Water High School', 'PO Box 127', 'Sweet Water', 'AL', '36782-0127'),
(243, 'Brilliant High School', 'PO Box 90', 'Brilliant', 'AL', '35548-0090'),
(244, 'Hackleburg High School', 'PO Box 310', 'Hackleburg', 'AL', '35564-0310'),
(245, 'Hamilton High School', '211 Aggie Ave', 'Hamilton', 'AL', '35570-5586'),
(246, 'Marion County Alternative School', '188 Winchester Dr', 'Hamilton', 'AL', '35570-6626'),
(247, 'Marion County High School', 'PO Box 549', 'Guin', 'AL', '35563-0549'),
(248, 'Phillips High School', '142 School Ave', 'Bear Creek', 'AL', '35543-4720'),
(249, 'Asbury High School', '1990 Asbury Rd', 'Albertville', 'AL', '35951-6040'),
(250, 'Brindlee Mountain High School', '994 Scant City Rd', 'Guntersville', 'AL', '35976-6900'),
(251, 'Douglas High School', 'PO Box 300', 'Douglas', 'AL', '35964-0300'),
(252, 'Kate D Smith DAR High School', '6077 Main St', 'Grant', 'AL', '35747-8333'),
(253, 'Marshall Alternative School', '12312 US Highway 431', 'Guntersville', 'AL', '35976-9351'),
(254, 'Marshall Technical School', '12312 US Highway 431', 'Guntersville', 'AL', '35976-9351'),
(255, 'Augusta Evans School', '6301 Biloxi Ave', 'Mobile', 'AL', '36608-3090'),
(256, 'Ben C Rain High School', '3125 Dauphin Island Pkwy', 'Mobile', 'AL', '36605-3899'),
(257, 'Baker High School', '8901 Airport Blvd', 'Mobile', 'AL', '36608-9599'),
(258, 'Mattie T Blount High School', '5450 Lott Rd', 'Eight Mile', 'AL', '36613-2034'),
(259, 'Alma Bryant High School', '14001 Hurricane Blvd', 'Irvington', 'AL', '36544-3071'),
(260, 'Citronelle High School', '19325 Rowe St', 'Citronelle', 'AL', '36522-2175'),
(261, 'Continuous Learning Center', '1870 Pleasant Ave', 'Mobile', 'AL', '36617-3282'),
(262, 'WP Davidson High School', '3900 Pleasant Valley Rd', 'Mobile', 'AL', '36609-2097'),
(263, 'Evening Educational Options', '2051 Military Road', 'Mobile', 'AL', '36605-3152'),
(264, 'The Learning Tree', 'POB 780639', 'Tallassee', 'AL', '36078-1306'),
(265, 'Mary G Montgomery High School', 'PO Box 49', 'Semmes', 'AL', '36575-0049'),
(266, 'Mobile Mental Health Center', '5750A Southland Dr', 'Mobile', 'AL', '36693-3316'),
(267, 'Murphy High School', '100 S Carlen St', 'Mobile', 'AL', '36606-1499'),
(268, 'Theodore High School', '6201 Swedetown Rd N', 'Theodore', 'AL', '36582-6291'),
(269, 'John L Leflore Magnet School', '700 Donald St', 'Mobile', 'AL', '36617-3798'),
(270, 'CF Vigor High School', '913 N Wilson Ave', 'Prichard', 'AL', '36610-2398'),
(271, 'Lillie B Williamson High School', '1567 E Dublin St', 'Mobile', 'AL', '36605-1796'),
(272, 'TL Faulkner  School', '33 W Elm St', 'Prichard', 'AL', '36610-2397'),
(273, 'George H Bryant Vocational-Agricultural Center', '8950 Padgett Switch Rd', 'Irvington', 'AL', '36544-3644'),
(274, 'Excel High School', 'PO Box 429', 'Excel', 'AL', '36439-0429'),
(275, 'J F Shields High School', '17688 Highway 21 N', 'Beatrice', 'AL', '36425-4488'),
(276, 'J U Blacksher School', 'PO Box 430', 'Uriah', 'AL', '36480-0430'),
(277, 'Monroe County High School', '212 Tiger Dr', 'Monroeville', 'AL', '36460-5692'),
(278, 'C P Carmichael Alternative School', '1323 Veterans Dr', 'Monroeville', 'AL', '36460-5623'),
(279, 'Monroe County Career/technical Center', '230 Tiger Dr', 'Monroeville', 'AL', '36460-5602'),
(280, 'Booker T Washington Magnet High School', '632 S Union St', 'Montgomery', 'AL', '36104-5887'),
(281, 'Brewbaker Technology Magnet High School', '4405 Brewbaker Dr', 'Montgomery', 'AL', '36116-4234'),
(282, 'Carver Senior High School', '2001 W Fairview Ave', 'Montgomery', 'AL', '36108-4160'),
(283, 'Childrens Center', '310 N Madison Terrace', 'Montgomery', 'AL', '36107-1599'),
(284, 'Jefferson Davis High School', '3420 Carter Hill Rd', 'Montgomery', 'AL', '36111-1896'),
(285, 'Loveless Academic Magnet Program High School', '921 W Jeff Davis Ave', 'Montgomery', 'AL', '36108-2896'),
(286, 'Lanier Senior High School', '1756 S Court St', 'Montgomery', 'AL', '36104-5498'),
(287, 'Lee High School', '225 Ann St', 'Montgomery', 'AL', '36107-2599'),
(288, 'Montgomery Technical Education Center', '1200 Hugh Street', 'Montgomery', 'AL', '36108-0000'),
(289, 'Park Crossing High School', '8000 Park Crossing', 'Montgomery', 'AL', '36117-0000'),
(290, 'Progressive Academy of Creative Education', '3315 Hayneville Rd', 'Montgomery', 'AL', '36108-3902'),
(291, 'Second Chance', '810 Cedar St', 'Montgomery', 'AL', '36106-0000'),
(292, 'Montgomery Youth Facility', '1111 Air Base Blvd', 'Montgomery', 'AL', '36108-3174'),
(293, 'Albert P Brewer High School', '59 Eva Rd', 'Somerville', 'AL', '35670-6423'),
(294, 'Danville High School', '9235 Danville Rd', 'Danville', 'AL', '35619-6432'),
(295, 'Falkville High School', '43 Clark Dr.', 'Falkville', 'AL', '35622-0388'),
(296, 'Morgan County Learning Center', '1325 Point Mallard Pkwy SE', 'Decatur', 'AL', '35601-6542'),
(297, 'Priceville High School', '317 Highway 67 S', 'Decatur', 'AL', '35603-5403'),
(298, 'West Morgan High School', '261 S Greenway Dr', 'Trinity', 'AL', '35673-6002'),
(299, 'Albert P Brewer Vocational School', '59 Eva Rd', 'Somerville', 'AL', '35670-6423'),
(300, 'Francis Marion High School', 'PO Box 150', 'Marion', 'AL', '36756-0150'),
(301, 'Robert C Hatch High School', 'P O Box 709', 'Uniontown', 'AL', '36786-0709'),
(302, 'Aliceville High School', '417 3rd St SE', 'Aliceville', 'AL', '35442-2799'),
(303, 'Gordo High School', '630 4th St NW', 'Gordo', 'AL', '35466-2587'),
(304, 'Pickens County High School', 'PO Box 1239', 'Reform', 'AL', '35481-1239'),
(305, 'Ladow Technology Center', 'PO Box 32', 'Carrollton', 'AL', '35447-0032'),
(306, 'Goshen High School', 'PO Box 7', 'Goshen', 'AL', '36035-0007'),
(307, 'Pike County High School', '552 S Main St', 'Brundidge', 'AL', '36010-2214'),
(308, 'Pike County Alternative Learning Center', '101 W Love St', 'Troy', 'AL', '36081-1906'),
(309, 'Troy-Pike Center For Technology', '285 Gibbs St', 'Troy', 'AL', '36081-4704'),
(310, 'Randolph County High School', '465 Woodland Ave E', 'Wedowee', 'AL', '36278-5190'),
(311, 'Wadley High School', 'PO Box 49', 'Wadley', 'AL', '36276-0049'),
(312, 'Woodland High School', '24574 Highway 48', 'Woodland', 'AL', '36280-0157'),
(313, 'Randolph-Roanoke Career Technology Center', '960 Main St S', 'Wedowee', 'AL', '36278-7179'),
(314, 'Alternative Learning Center', 'PO Box 400', 'Phenix City', 'AL', '36868-0400'),
(315, 'Russell County High School', 'PO Box 400', 'Phenix City', 'AL', '36868-0400'),
(316, 'Ashville High School', '33215 US Highway 231', 'Ashville', 'AL', '35953-6254'),
(317, 'Ruben Yancy Alternative School', '466 10th St', 'Ashville', 'AL', '35953-3504'),
(318, 'Moody High School', '714 High School Dr', 'Moody', 'AL', '35004-2308'),
(319, 'Ragland High School', '1060 Main St', 'Ragland', 'AL', '35131-3300'),
(320, 'Springville High School', '8295 US Highway 11', 'Springville', 'AL', '35146-6115'),
(321, 'Saint Clair County High School', '16700 Us Highway 411', 'Odenville', 'AL', '35120-7928'),
(322, 'Eden Area Technical Center', '45 County Road 33', 'Ashville', 'AL', '35953-5700'),
(323, 'Calera High', '100 Calera Eagle Dr', 'Calera', 'AL', '35040-6702'),
(324, 'Chelsea High School', 'PO Box 639', 'Chelsea', 'AL', '35043-0639'),
(325, 'Linda Nolen Learning Center', '2280 Highway 35', 'Pelham', 'AL', '35124-2189'),
(326, 'Helena High School', '1310 Hillsboro Parkway', 'Helena', 'AL', '35080-0000'),
(327, 'Montevallo High School', '980 Oak St', 'Montevallo', 'AL', '35115-3718'),
(328, 'Oak Mountain High School', '5476 Caldwell Mill Rd', 'Birmingham', 'AL', '35242-4520'),
(329, 'Shelby County High School', '101 Washington St', 'Columbiana', 'AL', '35051-9396'),
(330, 'New Direction', '601 1st St S', 'Alabaster', 'AL', '35007-9175'),
(331, 'Vincent Middle High School', '42505 Highway 25', 'Vincent', 'AL', '35178-6159'),
(332, 'Shelby County College and Career Center', '701 Highway 70', 'Columbiana', 'AL', '35051-9505'),
(333, 'Sumter Central High School', '13878 U S Highway 11', 'York', 'AL', '36925-0000'),
(334, 'Bell-Brown Career Technical Center', 'PO Box 1380', 'Livingston', 'AL', '35470-1380'),
(335, 'BB Comer Memorial High School', '801 Seminole Ave', 'Sylacauga', 'AL', '35150-1569'),
(336, 'Childersburg High School', '122 Faye S Perry Dr', 'Childersburg', 'AL', '35044-1703'),
(337, 'Talladega County Central High', '5104 Howell Cove Rd', 'Talladega', 'AL', '35160-5342'),
(338, 'Fayetteville High School', '170 W W Averitte Dr', 'Sylacauga', 'AL', '35151-5441'),
(339, 'Munford High School', '300 Cedars Rd', 'Munford', 'AL', '36268-7105'),
(340, 'Lincoln High School', '78989 AL Hwy 77', 'Lincoln', 'AL', '35096-7194'),
(341, 'Talladega County Genesis School', '22445 Al Highway 21', 'Alpine', 'AL', '35014-0000'),
(342, 'Winterboro High School', '22601 Al Highway 21', 'Alpine', 'AL', '35014-5049'),
(343, 'Dadeville High School', '227 Weldon St', 'Dadeville', 'AL', '36853-1534'),
(344, 'Edward Bell Career Technical Center', '251 MLK Street  P.O. Box 490', 'Camp Hill', 'AL', '36850-0000'),
(345, 'Horseshoe Bend High School', '10684 Highway 22 E', 'New Site', 'AL', '36256-3216'),
(346, 'Reeltown High School', '4085 Al Highway 120', 'Notasulga', 'AL', '36866-3956'),
(347, 'Brookwood High School', '12322 Ember Drive', 'Brookwood', 'AL', '35444-3714'),
(348, 'Hillcrest High School', '300 Patriot Pkwy', 'Tuscaloosa', 'AL', '35405-8604'),
(349, 'Holt High School', '3801 Alabama Ave NE', 'Tuscaloosa', 'AL', '35404-1498'),
(350, 'Northside High School', '19230 Northside Pkwy', 'Northport', 'AL', '35475-2132'),
(351, 'Sprayberry Education Center', '1324 Rice Mine Rd', 'Northport', 'AL', '35476-5011'),
(352, 'Sipsey Valley High School', '15815 Romulus Rd', 'Buhl', 'AL', '35446-9315'),
(353, 'Tuscaloosa County High School', '12500 Wildcat Dr', 'Northport', 'AL', '35475-4461'),
(354, 'Tusc Regional Detention Ctr', '6001 12th Ave E', 'Tuscaloosa', 'AL', '35405-5170'),
(355, 'Carbon Hill High School', '217 Bulldog Blvd', 'Carbon Hill', 'AL', '35549-3734'),
(356, 'Cordova High School', '183 School Rd', 'Cordova', 'AL', '35550-1116'),
(357, 'Curry High School', '155 Yellow Jacket Dr', 'Jasper', 'AL', '35503-5655'),
(358, 'Dora High School', '330 Glenn C Gant Cir', 'Dora', 'AL', '35062-4412'),
(359, 'Oakman High School', 'PO Box 286', 'Oakman', 'AL', '35579-0286'),
(360, 'Walker County Schools 180 Program', '1100 Viking Dr', 'Jasper', 'AL', '35501-4971'),
(361, 'Walker County Center Of Technology', '1100 Viking Dr', 'Jasper', 'AL', '35501-4971'),
(362, 'Fruitdale High School', 'PO Box 448', 'Fruitdale', 'AL', '36539-0448'),
(363, 'Leroy High School', 'PO Box 40', 'Leroy', 'AL', '36548-0040'),
(364, 'McIntosh High School', 'PO Box 359', 'Mc Intosh', 'AL', '36553-0359'),
(365, 'Millry High School', 'PO Box 65', 'Millry', 'AL', '36558-0065'),
(366, 'Washington County High School', 'PO Box 1329', 'Chatom', 'AL', '36518-1329'),
(367, 'Washington County Career Technical Center', 'PO Box 1298', 'Chatom', 'AL', '36518-1298'),
(368, 'Wilcox Central High School', 'PO Box 1089', 'Camden', 'AL', '36726-1089'),
(369, 'Wilcox County Alternative School', 'PO Box 160', 'Camden', 'AL', '36726-0160'),
(370, 'Addison High School', 'PO Box 240', 'Addison', 'AL', '35540-0240'),
(371, 'Lynn High School', '531 E Main St', 'Lynn', 'AL', '35575-2169'),
(372, 'Meek High School', '6615 County Road 41', 'Arley', 'AL', '35541-3360'),
(373, 'Winston County High School', 'PO Box 549', 'Double Springs', 'AL', '35553-0549'),
(374, 'Winston County Technical Center', 'PO Box 1000', 'Double Springs', 'AL', '35553-1000'),
(375, 'Albertville High School', '402 E McCord Ave', 'Albertville', 'AL', '35950-2399'),
(376, 'Benjamin Russell High School', '225 Heard Blvd', 'Alexander City', 'AL', '35010-2702'),
(377, 'Thompson High School', '100 Warrior Dr', 'Alabaster', 'AL', '35007-0000'),
(378, 'Andalusia High School', '701 3rd St', 'Andalusia', 'AL', '36420-3399'),
(379, 'Anniston High School', '1301 Woodstock Ave', 'Anniston', 'AL', '36207-4798'),
(380, 'Anniston City Boot Camp School', '4804 McClellan Blvd', 'Anniston', 'AL', '36206-1863'),
(381, 'Arab High School', '511 Arabian Dr NE', 'Arab', 'AL', '35016-1160'),
(382, 'Athens High School', 'PO Box 109', 'Athens', 'AL', '35612-0109'),
(383, 'Etowah High School', '201 Case Ave SE', 'Attalla', 'AL', '35954-3498'),
(384, 'Auburn High School', '405 S Dean Rd', 'Auburn', 'AL', '36830-6265'),
(385, 'Bessemer City High School', '4950 Premiere Pkwy', 'Bessemer', 'AL', '35022-5500'),
(386, 'New Horizon Alternative School', '1701 6th Ave N', 'Bessemer', 'AL', '35020-4850'),
(387, 'Bessemer Center For Technology', '4940 Premiere Pkwy', 'Bessemer', 'AL', '35022-5500'),
(388, 'George Washington Carver High School', '3900 24th St N', 'Birmingham', 'AL', '35207-2614'),
(389, 'Family Court High School', 'PO Box 10007', 'Birmingham', 'AL', '35202-0007'),
(390, 'Huffman High School-Magnet', '950 Springville Roadp', 'Birmingham', 'AL', '35215-7597'),
(391, 'Jackson-Olin High School', '1300 Avenue F Ensley', 'Birmingham', 'AL', '35218-0000'),
(392, 'Parker High School', '400 Abraham Woods Jr. Blvd.', 'Birmingham', 'AL', '35204-3746'),
(393, 'Ramsay High School', '1800 13th Ave S', 'Birmingham', 'AL', '35205-5574'),
(394, 'Dupuy Alternative School', '4500 14th Ave N', 'Birmingham', 'AL', '35212-0000'),
(395, 'Wenonah High School', '2800 Wilson Rd SW', 'Birmingham', 'AL', '35221-1303'),
(396, 'Woodlawn High School-Magnet', '5620 First  Ave N', 'Birmingham', 'AL', '35212-1602'),
(397, 'Adolescent Day Treatment', 'PO Box 10007', 'Birmingham', 'AL', '35202-0007'),
(398, 'Gateway School', '5201 Airport Hwy', 'Birmingham', 'AL', '35212-3099'),
(399, 'Homebound High School', 'PO Box 10007', 'Birmingham', 'AL', '35202-0007'),
(400, 'Boaz High School', '907 Brown St', 'Boaz', 'AL', '35957-1200'),
(401, 'TR Miller High School', '1835 Douglas Ave', 'Brewton', 'AL', '36426-1199'),
(402, 'Chickasaw City High School', '50 12th Ave', 'Chickasaw', 'AL', '36611-2700'),
(403, 'Cullman High School', '510 13th St NE', 'Cullman', 'AL', '35055-1899'),
(404, 'Cullman Community Comprehensive Learning Center', '301 1st St NE', 'Cullman', 'AL', '35055-3542'),
(405, 'Cullman City Career Tech', '301 First St NE', 'Cullman', 'AL', '35055-3542'),
(406, 'Daleville High School', '626 N Daleville Ave', 'Daleville', 'AL', '36322-2063'),
(407, 'Austin High School', '1625 Danville Rd SW', 'Decatur', 'AL', '35601-5498'),
(408, 'Decatur High School', '1011 Prospect Dr SE', 'Decatur', 'AL', '35601-3290'),
(409, 'Decatur High Developmental', '1011A Prospect Dr SE', 'Decatur', 'AL', '35601-3229'),
(410, 'Horizon High School', '809 Church St NE', 'Decatur', 'AL', '35601-2469'),
(411, 'Long Term Case', '910 Wilson St NE', 'Decatur', 'AL', '35601-2468'),
(412, 'Demopolis High School', '701 Highway 80 W', 'Demopolis', 'AL', '36732-0000'),
(413, 'Dothan High School', '1236 S Oates St', 'Dothan', 'AL', '36301-3598'),
(414, 'Northview High School', '3209 Reeves St', 'Dothan', 'AL', '36303-2355'),
(415, 'Dothan Technology Center', '3165 Reeves St', 'Dothan', 'AL', '36303-2351'),
(416, 'Elba High School', '371 Tiger Dr', 'Elba', 'AL', '36323-4024'),
(417, 'Elba Area Vocational School', '371 Tiger Dr', 'Elba', 'AL', '36323-4023'),
(418, 'Enterprise High School', '1801 Boll Weevil Cir', 'Enterprise', 'AL', '36330-1399'),
(419, 'Eufaula High School', '530 Lake Dr', 'Eufaula', 'AL', '36027-9501'),
(420, 'Hope Academy', '333 State Docks Rd', 'Eufaula', 'AL', '36027-3317'),
(421, 'Fairfield Alternative School', '6405 Avenue D', 'Fairfield', 'AL', '35064-1955'),
(422, 'Fairfield High Preparatory School', '610 Valley Rd', 'Fairfield', 'AL', '35064-2232'),
(423, 'Fairfield Area Vocational School', '610 Valley Rd', 'Fairfield', 'AL', '35064-2232'),
(424, 'Florence High School', '1201 Bradshaw Dr', 'Florence', 'AL', '35630-1479'),
(425, 'Florence Freshman Center', '1203 Bradshaw Drive', 'Florence', 'AL', '35630-4694'),
(426, 'Florence Learning Center', '610 W College St', 'Florence', 'AL', '35630-5360'),
(427, 'Fort Payne High School', '201 45th St NE', 'Fort Payne', 'AL', '35967-4011'),
(428, 'Gadsden City Alternative School', '607 S 12th St', 'Gadsden', 'AL', '35901-3802'),
(429, 'Gadsden City High School', '1917 Black Creek Pkwy', 'Gadsden', 'AL', '35904-4584'),
(430, 'C I T Y Program', '435 E Chestnut St', 'Gadsden', 'AL', '35903-2321'),
(431, 'Geneva High School', '505 Panther Dr', 'Geneva', 'AL', '36340-1499'),
(432, 'Guntersville High School', '14227 Highway 431 South', 'Guntersville', 'AL', '35976-2599'),
(433, 'Haleyville High School', '2001 20th St', 'Haleyville', 'AL', '35565-1959'),
(434, 'Haleyville Center Of Technology', '2007 20th St', 'Haleyville', 'AL', '35565-1959'),
(435, 'Hartselle High School', '1000 Bethel Road NE', 'Hartselle', 'AL', '35640-3198'),
(436, 'Homewood High School', '1901 Lakeshore Dr S', 'Homewood', 'AL', '35209-6799'),
(437, 'Spain Park High School', '4700 Jaguar Dr', 'Birmingham', 'AL', '35242-4678'),
(438, 'Hoover High School', '1000 Buccaneer Dr', 'Hoover', 'AL', '35244-4511'),
(439, 'Crossroads School', '2826 Columbiana Rd', 'Hoover', 'AL', '35216-2518'),
(440, 'SR Butler High School', '3401 Holmes Ave NW', 'Huntsville', 'AL', '35816-4198'),
(441, 'Columbia High School', '300 Explorer Blvd NW', 'Huntsville', 'AL', '35806-2824'),
(442, 'Huntsville High School', '2304 Billie Watkins St SW', 'Huntsville', 'AL', '35801-5299'),
(443, 'JO Johnson High School', '6201 Pueblo Dr NW', 'Huntsville', 'AL', '35810-1499'),
(444, 'Lee High School', '2500 Meridian St.', 'Huntsville', 'AL', '35811-1892'),
(445, 'Virgil Grissom High School', '7901 Bailey Cove Rd SE', 'Huntsville', 'AL', '35802-3399'),
(446, 'New Century Technology Demo High School', '2500 Meridian Street NW', 'Huntsville', 'AL', '35811-'),
(447, 'Mental Health Center', '4040 Memorial Pkwy SWSte A', 'Huntsville', 'AL', '35802-1396'),
(448, 'Robert Neaves Center', '817 Cook Ave NW', 'Huntsville', 'AL', '35801-5921'),
(449, 'Huntsville Center For Technology', '2800 Drake Ave SW', 'Huntsville', 'AL', '35805-5122'),
(450, 'Jacksonville High School', '1000 George Douthit Dr SW', 'Jacksonville', 'AL', '36265-4300'),
(451, 'North Highland School', '907 12th Ave W', 'Jasper', 'AL', '35501-4169'),
(452, 'Walker High School', '1601 Highland Ave', 'Jasper', 'AL', '35501-4999'),
(453, 'Lanett Senior High School', '1301 S 8th Ave', 'Lanett', 'AL', '36863-2809'),
(454, 'Leeds High School', '1500 Greenwave Dr', 'Leeds', 'AL', '35094-1403'),
(455, 'Linden High School', 'PO Box 480729', 'Linden', 'AL', '36748-0729'),
(456, 'Bob Jones High School', '650 Hughes Rd', 'Madison', 'AL', '35758-8737'),
(457, 'James Clemens High School', '11306 County Line Road', 'Madison', 'AL', '35758-0000'),
(458, 'Midfield High School', '1600 High School Rd', 'Midfield', 'AL', '35228-1699'),
(459, 'Midfield Area Vocational Department', '1600 High School Rd', 'Birmingham', 'AL', '35221-1602'),
(460, 'Mountain Brook High School', '3650 Bethune Dr', 'Mountain Brk', 'AL', '35223-1499'),
(461, 'Muscle Shoals High School', '1900 Avalon Ave', 'Muscle Shoals', 'AL', '35661-3120'),
(462, 'Muscle Shoals Career Academy', 'PO Box 2186', 'Muscle Shoals', 'AL', '35662-2186'),
(463, 'Pelham High School', '2500 Panther Cir', 'Pelham', 'AL', '35124-0000'),
(464, 'Oneonta High School', '27605 State Highway 75', 'Oneonta', 'AL', '35121-3228'),
(465, 'Opelika Learning Center', '214 Jeter Ave', 'Opelika', 'AL', '36801-3730'),
(466, 'Opelika High School', '1700 Lafayette Pkwy', 'Opelika', 'AL', '36801-3199'),
(467, 'Opp High School', '502 N Maloy St', 'Opp', 'AL', '36467-3438'),
(468, 'Oxford High School', '1 Yellow Jacket Dr', 'Oxford', 'AL', '36203-2182'),
(469, 'Oxford Area Vocational School', '1 Yellow Jacket Dr', 'Oxford', 'AL', '36203-2182'),
(470, 'Carroll High School', '315 Eagle Way', 'Ozark', 'AL', '36360-1593'),
(471, 'Opportunity Academy', '1044 Andrews Ave', 'Ozark', 'AL', '36360-3708'),
(472, 'Carroll High School Career Center', '227 Faust Ave', 'Ozark', 'AL', '36360-1575'),
(473, 'Pell City High School', '1300 Cogswell Ave', 'Pell City', 'AL', '35125-1299'),
(474, 'RISE Academy', '1300 Cogswell Avenue', 'Pell City', 'AL', '35125-0000'),
(475, 'Central High School', '2400 Dobbs Dr', 'Phenix City', 'AL', '36870-2314'),
(476, 'Central Freshman Academy', '2800 Dobbs Dr', 'Phenix City', 'AL', '36870-2325'),
(477, 'Piedmont High School', '750 Al Highway 200', 'Piedmont', 'AL', '36272-1579'),
(478, 'Saraland High School', '1115 Industrial Pkwy', 'Saraland', 'AL', '36571-3721'),
(479, 'Handley High School', 'PO Box 1393', 'Roanoke', 'AL', '36274-9093'),
(480, 'Randolph-Roanoke Career Technology Center', '960 Main St S', 'Wedowee', 'AL', '36278-7179'),
(481, 'Russellville High School', '1865 Waterloo Rd', 'Russellville', 'AL', '35653-5425'),
(482, 'Scottsboro High School', '25053 John T Reid Pkwy', 'Scottsboro', 'AL', '35768-2351'),
(483, 'Phoenix School', '501 Plant St', 'Selma', 'AL', '36703-2532'),
(484, 'Selma High School', '2180 Broad St', 'Selma', 'AL', '36701-4199'),
(485, 'Sheffield High School', '2800 E 19th Ave', 'Sheffield', 'AL', '35660-7499'),
(486, 'Sylacauga High School', '701 N Broadway Ave', 'Sylacauga', 'AL', '35150-2155'),
(487, 'Talladega High School', '1177 McMillan Street East', 'Talladega', 'AL', '35160-3128'),
(488, 'Talladega Career Technical Center', '110 Picadilly Dr', 'Talladega', 'AL', '35160-3164'),
(489, 'Tallassee High School', '502 Barnett Blvd', 'Tallassee', 'AL', '36078-1400'),
(490, 'Satsuma High School', '1 Gator Circle', 'Satsuma', 'AL', '36572-0000'),
(491, 'Tarrant High School', '91 Black Creek Rd', 'Tarrant', 'AL', '35217-3096'),
(492, 'Thomasville High School', '777 Gates Dr', 'Thomasville', 'AL', '36784-2609'),
(493, 'Alternative Learning Center', 'PO Box 529', 'Troy', 'AL', '36081-0529'),
(494, 'Charles Henderson High School', 'PO Box 1006', 'Troy', 'AL', '36081-1006'),
(495, 'Troy-Pike Regional Center For Technology', '285 Gibbs St', 'Troy', 'AL', '36081-4704'),
(496, 'Paul W Bryant High School', '6315 Mary Harmon Bryant Dr', 'Cottondale', 'AL', '35453-4326'),
(497, 'Northridge High School', '2901 Northridge Rd', 'Tuscaloosa', 'AL', '35406-3665'),
(498, 'Oak Hill School', '3834 21st Street', 'Tuscaloosa', 'AL', '35401-2618'),
(499, 'Central High School', '905 15th St', 'Tuscaloosa', 'AL', '35401-4099'),
(500, 'Tuscaloosa Career and Technology Academy', '2800 Martin Luther King Jr. Boulevard', 'Tuscaloosa', 'AL', '35401-2652'),
(501, 'Deshler High School', '200 N Commons St E', 'Tuscumbia', 'AL', '35674-1250'),
(502, 'Deshler Alternative School', '303 North Commons St. East', 'Tuscumbia', 'AL', '35674-1250'),
(503, 'Deshler Career Technical Center', '303 N Commons St E', 'Tuscumbia', 'AL', '35674-1250'),
(504, 'Vestavia Hills High School', '2235 Lime Rock Rd', 'Vestavia', 'AL', '35216-3399'),
(505, 'Winfield High School', '232 Pirate Cv', 'Winfield', 'AL', '35594-5560'),
(506, 'Hewitt-Trussville High School', '6450 Husky Pkwy', 'Trussville', 'AL', '35173-6400');

-- --------------------------------------------------------

--
-- Table structure for table `sponsors`
--

CREATE TABLE IF NOT EXISTS `sponsors` (
`id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `email` varchar(64) NOT NULL,
  `phone` char(12) NOT NULL,
  `teamID` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4535 ;

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE IF NOT EXISTS `teams` (
`id` int(11) NOT NULL,
  `schoolID` int(11) NOT NULL,
  `testingSiteID` int(11) NOT NULL,
  `division` int(1) NOT NULL,
  `fee` int(2) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=54 ;

-- --------------------------------------------------------

--
-- Table structure for table `testingsites`
--

CREATE TABLE IF NOT EXISTS `testingsites` (
`id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `address` varchar(64) NOT NULL,
  `city` varchar(64) NOT NULL,
  `state` char(2) NOT NULL,
  `zip` varchar(10) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `divisions`
--
ALTER TABLE `divisions`
 ADD PRIMARY KEY (`division`), ADD KEY `division` (`division`);

--
-- Indexes for table `schools`
--
ALTER TABLE `schools`
 ADD PRIMARY KEY (`schoolid`), ADD KEY `schoolid` (`schoolid`,`name`,`address`,`city`,`state`,`zip`);

--
-- Indexes for table `sponsors`
--
ALTER TABLE `sponsors`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id` (`id`), ADD KEY `id_2` (`id`,`name`,`email`,`phone`,`teamID`), ADD KEY `teamID` (`teamID`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id_3` (`id`,`schoolID`,`testingSiteID`,`division`,`fee`), ADD UNIQUE KEY `id_4` (`id`,`schoolID`,`testingSiteID`,`division`,`fee`), ADD KEY `id` (`id`,`schoolID`,`testingSiteID`,`division`), ADD KEY `id_2` (`id`,`schoolID`,`testingSiteID`,`division`), ADD KEY `testingSiteID` (`testingSiteID`), ADD KEY `schoolID` (`schoolID`), ADD KEY `division` (`division`);

--
-- Indexes for table `testingsites`
--
ALTER TABLE `testingsites`
 ADD PRIMARY KEY (`id`), ADD KEY `id` (`id`,`name`,`address`,`city`,`state`,`zip`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `schools`
--
ALTER TABLE `schools`
MODIFY `schoolid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=507;
--
-- AUTO_INCREMENT for table `sponsors`
--
ALTER TABLE `sponsors`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4535;
--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=54;
--
-- AUTO_INCREMENT for table `testingsites`
--
ALTER TABLE `testingsites`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `sponsors`
--
ALTER TABLE `sponsors`
ADD CONSTRAINT `sponsors_ibfk_1` FOREIGN KEY (`teamID`) REFERENCES `teams` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `teams`
--
ALTER TABLE `teams`
ADD CONSTRAINT `teams_ibfk_1` FOREIGN KEY (`testingSiteID`) REFERENCES `testingsites` (`id`) ON UPDATE CASCADE,
ADD CONSTRAINT `teams_ibfk_2` FOREIGN KEY (`schoolID`) REFERENCES `schools` (`schoolid`) ON UPDATE CASCADE,
ADD CONSTRAINT `teams_ibfk_3` FOREIGN KEY (`division`) REFERENCES `divisions` (`division`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
