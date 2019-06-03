-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 17, 2018 at 04:42 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `oopproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_reg`
--

CREATE TABLE `admin_reg` (
  `admin_ID` int(11) NOT NULL,
  `admin_email` varchar(80) NOT NULL,
  `ad_name` varchar(60) NOT NULL,
  `ad_uname` varchar(40) NOT NULL,
  `ad_pw` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_reg`
--

INSERT INTO `admin_reg` (`admin_ID`, `admin_email`, `ad_name`, `ad_uname`, `ad_pw`) VALUES
(1, 'suzukigs125@gmail.com', 'admin', 'Sahan', 'admin1234');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `cmmnt_ID` int(11) NOT NULL,
  `game_ID` int(11) NOT NULL,
  `name` varchar(60) DEFAULT NULL,
  `email` varchar(80) DEFAULT NULL,
  `message` varchar(600) DEFAULT NULL,
  `dte_cmmnt` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`cmmnt_ID`, `game_ID`, `name`, `email`, `message`, `dte_cmmnt`) VALUES
(31, 16, 'Sahan Jayawardena', 'sahanlakshitha1996@hotmail.com', 'Good Graphics							    ', '2018-05-14'),
(32, 9, 'Sahan Illandara', 'sahani@gmail.com', 'Game with no lags							    ', '2018-05-14'),
(33, 8, 'Sathira Guruge', 'sathira@gmail.com', 'Good for kids							    ', '2018-05-14'),
(34, 7, 'Manoj', 'man@gmail.com', 'Played it more than 3 times							    ', '2018-05-14'),
(35, 6, 'FitGirl', 'fit@gmail.com', 'Game with no Bugs							    ', '2018-05-14');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `feed_ID` int(11) NOT NULL,
  `feed_name` varchar(60) NOT NULL,
  `feedback` varchar(600) NOT NULL,
  `feed_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`feed_ID`, `feed_name`, `feedback`, `feed_date`) VALUES
(26, 'Sathira Guruge', 'A Good Site\r\n							    ', '2018-05-14'),
(27, 'Sahan Jayawardena', 'Great Work Guys a cool site with working links					    ', '2018-05-14'),
(28, 'Sahan Illandara', 'I usually recommend this site to my friends						    ', '2018-05-14'),
(29, 'FitGirl', 'Awesome Site							    ', '2018-05-14'),
(30, 'Manoj', 'Finally a site which puts up working links							    ', '2018-05-14');

-- --------------------------------------------------------

--
-- Table structure for table `game`
--

CREATE TABLE `game` (
  `gameID` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `subCategory` varchar(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `genre` varchar(200) NOT NULL,
  `developer` varchar(100) NOT NULL,
  `publisher` varchar(100) NOT NULL,
  `rel_dte` varchar(80) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `systemReq` varchar(3000) NOT NULL,
  `postDate` date NOT NULL,
  `status` varchar(20) NOT NULL,
  `languages` varchar(100) NOT NULL,
  `fileSize` varchar(50) NOT NULL,
  `downloads` varchar(100) NOT NULL,
  `instNote` varchar(500) NOT NULL,
  `Screen1` varchar(400) NOT NULL,
  `Screen2` varchar(400) NOT NULL,
  `Screen3` varchar(400) NOT NULL,
  `Screen4` varchar(400) NOT NULL,
  `megaDown` varchar(200) NOT NULL,
  `driveDown` varchar(200) NOT NULL,
  `uploadDown` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `game`
--

INSERT INTO `game` (`gameID`, `name`, `subCategory`, `title`, `genre`, `developer`, `publisher`, `rel_dte`, `description`, `systemReq`, `postDate`, `status`, `languages`, `fileSize`, `downloads`, `instNote`, `Screen1`, `Screen2`, `Screen3`, `Screen4`, `megaDown`, `driveDown`, `uploadDown`) VALUES
(1, 'Mad Max Incl All DLCs MULTi9 Repack By FitGirl', 'repack', 'Mad Max Incl All DLCs MULTi9 Repack By FitGirl', 'Action, Adventure, Racing, RPG, Shooter', 'Avalanche Studios', 'Warner Bros', 'Sep 1, 2015', '            Become Mad Max, the lone warrior in a savage post-apocalyptic world where cars are the key to survival. In this action-packed, open world, third-person action game, you must fight to stay alive in The Wasteland, using brutal on-ground and vehicular combat against vicious gangs of bandits. A reluctant hero with an instinct for survival, Max wants nothing more than to leave the madness behind and find solace in the storied “Plains of Silence.” Players are challenged with treacherous missions as they scavenge the dangerous landscape for supplies to build the ultimate combat vehicle.', 'Minimum:<br>\r\n- OS: 64 bit: Vista, Win 7, Win 8, Win 10 <br>\r\n- Processor: Intel Core i5-650, 3.2 GHz or AMD Phenom II X4 965, 3.4 Ghz<br>\r\n- Memory: 6 GB RAM<br>\r\n- Graphics: NVIDIA GeForce GTX 660ti (2 GB Memory or higher) or AMD Radeon HD 7870 (2 GB Memory or higher)<br>\r\n- DirectX: Version 11<br>\r\n- Hard Drive: 32 GB available space<br>\r\n- Additional Notes: PlayStation 4 controller support<br><br>\r\n\r\nRecommended:\r\n- OS: 64 bit: Win 7 SP1, Win 8.1, Win 10<br>\r\n- Processor: Intel Core i7-3770, 3.4 GHz or AMD FX-8350, 4.0 GHz<br>\r\n- Memory: 8 GB RAM<br>\r\n- Graphics: NVIDIA GeForce GTX 760 (3 GB Memory or higher) or AMD Radeon HD 7970 (3 GB Memory or higher)<br>\r\n- DirectX: Version 11<br>\r\n- Hard Drive: 32 GB available space<br>\r\n- Additional Notes: PlayStation 4 controller support<br>', '2018-02-06', 'free', 'English, French, Italian, German, Spanish, Japanese, Polish, Russia', '3.76 GB', 'Mega, Google Drive, Uploaded', '1. Unpack<br>\r\n2. Run setup.exe to install the game<br>\r\n3. Play & Enjoy<br>', 'games/madmax1.jpg', 'games/madmax2.jpg', 'games/madmax3.jpg', 'games/madmax4.jpg', 'http://shrinkearn.com/FBLc', 'http://shrinkearn.com/NC6z', 'http://shrinkearn.com/CrJ'),
(2, 'Arma 3 Tanks-CODEX', 'repack', 'Arma 3 Tanks-CODEX', 'Action, Shooter, Simulation, Strategy', 'Bohemia Interactive', 'Bohemia Interactive', '11 Apr, 2018', '            After years of intense warfare against Eastern armies, Europe has become the last stand for the battered NATO forces. On the verge of being driven into the sea, NATO command embarks upon a most desperate measure.\r\nIn the hope of seizing what seems to be a well-guarded military secret, Operation Magnitude is launched. A small group of Special Forces and Researchers are sent to a Mediterranean island deep behind enemy lines. However, the mission is compromised and the task force destroyed, leaving Cpt. Scott Miller washed ashore upon the hostile island. In his effort to carry out the mission, he will face the dangers of modern warfare, an unforgiving environment, and the consequences of his own decisions…', 'Minimum:<br>\r\n> OS: Windows 7 SP1 (64bit)<br>\r\n> Processor: Intel Dual-Core 2.4 GHz or AMD Dual-Core Athlon 2.5 GHz<br>\r\n> Memory: 4 GB RAM<br>\r\n> Graphics: NVIDIA GeForce 9800GT / AMD Radeon HD 5670 / Intel HD \r\n  Graphics 4000 with 512 MB VRAM<br>\r\n> DirectX®: 10<br>\r\n> Hard Drive: 20 GB free space<br>\r\n> Audio: DirectX®-compatible on-board<br><br>\r\n  Recommended:<br>\r\n> OS: Windows 7 / 8 / 10 (64bit)<br>\r\n> Processor: Intel Core i5-4460 or AMD FX 4300 or better<br>\r\n> Memory: 6 GB RAM<br>\r\n> Graphics: NVIDIA GeForce GTX 660 / AMD Radeon HD 7800 Series with 2 GB \r\n  VRAM<br>\r\n> DirectX®: 11<br>\r\n> Hard Drive: 25 GB free space, SSD / Hybrid HDD / SSHD storage<br>\r\n> Sound: DirectX®-compatible soundcard<br>', '2018-03-29', 'free', 'English, French, Italian, German, Spanish, Etc ...', '26.1 GB', 'Mega, Google Drive, Uploaded', '1. Extract<br>\r\n2. Burn or mount the .iso<br>\r\n3. Run setup.exe and install<br>\r\n4. Copy crackfix from CODEX dir to <br>\r\n   installdir<br>\r\n5. Play<br><br>\r\n\r\nGeneral Notes:<br>\r\n> Block the game’s exe in your firewall to prevent the \r\n  game from trying to go online ..<br>\r\n> If you install games to your systemdrive, it may be \r\n  necessary to run this game with admin privileges \r\n  instead', 'games/arma31.jpg', 'games/arma32.jpg', 'games/arma33.jpg', 'games/arma34.jpg', 'www.google.com', 'www.google.com', 'www.google.com'),
(3, 'The Surge Complete Edition MULTi10 Repack By FitGirl', 'repack', 'The Surge Complete Edition MULTi10 Repack By FitGirl', 'Action, Adventure, RPG', 'Deck13', 'Focus Home Interactive', '17 Apr, 2018', 'A catastrophic event has knocked you out during the first day on the job… you wake up equipped with a heavy-grade exoskeleton, in a destroyed section of the complex. Robots gone haywire, insane augmented co-workers and rogue AI – everything wants you dead.\r\nDefy deadly enemies and huge bosses in tight, visceral melee combat. Target and slice specific limbs off your foes, with a next-gen loot system where you loot what you dismember. Equip, upgrade and craft new weapons and armors sliced from enemies, and make yourself stronger through a fresh take on leveling-up.', 'Minimum:<br>\r\n> OS: Windows 7/8/10 (64-bit)<br>\r\n> Processor: AMD FX-8320 (3,5 GHz) / Intel i5-4690K (3,5 GHz)<br>\r\n> Memory: 8 GB RAM<br>\r\n> Graphics: 1 GB, AMD Radeon R7 360 / NVIDIA GeForce GTX 560 Ti<br>\r\n> DirectX: Version 11<br>\r\n> Network: Broadband Internet connection<br>\r\n> Storage: 15 GB available space<br><br>\r\n  Recommended:<br>\r\n> OS: Windows 7/8/10 (64-bit)<br>\r\n> Processor: AMD FX-8370 (4,0 GHz) / Intel Core i7-3820 (3,6 \r\n  GHz)<br>\r\n> Memory: 16 GB RAM<br>\r\n> Graphics: 4 GB, AMD Radeon RX 480 / NVIDIA GeForce GTX 970<br>\r\n> DirectX: Version 11<br>\r\n> Network: Broadband Internet connection<br>\r\n> Storage: 15 GB available space<br>', '2018-04-21', 'free', 'English, French, Italian, German, Spanish, Etc ...', '3.69 GB – 4.19 GB', 'Mega.nz, Google Drive, Uploaded.net', '1. Unpack the .rar <br>\r\n2. Download selective files (select one or all) and move the .bin file into the game folder <br>\r\n3. Run setup.exe to install the game <br>\r\n4. Play & Enjoy <br><br>\r\nFull List of Supported Languages:<br>\r\nEnglish, French, Italian, German, Spanish, Polish, Japanese<br><br>\r\n\r\n', 'games/surge1.jpg', 'games/surge2.jpg', 'games/surge3.jpg', 'games/surge4.jpg', 'http://shrinkearn.com/XEf', 'http://shrinkearn.com/0XGW', 'http://shrinkearn.com/ExI'),
(4, 'Gears of War 4 MULTi13 Repack By FitGirl', 'repack', 'Gears of War 4 MULTi13 Repack By FitGirl', 'Action, Arcade, Shooter', 'The Coalition', 'Microsoft Studios', 'Oct 11, 2016', 'A new saga begins for one of the most acclaimed video game franchises in history. After narrowly escaping an attack on their village, JD Fenix and his friends, Kait and Del, must rescue the ones they love and discover the source of a monstrous new enemy.\r\nNever Fight Alone: Enjoy two-player co-op campaign with friends locally via split-screen or over Xbox Live. Player 2 can select either Kait or Del. Horde 3.0: Team up with four others and battle wave after wave of increasingly difficult enemies by choosing your combat class, leveling up your skills and deploying fortifications anywhere on the map. Explosive Versus Multiplayer: Compete online in new and favorite game types, all at 60fps on dedicated servers. A new visible ranking system means fairer matchmaking for social, competitive and professional players alike.', 'Minimum:<br>\r\nYour device must meet all requirements to run this title<br>\r\n> OS: Windows 10<br>\r\n> Architecture: x64, X64<br>\r\n> Keyboard: Integrated Keyboard<br>\r\n> Mouse: Integrated Mouse<br>\r\n> DirectX: DirectX 12 API, Hardware Feature Level 11<br>\r\n> Memory: 8 GB<br>\r\n> Video Memory: 2 GB<br>\r\n> Processor: Intel i5 3470 | AMD FX-6300<br>\r\n> Graphics: Geforce 750 Ti | Radeon R7 260X<br><br>\r\nRecommended:<br>\r\nFor the optimum experience, your device should meet these requirements<br>\r\n> OS: Windows 10<br>\r\n> Architecture: x64, X64<br>\r\n> Keyboard: Integrated Keyboard<br>\r\n> Mouse: Integrated Mouse<br>\r\n> DirectX: DirectX 12 API, Hardware Feature Level 11<br>\r\n> Memory: 8 GB<br>\r\n> Video Memory: 4 GB<br>\r\n> Processor: Intel i5 4690 | AMD FX-8350<br>\r\n> Graphics: Geforce 970 or Geforce 1060 | Radeon R9 290X or Radeon RX 480<br>', '2017-05-17', 'free', 'English, French, Italian, German', '55.3 GB - 58.0 GB', 'Mega.nz, Google Drive, Uploaded.net', '1. Unpack the .rar<br>\r\n2. Download selective files (select one or all) and move the .bin file into the game folder<br>\r\n3. Run setup.exe to install the game<br>\r\n4. Play & Enjoy<br>', 'games/gow1.jpg', 'games/gow2.jpg', 'games/gow3.jpg', 'games/gow4.jpg', 'http://shrinkearn.com/YKMz', 'http://shrinkearn.com/YKMz', 'http://shrinkearn.com/8PB'),
(5, 'Dragon Ball Xenoverse 2 v1.09-CODEX', 'full', 'Dragon Ball Xenoverse 2 v1.09-CODEX', 'Action, Arcade, Fighting', 'QLOC', 'Bandai Namco', 'Oct 28, 2016', 'DRAGON BALL XENOVERSE 2 builds upon the highly popular DRAGON BALL XENOVERSE with enhanced graphics that will further immerse players into the largest and most detailed Dragon Ball world ever developed.\r\nDRAGON BALL XENOVERSE 2 will deliver a new hub city and the most character customization choices to date among a multitude of new features and special upgrades.', 'Minimum:<br>\r\n> OS: Windows 7 and higher (64 bit only)<br>\r\n> Processor: AMD Phenom II X2 550, 3.1GHz | Intel Pentium G4400, 3.30GHz<br>\r\n> Memory: 2 GB RAM<br>\r\n> Graphics: GeForce GT 650 | Radeon HD 6570<br>\r\n> DirectX: Version 11<br>\r\nAdditional Notes: For Windows 7, service pack 1 is required<br><br>\r\nRecommended:<br>\r\n> OS: Windows 10 (64 bit only)<br>\r\n> Processor: Intel Core i5-3470, 3.20GHz | AMD FX-6300, 3.5Ghz<br>\r\n> Memory: 4 GB RAM<br>\r\n> Graphics: GeForce GT 660 | Radeon HD 7770<br>\r\n> DirectX: Version 11<br>', '2016-11-26', 'free', 'English, French, Italian, German', '13.9 GB', 'Mega.nz, Google Drive, Uploaded.net', '1. Extract<br>\r\n2. Burn or mount the .iso<br>\r\n3. Run setup.exe and install<br>\r\n4. Copy crack from CODEX dir to installdir<br>\r\n5. Play<br>', 'games/db1.jpg', 'games/db2.jpg', 'games/db3.jpg', 'games/db4.jpg', 'http://shrinkearn.com/k57l', 'http://shrinkearn.com/U7B', 'http://shrinkearn.com/S6Hv'),
(6, 'Welcome to the Game II-HI2U', 'full', 'Welcome to the Game II-HI2U', 'Horror, Puzzle, Simulation, Strategy', 'Reflect Studios', 'Reflect Studios', '4 Apr, 2018', 'Welcome to the Game II is an atmospheric horror / strategy / puzzle game that takes you into the world of the deep web, in search of the shadow web. Why are you in search of the shadow web? Let’s take you back into the story.\r\nYou play as Clint Edwards, an investigative reporter in a major metropolitan area. You wake up from a nap to sounds coming from your computer. Someone has sent you a link to a stream that is causing alarm to its viewers. Upon viewing the stream, you see a woman named Amalea who’s scared for her life. Amalea says something about the shadow web, and that there are men in masks hunting her down. When trying to explain her location, the stream abruptly ends. This peaks Clint’s interest, and he must dig deeper to find her before it’s too late. But little does Clint know that the deep web is not a place to poke around. You never know who else is around to poke back.\r\n\r\n', 'Minimum:<br>\r\n> Requires a 64-bit processor and operating system<br>\r\n> OS: Windows 7<br>\r\n> Processor: 2.4 GHz or Better<br>\r\n> Memory: 2 GB RAM<br>\r\n> Graphics: GTX 670(or equivalent) 2 GB Of Video Memory would be nice<br>\r\n> DirectX: Version 10<br>\r\n> Storage: 3 GB available space<br>\r\n> Sound Card: Any<br><br>\r\nAdditional Notes: Works best in a 16×9 or 16×10 aspect ratio resolution.<br><br>\r\nRecommended:<br>\r\n> Requires a 64-bit processor and operating system<br>\r\n> OS: Windows 10<br>\r\n> Processor: 2.8 GHZ<br>\r\n> Memory: 8 GB RAM<br>\r\n> Graphics: GTX 970(or equivalent)<br>\r\n> DirectX: Version 11<br>\r\n> Storage: 3 GB available space<br>\r\n> Sound Card: Any<br><br>\r\nAdditional Notes: Works best in a 16×9 or 16×10 aspect ratio resolution.<br>', '2018-05-03', 'free', 'English', '1.48 GB', 'Mega.nz, Google Drive, Uploaded.net', '1. Unpack<br>\r\n2. Mount / burn image<br>\r\n3. Install<br>\r\n4. Copy content from \'Crack\' folder and replace game dir files<br>\r\n5. Play game<br>\r\n6. If U like it, buy it!<br>', 'games/wt1.jpg', 'games/wt2.jpg', 'games/wt3.jpg', 'games/wt4.jpg', 'http://shrinkearn.com/QiKt', 'http://shrinkearn.com/Pa8E', 'http://shrinkearn.com/4F4'),
(7, 'TheHunter Call of the Wild New Species 2018-CODEX', 'full', 'TheHunter Call of the Wild New Species 2018-CODEX', 'Adventure, Simulation, Sports', 'Expansive Worlds', 'Avalanche Studios', '12 Apr, 2018', 'TheHunter: Call of the Wild offers the most immersive hunting experience ever created. Step into a beautiful open world teeming with life, from majestic deer and awe-inspiring bison, down to the countless birds, critters and insects of the wilderness. Every inch of the 50-square mile world is crafted using Apex, award-winning technology crafted during a decade of developing explosive action games.\r\nIn addition to its rich single player experience, theHunter: Call of the Wild offers unique multiplayer options – cooperative and competitive – for up to 8 players. Share the ultimate hunting experience, and earn those bragging rights!', 'Minimum:<br>\r\n> OS: 64bit OS - Windows 7<br>\r\n> Processor: Intel i3-4170<br>\r\n> Memory: 4 GB RAM<br>\r\n> Graphics: NVIDIA GTX 660 / ATI HD7870 – 1GB VRAM<br>\r\n> Storage: 20 GB available space<br><br>\r\nRecommended:<br>\r\n> OS: 64bit OS – Windows 10<br>\r\n> Processor: Intel i7 quad-core<br>\r\n> Memory: 8 GB RAM<br>\r\n> Graphics: NVidia GTX 760 / R9 270x – 4GB VRAM<br>\r\n> Storage: 20 GB available space<br>', '2018-04-26', 'free', 'English, French, Czech, German, Spanish', '13.7 GB', 'Mega.nz, Google Drive, Uploaded.net', '1. Extract<br>\r\n2. Burn or mount the .iso<br>\r\n3. Run setup.exe and install<br>\r\n4. Copy crack from CODEX dir to installdir<br>\r\n5. Play<br>', 'games/hunter1.jpg', 'games/hunter2.jpg', 'games/hunter3.jpg', 'games/hunter4.jpg', 'http://shrinkearn.com/eezF', 'http://shrinkearn.com/a6U', 'http://shrinkearn.com/psD'),
(8, 'Snake Pass v1.4-RELOADED', 'repack', 'Snake Pass v1.4-RELOADED', 'Adventure, Casual, Platformer, Puzzle', 'Sumo Digital', 'Sumo Digital', '28 Mar, 2017', 'Think Like A Snake!\r\n\r\n\r\nWhen the tranquillity of Haven Tor is interrupted by a mysterious interloper only the unlikeliest of heroes can save the day! Meet Noodle the Snake and his hyperactive best friend, Doodle the Hummingbird, who together must reunite the missing Keystones with the magical gates that give Haven Tor its mythical power.\r\n\r\nA unique, physics-based puzzle platform game, Snake Pass challenges players to ‘think like a snake’ as they tackle precarious puzzles as only a snake can. Slither through long grass, coil around bamboo and climb out of trouble in the latest game from award-winning independent studio Sumo Digital!', 'Minimum:<br>\r\n> Requires a 64-bit processor and operating system<br>\r\n> OS: Windows 8/10 (64-bit OS required)<br>\r\n> Processor: Intel Core i5-750 2.68Ghz / AMD II x4 945 3.0Ghz or equivalent<br>\r\n> Memory: 4 GB RAM<br>\r\n> Graphics: NVIDIA GTX 560 2GB/AMD Radeon 6870 HD 2GB or equivalent (Integrated graphics not supported)<br>\r\n> DirectX: Version 11<br>\r\n> Storage: 5 GB available space<br>', '2017-07-09', 'free', 'English, French, Italian, German, Spanish', '1.60 GB ', 'Mega.nz, Google Drive, Uploaded.net', '1. Unrar.<br>\r\n2. Burn or mount the image.<br>\r\n3. Install the game.<br>\r\n4. Copy over the cracked content from the /Crack directory on the image to your game install directory.<br>\r\n5. Play the game.<br>\r\n6. Support the software developers. If you like this game, BUY IT!<br>', 'games/snake1.jpg', 'games/snake2.jpg', 'games/snake3.jpg', 'games/snake4.jpg', 'http://shrinkearn.com/aBQn', 'http://shrinkearn.com/wfL', 'http://shrinkearn.com/OO4j'),
(9, 'Far Cry 5', 'repack', 'Far Cry 5', 'Action, Adventure, Shooter', 'Ubisoft Reflections', 'Ubisoft', '27 Mar, 2018', 'Welcome to Hope County, Montana. This idyllic location is home to a community of freedom-loving people – and a fanatical doomsday cult known by many as The Project at Eden’s Gate. Led by the charismatic prophet Joseph Seed and his devoted siblings, Eden’s Gate has been surreptitiously infiltrating all aspects of daily life.\r\nWhen your arrival incites the cult to violently assume control of the region, you have to rise up ans spark the fires of resistance to liberate the besieged community. Freely explore Hope Couny’s rivers, lands and skies with the largest customisable weapon and vehicle roster ever in a Far Cry game. You are the hero of the story in a world that hits back with every strike, and where the places you discover and the locals you team up with will shape your story in ways you will never anticipate.', 'Minimum:<br>\r\n> Requires a 64-bit processor and operating system<br>\r\n> OS: Windows 7 SP1, Windows 8.1, Windows 10 (64-bit versions only)<br>\r\n> Processor: Intel Core i5-2400 @ 3.1 GHz or AMD FX-6300 @ 3.5 GHz or equivalent<br>\r\n> Memory: 8 GB RAM<br>\r\n> Graphics: NVIDIA GeForce GTX 670 or AMD R9 270 (2GB VRAM with Shader Model 5.0 or better)<br>\r\n> DirectX: Version 9.0c<br>\r\n> Network: Broadband Internet connection<br>\r\n> Storage: 40 GB available space<br><br>\r\nRecommended:<br>\r\n> Requires a 64-bit processor and operating system<br>\r\n> OS: Windows 7 SP1, Windows 8.1, Windows 10 (64-bit versions only)<br>\r\n> Processor: Intel Core i7-4770 @ 3.4 GHz or AMD Ryzen 5 1600 @ 3.2 GHz or equivalent<br>\r\n> Memory: 8 GB RAM<br>\r\n> Graphics: NVIDIA GeForce GTX 970 or AMD R9 290X (4GB VRAM with Shader Model 5.0 or better)<br>\r\n> DirectX: Version 9.0c<br>\r\n> Network: Broadband Internet connection<br>\r\n> Storage: 40 GB available space<br>', '2018-05-10', 'free', 'English, French, Italian, German', '40.0 GB ', 'Mega.nz, Google Drive, Uploaded.net\r\n\r\n', '1. Extract<br>\r\n2. Burn or mount the image<br>\r\n3. Install the game<br>\r\n4. Copy the crack<br>\r\n5. Enjoy<br>', 'games/fc1.jpg', 'games/fc2.jpg', 'games/fc3.jpg', 'games/fc4.jpg', 'http://shrinkearn.com/HyVo', 'http://shrinkearn.com/MH7W', 'http://shrinkearn.com/JGuT'),
(16, 'FINAL FANTASY XV-CODEX', 'Repack', 'FINAL FANTASY XV-CODEX', ' Action, Adventure, RPG', ' Square Enix', 'Square Enix', '7 Mar, 2018', '	Get ready to be at the centre of the ultimate fantasy adventure, now for Windows PC.\r\n\r\nJoined by your closest friends on the roadtrip of a lifetime through a breathtaking open world, witness stunning landscapes and encounter larger-than-life beasts on your journey to reclaim your homeland from an unimaginable foe.\r\n\r\nIn an action-packed battle system, channel the power of your ancestors to warp effortlessly through the air in thrilling combat, and together with your comrades, master the skills of weaponry, magic and team-based attacks.\r\n\r\nNow realised with the power of cutting-edge technology for Windows PCs, including support for high-resolution displays and HDR10, the beautiful and carefully-crafted experience of FINAL FANTASY XV can be explored like never before.						    ', 'Minimum:<br>\r\n? Requires a 64-bit processor and operating system<br>\r\n? OS: Windows® 7 SP1/ Windows® 8.1 / Windows® 10 64-bit<br>\r\n? Processor: Intel® Core? i5-2500&#65288;3.3GHz and above&#65289;/ AMD FX?-6100 &#65288;3.3GHz and above&#65289;<br>\r\n? Memory: 8 GB RAM<br>\r\n? Graphics: NVIDIA® GeForce® GTX 760 / NVIDIA® GeForce® GTX 1050 / AMD Radeon? R9 280<br>\r\n? DirectX: Version 11<br>\r\n? Storage: 100 GB available space<br>\r\n? Sound Card: DirectSound® compatible sound card, Windows Sonic and Dolby Atmos support<br>\r\nAdditional Notes: 720p 30fps<br><br>\r\nRecommended:<br>\r\n? Requires a 64-bit processor and operating system<br>\r\n? OS: Windows® 7 SP1/ Windows® 8.1 / Windows® 10 64-bit<br>\r\n? Processor: Intel® Core? i7-3770&#65288;3.4GHz and above&#65289;/ AMD FX?-8350&#65288;4.0 GHz and above&#65289;<br>\r\n? Memory: 16 GB RAM<br>\r\n? Graphics: NVIDIA® GeForce® GTX 1060 6 GB VRAM / Radeon? RX 480<br>\r\n? DirectX: Version 11<br>\r\n? Storage: 100 GB available space<br>\r\n? Sound Card: DirectSound® compatible sound card, Windows Sonic and Dolby Atmos support<br>\r\nAdditional Notes: 1080p 30fps</br>					    ', '2018-05-14', 'Free', 'English, French, Italian, German, Spanish, Etc ?', '75.7 GB', ' Mega.nz,  Google Drive,  Uploaded.net', '1. Extract<br>\r\n2. Burn or mount the .iso<br>\r\n3. Run setup.exe and install<br>\r\n4. Copy crack from CODEX dir to installdir<br>\r\n5. Play	<br>							', 'games/ff1.jpg', 'games/ff2.jpg', 'games/ff3.jpg', 'games/ff4.jpg', 'http://shrinkearn.com/l1', 'http://shrinkearn.com/l6f', 'http://shrinkearn.com/CCii');

-- --------------------------------------------------------

--
-- Table structure for table `loginlog`
--

CREATE TABLE `loginlog` (
  `logID` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loginlog`
--

INSERT INTO `loginlog` (`logID`, `username`, `time`) VALUES
(99, 'sahanlakshitha1996@hotmail.com', '2018-05-14 12:11:45'),
(100, 'sahanIll123', '2018-05-14 12:16:39'),
(101, 'sahan', '2018-05-14 12:17:04'),
(102, 'Sathira123', '2018-05-14 12:21:23'),
(103, 'Manoj123', '2018-05-14 12:24:20'),
(104, 'sahan', '2018-05-14 12:24:37'),
(105, 'fitgirl123', '2018-05-14 12:29:19'),
(106, 'sathira123', '2018-05-14 12:35:57'),
(107, 'sahan', '2018-05-14 12:45:53'),
(108, 'Sathira123', '2018-05-17 19:00:07'),
(109, 'sathira123', '2018-05-17 19:09:34'),
(110, 'sahan', '2018-05-17 19:10:31'),
(111, 'sathira123@gmail.com', '2018-05-17 19:14:47'),
(112, 'sathira123@gmail.com', '2018-05-17 19:20:25'),
(113, 'sahan', '2018-05-17 19:21:02');

-- --------------------------------------------------------

--
-- Table structure for table `req_game`
--

CREATE TABLE `req_game` (
  `req_ID` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `email` varchar(90) NOT NULL,
  `g_name` varchar(100) NOT NULL,
  `message` varchar(600) NOT NULL,
  `post_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `req_game`
--

INSERT INTO `req_game` (`req_ID`, `name`, `email`, `g_name`, `message`, `post_date`) VALUES
(17, 'Sathira Guruge', 'sathira@gmail.com', 'Call of Duty', 'I need this ASAP							    ', '2018-05-14'),
(18, 'Manoj', 'manoj@gmail.com', 'Blur', '	When can you upload this ?						    ', '2018-05-14'),
(19, 'Sahan Illandara', 'sahai@gmail.com', 'Tomb Raider', '	Good if you can upload links for this						    ', '2018-05-14'),
(20, 'Fit Girl', 'fit@gmail.com', 'GTA IV', 'can you upload this game by this week if that is not too incovenient							    ', '2018-05-14'),
(21, 'Sahan Jaya', 'sahanj@gmail.com', 'Battlefield', 'when will you upload this					    ', '2018-05-14');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userID` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `fname` varchar(40) NOT NULL,
  `lname` varchar(40) NOT NULL,
  `dob` date NOT NULL,
  `address` varchar(200) NOT NULL,
  `country` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `secQuestion` varchar(200) NOT NULL,
  `reg_date` date NOT NULL,
  `secAnwser` varchar(40) DEFAULT NULL,
  `profilePic` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userID`, `username`, `email`, `fname`, `lname`, `dob`, `address`, `country`, `password`, `secQuestion`, `reg_date`, `secAnwser`, `profilePic`) VALUES
(10, 'kuma9619', 'sahanlakshitha1996@hotmail.com', 'Sahan', 'Jayawardena', '1996-04-19', '204/1, Gangarama Road, Werahera, Boralesgamuwa', 'Sri Lanka', 'kuma@123456', 'Favourite Car', '2018-05-13', 'Rosh', 'profilePics/sahan.jpg'),
(11, 'sahanIll123', 'sahanIllandara@gmail.com', 'Sahan', 'Illandara', '1996-08-21', 'Mirihana', 'Sri Lanka', 'sahanIll123', 'Mom_s Name', '2018-05-14', 'Neetha', 'profilePics/steve.jpg'),
(12, 'Sathira123', 'sathira123@gmail.com', 'Sathira', 'Gurge', '1997-05-05', 'Nugegoda', 'Sri Lanka', 'sathira1', 'How old are you?', '2018-05-14', '21', 'profilePics/sathira.jpg'),
(14, 'Manoj123', 'manoj123@gmail.com', 'Manoj', 'Niranthaka', '1995-01-01', 'Warakapola', 'Sri Lanka', 'Manoj123', 'Favourite Car', '2018-05-14', 'Axio', 'profilePics/manoj.jpg'),
(15, 'fitgirl123', 'fitgirl@gmail.com', 'Fit', 'Girl', '1997-01-01', 'Nevada', 'United States', 'fitgirl123', 'Favourite Car', '2018-05-14', 'Merc', 'profilePics/fitgirl.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_reg`
--
ALTER TABLE `admin_reg`
  ADD PRIMARY KEY (`admin_ID`),
  ADD UNIQUE KEY `admin_email` (`admin_email`),
  ADD UNIQUE KEY `ad_uname` (`ad_uname`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`cmmnt_ID`),
  ADD KEY `game_ID` (`game_ID`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`feed_ID`);

--
-- Indexes for table `game`
--
ALTER TABLE `game`
  ADD PRIMARY KEY (`gameID`);

--
-- Indexes for table `loginlog`
--
ALTER TABLE `loginlog`
  ADD PRIMARY KEY (`logID`);

--
-- Indexes for table `req_game`
--
ALTER TABLE `req_game`
  ADD PRIMARY KEY (`req_ID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userID`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_reg`
--
ALTER TABLE `admin_reg`
  MODIFY `admin_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `cmmnt_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `feed_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `game`
--
ALTER TABLE `game`
  MODIFY `gameID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `loginlog`
--
ALTER TABLE `loginlog`
  MODIFY `logID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `req_game`
--
ALTER TABLE `req_game`
  MODIFY `req_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `fk_game` FOREIGN KEY (`game_ID`) REFERENCES `game` (`gameID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
