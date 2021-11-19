-- MySQL dump 10.13  Distrib 8.0.21
--
-- Host: 127.0.0.1    Database: movies
-- ------------------------------------------------------
-- Server version	8.0.21

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `chairs`
--

DROP TABLE IF EXISTS `chairs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chairs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `position` varchar(2) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_lsfed8w5hrcc6ngol7v89opdb` (`position`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chairs`
--

LOCK TABLES `chairs` WRITE;
/*!40000 ALTER TABLE `chairs` DISABLE KEYS */;
INSERT INTO `chairs` VALUES (1,'A1'),(2,'A2'),(3,'A3'),(4,'A4'),(5,'B1'),(6,'B2'),(7,'B3'),(8,'B4'),(9,'C1'),(10,'C2'),(11,'C3'),(12,'C4'),(13,'D1'),(14,'D2'),(15,'D3'),(16,'D4'),(17,'E1'),(18,'E2'),(19,'E3'),(20,'E4'),(21,'F1'),(22,'F2'),(23,'F3'),(24,'F4'),(25,'G1'),(26,'G2'),(27,'G3'),(28,'G4'),(29,'H1'),(30,'H2'),(31,'H3'),(32,'H4');
/*!40000 ALTER TABLE `chairs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cinemas`
--

DROP TABLE IF EXISTS `cinemas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cinemas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `city_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK5hbuhximwhq9xtmqtvodspmy4` (`city_id`),
  CONSTRAINT `FK5hbuhximwhq9xtmqtvodspmy4` FOREIGN KEY (`city_id`) REFERENCES `citys` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cinemas`
--

LOCK TABLES `cinemas` WRITE;
/*!40000 ALTER TABLE `cinemas` DISABLE KEYS */;
INSERT INTO `cinemas` VALUES (2,'Lotte Hà Nội',1),(3,'BHD Hà Nội',1),(4,'CGV Đà nẵng',2),(5,'Lotte Đà nẵng',2),(6,'BHD Đà nẵng',2),(7,'CGV HCM',3),(8,'Lotte HCM',3),(9,'BHD HCM',3);
/*!40000 ALTER TABLE `cinemas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `citys`
--

DROP TABLE IF EXISTS `citys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `citys` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `citys`
--

LOCK TABLES `citys` WRITE;
/*!40000 ALTER TABLE `citys` DISABLE KEYS */;
INSERT INTO `citys` VALUES (1,'Hà Nội'),(2,'Đà nẵng'),(3,'HCM');
/*!40000 ALTER TABLE `citys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movies`
--

DROP TABLE IF EXISTS `movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movies` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `director` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `language` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `premiere` date NOT NULL,
  `time` int NOT NULL,
  `view` int NOT NULL,
  `age_limit` int NOT NULL,
  `format` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies`
--

LOCK TABLES `movies` WRITE;
/*!40000 ALTER TABLE `movies` DISABLE KEYS */;
INSERT INTO `movies` VALUES (1,'Hành Động','Vì số tiền công hậu hĩnh lên đến 2,5 triệu USD, tay cựu quân nhân Jung Seok quyết định trở lại “Bán Đảo” nhằm thu hồi một kiện hàng nọ. Tuy nhiên, đón đợi Jung Seok và đồng đội trở về là cuộc phục kích của những chiến hữu cũ và sự tấn công của lũ zombie khát máu. Được gia đình Min Jung giải cứu, Jung Seok phải tìm cách đào thoát khỏi nơi đây trước khi mặt trời ló dạng.','Sang-ho Yeon','images/ban_dao_peninsula.jpg','Tiếng Hàn','BÁN ĐẢO PENINSULA','2021-11-20',90,876,0,NULL),(2,'Hồi hộp, Kinh Dị','Năm người lính Mỹ được giao nhiệm vụ canh giữ một dinh thự tại Pháp trong những năm cuối Thế chiến II. Họ rơi vào tình trạng hoảng loạn khi gặp phải một kẻ thù còn đáng sợ hơn rất nhiều những gì họ từng trải qua trên chiến trường.','Eric Bress','images/poster.jpg','Tiếng Anh - Phụ đề Tiếng Việt','DINH THỰ OAN KHUẤT','2021-11-20',95,708,0,NULL),(3,'Hài, Kinh Dị','Một cuốn nhật ký chứa đựng câu chuyện cuộc đời đầy bất hạnh của Galih, chàng trai đã tự sát trong chính căn nhà Naya đang ở. Ngoài Galih ra một hồn ma bí ẩn khác đã tạo nên sự hỗn loạn trong căn nhà và cuộc sống của Maya. Các bí ẩn của cuốn nhật ký có giúp cho Galih siêu thoát và Maya trở về cuộc sống yên bình?','Bene Dion Rajagukguk','images/ghost_writer_main_poster.jpg','Tiếng Indonesia - Phụ đề Tiếng Việt','HỒN MA VĂN SĨ','2021-11-20',99,912,0,NULL),(4,'Hành Động, Tội phạm','Rachel (Caren Pistorius thủ vai) là một người mẹ đơn thân đang phải đối mặt với nhiều những vấn đề trong cuộc sống. Không giữ được bình tĩnh trong một buổi sáng đột nhiên bị mất việc, cô vô tình nặng lời với một người đàn ông (Russell Crowe) trên chiếc xe chắn đường mình. Rachel không hề biết rằng gã đàn ông mà cô vô tình gây hấn chính là một kẻ có vấn đề về tâm lý, điên cuồng, tàn độc và sẵn sàng “dạy dỗ” người khác bằng những bài học chết người. Cô và những người thân yêu của mình liệu có toàn mạng trong cuộc rượt đuổi đó?','Derrick Borte','images/poster_kcs_5_1_.jpg','Tiếng Anh - Phụ đề Tiếng Việt','KẺ CUỒNG SÁT','2021-11-20',91,436,0,NULL),(5,'Gia đình, Phiêu Lưu, Tâm Lý, Thần thoại','Chuyển thể từ cuốn sách Những cuộc phiêu lưu của Pinocchio của nhà văn người Ý Carlo Collodi từng làm say mê bao thế hệ độc giả khắp thế giới, bộ phim kể về Pinocchio - chú bé người gỗ do bác thợ mộc Gepetto tạo nên, khao khát trở thành một câu bé đích thực bằng xương bằng thịt. Với chất liệu văn học tuyệt vời, cùng diễn xuất ấn tượng của chủ nhân tượng vàng Oscar - Roberto Benigni, phim đã nhận về 15 đề cử David di Donatello 2020 – giải thưởng điện ảnh cao quý, được xem như Oscars của Ý, bao gồm đề cử cho Đạo diễn xuất sắc nhất và Phim xuất sắc nhất.','Matteo Garrone','images/pinocchio_2.jpg','Tiếng Ý - Phụ đề Tiếng Việt','CẬU BÉ NGƯỜI GỖ PINOCCHIO','2021-11-20',125,442,0,NULL),(6,'Hoạt Hình','(Khởi chiếu lại ngày 31.7.2020) Lấy bối cảnh tại thành phố giả tưởng San Fransokyo, thiên tài chế tạo robot Hiro Hamada, nhờ sự định hướng và cổ vũ của người anh trai Tadashi, quyết tâm sử dụng tài năng thiên bẩm của mình một cách nghiêm túc và giúp ích cho cộng đồng. Nhưng bỗng một biến cố bất ngờ ập đến đe dọa San Fransokyo, Hiro cùng với chú robot Baymax tự chế tạo ra, đã hợp lực với những người bạn cùng chí hướng như Go Go Tamago, Wasabi, Honey Lemon và Fred để cùng nhau lên đường chiến đấu bảo vệ thành phố.','Don Hall; Chris Williams','images/14-11-07_-_big_hero_6_biet_doi_big_hero_6_v5-01_1_.jpg','107','BIỆT ĐỘI BIG HERO 6','2021-11-20',107,903,16,'2D'),(7,'Hoạt Hình','Phim là câu chuyện kể về Freddy Lupin - người thừa kế một gia đình sói quý tộc. Vào sinh nhật lần thứ 13 của mình, Freddy phải thực hiện nghi lễ trưởng thành và biến hình thành sói trước sự chứng kiến của các thành viên trong gia tộc. Thế nhưng, cậu lại biến thành một chú chó lông xù (Poodle). Trong lúc tuyệt vọng và nghĩ rằng cuộc đời đã chấm hết, Freddy bắt đầu một cuộc phiêu lưu mới đầy thú vị và vui nhộn; nhưng bất ngờ khám phá ra sự thật về cái chết bí ẩn của cha mình, rồi biết được một thợ săn người sói đang lên kế hoạch tiêu diệt tất cả gia đình và bạn bè cậu. Với vẻ ngoài nhỏ bé của một chú cún, liệu Freddy có ngăn chặn được âm mưu độc ác và chứng minh mình là sói 100%?','Alexs Stadermann','images/poster_soi_100_payoff.jpg','Tiếng Anh - Phụ đề Tiếng Việt; Lồng tiếng','SÓI 100%','2021-11-20',96,190,0,NULL),(8,'Hài, Kinh Dị, Tình cảm','Yêu Nhau Mùa Ế xoay quanh Lin, cô nàng có khả năng nhìn thấy ma quỷ. Sau khi chia tay bạn trai nam thần, cô cảm thấy mệt mỏi bởi chốn thành thị xô bồ nên quyết định… lên rừng ở ẩn. Xách ba lô đến một homestay vắng vẻ ở phía Bắc, Lin vô tình gặp gỡ chàng biên kịch gia trẻ tuổi Pud. Trải qua nhiều khoảnh khắc đáng nhớ, họ dần cảm mến nhau bất chấp sự đeo bám, phá phách của các oan hồn bản địa.','Nareubadee Wetchakam','images/ynme_poster_newversion_1_.jpg','Tiếng Thái - Phụ đề Tiếng Việt','YÊU NHAU MÙA Ế','2021-11-20',125,241,0,NULL),(9,'Hành động',' Dominic "Dom" Toretto và Letty Ortiz đang cùng nhau hưởng tuần trăng mật tại Havana. Tại đây, Dom nhận được lời thách thức cho một cuộc đua xe đường phố đến từ một tay đua địa phương có tên Raldo. Dom đặt cược chiếc siêu xe của mình với Raldo, đổi lấy chiếc xe đua của Raldo nhằm tặng nó cho người em họ Fernando của mình. Sau khi chiến thắng cuộc đua trong suýt soát, Dom đồng ý cho Raldo giữ lại chiếc xe đua của hắn để đổi lấy sự tôn trọng của anh ta, và tặng chiếc siêu xe của mình cho người em họ. Ngày kế tiếp, Dom bị một nữ tin tặc tên Cipher tiếp cận, người ép buộc anh phải đổi phe và làm việc cho ả.
Ngay sau cuộc gặp gỡ, Dom và đồng đội của mình, bao gồm Letty, Roman Pearce, Tej Parker, Ramsey và đặc vụ DSS Luke Hobbs đã cùng nhau đánh cắp thiết bị bom xung điện từ (EMP) từ một căn cứ quân đội tại Berlin. Trong lúc chạy thoát, Dom đã phản bội, đẩy Hobbs ra khỏi tuyến đường và mang thiết bị về cho Cipher. Hobbs sau đó bị bắt và bị nhốt trong cùng một nhà tù mà Deckard Shaw đang bị giam giữ. Sau khi gây ra bạo động, cả hai đều được Frank Petty/Ngài Không Ai Cả và trợ lý, Eric Reisner/Tiểu Không Ai Cả, đưa về căn cứ để giúp đồng đội của Dom và truy bắt Cipher.','F. Gary Gray','images/Fast_and_furious_8.jpg','Tiếng Anh - Phụ đề Tiếng Việt','Fast and Furious 8','2021-11-20',136,20,16,'3D');
/*!40000 ALTER TABLE `movies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room_chairs`
--

DROP TABLE IF EXISTS `room_chairs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `room_chairs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `status` bit(1) NOT NULL,
  `chair_id` int DEFAULT NULL,
  `room_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKke4xki8q4m1uywuq8plxyjrua` (`chair_id`),
  KEY `FK2wpi3kqrjh6o3dx1enlqudwqs` (`room_id`),
  CONSTRAINT `FK2wpi3kqrjh6o3dx1enlqudwqs` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`),
  CONSTRAINT `FKke4xki8q4m1uywuq8plxyjrua` FOREIGN KEY (`chair_id`) REFERENCES `chairs` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1441 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room_chairs`
--

LOCK TABLES `room_chairs` WRITE;
/*!40000 ALTER TABLE `room_chairs` DISABLE KEYS */;
INSERT INTO `room_chairs` VALUES (161,_binary '',1,6),(162,_binary '',2,6),(163,_binary '',3,6),(164,_binary '\0',4,6),(165,_binary '\0',5,6),(166,_binary '\0',6,6),(167,_binary '\0',7,6),(168,_binary '\0',8,6),(169,_binary '\0',9,6),(170,_binary '\0',10,6),(171,_binary '\0',11,6),(172,_binary '\0',12,6),(173,_binary '\0',13,6),(174,_binary '\0',14,6),(175,_binary '\0',15,6),(176,_binary '\0',16,6),(177,_binary '\0',17,6),(178,_binary '\0',18,6),(179,_binary '\0',19,6),(180,_binary '\0',20,6),(181,_binary '\0',21,6),(182,_binary '\0',22,6),(183,_binary '\0',23,6),(184,_binary '\0',24,6),(185,_binary '\0',25,6),(186,_binary '\0',26,6),(187,_binary '\0',27,6),(188,_binary '\0',28,6),(189,_binary '\0',29,6),(190,_binary '\0',30,6),(191,_binary '\0',31,6),(192,_binary '\0',32,6),(193,_binary '\0',1,7),(194,_binary '\0',2,7),(195,_binary '\0',3,7),(196,_binary '\0',4,7),(197,_binary '\0',5,7),(198,_binary '\0',6,7),(199,_binary '\0',7,7),(200,_binary '\0',8,7),(201,_binary '\0',9,7),(202,_binary '\0',10,7),(203,_binary '\0',11,7),(204,_binary '\0',12,7),(205,_binary '\0',13,7),(206,_binary '\0',14,7),(207,_binary '\0',15,7),(208,_binary '\0',16,7),(209,_binary '\0',17,7),(210,_binary '\0',18,7),(211,_binary '\0',19,7),(212,_binary '\0',20,7),(213,_binary '\0',21,7),(214,_binary '\0',22,7),(215,_binary '\0',23,7),(216,_binary '\0',24,7),(217,_binary '\0',25,7),(218,_binary '\0',26,7),(219,_binary '\0',27,7),(220,_binary '\0',28,7),(221,_binary '\0',29,7),(222,_binary '\0',30,7),(223,_binary '\0',31,7),(224,_binary '\0',32,7),(225,_binary '',1,8),(226,_binary '\0',2,8),(227,_binary '\0',3,8),(228,_binary '\0',4,8),(229,_binary '\0',5,8),(230,_binary '\0',6,8),(231,_binary '\0',7,8),(232,_binary '\0',8,8),(233,_binary '\0',9,8),(234,_binary '\0',10,8),(235,_binary '\0',11,8),(236,_binary '\0',12,8),(237,_binary '\0',13,8),(238,_binary '\0',14,8),(239,_binary '\0',15,8),(240,_binary '\0',16,8),(241,_binary '\0',17,8),(242,_binary '\0',18,8),(243,_binary '\0',19,8),(244,_binary '\0',20,8),(245,_binary '\0',21,8),(246,_binary '\0',22,8),(247,_binary '\0',23,8),(248,_binary '\0',24,8),(249,_binary '\0',25,8),(250,_binary '\0',26,8),(251,_binary '\0',27,8),(252,_binary '\0',28,8),(253,_binary '\0',29,8),(254,_binary '\0',30,8),(255,_binary '\0',31,8),(256,_binary '\0',32,8),(257,_binary '\0',1,9),(258,_binary '',2,9),(259,_binary '\0',3,9),(260,_binary '\0',4,9),(261,_binary '\0',5,9),(262,_binary '\0',6,9),(263,_binary '\0',7,9),(264,_binary '\0',8,9),(265,_binary '\0',9,9),(266,_binary '\0',10,9),(267,_binary '\0',11,9),(268,_binary '\0',12,9),(269,_binary '\0',13,9),(270,_binary '\0',14,9),(271,_binary '\0',15,9),(272,_binary '\0',16,9),(273,_binary '\0',17,9),(274,_binary '\0',18,9),(275,_binary '\0',19,9),(276,_binary '\0',20,9),(277,_binary '\0',21,9),(278,_binary '\0',22,9),(279,_binary '\0',23,9),(280,_binary '\0',24,9),(281,_binary '\0',25,9),(282,_binary '\0',26,9),(283,_binary '\0',27,9),(284,_binary '\0',28,9),(285,_binary '\0',29,9),(286,_binary '\0',30,9),(287,_binary '\0',31,9),(288,_binary '\0',32,9),(289,_binary '\0',1,10),(290,_binary '\0',2,10),(291,_binary '\0',3,10),(292,_binary '\0',4,10),(293,_binary '\0',5,10),(294,_binary '\0',6,10),(295,_binary '\0',7,10),(296,_binary '\0',8,10),(297,_binary '\0',9,10),(298,_binary '\0',10,10),(299,_binary '\0',11,10),(300,_binary '\0',12,10),(301,_binary '\0',13,10),(302,_binary '\0',14,10),(303,_binary '\0',15,10),(304,_binary '\0',16,10),(305,_binary '\0',17,10),(306,_binary '\0',18,10),(307,_binary '\0',19,10),(308,_binary '\0',20,10),(309,_binary '\0',21,10),(310,_binary '\0',22,10),(311,_binary '\0',23,10),(312,_binary '\0',24,10),(313,_binary '\0',25,10),(314,_binary '\0',26,10),(315,_binary '\0',27,10),(316,_binary '\0',28,10),(317,_binary '\0',29,10),(318,_binary '\0',30,10),(319,_binary '\0',31,10),(320,_binary '\0',32,10),(321,_binary '\0',1,11),(322,_binary '\0',2,11),(323,_binary '\0',3,11),(324,_binary '\0',4,11),(325,_binary '\0',5,11),(326,_binary '\0',6,11),(327,_binary '\0',7,11),(328,_binary '\0',8,11),(329,_binary '\0',9,11),(330,_binary '\0',10,11),(331,_binary '\0',11,11),(332,_binary '\0',12,11),(333,_binary '\0',13,11),(334,_binary '\0',14,11),(335,_binary '\0',15,11),(336,_binary '\0',16,11),(337,_binary '\0',17,11),(338,_binary '\0',18,11),(339,_binary '\0',19,11),(340,_binary '\0',20,11),(341,_binary '\0',21,11),(342,_binary '\0',22,11),(343,_binary '\0',23,11),(344,_binary '\0',24,11),(345,_binary '\0',25,11),(346,_binary '\0',26,11),(347,_binary '\0',27,11),(348,_binary '\0',28,11),(349,_binary '\0',29,11),(350,_binary '\0',30,11),(351,_binary '\0',31,11),(352,_binary '\0',32,11),(353,_binary '\0',1,12),(354,_binary '\0',2,12),(355,_binary '\0',3,12),(356,_binary '\0',4,12),(357,_binary '\0',5,12),(358,_binary '\0',6,12),(359,_binary '\0',7,12),(360,_binary '\0',8,12),(361,_binary '\0',9,12),(362,_binary '\0',10,12),(363,_binary '\0',11,12),(364,_binary '\0',12,12),(365,_binary '\0',13,12),(366,_binary '\0',14,12),(367,_binary '\0',15,12),(368,_binary '\0',16,12),(369,_binary '\0',17,12),(370,_binary '\0',18,12),(371,_binary '\0',19,12),(372,_binary '\0',20,12),(373,_binary '\0',21,12),(374,_binary '\0',22,12),(375,_binary '\0',23,12),(376,_binary '\0',24,12),(377,_binary '\0',25,12),(378,_binary '\0',26,12),(379,_binary '\0',27,12),(380,_binary '\0',28,12),(381,_binary '\0',29,12),(382,_binary '\0',30,12),(383,_binary '\0',31,12),(384,_binary '\0',32,12),(385,_binary '\0',1,13),(386,_binary '\0',2,13),(387,_binary '\0',3,13),(388,_binary '\0',4,13),(389,_binary '\0',5,13),(390,_binary '\0',6,13),(391,_binary '\0',7,13),(392,_binary '\0',8,13),(393,_binary '\0',9,13),(394,_binary '\0',10,13),(395,_binary '\0',11,13),(396,_binary '\0',12,13),(397,_binary '\0',13,13),(398,_binary '\0',14,13),(399,_binary '\0',15,13),(400,_binary '\0',16,13),(401,_binary '\0',17,13),(402,_binary '\0',18,13),(403,_binary '\0',19,13),(404,_binary '\0',20,13),(405,_binary '\0',21,13),(406,_binary '\0',22,13),(407,_binary '\0',23,13),(408,_binary '\0',24,13),(409,_binary '\0',25,13),(410,_binary '\0',26,13),(411,_binary '\0',27,13),(412,_binary '\0',28,13),(413,_binary '\0',29,13),(414,_binary '\0',30,13),(415,_binary '\0',31,13),(416,_binary '\0',32,13),(417,_binary '\0',1,14),(418,_binary '\0',2,14),(419,_binary '\0',3,14),(420,_binary '\0',4,14),(421,_binary '\0',5,14),(422,_binary '\0',6,14),(423,_binary '\0',7,14),(424,_binary '\0',8,14),(425,_binary '\0',9,14),(426,_binary '\0',10,14),(427,_binary '\0',11,14),(428,_binary '\0',12,14),(429,_binary '\0',13,14),(430,_binary '\0',14,14),(431,_binary '\0',15,14),(432,_binary '\0',16,14),(433,_binary '\0',17,14),(434,_binary '\0',18,14),(435,_binary '\0',19,14),(436,_binary '\0',20,14),(437,_binary '\0',21,14),(438,_binary '\0',22,14),(439,_binary '\0',23,14),(440,_binary '\0',24,14),(441,_binary '\0',25,14),(442,_binary '\0',26,14),(443,_binary '\0',27,14),(444,_binary '\0',28,14),(445,_binary '\0',29,14),(446,_binary '\0',30,14),(447,_binary '\0',31,14),(448,_binary '\0',32,14),(449,_binary '\0',1,15),(450,_binary '\0',2,15),(451,_binary '\0',3,15),(452,_binary '\0',4,15),(453,_binary '\0',5,15),(454,_binary '\0',6,15),(455,_binary '\0',7,15),(456,_binary '\0',8,15),(457,_binary '\0',9,15),(458,_binary '\0',10,15),(459,_binary '\0',11,15),(460,_binary '\0',12,15),(461,_binary '\0',13,15),(462,_binary '\0',14,15),(463,_binary '\0',15,15),(464,_binary '\0',16,15),(465,_binary '\0',17,15),(466,_binary '\0',18,15),(467,_binary '\0',19,15),(468,_binary '\0',20,15),(469,_binary '\0',21,15),(470,_binary '\0',22,15),(471,_binary '\0',23,15),(472,_binary '\0',24,15),(473,_binary '\0',25,15),(474,_binary '\0',26,15),(475,_binary '\0',27,15),(476,_binary '\0',28,15),(477,_binary '\0',29,15),(478,_binary '\0',30,15),(479,_binary '\0',31,15),(480,_binary '\0',32,15),(481,_binary '\0',1,16),(482,_binary '\0',2,16),(483,_binary '\0',3,16),(484,_binary '\0',4,16),(485,_binary '\0',5,16),(486,_binary '\0',6,16),(487,_binary '\0',7,16),(488,_binary '\0',8,16),(489,_binary '\0',9,16),(490,_binary '\0',10,16),(491,_binary '\0',11,16),(492,_binary '\0',12,16),(493,_binary '\0',13,16),(494,_binary '\0',14,16),(495,_binary '\0',15,16),(496,_binary '\0',16,16),(497,_binary '\0',17,16),(498,_binary '\0',18,16),(499,_binary '\0',19,16),(500,_binary '\0',20,16),(501,_binary '\0',21,16),(502,_binary '\0',22,16),(503,_binary '\0',23,16),(504,_binary '\0',24,16),(505,_binary '\0',25,16),(506,_binary '\0',26,16),(507,_binary '\0',27,16),(508,_binary '\0',28,16),(509,_binary '\0',29,16),(510,_binary '\0',30,16),(511,_binary '\0',31,16),(512,_binary '\0',32,16),(513,_binary '\0',1,17),(514,_binary '\0',2,17),(515,_binary '\0',3,17),(516,_binary '\0',4,17),(517,_binary '\0',5,17),(518,_binary '\0',6,17),(519,_binary '\0',7,17),(520,_binary '\0',8,17),(521,_binary '\0',9,17),(522,_binary '\0',10,17),(523,_binary '\0',11,17),(524,_binary '\0',12,17),(525,_binary '\0',13,17),(526,_binary '\0',14,17),(527,_binary '\0',15,17),(528,_binary '\0',16,17),(529,_binary '\0',17,17),(530,_binary '\0',18,17),(531,_binary '\0',19,17),(532,_binary '\0',20,17),(533,_binary '\0',21,17),(534,_binary '\0',22,17),(535,_binary '\0',23,17),(536,_binary '\0',24,17),(537,_binary '\0',25,17),(538,_binary '\0',26,17),(539,_binary '\0',27,17),(540,_binary '\0',28,17),(541,_binary '\0',29,17),(542,_binary '\0',30,17),(543,_binary '\0',31,17),(544,_binary '\0',32,17),(545,_binary '\0',1,18),(546,_binary '\0',2,18),(547,_binary '\0',3,18),(548,_binary '\0',4,18),(549,_binary '\0',5,18),(550,_binary '\0',6,18),(551,_binary '\0',7,18),(552,_binary '\0',8,18),(553,_binary '\0',9,18),(554,_binary '\0',10,18),(555,_binary '\0',11,18),(556,_binary '\0',12,18),(557,_binary '\0',13,18),(558,_binary '\0',14,18),(559,_binary '\0',15,18),(560,_binary '\0',16,18),(561,_binary '\0',17,18),(562,_binary '\0',18,18),(563,_binary '\0',19,18),(564,_binary '\0',20,18),(565,_binary '\0',21,18),(566,_binary '\0',22,18),(567,_binary '\0',23,18),(568,_binary '\0',24,18),(569,_binary '\0',25,18),(570,_binary '\0',26,18),(571,_binary '\0',27,18),(572,_binary '\0',28,18),(573,_binary '\0',29,18),(574,_binary '\0',30,18),(575,_binary '\0',31,18),(576,_binary '\0',32,18),(577,_binary '\0',1,19),(578,_binary '\0',2,19),(579,_binary '\0',3,19),(580,_binary '\0',4,19),(581,_binary '\0',5,19),(582,_binary '\0',6,19),(583,_binary '\0',7,19),(584,_binary '\0',8,19),(585,_binary '\0',9,19),(586,_binary '\0',10,19),(587,_binary '\0',11,19),(588,_binary '\0',12,19),(589,_binary '\0',13,19),(590,_binary '\0',14,19),(591,_binary '\0',15,19),(592,_binary '\0',16,19),(593,_binary '\0',17,19),(594,_binary '\0',18,19),(595,_binary '\0',19,19),(596,_binary '\0',20,19),(597,_binary '\0',21,19),(598,_binary '\0',22,19),(599,_binary '\0',23,19),(600,_binary '\0',24,19),(601,_binary '\0',25,19),(602,_binary '\0',26,19),(603,_binary '\0',27,19),(604,_binary '\0',28,19),(605,_binary '\0',29,19),(606,_binary '\0',30,19),(607,_binary '\0',31,19),(608,_binary '\0',32,19),(609,_binary '',1,20),(610,_binary '',2,20),(611,_binary '',3,20),(612,_binary '',4,20),(613,_binary '\0',5,20),(614,_binary '\0',6,20),(615,_binary '\0',7,20),(616,_binary '\0',8,20),(617,_binary '\0',9,20),(618,_binary '\0',10,20),(619,_binary '\0',11,20),(620,_binary '\0',12,20),(621,_binary '\0',13,20),(622,_binary '\0',14,20),(623,_binary '\0',15,20),(624,_binary '\0',16,20),(625,_binary '\0',17,20),(626,_binary '\0',18,20),(627,_binary '\0',19,20),(628,_binary '\0',20,20),(629,_binary '\0',21,20),(630,_binary '\0',22,20),(631,_binary '\0',23,20),(632,_binary '\0',24,20),(633,_binary '\0',25,20),(634,_binary '\0',26,20),(635,_binary '\0',27,20),(636,_binary '\0',28,20),(637,_binary '\0',29,20),(638,_binary '\0',30,20),(639,_binary '\0',31,20),(640,_binary '\0',32,20),(641,_binary '\0',1,21),(642,_binary '\0',2,21),(643,_binary '\0',3,21),(644,_binary '\0',4,21),(645,_binary '\0',5,21),(646,_binary '\0',6,21),(647,_binary '\0',7,21),(648,_binary '\0',8,21),(649,_binary '\0',9,21),(650,_binary '\0',10,21),(651,_binary '\0',11,21),(652,_binary '\0',12,21),(653,_binary '\0',13,21),(654,_binary '\0',14,21),(655,_binary '\0',15,21),(656,_binary '\0',16,21),(657,_binary '\0',17,21),(658,_binary '\0',18,21),(659,_binary '\0',19,21),(660,_binary '\0',20,21),(661,_binary '\0',21,21),(662,_binary '\0',22,21),(663,_binary '\0',23,21),(664,_binary '\0',24,21),(665,_binary '\0',25,21),(666,_binary '\0',26,21),(667,_binary '\0',27,21),(668,_binary '\0',28,21),(669,_binary '\0',29,21),(670,_binary '\0',30,21),(671,_binary '\0',31,21),(672,_binary '\0',32,21),(673,_binary '',1,22),(674,_binary '\0',2,22),(675,_binary '\0',3,22),(676,_binary '\0',4,22),(677,_binary '\0',5,22),(678,_binary '\0',6,22),(679,_binary '\0',7,22),(680,_binary '\0',8,22),(681,_binary '\0',9,22),(682,_binary '\0',10,22),(683,_binary '\0',11,22),(684,_binary '\0',12,22),(685,_binary '\0',13,22),(686,_binary '\0',14,22),(687,_binary '\0',15,22),(688,_binary '\0',16,22),(689,_binary '\0',17,22),(690,_binary '\0',18,22),(691,_binary '\0',19,22),(692,_binary '\0',20,22),(693,_binary '\0',21,22),(694,_binary '\0',22,22),(695,_binary '\0',23,22),(696,_binary '\0',24,22),(697,_binary '\0',25,22),(698,_binary '\0',26,22),(699,_binary '\0',27,22),(700,_binary '\0',28,22),(701,_binary '\0',29,22),(702,_binary '\0',30,22),(703,_binary '\0',31,22),(704,_binary '\0',32,22),(705,_binary '\0',1,23),(706,_binary '',2,23),(707,_binary '',3,23),(708,_binary '\0',4,23),(709,_binary '\0',5,23),(710,_binary '\0',6,23),(711,_binary '\0',7,23),(712,_binary '\0',8,23),(713,_binary '\0',9,23),(714,_binary '\0',10,23),(715,_binary '\0',11,23),(716,_binary '\0',12,23),(717,_binary '\0',13,23),(718,_binary '\0',14,23),(719,_binary '\0',15,23),(720,_binary '\0',16,23),(721,_binary '\0',17,23),(722,_binary '\0',18,23),(723,_binary '\0',19,23),(724,_binary '\0',20,23),(725,_binary '\0',21,23),(726,_binary '\0',22,23),(727,_binary '\0',23,23),(728,_binary '\0',24,23),(729,_binary '\0',25,23),(730,_binary '\0',26,23),(731,_binary '\0',27,23),(732,_binary '\0',28,23),(733,_binary '\0',29,23),(734,_binary '\0',30,23),(735,_binary '\0',31,23),(736,_binary '\0',32,23),(737,_binary '\0',1,24),(738,_binary '\0',2,24),(739,_binary '\0',3,24),(740,_binary '\0',4,24),(741,_binary '\0',5,24),(742,_binary '\0',6,24),(743,_binary '\0',7,24),(744,_binary '\0',8,24),(745,_binary '\0',9,24),(746,_binary '\0',10,24),(747,_binary '\0',11,24),(748,_binary '\0',12,24),(749,_binary '\0',13,24),(750,_binary '\0',14,24),(751,_binary '\0',15,24),(752,_binary '\0',16,24),(753,_binary '\0',17,24),(754,_binary '\0',18,24),(755,_binary '\0',19,24),(756,_binary '\0',20,24),(757,_binary '\0',21,24),(758,_binary '\0',22,24),(759,_binary '\0',23,24),(760,_binary '\0',24,24),(761,_binary '\0',25,24),(762,_binary '\0',26,24),(763,_binary '\0',27,24),(764,_binary '\0',28,24),(765,_binary '\0',29,24),(766,_binary '\0',30,24),(767,_binary '\0',31,24),(768,_binary '\0',32,24),(769,_binary '\0',1,25),(770,_binary '\0',2,25),(771,_binary '\0',3,25),(772,_binary '\0',4,25),(773,_binary '\0',5,25),(774,_binary '\0',6,25),(775,_binary '\0',7,25),(776,_binary '\0',8,25),(777,_binary '\0',9,25),(778,_binary '\0',10,25),(779,_binary '\0',11,25),(780,_binary '\0',12,25),(781,_binary '\0',13,25),(782,_binary '\0',14,25),(783,_binary '\0',15,25),(784,_binary '\0',16,25),(785,_binary '\0',17,25),(786,_binary '\0',18,25),(787,_binary '\0',19,25),(788,_binary '\0',20,25),(789,_binary '\0',21,25),(790,_binary '\0',22,25),(791,_binary '\0',23,25),(792,_binary '\0',24,25),(793,_binary '\0',25,25),(794,_binary '\0',26,25),(795,_binary '\0',27,25),(796,_binary '\0',28,25),(797,_binary '\0',29,25),(798,_binary '\0',30,25),(799,_binary '\0',31,25),(800,_binary '\0',32,25),(801,_binary '\0',1,26),(802,_binary '\0',2,26),(803,_binary '\0',3,26),(804,_binary '\0',4,26),(805,_binary '\0',5,26),(806,_binary '\0',6,26),(807,_binary '\0',7,26),(808,_binary '\0',8,26),(809,_binary '\0',9,26),(810,_binary '\0',10,26),(811,_binary '\0',11,26),(812,_binary '\0',12,26),(813,_binary '\0',13,26),(814,_binary '\0',14,26),(815,_binary '\0',15,26),(816,_binary '\0',16,26),(817,_binary '\0',17,26),(818,_binary '\0',18,26),(819,_binary '\0',19,26),(820,_binary '\0',20,26),(821,_binary '\0',21,26),(822,_binary '\0',22,26),(823,_binary '\0',23,26),(824,_binary '\0',24,26),(825,_binary '\0',25,26),(826,_binary '\0',26,26),(827,_binary '\0',27,26),(828,_binary '\0',28,26),(829,_binary '\0',29,26),(830,_binary '\0',30,26),(831,_binary '\0',31,26),(832,_binary '\0',32,26),(833,_binary '\0',1,27),(834,_binary '\0',2,27),(835,_binary '\0',3,27),(836,_binary '\0',4,27),(837,_binary '\0',5,27),(838,_binary '\0',6,27),(839,_binary '\0',7,27),(840,_binary '\0',8,27),(841,_binary '\0',9,27),(842,_binary '\0',10,27),(843,_binary '\0',11,27),(844,_binary '\0',12,27),(845,_binary '\0',13,27),(846,_binary '\0',14,27),(847,_binary '\0',15,27),(848,_binary '\0',16,27),(849,_binary '\0',17,27),(850,_binary '\0',18,27),(851,_binary '\0',19,27),(852,_binary '\0',20,27),(853,_binary '\0',21,27),(854,_binary '\0',22,27),(855,_binary '\0',23,27),(856,_binary '\0',24,27),(857,_binary '\0',25,27),(858,_binary '\0',26,27),(859,_binary '\0',27,27),(860,_binary '\0',28,27),(861,_binary '\0',29,27),(862,_binary '\0',30,27),(863,_binary '\0',31,27),(864,_binary '\0',32,27),(865,_binary '\0',1,28),(866,_binary '\0',2,28),(867,_binary '\0',3,28),(868,_binary '\0',4,28),(869,_binary '\0',5,28),(870,_binary '\0',6,28),(871,_binary '\0',7,28),(872,_binary '\0',8,28),(873,_binary '\0',9,28),(874,_binary '\0',10,28),(875,_binary '\0',11,28),(876,_binary '\0',12,28),(877,_binary '\0',13,28),(878,_binary '\0',14,28),(879,_binary '\0',15,28),(880,_binary '\0',16,28),(881,_binary '\0',17,28),(882,_binary '\0',18,28),(883,_binary '\0',19,28),(884,_binary '\0',20,28),(885,_binary '\0',21,28),(886,_binary '\0',22,28),(887,_binary '\0',23,28),(888,_binary '\0',24,28),(889,_binary '\0',25,28),(890,_binary '\0',26,28),(891,_binary '\0',27,28),(892,_binary '\0',28,28),(893,_binary '\0',29,28),(894,_binary '\0',30,28),(895,_binary '\0',31,28),(896,_binary '\0',32,28),(897,_binary '\0',1,29),(898,_binary '\0',2,29),(899,_binary '\0',3,29),(900,_binary '\0',4,29),(901,_binary '\0',5,29),(902,_binary '\0',6,29),(903,_binary '\0',7,29),(904,_binary '\0',8,29),(905,_binary '\0',9,29),(906,_binary '\0',10,29),(907,_binary '\0',11,29),(908,_binary '\0',12,29),(909,_binary '\0',13,29),(910,_binary '\0',14,29),(911,_binary '\0',15,29),(912,_binary '\0',16,29),(913,_binary '\0',17,29),(914,_binary '\0',18,29),(915,_binary '\0',19,29),(916,_binary '\0',20,29),(917,_binary '\0',21,29),(918,_binary '\0',22,29),(919,_binary '\0',23,29),(920,_binary '\0',24,29),(921,_binary '\0',25,29),(922,_binary '\0',26,29),(923,_binary '\0',27,29),(924,_binary '\0',28,29),(925,_binary '\0',29,29),(926,_binary '\0',30,29),(927,_binary '\0',31,29),(928,_binary '\0',32,29),(929,_binary '\0',1,30),(930,_binary '\0',2,30),(931,_binary '\0',3,30),(932,_binary '\0',4,30),(933,_binary '\0',5,30),(934,_binary '\0',6,30),(935,_binary '\0',7,30),(936,_binary '\0',8,30),(937,_binary '\0',9,30),(938,_binary '\0',10,30),(939,_binary '\0',11,30),(940,_binary '\0',12,30),(941,_binary '\0',13,30),(942,_binary '\0',14,30),(943,_binary '\0',15,30),(944,_binary '\0',16,30),(945,_binary '\0',17,30),(946,_binary '\0',18,30),(947,_binary '\0',19,30),(948,_binary '\0',20,30),(949,_binary '\0',21,30),(950,_binary '\0',22,30),(951,_binary '\0',23,30),(952,_binary '\0',24,30),(953,_binary '\0',25,30),(954,_binary '\0',26,30),(955,_binary '\0',27,30),(956,_binary '\0',28,30),(957,_binary '\0',29,30),(958,_binary '\0',30,30),(959,_binary '\0',31,30),(960,_binary '\0',32,30),(961,_binary '\0',1,31),(962,_binary '\0',2,31),(963,_binary '\0',3,31),(964,_binary '\0',4,31),(965,_binary '\0',5,31),(966,_binary '\0',6,31),(967,_binary '\0',7,31),(968,_binary '\0',8,31),(969,_binary '\0',9,31),(970,_binary '\0',10,31),(971,_binary '\0',11,31),(972,_binary '\0',12,31),(973,_binary '\0',13,31),(974,_binary '\0',14,31),(975,_binary '\0',15,31),(976,_binary '\0',16,31),(977,_binary '\0',17,31),(978,_binary '\0',18,31),(979,_binary '\0',19,31),(980,_binary '\0',20,31),(981,_binary '\0',21,31),(982,_binary '\0',22,31),(983,_binary '\0',23,31),(984,_binary '\0',24,31),(985,_binary '\0',25,31),(986,_binary '\0',26,31),(987,_binary '\0',27,31),(988,_binary '\0',28,31),(989,_binary '\0',29,31),(990,_binary '\0',30,31),(991,_binary '\0',31,31),(992,_binary '\0',32,31),(993,_binary '\0',1,32),(994,_binary '\0',2,32),(995,_binary '\0',3,32),(996,_binary '\0',4,32),(997,_binary '\0',5,32),(998,_binary '\0',6,32),(999,_binary '\0',7,32),(1000,_binary '\0',8,32),(1001,_binary '\0',9,32),(1002,_binary '\0',10,32),(1003,_binary '\0',11,32),(1004,_binary '\0',12,32),(1005,_binary '\0',13,32),(1006,_binary '\0',14,32),(1007,_binary '\0',15,32),(1008,_binary '\0',16,32),(1009,_binary '\0',17,32),(1010,_binary '\0',18,32),(1011,_binary '\0',19,32),(1012,_binary '\0',20,32),(1013,_binary '\0',21,32),(1014,_binary '\0',22,32),(1015,_binary '\0',23,32),(1016,_binary '\0',24,32),(1017,_binary '\0',25,32),(1018,_binary '\0',26,32),(1019,_binary '\0',27,32),(1020,_binary '\0',28,32),(1021,_binary '\0',29,32),(1022,_binary '\0',30,32),(1023,_binary '\0',31,32),(1024,_binary '\0',32,32),(1025,_binary '',1,33),(1026,_binary '\0',2,33),(1027,_binary '\0',3,33),(1028,_binary '\0',4,33),(1029,_binary '\0',5,33),(1030,_binary '\0',6,33),(1031,_binary '\0',7,33),(1032,_binary '\0',8,33),(1033,_binary '\0',9,33),(1034,_binary '\0',10,33),(1035,_binary '\0',11,33),(1036,_binary '\0',12,33),(1037,_binary '\0',13,33),(1038,_binary '\0',14,33),(1039,_binary '\0',15,33),(1040,_binary '\0',16,33),(1041,_binary '\0',17,33),(1042,_binary '\0',18,33),(1043,_binary '\0',19,33),(1044,_binary '\0',20,33),(1045,_binary '\0',21,33),(1046,_binary '\0',22,33),(1047,_binary '\0',23,33),(1048,_binary '\0',24,33),(1049,_binary '\0',25,33),(1050,_binary '\0',26,33),(1051,_binary '\0',27,33),(1052,_binary '\0',28,33),(1053,_binary '\0',29,33),(1054,_binary '\0',30,33),(1055,_binary '\0',31,33),(1056,_binary '\0',32,33),(1057,_binary '',1,34),(1058,_binary '',2,34),(1059,_binary '\0',3,34),(1060,_binary '\0',4,34),(1061,_binary '\0',5,34),(1062,_binary '\0',6,34),(1063,_binary '\0',7,34),(1064,_binary '\0',8,34),(1065,_binary '\0',9,34),(1066,_binary '\0',10,34),(1067,_binary '\0',11,34),(1068,_binary '\0',12,34),(1069,_binary '\0',13,34),(1070,_binary '\0',14,34),(1071,_binary '\0',15,34),(1072,_binary '\0',16,34),(1073,_binary '\0',17,34),(1074,_binary '\0',18,34),(1075,_binary '\0',19,34),(1076,_binary '\0',20,34),(1077,_binary '\0',21,34),(1078,_binary '\0',22,34),(1079,_binary '\0',23,34),(1080,_binary '\0',24,34),(1081,_binary '\0',25,34),(1082,_binary '\0',26,34),(1083,_binary '\0',27,34),(1084,_binary '\0',28,34),(1085,_binary '\0',29,34),(1086,_binary '\0',30,34),(1087,_binary '\0',31,34),(1088,_binary '\0',32,34),(1089,_binary '\0',1,35),(1090,_binary '\0',2,35),(1091,_binary '\0',3,35),(1092,_binary '\0',4,35),(1093,_binary '\0',5,35),(1094,_binary '\0',6,35),(1095,_binary '\0',7,35),(1096,_binary '\0',8,35),(1097,_binary '\0',9,35),(1098,_binary '\0',10,35),(1099,_binary '\0',11,35),(1100,_binary '\0',12,35),(1101,_binary '\0',13,35),(1102,_binary '\0',14,35),(1103,_binary '\0',15,35),(1104,_binary '\0',16,35),(1105,_binary '\0',17,35),(1106,_binary '\0',18,35),(1107,_binary '\0',19,35),(1108,_binary '\0',20,35),(1109,_binary '\0',21,35),(1110,_binary '\0',22,35),(1111,_binary '\0',23,35),(1112,_binary '\0',24,35),(1113,_binary '\0',25,35),(1114,_binary '\0',26,35),(1115,_binary '\0',27,35),(1116,_binary '\0',28,35),(1117,_binary '\0',29,35),(1118,_binary '\0',30,35),(1119,_binary '\0',31,35),(1120,_binary '\0',32,35),(1121,_binary '\0',1,36),(1122,_binary '\0',2,36),(1123,_binary '\0',3,36),(1124,_binary '\0',4,36),(1125,_binary '\0',5,36),(1126,_binary '\0',6,36),(1127,_binary '\0',7,36),(1128,_binary '\0',8,36),(1129,_binary '\0',9,36),(1130,_binary '\0',10,36),(1131,_binary '\0',11,36),(1132,_binary '\0',12,36),(1133,_binary '\0',13,36),(1134,_binary '\0',14,36),(1135,_binary '\0',15,36),(1136,_binary '\0',16,36),(1137,_binary '\0',17,36),(1138,_binary '\0',18,36),(1139,_binary '\0',19,36),(1140,_binary '\0',20,36),(1141,_binary '\0',21,36),(1142,_binary '\0',22,36),(1143,_binary '\0',23,36),(1144,_binary '\0',24,36),(1145,_binary '\0',25,36),(1146,_binary '\0',26,36),(1147,_binary '\0',27,36),(1148,_binary '\0',28,36),(1149,_binary '\0',29,36),(1150,_binary '\0',30,36),(1151,_binary '\0',31,36),(1152,_binary '\0',32,36),(1153,_binary '\0',1,37),(1154,_binary '\0',2,37),(1155,_binary '\0',3,37),(1156,_binary '\0',4,37),(1157,_binary '\0',5,37),(1158,_binary '\0',6,37),(1159,_binary '\0',7,37),(1160,_binary '\0',8,37),(1161,_binary '\0',9,37),(1162,_binary '\0',10,37),(1163,_binary '\0',11,37),(1164,_binary '\0',12,37),(1165,_binary '\0',13,37),(1166,_binary '\0',14,37),(1167,_binary '\0',15,37),(1168,_binary '\0',16,37),(1169,_binary '\0',17,37),(1170,_binary '\0',18,37),(1171,_binary '\0',19,37),(1172,_binary '\0',20,37),(1173,_binary '\0',21,37),(1174,_binary '\0',22,37),(1175,_binary '\0',23,37),(1176,_binary '\0',24,37),(1177,_binary '\0',25,37),(1178,_binary '\0',26,37),(1179,_binary '\0',27,37),(1180,_binary '\0',28,37),(1181,_binary '\0',29,37),(1182,_binary '\0',30,37),(1183,_binary '\0',31,37),(1184,_binary '\0',32,37),(1185,_binary '\0',1,38),(1186,_binary '\0',2,38),(1187,_binary '\0',3,38),(1188,_binary '\0',4,38),(1189,_binary '\0',5,38),(1190,_binary '\0',6,38),(1191,_binary '\0',7,38),(1192,_binary '\0',8,38),(1193,_binary '\0',9,38),(1194,_binary '\0',10,38),(1195,_binary '\0',11,38),(1196,_binary '\0',12,38),(1197,_binary '\0',13,38),(1198,_binary '\0',14,38),(1199,_binary '\0',15,38),(1200,_binary '\0',16,38),(1201,_binary '\0',17,38),(1202,_binary '\0',18,38),(1203,_binary '\0',19,38),(1204,_binary '\0',20,38),(1205,_binary '\0',21,38),(1206,_binary '\0',22,38),(1207,_binary '\0',23,38),(1208,_binary '\0',24,38),(1209,_binary '\0',25,38),(1210,_binary '\0',26,38),(1211,_binary '\0',27,38),(1212,_binary '\0',28,38),(1213,_binary '\0',29,38),(1214,_binary '\0',30,38),(1215,_binary '\0',31,38),(1216,_binary '\0',32,38),(1217,_binary '\0',1,39),(1218,_binary '\0',2,39),(1219,_binary '\0',3,39),(1220,_binary '\0',4,39),(1221,_binary '\0',5,39),(1222,_binary '\0',6,39),(1223,_binary '\0',7,39),(1224,_binary '\0',8,39),(1225,_binary '\0',9,39),(1226,_binary '\0',10,39),(1227,_binary '\0',11,39),(1228,_binary '\0',12,39),(1229,_binary '\0',13,39),(1230,_binary '\0',14,39),(1231,_binary '\0',15,39),(1232,_binary '\0',16,39),(1233,_binary '\0',17,39),(1234,_binary '\0',18,39),(1235,_binary '\0',19,39),(1236,_binary '\0',20,39),(1237,_binary '\0',21,39),(1238,_binary '\0',22,39),(1239,_binary '\0',23,39),(1240,_binary '\0',24,39),(1241,_binary '\0',25,39),(1242,_binary '\0',26,39),(1243,_binary '\0',27,39),(1244,_binary '\0',28,39),(1245,_binary '\0',29,39),(1246,_binary '\0',30,39),(1247,_binary '\0',31,39),(1248,_binary '\0',32,39),(1249,_binary '\0',1,40),(1250,_binary '\0',2,40),(1251,_binary '\0',3,40),(1252,_binary '\0',4,40),(1253,_binary '\0',5,40),(1254,_binary '\0',6,40),(1255,_binary '\0',7,40),(1256,_binary '\0',8,40),(1257,_binary '\0',9,40),(1258,_binary '\0',10,40),(1259,_binary '\0',11,40),(1260,_binary '\0',12,40),(1261,_binary '\0',13,40),(1262,_binary '\0',14,40),(1263,_binary '\0',15,40),(1264,_binary '\0',16,40),(1265,_binary '\0',17,40),(1266,_binary '\0',18,40),(1267,_binary '\0',19,40),(1268,_binary '\0',20,40),(1269,_binary '\0',21,40),(1270,_binary '\0',22,40),(1271,_binary '\0',23,40),(1272,_binary '\0',24,40),(1273,_binary '\0',25,40),(1274,_binary '\0',26,40),(1275,_binary '\0',27,40),(1276,_binary '\0',28,40),(1277,_binary '\0',29,40),(1278,_binary '\0',30,40),(1279,_binary '\0',31,40),(1280,_binary '\0',32,40),(1281,_binary '\0',1,41),(1282,_binary '\0',2,41),(1283,_binary '\0',3,41),(1284,_binary '\0',4,41),(1285,_binary '\0',5,41),(1286,_binary '\0',6,41),(1287,_binary '\0',7,41),(1288,_binary '\0',8,41),(1289,_binary '\0',9,41),(1290,_binary '\0',10,41),(1291,_binary '\0',11,41),(1292,_binary '\0',12,41),(1293,_binary '\0',13,41),(1294,_binary '\0',14,41),(1295,_binary '\0',15,41),(1296,_binary '\0',16,41),(1297,_binary '\0',17,41),(1298,_binary '\0',18,41),(1299,_binary '',19,41),(1300,_binary '\0',20,41),(1301,_binary '\0',21,41),(1302,_binary '\0',22,41),(1303,_binary '\0',23,41),(1304,_binary '\0',24,41),(1305,_binary '\0',25,41),(1306,_binary '\0',26,41),(1307,_binary '\0',27,41),(1308,_binary '\0',28,41),(1309,_binary '\0',29,41),(1310,_binary '\0',30,41),(1311,_binary '\0',31,41),(1312,_binary '\0',32,41),(1313,_binary '\0',1,42),(1314,_binary '\0',2,42),(1315,_binary '\0',3,42),(1316,_binary '\0',4,42),(1317,_binary '\0',5,42),(1318,_binary '\0',6,42),(1319,_binary '\0',7,42),(1320,_binary '\0',8,42),(1321,_binary '\0',9,42),(1322,_binary '\0',10,42),(1323,_binary '\0',11,42),(1324,_binary '\0',12,42),(1325,_binary '\0',13,42),(1326,_binary '\0',14,42),(1327,_binary '\0',15,42),(1328,_binary '\0',16,42),(1329,_binary '\0',17,42),(1330,_binary '\0',18,42),(1331,_binary '\0',19,42),(1332,_binary '\0',20,42),(1333,_binary '\0',21,42),(1334,_binary '\0',22,42),(1335,_binary '\0',23,42),(1336,_binary '\0',24,42),(1337,_binary '\0',25,42),(1338,_binary '\0',26,42),(1339,_binary '\0',27,42),(1340,_binary '\0',28,42),(1341,_binary '\0',29,42),(1342,_binary '\0',30,42),(1343,_binary '\0',31,42),(1344,_binary '\0',32,42),(1345,_binary '\0',1,43),(1346,_binary '\0',2,43),(1347,_binary '\0',3,43),(1348,_binary '\0',4,43),(1349,_binary '\0',5,43),(1350,_binary '\0',6,43),(1351,_binary '\0',7,43),(1352,_binary '\0',8,43),(1353,_binary '\0',9,43),(1354,_binary '\0',10,43),(1355,_binary '\0',11,43),(1356,_binary '\0',12,43),(1357,_binary '\0',13,43),(1358,_binary '\0',14,43),(1359,_binary '\0',15,43),(1360,_binary '\0',16,43),(1361,_binary '\0',17,43),(1362,_binary '\0',18,43),(1363,_binary '\0',19,43),(1364,_binary '\0',20,43),(1365,_binary '\0',21,43),(1366,_binary '\0',22,43),(1367,_binary '\0',23,43),(1368,_binary '\0',24,43),(1369,_binary '\0',25,43),(1370,_binary '\0',26,43),(1371,_binary '\0',27,43),(1372,_binary '\0',28,43),(1373,_binary '\0',29,43),(1374,_binary '\0',30,43),(1375,_binary '\0',31,43),(1376,_binary '\0',32,43),(1377,_binary '\0',1,44),(1378,_binary '\0',2,44),(1379,_binary '\0',3,44),(1380,_binary '\0',4,44),(1381,_binary '\0',5,44),(1382,_binary '\0',6,44),(1383,_binary '\0',7,44),(1384,_binary '\0',8,44),(1385,_binary '\0',9,44),(1386,_binary '\0',10,44),(1387,_binary '\0',11,44),(1388,_binary '\0',12,44),(1389,_binary '\0',13,44),(1390,_binary '\0',14,44),(1391,_binary '\0',15,44),(1392,_binary '\0',16,44),(1393,_binary '\0',17,44),(1394,_binary '\0',18,44),(1395,_binary '\0',19,44),(1396,_binary '\0',20,44),(1397,_binary '\0',21,44),(1398,_binary '\0',22,44),(1399,_binary '\0',23,44),(1400,_binary '\0',24,44),(1401,_binary '\0',25,44),(1402,_binary '\0',26,44),(1403,_binary '\0',27,44),(1404,_binary '\0',28,44),(1405,_binary '\0',29,44),(1406,_binary '\0',30,44),(1407,_binary '\0',31,44),(1408,_binary '\0',32,44),(1409,_binary '\0',1,45),(1410,_binary '\0',2,45),(1411,_binary '\0',3,45),(1412,_binary '\0',4,45),(1413,_binary '\0',5,45),(1414,_binary '\0',6,45),(1415,_binary '\0',7,45),(1416,_binary '\0',8,45),(1417,_binary '\0',9,45),(1418,_binary '\0',10,45),(1419,_binary '\0',11,45),(1420,_binary '\0',12,45),(1421,_binary '\0',13,45),(1422,_binary '\0',14,45),(1423,_binary '\0',15,45),(1424,_binary '\0',16,45),(1425,_binary '\0',17,45),(1426,_binary '\0',18,45),(1427,_binary '\0',19,45),(1428,_binary '\0',20,45),(1429,_binary '\0',21,45),(1430,_binary '\0',22,45),(1431,_binary '\0',23,45),(1432,_binary '\0',24,45),(1433,_binary '\0',25,45),(1434,_binary '\0',26,45),(1435,_binary '\0',27,45),(1436,_binary '\0',28,45),(1437,_binary '\0',29,45),(1438,_binary '\0',30,45),(1439,_binary '\0',31,45),(1440,_binary '\0',32,45);
/*!40000 ALTER TABLE `room_chairs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room_movie_schedules`
--

DROP TABLE IF EXISTS `room_movie_schedules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `room_movie_schedules` (
  `id` int NOT NULL AUTO_INCREMENT,
  `movie_id` int DEFAULT NULL,
  `room_id` int DEFAULT NULL,
  `schedule_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKk6ubk7nndv7socboquftn617` (`movie_id`),
  KEY `FK5dr3fw0jnuj9wmypgta4kr4vw` (`room_id`),
  KEY `FKrqflt20fgh82yw7bx4pu2wt9y` (`schedule_id`),
  CONSTRAINT `FK5dr3fw0jnuj9wmypgta4kr4vw` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`),
  CONSTRAINT `FKk6ubk7nndv7socboquftn617` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`),
  CONSTRAINT `FKrqflt20fgh82yw7bx4pu2wt9y` FOREIGN KEY (`schedule_id`) REFERENCES `schedules` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room_movie_schedules`
--

LOCK TABLES `room_movie_schedules` WRITE;
/*!40000 ALTER TABLE `room_movie_schedules` DISABLE KEYS */;
INSERT INTO `room_movie_schedules` VALUES (1,1,6,3),(2,32,6,4),(3,1,6,5);
/*!40000 ALTER TABLE `room_movie_schedules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rooms`
--

DROP TABLE IF EXISTS `rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rooms` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `cinema_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKjp9bjtvlojbw581bpq23cpw4j` (`cinema_id`),
  CONSTRAINT `FKjp9bjtvlojbw581bpq23cpw4j` FOREIGN KEY (`cinema_id`) REFERENCES `cinemas` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rooms`
--

LOCK TABLES `rooms` WRITE;
/*!40000 ALTER TABLE `rooms` DISABLE KEYS */;
INSERT INTO `rooms` VALUES (6,'P01',2),(7,'P02',2),(8,'P03',2),(9,'P04',2),(10,'P05',2),(11,'P01',3),(12,'P02',3),(13,'P03',3),(14,'P04',3),(15,'P05',3),(16,'P01',4),(17,'P02',4),(18,'P03',4),(19,'P04',4),(20,'P05',4),(21,'P01',5),(22,'P02',5),(23,'P03',5),(24,'P04',5),(25,'P05',5),(26,'P01',6),(27,'P02',6),(28,'P03',6),(29,'P04',6),(30,'P05',6),(31,'P01',7),(32,'P02',7),(33,'P03',7),(34,'P04',7),(35,'P05',7),(36,'P01',8),(37,'P02',8),(38,'P03',8),(39,'P04',8),(40,'P05',8),(41,'P01',9),(42,'P02',9),(43,'P03',9),(44,'P04',9),(45,'P05',9);
/*!40000 ALTER TABLE `rooms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedules`
--

DROP TABLE IF EXISTS `schedules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schedules` (
  `id` int NOT NULL AUTO_INCREMENT,
  `time` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedules`
--

LOCK TABLES `schedules` WRITE;
/*!40000 ALTER TABLE `schedules` DISABLE KEYS */;
INSERT INTO `schedules` VALUES (1,'2021-11-15 12:10:00.000000'),(2,'2021-11-15 01:10:00.000000'),(3,'2021-11-15 12:15:00.000000'),(4,'2021-11-15 10:10:00.000000'),(5,'2021-11-15 22:00:00.000000');
/*!40000 ALTER TABLE `schedules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tickets`
--

DROP TABLE IF EXISTS `tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tickets` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `is_pay` bit(1) NOT NULL,
  `is_received` bit(1) NOT NULL,
  `room_chair_id` int DEFAULT NULL,
  `room_movie_schedule_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `amount` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKnif95hrdv04q2dpffjrgb7mdt` (`room_chair_id`),
  KEY `FKlvmnwqaladguonfvr4enspyfo` (`room_movie_schedule_id`),
  KEY `FK4eqsebpimnjen0q46ja6fl2hl` (`user_id`),
  CONSTRAINT `FK4eqsebpimnjen0q46ja6fl2hl` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `FKlvmnwqaladguonfvr4enspyfo` FOREIGN KEY (`room_movie_schedule_id`) REFERENCES `room_movie_schedules` (`id`),
  CONSTRAINT `FKnif95hrdv04q2dpffjrgb7mdt` FOREIGN KEY (`room_chair_id`) REFERENCES `room_chairs` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tickets`
--

LOCK TABLES `tickets` WRITE;
/*!40000 ALTER TABLE `tickets` DISABLE KEYS */;
INSERT INTO `tickets` VALUES (1,'ABB7AFD8-7E11','2021-11-15',_binary '\0',_binary '\0',161,1,1,60),(2,'5E390022-4C1D','2021-11-15',_binary '',_binary '',162,3,1,60),(3,'0EAC893A-E195','2021-11-15',_binary '\0',_binary '\0',163,3,1,60);
/*!40000 ALTER TABLE `tickets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `date_of_birth` date DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `gender` bit(1) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `cinema_love` varchar(255) DEFAULT NULL,
  `zone` varchar(255) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_6dotkott2kjsp8vw4d0m25fb7` (`email`),
  UNIQUE KEY `UK_r43af9ap4edm43mmtq01oddj6` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'1999-01-29','langtupg006@gmail.com','Luong Giai Huy',_binary '\0','$2a$10$hdSblk2DqBp7zW1Wu7.q0.Oqdn6i9NkgcBDqBRMDnWOvR6e6riqS2','ROLE_USER','luonggiaihuy','0909090909','CGV','Hồ Chí Minh',NULL),(2,'2000-10-29','votuanhuy@gmail.com','Admin',_binary '','$2a$10$hdSblk2DqBp7zW1Wu7.q0.Oqdn6i9NkgcBDqBRMDnWOvR6e6riqS2','ROLE_ADMIN','admin','085929251',NULL,NULL,NULL),(3,'2000-09-09','nhatkhanh.dev@gmail.com','Huynh Nhat Khanh',_binary '','$2a$10$hdSblk2DqBp7zW1Wu7.q0.Oqdn6i9NkgcBDqBRMDnWOvR6e6riqS2','ROLE_USER','khanhba','0859292354','CGV','Hồ Chí Minh',NULL),(4,'2000-10-21','kiemma@gmail.com','Ha Vu Son Kiem',_binary '\0','$2a$10$hdSblk2DqBp7zW1Wu7.q0.Oqdn6i9NkgcBDqBRMDnWOvR6e6riqS2.','ROLE_USER','hakiem','0859292354','CGV','Hồ Chí Minh',NULL),(5,'2000-11-05','pk@gmail.com','Phu Le',_binary '','$2a$10$hdSblk2DqBp7zW1Wu7.q0.Oqdn6i9NkgcBDqBRMDnWOvR6e6riqS2','ROLE_EMPLOYEE','manager','0859292326','CGV','Đà Nẵng',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;