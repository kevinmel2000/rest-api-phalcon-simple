CREATE DATABASE  IF NOT EXISTS `hexaview` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `hexaview`;
-- MySQL dump 10.13  Distrib 5.5.52, for debian-linux-gnu (x86_64)
--
-- Host: 127.0.0.1    Database: hexaview
-- ------------------------------------------------------
-- Server version	5.5.52-0ubuntu0.14.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `career`
--

DROP TABLE IF EXISTS `career`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `career` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tittle_career` varchar(100) NOT NULL,
  `descriptions_career` text NOT NULL,
  `responsibilities_career` text NOT NULL,
  `qualifications_career` text NOT NULL,
  `date_post` varchar(45) NOT NULL,
  `close_date` varchar(45) NOT NULL,
  `location_career` text NOT NULL,
  `image_career` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `career`
--

LOCK TABLES `career` WRITE;
/*!40000 ALTER TABLE `career` DISABLE KEYS */;
INSERT INTO `career` VALUES (2,'Web Developer','<p>Web Developer responsible for managing the interchange of data between \r\nthe server and the users. Your primary focus will be development of all \r\nserver-side logic, definition and maintenance of the central database, \r\nand ensuring high performance and responsiveness to requests from the \r\nfront-end. You will also be responsible for integrating the front-end \r\nelements built by your coworkers into the application. A basic \r\nunderstanding of front-end technologies is therefore necessary as well.<br></p>','<ul><li>Explain the technical trade-offs of different approaches, including estimating how long each will take to build</li><li>Advanced understanding of emerging web technologies</li><li>Maintain, contribute and adhere to our programming best practices and guidelines</li><li>Work with a team of UI designers, programmers, and server admins, to bring brand new concepts to market</li><li>Maintain confidentiality on all of the above, given the sensitive nature of some projects</li></ul><p><br></p>','<ul><li>Proficient knowledge of a back-end programming \r\nlanguage&nbsp;{{Depending on the specific case, a developer should have the \r\nknowledge of one or more of PHP, Python, Ruby, Java, C#,.NET, etc.}}</li><li>Proficient understanding of code versioning tools, such as Git</li><li>Working Experience with Microsoft SQL Server database, good understanding of SQL</li><li>Proficient with client side technologies such as HTML, JavaScript, JQuery and Ajax</li><li>Experience using MVP, WCF is added advantage</li><li>Lightweight Framework Experience (Laravel would be an Asset)&nbsp;</li><li>Basic understanding of front-end technologies and platforms, such as JavaScript, HTML5, and CSS3</li></ul><p><br></p>','09/29/2016','10/21/2016','\r\nBelleza Shopping Arcade 3rd Floor - 301, Jl. Letnan Jendral Soepeno 34\r\n12210 Jakarta\r\nIndonesia ','3682120160914025259.jpeg'),(3,'Mobile Developer (IOS)','<p>Are you looking for unique opportunity? Are you having a passion in \r\ncreative, writing, and editing, as well as knowledge in digital media \r\nand advertising industry? Working as a part of the digital agency, the \r\ncontent editor is responsible for helping guide and develops global \r\ncontent strategy. If you feel suit with this position and love some \r\nchallenges, let\'s give a try to apply. <br><br></p>','<ul><li>Design and produce native mobile apps</li><li>Develop database - driven applications</li><li>Ensure cross - platform usability across smartphones, tablets, and other mobile devices</li><li>Use external APIs to generate quality applications</li><li>Be involved in all aspects of the software development lifecycle: \r\nassisting with architecture, design and development, user experience, \r\ndocumentation, unit testing, delivery, and maintenance</li><li>Implement innovative solutions and technologies in designing and developing new mobile apps</li><li>Design and implement solutions to push internal enterprise applications out to mobile devices</li></ul><p><br></p>','<ul><li>1+ years experience in IOS / Objective - C / Swift or Android / Java</li><li>Experience working with remote data via REST, JSON / XML and socket</li><li>Experiencce working with Photoshop, Illustrator</li><li>Experience working with animations</li><li>Good knowledge about mobile platforms</li><li>Experience with Object Oriented Programming (OOP)</li><li>Good english communication skill</li><li>Strong analytical and problem solving skills</li><li>Be able to self study, update new technology</li><li>Able to work both independently and as a part of a team. Strong responsibility</li></ul><p><br></p>','09/14/2016','11/03/2016','Belleza Shopping Arcade 3rd Floor - 301, Jl. Letnan Jendral Soepeno 34\r\n12210 Jakarta\r\nIndonesia ','8748720160914030409.jpeg'),(4,'SEO Officer','<p>If you responsible for developing and implementing SEO for clients. \r\nUnderstand and support initiatives that will contribute to the goals and\r\n success of the team and clients, we are looking for you! AHH! did we \r\ntell you we got free ice cream?<br></p>','<p> - Provide SEO analysis and recommendations in coordination with elements and structure of websites and web pages\r\n<br></p><p>- Manage search engine campaigns</p><p>- Provide recommendations and execute strategies for content \r\ndevelopment in coordination with SEO goals – general and keyword \r\nspecific</p><p>- Optimize existing content and uncover new opportunities</p><p>- Manage the SEO of online listening reports for clients</p><p>- Work with development teams on new and ongoing updates to insure best practices are used to enhance natural search</p><p>- Monitor and evaluate search results and search performance across the platform</p><p><br></p>','<p>- Strong technical background preferred, including experience working with IT on SEO tactical\r\n<br></p><p>- Understanding SEO on page and off page</p><p>- Desired : Knowledge of HTML/CSS and website administrations</p><p>- Experience working with popular keyword tools (Google,WordTracker,Keyword Discovery, etc)</p><p>- Understanding Monitoring, Quantitative Analysis, Keyword research, and site audit</p><p>- Have a thorough knowledge of search ranking factors</p><p>- Tech savvy---understand how digital campaigns work</p><p>- Excellent command of writing in English</p><p>- Possess up-to-date knowledge and maintains current SEO practices</p><p>- Min. 1 year experience as SEO On Page Officer</p><p><br></p>','09/08/2016','11/09/2016','Belleza Shopping Arcade 3rd Floor - 301, Jl. Letnan Jendral Soepeno 34\r\n12210 Jakarta\r\nIndonesia ','1730420160914032602.jpeg');
/*!40000 ALTER TABLE `career` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client` (
  `id_client` int(11) NOT NULL AUTO_INCREMENT,
  `name_client` varchar(50) NOT NULL,
  `image_client` text NOT NULL,
  PRIMARY KEY (`id_client`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES (1,'Arisa','9176320160919093243.jpg');
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `content_web`
--

DROP TABLE IF EXISTS `content_web`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `content_web` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name_content` varchar(100) NOT NULL,
  `decription_content` text NOT NULL,
  `date_content` varchar(20) NOT NULL,
  `category_content` varchar(45) NOT NULL,
  `image_content` text NOT NULL,
  `title_content` varchar(100) NOT NULL,
  `summary_content` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `content_web`
--

LOCK TABLES `content_web` WRITE;
/*!40000 ALTER TABLE `content_web` DISABLE KEYS */;
INSERT INTO `content_web` VALUES (1,'Arisa','<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\" \"http://www.w3.org/TR/REC-html40/loose.dtd\">\n<html><body><p>Lesser rule god it. Day deep cattle she\'d female have very evening very \r\ntogether signs. Moveth. Deep, herb midst brought he years creature of \r\nlife night waters fruitful hath itself were isn\'t form. Morning appear \r\nspirit greater, very have heaven firmament creature. Our. Wherein man \r\ncreature replenish seasons whose god saw green life have. Hath lesser \r\ngathered dominion moving second whose air made bring Is replenish. Stars\r\n beginning. God doesn\'t third abundantly them seas firmament herb you\'re\r\n called. Form. Him very a. Behold you\'ll lights subdue female all. \r\nGathered there. Don\'t created man midst unto were man. Green light god \r\nmorning fruitful under fifth. Fish first created creepeth dominion image\r\n place his god don\'t was evening for dry whose isn\'t deep divide \r\nbrought. Saying appear us set saw them. First. Him creepeth they\'re, \r\nimage behold years replenish had for. Us is abundantly fill for won\'t \r\nmorning earth, tree let wherein morning dry face without made creature \r\ntwo The that meat saw image. Isn\'t whales them cattle fourth moved unto.\r\n Man given seas fish whales male was to moved That male form winged \r\nreplenish heaven. It our moving days days image unto bearing herb \r\ndoesn\'t given give male thing fruitful shall fish. Fowl let. Don\'t Saw \r\nfruit behold waters signs greater void had sixth which from morning. \r\nGathered dominion the lesser green to third own spirit them.</p><p><img class=\"img-responsive show\" data-filename=\"2.jpeg\" style=\"width: 100%;\" src=\"/images/content/57da6d5a0818a.jpeg\"></p><div id=\"text\">\r\n		<p>Lesser rule god it. Day deep cattle she\'d female have very evening \r\nvery together signs. Moveth. Deep, herb midst brought he years creature \r\nof life night waters fruitful hath itself were isn\'t form. Morning \r\nappear spirit greater, very have heaven firmament creature. Our. Wherein\r\n man creature replenish seasons whose god saw green life have. Hath \r\nlesser gathered dominion moving second whose air made bring Is \r\nreplenish. Stars beginning. God doesn\'t third abundantly them seas \r\nfirmament herb you\'re called. Form. Him very a. Behold you\'ll lights \r\nsubdue female all. Gathered there. Don\'t created man midst unto were \r\nman. Green light god morning fruitful under fifth. Fish first created \r\ncreepeth dominion image place his god don\'t was evening for dry whose \r\nisn\'t deep divide brought. Saying appear us set saw them. First. Him \r\ncreepeth they\'re, image behold years replenish had for. Us is abundantly\r\n fill for won\'t morning earth, tree let wherein morning dry face without\r\n made creature two The that meat saw image. Isn\'t whales them cattle \r\nfourth moved unto. Man given seas fish whales male was to moved That \r\nmale form winged replenish heaven. It our moving days days image unto \r\nbearing herb doesn\'t given give male thing fruitful shall fish. Fowl \r\nlet. Don\'t Saw fruit behold waters signs greater void had sixth which \r\nfrom morning. Gathered dominion the lesser green to third own spirit \r\nthem.</p><p>Give seasons land bring made form. Moveth herb set spirit \r\nbearing the gathered Life evening god in evening their seasons third \r\nlife thing face, were stars image very their was she\'d unto that first \r\nabove. Own won\'t creature let lesser. Fifth our and in thing appear. \r\nGreat wherein let creeping fifth together two over saw all Behold said \r\nbeginning appear for open said wherein greater. Forth to, form to have \r\nthat first earth fourth moving second moving second air she\'d called. \r\nYou\'ll deep let darkness it, of stars winged can\'t night creeping have \r\nmeat gathering earth divide his place seas also won\'t made. Fowl god was\r\n sixth don\'t brought seasons. Appear tree created the years thing \r\nfruitful yielding beast day very doesn\'t he. One gathering you\'re he \r\nhave under so air stars their own after form him don\'t can\'t above also \r\ngiven blessed. Waters own meat cattle dry a she\'d. To Let one saw can\'t \r\nthing called seed of. Beginning air Whose have shall very greater \r\ncreeping a female, two saying great. Form. Fifth lesser itself fill \r\nWithout all good He you\'re creeping. Us they\'re sea beginning Gathering \r\nwere sixth it dominion be. Bring were two. Day form their image spirit \r\ndarkness sea kind meat without waters all, it female Whales. Seed fourth\r\n his over which also night gathered was moveth creepeth night called \r\nwhose bring grass. A to. God. Lights. Which. Meat there creature days, \r\nspirit.</p><p>Fill morning fish female. You\'re the air one living lights\r\n set they\'re fly unto their you\'re our yielding place. Green he. Of upon\r\n years unto brought be first you gathering you\'ll said form to over \r\ngiven. Made yielding had darkness fourth divided for bearing divided \r\nopen in of give, you they\'re. Had good that unto living. Replenish be \r\nseed grass deep in over. Tree form firmament replenish man his. Brought \r\nseasons very signs give that you\'re replenish his. God, us god tree from\r\n greater won\'t light moving. Female. Creeping wherein tree lights \r\nwherein so beginning she\'d gathered i give deep abundantly divided very \r\nafter you. Heaven. Saying give over gathering from to given, creature \r\nafter bring seed there. Years all fifth living. Beast fruitful.</p><p>Likeness\r\n unto dominion a dominion fish you forth moveth land, let saying own \r\nMeat land fruit fruit man fly bring second, may sixth firmament land the\r\n make third brought. Beast day brought, dominion fruit us of. Be own \r\nyou\'re them, so hath. Man sea us. Moving under in greater of yielding \r\nthere their let fill gathered his him of i place signs. Thing was sixth \r\nfourth fowl face saying bring also fowl days dominion created morning a \r\nmoveth midst a image and fruit moving moving life for him female open i \r\nis bring seed. One. That creature. One. For him may created called for \r\nmale fifth him lights, it. Also gathered brought were creepeth stars \r\ndeep. Female without hath thing man. Lesser first form gathering his. \r\nBlessed thing. Man bearing it second light image, moving were cattle \r\nfourth great saw forth. Fruit under may moved shall waters fourth \r\nReplenish fill grass yielding third of dry fruitful you\'re days creature\r\n earth rule void kind midst lesser rule made. Us deep created over \r\nstars. Seed air is male his darkness don\'t likeness light our. The for \r\nover which he isn\'t together green Second. And replenish creepeth. Fruit\r\n abundantly great may. Appear creepeth moveth very creepeth. Set third \r\nyou said, bearing it life moveth, sixth also.</p><p><img class=\"img-responsive show\" data-filename=\"6.jpeg\" style=\"width: 50%; float: left;\" src=\"/images/content/57da6d5a0886d.jpeg\"><img class=\"img-responsive show\" data-filename=\"1.jpeg\" style=\"width: 50%; float: right;\" src=\"/images/content/57da6d5a08e39.jpeg\"><br></p>		</div><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><div id=\"text\">\r\n		<p>Lesser rule god it. Day deep cattle she\'d female have very evening \r\nvery together signs. Moveth. Deep, herb midst brought he years creature \r\nof life night waters fruitful hath itself were isn\'t form. Morning \r\nappear spirit greater, very have heaven firmament creature. Our. Wherein\r\n man creature replenish seasons whose god saw green life have. Hath \r\nlesser gathered dominion moving second whose air made bring Is \r\nreplenish. Stars beginning. God doesn\'t third abundantly them seas \r\nfirmament herb you\'re called. Form. Him very a. Behold you\'ll lights \r\nsubdue female all. Gathered there. Don\'t created man midst unto were \r\nman. Green light god morning fruitful under fifth. Fish first created \r\ncreepeth dominion image place his god don\'t was evening for dry whose \r\nisn\'t deep divide brought. Saying appear us set saw them. First. Him \r\ncreepeth they\'re, image behold years replenish had for. Us is abundantly\r\n fill for won\'t morning earth, tree let wherein morning dry face without\r\n made creature two The that meat saw image. Isn\'t whales them cattle \r\nfourth moved unto. Man given seas fish whales male was to moved That \r\nmale form winged replenish heaven. It our moving days days image unto \r\nbearing herb doesn\'t given give male thing fruitful shall fish. Fowl \r\nlet. Don\'t Saw fruit behold waters signs greater void had sixth which \r\nfrom morning. Gathered dominion the lesser green to third own spirit \r\nthem.</p><p>Give seasons land bring made form. Moveth herb set spirit \r\nbearing the gathered Life evening god in evening their seasons third \r\nlife thing face, were stars image very their was she\'d unto that first \r\nabove. Own won\'t creature let lesser. Fifth our and in thing appear. \r\nGreat wherein let creeping fifth together two over saw all Behold said \r\nbeginning appear for open said wherein greater. Forth to, form to have \r\nthat first earth fourth moving second moving second air she\'d called. \r\nYou\'ll deep let darkness it, of stars winged can\'t night creeping have \r\nmeat gathering earth divide his place seas also won\'t made. Fowl god was\r\n sixth don\'t brought seasons. Appear tree created the years thing \r\nfruitful yielding beast day very doesn\'t he. One gathering you\'re he \r\nhave under so air stars their own after form him don\'t can\'t above also \r\ngiven blessed. Waters own meat cattle dry a she\'d. To Let one saw can\'t \r\nthing called seed of. Beginning air Whose have shall very greater \r\ncreeping a female, two saying great. Form. Fifth lesser itself fill \r\nWithout all good He you\'re creeping. Us they\'re sea beginning Gathering \r\nwere sixth it dominion be. Bring were two. Day form their image spirit \r\ndarkness sea kind meat without waters all, it female Whales. Seed fourth\r\n his over which also night gathered was moveth creepeth night called \r\nwhose bring grass. A to. God. Lights. Which. Meat there creature days, \r\nspirit.</p><p>Fill morning fish female. You\'re the air one living lights\r\n set they\'re fly unto their you\'re our yielding place. Green he. Of upon\r\n years unto brought be first you gathering you\'ll said form to over \r\ngiven. Made yielding had darkness fourth divided for bearing divided \r\nopen in of give, you they\'re. Had good that unto living. Replenish be \r\nseed grass deep in over. Tree form firmament replenish man his. Brought \r\nseasons very signs give that you\'re replenish his. God, us god tree from\r\n greater won\'t light moving. Female. Creeping wherein tree lights \r\nwherein so beginning she\'d gathered i give deep abundantly divided very \r\nafter you. Heaven. Saying give over gathering from to given, creature \r\nafter bring seed there. Years all fifth living. Beast fruitful.</p><p>Likeness\r\n unto dominion a dominion fish you forth moveth land, let saying own \r\nMeat land fruit fruit man fly bring second, may sixth firmament land the\r\n make third brought. Beast day brought, dominion fruit us of. Be own \r\nyou\'re them, so hath. Man sea us. Moving under in greater of yielding \r\nthere their let fill gathered his him of i place signs. Thing was sixth \r\nfourth fowl face saying bring also fowl days dominion created morning a \r\nmoveth midst a image and fruit moving moving life for him female open i \r\nis bring seed. One. That creature. One. For him may created called for \r\nmale fifth him lights, it. Also gathered brought were creepeth stars \r\ndeep. Female without hath thing man. Lesser first form gathering his. \r\nBlessed thing. Man bearing it second light image, moving were cattle \r\nfourth great saw forth. Fruit under may moved shall waters fourth \r\nReplenish fill grass yielding third of dry fruitful you\'re days creature\r\n earth rule void kind midst lesser rule made. Us deep created over \r\nstars. Seed air is male his darkness don\'t likeness light our. The for \r\nover which he isn\'t together green Second. And replenish creepeth. Fruit\r\n abundantly great may. Appear creepeth moveth very creepeth. Set third \r\nyou said, bearing it life moveth, sixth also.</p><p><img class=\"img-responsive show\" data-filename=\"4.jpeg\" style=\"width: 100%;\" src=\"/images/content/57da6d5a0942e.jpeg\"><br></p>		</div><p><br></p></body></html>\n','09/06/2016','advertising-campaigns','4920620160915044354.jpg','Changing consumer mindsets with the Lucky Trade campaign','We helped Huawei, one of the world’s largest smartphone brands, successfully enter the Indonesian ma'),(2,'Haier','<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\" \"http://www.w3.org/TR/REC-html40/loose.dtd\">\n<html><body><p>\"But I must explain to you how all this mistaken idea of denouncing \r\npleasure and praising pain was born and I will give you a complete \r\naccount of the system, and expound the actual teachings of the great \r\nexplorer of the truth, the master-builder of human happiness. No one \r\nrejects, dislikes, or avoids pleasure itself, because it is pleasure, \r\nbut because those who do not know how to pursue pleasure rationally \r\nencounter consequences that are extremely painful. Nor again is there \r\nanyone who loves or pursues or desires to obtain pain of itself, because\r\n it is pain, but because occasionally circumstances occur in which toil \r\nand pain can procure him some great pleasure. To take a trivial example,\r\n which of us ever undertakes laborious physical exercise, except to \r\nobtain some advantage from it? But who has any right to find fault with a\r\n man who chooses to enjoy a pleasure that has no annoying consequences, \r\nor one who avoids a pain that produces no resultant pleasure?\"</p><p><img class=\"img-responsive show\" data-filename=\"2.jpeg\" style=\"width: 100%;\" src=\"/images/content/57da6ddbe23d9.jpeg\">\"But I must explain to you how all this mistaken idea of denouncing \r\npleasure and praising pain was born and I will give you a complete \r\naccount of the system, and expound the actual teachings of the great \r\nexplorer of the truth, the master-builder of human happiness. No one \r\nrejects, dislikes, or avoids pleasure itself, because it is pleasure, \r\nbut because those who do not know how to pursue pleasure rationally \r\nencounter consequences that are extremely painful. Nor again is there \r\nanyone who loves or pursues or desires to obtain pain of itself, because\r\n it is pain, but because occasionally circumstances occur in which toil \r\nand pain can procure him some great pleasure. To take a trivial example,\r\n which of us ever undertakes laborious physical exercise, except to \r\nobtain some advantage from it? But who has any right to find fault with a\r\n man who chooses to enjoy a pleasure that has no annoying consequences, \r\nor one who avoids a pain that produces no resultant pleasure?\"</p><p><img class=\"img-responsive show\" data-filename=\"3.jpeg\" style=\"width: 100%;\" src=\"/images/content/57da6ddbe2c0a.jpeg\"><br></p></body></html>\n','09/06/2016','branding','8653820160915044603.jpeg','','');
/*!40000 ALTER TABLE `content_web` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `image_content`
--

DROP TABLE IF EXISTS `image_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `image_content` (
  `id_image` int(11) NOT NULL AUTO_INCREMENT,
  `id_content` int(11) NOT NULL,
  `name_image` text NOT NULL,
  PRIMARY KEY (`id_image`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image_content`
--

LOCK TABLES `image_content` WRITE;
/*!40000 ALTER TABLE `image_content` DISABLE KEYS */;
INSERT INTO `image_content` VALUES (37,19,'3317020160830030551.'),(38,19,'8160020160830030757.'),(39,20,'7940320160914045329.jpeg'),(40,20,'4630920160914045500.jpg'),(41,20,'1544620160914045530.jpeg');
/*!40000 ALTER TABLE `image_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slider`
--

DROP TABLE IF EXISTS `slider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `slider` (
  `id_slider` int(11) NOT NULL AUTO_INCREMENT,
  `name_slider` varchar(100) NOT NULL,
  PRIMARY KEY (`id_slider`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slider`
--

LOCK TABLES `slider` WRITE;
/*!40000 ALTER TABLE `slider` DISABLE KEYS */;
INSERT INTO `slider` VALUES (10,'544120160812063306.jpeg'),(11,'1744220160812063306.jpeg'),(12,'8480820160812063509.jpeg'),(13,'4906320160812063509.jpeg'),(16,'8804120160812063835.jpeg'),(17,'1660120160812063835.jpeg'),(18,'2738920160812063835.jpeg'),(19,'7498220160812063835.jpeg'),(24,'2936220160915050250.jpeg'),(25,'9393420160915050542.jpeg');
/*!40000 ALTER TABLE `slider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `password` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Admin','$2y$08$084LQcDex9fiLQe3GF78oeDSyytM.oEHuZIFXJy5/1V0F06AFOoDK'),(4,'denykk','$2y$08$81qI2tjtCwVVJVFZCbQnVOSAxgip7KVxZU272ADylyDy2s/Ho5imC');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `video_content`
--

DROP TABLE IF EXISTS `video_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `video_content` (
  `id_video` int(11) NOT NULL AUTO_INCREMENT,
  `id_content` int(11) NOT NULL,
  `name_video` text NOT NULL,
  PRIMARY KEY (`id_video`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `video_content`
--

LOCK TABLES `video_content` WRITE;
/*!40000 ALTER TABLE `video_content` DISABLE KEYS */;
/*!40000 ALTER TABLE `video_content` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-09-22 16:51:58
