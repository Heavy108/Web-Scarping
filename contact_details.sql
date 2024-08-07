-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 07, 2024 at 08:04 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `alumni_connect`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact_details`
--

CREATE TABLE `contact_details` (
  `roll_no` varchar(15) NOT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `alternate_phone` varchar(10) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `alternate_email` varchar(255) DEFAULT NULL,
  `linkedin` varchar(255) DEFAULT NULL,
  `uid` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_details`
--

INSERT INTO `contact_details` VALUES('CSB14001', '', '8811031504', '', 'uddi96@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB14003', '+917004114', '876908648', 'satyamsajal6@gmail.com', '', 'asfd', 'WRQoLXckA7f8ETyEvTptlM4cpqm2');
INSERT INTO `contact_details` VALUES('CSB14004', '', '8486915585', '', 'jyotirmoy235@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB14005', '', '8974646315', '', '', '', '');
INSERT INTO `contact_details` VALUES('CSB14006', '', '8473841339', '', 'tanna.chowdhury13@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB14007', '', '9127447197', '', 'prakashkgupta1994@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB14009', '', '7399074899', '', 'dev.shreyasee@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB14010', '', '8721914190', '', 'sanjeebdhar95@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB14011', '', '8472910885', '', 'gautambaruah24@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB14012', '', '8752811959', '', 'pallab.bora100@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB14013', '', '7086708670', '', 'sang.bpr@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB14015', '', '9706908915', '', '', '', '');
INSERT INTO `contact_details` VALUES('CSB14017', '', '8399930131', '', 'bickyjaiswal32@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB14018', '', '', '', '', '', '');
INSERT INTO `contact_details` VALUES('CSB14019', '', '9706191589', '', 'nabadipborah7@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB14020', '', '8011548834', '', 'aparajitagohain@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB14021', '', '8133910587', '', 'raghudev.1521@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB14022', '', '7399548616', '', 'filzapriyab@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB14023', '', '9577069678', '', 'rohitpaul97@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB14024', '', '7576839417', '', 'bishlnath@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB14025', '', '8486655844', '', 'pornaritudowerah@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB14027', '', '9706891090', '', 'arnibanb@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB14028', '', '9954671416', '', 'das1234supriya@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB14029', '', '9401827376', '', '', '', '');
INSERT INTO `contact_details` VALUES('CSB14030', '', '8723974726', '', 'abhijitmiri95@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB14032', '', '9577460250', '', 'jrajbrahma87@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB14034', '', '7399760917', '', 'kalpads7@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB14035', '', '7896373505', '', 'kalpo.msh@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB14036', '', '8134947263', '', '', '', '');
INSERT INTO `contact_details` VALUES('CSB14038', '', '8011539870', '', 'prateekankit96@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB14039', '', '7896863758', '', 'ashish.averma12@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB14040', '', '9455915948', '', 'nikhildixit117@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB14041', '', '8486722676', '', '', '', '');
INSERT INTO `contact_details` VALUES('CSB14042', '', '8133947263', '', 'arghya.dutta96@live.com', '', '');
INSERT INTO `contact_details` VALUES('CSB14043', '', '8555075418', '', 'sigambotlajaswanth@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB14044', '', '8721844051', '', 'sunidhi484@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB14045', '', '8723881611', '', 'shravaniit@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB14046', '', '8004629262', '', 'Sunilsingh98tu@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB14047', '', '8721839031', '', 'pratikdixit1515@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB14048', '', '9666037163', '', 'revanthdasari171@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB14049', '', '9706640845', '', 'akmorya7488@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB14050', '', '8486319992', '', 'rktu131@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB14051', '', '8011539909', '', 'mail2shubhampandey@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB14052', '', '8399097232', '', 'prabhatkr.963@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB14054', '', '9700322870', '', 'Edward.r.vamshi@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB14055', '', '8734861540', '', 'pas31613@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB14056', '', '8486935879', '', 'pankajsharma01996@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB14061', '', '7399893546', '', 'princeshah2222@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB14062', '', '8723907041', '', '23angshu@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB14063', '', '9435528026', '', 'gaurav24agarwal@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB15001', '', '8794384663', '', 'aaniah2511@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB15002', '', '9707948595', '', 'shimantakb@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB15003', '', '8811848229', '', 'banani.sarkar.mimly@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB15005', '', '8876852289', '', 'bbgdrog@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB15006', '', '8402970846', '', 'swarnabd311@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB15007', '', '8876994022', '', 'rajtilaksarma@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB15008', '', '8812017189', '', 'ankur441@yahoo.com', '', '');
INSERT INTO `contact_details` VALUES('CSB15009', '', '8011328948', '', 'dutta.navneet17@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB15010', '', '7577888769', '', 'sayangia@hotmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB15011', '', '7086069599', '', 'reet.phukan@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB15012', '', '8107801828', '', 'sidbasis47@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB15013', '', '8486756105', '', 'jyotiplaban@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB15014', '', '8402814579', '', '2014dib25@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB15015', '', '7896065586', '', 'anindyachakraborty319@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB15016', '', '9678000581', '', 'sujansen12@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB15017', '', '8876538052', '', 'sarodipuwa96@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB15019', '', '9706007386', '', 'satyajyoti511@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB15020', '', '8723917812', '', 'prateekshad16@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB15021', '', '9706563101', '', 'iampps147@yahoo.com', '', '');
INSERT INTO `contact_details` VALUES('CSB15022', '', '9957129162', '', 'saratnath95@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB15023', '', '8749862979', '', 'saloipradipta@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB15024', '', '8876327852', '', 'sinha.tathagatabhigyan@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB15025', '', '9859289403', '', 'pompiborah75@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB15026', '', '8133895591', '', 'sandeepsonowal897@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB15027', '', '8761852881', '', 'Nayanjyotisharma675@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB15029', '', '8486243899', '', 'Priyotoshkalita@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB15030', '', '8402063413', '', 'deepankarbaruah@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB15031', '', '8134018297', '', 'hiki88881@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB15032', '', '9954682522', '', '', '', '');
INSERT INTO `contact_details` VALUES('CSB15033', '', '7086644305', '', 'miginkbty05@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB15034', '', '7399465358', '', 'prasenjitchelleng@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB15035', '', '8255066437', '', 'piyushdas23@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB15036', '', '9957105084', '', 'kukilbora999@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB15037', '', '8751910540', '', 'reshabcsb18@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB15038', '', '8472832644', '', 'jaikumardas577@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB15039', '', '8011323125', '', 'dpranjit1996@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB15040', '', '8403858016', '', 'arpitansharya@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB15041', '', '7896861471', '', 'alok260@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB15042', '', '8486886587', '', 'amankumarharijan75@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB15044', '', '9700885516', '', 'yadavankit672@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB15045', '', '7086811015', '', 'Shreekanti97@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB15047', '', '8330930004', '', 'teza.aguru@gmil.com', '', '');
INSERT INTO `contact_details` VALUES('CSB15049', '', '7095480905', '', 'premchandjagana@gmil.com', '', '');
INSERT INTO `contact_details` VALUES('CSB15051', '', '8986033766', '', 'jhasaurabhanand1997@gmil.com', '', '');
INSERT INTO `contact_details` VALUES('CSB15052', '', '7086834114', '', 'shashankshekhar885@gmil.com', '', '');
INSERT INTO `contact_details` VALUES('CSB15054', '', '8720979353', '', 'nsingh15054@gmil.com', '', '');
INSERT INTO `contact_details` VALUES('CSB15055', '', '7896668360', '', 'kavyahazarika123@gmil.com', '', '');
INSERT INTO `contact_details` VALUES('CSB15056', '', '9461947865', '', '', '', '');
INSERT INTO `contact_details` VALUES('CSB15057', '', '9161152065', '', 'ajaykkumars33236@gmil.com', '', '');
INSERT INTO `contact_details` VALUES('CSB15058', '', '8486500590', '', 'pirbo.tapok@gmil.com', '', '');
INSERT INTO `contact_details` VALUES('CSB15059', '', '9413096546', '', 'rajatsharma369007@gmil.com', '', '');
INSERT INTO `contact_details` VALUES('CSB15061', '', '9771094805', '', 'ayushkumar1501@gmil.com', '', '');
INSERT INTO `contact_details` VALUES('CSB15062', '', '9954248982', '', 'chatalaani14u@gmil.com', '', '');
INSERT INTO `contact_details` VALUES('CSB15063', '', '8876844359', '', 'pantayu123@gmil.com', '', '');
INSERT INTO `contact_details` VALUES('CSB15064', '', '9774761054', '', 'dey.akah546@gmil.com', '', '');
INSERT INTO `contact_details` VALUES('CSB15065', '', '8812071725', '', 'asthaborkataky@gmil.com', '', '');
INSERT INTO `contact_details` VALUES('CSB16001', '', '9957374760', '', 'abyartha01@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB16002', '', '8721005084', '', 'lakshajyoti_98@yahoo.com', '', '');
INSERT INTO `contact_details` VALUES('CSB16003', '', '9678619493', '', 'gargacharya1198@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB16004', '', '9435164876', '', 'aishwaryalath1234@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB16009', '', '8480508368', '', 'RobyNad007@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB16010', '', '8011394742', '', 'kavel.barua@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB16011', '', '7670007773', '', 'xibedanta@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB16012', '', '8723912165', '', 'adirthaborgohain@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB16013', '', '9678700507', '', 'pisces.chiranjibguragain341@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB16015', '', '8720950125', '', 'paulgarg2@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB16016', '', '8403086802', '', 'debasishkalita@yahoo.com', '', '');
INSERT INTO `contact_details` VALUES('CSB16017', '', '9127542005', '', 'rudrakanta.kalita@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB16018', '', '9613875186', '', 'dikshitamedhi1997@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB16019', '', '7896179700', '', 'dmodhukalya@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB16020', '', '7896384782', '', 'tbhojai@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB16022', '', '8751982625', '', 'nityanandagohain@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB16023', '', '8761856596', '', 'uddipnath57@gmial.com', '', '');
INSERT INTO `contact_details` VALUES('CSB16024', '', '8473833686', '', 'kalpajyotishahi301@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB16025', '', '9085547123', '', 'ahmediftikar4@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB16026', '', '9085569888', '', 'das.chkaustav@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB16027', '', '8811904099', '', 'munindrahazarika673@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB16028', '', '9706635389', '', 'hemant.banik@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB16029', '', '8720997364', '', 'sbsagariscool3@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB16030', '', '9435706439', '', 'shibanidhun.7@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB16031', '', '9678997457', '', 'Imsangita02@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB16032', '', '7663070287', '', 'daskamal680@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB16033', '', '9954417225', '', 'darwyanna996@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB16034', '', '8761060701', '', 'gauridas288@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB16035', '', '7896965253', '', 'jeffersonwarie@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSb16037', '', '9678822814', '', 'debasishdeori1998@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSb16038', '', '7086452567', '', 'sibcharan98@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB16039', '', '7250634824', '', 'jptk143@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB16040', '', '8765017351', '', 'gautamdeepika91@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB16041', '', '9608650941', '', 'vishwakarmarakesh16@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB16042', '', '9721118386', '', 'sivanshsinghgkp@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB16043', '', '9476777156', '', 'priyatoshraut98@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB16044', '', '9127086642', '', 'banerjeeunmesha97@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB16045', '', '8720995361', '', 'snehasumantezu@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB16046', '', '8720997603', '', 'jhasulakshana08@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB16047', '', '8979316240', '', 'vishaldhimon1996@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB16048', '', '7870953501', '', 'ashiruad417@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB16049', '', '8822989939', '', 'scholauid998@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB16050', '', '9908303159', '', 'Sankardaggumati27@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB16052', '', '8720983299', '', 'rameezahmad8897@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB16053', '', '8471984760', '', 'anglnhyoung@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB16054', '', '9577288128', '', 'abdul5066@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB16055', '', '9508957085', '', 'lahimahanta67@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB16056', '', '8486848410', '', 'almendra.rk@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB16057', '', '8011881627', '', 'diptodc96@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB16058', '', '8720915693', '', 'arifakram007.aa@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB16059', '', '9127520737', '', 'paul97saurav@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB16060', '', '9654535144', '', 'prateek98saikia@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB16062', '', '9577058790', '', 'blackizsting@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB16064', '', '9127074327', '', 'priyanka81125@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB16065', '', '9706533934', '', 'princeliksall16@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB16066', '', '9435115153', '', 'madhuryyakashyap10@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB17001', '', '8135822297', '', 'parashmonibora74@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB17002', '', '8473886541', '', 'pushpakjalan02@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB17003', '', '9101227702', '', 'anupamatezu@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB17005', '', '7002464820', '', 'sandeepdebamishra@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB17008', '', '9101286909', '', 'bidonsaha007@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB17011', '', '7002509675', '', 'ananya.deka14@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB17013', '', '6900330856', '', 'adityamaitreya@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB17016', '', '9678935209', '', 'binbhuttoadil@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB17017', '', '8721861854', '', 'deepankaracharyya@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB17018', '', '7575991864', '', 'sumitkrthakur18@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB17019', '', '9476846294', '', 'runankar2@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB17021', '', '8134024739', '', 'pdtezucse@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB17022', '', '7002352588', '', 'rks497007@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB17024', '', '8415923115', '', 'mousumiroyboruah7@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB17026', '', '8472088836', '', 'dsaharia@outlook.com', '', '');
INSERT INTO `contact_details` VALUES('CSB17027', '', '7085630034', '', 'kishankumarrabha5@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB17030', '', '8638691255', '', 'udhavdas347@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB17031', '', '8822099859', '', 'arupkarengineering@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB17033', '', '7637032622', '', 'cathygraceb@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB17035', '', '7636050549', '', 'parikshitsaikia1619@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB17036', '', '9796161694', '', 'mohitsharma1736@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB17038', '', '9678440608', '', 'bhaskarsingha7@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB17039', '', '7399951195', '', 'mandeepkumarsingh42@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB17040', '', '9954552335', '', 'rashmasultanaahmed@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB17041', '', '8011429511', '', 'nilampathak72@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB17043', '', '8638742218', '', 'biswajitbharali50@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB17046', '', '6003108081', '', 'anupam02mili@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB17047', '', '9113110255', '', 'almin.crypt@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB17048', '', '9470040437', '', 'ashishdeo428@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB17049', '', '7576856058', '', 'akash786antal100@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB17051', '', '9507992276', '', 'guptagaurav540@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB17053', '', '8011809188', '', 'prajjwals12th@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB17055', '', '8601536660', '', 'kannaujia944@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB17056', '', '8134824124', '', 'manish123gp@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB17057', '', '6200910821', '', 'adarshkumar8225@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB17058', '', '6200553415', '', 'snigdhshourya11111998@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB17059', '', '7896886855', '', 'hkumar8897@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB17060', '', '8724824762', '', 'rajneesh.rj20@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB17061', '', '8134822578', '', 'swapatamang@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB17062', '', '9864182407', '', 'mrityunjayscience@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB17063', '', '7002958251', '', 'rishabh.tsk@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB17066', '', '8709546640', '', 'raiamarjeet01@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB17067', '', '7260034121', '', 'samirsujan121@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB17070', '', '6901815544', '', 'masoodme388@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB17071', '', '7002834441', '', 'prakashcsb2017@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB17072', '', '8011883175', '', 'jitulrajbongshi@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB17074', '', '6000988306', '', 'ri2.123.rd@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB17075', '', '7002279497', '', 'purbajitdas@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB17076', '', '9436318102', '', 'bishaldeb656@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB17077', '', '7575919717', '', 'dasbarmanswarnav2@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB17078', '', '9102938970', '', 'ankitraj1725@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB18001', '', '9027411085', '', 'stealthanupam@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB18002', '', '9957843243', '', 'subhamdey297@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB18003', '', '6901348153', '', 'csb18003@tezu.ac.in', '', '');
INSERT INTO `contact_details` VALUES('CSB18004', '', '9085130447', '', 'siddddabd@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB18005', '', '7896720203', '', 'csb18005@tezu.ac.in', '', '');
INSERT INTO `contact_details` VALUES('CSB18006', '', '6000648410', '', 'csb18006@tezu.ac.in', '', '');
INSERT INTO `contact_details` VALUES('CSB18007', '', '7002361638', '', 'sarmahparardha@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB18008', '', '7002209654', '', 'harshsu9@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB18009', '', '6000798488', '', 'neeldeb99@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB18010', '', '6000316471', '', 'surajsarmah71@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB18012', '', '6000876674', '', 'csb18012@tezu.ac.in', '', '');
INSERT INTO `contact_details` VALUES('CSB18013', '', '9381149023', '', 'csb18013@tezu.ac.in', '', '');
INSERT INTO `contact_details` VALUES('CSB18014', '', '9678469207', '', 'csb18014@tezu.ac.in', '', '');
INSERT INTO `contact_details` VALUES('CSB18015', '', '8253865705', '', 'jakerodney45@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB18016', '', '8134068354', '', 'subhasishgoswami00@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB18017', '', '9365384660', '', 'ahandique8@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB18018', '', '8011742704', '', 'hjduttaxx@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB18020', '', '7576847149', '', 'lizu036@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB18022', '', '9678106139', '', 'painofhiddenrain@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB18023', '', '8471866082', '', 'csb18023@tezu.ac.in', '', '');
INSERT INTO `contact_details` VALUES('CSB18024', '', '8638830467', '', 'borahchinmoy9@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB18027', '', '9126302673', '', 'dipankarxetry91@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB18028', '', '6000811325', '', 'csb18028@tezu.ac.in', '', '');
INSERT INTO `contact_details` VALUES('CSB18029', '', '7086327725', '', 'flyingbarbieduarah99@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB18030', '', '8876921087', '', 'csb18030@tezu.ac.in', '', '');
INSERT INTO `contact_details` VALUES('CSB18031', '', '8724915817', '', 'csb18031@tezu.ac.in', '', '');
INSERT INTO `contact_details` VALUES('CSB18032', '', '7635908586', '', 'nishant22raha@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB18034', '', '8414877910', '', 'rezoomchakma13@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB18036', '', '9101641984', '', 'csb18036@tezu.ac.in', '', '');
INSERT INTO `contact_details` VALUES('CSB18037', '', '8402890472', '', 'csb18037@tezu.ac.in', '', '');
INSERT INTO `contact_details` VALUES('CSB18038', '', '9264933502', '', 'himanshuguptakkt001@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB18039', '', '7479827609', '', 'csb18039@tezu.ac.in', '', '');
INSERT INTO `contact_details` VALUES('CSB18040', '', '6205007614', '', 'csb18040@tezu.ac.in', '', '');
INSERT INTO `contact_details` VALUES('CSB18041', '', '6000547067', '', 'moloywrit@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB18042', '', '7739941360', '', 'kprabhakar5441@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB18045', '', '8638482621', '', 'csb18045@tezu.ac.in', '', '');
INSERT INTO `contact_details` VALUES('CSB18046', '', '6264103253', '', 'csb18046@tezu.ac.in', '', '');
INSERT INTO `contact_details` VALUES('CSB18047', '', '9110986474', '', 'csb18047@tezu.ac.in', '', '');
INSERT INTO `contact_details` VALUES('CSB18048', '', '7032148085', '', 'csb18048@tezu.ac.in', '', '');
INSERT INTO `contact_details` VALUES('CSB18050', '', '6283071645', '', 'csb18050@tezu.ac.in', '', '');
INSERT INTO `contact_details` VALUES('CSB18052', '', '9625391490', '', 'roymeghna1299@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB18053', '', '7988872578', '', 'csb18053@tezu.ac.in', '', '');
INSERT INTO `contact_details` VALUES('CSB18055', '', '9140858251', '', 'Saurabhkeyid@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB18056', '', '7005243491', '', 'CSB18056@tezu.ac.in', '', '');
INSERT INTO `contact_details` VALUES('CSB18057', '', '6901395009', '', 'abhinavanand397@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB18058', '', '7355317638', '', 'csb18058@tezu.ac.in', '', '');
INSERT INTO `contact_details` VALUES('CSB18059', '', '8541044475', '', 'csb18059@tezu.ac.in', '', '');
INSERT INTO `contact_details` VALUES('CSB18060', '', '7086711294', '', 'csb18060@tezu.ac.in', '', '');
INSERT INTO `contact_details` VALUES('CSB18061', '', '7896186169', '', 'ichbinadittyadey@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB18062', '', '7896129009', '', 'aowashim@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB18063', '', '6000603689', '', 'csb18063@tezu.ac.in', '', '');
INSERT INTO `contact_details` VALUES('CSB18064', '', '7896772462', '', 'upam.sarmah@gmail.com', '', '');
INSERT INTO `contact_details` VALUES('CSB21073', '8765432456', '8638702332', 'satyamsajal6@gmail.com', 'csb21073@tezu.ac.in', NULL, '');
INSERT INTO `contact_details` VALUES('CSB21096', '1234567890', '8638702332', 'csb21096@tezu.ac.in', 'csb21096@tezu.ac.in', NULL, '');
INSERT INTO `contact_details` VALUES('roll_no', 'phone', 'alternate_', 'email', 'alternate_email', 'linkedin', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact_details`
--
ALTER TABLE `contact_details`
  ADD PRIMARY KEY (`roll_no`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `contact_details`
--
ALTER TABLE `contact_details`
  ADD CONSTRAINT `contact_details_ibfk_1` FOREIGN KEY (`roll_no`) REFERENCES `alumni_details` (`roll_no`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
