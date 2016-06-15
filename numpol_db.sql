-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 13, 2016 at 03:04 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `numpol_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `np_admin`
--

CREATE TABLE `np_admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `np_admin`
--

INSERT INTO `np_admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'pwd');

-- --------------------------------------------------------

--
-- Table structure for table `np_csr`
--

CREATE TABLE `np_csr` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `detail` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `np_csr`
--

INSERT INTO `np_csr` (`id`, `title`, `detail`) VALUES
(1, 'GIVING PREFABRICATED KNOCK DOWN BUILDING', 'Giving prefabricated knock down building.'),
(2, 'GIVING PREFABRICATED KNOCK DOWN KEEP''S BOX', 'Giving prefabricated knock down keep''s box.'),
(3, 'BUILDING PAVILION FOR ROYAL THAI ARMY', 'Building pavilion for Royal Thai Army.'),
(4, 'GIVING EQUIPMENT FOR SCHOOL', 'Giving equipment for school.'),
(5, 'REWARD AS THE PERSON TO GIVING HELP TO PEOPLE IN RURAL', 'Reward as the person to giving help to people in rural.'),
(6, 'THE REWARD FROM THAI POLICE', 'The reward from Thai police.'),
(7, 'THE BEST TAX PAYER OF THE YEAR FROM THAI GOVERNMENT', 'The best tax payer of the year from Thai Government.');

-- --------------------------------------------------------

--
-- Table structure for table `np_csr_banner`
--

CREATE TABLE `np_csr_banner` (
  `id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `np_csr_banner`
--

INSERT INTO `np_csr_banner` (`id`, `image`) VALUES
(1, 'csr_main01.jpg'),
(2, 'csr_main01.jpg'),
(3, 'csr_main01.jpg'),
(4, 'csr_main01.jpg'),
(5, 'csr_main01.jpg'),
(6, 'csr_main01.jpg'),
(7, 'csr_main01.jpg'),
(8, 'csr_main01.jpg'),
(9, 'csr_main01.jpg'),
(10, 'csr_main01.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `np_csr_preview`
--

CREATE TABLE `np_csr_preview` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `np_csr_preview`
--

INSERT INTO `np_csr_preview` (`id`, `title`, `image`) VALUES
(1, 'GIVING PREFABRICATED KNOCK DOWN BUILDING', 'csr_tb01.jpg'),
(2, 'GIVING PREFABRICATED KNOCK DOWN KEEP''S BOX', 'csr_tb02.jpg'),
(3, 'BUILDING PAVILION FOR ROYAL THAI ARMY', 'csr_tb03.jpg'),
(4, 'GIVING EQUIPMENT FOR SCHOOL', 'csr_tb04.jpg'),
(5, 'REWARD AS THE PERSON TO GIVING HELP TO PEOPLE IN RURAL', 'csr_tb05.jpg'),
(6, 'THE REWARD FROM THAI POLICE', 'csr_tb06.jpg'),
(7, 'THE BEST TAX PAYER OF THE YEAR FROM THAI GOVERNMENT', 'csr_tb07.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `np_demon`
--

CREATE TABLE `np_demon` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `detail` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `np_demon`
--

INSERT INTO `np_demon` (`id`, `title`, `detail`) VALUES
(3, 'Test Demon 1', '1 ...'),
(4, 'Test Demon 2', '2 ...');

-- --------------------------------------------------------

--
-- Table structure for table `np_demon_banner`
--

CREATE TABLE `np_demon_banner` (
  `id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `np_demon_banner`
--

INSERT INTO `np_demon_banner` (`id`, `image`) VALUES
(1, 'pd_main04.jpg'),
(2, 'pd_main01.jpg'),
(3, 'pd_main01.jpg'),
(4, 'pd_main01.jpg'),
(5, 'pd_main01.jpg'),
(6, 'pd_main01.jpg'),
(7, 'pd_main01.jpg'),
(8, 'pd_main01.jpg'),
(9, 'pd_main01.jpg'),
(10, 'pd_main01.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `np_demon_preview`
--

CREATE TABLE `np_demon_preview` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `np_demon_preview`
--

INSERT INTO `np_demon_preview` (`id`, `title`, `image`) VALUES
(3, 'Test Demon 1', 'csr_tb07.jpg'),
(4, 'Test Demon 2', 'csr_tb04.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `np_email`
--

CREATE TABLE `np_email` (
  `email` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `np_email`
--

INSERT INTO `np_email` (`email`) VALUES
('info@numpol.co.th');

-- --------------------------------------------------------

--
-- Table structure for table `np_home_banner`
--

CREATE TABLE `np_home_banner` (
  `id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `np_home_banner`
--

INSERT INTO `np_home_banner` (`id`, `image`) VALUES
(1, 'assets/images/home_banner/7516434055742f7bda5374.jpg'),
(2, 'assets/images/home_banner/14433445005742f7bda55ff.jpg'),
(3, 'assets/images/home_banner/427947785742f7bda57fb.jpg'),
(4, 'assets/images/home_banner/679845755742f7bda59ed.jpg'),
(5, 'assets/images/home_banner/17598750295742f7bda5bc0.jpg'),
(6, 'assets/images/home_banner/21328958045742f7bda6136.jpg'),
(7, 'assets/images/home_banner/13798853775742f7bda6480.jpg'),
(8, 'assets/images/home_banner/5435907835742f7bda68db.jpg'),
(9, 'assets/images/home_banner/11680963605742f7bda6da1.jpg'),
(10, 'assets/images/home_banner/18826775385742f7bda7317.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `np_img_csr`
--

CREATE TABLE `np_img_csr` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `detail` text NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `np_img_csr`
--

INSERT INTO `np_img_csr` (`id`, `title`, `detail`, `image`) VALUES
(1, 'GIVING PREFABRICATED KNOCK DOWN BUILDING', 'Giving prefabricated knock down building.', 'csr01.jpg'),
(2, 'GIVING PREFABRICATED KNOCK DOWN KEEP''S BOX', 'Giving prefabricated knock down keep''s box.', 'csr02.jpg'),
(3, 'BUILDING PAVILION FOR ROYAL THAI ARMY', 'Building pavilion for Royal Thai Army.', 'csr03.jpg'),
(4, 'GIVING EQUIPMENT FOR SCHOOL', 'Giving equipment for school.', 'csr04.jpg'),
(5, 'REWARD AS THE PERSON TO GIVING HELP TO PEOPLE IN RURAL', 'Reward as the person to giving help to people in rural.', 'csr05.jpg'),
(6, 'THE REWARD FROM THAI POLICE', 'The reward from Thai police.', 'csr06.jpg'),
(7, 'THE BEST TAX PAYER OF THE YEAR FROM THAI GOVERNMENT', 'The best tax payer of the year from Thai Government.', 'csr07.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `np_img_demon`
--

CREATE TABLE `np_img_demon` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `detail` text NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `np_img_demon`
--

INSERT INTO `np_img_demon` (`id`, `title`, `detail`, `image`) VALUES
(3, 'Test Demon 1', '1 ...', 'dm_main.jpg'),
(4, 'Test Demon 2', '2 ...', 'dm_main2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `np_img_product`
--

CREATE TABLE `np_img_product` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `detail` text NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `np_img_product`
--

INSERT INTO `np_img_product` (`id`, `title`, `detail`, `image`) VALUES
(1, 'PREFABRICATED KNOCK DOWN BUILDING', 'Prefabricated knock down building. The structure is designed to be strong, robust, up to standard with a lifespan over 15 years. There is built-in insulation of roof and wall, energy saving, water protection, wind-blowing into building protection, convenient and time saving. The nature of application of prefabricated knock down building is suitable for offices premise, bedrooms, bathrooms, toilets, security guard booth and so on. Our past performance is entrusted by Internal Security Operations Command 4th Region Front Command, to install prefabricated knock down buildings in the area of the 3 southern provinces (Yala, Pattani and Narathiwat) and the delivery of prefabricated knock down buildings project for the operations base of Thai / Darfur in the Republic of the Sudan (UNAMID).', 'p_01.jpg'),
(2, 'POWER GENERATOR', 'Power generator plays a vital role in the place where there is a continuing demand for electricity in the work of data storage, works in various manufacturing processes including disaster prevention and mitigation such as flood, fire, blackout due to power system failure. We have a sound-proof generator that can keep the sound and noise of the generator. It operates quietly and is resistant to the sun and rain which is very suitable for working at the site or installation outdoor, easy maintenance and have full set of damage protection system, such as excessive heat automatic cut-off system or lock-off system when the lubricant oil cannot be pumped up. The product characteristics meet the standard criteria. The installation system is controlled by a team of experts and engineers. Our generator passes the test of government agencies and we have delivered to and provided installation system of our generator for the Military Development Command Unit, Royal Thai Armed Forces Headquarters and Sirindhorn Army Camp for the United Nations Combined Forces mission - UN / UNAMID Thai / Darfur at the Republic of the Sudan.', 'p_02.jpg'),
(3, 'FIBERGLASS PONTOON', 'Fiberglass pontoon is a very popular and very useful water vehicle. It is strong, resistant to sunlight, rain, heat and chemical , colorful, smooth and has polished external surface, can load 6-7 persons, hydrophobic, easily use due to lightweight and flexible when it bumps will not lose its original shape. During the immense flood in Bangkok last year, the company donated fiberglass pontoon with mounted kits to the Military Development Command Unit, in order to help flood victims in areas that are hardly to reach, more efficiently and timely.', 'p_03.jpg'),
(4, 'WATER PUSHER WITH DIESEL ENGINES MOUNTEDON A STEEL RAFT', 'It is pushed by large propeller. The propellers can be adjusted according to the depth of the water with mounted kit for equipping with Steel pontoon raft. Engine and pusher installation are in the same package and it can be removed and reinstalled. Diesel emission is received EPA TIER2 toxic control standard, which is ideal for pushing water to flow faster to speed up the drainage and alleviate flooding problem and efficient irrigation during rainy season, the flow down of water from the north and high sea water tide. We adhere to the principle of business operation that meet the requirements of customers and apply in various different situations. As such, we have gained the trust from the Military Development Command Unit, Royal Thai Armed Forces Headquarters.', 'p_04.jpg'),
(5, 'TOWING PUMP WITH DIESEL ENGINE', 'It is pushed by large propeller. The propellers can be adjusted according to the depth of the water with mounted kit for equipping with Steel pontoon raft. Engine and pusher installation are in the same package and it can be removed and reinstalled. Diesel emission is received EPA TIER2 toxic control standard, which is ideal for pushing water to flow faster to speed up the drainage and alleviate flooding problem and efficient irrigation during rainy season, the flow down of water from the north and high sea water tide. We adhere to the principle of business operation that meet the requirements of customers and apply in various different situations. As such, we have gained the trust from the Military Development Command Unit, Royal Thai Armed Forces Headquarters.', 'p_05.jpg'),
(6, 'TOWING CENTRIFUGAL PUMPS', 'The pump is widely used because of its suitability for pumping large volume of water. The body and impeller are cast iron., the shaft is stainless steel according to international standards. Engine and pump mounted on the same steel base and are firmly placed on the frame of the towing trailer. The installation system is controlled by a team of engineers and technical experts. All the functional performance must be tested for the effectiveness of application for those who have suffered from flood by efficient draining of water out of the flood areas, canal or areas affected by flooding or used in activities of disaster prevention and mitigation.', 'p_06.jpg'),
(7, 'AMMUNITION PALLET', 'The products we supply to the unit is for ammunition storage support purpose . A plastic pallet with extra impact resistance. lightweight, easy to clean and not absorb water. It can be used while raining without water and are comply with GMP and HACCP standards. No problem with termite, insecticide, resistance in all climatic conditions, resistance to moisture, rust, nails and splinters. Resistance to chemicals and pH together with the ultra-viloet in the sun light. Resistance to hot and cold temperatures and is available in any standard reference. There is anti-slip rubber sheet provided while moving. It is therefore fulfill the purpose of ammunition support storage purpose of Armory, Ammunition Battalion, 3rd Combat Auxiliary Command.', 'p_07.jpg'),
(8, 'THE SATELLITE GPS INSTRUMENT', 'It is an instrument to coordinate on a global positioning through satellite system, using GPS with high accuracy of locating the positions with the LCD screen and on-screen light. It can show the coordinated position in both UTM and Latitude / Longitude Coordinate system and can be used with Thailand geography as well. It can navigate to the desired position and can show the distance and direction. It can also plot the coordinates and directions. The body case is durable, waterproof, battery power, USB ports for connecting to a computer and can calculate the target area. We have delivered the satellite GPS instruments to the 3rd Army Area for the operation. The modernization of the instrument makes the operation become easier and faster.', 'p_08.jpg'),
(9, 'VHF/FM  HAND-HELD RADIO TRANSCEIVER', 'VHF / FM hand-held radio transceiver is used with DC rechargeable battery. The instrument is very durable and is not easily damaged. The built-in receiver-transmitter and electronic circuits and components are in comply with EIA standard. It can send transmission either by sound or by vibration,POWER SAVE system to save battery power.Body and battery is in compact size, light weight, suitable for the application of "Mobile operation". The feature of product matches requirement of the agency. The product has been tested until it works very well and then are delivered to the 3rd Army Area for the project of effective protection and operation development in the border area of the three southern-border provinces at Office of Peace Reinforcement for the mission to suppress insurgency and for the benefits in various activities.', 'p_09.jpg'),
(10, 'OBSERVATION CAMERA', 'The unrest in the three southern border provinces deterioriate the nation''s economic instability. social problems. safety of peoples'' lives and education because education is the only thing that can develop nation to prosper and survive. All parties need to cooperate to solve these problems no matter it is government or public agencies. The company is a part of it to help solve these problems by supplying the product of efficient features and high performance to support the organizations such as: \r\n\r\nIndividual Observation Night camera. It is used for surveillance and performs at night. It is a light enhancement camera and can be used for surveillance and armed snipers. It can see in the distance with high resolution in disorder of atmosphere movement. The Infrared light helps easy reading a map in the dark with a Face Mask which can be worn and removed easily. It can be adjusted to fit the size of the face and head. It has options to equip with a helmet. The camera can adjust the distance from the eye properly when it is not in use. It is suitable for security patrols in different areas.\r\n\r\nThermal radiation detection camera uncooled system. It is the type of camera that develop an image from mobile radiation used for surveillance or monitoring a target, people or vehicles in dusty, hazy smoky conditions, both in day time and night time. The image is developed by radiation of uncooled system which is a technology widely used because of its low cost. The camera can operate at room temperature. As it is not a cooling system, there is no sound. The radiation detector is within the range between 3-14 microns and is sensitive to variation in temperature. No noise while it is working. Operational performance can detect a target in the most darkness place at night. Both types of products receive international standards.', 'p_10.jpg'),
(11, 'PREFABRICATED HELICOPTER PAD PANEL', 'It is a prefabricated knock down and movable pad panel, consisting of hexagonal-shape of pad panel put together in the target area. It can support a maximum weight of 44 tons and is made from a material that can withstand high impact. It is resistant to chemicals such as oil, grease and petroleum products, very convenient to install. It is commonly used as a base or helipad in the up - down - park in the operational areas which is very hardly to reach.', 'p_11.jpg'),
(12, 'MULTI-PURPOSE VEHICLE ATV', 'The engine is 1 cylinder, 4-stroke air-cooled systems, electric fans, forward and reverse gears. Front and rear wheels are hydraulic disc brakes, the tires are Low Pressure texture type endurable for all surface condition and has backup system with pull starter. It emphasizes on the use of wild rugged wading through mud purpose and can load heavy stuffs. this SUV with 4-wheel ATV product is certified to international standards. It is suitable for field work', 'p_12.jpg'),
(13, 'WATER PUSHER WITH DIESEL ENGINES MOUNTEDON A STEEL RAFT', 'A woven plastic sandbag. It is made of synthetic woven fabric sewn in dark green tape and has an upper cloth, a lower cloth, two lateral strengthened strips homogeneously throughout the material without seams on the 2 sides while the bottom of the bag is sewn by Multi Filament Yarn Polyester The mouth of the bag is fasten by synthetic nylon yarn and has composite components feature of UV protection and passed the light meter test. Therefore it is durable to every operating conditions. It is used to fill sand, soil or other material contained in a similar manner. Our products have passed the test of reliable testing institute of textile. As such, we have delivered a lot of this sandbag to Internal Security Operations Command, 4th Region, Front Commander to help and protect the flood in various area and to alleviate the disaster.', 'p_13.jpg'),
(14, 'SYNTHETIC FIBER SANDBAGS', 'It is the high tensile steel wire covered with spines which cannot pulled out by hands. The wire can stretch out into spine mesh and is easy to store after usage. The spines are sharp and hard to squeeze by a hand or fold, bend, rust preventive coating materials. Because of the high performance of the type of wire, it is applied to protect life and property for dwellings and is used as a protective barrier at the time of war, protest and revolution, or even using as a protection for safety of public, landmarks, or protect the intrusion along the borders between countries, blocking the path or blocking point to search for drug. Our products are delivered to the Operations Division of the 3rd Army Area for using in many military operations.', 'p_14.jpg'),
(15, 'STEEL PARTITION PANE', 'The steel partition panel for traffic equipped with lights and siren to the panel. It is made from high standard steel size and hase strength and durability for using in the work field to separate certain area or status of operations, such as traffic work, construction work, parking building, zoning in operation of work and many other activities.', 'p_15.jpg'),
(16, 'LAND BUOY', 'It is a land buoy for vehicle. One set consists of 4 chained spike fences. Spike fence is a 2â€ thickness angle bar. It is very strong and durable and can lift the vehicle high above the ground of about 87 cm. It can be moved easily as the bottom base is equipped with rubber wheels without noise. It is used as a trap to stop all kinds of vehicles that are stolen, break through the checkpoint and sabotage in various landmarks.', 'p_16.jpg'),
(17, 'RAYTHEON BBN TECHNOLOGIES', 'updating', 'p_17.jpg'),
(18, 'PHAROBIT', 'updating', 'p_18.jpg'),
(19, 'WATERGEN', 'updating', 'p_19.jpg'),
(20, 'THE GARBAGE COLLECTOR', 'updating', 'p_20.jpg'),
(21, 'LEADER GROUPE', 'Designed and built to locate buried victims, the Search & Rescue range includes 3 complementary devices intended for search and rescue specialists.\r\nâ€¢ Audio ResQ is designed to detect the presence of victims and pinpoint them with great accuracy even in rubble. By means of its seismic sensors, it is capable of detecting the least vibration given off by a conscious victim: scratching, voices, even under severe utilization conditions typical of natural catastrophes.\r\nâ€¢ Visio Search, developed to visualise and communicate with victims, is used for evaluating the necessary assistance and emergency care. With an intuitive man/machine interface, a large colour monitor and alightweight telescopic boom, Visio Search offers unrivalled comfort of use.\r\nâ€¢ LEADER Sentry was designed to warn rescuer workers in the event of the sur rounding structures being unstable and threatening to collapse. It provides indis pensable additional safety for rescue teams, helping them concentrate on their rescue work in the rubble.', 'p_21.jpg'),
(22, 'OPTIX', 'OPTIX Co is the first firm in Bulgaria and one of the first companies in Europe that has successfully implemented a quintuple integrated management system, including the following international standards: ISO 9001:2008 â€“ Quality management, ISO 27001:2005 â€“ Information Security, ISO 14001: 2005 â€“ Environmental Protection, AQAP 2110 â€“ Military Standard of NATO, OHSAS 18001:2007 â€“ Labour health and safety. OPTIX Co is one of the first companies in Bulgaria to obtain a certification in accordance with NATO standards AQAP 2110. The company is awarded the manufacturer/ supplier NCAGE code 0001BU in the NATO codification system.\r\n\r\nEstablished in 1998 as a 100% private company OPTIX Co specializes in the design and manufacturing of optical, opto-mechanical and opto-electronic assemblies and devices for military and law enforcement applications. Competently applying the modern technologies, OPTIX Co executes the entire production cycle â€“ from design and implementation of prototypes to serial production of components, assemblies and devices.\r\nThe production meets all the requirements of European and world standards â€“ DIN, MIL, ISO, BS. The contemporary design, ergonomics and high technical characteristics of the products are comparable to the best world samples and excite a well-founded interest of the leading companies in the optical, medical and defense industries.\r\n\r\nOPTIX Co has implemented a CAD/CAM system for design, analysis, development and testing of devices in a united electronic environment. The company has integrated an ERP â€“ system for business resource management of all operational levels â€“ supply, production, sales, finance and accounting.\r\nmechanics and complete system integration, the company is worthy and desirable partner for different high-tech projects.', 'p_22.jpg'),
(23, 'PIONER BOAT', 'Pioner\r\nNorwegian boats for 50 years!\r\nSOLID\r\nA Pioner boat can take rough treatment, are userfriendly, need little or no maintenance and has a long life - these qualities has made Pioner boats popular all over the world!\r\nPioner boats are rotational moulded in Polyethylene â€“ a strong, durable and UV stable material. The boats are moulded in one piece and can withstand roughest of treatment, extreme temperatures from the artic cold to tropical temperatures and sunlight â€“ everything without being damaged. \r\nPIONER - Norwegian boats built for rough treatment.\r\n\r\nQUALITY\r\nPioner boats are produced under the supervision of Det Norske Veritas (DNV). DNV control, test and approve all Pioner models in accordance with CE recreational craft directive (RCD) regulations.\r\nCipax AS is ISO-9001 and ISO-14001 accredited and with our strict internal procedures for the production combined with the knowledge of our skilled workers we secure first class quality of the Pioner boats!\r\nPIONER - approved by Det Norske Veritas, an extra security for our customers!\r\n\r\nENVIRONMENTAL FRIENDLY\r\nPolyethylene is an enviromental friendly material and 100 % recyclable. All waste material from the production is re-used in new products as seatboxes for the boats. The production method itself is also kind to the environment with no spill to the environment.\r\n\r\nPIONER - the enviromental choice.', 'p_23.jpg'),
(24, 'RADIOBARRIER', 'A Barrier for Intruders\r\nThe RADIOBARRIER Autonomous Wireless Intrusion Detection System offered by Polus Europe, s.r.o. has the following features:\r\nâ€¢ wireless technology of intruder detection and transmission of alarm information via two-way secure radio channel with a guar anteed delivery of alarm messages to stationary and portable receiving units;\r\nâ€¢ ability to deploy and remove the detection line on any terrain (including mountains) in literary a few hours due to its light weight, small size and simplicity of installation/maintenance;\r\nâ€¢ autonomous protection of extended terrain sections and perimeters without replacing the batteries â€“ up to 5 years(!);\r\nâ€¢ economy on the cost of design and installation work and materials as no power supply and communication cables nor engineering preparation of the terrain are required;\r\nâ€¢ protection of facilities not allowing for wire-based solutions.\r\nThe RADIOBARRIER Wireless Intrusion Detection System is used by defense and law enforcement agencies, security services of oil and gas companies and facilities of special importance. Has been in serial production since 2001.\r\nThe System can be configured to any clientâ€™s requirements and application conditions. The System designers have invested a lot of effort to make the perimeter protection easier, faster and more affordable..', 'p_24.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `np_pd_banner`
--

CREATE TABLE `np_pd_banner` (
  `id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `np_pd_banner`
--

INSERT INTO `np_pd_banner` (`id`, `image`) VALUES
(1, 'pd_main01.jpg'),
(2, 'pd_main02.jpg'),
(3, 'pd_main03.jpg'),
(4, 'pd_main04.jpg'),
(5, 'pd_main01.jpg'),
(6, 'pd_main02.jpg'),
(7, 'pd_main03.jpg'),
(8, 'pd_main04.jpg'),
(9, 'pd_main01.jpg'),
(10, 'pd_main04.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `np_pd_preview`
--

CREATE TABLE `np_pd_preview` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `np_pd_preview`
--

INSERT INTO `np_pd_preview` (`id`, `title`, `image`) VALUES
(1, 'PREFABRICATED KNOCK DOWN BUILDING', 'pd_tb01.jpg'),
(2, 'POWER GENERATOR', 'pd_tb02.jpg'),
(3, 'FIBERGLASS PONTOON', 'pd_tb03.jpg'),
(4, 'WATER PUSHER WITH DIESEL ENGINES MOUNTEDON A STEEL RAFT', 'pd_tb04.jpg'),
(5, 'TOWING PUMP WITH DIESEL ENGINE', 'pd_tb05.jpg'),
(6, 'TOWING CENTRIFUGAL PUMPS', 'pd_tb06.jpg'),
(7, 'AMMUNITION PALLET', 'pd_tb07.jpg'),
(8, 'THE SATELLITE GPS INSTRUMENT', 'pd_tb08.jpg'),
(9, 'VHF/FM  HAND-HELD RADIO TRANSCEIVER', 'pd_tb09.jpg'),
(10, 'OBSERVATION CAMERA', 'pd_tb10.jpg'),
(11, 'PREFABRICATED HELICOPTER PAD PANEL', 'pd_tb11.jpg'),
(12, 'MULTI-PURPOSE VEHICLE ATV', 'pd_tb12.jpg'),
(13, 'WATER PUSHER WITH DIESEL ENGINES MOUNTEDON A STEEL RAFT', 'pd_tb13.jpg'),
(14, 'SYNTHETIC FIBER SANDBAGS', 'pd_tb14.jpg'),
(15, 'STEEL PARTITION PANE', 'pd_tb15.jpg'),
(16, 'LAND BUOY', 'pd_tb16.jpg'),
(17, 'RAYTHEON BBN TECHNOLOGIES', 'pd_tb17.jpg'),
(18, 'PHAROBIT', 'pd_tb18.jpg'),
(19, 'WATERGEN', 'pd_tb19.jpg'),
(20, 'THE GARBAGE COLLECTOR', 'pd_tb20.jpg'),
(21, 'LEADER GROUPE', 'pd_tb21.jpg'),
(22, 'OPTIX', 'pd_tb22.jpg'),
(23, 'PIONER BOAT', 'pd_tb23.jpg'),
(24, 'RADIOBARRIER', 'pd_tb24.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `np_product`
--

CREATE TABLE `np_product` (
  `id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `detail` text CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `np_product`
--

INSERT INTO `np_product` (`id`, `title`, `detail`) VALUES
(1, 'PREFABRICATED KNOCK DOWN BUILDING', 'Prefabricated knock down building. The structure is designed to be strong, robust, up to standard with a lifespan over 15 years. There is built-in insulation of roof and wall, energy saving, water protection, wind-blowing into building protection, convenient and time saving. The nature of application of prefabricated knock down building is suitable for offices premise, bedrooms, bathrooms, toilets, security guard booth and so on. Our past performance is entrusted by Internal Security Operations Command 4th Region Front Command, to install prefabricated knock down buildings in the area of the 3 southern provinces (Yala, Pattani and Narathiwat) and the delivery of prefabricated knock down buildings project for the operations base of Thai / Darfur in the Republic of the Sudan (UNAMID).'),
(2, 'POWER GENERATOR', 'Power generator plays a vital role in the place where there is a continuing demand for electricity in the work of data storage, works in various manufacturing processes including disaster prevention and mitigation such as flood, fire, blackout due to power system failure. We have a sound-proof generator that can keep the sound and noise of the generator. It operates quietly and is resistant to the sun and rain which is very suitable for working at the site or installation outdoor, easy maintenance and have full set of damage protection system, such as excessive heat automatic cut-off system or lock-off system when the lubricant oil cannot be pumped up. The product characteristics meet the standard criteria. The installation system is controlled by a team of experts and engineers. Our generator passes the test of government agencies and we have delivered to and provided installation system of our generator for the Military Development Command Unit, Royal Thai Armed Forces Headquarters and Sirindhorn Army Camp for the United Nations Combined Forces mission - UN / UNAMID Thai / Darfur at the Republic of the Sudan.'),
(3, 'FIBERGLASS PONTOON', 'Fiberglass pontoon is a very popular and very useful water vehicle. It is strong, resistant to sunlight, rain, heat and chemical , colorful, smooth and has polished external surface, can load 6-7 persons, hydrophobic, easily use due to lightweight and flexible when it bumps will not lose its original shape. During the immense flood in Bangkok last year, the company donated fiberglass pontoon with mounted kits to the Military Development Command Unit, in order to help flood victims in areas that are hardly to reach, more efficiently and timely.'),
(4, 'WATER PUSHER WITH DIESEL ENGINES MOUNTEDON A STEEL RAFT', 'It is pushed by large propeller. The propellers can be adjusted according to the depth of the water with mounted kit for equipping with Steel pontoon raft. Engine and pusher installation are in the same package and it can be removed and reinstalled. Diesel emission is received EPA TIER2 toxic control standard, which is ideal for pushing water to flow faster to speed up the drainage and alleviate flooding problem and efficient irrigation during rainy season, the flow down of water from the north and high sea water tide. We adhere to the principle of business operation that meet the requirements of customers and apply in various different situations. As such, we have gained the trust from the Military Development Command Unit, Royal Thai Armed Forces Headquarters.'),
(5, 'TOWING PUMP WITH DIESEL ENGINE', 'It is pushed by large propeller. The propellers can be adjusted according to the depth of the water with mounted kit for equipping with Steel pontoon raft. Engine and pusher installation are in the same package and it can be removed and reinstalled. Diesel emission is received EPA TIER2 toxic control standard, which is ideal for pushing water to flow faster to speed up the drainage and alleviate flooding problem and efficient irrigation during rainy season, the flow down of water from the north and high sea water tide. We adhere to the principle of business operation that meet the requirements of customers and apply in various different situations. As such, we have gained the trust from the Military Development Command Unit, Royal Thai Armed Forces Headquarters.'),
(6, 'TOWING CENTRIFUGAL PUMPS', 'The pump is widely used because of its suitability for pumping large volume of water. The body and impeller are cast iron., the shaft is stainless steel according to international standards. Engine and pump mounted on the same steel base and are firmly placed on the frame of the towing trailer. The installation system is controlled by a team of engineers and technical experts. All the functional performance must be tested for the effectiveness of application for those who have suffered from flood by efficient draining of water out of the flood areas, canal or areas affected by flooding or used in activities of disaster prevention and mitigation.'),
(7, 'AMMUNITION PALLET', 'The products we supply to the unit is for ammunition storage support purpose . A plastic pallet with extra impact resistance. lightweight, easy to clean and not absorb water. It can be used while raining without water and are comply with GMP and HACCP standards. No problem with termite, insecticide, resistance in all climatic conditions, resistance to moisture, rust, nails and splinters. Resistance to chemicals and pH together with the ultra-viloet in the sun light. Resistance to hot and cold temperatures and is available in any standard reference. There is anti-slip rubber sheet provided while moving. It is therefore fulfill the purpose of ammunition support storage purpose of Armory, Ammunition Battalion, 3rd Combat Auxiliary Command.'),
(8, 'THE SATELLITE GPS INSTRUMENT', 'It is an instrument to coordinate on a global positioning through satellite system, using GPS with high accuracy of locating the positions with the LCD screen and on-screen light. It can show the coordinated position in both UTM and Latitude / Longitude Coordinate system and can be used with Thailand geography as well. It can navigate to the desired position and can show the distance and direction. It can also plot the coordinates and directions. The body case is durable, waterproof, battery power, USB ports for connecting to a computer and can calculate the target area. We have delivered the satellite GPS instruments to the 3rd Army Area for the operation. The modernization of the instrument makes the operation become easier and faster.'),
(9, 'VHF/FM  HAND-HELD RADIO TRANSCEIVER', 'VHF / FM hand-held radio transceiver is used with DC rechargeable battery. The instrument is very durable and is not easily damaged. The built-in receiver-transmitter and electronic circuits and components are in comply with EIA standard. It can send transmission either by sound or by vibration,POWER SAVE system to save battery power.Body and battery is in compact size, light weight, suitable for the application of "Mobile operation". The feature of product matches requirement of the agency. The product has been tested until it works very well and then are delivered to the 3rd Army Area for the project of effective protection and operation development in the border area of the three southern-border provinces at Office of Peace Reinforcement for the mission to suppress insurgency and for the benefits in various activities.'),
(10, 'OBSERVATION CAMERA', 'The unrest in the three southern border provinces deterioriate the nation''s economic instability. social problems. safety of peoples'' lives and education because education is the only thing that can develop nation to prosper and survive. All parties need to cooperate to solve these problems no matter it is government or public agencies. The company is a part of it to help solve these problems by supplying the product of efficient features and high performance to support the organizations such as: \r\n\r\nIndividual Observation Night camera. It is used for surveillance and performs at night. It is a light enhancement camera and can be used for surveillance and armed snipers. It can see in the distance with high resolution in disorder of atmosphere movement. The Infrared light helps easy reading a map in the dark with a Face Mask which can be worn and removed easily. It can be adjusted to fit the size of the face and head. It has options to equip with a helmet. The camera can adjust the distance from the eye properly when it is not in use. It is suitable for security patrols in different areas.\r\n\r\nThermal radiation detection camera uncooled system. It is the type of camera that develop an image from mobile radiation used for surveillance or monitoring a target, people or vehicles in dusty, hazy smoky conditions, both in day time and night time. The image is developed by radiation of uncooled system which is a technology widely used because of its low cost. The camera can operate at room temperature. As it is not a cooling system, there is no sound. The radiation detector is within the range between 3-14 microns and is sensitive to variation in temperature. No noise while it is working. Operational performance can detect a target in the most darkness place at night. Both types of products receive international standards.'),
(11, 'PREFABRICATED HELICOPTER PAD PANEL', 'It is a prefabricated knock down and movable pad panel, consisting of hexagonal-shape of pad panel put together in the target area. It can support a maximum weight of 44 tons and is made from a material that can withstand high impact. It is resistant to chemicals such as oil, grease and petroleum products, very convenient to install. It is commonly used as a base or helipad in the up - down - park in the operational areas which is very hardly to reach.'),
(12, 'MULTI-PURPOSE VEHICLE ATV', 'The engine is 1 cylinder, 4-stroke air-cooled systems, electric fans, forward and reverse gears. Front and rear wheels are hydraulic disc brakes, the tires are Low Pressure texture type endurable for all surface condition and has backup system with pull starter. It emphasizes on the use of wild rugged wading through mud purpose and can load heavy stuffs. this SUV with 4-wheel ATV product is certified to international standards. It is suitable for field work'),
(13, 'WATER PUSHER WITH DIESEL ENGINES MOUNTEDON A STEEL RAFT', 'A woven plastic sandbag. It is made of synthetic woven fabric sewn in dark green tape and has an upper cloth, a lower cloth, two lateral strengthened strips homogeneously throughout the material without seams on the 2 sides while the bottom of the bag is sewn by Multi Filament Yarn Polyester The mouth of the bag is fasten by synthetic nylon yarn and has composite components feature of UV protection and passed the light meter test. Therefore it is durable to every operating conditions. It is used to fill sand, soil or other material contained in a similar manner. Our products have passed the test of reliable testing institute of textile. As such, we have delivered a lot of this sandbag to Internal Security Operations Command, 4th Region, Front Commander to help and protect the flood in various area and to alleviate the disaster.'),
(14, 'SYNTHETIC FIBER SANDBAGS', 'It is the high tensile steel wire covered with spines which cannot pulled out by hands. The wire can stretch out into spine mesh and is easy to store after usage. The spines are sharp and hard to squeeze by a hand or fold, bend, rust preventive coating materials. Because of the high performance of the type of wire, it is applied to protect life and property for dwellings and is used as a protective barrier at the time of war, protest and revolution, or even using as a protection for safety of public, landmarks, or protect the intrusion along the borders between countries, blocking the path or blocking point to search for drug. Our products are delivered to the Operations Division of the 3rd Army Area for using in many military operations.'),
(15, 'STEEL PARTITION PANE', 'The steel partition panel for traffic equipped with lights and siren to the panel. It is made from high standard steel size and hase strength and durability for using in the work field to separate certain area or status of operations, such as traffic work, construction work, parking building, zoning in operation of work and many other activities.'),
(16, 'LAND BUOY', 'It is a land buoy for vehicle. One set consists of 4 chained spike fences. Spike fence is a 2” thickness angle bar. It is very strong and durable and can lift the vehicle high above the ground of about 87 cm. It can be moved easily as the bottom base is equipped with rubber wheels without noise. It is used as a trap to stop all kinds of vehicles that are stolen, break through the checkpoint and sabotage in various landmarks.'),
(17, 'RAYTHEON BBN TECHNOLOGIES', 'updating'),
(18, 'PHAROBIT', 'updating'),
(19, 'WATERGEN', 'updating'),
(20, 'THE GARBAGE COLLECTOR', 'updating'),
(21, 'LEADER GROUPE', 'Designed and built to locate buried victims, the Search & Rescue range includes 3 complementary devices intended for search and rescue specialists.\r\n• Audio ResQ is designed to detect the presence of victims and pinpoint them with great accuracy even in rubble. By means of its seismic sensors, it is capable of detecting the least vibration given off by a conscious victim: scratching, voices, even under severe utilization conditions typical of natural catastrophes.\r\n• Visio Search, developed to visualise and communicate with victims, is used for evaluating the necessary assistance and emergency care. With an intuitive man/machine interface, a large colour monitor and alightweight telescopic boom, Visio Search offers unrivalled comfort of use.\r\n• LEADER Sentry was designed to warn rescuer workers in the event of the sur rounding structures being unstable and threatening to collapse. It provides indis pensable additional safety for rescue teams, helping them concentrate on their rescue work in the rubble.'),
(22, 'OPTIX', 'OPTIX Co is the first firm in Bulgaria and one of the first companies in Europe that has successfully implemented a quintuple integrated management system, including the following international standards: ISO 9001:2008 – Quality management, ISO 27001:2005 – Information Security, ISO 14001: 2005 – Environmental Protection, AQAP 2110 – Military Standard of NATO, OHSAS 18001:2007 – Labour health and safety. OPTIX Co is one of the first companies in Bulgaria to obtain a certification in accordance with NATO standards AQAP 2110. The company is awarded the manufacturer/ supplier NCAGE code 0001BU in the NATO codification system.\r\n\r\nEstablished in 1998 as a 100% private company OPTIX Co specializes in the design and manufacturing of optical, opto-mechanical and opto-electronic assemblies and devices for military and law enforcement applications. Competently applying the modern technologies, OPTIX Co executes the entire production cycle – from design and implementation of prototypes to serial production of components, assemblies and devices.\r\nThe production meets all the requirements of European and world standards – DIN, MIL, ISO, BS. The contemporary design, ergonomics and high technical characteristics of the products are comparable to the best world samples and excite a well-founded interest of the leading companies in the optical, medical and defense industries.\r\n\r\nOPTIX Co has implemented a CAD/CAM system for design, analysis, development and testing of devices in a united electronic environment. The company has integrated an ERP – system for business resource management of all operational levels – supply, production, sales, finance and accounting.\r\nmechanics and complete system integration, the company is worthy and desirable partner for different high-tech projects.'),
(23, 'PIONER BOAT', 'Pioner\r\nNorwegian boats for 50 years!\r\nSOLID\r\nA Pioner boat can take rough treatment, are userfriendly, need little or no maintenance and has a long life - these qualities has made Pioner boats popular all over the world!\r\nPioner boats are rotational moulded in Polyethylene – a strong, durable and UV stable material. The boats are moulded in one piece and can withstand roughest of treatment, extreme temperatures from the artic cold to tropical temperatures and sunlight – everything without being damaged. \r\nPIONER - Norwegian boats built for rough treatment.\r\n\r\nQUALITY\r\nPioner boats are produced under the supervision of Det Norske Veritas (DNV). DNV control, test and approve all Pioner models in accordance with CE recreational craft directive (RCD) regulations.\r\nCipax AS is ISO-9001 and ISO-14001 accredited and with our strict internal procedures for the production combined with the knowledge of our skilled workers we secure first class quality of the Pioner boats!\r\nPIONER - approved by Det Norske Veritas, an extra security for our customers!\r\n\r\nENVIRONMENTAL FRIENDLY\r\nPolyethylene is an enviromental friendly material and 100 % recyclable. All waste material from the production is re-used in new products as seatboxes for the boats. The production method itself is also kind to the environment with no spill to the environment.\r\n\r\nPIONER - the enviromental choice.'),
(24, 'RADIOBARRIER', 'A Barrier for Intruders\r\nThe RADIOBARRIER Autonomous Wireless Intrusion Detection System offered by Polus Europe, s.r.o. has the following features:\r\n• wireless technology of intruder detection and transmission of alarm information via two-way secure radio channel with a guar anteed delivery of alarm messages to stationary and portable receiving units;\r\n• ability to deploy and remove the detection line on any terrain (including mountains) in literary a few hours due to its light weight, small size and simplicity of installation/maintenance;\r\n• autonomous protection of extended terrain sections and perimeters without replacing the batteries – up to 5 years(!);\r\n• economy on the cost of design and installation work and materials as no power supply and communication cables nor engineering preparation of the terrain are required;\r\n• protection of facilities not allowing for wire-based solutions.\r\nThe RADIOBARRIER Wireless Intrusion Detection System is used by defense and law enforcement agencies, security services of oil and gas companies and facilities of special importance. Has been in serial production since 2001.\r\nThe System can be configured to any client’s requirements and application conditions. The System designers have invested a lot of effort to make the perimeter protection easier, faster and more affordable..');

-- --------------------------------------------------------

--
-- Table structure for table `np_users`
--

CREATE TABLE `np_users` (
  `u_id` int(11) NOT NULL,
  `u_username` varchar(20) NOT NULL,
  `u_pwd` varchar(10) NOT NULL DEFAULT '888999',
  `u_login` int(11) NOT NULL DEFAULT '2',
  `u_loingtimes` int(11) NOT NULL DEFAULT '0',
  `u_lastlogin` datetime DEFAULT NULL,
  `u_created` datetime NOT NULL,
  `u_modify` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `np_users`
--

INSERT INTO `np_users` (`u_id`, `u_username`, `u_pwd`, `u_login`, `u_loingtimes`, `u_lastlogin`, `u_created`, `u_modify`) VALUES
(1, '000', '888', 999, 21, '2015-03-03 21:55:12', '2015-03-03 21:55:12', '2015-03-03 21:55:12'),
(2, '001', 'PING', 10, 8, '2016-05-23 19:26:43', '2016-05-08 10:46:32', '2016-05-08 10:46:32'),
(3, '002', 'songphol', 2, 1, '2016-05-06 11:26:24', '2016-05-06 11:26:24', '2016-05-06 11:26:24'),
(4, '003', 'songphol1', 2, 1, '2016-05-04 10:33:58', '2016-05-04 10:33:58', '2016-05-04 10:33:58'),
(5, '004', 'songphol12', 5, 0, NULL, '2015-04-25 13:22:04', '2015-04-25 13:22:04'),
(6, '005', 'songphol12', 5, 1, '2015-04-25 13:50:45', '2015-04-25 13:50:45', '2015-04-25 13:50:45'),
(7, '006', 'songphol', 5, 1, '2015-05-04 22:17:26', '2015-05-04 22:17:26', '2015-05-04 22:17:26'),
(8, '007', 'ETEC', 2, 4, '2015-11-20 21:16:38', '2016-04-28 15:58:00', '2016-04-28 15:58:00'),
(9, '008', 'songphol1', 2, 1, '2015-05-28 17:02:54', '2015-05-28 17:02:54', '2015-05-28 17:02:54'),
(10, '009', 'songphol12', 2, 2, '2015-05-30 10:58:31', '2015-05-30 10:58:31', '2015-05-30 10:58:31'),
(11, '010', 'mint', 2, 2, '2013-07-03 08:57:23', '2013-07-03 08:57:23', '2013-07-03 08:57:23'),
(12, '011', 'watergen', 2, 1, '2014-04-02 10:15:24', '2014-04-02 10:15:24', '2014-04-02 10:15:24'),
(13, '012', 'nic', 5, 4, '2015-03-13 22:36:38', '2015-03-13 22:36:38', '2015-03-13 22:36:38'),
(14, '013', 'chemring', 5, 2, '2016-04-28 16:09:54', '2016-04-28 16:09:54', '2016-04-28 16:09:54'),
(15, '014', 'rick', 2, 1, '2015-03-12 07:47:30', '2015-03-12 07:47:30', '2015-03-12 07:47:30'),
(16, '015', 'kurt', 2, 1, '2015-03-10 01:45:50', '2015-03-10 01:45:50', '2015-03-10 01:45:50'),
(17, '016', 'pkeil', 2, 1, '2015-03-10 03:30:47', '2015-03-10 03:30:47', '2015-03-10 03:30:47'),
(18, '017', 'jim', 2, 2, '2015-03-24 18:40:47', '2015-03-24 18:40:47', '2015-03-24 18:40:47'),
(19, '018', 'royana', 2, 0, NULL, '2015-04-09 20:23:28', '2015-04-09 20:23:28'),
(20, '019', 'bravo', 3, 3, '2015-06-08 03:07:11', '2015-06-08 03:07:11', '2015-06-08 03:07:11'),
(21, '020', 'nardi', 2, 1, '2015-06-23 15:39:34', '2015-06-23 15:39:34', '2015-06-23 15:39:34'),
(22, '021', '888999', 2, 0, NULL, '2012-09-30 11:36:46', '2012-09-30 11:36:46'),
(23, '022', '888999', 2, 0, NULL, '2012-09-30 11:36:46', '2012-09-30 11:36:46'),
(24, '023', '888999', 2, 0, NULL, '2012-09-30 11:36:46', '2012-09-30 11:36:46'),
(25, '024', '888999', 2, 0, NULL, '2012-09-30 11:36:46', '2012-09-30 11:36:46'),
(26, '025', '888999', 2, 0, NULL, '2012-09-30 11:36:46', '2012-09-30 11:36:46'),
(27, '026', '888999', 2, 0, NULL, '2012-09-30 11:36:46', '2012-09-30 11:36:46'),
(28, '027', '888999', 2, 0, NULL, '2012-09-30 11:36:46', '2012-09-30 11:36:46'),
(29, '028', '888999', 2, 0, NULL, '2012-09-30 11:36:46', '2012-09-30 11:36:46'),
(30, '029', '888999', 2, 0, NULL, '2012-09-30 11:36:46', '2012-09-30 11:36:46'),
(31, '030', '888999', 2, 1, '2012-10-15 12:44:41', '2012-10-15 12:44:41', '2012-10-15 12:44:41'),
(32, '031', '888999', 2, 0, NULL, '2012-09-30 11:36:46', '2012-09-30 11:36:46'),
(33, '032', '888999', 2, 0, NULL, '2012-09-30 11:36:46', '2012-09-30 11:36:46'),
(34, '033', 'dive', 5, 5, '2013-03-27 16:01:16', '2013-03-27 16:01:16', '2013-03-27 16:01:16'),
(35, '034', 'safran', 2, 0, NULL, '2012-11-07 13:14:44', '2012-11-07 13:14:44'),
(36, '035', 'pionerboat', 2, 0, NULL, '2012-10-15 12:51:02', '2012-10-15 12:51:02'),
(37, '036', '888999', 2, 0, NULL, '2012-09-30 11:36:46', '2012-09-30 11:36:46'),
(38, '037', '888999', 2, 0, NULL, '2012-09-30 11:36:46', '2012-09-30 11:36:46'),
(39, '038', '888999', 2, 0, NULL, '2012-09-30 11:36:46', '2012-09-30 11:36:46'),
(40, '039', '888999', 2, 0, NULL, '2012-09-30 11:36:46', '2012-09-30 11:36:46'),
(41, '040', '888999', 2, 0, NULL, '2012-09-30 11:36:46', '2012-09-30 11:36:46'),
(42, '041', '888999', 2, 0, NULL, '2012-09-30 11:36:46', '2012-09-30 11:36:46'),
(43, '042', '888999', 2, 0, NULL, '2012-09-30 11:36:46', '2012-09-30 11:36:46'),
(44, '043', '888999', 2, 0, NULL, '2012-09-30 11:36:46', '2012-09-30 11:36:46'),
(45, '044', '888999', 2, 0, NULL, '2012-09-30 11:36:46', '2012-09-30 11:36:46'),
(46, '045', '888999', 2, 0, NULL, '2012-09-30 11:36:46', '2012-09-30 11:36:46'),
(47, '046', '888999', 2, 0, NULL, '2012-09-30 11:36:46', '2012-09-30 11:36:46'),
(48, '047', '888999', 2, 0, NULL, '2012-09-30 11:36:46', '2012-09-30 11:36:46'),
(49, '048', '888999', 2, 0, NULL, '2012-09-30 11:36:46', '2012-09-30 11:36:46'),
(50, '049', '888999', 2, 0, NULL, '2012-09-30 11:36:46', '2012-09-30 11:36:46'),
(51, '050', '888999', 2, 1, '2012-10-19 09:32:03', '2012-10-19 09:32:03', '2012-10-19 09:32:03'),
(52, '051', '888999', 2, 0, NULL, '2012-09-30 11:36:46', '2012-09-30 11:36:46'),
(53, '052', '888999', 2, 0, NULL, '2012-09-30 11:36:46', '2012-09-30 11:36:46'),
(54, '053', '888999', 2, 0, NULL, '2012-09-30 11:36:46', '2012-09-30 11:36:46'),
(55, '054', '888999', 2, 0, NULL, '2012-09-30 11:36:46', '2012-09-30 11:36:46'),
(56, '055', 'pionerboat', 2, 0, NULL, '2012-11-10 15:29:06', '2012-11-10 15:29:06'),
(57, '056', '12', 2, 2, '2013-03-23 22:34:50', '2013-03-23 22:34:50', '2013-03-23 22:34:50'),
(58, '057', '13', 2, 2, '2013-04-11 16:13:44', '2013-04-11 16:13:44', '2013-04-11 16:13:44'),
(59, '058', '14', 2, 2, '2013-04-12 17:29:08', '2013-04-12 17:29:08', '2013-04-12 17:29:08'),
(60, '059', '15', 2, 0, NULL, '2013-03-23 16:25:29', '2013-03-23 16:25:29'),
(61, '060', 'tim', 1, 0, NULL, '2013-03-26 13:04:58', '2013-03-26 13:04:58'),
(62, '061', 'raf', 2, 0, NULL, '2013-04-02 19:57:17', '2013-04-02 19:57:17'),
(63, '062', '888999', 2, 0, NULL, '2012-09-30 11:36:46', '2012-09-30 11:36:46'),
(64, '063', '888999', 2, 0, NULL, '2012-09-30 11:36:46', '2012-09-30 11:36:46'),
(65, '064', '888999', 2, 0, NULL, '2012-09-30 11:36:46', '2012-09-30 11:36:46'),
(66, '065', '888999', 2, 0, NULL, '2012-09-30 11:36:46', '2012-09-30 11:36:46'),
(67, '066', '888999', 2, 0, NULL, '2012-09-30 11:36:46', '2012-09-30 11:36:46'),
(68, '067', '888999', 2, 1, '2013-03-19 11:17:12', '2013-03-19 11:17:12', '2013-03-19 11:17:12'),
(69, '068', '888999', 2, 0, NULL, '2012-09-30 11:36:46', '2012-09-30 11:36:46'),
(70, '069', '888999', 2, 0, NULL, '2012-09-30 11:36:46', '2012-09-30 11:36:46'),
(71, '070', '888999', 2, 0, NULL, '2012-09-30 11:36:46', '2012-09-30 11:36:46'),
(72, '071', '888999', 2, 1, '2012-11-24 14:32:48', '2012-11-24 14:32:48', '2012-11-24 14:32:48'),
(73, '072', '888999', 2, 0, NULL, '2012-09-30 11:36:46', '2012-09-30 11:36:46'),
(74, '073', '888999', 2, 1, '2012-11-24 13:07:02', '2012-11-24 13:07:02', '2012-11-24 13:07:02'),
(75, '074', '888999', 2, 0, NULL, '2012-09-30 11:36:46', '2012-09-30 11:36:46'),
(76, '075', '888999', 2, 0, NULL, '2012-09-30 11:36:46', '2012-09-30 11:36:46'),
(77, '076', '888999', 2, 0, NULL, '2012-09-30 11:36:46', '2012-09-30 11:36:46'),
(78, '077', '888999', 2, 1, '2012-10-31 15:16:46', '2012-10-31 15:16:46', '2012-10-31 15:16:46'),
(79, '078', '888999', 2, 0, NULL, '2012-09-30 11:36:46', '2012-09-30 11:36:46'),
(80, '079', '888999', 2, 0, NULL, '2012-09-30 11:36:46', '2012-09-30 11:36:46'),
(81, '080', 'quantum', 2, 0, NULL, '2012-10-29 13:34:06', '2012-10-29 13:34:06'),
(82, '081', '888999', 2, 0, NULL, '2012-09-30 11:36:46', '2012-09-30 11:36:46'),
(83, '082', '888999', 2, 0, NULL, '2012-09-30 11:36:46', '2012-09-30 11:36:46'),
(84, '083', '888999', 2, 0, NULL, '2012-09-30 11:36:46', '2012-09-30 11:36:46'),
(85, '084', '888999', 2, 0, NULL, '2012-09-30 11:36:46', '2012-09-30 11:36:46'),
(86, '085', '888999', 2, 1, '2014-01-31 09:52:37', '2014-01-31 09:52:37', '2014-01-31 09:52:37'),
(87, '086', 'tim', 2, 1, '2013-03-21 21:46:30', '2013-03-21 21:46:30', '2013-03-21 21:46:30'),
(88, '087', 'cris', 2, 2, '2013-03-20 12:18:42', '2013-03-20 12:18:42', '2013-03-20 12:18:42'),
(89, '088', 'boat', 4, 4, '2013-02-27 16:02:07', '2013-02-27 16:02:07', '2013-02-27 16:02:07'),
(90, '089', '888999', 2, 0, NULL, '2012-09-30 11:36:46', '2012-09-30 11:36:46'),
(91, '090', 'sontek', 2, 0, NULL, '2012-11-12 09:01:20', '2012-11-12 09:01:20'),
(92, '091', 'insulation', 2, 1, '2013-03-14 21:06:55', '2013-03-14 21:06:55', '2013-03-14 21:06:55'),
(93, '092', 'isofloc', 2, 0, NULL, '2013-03-14 17:05:14', '2013-03-14 17:05:14'),
(94, '093', 'insulation', 2, 0, NULL, '2013-03-14 16:48:08', '2013-03-14 16:48:08'),
(95, '094', 'm200', 2, 1, '2013-03-14 22:31:22', '2013-03-14 22:31:22', '2013-03-14 22:31:22'),
(96, '095', 'detector', 19, 8, '2013-03-16 04:25:31', '2013-03-16 04:25:31', '2013-03-16 04:25:31'),
(97, '096', 'david', 2, 2, '2013-03-05 02:07:32', '2013-03-05 02:07:32', '2013-03-05 02:07:32'),
(98, '097', 'margaret', 2, 1, '2013-02-20 23:22:05', '2013-02-20 23:22:05', '2013-02-20 23:22:05'),
(99, '098', 'katie', 2, 2, '2014-11-04 08:59:25', '2014-11-04 08:59:25', '2014-11-04 08:59:25'),
(100, '099', 'peter', 1, 1, '2013-05-17 21:28:24', '2013-05-17 21:28:24', '2013-05-17 21:28:24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `np_admin`
--
ALTER TABLE `np_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `np_csr`
--
ALTER TABLE `np_csr`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `np_csr_banner`
--
ALTER TABLE `np_csr_banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `np_csr_preview`
--
ALTER TABLE `np_csr_preview`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `np_demon`
--
ALTER TABLE `np_demon`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `np_demon_banner`
--
ALTER TABLE `np_demon_banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `np_demon_preview`
--
ALTER TABLE `np_demon_preview`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `np_home_banner`
--
ALTER TABLE `np_home_banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `np_img_csr`
--
ALTER TABLE `np_img_csr`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `np_img_demon`
--
ALTER TABLE `np_img_demon`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `np_img_product`
--
ALTER TABLE `np_img_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `np_pd_banner`
--
ALTER TABLE `np_pd_banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `np_pd_preview`
--
ALTER TABLE `np_pd_preview`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `np_product`
--
ALTER TABLE `np_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `np_users`
--
ALTER TABLE `np_users`
  ADD PRIMARY KEY (`u_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `np_admin`
--
ALTER TABLE `np_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `np_csr`
--
ALTER TABLE `np_csr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `np_csr_banner`
--
ALTER TABLE `np_csr_banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `np_csr_preview`
--
ALTER TABLE `np_csr_preview`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `np_demon`
--
ALTER TABLE `np_demon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `np_demon_banner`
--
ALTER TABLE `np_demon_banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `np_demon_preview`
--
ALTER TABLE `np_demon_preview`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `np_home_banner`
--
ALTER TABLE `np_home_banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `np_img_csr`
--
ALTER TABLE `np_img_csr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `np_img_demon`
--
ALTER TABLE `np_img_demon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `np_img_product`
--
ALTER TABLE `np_img_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `np_pd_banner`
--
ALTER TABLE `np_pd_banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `np_pd_preview`
--
ALTER TABLE `np_pd_preview`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `np_product`
--
ALTER TABLE `np_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `np_users`
--
ALTER TABLE `np_users`
  MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
