-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 26, 2017 at 09:34 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `customermanager`
--

-- --------------------------------------------------------

--
-- Table structure for table `chatroom`
--

CREATE TABLE `chatroom` (
  `ChatID` varchar(255) NOT NULL,
  `user1` varchar(255) NOT NULL,
  `user2` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chatroom`
--

INSERT INTO `chatroom` (`ChatID`, `user1`, `user2`) VALUES
('bcyyiapy', 'vineet', 'Govind'),
('hdvlar3x', 'Govind', 'vineet'),
('jrtzj3sq', 'Ankit', 'Govind');

-- --------------------------------------------------------

--
-- Table structure for table `firstnametable`
--

CREATE TABLE `firstnametable` (
  `firstname` varchar(100) DEFAULT NULL,
  `uniqueid` int(11) NOT NULL,
  `password` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `firstnametable`
--

INSERT INTO `firstnametable` (`firstname`, `uniqueid`, `password`) VALUES
('Lucy', 6, 'dffa7411bd0fed9c327d87bf4c3ab3cddd5b80264eb2d5e61485456d163bb5fca'),
('Praviin M', 7, 'd07b9ee81f58263003d6a49c6e8036ec16e7e801374a6b0869942e62aa8408927'),
('Matt', 8, '5aa51716f04b215f3359639ff6d731a31f1a31062f578c6f11872d42a0906b145'),
('Damon', 9, '49ecc22ee12ac614193ad6f44c7106d4fed5320c21f1503c27337e8379ac0e95c'),
('Ben', 10, '9b914379b2399b249593ac324373c81622b1e1524461caff9dc298e02359852d2'),
('tim', 11, '396b450ab774a741163bd077130b65f1af5af0982ef8de9c9d7b3134695e29dbe'),
('Govind', 12, 'cd82407b1fd0f0b49ea53e1940c207da8df1f00d0712bf204d7bed8b372178cd0'),
('Neha', 13, '22f686c9874a518ab49dfd241acdb2baf9d8533db845357ca779aeaffbe240eab'),
('vineet', 14, '25f0b5fe4c09e2de9bc5fc4c6d7fae88db1acd9a7a4d5c882504e36af4c6525ff'),
('ABhi', 15, '1cd94c354a2d0a985dc86f8facdaffb76502c14aa4abc95c4769d56de795919fd');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `UserName` varchar(150) NOT NULL,
  `UserID` varchar(120) NOT NULL,
  `roles` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`UserName`, `UserID`, `roles`) VALUES
('admin', 'pzujj5', 'Admin'),
('Ajinkya2017', '93zc30', 'GeneralUser'),
('Angel2017', 'zrbqkd', 'P2'),
('Ankit2017', '3ukfj3', 'GeneralUser'),
('boby2017', '2ynd16', 'P1'),
('georgewash', '7fpr4n', 'P1'),
('govindeca', 'a5hr5k', 'P1'),
('govindeca123', 'dmrr56', 'Admin'),
('govindeca421', 'ajw6oq', 'Admin'),
('govindeca4222222', 'eod4ba', 'Admin'),
('gs93420n', 'vqk3gl', 'P1'),
('JSmith', 'e3njt7', 'P1'),
('messibar', '6w17s9', 'Admin'),
('Michel2017', 'cd6875', 'Admin'),
('NedStark', 'w05c3h', 'P2'),
('Nikhil2017', 'x4bzon', 'GeneralUser'),
('Praviin2017', '9r4yer', 'Admin'),
('PraviinM', 'nuptj3', 'P2'),
('PraviinM2', '3nv7pq', 'General User'),
('rocky2017', '7ifoym', 'Admin'),
('Rose2017', 'jtudix', 'P2'),
('Roxy2017', '5nnab9', 'P2'),
('Sachin2017', '15989h', 'Admin'),
('Tommy', 'nwkcgz', 'General User'),
('vineetbpl', 'kjlt4a', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `s_chat_messages`
--

CREATE TABLE `s_chat_messages` (
  `id` int(11) NOT NULL,
  `ChatID` varchar(255) NOT NULL,
  `user` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `Time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `s_chat_messages`
--

INSERT INTO `s_chat_messages` (`id`, `ChatID`, `user`, `message`, `Time`) VALUES
(321, '', 'vineet', 'hi\r\n', '2017-11-23 10:22:44'),
(322, '', 'Govind', 'hi\r\n', '2017-11-23 10:22:53'),
(323, '', 'vineet', 'hello\r\n', '2017-11-23 10:26:46'),
(324, '', 'Govind', 'Hello\r\n', '2017-11-23 10:26:55'),
(325, '', 'Govind', 'Hello\r\n', '2017-11-23 10:31:01'),
(326, '', 'vineet', 'hi\r\n', '2017-11-23 10:33:48'),
(327, '', 'Govind', 'hi\r\n', '2017-11-23 10:33:51'),
(328, '', 'vineet', 'hi\r\n', '2017-11-23 10:41:57'),
(329, '', '', 'hi\r\n', '2017-11-23 10:53:18'),
(330, '', '', 'hi\r\n', '2017-11-23 10:55:08'),
(331, '', '', 'hi\r\n', '2017-11-23 10:55:14'),
(332, '', '', 'hi\r\n', '2017-11-23 10:56:01'),
(333, '', '', 'hi\r\n', '2017-11-23 10:57:02'),
(334, '', '', 'hi\r\n', '2017-11-23 10:57:25'),
(335, '', 'Govind', 'hi\r\n', '2017-11-23 10:58:17'),
(336, '', 'vineet', 'hi\r\n', '2017-11-23 10:58:21'),
(337, '', 'vineet', 'hey\r\n', '2017-11-23 17:54:13'),
(338, '', 'Govind', 'hey\r\n', '2017-11-23 17:54:37'),
(339, '', 'vineet', 'hey\r\n', '2017-11-23 17:57:51'),
(340, '', 'vineet', 'hi\r\n', '2017-11-23 17:58:18'),
(341, '', 'Govind', 'hi\r\n', '2017-11-23 17:58:25'),
(342, '', 'vineet', 'hi\r\n', '2017-11-23 18:11:56'),
(343, '', 'Govind', 'hi\r\n', '2017-11-23 18:12:04'),
(344, '', 'Govind', 'jikop\r\n', '2017-11-23 18:12:13'),
(345, '', 'vineet', 'jikopl\r\n', '2017-11-23 18:12:18'),
(346, '', 'vineet', 'hi\r\n', '2017-11-24 23:40:58'),
(347, '', 'vineet', 'hey\r\n', '2017-11-24 23:41:02'),
(348, '', 'vineet', 'hello\r\n', '2017-11-24 23:43:03'),
(349, '', 'Govind', 'hi\r\n', '2017-11-25 00:21:09'),
(350, '', 'vineet', 'hey\r\n', '2017-11-25 00:21:16'),
(351, '', 'Govind', 'hi\r\n', '2017-11-25 00:24:53'),
(352, '', 'Govind', 'hi\r\n', '2017-11-25 00:25:03'),
(353, '', 'Govind', 'hmm\r\n', '2017-11-25 00:29:30'),
(354, '', 'vineet', 'hi\r\n', '2017-11-25 00:37:06'),
(355, '', 'vineet', 'Hey Govi finally \r\n', '2017-11-25 01:11:10'),
(356, '', 'Govind', 'yeaaah \r\n', '2017-11-25 01:11:20'),
(357, '', 'Ankit', 'Hi\r\n', '2017-11-25 01:13:05'),
(358, '', 'Govind', 'hey ankit\r\n', '2017-11-25 01:13:48'),
(359, '', 'Govind', 'Hello vineet\r\n', '2017-11-25 01:29:34'),
(360, '', 'Ankit', 'hi\r\n', '2017-11-25 02:37:10'),
(361, '', 'Ankit', 'hi\r\n', '2017-11-25 02:37:16'),
(362, '', 'Ankit', 'hi\r\n', '2017-11-25 02:38:04'),
(363, '', 'Ankit', 'hi\r\n', '2017-11-25 02:38:26'),
(364, '', 'Govind', 'hi\r\n', '2017-11-25 02:38:45'),
(365, '', 'Govind', 'hey\r\n', '2017-11-25 02:39:05'),
(366, '', 'Ankit', 'ok\r\n', '2017-11-25 02:39:42'),
(367, '', 'Govind', 'hi\r\n', '2017-11-25 02:55:08'),
(368, '', 'Govind', 'hi\r\n', '2017-11-25 03:40:26'),
(369, '', 'Govind', 'hey\r\n', '2017-11-25 03:41:22'),
(370, '', 'Govind', 'hey\r\n', '2017-11-25 03:43:34'),
(371, '', 'Ankit', 'hi\r\n', '2017-11-25 04:20:28'),
(372, '', 'Govind', 'hi\r\n', '2017-11-25 06:01:52'),
(373, '', 'Govind', 'hiiiiii\r\n', '2017-11-25 06:05:10'),
(401, 'kjsxfs7h', 'vineet', 'M good how are you\r\n', '2017-11-25 08:16:39'),
(392, 'arwtl5o9', 'vineet', 'Hey\r\n', '2017-11-25 07:49:02'),
(393, 'vtmku5lb', 'Govind', 'Hey\r\n', '2017-11-25 07:49:11'),
(394, 'arwtl5o9', 'vineet', 'How are you\r\n', '2017-11-25 07:49:24'),
(395, '1p5zb2jj', 'Govind', 'hi\r\n', '2017-11-25 07:50:14'),
(396, 'kjsxfs7h', 'vineet', 'hey\r\n', '2017-11-25 07:50:47'),
(397, 'kjsxfs7h', 'vineet', 'hi\r\n', '2017-11-25 07:51:46'),
(398, 'kjsxfs7h', 'vineet', 'hey\r\n', '2017-11-25 08:02:32'),
(399, '1p5zb2jj', 'Govind', 'hmm\r\n', '2017-11-25 08:02:40'),
(400, '1p5zb2jj', 'Govind', 'How are you man\r\n', '2017-11-25 08:16:32'),
(402, '7tsn37rn', 'Ankit', 'Hey\r\n', '2017-11-25 08:17:44'),
(403, 'lnbjct2o', 'Govind', 'hey Govind\r\n', '2017-11-25 08:18:20'),
(404, '7tsn37rn', 'Ankit', 'hi\r\n', '2017-11-25 09:16:55'),
(405, 'uwksl2bx', 'Govind', 'hi\r\n', '2017-11-26 02:59:47'),
(406, 'uwksl2bx', 'Govind', 'Hi\r\n', '2017-11-26 02:59:56'),
(407, 'lnbjct2o', 'Govind', 'hello\r\n', '2017-11-26 03:01:11'),
(408, '7tsn37rn', 'Ankit', 'hello\r\n', '2017-11-26 03:01:17'),
(409, 'lnbjct2o', 'Govind', 'hello\r\n', '2017-11-26 03:02:27'),
(410, '7tsn37rn', 'Ankit', 'hi\r\n', '2017-11-26 03:02:54'),
(411, '7tsn37rn', 'Ankit', 'hi\r\n', '2017-11-26 03:03:55'),
(412, '7tsn37rn', 'Ankit', 'hi\r\n', '2017-11-26 03:04:04'),
(413, 'jmdrfemj', 'Govind', 'hi\r\n', '2017-11-26 03:06:13'),
(414, '7bumn0di', 'Ankit', 'hi\r\n', '2017-11-26 03:06:24'),
(415, 'jmdrfemj', 'Govind', 'hey\r\n', '2017-11-26 03:52:35'),
(416, 'jmdrfemj', 'Govind', 'hi\r\n', '2017-11-26 03:52:52'),
(417, 'kjsxfs7h', 'vineet', 'hey\r\n', '2017-11-26 03:54:06'),
(418, '7bumn0di', 'Ankit', 'hello sir\r\n', '2017-11-26 03:56:29'),
(419, 'jmdrfemj', 'Govind', 'hey how can O help u\r\n', '2017-11-26 03:56:37'),
(420, 'kjsxfs7h', 'vineet', 'hello\r\n', '2017-11-26 03:57:32'),
(421, '1p5zb2jj', 'Govind', 'hi there\r\n', '2017-11-26 03:57:37'),
(422, 'nu6w5ggx', 'vineet', 'hey\r\n', '2017-11-26 04:07:06'),
(423, 'oo2d224f', 'Ankit', 'hi\r\n', '2017-11-26 04:07:51'),
(424, 'vl70kspb', 'vineet', 'hi\r\n', '2017-11-26 04:31:04'),
(425, 'zl14nnhw', 'vineet', 'hi\r\n', '2017-11-26 04:34:30'),
(426, 'zl14nnhw', 'vineet', 'hui\r\n', '2017-11-26 04:36:05'),
(427, 'zl14nnhw', 'vineet', 'hi\r\n', '2017-11-26 04:37:47'),
(428, 'gu88kuch', 'vineet', 'hello\r\n', '2017-11-26 05:32:34'),
(429, 'gu88kuch', 'vineet', 'hi\r\n', '2017-11-26 06:05:26'),
(430, 'gu88kuch', 'vineet', 'jijko\r\n', '2017-11-26 06:32:07'),
(431, 'gu88kuch', 'vineet', 'huk\r\n', '2017-11-26 06:36:47'),
(432, 'gu88kuch', 'vineet', 'yes\r\n', '2017-11-26 06:37:12'),
(433, 'gu88kuch', 'vineet', 'hoye\r\n', '2017-11-26 06:38:23'),
(434, 'qe4lcd9z', 'vineet', 'hi\r\n', '2017-11-26 06:39:59'),
(435, 'qa9gvqsa', 'vineet', 'hi\r\n', '2017-11-26 06:43:16'),
(436, '7t2dr4u2', 'vineet', 'hi\r\n', '2017-11-26 07:26:41'),
(437, '7t2dr4u2', 'vineet', 'hi\r\n', '2017-11-26 07:26:48'),
(438, '7t2dr4u2', 'vineet', 'hi\r\n', '2017-11-26 07:28:50'),
(439, '1eosjtr7', 'vineet', 'hello\r\n', '2017-11-26 07:29:41'),
(440, '6w8ejizu', 'vineet', 'Hey Govind\r\n', '2017-11-26 07:33:48'),
(441, 'id1afczh', 'Govind', 'hey vineet\r\n', '2017-11-26 07:34:15'),
(442, 'bcyyiapy', 'vineet', 'hey govind\r\n', '2017-11-26 07:50:35'),
(443, 'hdvlar3x', 'Govind', 'hey vineet\r\n', '2017-11-26 07:50:43');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `userid` varchar(255) DEFAULT NULL,
  `FirstName` varchar(255) DEFAULT NULL,
  `LastName` varchar(255) DEFAULT NULL,
  `City` varchar(255) DEFAULT NULL,
  `Zip` varchar(10) DEFAULT NULL,
  `DateOfBirth` varchar(255) DEFAULT NULL,
  `EmailAddress` varchar(255) DEFAULT NULL,
  `MemberSince` varchar(255) DEFAULT NULL,
  `Active` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `userid`, `FirstName`, `LastName`, `City`, `Zip`, `DateOfBirth`, `EmailAddress`, `MemberSince`, `Active`) VALUES
(9, 'XSK06EVP0OY517HNC', 'Govind', 'Soni', 'Jersey city', '07306', '462900805', 'Gs93420n@pace.edu', '1427146226', '1'),
(10, 'TOE18NBA3EY471VQB', 'Elliott', 'Fry', 'VezirK', 'J7K 4B0', '419542809', 'accumsan.sed@sed.com', '1432735353', '1'),
(11, 'MJF23OGL1TH040RKJ', 'Duncan', 'Bradshaw', 'La Roche-sur-Yon', '30-666', '585136523', 'nisl.Nulla@sitametmetus.edu', '1435146345', '1'),
(12, 'DAL12DAP8EH494YKY', 'Ulla', 'Freeman', 'Kallo', '19215', '414148540', 'enim.sit.amet@malesuadaaugueut.co.uk', '1439317018', '1'),
(13, 'AFN79LPA6HH059XAN', 'Dalton', 'Noble', 'Zwolle', '7128', '423648632', 'montes@tinciduntcongueturpis.com', '1453064045', '1'),
(14, 'HMI53RHF1RM571KJF', 'Aretha', 'Carver', 'Leugnies', '40-925', '545200706', 'cursus.in.hendrerit@musProinvel.ca', '1445119551', '1'),
(15, 'ZSC12IUF4JN402VDA', 'Kane', 'Barron', 'Priero', '9763DT', '401586905', 'et.magna.Praesent@vel.net', '1453635983', '1'),
(16, 'JYC85AVC2BN732GMT', 'Piper', 'Sanders', 'Aurora', '179438', '511651937', 'ut.nulla@varius.com', '1432780021', '1'),
(17, 'CTF03PXS0BA220VHM', 'Jermaine', 'Parker', 'San Vito al Tagliamento', '07937', '371775133', 'ullamcorper@Nullamscelerisqueneque.co.uk', '1448228148', '1'),
(18, 'RMM88VYT7DP730QAX', 'Zorita', 'Valencia', 'Garaguso', 'JK7 0TN', '626728946', 'luctus@ut.net', '1431271230', '1'),
(19, 'AMY39TIH6QG405JWW', 'Keiko', 'Hancock', 'Viggiano', '76577', '537629566', 'cubilia.Curae.Donec@eleifend.edu', '1442880764', '1'),
(20, 'INY44QFF7CU041KMN', 'Upton', 'Haney', 'Albano di Lucania', '3717', '389495639', 'ante@egestas.ca', '1424377781', '1'),
(21, 'SVF44MWP8CW393MCE', 'Sybil', 'Mcfarland', 'Bozeman', '8086', '513487767', 'vitae.posuere@necmalesuadaut.com', '1427223994', '1'),
(22, 'GNE26EXT5UL258HWK', 'Cooper', 'Knowles', 'Town of Yarmouth', '530923', '388609280', 'ut.molestie@in.co.uk', '1443736846', '1'),
(23, 'BTJ43MDE0IU664ROQ', 'Laith', 'Barron', 'Rodì Milici', '5653', '538928822', 'bibendum.Donec.felis@blandit.co.uk', '1431398296', '1'),
(24, 'SQU91SJO9BJ571XVJ', 'Omar', 'Steele', 'Huara', '88831', '537339419', 'Curabitur.ut@euismod.com', '1434913742', '1'),
(25, 'LSA99JXA1OR404XMS', 'Sybill', 'Crawford', 'Itabuna', '99509', '461141905', 'malesuada.fames@idante.com', '1431065128', '1'),
(26, 'YUU92FNU1BO854WAN', 'Kai', 'Bradford', 'Mörfelden-Walldorf', 'R2V 7P7', '380596683', 'Pellentesque.habitant.morbi@nequeMorbiquis.com', '1439830682', '1'),
(27, 'AEM93OMT3ZD291LKJ', 'Jared', 'Watts', 'Macon', '66792', '575253449', 'tellus.sem.mollis@velit.co.uk', '1439756565', '1'),
(28, 'HKN60ZML4DA650SEZ', 'Ursa', 'Potter', 'Barahanagar', '03356', '481947068', 'Cras.pellentesque.Sed@rutrumFusce.ca', '1439789738', '1'),
(29, 'IHU04HZI9ZA375QPD', 'Amethyst', 'Reynolds', 'Annapolis County', '5902FF', '451136052', 'cursus.diam.at@Pellentesqueultriciesdignissim.org', '1446607772', '1'),
(30, 'UDT39ZVJ0WJ878IQU', 'Camilla', 'Sutton', 'Amiens', '643874', '534615599', 'elit.erat@sed.net', '1446415502', '1'),
(31, 'GZX95TOU8LJ132YGA', 'Cooper', 'Hubbard', 'Sint-Kruis-Winkel', '40548', '460125080', 'vehicula.Pellentesque@Ut.org', '1435516084', '1'),
(32, 'OLI24VUL2LS376ZQG', 'Maya', 'Vance', 'Bihar Sharif', '0189QB', '360600526', 'aliquam@Duismi.edu', '1452641349', '1'),
(33, 'IJW83MJD5YC363IBZ', 'Molly', 'Howe', 'Aurangabad', '91708', '602269765', 'sapien.gravida@ornareFuscemollis.ca', '1426337114', '1'),
(34, 'MLO21JRE3KO632QAW', 'Rajah', 'Richardson', 'Montone', '7303', '332898165', 'lectus.Cum@Suspendisse.net', '1450871750', '1'),
(35, 'BSW76JCH6XE566DID', 'Kaden', 'Barber', 'Montague', '28305', '338275025', 'aliquam@velitinaliquet.org', '1445325164', '1'),
(36, 'ZTM28QST9JL491KWC', 'Cally', 'Bruce', 'Palakkad', '8784', '596753755', 'at.velit.Cras@mitempor.org', '1425556907', '1'),
(37, 'YGR08KJX9YL924TAW', 'Darrel', 'Mann', 'Anghiari', '7132', '489985509', 'Proin@quis.net', '1442153354', '1'),
(38, 'TPB16MNZ7LG619WHA', 'Macy', 'Bruce', 'Paço do Lumiar', '45764-704', '478534672', 'lacus@montes.ca', '1453401354', '1'),
(39, 'ZMD94OSF5ZH731TBW', 'Julian', 'Hardin', 'Latour', '8372', '601330416', 'at@Etiamligula.edu', '1443992701', '1'),
(40, 'BPS68IOG4JX235EUK', 'Molly', 'Neal', 'Cumnock', '1409', '389887617', 'dapibus.rutrum@dignissimMaecenas.co.uk', '1449916773', '1'),
(41, 'OXM67HSC9WB207BUZ', 'Rinah', 'Strong', 'Minervino di Lecce', 'E5W 5K0', '631119943', 'ornare.placerat@dolorNulla.edu', '1433574405', '1'),
(42, 'LHZ24UKK7FD268QVQ', 'Adria', 'Moran', 'Grobbendonk', '58713', '355357296', 'eu@egestas.com', '1427524899', '1'),
(43, 'CRG75FXM3UM300QJJ', 'Daquan', 'Thornton', 'Ramsdonk', 'XA21 4XJ', '583543114', 'enim.Curabitur.massa@dolorquam.ca', '1432233160', '1'),
(44, 'HYA97PBZ5XU734NLV', 'Dalton', 'Spears', 'Martelange', '135474', '596409776', 'nunc.interdum@PhasellusnullaInteger.co.uk', '1430851306', '1'),
(45, 'KDL82MMT9VD348YAL', 'Jeremy', 'Hensley', 'Sapele', '10818', '612220583', 'ut@Cumsociis.com', '1449340945', '1'),
(46, 'JTF48MMR9HI707HNO', 'Troy', 'Trevino', 'Haßloch', '2922', '378913371', 'cursus.Nunc@sitamet.net', '1450746847', '1'),
(47, 'FUQ48DAF4CA174FDI', 'Hyacinth', 'Norton', 'Trevignano Romano', '1727', '320329089', 'purus.in@enim.edu', '1435773987', '1'),
(48, 'CWE39VHW6PC629LTN', 'Ray', 'Boyd', 'Picture Butte', '13637', '542356457', 'turpis@Vestibulum.net', '1424925515', '1'),
(49, 'XPL48RTY8OV127LUO', 'Fletcher', 'Richard', 'Zeveneken', '89624', '339349772', 'vel.turpis.Aliquam@tristique.org', '1450082672', '1'),
(50, 'OMB15WNQ6KR456AZL', 'Sydney', 'Farmer', 'Fort Saskatchewan', '33987', '493175229', 'metus.sit.amet@Phasellusat.edu', '1424231728', '1'),
(51, 'UAN07BMZ9BH534UYN', 'Tad', 'Mueller', 'Fort McPherson', '14849', '574454318', 'arcu.imperdiet@Donec.net', '1425811422', '1'),
(52, 'IQO22MUR0HW743ARG', 'Fay', 'Cardenas', 'Cavallino', '9519', '527724573', 'eget@ut.net', '1430582903', '1'),
(53, 'DOF55WQT2EI837FHL', 'Linus', 'Baxter', 'Serik', '966591', '353086552', 'libero.dui.nec@Sed.ca', '1432576161', '1'),
(54, 'FOQ89QLH1SF264EOU', 'Amery', 'Henry', 'Bissegem', '484327', '529995456', 'nec.leo@Etiambibendumfermentum.co.uk', '1426450483', '1'),
(55, 'WCE14OOD0HC251MYY', 'Fulton', 'Daniels', 'Brahmapur', '12-269', '567498920', 'ultricies.ligula@dui.ca', '1451238453', '1'),
(56, 'DOG36KBO2ES654UGD', 'Leilani', 'Abbott', 'Kilmalcolm', '66012-242', '621137699', 'magna.Ut@fames.com', '1432404217', '1'),
(57, 'GXI73CTJ3IQ279KHL', 'Micah', 'Christian', 'Hatfield', '01011', '532290368', 'ut.cursus@nasceturridiculusmus.ca', '1440888911', '1'),
(58, 'ECN56KPD8EX118HTE', 'Heidi', 'Nolan', 'Polpenazze del Garda', '55106-063', '514305648', 'erat@risusat.edu', '1423578952', '1'),
(59, 'YVH76SIY9XV722HGU', 'Doris', 'Berry', 'Paradise', '68124', '491167246', 'eu@diamluctus.org', '1432624190', '1'),
(60, 'NYZ31SJK2OD580PRH', 'Rajah', 'Conway', 'Stevenage', '06478', '543169763', 'Phasellus@velsapienimperdiet.net', '1433808278', '1'),
(61, 'RKK02EJK9TT629DLI', 'Tyrone', 'Vargas', 'Piotrków Trybunalski', '18619-703', '516580206', 'Donec.egestas@Proinegetodio.org', '1429076867', '1'),
(62, 'UWX49MZK0UH818UBB', 'Carson', 'Petty', 'Dubbo', '29382', '370460548', 'a.sollicitudin.orci@acsem.edu', '1439079911', '1'),
(63, 'NMI54MVI3VD537GJA', 'Evan', 'Herrera', 'Valley East', '70808', '522362422', 'velit@maurisut.co.uk', '1442110302', '1'),
(64, 'TSP59RVZ9PY414LTC', 'Fay', 'Porter', 'TrognŽe', '85297', '577206550', 'id.nunc.interdum@Phasellusin.co.uk', '1437081638', '1'),
(65, 'OSG64GMZ4GN662TKZ', 'Clark', 'Wilkinson', 'Middelkerke', '69963', '425330445', 'in.hendrerit@noncursusnon.ca', '1428341461', '1'),
(66, 'SHR03YZF0XE481BXI', 'Griffith', 'Estrada', 'Kilsyth', '6506VO', '483620578', 'sit.amet@gravidaAliquamtincidunt.edu', '1439587055', '1'),
(67, 'YKJ80PGG8ZB516YSZ', 'Hunter', 'Blair', 'Palayankottai', '7380', '361451137', 'facilisis.facilisis.magna@Incondimentum.ca', '1445492516', '1'),
(68, 'FDZ77JJY2UW944HTN', 'Abra', 'Joyner', 'Tirunelveli', '58-162', '361962412', 'luctus.et@Aeneanegestas.net', '1437112225', '1'),
(69, 'HFL24BVV0QH553MKE', 'Carolyn', 'Roman', 'Teno', '4603', '509805627', 'Donec.at@pellentesque.edu', '1428377211', '1'),
(70, 'DVX85SWO8VT243FSH', 'Jaime', 'Herman', 'Martello/Martell', '5559RH', '502162565', 'ut.odio.vel@sedpede.com', '1447527484', '1'),
(71, 'GBN08ZSH8KM970SAR', 'Linus', 'Hansen', 'Marcedusa', '21292', '523723610', 'viverra.Maecenas.iaculis@velitQuisquevarius.co.uk', '1443634361', '1'),
(72, 'TIB04IQI9DG457WNU', 'Hall', 'Clements', 'Gwalior', '28784', '487059940', 'quis.pede.Suspendisse@scelerisquemollisPhasellus.co.uk', '1431854122', '1'),
(73, 'TYS40QKA5XL475XIW', 'Blaze', 'Boyer', 'Faridabad', '433912', '530200945', 'venenatis.lacus@duiin.net', '1424820592', '1'),
(74, 'KCF31KZK7DJ364NEP', 'Coby', 'Tran', 'L�vis', '28605', '368403182', 'at.velit.Cras@lacusvestibulum.com', '1430356625', '1'),
(75, 'FIN59CED2KK649SCR', 'Daquan', 'Kaufman', 'Le Havre', '32788', '488437369', 'magnis.dis@sollicitudinamalesuada.net', '1441008492', '1'),
(76, 'BJO67BKN4QA337NSV', 'Gage', 'Blake', 'Sialkot', '52256', '366549911', 'ligula.Aenean.gravida@miacmattis.ca', '1439058138', '1'),
(77, 'YWB86GUU0JY389TRS', 'Brett', 'Garza', 'Ross-on-Wye', '35805', '598608747', 'non.luctus.sit@adipiscing.co.uk', '1431125549', '1'),
(78, 'UBL04ERZ3CI496NAF', 'Anthony', 'Lawson', 'Tarbes', '765111', '496766728', 'nulla.In.tincidunt@enimnisl.net', '1425503339', '1'),
(79, 'TAC48ZMA4ND673CNN', 'Elizabeth', 'Sandoval', 'Xhoris', '5073JH', '424835036', 'massa.Mauris.vestibulum@scelerisquedui.net', '1450416046', '1'),
(80, 'SXC20YOI4EO868TKF', 'Ryder', 'Clay', 'Tilburg', 'C5Z 1A4', '433300718', 'dolor.nonummy@orciquis.net', '1445156867', '1'),
(81, 'OUL18DAJ7UC180QVC', 'Ulysses', 'Ortega', 'Krefeld', '26085', '432581030', 'tempor.diam.dictum@molestieintempus.edu', '1442374461', '1'),
(82, 'XFP38NAD3ZT455PGZ', 'Erasmus', 'Daniel', 'Gliwice', '31500', '597906919', 'Duis.a@non.org', '1450689672', '1'),
(83, 'LDV53LMA1RL697INS', 'Jaden', 'Booth', 'Logroño', '17751', '344177161', 'lobortis.quis.pede@justonecante.org', '1451032365', '1'),
(84, 'FCL44BPI4PR431BZD', 'Kelly', 'Klein', 'San Cesario di Lecce', '3124YU', '525264237', 'vitae.sodales@DuisgravidaPraesent.net', '1435373516', '1'),
(85, 'XPU54ITQ8HH902ZGK', 'Shelly', 'Meyer', 'Loughborough', '59212-876', '361464789', 'commodo@ullamcorpernisl.edu', '1454023155', '1'),
(86, 'MSA90ZWK9SS953YKJ', 'Cassidy', 'Ross', 'Delta', '25341', '625489557', 'varius@ut.ca', '1433840199', '1'),
(87, 'LFF01UGY2TT287TBJ', 'Blossom', 'Gomez', 'Mezzana', '95129', '598978836', 'ut.sem@nonenimcommodo.co.uk', '1441572679', '1'),
(88, 'ZYB54RXQ1BA364WYZ', 'Dominique', 'Carr', 'Thane', '988446', '445670393', 'malesuada.vel@ligulaDonecluctus.net', '1436892572', '1'),
(89, 'VPM79CVJ2CH168PBT', 'Raymond', 'Ward', 'Nijkerk', '4830TG', '543446313', 'id.enim.Curabitur@sociisnatoquepenatibus.edu', '1435284545', '1'),
(90, 'OCS54VGL8NB575ZMV', 'Gisela', 'Berry', 'Coreglia Antelminelli', '02009', '473889997', 'id.enim@Integer.net', '1444761365', '1'),
(91, 'CNK45LGS8VM189AFF', 'Rhiannon', 'Browning', 'Ried im Innkreis', '86476', '396398823', 'urna@acmattissemper.com', '1432678581', '1'),
(92, 'IYB36ASS9QB272KOS', 'Germaine', 'Merrill', 'Madison', '6914OJ', '380544754', 'ornare@uteros.ca', '1436406600', '1'),
(93, 'JGC45RIT0FU948DQN', 'Kristen', 'Snyder', 'Darlington', '198159', '420214227', 'elit.elit@ametmassa.com', '1449611457', '1'),
(94, 'BQJ24ZCO5PX427MAY', 'Alisa', 'Joyce', 'Turriaco', '7354', '479977272', 'iaculis.quis.pede@montesnasceturridiculus.co.uk', '1451965349', '1'),
(95, 'HTO24MAA9II588RTT', 'Deirdre', 'Chen', 'Trivandrum', '88787', '413381983', 'nec.luctus@Aeneanmassa.edu', '1432921348', '1'),
(96, 'GYI66JTK6WX154JHX', 'Maxine', 'Mcguire', 'Evansville', '281536', '419613228', 'Aliquam.auctor.velit@Donec.com', '1453326353', '1'),
(97, 'BJP66XTZ1YN302CWP', 'Shoshana', 'Dickson', 'Diksmuide', '1036', '430679295', 'vel@dolorQuisque.com', '1452858149', '1'),
(98, 'FWM14JMO7TZ913RRC', 'Trevor', 'Terrell', 'Fortune', '75562', '420309604', 'tortor.nibh.sit@sagittisplaceratCras.com', '1437974416', '1'),
(99, 'PHV29VEA6UV035OKU', 'Hadassah', 'Wall', 'Campitello di Fassa', '57250', '485269645', 'In.at@lobortismaurisSuspendisse.org', '1427347384', '1'),
(100, 'SUZ02TXB6VB907FEB', 'India', 'Farley', 'Brye', '722625', '632787339', 'pede@enimSuspendissealiquet.edu', '1447903937', '1'),
(101, '81c8ux', NULL, NULL, 'Rye', '10580', '12/12/12', 'pm@l.com', '1454877210', '1'),
(102, 'pknki0', 'Frodo', 'Baggins', 'Sauron', '99999', '1-1-1', 'linkinpark@evileye.com', '1455846430', '1'),
(105, '262xcj', 'Govind', 'Soni', 'Jersey city', '07306', '12/15/1989', 'Gs93420n@pace.edu', '1509390283', '0'),
(106, 'yi0yaa', 'Govind', 'Soni', 'Jersey city', '07306', '', 'Gs93420n@pace.edu', '1509394059', '0'),
(107, '1g0w5k', 'Govind', 'Soni', 'Jersey city', '07306', '', 'Gs93420n@pace.edu', '1509402110', '1'),
(108, 'avncqc', '', '', '', '', '', '', '1509402988', '1'),
(109, 'w5z78l', 'Govind', 'Soni', 'Jersey city', '07306', '', 'Gs93420n@pace.edu', '1509403878', '1'),
(111, 'ol5z7u', 'Govind', 'Soni', 'Jersey city', '07306', '', 'Gs93420n@pace.edu', '1509403990', '1'),
(112, 'odq07p', 'Govind', 'Soni', 'Jersey city', '07306', '', 'Gs93420n@pace.edu', '1509419983', '1'),
(113, 'il8myg', 'Govind', 'Soni', 'Jersey city', '07306', '', 'Gs93420n@pace.edu', '1509420130', '1'),
(115, '61wuef', 'Govind', 'Soni', 'Jersey city', '07306', '', 'Gs93420n@pace.edu', '1509420346', '1'),
(116, 'b6af8m', 'Govind', 'Soni', 'Jersey city', '07306', '', 'Gs93420n@pace.edu', '1509420874', '1'),
(117, 'o40uf5', 'Govind', 'Soni', 'Jersey city', '07306', '', 'Gs93420n@pace.edu', '1509420889', '1'),
(118, 'lebwgf', 'Govind', 'Soni', 'Jersey city', '07306', '', 'Gs93420n@pace.edu', '1509420898', '1'),
(121, 'rbj9g9', 'Govind', 'Soni', 'Jersey city', '07306', '', 'Gs93420n@pace.edu', '1509467256', '1'),
(122, 'be3hp1', 'Govind', 'Soni', 'Jersey city', '07306', '', 'Gs93420n@pace.edu', '1509467275', '1'),
(123, 'utnrgm', 'Govind', 'Soni', 'Jersey city', '07306', '', 'Gs93420n@pace.edu', '1509467401', '1'),
(124, 'lp5pke', 'Govind', 'Soni', 'Jersey city', '07306', '', 'Gs93420n@pace.edu', '1509467430', '1'),
(125, 'mf004o', NULL, NULL, NULL, NULL, NULL, NULL, '1509467546', '1'),
(126, 'v3cqnq', 'Govind', 'Soni', 'Jersey city', '07306', '', 'Gs93420n@pace.edu', '1509467555', '1'),
(127, 'jhajd8', 'Govind', 'Soni', 'Jersey city', '07306', '', 'Gs93420n@pace.edu', '1509469004', '1'),
(128, '9l4vkh', 'Govind', 'Soni', 'Jersey city', '07306', '', 'Gs93420n@pace.edu', '1509469070', '1'),
(129, 'gqcvir', 'rohan', 'Soni', 'Jersey city', '07306', '', 'Gs93420n@pace.edu', '1509471272', '1'),
(130, '0v8fyp', 'Govind', 'Soni', 'Jersey city', '07306', '', 'Gs93420n@pace.edu', '1509473104', '1'),
(131, 'txlv1t', 'rohan123', 'Soni', 'Jersey city', '07306', '', 'Gs93420n@pace.edu', '1509473153', '1'),
(132, 'b31240', 'Govind', 'Soni', 'Jersey city', '07306', '', 'Gs93420n@pace.edu', '1509474049', '1'),
(133, 'cr9iwi', 'Govind', 'Soni', 'Jersey city', '07306', '12/15/1989', 'Gs93420n@pace.edu', '1509474072', '1'),
(134, 'gw5dw0', 'Govind', 'Soni', 'Jersey city', '07306', '12/15/1989', 'Gs93420n@pace.edu', '1509474077', '1'),
(135, '8vl0e4', 'Vineet', 'Soni', 'Jersey city', '07306', '', 'Gs93420n@pace.edu', '1509474527', '1'),
(136, 'b0akzt', 'Vineet', 'Soni', 'Jersey city', '07306', '', 'Gs93420n@pace.edu', '1509475312', '1'),
(137, '15aujp', 'Vineet', 'Soni', 'Jersey city', '07306', '', 'Gs93420n@pace.edu', '1509475322', '1'),
(138, 'dxts1e', 'Vineet', 'Soni', 'Jersey city', '07306', '', 'Gs93420n@pace.edu', '1509475406', '1'),
(139, 'ahg3yf', 'Govind', 'Soni', 'Jersey city', '07306', '', 'Gs93420n@pace.edu', '1509475416', '1'),
(140, 'de9oy4', 'Govind', 'Soni', 'Jersey city', '07306', '', 'Gs93420n@pace.edu', '1509475810', '1'),
(141, '7tzm80', 'Govind', 'Soni', 'Jersey city', '07306', '', 'Gs93420n@pace.edu', '1509475828', '1'),
(142, 'y89o2z', 'Govind', 'selo', 'Jersey city', '07306', '', 'Gs93420n@pace.edu', '1509476059', '1'),
(143, 'x5840u', '', 'selo', 'Jersey city', '07306', '', 'Gs93420n@pace.edu', '1509476212', '1'),
(144, 'ipbdw3', 'Govind', '', 'Jersey city', '07306', '', 'Gs93420n@pace.edu', '1509476226', '1'),
(145, 'y0rzlp', 'Govind', '', 'Jersey city', '07306', '12/15/1989', 'Gs93420n@pace.edu', '1509476241', '1'),
(146, 'g49rbj', 'Govind', 'sonia', 'Jersey city', '07306', '12/15/1989', 'Gs93420n@pace.edu', '1509482133', '1'),
(147, 'hlrd9a', 'Athesham', 'Khan', 'Jersey city', '07306', '', 'Khan@gmail.com', '1509943113', '1'),
(148, 't9v631', 'Aehtesham', 'Khan', 'Jersey', '07306', '12-12-1222', 'khan@gmail.com', '1509951073', '1'),
(149, 'r4uuca', 'Govind', 'Soni', 'Jersey city', '07307', '15/12/1989', 'Gs93420n@pace.edu', '1510448676', '1'),
(150, 'szcpx6', 'Govind', 'Soni', 'Jersey city', '07306', '12/15/1989', 'govind.soni@gmail.com', '1510456634', '1');

-- --------------------------------------------------------

--
-- Table structure for table `userdetails`
--

CREATE TABLE `userdetails` (
  `UserID` varchar(120) NOT NULL,
  `UserName` varchar(150) NOT NULL,
  `FirstName` varchar(150) DEFAULT NULL,
  `LastName` varchar(150) DEFAULT NULL,
  `Email` varchar(150) NOT NULL,
  `Password` varchar(1000) DEFAULT NULL,
  `MemberSince` varchar(255) DEFAULT NULL,
  `Active` int(11) DEFAULT NULL,
  `privilege` varchar(10) NOT NULL,
  `Statusofuser` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `userdetails`
--

INSERT INTO `userdetails` (`UserID`, `UserName`, `FirstName`, `LastName`, `Email`, `Password`, `MemberSince`, `Active`, `privilege`, `Statusofuser`) VALUES
('pzujj5', 'admin', 'Paula', 'patrick', 'cursus.non.egestas@sempercursus.co.uk', 'bea881cc49fcc7fa395647799a59f61fe5e0bd231732c711aba8dd6e445248980', '1491236221', 1, 'P1', ''),
('tjewkm', 'admin2', 'Pr', 'M', 'p@g.co', '3f9da0c63313c28939b5f850b784914fcd8b6f3ae018b9d7da5bd677599719c18', '1491237181', 1, '0', ''),
('93zc30', 'Ajinkya2017', 'Ajinkya', 'A', 'Ajinkya@gmail.com', 'fa4adfcc71120ee96e1f68b7d36eae2719a9ff8db5a10cc8aa4970fc098830266', '12121212', 1, 'GeneralUse', ''),
('zrbqkd', 'Angel2017', 'Angel', 'R', 'Angel@gmail.com', 'afbdb938d7cfc91c63048614eb134d7e1d370d3434e28daf1c9279413e390c316', '12121212', 1, 'P2', ''),
('3ukfj3', 'Ankit2017', 'Ankit', 'Ankit', 'Ankit@gmail.com', '0b47730b3766b7712a5930382aed873972d8ee776bf72869bf1be7c9274d5c4cc', '12121212', 1, 'GeneralUse', 'Online'),
('kmx5ch', 'Atulas', 'Atul', 'as', 'atul@gmail.com', 'a65dd6612509f03351b97c4cbb9e2d0c4d78dc1ce620c2afcb12ca27262f98f83', '1509778152', 1, '0', ''),
('2ynd16', 'boby2017', 'boby', 'shah', 'boby@gmail.com', '47d30a4cd06c47193dd3cabf0663fbfaf4150404aa50e23f7dc519c5b453b5110', '12121999', 1, 'P1', ''),
('cyftrb', 'FrodoBaggins', 'Frodo', 'B', 'frodo@localhost.com', 'ce1615712e24b7c7ebf23feab855a75b4a8a852bbcfae9a99911246256a0fe497', '1447091580', 1, 'P1', ''),
('kgo8as', 'Gandalf', 'Gandalf', 'The White', 'gandalf@lotr.com', '544e4add46abcd2d71719d88b7ba3ffd79305e76f8f5646fd565d7e938696644a', '1478648340', 1, 'P2', ''),
('7fpr4n', 'georgewash', 'george', 'wash', 'george@gmail.com', 'george', '12-12-1222', 1, 'P1', ''),
('6xkncy', 'Govind', 'Soni', '', 'Gs93420n@pace.edu', '134cba10885970b4c0fd9114a0bd6c2bf98bcfd30220eb4a754021125b993a50b', '1509779927', 1, '0', ''),
('a5hr5k', 'govindeca', 'Govind', 'Soni', 'Gs93420n@pace.edu', 'd97ec7b83b17ba05994f5795c7b26096076cded2083b80a860df0788a89f72b7f', '1509775817', 1, 'P2', 'Online'),
('dmrr56', 'govindeca123', 'govi', 'soni', 'gh@gmail.com', 'govind', '12121212', 1, 'P2', ''),
('ajw6oq', 'govindeca421', 'Govind', 'Soni', 'go@gmail.com', 'govind', '12-12-1222', 1, 'Admin', ''),
('eod4ba', 'govindeca4222222', 'Govind', 'Soni', 'Gs93420n@pace.edu', '0f525fb6222b0c920829576dad39860c60a19a25d8c6e0e9f4982c4b4a20a7316', '12121212', 1, 'Admin', ''),
('vqk3gl', 'gs93420n', 'govind', 'soni', 'Gs93420n@pace.edu', '8816672cc3ff4bddfa52b5925c9ff527bbfba8933aa6150abd3343dda4e19a195', '1509863543', 1, '0', ''),
('e3njt7', 'JSmith', 'J', 'Smith', 'r@g.com', 'fefda3cb1dc072fa024e24e24f21e5d7b82e421f1ea2259a6f573b3e339e117cc', '1491520600', 1, '0', ''),
('6w17s9', 'messibar', 'messi', 'l', 'messi@gmsil.com', 'messi', NULL, NULL, '', ''),
('cd6875', 'Michel2017', 'Michel', 'M', 'Michel@gmail.com', 'cf329750e6965c1726f58635ad2733bd115073ed3ff72a6ebbf859393b1c6e493', '12121212', 1, 'P1', ''),
('w05c3h', 'NedStark', 'Ned', 'Stark', 'ned@stark.com', 'e8af7aba9dc4fd9a69170487dcdb42adc47d9625875e5e43cec45e213b9a8e59a', '1478735594', 1, '0', ''),
('x4bzon', 'Nikhil2017', 'Nikhil', 'N', 'Nikhil@gmail.com', '0bfd3d5234aa2de0e86d97e6352404976aaed185caec59a416b490a3c75d3cc65', '12121212', 1, 'GeneralUse', ''),
('9r4yer', 'Praviin2017', 'Praviin', 'Praviin', 'Praviin@gmail.com', '6c7bfd11143e1051e3eec835efd232432904b74c9162758e0302aab03ad4cbd73', '12121212', 1, 'P2', ''),
('nuptj3', 'PraviinM', 'Praviin', 'Mandhare', 'pravsm@gmail.com', '8d66f8f3836b4346e4ec9f766190e7539fa6b4fa0c728a9ee13cdd372552bc3d3', '1477402585', 1, '0', ''),
('8rtq1t', 'PraviinM2', 'p', 'p', '1@gmai.com', '5378cff9f6baeae832a293dea1815bbfad6a4a6e623eb00216040966114f30b5c', '1509578963', 1, '0', ''),
('3nv7pq', 'PraviinM2', 'Praviin', 'M', '21@gmail.com', '2d51006cb43de35454c91350b375490ba65109108519cb8864306ca6edb369047', '1509490531', 1, '0', ''),
('w3vk4e', 'PraviinM3', 'p', 'm', '1@gmai.com', '5ddbbbdc7811e6b50f8e1f46015cfb01c2f35b28f7eadc19f6fb2953abc7f2449', '1509491714', 0, '0', ''),
('nol5dw', 'priyasingh', 'priya', 'singh', 'priya@gmail.com', '17b46119fdb51a1f1115349fdbef41eaa8598bcefd14d555b6f11cdf4ce1e3098', '1509872119', 1, '', ''),
('7ifoym', 'rocky2017', 'rocky', 'r', 'rocky@gmail.cm', '3442eec253ba7ff48e285b45e24b5538458c1e03e5ad1da112aa007be461224d1', '12-12-1999', 1, 'Admin', ''),
('jtudix', 'Rose2017', 'Rose', 'R', 'rose@gmail.com', '9f3d1f68db8699860e1362530b8ec5b3b69a41e7912fdf11023b387f74a50c2a5', '12121212', 1, 'P2', ''),
('5nnab9', 'Roxy2017', 'Roxy', 'R', 'roxy@gmail.com', '497a122cfaa39cb529ff86aa2f5cf2088f949c7a740055f6c147745d04675809f', '12121222', 1, 'P2', ''),
('15989h', 'Sachin2017', 'Sachin', 'Sachin', 'Sachin@gmail.com', 'c84272d03d93cb017d81d298873e4a18891f40591658c8f6fe984c08c39f48fef', '12121212', 1, 'P2', ''),
('nwkcgz', 'Tommy', 'Tommy', 'Tommy', 'tommy@tommy.com', 'b99323d7cfce96fd4da498c1112fe2f343804274fb78252f1a7b02830136c613c', '1477436541', 1, '0', ''),
('kjlt4a', 'vineetbpl', 'vineet', 'cha', 'vineet@gmail.com', 'b8d7e26fa5508ab232c8d19165eead9d0b4e204e7924df916d344a7a04e8507ca', '1509834879', 1, '0', 'Online');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chatroom`
--
ALTER TABLE `chatroom`
  ADD PRIMARY KEY (`ChatID`);

--
-- Indexes for table `firstnametable`
--
ALTER TABLE `firstnametable`
  ADD PRIMARY KEY (`uniqueid`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`UserName`,`UserID`);

--
-- Indexes for table `s_chat_messages`
--
ALTER TABLE `s_chat_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_chat_id` (`ChatID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userdetails`
--
ALTER TABLE `userdetails`
  ADD PRIMARY KEY (`UserName`,`Email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `firstnametable`
--
ALTER TABLE `firstnametable`
  MODIFY `uniqueid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `s_chat_messages`
--
ALTER TABLE `s_chat_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=444;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `roles`
--
ALTER TABLE `roles`
  ADD CONSTRAINT `roles_ibfk_1` FOREIGN KEY (`UserName`) REFERENCES `userdetails` (`UserName`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
