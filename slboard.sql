-- MySQL dump 10.14  Distrib 5.5.40-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: framework
-- ------------------------------------------------------
-- Server version	5.5.40-MariaDB-log

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
-- Table structure for table `blog_categories`
--

DROP TABLE IF EXISTS `blog_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `blog_type_id` int(11) NOT NULL,
  `title` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `blogs_count` int(11) NOT NULL DEFAULT '0',
  `enable` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `blog_category_id` int(11) DEFAULT NULL,
  `leaf` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `index_blog_categories_on_blog_type_id` (`blog_type_id`),
  KEY `index_blog_categories_on_blog_category_id` (`blog_category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_categories`
--

LOCK TABLES `blog_categories` WRITE;
/*!40000 ALTER TABLE `blog_categories` DISABLE KEYS */;
INSERT INTO `blog_categories` VALUES (1,1,'잡생각',20,1,'2013-12-24 18:26:41','2013-12-24 18:26:41',NULL,1),(2,1,'리눅스',0,1,'2013-12-24 18:26:41','2013-12-24 18:26:41',NULL,0),(3,1,'웹개발',0,1,'2013-12-24 18:26:41','2013-12-24 18:26:41',NULL,0),(4,1,'설치',2,1,'2013-12-24 18:26:41','2013-12-24 18:26:41',2,1),(5,1,'응용프로그램',4,1,'2013-12-24 18:26:41','2013-12-24 18:26:41',2,1),(6,1,'기본명령어',0,1,'2013-12-24 18:26:41','2013-12-24 18:26:41',2,1),(7,1,'서버',0,1,'2013-12-24 18:26:41','2013-12-24 18:26:41',2,1),(8,1,'html',3,1,'2013-12-24 18:26:41','2013-12-24 18:26:41',3,1),(9,1,'스타일시트',1,1,'2013-12-24 18:26:41','2013-12-24 18:26:41',3,1),(10,1,'자바스크립트',1,1,'2013-12-24 18:26:41','2013-12-24 18:26:41',3,1),(11,1,'루비 온 레일즈',5,1,'2014-04-14 12:13:12','2014-04-14 00:00:00',3,1),(18,1,'cakephp',3,1,'2014-05-18 00:00:00','2014-05-18 00:00:00',3,1),(19,0,'웹개발 Tip(삽질방지)',1,1,'2014-05-24 00:00:00','2014-05-24 00:00:00',3,1);
/*!40000 ALTER TABLE `blog_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_category_rels`
--

DROP TABLE IF EXISTS `blog_category_rels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_category_rels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `blog_category_id` int(11) NOT NULL,
  `blog_category_rel_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_blog_category_rels_on_blog_category_id` (`blog_category_id`),
  KEY `index_blog_category_rels_on_blog_category_rel_id` (`blog_category_rel_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_category_rels`
--

LOCK TABLES `blog_category_rels` WRITE;
/*!40000 ALTER TABLE `blog_category_rels` DISABLE KEYS */;
INSERT INTO `blog_category_rels` VALUES (1,1,6,'2013-12-24 18:26:41','2013-12-24 18:26:41'),(2,1,7,'2013-12-24 18:26:41','2013-12-24 18:26:41'),(3,1,8,'2013-12-24 18:26:41','2013-12-24 18:26:41'),(4,1,9,'2013-12-24 18:26:41','2013-12-24 18:26:41'),(5,2,10,'2013-12-24 18:26:41','2013-12-24 18:26:41'),(6,2,11,'2013-12-24 18:26:41','2013-12-24 18:26:41'),(7,2,12,'2013-12-24 18:26:41','2013-12-24 18:26:41'),(8,2,13,'2013-12-24 18:26:41','2013-12-24 18:26:41'),(9,3,14,'2013-12-24 18:26:41','2013-12-24 18:26:41'),(10,3,15,'2013-12-24 18:26:41','2013-12-24 18:26:41'),(11,3,16,'2013-12-24 18:26:41','2013-12-24 18:26:41');
/*!40000 ALTER TABLE `blog_category_rels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_comments`
--

DROP TABLE IF EXISTS `blog_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `blog_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `encrypted_password` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_blog_comments_on_blog_id` (`blog_id`),
  KEY `index_blog_comments_on_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_comments`
--

LOCK TABLES `blog_comments` WRITE;
/*!40000 ALTER TABLE `blog_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_contents`
--

DROP TABLE IF EXISTS `blog_contents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_contents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_contents`
--

LOCK TABLES `blog_contents` WRITE;
/*!40000 ALTER TABLE `blog_contents` DISABLE KEYS */;
INSERT INTO `blog_contents` VALUES (1,'<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>리눅스에서 TV카드로 보는것 TV보기는 예전에는 힘들었지만 요즘에는 편해졌습니다.</p>\r\n\r\n<p>물론 요즘에도 윈도우에 비하면 초보자에게는 몹시 힘들지만 예전에 비하면.... ㅎㅎ</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>저는 예전에는 리눅스에서 TV카드로 볼때는 주로 Analog로 봤었는데(물론 그때도 Digital도 잘 되었지요, 수많은 삽질을 하긴 했습니다.)</p>\r\n\r\n<p>이제는 Analog송출이 중단되어서 더 이상 못보는게 왠지 아쉽네요</p>\r\n\r\n<p>그때 쓰던 TV카드를 오랫동안 안 쓰다가 최근에 다시 설치하게 되었습니다.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>우선 준비할것은 물론 TV카드와 리눅스가 설치된 컴퓨터입니다.</p>\r\n\r\n<p>제 리눅스인 Gentoo Linux와 TV카드인 Divico fusion HD 5 lite로 설명합니다.</p>\r\n\r\n<p>그럼 시작~~</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>우선 초보자들이 넘기 힘든 관문이 아직 있습니다.</p>\r\n\r\n<p>드라이버 설치를 위해서 커널 컴파일을 해야되는데...... &lt;= 사실 초보자들은 넘을수 없는 벽이지요.......</p>\r\n\r\n<p>그러나 달리 생각하면 윈도우 드라이버 설치도 못하는 사람한테는 차이없기도 하지요?</p>\r\n\r\n<p>이부분만 해결된다면 윈도우와 차이가 없게 될거라고 생각됩니다.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>커널 컴파일을 하기</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>genkernel 을 이용하여 커널컴파일을 하겠습니다.</p>\r\n\r\n<p>현재 최신 버젼인 3.12.5 입니다.</p>\r\n\r\n<p>genkernel --menuconfig all 명령어를 통하여 들어가서</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Device Drivers -&gt; Multimedia Support로 들어갑니다.</p>\r\n\r\n<p><img alt=\"\" src=\"https://slhome.s3.amazonaws.com/ckeditor/pictures/7/content_snapshot18.png\" style=\"width: 800px; height: 543px;\" /></p>\r\n\r\n<p>제 TV카드는 Remote Controoler Support 를 선택해야 나오더군요(이걸 몰라서 왜 없어졌지? 하고 또 삽질)</p>\r\n\r\n<p>대신 Autoselect ancillary drivers라는 옵션이 생겼더군요, 이제 이것을 선택하면 일일이 설정하지 않아도 알아서 해주네요</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>제 TV카드 드라이버인 BT878드라이버가 보입니다. 선택하고</p>\r\n\r\n<p><img alt=\"\" src=\"https://slhome.s3.amazonaws.com/ckeditor/pictures/8/content_snapshot19.png\" style=\"width: 800px; height: 543px;\" /></p>\r\n\r\n<p>저장하고 나가면 컴파일이 되고 완료된후에</p>\r\n\r\n<p>lsmod명령어로 보아서 bttv, dvb_bt8xx, lgdt330x 등의 모듈이 올라와 있고</p>\r\n\r\n<p>/dev/video0 /dev/vbi0, /dev/dvb/adaptor*&nbsp; 등이 있으면 성공입니다.</p>\r\n\r\n<p>여기까지 되었다면 하드웨어 설정은 마친것입니다.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>다음은 채널 검색을 통한 채널 파일을 생성해야되는데</p>\r\n\r\n<p>이부분은 이제 kaffeine을 통하면 생략해도 되게 되었습니다.&nbsp; 참 좋네요~~</p>\r\n\r\n<p>예전에는 dvbscan 명렁으로 채널을 찾었었는데 이번에는 잘 되지 않네요</p>\r\n\r\n<p>대신 w_scan 명령어로는 잘됩니다.</p>\r\n\r\n<p>이런 명령어로 만든 파일은 mplayer나 다른 재생기에서 쓰일수 있습니다.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>그럼 kaffeine을 실행, 물론 그전에 kaffeine이 설치되어있야겠지요?&nbsp; emerge kaffeine~</p>\r\n\r\n<p><img alt=\"\" class=\"img-responsive\" src=\"https://slhome.s3.amazonaws.com/ckeditor/pictures/1/content_snapshot14.png\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>물론 디지털 TV로~</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>텔레비전 -&gt; Configure Television으로 들어가면 다음과 같이 나옵니다.</p>\r\n\r\n<p><img alt=\"\" class=\"img-responsive\" src=\"https://slhome.s3.amazonaws.com/ckeditor/pictures/3/content_snapshot12.png\" /></p>\r\n\r\n<p>다행이 (장치 1)이 있습니다.&nbsp; 드라이버가 잘 설정되었음을 뜻합니다.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>장치 1 탭으로 가니 정확하게 모든것이 이미 설정 되어 있습니다.</p>\r\n\r\n<p>us-ATSC를 선택하고 확인을 누릅니다.</p>\r\n\r\n<p><img alt=\"\" class=\"img-responsive\" src=\"https://slhome.s3.amazonaws.com/ckeditor/pictures/2/content_snapshot13.png\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>그럼 채널 설정으로 가서 채널을 검색하고 검색된 채널을 추가시키면 모든것이 완료됩니다.</p>\r\n\r\n<p><img alt=\"\" class=\"img-responsive\" src=\"https://slhome.s3.amazonaws.com/ckeditor/pictures/4/content_snapshot11.png\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>그럼 이제 채널을 골라 TV를 시청하는 일만 남았군요</p>\r\n\r\n<p><img alt=\"\" class=\"img-responsive\" src=\"https://slhome.s3.amazonaws.com/ckeditor/pictures/5/content_linux-atsc-kaffeine.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>다른분들은 저처럼 삽질 없이 한번에 잘 설정되어서 리눅스에서 TV를 볼 수 있으면 좋겠네요.</p>\r\n\r\n<p>Kaffeine은 처음에도 좋긴했지만 갈 수록 좋아지네요.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n</body>\r\n</html>\r\n'),(2,'<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>2013년 봄날이였습니다.</p>\r\n\r\n<p>그 때쯤에는 물섭취가 거의 없는 반면 맥주를 많이 먹었습니다.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>처음 아픔을 느꼈을때도 맥주를 먹고 그냥 자고 일어났는데 옆구리가 기분나쁘게 통증이 왔습니다.</p>\r\n\r\n<p>배가 아픈 느낌하고는 다르긴 했지만 배가 아픈건가 하면서 화장실에 가도 아무런 신호가 없었지요.</p>\r\n\r\n<p>친구를 만나기로 해서 나가긴 했지만 계속 짜증나는 아픔이 있었습니다.</p>\r\n\r\n<p>그러다가 물을 몇잔 먹고나니 갑자기 씻은듯이 안아퍼져서 기분이 좋으면서도 이거 뭐지?? 하였지요</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>그러다 몇주 후, 그날!!</p>\r\n\r\n<p>여전히 물을 먹는양은 적었고 맥주를 먹었지요, 특히 그날은 호두를 한통을 먹으면서 맥주를 먹었습니다.</p>\r\n\r\n<p>그리고 잠을 자는데 자다가 또 옆구리가 아픈 느낌에 깼는데 잠은 계속 자고 싶어서 그냥 잠을 청했지만 통증은 멈추지 않았습니다.&nbsp;</p>\r\n\r\n<p>결국 일어나서 화장실을 가보았지만 역시 아무런 신호는 없고, &quot;아 이거 그때 그 거잖어~!&quot; 하면서 &quot;이게 뭐지?&quot; 하였지만 통증의 강도는 점점 세졌습니다.</p>\r\n\r\n<p>고통이 심해지면서 여러가지 방법을 쓰면서 물도 먹고 뜨거운 물로 샤워도 하면서 배를 쓰다듬었지만 별 소용이 없었습니다.</p>\r\n\r\n<p>계속 물을 먹으면서 눕기도 하고 제자리 뛰기도 하였지만 고통의 시간은 멈추지 않았습니다.</p>\r\n\r\n<p>소변을 보면서 잘 안나오는것을 느끼고 소변색이 약간 이상하다고는 느꼈지만 그때는 그게 약간의 혈뇨인지는 몰랐습니다.</p>\r\n\r\n<p>그렇게 몇시간을 고통에 시달렸을까?&nbsp; &#39;응급차를 불러야하나??&#39; 하는 생각이 날때쯤 부터 고통이 조금씩은 적어짐을 느껴서 &#39;좀 참아보자&#39;하는 생각으로 몇분이 몇시간같은 고통의 시간이 지나고 고통이 거의 수그러 들기 시작했습니다.</p>\r\n\r\n<p>그렇게 잠도 못자고 고통에 시달린 다음날이 중국에 가는 날이였는데, 잠못잔것 보다 고통이 없어진게 다행이란 생각이 들었습니다.</p>\r\n\r\n<p>중국에 간 이후로는 또 그런고통은 오지 않고 다시 정상적인 생활을 했지요.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>또 시간은 흘러 몇달 후</p>\r\n\r\n<p>맥주를 많이 먹고 소변을 보는데!!&nbsp; 몸속에서 &#39;쿵!!!&#39;&nbsp; 내 오줌길에서 뭔가가 움직이는것을 느꼈습니다.</p>\r\n\r\n<p>그 때의 그 충격적인 느낌이란~!!&nbsp; 반면 고통은 전혀 없었습니다.</p>\r\n\r\n<p>바로 검색을 통하여 알아본 결과는 요로결석!!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>옆구리의 극심한 통증과 발병원인등 모든것이 일치했습니다.&nbsp; 맥주는 물론이고 호두도 요로결석에 안좋다는 말에 바로 수긍이 되더라고요</p>\r\n\r\n<p>특히나 옆구리의 통증이 <span style=\"color:#FF0000;\">출산의 고통</span>을 능가한다는것, <span style=\"color:#FF0000;\">응급실에 오는 환자의 많은 부분</span>을 차지한다는것에서는 정말 바로 공감 100배 더군요</p>\r\n\r\n<p>내 몸에 &quot;돌&quot;이 있다는 생각이 들자 빼내고 싶은 욕구가 일어났습니다.</p>\r\n\r\n<p>병원에서 파쇄법과 기타 수술등으로 뺄수있다는것과&nbsp; 웬만하면 자연적으로 배출 된다는것을 알게 되었습니다.</p>\r\n\r\n<p>저의 선택은 돈 안드는 자연배출이였습니다.</p>\r\n\r\n<p>요로결석에 대해 알게되면서 저는 물을 꾸준히 많이 섭취하였고 소변을 보면서 그때의 &quot;쿵&quot;하는 느낌이 한번씩 나면서&nbsp; 점점 내려오고 있는것도 느끼게 되었습니다.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>그러던 어느날 또 맥주를 많이 먹고 많은 소변을 보면서 소변이 잘 안나오는 느낌을 받으며 이제 거의 끝에 왔다는것을 알게 되었지요.</p>\r\n\r\n<p>하지만 그 다음날에는 약간의 피가 소변과 섞여 나오는것을 알았으며 그래서 많은양의 물을 섭취하고 줄넘기 하듯이 제자리 뛰기를 하면서 진동을 배에 전할수 있게 하였습니다.</p>\r\n\r\n<p>물을 엄청나게 먹고 제자리 뛰기를 계속하니 한시간후에는 요의를 느끼고 화장실에 갔습니다.</p>\r\n\r\n<p>그때 왠지 나올것 같은 느낌이 들어 소변기가 아닌 변기로 가서 소변을 보았습니다.</p>\r\n\r\n<p>많은 양의 소변을 보면서 &#39;이제 끝나가는데 돌은 안나오네?&#39; 하며 &#39;이번엔 안나오려나?&#39; 하는 순간!!!</p>\r\n\r\n<p>오줌줄기가 약간 막히다가 툭!!! 하면서 돌이 나와 떨어지더니 오줌줄기가 다시 세지는데 그때 시원함이란</p>\r\n\r\n<p>말로 표현하기 힘드네요</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>나를 괴롭힌 돌은 이겁니다.</p>\r\n\r\n<p><img alt=\"\" src=\"https://slhome.s3.amazonaws.com/ckeditor/pictures/10/content_stone_3.jpg\"  class=\"img-responsive\" /></p>\r\n\r\n<p>신장, 요로에 있었다고하기엔 다소 큰, 하지만 작은 이돌이 나를 그동안 괴롭혔던 원흉!!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>그래도 저한테는 부수고 싶을만큼 예뻐보입니다.</p>\r\n\r\n<p><img alt=\"\" src=\"https://slhome.s3.amazonaws.com/ckeditor/pictures/11/content_stone_2.jpg\"  class=\"img-responsive\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>내 요로를 긁혀서 피나게 하기 충분할 정도로 날카로운 모습</p>\r\n\r\n<p><img alt=\"\" src=\"https://slhome.s3.amazonaws.com/ckeditor/pictures/12/content_stone_1.jpg\"  class=\"img-responsive\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>하지만 이것이 끝이 아니였으니~~&nbsp;&nbsp; 요로결석은 재발이 높다라는 것을 직접 확인 하였습니다.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>그렇게 다 나온뒤 중국에서 다시 물한모금 안먹고 지난 다음날</p>\r\n\r\n<p>맥주를 먹고 몇시간이 지나자 옆구리 통증이 시작되더군요</p>\r\n\r\n<p>그려면서 구역질이 나는데,&nbsp; 요로결석이 신경을 건드려 구토를 유발한다는것도 확인하였습니다.</p>\r\n\r\n<p>그렇게 몸속의 모든것을 괴롭게 밖으로 배출하고 옆구리 통증에 또 몇시간을 고통속에 지내다가 잠이 들었습니다.</p>\r\n\r\n<p>역시 지난후에는 아무렇지 않게 아프지 않지요.</p>\r\n\r\n<p>다시 돌이 생겼다는것을 인지하면서 많은 물을 꾸준히 섭취하고 제자리 뛰기도 병행했지요</p>\r\n\r\n<p>그렇게 몇일이 지나 어느날 소변을 보는데 다시 툭!! 하고 배출되었습니다.</p>\r\n\r\n<p>그때는 나올지도 모르게 별일이 없었는데 나의 돌은 소변기속으로 사라졌지요~</p>\r\n\r\n<p>소변을 시원하게 본다는게 얼마나 소중한것인지를 각인시키면서 저의 돌들은 그렇게 떠나갔습니다.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>제일 중요한것은 &quot;물&quot;을 많이 먹으세요, 저와 같은 출산의 고통을 겪지 않으려면요</p>\r\n\r\n<p>우리나라에서 물은 마음껏 먹을수 있잖아요?</p>\r\n\r\n<p>이상 물을 적게 먹고 맥주만 먹다가 출산의 고통속에서 몸부림치던 사람이 꼭 하고 싶은 말이였습니다.</p>\r\n\r\n<p>&quot;물은 생명이다&quot;</p>\r\n</body>\r\n</html>\r\n'),(3,'<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>중국의 먹을것은 그야말로 무궁무진하지만 오늘은 한국인들도 좋아하는 라면입니다.</p>\r\n\r\n<p>면요리는 중국이 원조이면서 그 방대함 또한 따를수 있는 나라가 없지요</p>\r\n\r\n<p>라면 역시 중국이 원조이고 지금도 길거리 곳곳에 라면집이 많이 있습니다.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>저는 회사에서 제일 가까웠던 대만식 라면집에서 많이 먹었는데요</p>\r\n\r\n<p>상하이에 있을때 먹던 중국라면입니다.</p>\r\n\r\n<p><img alt=\"\" src=\"https://slhome.s3.amazonaws.com/ckeditor/pictures/13/content_ramen.jpg\"  class=\"img-responsive\" /></p>\r\n\r\n<p>마라라면(마라는 맵다는 뜻입니다), 한국 사람들한테 딱 맞을 매운 맛입니다.</p>\r\n\r\n<p>이거 말고 다른 라면은 조금 느끼하긴 하더라고요,&nbsp; 면발도 딱 우리가 생각하는 생 라면 면발~~</p>\r\n\r\n<p>이런 생라면을 우리나라 인스턴스라면 끓여주는 가격에 먹을수 있습니다.</p>\r\n\r\n<p>먹기 시작하면 땀흘리면서 순식간에 먹게됩니다.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>그러므로 그전에 넣어야 될것! 바로</p>\r\n\r\n<p>맛있는 고수(상차이)</p>\r\n\r\n<p><img alt=\"\" src=\"https://slhome.s3.amazonaws.com/ckeditor/pictures/14/content_gosu.jpg\"  class=\"img-responsive\" /></p>\r\n\r\n<p>맛있는 고수도 듬뿍 넣어서 먹는게 매력이지요</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>이 몸에도 좋고 맛있는것을 한국사람들이 별로 안먹어서 안타까운 마음입니다.</p>\r\n\r\n<p>이렇게 매운 라면을 순식간에 먹고나서는 입가심을 해야겠지요?</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>그래서 시키는</p>\r\n\r\n<p>망고빙수~~</p>\r\n\r\n<p><img alt=\"\" src=\"https://slhome.s3.amazonaws.com/ckeditor/pictures/15/content_mango_ice.jpg\"  class=\"img-responsive\" /></p>\r\n\r\n<p>마라라면을 먹고나서 그런가?&nbsp; 이 망고빙수 정말 맛있습니다.</p>\r\n\r\n<p>망고의 맛이 그대로 살아 있더라고요 망고도 듬뿍 들어있지요</p>\r\n\r\n<p>전 팥빙수보다 망고빙수만 먹고 싶더라고요</p>\r\n\r\n<p>지금도 생각나는 중국라면+망고빙수입니다.</p>\r\n</body>\r\n</html>\r\n'),(4,'<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<div style=\"margin: 10px 20px;\">\r\n<h3 style=\"font-size: 16px;\">HTML이 뭔가요?</h3>\r\n\r\n<p style=\"padding: 10px; font-size: 14px; line-height: 200%;\"><abbr title=\"Hyper Text Markup Language\">HTML</abbr>은 웹페이지를 만드는데 가장 기본이되는 기술로 태그라고 불리우는 열고 닫는 괄호쌍을 통해서 문서를 표현하는 기술입니다.<br />\r\n인터넷의 모든페이지는 기본적으로 HTML을 통해서 구성되며 그<abbr title=\"Hyper Text Markup Language\">HTML</abbr>인터넷을 통해 받아와 브라우져로 우리가 이를 볼수 있는것입니다. <abbr title=\"Hyper Text Markup Language\">HTML</abbr>은 바로 브라우져에서 마우스 오른쪽버튼이나 상단메뉴에서 &quot;소스보기&quot;를 선택하면 볼수 있습니다,<br />\r\n웹의 기본은<abbr title=\"Hyper Text Markup Language\">HTML</abbr>로 멋진 웹페이지를 만들고 싶다면 HTML부터 배워야 하는데 보통 나모나 드림위버같은 위지익프로그램을 쓰면 직접적으로 <abbr title=\"Hyper Text Markup Language\">HTML</abbr>을 만지지 않고 <abbr title=\"Hyper Text Markup Language\">HTML</abbr>을 손쉽게 만들수 있다는 장점이 있습니다,<br />\r\n그러나 사용하는것은 편하지만 태그에 대한 이해가 느려지고 약간은 쓸데없는 코드를 생성하기도 하고(점점 줄고는 있지만...) 세부적인 작성이 어렵다는 단점이있습니다.<br />\r\n그러므로 처음은 약간 어렵다 하더라고 html을 완전히 익히는것이 멋진 웹페이지를 만드는데 든든한 밑천이 되니 약간 어렵더라도 잘 익혀봅시다. 세상모든것이 그렇듯이 처음엔 어려워 보여도 알고나면 쉬워질겁니다.</p>\r\n</div>\r\n\r\n<h3 style=\"font-size: 16px;\">그럼 만들어 볼까요?</h3>\r\n\r\n<p style=\"padding: 10px; font-size: 14px; line-height: 200%;\">HTML은 태그라고 불리는 괄호쌍으로 표현되며 태그는 &lt;태그&gt;&lt;/태그&gt; 식으로 이루어집니다.<br />\r\n태그와 태그 사이에는 관련 내용이 &lt;태그&gt;내용&lt;/태그&gt; 들어가거나 관련 속성 &lt;태그 속성=&quot;속성값&quot;&gt;&lt;/태그&gt;이 들어갈수 있으며 물론 속성과 내용이 같이 들어 갈수도 있고 &lt;태그 속성=&quot;속성값&quot;&gt;내용&lt;/태그&gt;<br />\r\n속성을 여러개 줄수도 있으며 태그와 태그 사이어 다른 태그가 올수도 있습니다,<br />\r\n단 태그안에 태그가 있을때는 나중에 연 태그를 먼저 닫아줘야 합니다.<br />\r\n<br />\r\n바른 예<br />\r\n&lt;태그 1&gt;<br />\r\n&lt;태그 2&gt;<br />\r\n&lt;/태그 2&gt;<br />\r\n&lt;/태그 1&gt;<br />\r\n<br />\r\n잘못된 예<br />\r\n&lt;태그 1&gt;<br />\r\n&lt;태그 2&gt;<br />\r\n&lt;/태그 1&gt;<br />\r\n&lt;/태그 2&gt;<br />\r\n<br />\r\n또한 태그안에 아무런 내용이 없을때는 &lt;태그&gt;&lt;/태그&gt; 대신에 간단히 &lt;태그 /&gt;로 쓸수 있습니다.<br />\r\n&lt;태그&gt;&lt;/태그&gt; = &lt;태그 /&gt;<br />\r\n또한 태그는 대문자로 써도 되지만 원칙은 소문자이며 속성값의 따옴표도 작은 따옴표도 써도 되지만 원칙적으로 쌍따옴표로 해줘야 합니다. 원칙대로 하는게 가장 좋겠지요??<br />\r\n어느 사이트던지 소스보기를 하면 이런식으로 구성되어 있다는것을 볼수 있습니다.<br />\r\n그럼 우리도 직접 HTML을 만들어 봅시다<br />\r\n우선 제일먼저 HTML태그를 써야 합니다.<br />\r\n모든 HTML문서는 HTML태그가 열리며 시작되며 HTML닫기로 끝난다는것을 명심하고 메모장으로 다음과 같이 적고 HTML파일로 저장합니다.<br />\r\n<br />\r\n가장 간단한 HTML문서<br />\r\n&lt;html&gt;<br />\r\n&lt;/html&gt;<br />\r\n<br />\r\n그리고 브라우져로 실행하여 봅니다.<br />\r\n물론 아무것도 나오지 않겠지만 이렇게 우리는 HTML문서를 만들었습니다.<br />\r\n<br />\r\n기본적으로 쓰는 태그가 또 2개가 있는데 바로 HEAD와 BODY입니다..<br />\r\n머리(HEAD)와 몸통(BODY)이 있어야 제대로 된 HTML문서가 되겠지요?<br />\r\n근데 인터넷 세상에는 머리가 없는 HTML과 몸통이 없는 HTML문서도 떠돌거 있는게 현실입니다. ^^ 우리는 그러지 맙시다~<br />\r\n그러므로 다음과 같이 작성합니다<br />\r\n<br />\r\n이제좀 제대로된 HTML문서<br />\r\n&lt;html&gt;<br />\r\n&lt;head&gt;<br />\r\n&lt;/head&gt;<br />\r\n&lt;body&gt;<br />\r\n&lt;/body&gt;<br />\r\n&lt;/html&gt;<br />\r\n<br />\r\n하지만 역시 내용이 없으니 아무것도 나오지 않겠지요.... 그럼 body사이에 아무런 글씨라도 넣어봅니다. 글씨가 출력 될겁니다. 이제 가장 기본인 html,head,body를 익혔습니다.<br />\r\n다음은 문서 제목을 넣는 title입니다. title도 반드시 들어야할 요소임에도 title없는 문서들이 많이 있지요. 무제의 문서들~ -.-;;<br />\r\n<br />\r\n제목(title) 이 넣어진 제대로된 HTML문서<br />\r\n&lt;html&gt;<br />\r\n&lt;head&gt;<br />\r\n&lt;head&gt;제목&lt;head&gt;<br />\r\n&lt;head&gt;<br />\r\n&lt;body&gt;<br />\r\n내용 들어갈 자리<br />\r\n&lt;/body&gt;<br />\r\n&lt;/html&gt;<br />\r\n<br />\r\n드디어 제목도 들어간 제대로된 html을 만들었습니다,<br />\r\n찹 쉽죠잉??~~<br />\r\n앞으로 모든 문서는 제런식으로 구성되겠지요?<br />\r\n그럼 다음 기본 태그들을 익혀보아요~~</p>\r\n</body>\r\n</html>\r\n'),(5,'<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<div style=\"margin: 10px 20px;\">\r\n<h3 style=\"font-size: 16px;\">제목태그 H</h3>\r\n\r\n<p style=\"padding: 10px; font-size: 14px; line-height: 200%;\">title말고 무슨 제목 태그야? 할테지만 책으로 치면 title이 책제목이라면 이는 목차,소제목에 쓰는 태그입니다.<br />\r\nH1~H6 까지 있으며 중요도에 따라 골라 쓰면 됩니다.<br />\r\n그럼 한번 사용해 볼까요?<br />\r\n<br />\r\n&lt;html&gt;<br />\r\n&lt;head&gt;<br />\r\n&lt;title&gt;제목&lt;title&gt;<br />\r\n&lt;/head&gt;<br />\r\n&lt;body&gt;<br />\r\n&lt;h1&gt;H1&lt;/h1&gt;<br />\r\n&lt;h2&gt;H2&lt;/h2&gt;<br />\r\n&lt;h3&gt;H3&lt;/h3&gt;<br />\r\n&lt;h4&gt;H4&lt;/h4&gt;<br />\r\n&lt;h5&gt;H5&lt;/h5&gt;<br />\r\n&lt;h6&gt;H6&lt;/h6&gt;<br />\r\n&lt;/body&gt;<br />\r\n&lt;/html&gt;<br />\r\n<br />\r\n멋지지 않습니까? ㅎㅎ<br />\r\n멋있게 글씨가 나오는것을 볼수 있을겁니다.</p>\r\n</div>\r\n\r\n<div style=\"margin: 10px 20px;\">\r\n<h3 style=\"font-size: 16px;\">문단태그 P</h3>\r\n\r\n<p style=\"padding: 10px; font-size: 14px; line-height: 200%;\">말그대로 문단의 단락을 엮을때 사용하는 태그입니다.<br />\r\n장문의 텍스트를 그룹별로 묶을때 사용합니다.<br />\r\n<br />\r\n&lt;html&gt;<br />\r\n&lt;head&gt;<br />\r\n&lt;title&gt;리스트 ol과 ul의 차이&lt;/title&gt;<br />\r\n&lt;/head&gt;<br />\r\n&lt;body&gt;<br />\r\n&lt;p&gt;<br />\r\n어쩌고 저쩌고의 내용 &lt;/p&gt;<br />\r\n&lt;p&gt;<br />\r\nㅎㅎㅎ ㅋㅋㅋ ㅇㅇ의 내용 &lt;/p&gt;<br />\r\n&lt;/body&gt;<br />\r\n&lt;/html&gt;<br />\r\n&nbsp;</p>\r\n</div>\r\n\r\n<div style=\"margin: 10px 20px;\">\r\n<h3 style=\"font-size: 16px;\">리스트 태그 UL,OL</h3>\r\n\r\n<p style=\"padding: 10px; font-size: 14px; line-height: 200%;\">리스트목록을 표현할때 사용하는 태그입니다.<br />\r\nul은 순서없는 리스트 ol은 순서별 리스트로 ul앞으로는 작은점이 생성되며 ol앞으로는 숫자가 나오게 됩니다.<br />\r\nol과 ul사이에 리스트는 li태그로 표현됩니다.<br />\r\n<br />\r\n&lt;html&gt;<br />\r\n&lt;head&gt;<br />\r\n&lt;title&gt;리스트 ol과 ul의 차이&lt;/title&gt;<br />\r\n&lt;/head&gt;<br />\r\n&lt;body&gt;<br />\r\n&lt;ol&gt;<br />\r\n&lt;li&gt;리스트 1&lt;/li&gt;<br />\r\n&lt;li&gt;리스트 2&lt;/li&gt;<br />\r\n&lt;/ol&gt;<br />\r\n&lt;ul&gt;<br />\r\n&lt;li&gt;리스트 1&lt;/li&gt;<br />\r\n&lt;li&gt;리스트 2&lt;/li&gt;<br />\r\n&lt;/ul&gt;<br />\r\n&lt;/body&gt;<br />\r\n&lt;/html&gt;<br />\r\n&nbsp;</p>\r\n</div>\r\n\r\n<div style=\"margin: 10px 20px;\">\r\n<h3 style=\"font-size: 16px;\">링크 태그 A</h3>\r\n\r\n<p style=\"padding: 10px; font-size: 14px; line-height: 200%;\">웹페이지가 일반 문서와 다른점은 바로 하이퍼텍스트 링크가 가능하다는데 있습니다.<br />\r\n이로서 모든 문서는 연결되었고 한문서에서 다른 문서로의 이동이 자유롭게 되었습니다.<br />\r\n링크로의 연결은 속성 href를 이용합니다.<br />\r\n<br />\r\n&lt;html&gt;<br />\r\n&lt;head&gt;<br />\r\n&lt;title&gt;링크태그 사용&lt;/title&gt;<br />\r\n&lt;/head&gt;<br />\r\n&lt;body&gt;<br />\r\n&lt;p&gt;<br />\r\n&lt;a href=&quot;문서 1 주소&quot; &gt;문서 1로 이동&lt;/a&gt;<br />\r\n&lt;a href=&quot;문서 2 주소&quot; &gt;문서 2로 이동&lt;/a&gt;<br />\r\n&lt;/p&gt;<br />\r\n&lt;/body&gt;<br />\r\n&lt;/html&gt;<br />\r\n&nbsp;</p>\r\n</div>\r\n\r\n<div style=\"margin: 10px 20px;\">\r\n<h3 style=\"font-size: 16px;\">이미지 태그 img</h3>\r\n\r\n<p style=\"padding: 10px; font-size: 14px; line-height: 200%;\">이미지를 사용해 보다 화려하게 문서를 꾸미고 싶다면 이 태그를 이용하면 된다.<br />\r\n이미지의 경로를 src속성을 이용해서 주소를 지정해주고 alt속성을 이용하여 이미지가 해당주서에 없을때 대체텍스트가 나오게 한다<br />\r\n이미지 태그에 내용이 필요할일이 없으므로 이미지 태그는 스스로 닫는 &lt;img /&gt;를 쓴다.<br />\r\n<br />\r\n&lt;html&gt;<br />\r\n&lt;head&gt;<br />\r\n&lt;title&gt;이미지 태그 사용&lt;/title&gt;<br />\r\n&lt;/head&gt;<br />\r\n&lt;body&gt;<br />\r\n&lt;p&gt;<br />\r\n&lt;img src=&quot;이미지 주소&quot; alt=&quot;대체텍스트&#39; /&gt;<br />\r\n&lt;/p&gt;<br />\r\n&lt;/body&gt;<br />\r\n&lt;/html&gt;<br />\r\n&nbsp;</p>\r\n</div>\r\n\r\n<h3 style=\"font-size: 16px;\">그룹 태그 div</h3>\r\n\r\n<p>p와 비슷하면서 보다 범용적으로 그룹을 짓는 태그입니다.<br />\r\n그럼 배운 div,h,p,ul,li태그등을 조합한 문서를 만들어 봐요.<br />\r\n자주쓰는 방식이니 잘 봐주면 유용합니다.<br />\r\n<br />\r\n&lt;html&gt;<br />\r\n&lt;head&gt;<br />\r\n&lt;title&gt;여러 태그를 이용한 문서&lt;/title&gt;<br />\r\n&lt;/head&gt;<br />\r\n&lt;body&gt;<br />\r\n&lt;div&gt;<br />\r\n&lt;h3&gt;소제목1&lt;h3&gt;<br />\r\n&lt;ul&gt;<br />\r\n&lt;li&gt;&lt;a href=&quot;문서 1 주소&quot; &gt;문서 1로 이동&lt;/a&gt;&lt;li&gt;<br />\r\n&lt;li&gt;&lt;a href=&quot;문서 2 주소&quot; &gt;문서 2로 이동&lt;/a&gt;&lt;li&gt;<br />\r\n&lt;/ul&gt;<br />\r\n&lt;/div&gt;<br />\r\n&lt;div&gt;<br />\r\n&lt;h3&gt;소제목2&lt;h3&gt;<br />\r\n&lt;p&gt;어쩌고 저쩌고의 내용 &lt;/p&gt;<br />\r\n&lt;/div&gt;<br />\r\n&lt;/body&gt;<br />\r\n&lt;/html&gt;</p>\r\n</body>\r\n</html>\r\n'),(6,'<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<div style=\"margin: 10px 20px;\">\r\n<h3 style=\"font-size: 16px;\">선 그리기 태그 hr</h3>\r\n\r\n<p style=\"padding: 10px; font-size: 14px; line-height: 200%;\">선을 그어주는 태그이다 hr이며 내용이 들어갈일이 없으므로 &lt;hr /&gt;로 표현한다.</p>\r\n</div>\r\n\r\n<div style=\"margin: 10px 20px;\">\r\n<h3 style=\"font-size: 16px;\">줄 바꿈 태그 br</h3>\r\n\r\n<p style=\"padding: 10px; font-size: 14px; line-height: 200%;\">줄바꿈 태그이다 br이며 내용이 들어갈일이 없으므로 &lt;br /&gt;로 표현한다.<br />\r\n내용이 길어지거나 인위적으로 줄바꿈이 필요할때 사용한다.</p>\r\n</div>\r\n\r\n<div style=\"margin: 10px 20px;\">\r\n<h3 style=\"font-size: 16px;\">주소태그 address</h3>\r\n\r\n<p style=\"padding: 10px; font-size: 14px; line-height: 200%;\">주소를 표현하는 태그이다 address이며 주소정보를 표시할때 사용한다.<br />\r\n&lt;address &gt;경기도 수원시 권선구 세류동&lt;/address&gt;</p>\r\n</div>\r\n\r\n<h3 style=\"font-size: 16px;\">별의미 없는 태그 span</h3>\r\n\r\n<p>특별한 의미는 없는 span 태그 이다. 그럼 뭐에 쓰냐고??<br />\r\n그렇다 아무런 변화와 의미를 가지지 못하는 태그인데 이게 뭐지..??<br />\r\nspan 태그는 스타일을 입힐때 그 쓸모가 있다고 하겠다.<br />\r\n스타일에 관해서 CSS카테고리를 참조하기 바란다</p>\r\n</body>\r\n</html>\r\n'),(7,'<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>리눅스에는 윈도우용 CD굽기보다 더 편하고 좋은 프로그램이 있습니다.</p>\r\n\r\n<p>당연히 무료고요</p>\r\n\r\n<p>그 이름은 K3B!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>그럼 우선 시디를 만들수 있는 CD-Writer기와 공시디가 준비되어야겠지요?</p>\r\n\r\n<p>그다음 리눅스에서 잘 인식하지는 확인하려면</p>\r\n\r\n<p>/dev/cdrom이 존재하는지를 확인하고요</p>\r\n\r\n<p>존재한다면 이제 K3B만 있으면 마음대로 CD를 구울 수 있습니다.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>그럼 emerge k3b로 설치후에 k3b로 실행을 하면</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" class=\"img-responsive\" src=\"https://slhome.s3.amazonaws.com/ckeditor/pictures/16/content_k3b.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" class=\"img-responsive\" src=\"https://slhome.s3.amazonaws.com/ckeditor/pictures/17/content_k4b_main.png\" /></p>\r\n\r\n<p>다음과 같이 프로그램이 잘 실행되면 메뉴를 이용하여 마음껏 데이터 CD와 오디오 CD를 작성할수 있습니다.</p>\r\n</body>\r\n</html>\r\n'),(8,'<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>먹어도 먹어도 맛있는 두부</p>\r\n\r\n<p>콩으로 어떻게 이렇게 맛있는것을 만들었는지 지금 생각해도 대단하다고 밖에 생각이 안됩니다.</p>\r\n\r\n<p>콩이 원래 흡수율이 낮은데(먹어도 반은 그냥 X으로 나온다고 하는...) 두부로 먹을경우에는</p>\r\n\r\n<p>콩의 영양소 거의를 흡수한다고 합니다.</p>\r\n\r\n<p>이렇게 맛도 좋고 몸에도 좋은 사랑스러운 두부~~&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>두부 또한 중국에서 시작된 요리로서 한나라때부터 먹기 시작한것으로 알려져 있습니다.</p>\r\n\r\n<p>중국 두부요리하면 두가지가 떠오르는데 바로&nbsp; 마파두부와 취두부입니다</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>마파두부</h3>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>사천성요리의 대표로 손색이 없는 요리지요</p>\r\n\r\n<p>사천요리답게 매콤한 맛이 일품이라 한국사람들도 너무나 좋아하는 요리입니다</p>\r\n\r\n<p>두부가 이렇게 맛있어 지다니~!!!</p>\r\n\r\n<p>그런데....!!</p>\r\n\r\n<p>중국의 마파두부는 향미가 한국에서 먹는 마파두부와 너무나 다르지요</p>\r\n\r\n<p>우선 화자오(<span>花椒</span>)라고 하는 중국 산초 열매가 들어가는데 먹으면 얼얼해지는 그맛 또한 중독성입니다.</p>\r\n\r\n<p>그런데 한국 마파두부에선 다 안들어 가지요</p>\r\n\r\n<p>특히나 원래 마파두부는 두반장(중국식 고추장?)이 들어가야 되는데 그냥 고추장으로 해버리는 경우도 많습니다.</p>\r\n\r\n<p>&quot;이거 마파두부 아니라 해~&quot;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>하여간 마파두부는 영원히 사랑받을만한 요리입니다.</p>\r\n\r\n<p><br />\r\n<img alt=\"\" src=\"https://slhome.s3.amazonaws.com/ckeditor/pictures/20/content_mafa1.jpg\"  class=\"img-responsive\" /></p>\r\n\r\n<p>중국에서 요리로 먹은 마파두부,&nbsp; 그 밖에 다른 요리와 먹고 있습니다.</p>\r\n\r\n<p>특히 마파두부는 밥에 비벼먹으면 그 맛은 정말~~&nbsp; 환상이지요?</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://slhome.s3.amazonaws.com/ckeditor/pictures/21/content_mafa2.jpg\"  class=\"img-responsive\" /></p>\r\n\r\n<p>입에 넣으면 살살 녹는 두부와 매콤한맛!!&nbsp; ㅠ.ㅠ&nbsp;&nbsp; 감동입니다......</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>취두부</h3>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>취두부,&nbsp; 이름 그대로 냄새나는 두부로서 발효된 두부입니다</p>\r\n\r\n<p>한국에는 없는 발효된 두부 취두부입니다</p>\r\n\r\n<p>발효라고는 하지만 그 냄새는 바로 두부썩은 냄새겠지요?</p>\r\n\r\n<p>처음 그 냄새를 맡으면 기겁하기 일쑤지요</p>\r\n\r\n<p>하지만 먹다보면 그 냄새(X) =&gt; 향기(O)가 나면 군침이 먼저 돌게되는 취두부~!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://slhome.s3.amazonaws.com/ckeditor/pictures/18/content_chui1.jpg\"  class=\"img-responsive\" /></p>\r\n\r\n<p>취두부는 보통 살짝 튀겨서 먹는데 당연히 일반 두부튀김과 모양은 다르지 않게 보이지요?</p>\r\n\r\n<p>하지만 일반 두부튀김에 없는 취두부의 향긋한 향기~~</p>\r\n\r\n<p>먹는 순간에도 향이 입안에 퍼지면서 두부의 또 다른 신세계를 경험할수 있습니다.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>취두부는 길거리에서도 간식으로 많이 파는데</p>\r\n\r\n<p><img alt=\"\" src=\"https://slhome.s3.amazonaws.com/ckeditor/pictures/19/content_chui2.jpg\"  class=\"img-responsive\" /></p>\r\n\r\n<p>이런식으로 하나 먹으면 든든해집니다.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>역시 두부의 본고장 답게 중국의 두부요리는 환상적이지요</p>\r\n\r\n<p>어떻게 먹어도 맛있는 두부를 가장 맛있게 먹는 두가지 요리~</p>\r\n\r\n<p>마파두부와 취두부였습니다.</p>\r\n</body>\r\n</html>\r\n'),(9,'<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>여러 과일을 좋아하는 나이지만</p>\r\n\r\n<p>두리안이라는 과일은 얼핏 듣기는 했지만 신경쓰지 않고 살아왔었지요</p>\r\n\r\n<p>그러다가 30살이 넘어서야 맛본 두리안은 정말 환상 그 자체였습니다</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>생긴것 부터 너무나 맛있게 생긴(?) 두리안</p>\r\n\r\n<p><img alt=\"\" class=\"img-responsive\" src=\"https://slhome.s3.amazonaws.com/ckeditor/pictures/22/content_durian1.jpg\" /></p>\r\n\r\n<p>겉 껍질은 보다시피 날카로운 가시이므로 조심스럽게 열어야지요~</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>반으로 열은 모습입니다.</p>\r\n\r\n<p><img alt=\"\" class=\"img-responsive\" src=\"https://slhome.s3.amazonaws.com/ckeditor/pictures/23/content_durian2.jpg\" /></p>\r\n\r\n<p>껍질 속에 있는 맛있는 속살이 보입니다.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>또 반으로 쪼개면 속살을 쉽게 털어낼수 있습니다.</p>\r\n\r\n<p><img alt=\"\" class=\"img-responsive\" src=\"https://slhome.s3.amazonaws.com/ckeditor/pictures/24/content_durian3.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>속살을 털어낸 껍데기</p>\r\n\r\n<p><img alt=\"\" class=\"img-responsive\" src=\"https://slhome.s3.amazonaws.com/ckeditor/pictures/25/content_durian4.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>이렇게 맛있는 속살을 분리하였고 속살은 스푼등으로 퍼서 먹으면됩니다.</p>\r\n\r\n<p><img alt=\"\" src=\"https://slhome.s3.amazonaws.com/ckeditor/pictures/31/content_durian5.jpg\" class=\"img-responsive\" /></p>\r\n\r\n<p>두리안을 먹는 느낌은 아이스크림을 먹는 느낌이랄까?</p>\r\n\r\n<p>그 살살녹는 속살과 향긋한 향기가 입안에 가득 퍼지며 달콤함이 마구 느껴집니다</p>\r\n\r\n<p>&quot;과일의 황제&quot; 라는 별명은 정말 너무나 정확한 별명이지요</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>지구상에는 이보다 맛있는 과일은 없을 듯 합니다.</p>\r\n</body>\r\n</html>\r\n'),(10,'<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>우리말과 똑같은 유자(귤)라고 하지만</p>\r\n\r\n<p>우리나라에는 없는 유자입니다</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>사실상 자몽에 가까운 과일이지요</p>\r\n\r\n<p>크기부터 어마어마 합니다.</p>\r\n\r\n<p><img alt=\"\" src=\"https://slhome.s3.amazonaws.com/ckeditor/pictures/27/content_yuz1.jpg\"  class=\"img-responsive\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>껍질 벗기는거 부터가 장난이 아닙니다.</p>\r\n\r\n<p>미국산 오렌지 껍질 벗기는거 정도의 힘들기에 크기는 저정도이니깐요</p>\r\n\r\n<p><img alt=\"\" src=\"https://slhome.s3.amazonaws.com/ckeditor/pictures/29/content_yuz3.jpg\"  class=\"img-responsive\" /></p>\r\n\r\n<p>헉! 헉!&nbsp; , 힘들게 껍질을 벗기면 속살이 드러납니다.</p>\r\n\r\n<p>자몽과 크게 다르지 않습니다</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://slhome.s3.amazonaws.com/ckeditor/pictures/30/content_yuz4.jpg\"  class=\"img-responsive\" /></p>\r\n\r\n<p>이렇게 해서 속살을 먹으면 됩니다</p>\r\n\r\n<p>이때는 힘들게 껍질깐 보람이 느껴집니다</p>\r\n\r\n<p>달콤한 속살은 저 한통도 다 먹게 하지요</p>\r\n\r\n<p>&nbsp;</p>\r\n</body>\r\n</html>\r\n'),(11,'<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>나이를 먹고 주민등록증을 만들러 갔을때 지문 열 손가락을 찍어야 했다.</p>\r\n\r\n<p>어린 나이였지만 아주 기분이 좋지 않았다.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>커서 생각하니 역시 기분이 나쁠수 밖에 없는 일</p>\r\n\r\n<p>국민 모두를 잠재적 범죄자로 보고 각 개인의 정보를 국가가 보관하는것이였다.</p>\r\n\r\n<p>이것 뿐이랴</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>이미 나는 나도 모르는 사이에(어려서) 국가가 지급한 번호를 받아놓았다.</p>\r\n\r\n<p>상점 바코드와 다를것이 없는 번호!!&nbsp; 바로 주민등록 번호다.</p>\r\n\r\n<p>전 국민의 번호부여!!!</p>\r\n\r\n<p>참 대단하다.</p>\r\n\r\n<p>이 대단한 일을 한분은 역시 우리나라에서 그 유래를 찾기 힘든 독재자 박정희의 작품~</p>\r\n\r\n<p>그런 독재자(아무도 반항못하는) 아니였으면 하기 힘든 일이였을것이다.</p>\r\n\r\n<p>그래도 역시 그 때 또한 반대도 있었다고 한다.</p>\r\n\r\n<p>하지만 독재자의 뜻을 꺽지는 못하였다.</p>\r\n\r\n<p>그 후에 태어난 사람들은 주민등록 번호가 당연한것으로 받아들이고 아무대서나 주민번호를 요구하여 입력하면서 살고 있다.</p>\r\n\r\n<p>하지만 그 정보들은 해당 직원들이 빼돌려서 한명당 얼마에 파는 정보가 되었음은 다들 알고 있을것이다.</p>\r\n\r\n<p>문제가 생기자 그제서야 주민번호 못 받게 하는 모양이지만</p>\r\n\r\n<p>근본적으로 주민번호가 문제라는것은 알면서도 그러는지 아님 정말 이제는 문제의식이 없는건지는 모르겠다.</p>\r\n\r\n<p>하지만 상당수 국민들은 이제 주민번호 없는 세상에 대해서 생각조차 못하고 있는 실정이다.</p>\r\n\r\n<p>전국민의 코드화를 실행시킨 위대한 나라,&nbsp; 대한민국</p>\r\n\r\n<p>이제 이런 x거리 그만둬야할때가 되지 않았나 싶다.</p>\r\n\r\n<p>우리가 할일은</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:26px;\"><span style=\"color:#FF0000;\">주민등록번호 폐지</span>!!!!</span> 뿐이다</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n</body>\r\n</html>\r\n'),(12,'<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>당하기만 해도 기분 더러워지는 불심검문</p>\r\n\r\n<p>경찰이 행사할수 있는 당연한 권리인줄 알았더니</p>\r\n\r\n<p>거부하고 싶으면 거부해도 되는거였어요</p>\r\n\r\n<p>진작 알았으면 거부했을텐데&nbsp; 역시 아는게 힘이지요?</p>\r\n\r\n<p>임의동행요구도 당연히 거부가능</p>\r\n\r\n<p>주민번호 물어보지말고 그냥 이마에 바코드 새겨넣고 멀리서 스캔해 10+8</p>\r\n\r\n<p>이게 니들이 원하는 세상이잖어?</p>\r\n\r\n<p>참 옛날에는 숙박업소도 돌면서 검문했다네요</p>\r\n\r\n<p>편하게 쉬는 사람들 깨우면서 뭐하던 짓거리인지</p>\r\n\r\n<p>참 대단하던 시절이네요</p>\r\n</body>\r\n</html>\r\n'),(13,'<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>범죄 예방을&nbsp; 위한다는 명목으로 늘어가는 CCTV</p>\r\n\r\n<p>나는 나를 찍어도 좋다고 한적이 없는데도 마음대로 나를 찍어대는 카메라</p>\r\n\r\n<p>내가 잠재적 범죄자인가?&nbsp; 물론 그렇기는 하다.</p>\r\n\r\n<p>누구나 범죄자가 될수 있으니~~</p>\r\n\r\n<p>특히 나이가 들 수록 범죄를 저지른 사람들의 처지가 더욱더 이해가 간다.</p>\r\n\r\n<p>그렇다고 동의도 없이 저렇게 찍어되도 되는건가?</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>동의없이 저렇게 찍어도 되는거면 나도 길가는 여자 그냥 계속 찍어도 되는거 아닌가?</p>\r\n\r\n<p>그건 왜 범죄인데?</p>\r\n\r\n<p>또한 CCTV보는 놈들 또한 저런 마음으로 보고 있을지 알게 뭐냐?</p>\r\n\r\n<p>목욕탕주인이 지마음대로 CCTV설치하는 웃긴나라</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>점점 모든 골목이 CCTV로 도배되고 있다.</p>\r\n\r\n<p>나도 집 앞에 CCTV나 설치해서 CCTV보고 있을 놈들의 심정을 한번 느껴봐야겠다.</p>\r\n</body>\r\n</html>\r\n'),(14,'<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>리눅스를 사용하는 또 하나의 재미인 커널 컴파일입니다.</p>\r\n\r\n<p>커널 컴파일이란?</p>\r\n\r\n<p>커널(Kernel)은 OS의 핵심으로 이를 바탕으로 여러 프로그램이 그 위에서 돌아가게 됩니다.</p>\r\n\r\n<p>컴파일(Compile) 은 소스코드를 컴퓨터가 알아듣게 변환하는 과정으로 이를 통해서 실제 돌아가게 되는 코드가 만들어 집니다.<br />\r\n&nbsp;</p>\r\n\r\n<p>즉 커널컴파일이란 커널소스를 컴파일하여 커널을 생성하는 과정이라고 할 수 있습니다.</p>\r\n\r\n<p>OS의 핵심을 직접 컴파일 한다니?&nbsp; 윈도우에서는 느낄수 없는 재미지요</p>\r\n\r\n<p>그럼 어렵지 않냐고요?&nbsp; 물론 처음은 조금 어렵지만 몇번 하면 금세 익숙해질수 있습니다.</p>\r\n\r\n<p>쉽게 생각하면 커널소스를 컴파일을 하는것 뿐입니다.</p>\r\n\r\n<p>특히 젠투리눅스에서는 더 쉽습니다.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>그럼 커널 컴파일은 왜 하나요?</p>\r\n\r\n<p>리눅스 설치시 설치된 커널은 일반적인 모든 사양을 포함하게 되어있습니다.</p>\r\n\r\n<p>이말은 모든 하드웨어에서도 잘 돌아가게 된다는 말이지만 그를 위해서 내 컴에는 있지도 않은 하드웨어</p>\r\n\r\n<p>나에게는 필요없는 기능들도 다 포함되어 있어서 무겁다는 뜻이지요</p>\r\n\r\n<p>커널 컴파일을 통해 나에게 필요없는 것들은 빼고 딱 맞는 커널을 만들어서 최고의 성능을 낼 수있습니다</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>그럼 한번 시작해볼까요?</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>우선 커널 소스를 설치</p>\r\n\r\n<p>emerge gentoo-sources로 설치하면 쉽게 되지요</p>\r\n\r\n<p>설치후엔 cd /usr/src 로 이동하여</p>\r\n\r\n<p>linux 폴더가 있는지 확인</p>\r\n\r\n<p>없으면 방금의 최신버전을 링크를 겁니다.</p>\r\n\r\n<p>ln -s linux-3.xx linux</p>\r\n\r\n<p>/usrc/src/linux 폴더가 최신소스이면 됩니다.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>다음은 emerge genkernel로 소스컴파일 쉽게하는 도구 설치</p>\r\n\r\n<p>genkernel 이 있으면 설정만 하면 컴파일은 그냥 자동으로 됩니다.</p>\r\n\r\n<p>genkernel --menuconfig all로 실행후 설정하고 나오면 컴파일이 진행됩니다.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>컴파일 완료후엔 /boot 디렉토리 가서 잘 완료되었는지 확인하고 Grub에 현재 버전으로 부팅되게 하면 됩니다.</p>\r\n</body>\r\n</html>\r\n'),(15,'<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p><br />\r\n남자의 30대 중반이 행복도가 가장 떨어진다고 한다는 조사 결과는 참 맞는것 같습니다.</p>\r\n\r\n<p>&nbsp;\r\n<p>사는것은 정말 힘듭니다.</p>\r\n</p>\r\n\r\n<p>나이가 들수록 삶의 무게가 짓눌려 옵니다.</p>\r\n\r\n<p>작은거 하나도 힘이들고 기운이 나지 않습니다.</p>\r\n\r\n<p>세상일에 열정이 없어지자 분노,기쁨등의 감정조차 거의 느끼지 못하고 살고 있습니다.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>전쟁이 따로 있는게 아니라 사는거 자체가 전쟁입니다.</p>\r\n\r\n<p>범죄, 자살</p>\r\n\r\n<p>이런거는 다른 세상 이야기인줄만 알고 살아왔는데</p>\r\n\r\n<p>그런것들을 택한 사람들이 이해가 되기 시작합니다.</p>\r\n\r\n<p>물론 범죄자나 자살자를 옹호 할 수는 없지만</p>\r\n\r\n<p>그들이 점점더 깊게 이해가 되고 있다는 거지요</p>\r\n\r\n<p>사는게 전쟁이고</p>\r\n\r\n<p>그것들을 택한 사람들은 부상자, 전사자입니다.</p>\r\n\r\n<p>삶의 무게를 참다못해 남에게 표출한것이 범죄자고 자신에게 표출한것이 자살이지요</p>\r\n\r\n<p>&nbsp;\r\n<p>우리 주변의 나와&nbsp; 같이 살고 있는 사람들은 전우입니다.</p>\r\n</p>\r\n\r\n<p>부상자, 전사자 전우들에게 깊은 유감을 표합니다.</p>\r\n\r\n<p>그런데 우리나라는 특히 자살자가 많습니다.</p>\r\n\r\n<p>자살과 관련있는 햇빛도 쨍쨍하게 내리쬐는 곳인데도</p>\r\n\r\n<p>무엇인가 엄청나게 잘못되었다는거지요</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>불행의 끝, 자살</p>\r\n\r\n<p>우리는 불행한 나라에 살고 있지요</p>\r\n\r\n<p>세계에서 가장 치열한 전쟁터에서 살고 있습니다.</p>\r\n\r\n<p>전우들이 죽지않게 참호를 더 깊이파고 벙커를 보강하는 사회를 만들어야겠습니다.</p>\r\n\r\n<p>가장 치열한 전쟁터에서 같이 있는 우리는 같이만 있어도 눈물나는 전우들입니다.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>전우들아 매일 40명 이상씩 전사하는 자살공화국에서도 죽지말고 살자!!</p>\r\n</body>\r\n</html>\r\n'),(16,'<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>세상이 미쳐 돌아갑니다.<br />\r\n한자(漢字) 한자(一字)도 모르는 아이들이 커서 중국,일본,대만,동남아 사람들과 무엇을 할 수 있을까요??</p>\r\n\r\n<p>저때만 해도<br />\r\n저도 한자를 못한다고 생각했는데<br />\r\n저 고등학교때 아이들이 얼마나 한자를 모르던지 제가 일등 했었습니다.<br />\r\n주변 사람들이 쉬운 한자도 모르는것을 볼때는 진짜 무식해보입니다.</p>\r\n\r\n<p>기본적으로 천자문은 알아야되는거 아닌가요?</p>\r\n\r\n<p>이게 아마 다 오륀지 찾던 美親 친미정부때 바뀐것 같습니다.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>ps.) 반대로 역사수업은 엄청 많아졌더라고요 역사수업 없앨때는 언제고<br />\r\n문제 생기니깐 하는 꼴이라고는......&nbsp;&nbsp;&nbsp; 한자수업도 문제 생겨야지나 다시 생기겠지요</p>\r\n</body>\r\n</html>\r\n'),(17,'<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>어짜피 빨갱이 세상으로 바뀌어도 달라질 것 없는 하층민들이라는거~~</p>\r\n개뿔 가진것도 없는것들이 무슨 빨갱이를 그리 찾는지??</p>\r\n이런 사람보면 면전에서 이 말 해줄꺼임=&gt;&quot;넌 어짜피 가진것도 없어서 걱정 안해도 돼&quot;</p>\r\n가진거 하나 없는것들이 왜 이리 부자들 걱정을 해주는지 이해가 안감</p>\r\n<p>반면 가진것좀 있는 사람들은 저런 저질단어 안쓰지(하지만 이런 상황을 보며 미소짓고 있겠지)</p>\r\n</body>\r\n</html>\r\n'),(18,'<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>이번에 정부에서 원전을 예정보다 많은 7기 추가한다고 하는군요.<br />\r\n이건 잘하는거라고 생각합니다. (사실 저는 더 많이(20기 추가) 필요하다고 생각합니다만)<br />\r\n사실 전기 쓰려면 현재로서는 원자력말고는 답이 없습니다.<br />\r\n수력이나 지열발전이 제일 좋긴하지만 우리나라는 그런 환경도 안되고<br />\r\n화력은 연료비와 대기오염이 문제지만<br />\r\n반면 원자력은 싼 연료비에 대기오염도 전혀 없지요<br />\r\n중국은 원전 100기 추가 예정이랍니다.<br />\r\n그리고 특히 세계최고의 선진국인 프랑스도 원전으로 거의 전기 충당하지요</p>\r\n\r\n<p>저번대선에서도 문재인이 제일 마음에 안든 거가 원자력반대관련이였고<br />\r\n박근혜가 마음에 든 정책 딱하나가 원자력 찬성이라는거였습니다.</p>\r\n\r\n<p>저도 전기와 뗄수 없는 직업을 가지고 있지요?&nbsp; 컴퓨터 전기없이 안돌아가지요<br />\r\n특히 서버쪽은 전기 잡아먹는 귀신입니다.<br />\r\n결국 우리가 계속 서버를 만들어 나갈수록 전기사용은 급등한다는 이야기지요<br />\r\n그냥 프로그래밍 하려고 컴퓨터 쓸떄도 물론이고요</p>\r\n\r\n<p>결국 우리의 선택은 두가지입니다.</p>\r\n\r\n<p>1. 원전 계속 지어서 전기를 잘쓰던지<br />\r\n2. 아님 전기 쓰는거를 줄이고 비싼 전기료를 감당하면서 원전을 짓지 않을지(고통이 따르겠지요) = 전기 다이어트?</p>\r\n\r\n<p>사실 저는 2번도 괜찮다고 생각합니다. 하지만 힘들겠지요.</p>\r\n\r\n<p>아 그런데 제가 제일 하고싶은 이야기는 환상을 가지고 있는 더 탐욕스러운 사람들이 있다는거를 말하려고요<br />\r\n결국 선택은 1번 아니면 2번인데<br />\r\n원전은 싫으면서 전기는 맘껏 쓰겠다는 말도 안되는 생각을 가진 사람들이 있어서 기가 막힙니다.<br />\r\n그 허상의 단어가(녹색성장, 친환경에너지) 같은거지요<br />\r\n물론 친환경에너지는 존재하지만 그렇게 많은 사람들이 쓸 친환경에너지는 결코 없습니다.</p>\r\n\r\n<p>그허상을 사람들이 좋아하는 이유는 바로 말했듯이 원전은 싫으면서 전기는 쓰고 싶은거지요<br />\r\n허상은 결국 없어지기 마련입니다.&nbsp; 혹시나 대체에너지 관련주식 가진사람들은 참고하시고요<br />\r\n저는 2번도 정말 좋다고 생각하지만 인간의 속성상 1번으로 가는수 밖에 없지요</p>\r\n</body>\r\n</html>\r\n'),(19,'<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>사람과 사람이 만나 서로 소통하는것은 너무나 중요하지요?</p>\r\n\r\n<p>하지만 사람과 사람 사이의 벽은 정말 넘을수 없는 경우도 많습니다.</p>\r\n\r\n<p>이런것을 없애서 서로 소통하는 세상이 아름다운 곳이지요</p>\r\n\r\n<p>그런데 우리나라 사람들 사이에만 있는 엄청난 벽이 있습니다.</p>\r\n\r\n<p>바로 존대말!!!</p>\r\n\r\n<p>안그래도 벽이 많은데 우리는 우선 벽부터 친 상태에서 만나게 되지요</p>\r\n\r\n<p><span><span>왜 겨우 나이 때문에 서로 친구가 되지 못하는 이런 문화가 있는지.......</span></span></p>\r\n\r\n<p><span><span>세계에서 존대말 있는 나라가 한국하고 일본 뿐이라나요?</span></span></p>\r\n\r\n<p><span><span>그나마 일본에서는 존대말 거의 안쓴다고 하네요 = 그냥 일본정도로 하던지</span></span></p>\r\n\r\n<p><span><span>영어 배울때 존대말 없어서 혼란스러웠던 기억이 새록새록합니다.</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><br />\r\n<span><span>존대말의 용도?? 시비+살인</span></span></p>\r\n\r\n<p><span><span>검색에서 (뉴스)선택 검색어 = 반말 시비 살인 로 검색~~</span></span></p>\r\n\r\n<p><span><span>하루에 이런걸로 몇명씩 죽어나가는지.....</span></span></p>\r\n</body>\r\n</html>\r\n'),(20,'<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>사장의 준다 준다하는 말장난에 놀아나 3개월이 지나고서야 노동부 진정을 넣고 처리를 기다렸다.</p>\r\n\r\n<p>그런데 이건 뭐 처리가 되는건지 마는건지 아무런 소식이 없다.</p>\r\n\r\n<p>쇠파이프 들고서 직접 회사로 찾아가야되나, 칼도 가져갈까 말까 이런 저런 생각이 많아졌다.</p>\r\n\r\n<p>그러다가 몇 주만에 우체통을 봤는데 출석 요구서가 와있었다.</p>\r\n\r\n<p>크윽..... 우체통 안본 나도 잘못이지만 이메일도 제대로 안보는 세상에 우편으로만 통보라니.......</p>\r\n\r\n<p>전화번호도 다 적어줬는데 문자라도 보낼수 있었을것을,&nbsp; 참 귀찮았나보다.</p>\r\n\r\n<p>해당 감독관에 전화를 해서 출석 못했다고 하니 다음 날짜를 잡아준다.</p>\r\n\r\n<p>별로 출석할 필요도 없을것 같은데 왜 돈받아야 될 사람 출석시켜서 왔다갔다 하게 만드는지 짜증났다.</p>\r\n\r\n<p>뭐 급여 내역이라고 해봤자 조작 가능하고 별로 증거 될꺼 같지도 않구만</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>하여간 그래서 수원에서 구로까지 먼 길을 떠나갔다.</p>\r\n\r\n<p>가는데 2시간 오는데 2시간 총 4시간을 쓰고 피곤해졌다.</p>\r\n\r\n<p>뭐 처리해주는 것도 그리 시원치 않은 느낌이다.</p>\r\n\r\n<p>조금 더 기다려보고 잘 처리 되지않으면 직접 쇠파이프 들고 찾아가는게 더 빨리 처리될것같다.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>임금체불을 노동자를 죽이는 살인행위임에도</p>\r\n\r\n<p>처벌은 솜방망이이다.</p>\r\n\r\n<p>체불하는 사업주중에서 진짜로 사정이 어려워서 못주는 경우는 10%나 될까?</p>\r\n\r\n<p>처벌을 높여서 이런일이 없어야겠다.</p>\r\n\r\n</body>\r\n</html>\r\n'),(21,'<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>임금체불 당하다보니 여러 생각이 머리에 스친다.</p>\r\n\r\n<p>법자체가 자본가들 위주로 되어있는 물렁한 법이니 노동자들 우습게 알고 임금체불을 하는것이다.</p>\r\n\r\n<p>그럼 왜 우리나라는 사장(자본가)들이 노동자를 우습게 여길까?</p>\r\n\r\n<p>그 중 큰 이유가 아마 이 나라에서는 지배층을 때려잡는 혁명이 한번도 성공하지 못했기 때문일것이다.</p>\r\n\r\n<p>프랑스 혁명을 비롯하여 특히 러시아 공산혁명에 영향을 받은 많은 나라들이 지배층을 몰아내고 새로운 나라를 만들었다.</p>\r\n\r\n<p>특히 공산혁명의 전파는 자본가들을 벌벌 떨게 만든 최고의 무서움이였다.</p>\r\n\r\n<p>그래서 아직 혁명이 성공하지 못한곳의 자본가(이들이 지배층인 국가는)들은 이에 맞서 채찍과 당근을 사용했다.</p>\r\n\r\n<p>강성노동조합을 제거하고 노동자 처우를 개선(국가로서는 복지 향상)했다.</p>\r\n\r\n<p>우리가 눈 여겨봐야하는것은 당근(노동자 처우 개선,복지 향상)이다.</p>\r\n\r\n<p>만약 공산혁명이 있지 않았다면 다른 지역의 당근도 아마 영원히 없었을꺼다.</p>\r\n\r\n<p>러시아 혁명가가 미국,서유럽 노동자의 처우를 개선시킨 셈이다.</p>\r\n\r\n<p>그런데 우리나라는 그나마 당근(복지)도 거의 없었다.</p>\r\n\r\n<p>역사적 이유로는 6.25를 통하여 국내 공산세력을 사실상 완전제거 되었기 때문이였다.</p>\r\n\r\n<p>국시도 반공이였으니 공산주의가 발붙일곳이 없었다.</p>\r\n\r\n<p>노동조합 때려잡는것만으로도 충분하였다.</p>\r\n\r\n<p>6.25로 나라 사정이 말도 아니였으니 복지는 어불성설인게 맞긴했다.</p>\r\n\r\n<p>하지만 점점 나라 사정이 좋아져도 복지는 거의 이루어지지 않았다.</p>\r\n\r\n<p>전태일 열사가 만들어놓은 법만이라도 잘 지키라고 하며 분신했지만 이도 자본가들 귀엔 의미없는 메아리였다.</p>\r\n\r\n<p>그러던중 공산주의 국가들이 몰락하기 시작하니 이제 다시 자본가들은 살판이 났다.</p>\r\n\r\n<p>공산주의가 무서워서 울며 겨자먹기로 노동자들한테 베풀던 복지도 줄이고 싶어졌다.</p>\r\n\r\n<p>그래서 수정자본주의를 버리고 예전으로 돌아가기위해서 신자유주의를 들고 나왔다.</p>\r\n\r\n<p>대처리즘으로 대표되는 정책, 복지를 줄이고 노동조합의 힘을 약화시켰다.</p>\r\n\r\n<p>세상은 이렇게 돌아왔는데 우리나라 노동자들은 반공사상에 길들여져서 자신이 노동자라는 인식자체가 부족하고 자본가들이 공산주의 보듯하는 눈으로 공산주의, 노동조합을 보면서 알아서 기는? 신기한 노동자로 살고있다.</p>\r\n\r\n<p>자본가들이 만들어낸 &quot;귀족노조&quot;라는 말을 먼저 쓰고 자본가들이 노동자들을 분열시키기 위해 만든 정규직, 비정규직 분열정책에 놀아나고 있다.</p>\r\n\r\n<p>자본가들당에 투표하는 노동자들을 보면 답답하기도 하고 불쌍하기도 하고 우리나라에서 자본가로 사는게 참 행복하겠다는 생각이 든다.</p>\r\n\r\n<p>하루빨리 노동자들이 뭉쳐서 복지향상을 꾀해야되는데 자본가 당에 투표하는 노동자들을 보면 노동자로 사는 앞날이 캄캄하다.</p>\r\n\r\n<p>이나라에서 노동자로 복지를 찾느니 빨리 자본가가 되어서 우스운 노동자들 무시하며 행복하게 사는게 훨씬 가능성 있는 이야기같다.</p>\r\n\r\n<p>&nbsp;</p>\r\n</body>\r\n</html>\r\n'),(22,'<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>웹개발을 하다보면 손이 가는게 한두가지가 아닙니다.</p>\r\n\r\n<p>처음에는 재미로 배우면서 한다지만&nbsp; 계속적인 많고 반복적인 작업이 개발자를 더욱 괴롭게했습니다.</p>\r\n\r\n<p>이렇게 반복적인 웹개발 패턴으로 괴로워하는 개발자를 구원하는 광명이 비추었으니</p>\r\n\r\n<p>그 이름은 &quot;Ruby On Rails&quot;&nbsp; 줄여서 RoR, Rails(레일즈) 라고 합니다.</p>\r\n\r\n<p>웹개발의 이런 어려움을 통합으로 해결해주는 &quot;프레임워크&quot;입니다.</p>\r\n\r\n<p>프레임워크라는 생소한 단어가 나왔습니다만</p>\r\n\r\n<p>건축으로 치면&nbsp; 뼈대를 제공한다고 보면 되겠습니다.</p>\r\n\r\n<p>우리는 이 뼈대위에서 작업을하면 그 뼈대를 만들기 위해 들이는 노력(고통?)을 들이지 않아도 되어</p>\r\n\r\n<p>보다 편하고 빠르게 결과물을 얻을수 있는것이지요</p>\r\n\r\n<p>물론 레일즈 전에도 이런 프레임워크가 없던것은 아닙니다.</p>\r\n\r\n<p>하지만 레일즈 처럼 깔끔하고 통합적으로 처리해주던 프레임워크는 없었지요</p>\r\n\r\n<p>레일즈가 나온후에 반응 역시 폭발적으로</p>\r\n\r\n<p>그동안 그리 관심받지 못했던 Ruby언어의 관심과 사용이 급증했으며(레일즈는 Ruby란 언어로 제작되었고 Ruby를 사용하여 계속적으로 작업하게됩니다)</p>\r\n\r\n<p>이에 영감을 받은 다른 언어버젼 프레임워크들도 등장하게 됩니다.</p>\r\n\r\n<p>PHP버젼 Rails라 할수있는 CakePHP가 대표적, 그밖에 그 뒤로 나온 프레임워크들은 거의 다 영향을 받았지요</p>\r\n\r\n<p>어떤가요? Ruby On Rails를 더욱더 배워보고 싶지 않은가요?</p>\r\n\r\n<p>그럼 지금 바로 시작해봐요</p>\r\n\r\n<p><br />\r\n공식 홈페이지는 여기고요<br />\r\n<a href=\"http://www.rubyonrails.org\" target=\"_blank\">http://www.rubyonrails.org</a></p>\r\n\r\n<p><br />\r\n윈도우에서 레일즈를&nbsp; 설치하기</p>\r\n\r\n<p>윈도우에서&nbsp; 레일즈를&nbsp; 설치하기도 그리 쉽지는&nbsp; 않습니다.</p>\r\n\r\n<p>하지만 여기를 이용하면 한번에 설치가 되어서 정말&nbsp; 편리 합니다.<br />\r\n<a href=\"http://www.rubyonrails.org\" target=\"_blank\">http://www.railsinstaller.org</a></p>\r\n\r\n<p><br />\r\n&nbsp;리눅스에서 레일즈 설치하기</p>\r\n\r\n<p>&nbsp; 리눅스에서 레일즈&nbsp; 설치하기는 정말&nbsp; 쉽습니다.<br />\r\n&nbsp; 단지 루비와 젬만 설치되어 있으면&nbsp; 됩니다.<br />\r\n&nbsp;<br />\r\n&nbsp; gem install rails<br />\r\n&nbsp;<br />\r\n&nbsp;<br />\r\n&nbsp;이렇게 해서 레일즈가&nbsp; 설치되었다면&nbsp;&nbsp; IDE설치를 하면&nbsp; 되겠습니다.<br />\r\n&nbsp;<br />\r\n&nbsp;물론 레일즈는 IDE 없이도 기본&nbsp; 텍스트&nbsp; 편집기로도 아무 문제 없이&nbsp; 사용할수 있지만&nbsp; 그래도&nbsp; 있으면 훨씬&nbsp; 편리하겠지요<br />\r\n&nbsp;<br />\r\n<a href=\"http://www.rubyonrails.org\" target=\"_blank\">http://www.aptana.com</a><br />\r\n&nbsp;에서 다운받으면 됩니다.<br />\r\n&nbsp;<br />\r\n&nbsp;이미&nbsp; 이클립스이클립스가 있으면 플러그인 버젼으로&nbsp; 설치해도&nbsp; 됩니다.<br />\r\n&nbsp;<br />\r\n&nbsp;<br />\r\n&nbsp;IDE가&nbsp; 설치되었다면 New Rail Project를 실행하면 새로운 레일즈&nbsp; 프로젝트가&nbsp; 생성되고요<br />\r\n&nbsp;<br />\r\n&nbsp;그냥 명렁어 줄에서 하려면 새로운&nbsp; 프로젝트를 만들 디렉토리로 이동후<br />\r\n&nbsp;<br />\r\n&nbsp;rails new&nbsp; 프로젝트명<br />\r\n&nbsp;<br />\r\n&nbsp;을 치시면&nbsp; 됩니다.<br />\r\n&nbsp;<br />\r\n&nbsp;<br />\r\n&nbsp;이렇게&nbsp; 프로젝트 생성후에는 IDE에서 server 관련 탭으로 가면 해당&nbsp; 프로젝트 서버를&nbsp; 실행시킬수 있으며<br />\r\n&nbsp;명렁어로는 ./bin/rails server를&nbsp; 실행시키면 개발 서버가 실행되므로 이를 이용하여 개발을 해 나가면&nbsp; 됩니다.<br />\r\n&nbsp;<br />\r\n&nbsp; 기본적으로 서버는 3000번 포트를 이용하게 되어있으므로(물론 바꾸면 바꾼대로)&nbsp; 서버 실행후 웹 브라우져로<br />\r\n&nbsp; http://localhost:3000&nbsp; 로 접속되면 레일즈 설치가 완료&nbsp; 된것입니다.</p>\r\n</body>\r\n</html>\r\n'),(23,'<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>한동안 안쓰고 있던 복합기(cannon mp258)를 리눅스에서 사용하기 위해서</p>\r\n\r\n<p>제 리눅스 컴퓨터에 연결하고 커널을 약간 손을 보았습니다.</p>\r\n\r\n<p>그뒤에 프린터를 사용하기 위해서 Cups(http://www.cups.org)</p>\r\n\r\n<p>를 설치하고</p>\r\n\r\n<p>스캐너를 사용하기 위해 Sane(http://www.sane-project.org)과 응용프로그램 xsane(http://www.xsane.org) 설치했습니다.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>제컴(젠투리눅스) 에서 설치는</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>emerge cups</p>\r\n\r\n<p>SANE_BACKENDS=&quot;net pixma&quot;&nbsp; emerge sane-backends</p>\r\n\r\n<p>emerge xsane</p>\r\n\r\n<p>로 설치 했습니다</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>아마 다른버전 리눅스로 설치했다면 기본 설치 되었을거라고 생각되는데요</p>\r\n\r\n<p>없다면 해당 프로그램을 설치해주세요</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>예전에도 프린터와 스캐너 설정을 한적이 있었지만 쉽지않은 과정이였는데</p>\r\n\r\n<p>이제는 윈도우와 다를게 없이 쉽게 되더라고요</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>그럼 우선 프린터부터 해보겠습니다.</p>\r\n\r\n<p>Cups가 설치되었다면 Cups서버를 실행시키면 되는데요</p>\r\n\r\n<p>제 리눅스에서는 /etc/init.d/cupsd로 실행시키면 되었습니다.</p>\r\n\r\n<p>이렇게 Cups 서버가 실행되면 631번 포트로 접속(http://localhost:631)하면 Cups를 설정할수 있는 화면이 나옵니다.</p>\r\n\r\n<p>프린터 항목으로 가서 새로운 프린터 추가한뒤 테스트 페이지를 출력해보면 끝~~</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>스캐너는 Sane설치후에 스캐너를 키고 sane-find-scanner명령을 이용하면 스캐너가 잘 잡히는지를 알아볼수 있습니다.</p>\r\n\r\n<p>스캐너가 잘 잡힌다면 sane서버를 실행시키면 되는데요</p>\r\n\r\n<p>제 리눅스에서는 /etc/init.d/saned로 실행시키면 되었습니다</p>\r\n\r\n<p>그 다음은 xsane을 실행하여 방금 설정한 스캐너에 맞는것으로 선택후에 스캔~ 을 하면 됩니다.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>스캐너 프린터 설정도 이제는 윈도우와 별 다를꺼 없이 되서 참 좋았습니다.</p>\r\n\r\n<p>여러분들도 리눅스에서 프린터와 스캐너를 사용하는 즐거움을 누리기 바랍니다.</p>\r\n</body>\r\n</html>\r\n'),(24,'<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>리눅스 도입을 하는데 꺼려지던것이 인터넷 뱅킹이 안되는것도 큰 부분을 차지했었는데요</p>\r\n\r\n<p>ActiveX와 공인인증서로 대표되는 우리나라 인터넷뱅킹에서 리눅스로 접근은 원천 차단이였지요</p>\r\n\r\n<p>하지만 리눅스로 뱅킹을 되게 해달라는 운동도 많이 일어났었고</p>\r\n\r\n<p>그 결과로 리눅스로도 뱅킹이 됩니다.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>사실 저는 이미 포기하고 있던 상태라서 확인도 안하고 있었는데</p>\r\n\r\n<p>된지는 꽤 되었나보네요</p>\r\n\r\n<p>레드햇과 우분투만 지원하는 결과로 저는 약간 고생하여 설치하였지만</p>\r\n\r\n<p>인터넷 뱅킹을 잘 실행했습니다.</p>\r\n\r\n<p>공인인증서는 윈도우에서 복사하여서 사용자계정에 넣으면 되네요</p>\r\n\r\n<p>즉 c:\\Program~1\\NPKI를&nbsp; 사용자계정/NPKI 로 복사~</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>이제 게임할꺼 아니면 윈도우 쓸일이 없겠네요</p>\r\n\r\n<p>아~&nbsp; 게임도 할꺼 많은데&nbsp; 다음엔 리눅스 게임을 소개해볼께요</p>\r\n</body>\r\n</html>\r\n'),(25,'<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>임금체불로 회사 그만두고 쉬는동안 배우고 있는 조경기능사</p>\r\n\r\n<p>조경의 새로운 세계에 입문하고 있습니다.</p>\r\n\r\n<p>그 동안 보아왔던 나무나 바위 풀과 시설물의 배치가 왜 그렇게 되어있는지 알게되었어요</p>\r\n\r\n<p>길가나 아파트 작은 공간공간마다도 다 법칙대로 계획되어서 조성된거라는것을 모르고 살았네요</p>\r\n\r\n<p>크게 보면 지금 제가하는 웹프로그래머일과 같은점도 많네요</p>\r\n\r\n<p>결국 어떤 시스템을 만들기 위한 법칙을 익히고 그걸 기술적으로 만들어 내는것이지요</p>\r\n\r\n<p>다행이 필기는 쉽게 합격할듯 하네요</p>\r\n\r\n<p>실기도 열심히해서 합격하고 더욱 더 공부해봐야겠네요</p>\r\n\r\n<p><br />\r\n&nbsp;</p>\r\n</body>\r\n</html>\r\n'),(26,'<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>요즘엔 뭘 다운받아도 그리 듣거나 볼 시간도 없고 해서</p>\r\n\r\n<p>당나귀 쓴이후로 P2P파일공유 프로그램은 처음 써봤습니다.</p>\r\n\r\n<p>처음에는 약간 개념이 잡히지 않아서 어려워 보였는데</p>\r\n\r\n<p>한번 해보니 어려울것이 없네요</p>\r\n\r\n<p>저는 이것을 씁니다.</p>\r\n\r\n<p><a href=\"http://www.qbittorrent.org\" target=\"_blank\">http://www.qbittorrent.org</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>토렌트는 시드파일을 받어서 그를 이용해서 파일을 공유하는 방식이더라고요</p>\r\n\r\n<p>마그넷도 처음엔 안되어서 뭔가 했더니 이것도 쉽게 사용가능하더라고요</p>\r\n\r\n<p>이것들을 이용해서 파일을 다운 받으니 정말 순식간에 다운로드 되더라고요</p>\r\n\r\n<p>속도도 빠르고 자료도 많고 토렌트 짱입니다~~</p>\r\n\r\n<p>리눅스에서도 잘되니 더욱 좋네요</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>설마 여러분들도 말로만 토렌트 듣고 사용하지 않고 있나요?</p>\r\n\r\n<p>그럼 바로 토렌트의 세계로 오시기 바랍니다.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>ps.</p>\r\n\r\n<p>웹하드나 P2P의 문제인 불법파일 공유문제는 조금 피하기 힘들더군요</p>\r\n\r\n<p>하지만 이 기술 자체가 문제인것은 아니고 불법공유하는 사용자들이 문제인것이지요</p>\r\n\r\n<p>토렌트 기술자체는 정품 소프트웨어를 배포하는데도 사용되고 있더군요</p>\r\n\r\n<p>영화나 음악도 불법이니 받기는 많이 꺼려집니다.</p>\r\n\r\n<p>저는 그래서 영화나 음악은 거의 안 받습니다.</p>\r\n\r\n<p>그럼 뭐 받냐고요??&nbsp; ......</p>\r\n</body>\r\n</html>\r\n'),(28,'<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>그 동안 공부했던 조경기능사 시험을 보러가려 했습니다.</p>\r\n\r\n<p>집에서 나와서 구운동입구에서부터 한일전산고까지 가야되는데</p>\r\n\r\n<p>11시 까지 입실을 남겨두고 지금은 10시 30분</p>\r\n\r\n<p>그런데 시간은 별로 없고 버스는 최소 20분이상 대기해야 오는 상황..... ㅜㅜ</p>\r\n\r\n<p>뛰면 20분 정도면 갈것같아서 뛰기 시작했습니다.</p>\r\n\r\n<p>감기걸려서 몸도 않좋은데 뛰려니 더 힘들더라고요.........</p>\r\n\r\n<p>헥헥대면서 뛰어가니 53분에 입실하였습니다.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>시험전에 책도 못보고 시험보고 나오니 봄의 절정인 날씨입니다.</p>\r\n\r\n<p>뛰어온길 반대쪽으로 그냥 걸어가기로 했습니다.</p>\r\n\r\n<p>날씨가 좋아 행복해야되는데 우울한게 심한가봅니다.</p>\r\n\r\n<p>예전같은 행복감이 없네요</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>내가 가야할 길.......&nbsp; 온 길보다 더 많이 남았네요</p>\r\n\r\n<p><img alt=\"\" class=\"img-responsive\" src=\"https://slhome.s3.amazonaws.com/ckeditor/pictures/32/content_road1.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>옆에는 이런 풍경이 펼쳐 있지요</p>\r\n\r\n<p><img alt=\"\" class=\"img-responsive\" src=\"https://slhome.s3.amazonaws.com/ckeditor/pictures/36/content_road_side4.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>완전 옆으로 보면 멀리 보이는 수원시내와 팔달산</p>\r\n\r\n<p><img alt=\"\" class=\"img-responsive\" src=\"https://slhome.s3.amazonaws.com/ckeditor/pictures/34/content_road_side1.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>봄의 기운이 온몸으로 전해지네요</p>\r\n\r\n<p><img alt=\"\" class=\"img-responsive\" src=\"https://slhome.s3.amazonaws.com/ckeditor/pictures/35/content_road_side2.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>대략 저 쪽 끝이 내가 아침에 숨차며 뛰어갔던 곳의 끝</p>\r\n\r\n<p><img alt=\"\" class=\"img-responsive\" src=\"https://slhome.s3.amazonaws.com/ckeditor/pictures/37/content_road_side3.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>뒷풍경에도 봄의 기운이 넘치네요,&nbsp; 내년 봄이 오면 다시 이 풍경과 느낌을 다시 또 느낄 수 있을까?</p>\r\n\r\n<p><img alt=\"\" class=\"img-responsive\" src=\"https://slhome.s3.amazonaws.com/ckeditor/pictures/33/content_road_back.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>이렇게 봄날은 간다</p>\r\n</body>\r\n</html>\r\n'),(29,'<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>최악의 고통 요로결석</p>\r\n\r\n<p>미리미리 예방하는게 최고지요?</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>단연 요로결석 예방에 가장 좋은것은 물입니다.</p>\r\n\r\n<p>특히 수분부족이 발생하기 쉬운 여름에는 더욱더 물을 섭취해 줘야합니다.</p>\r\n\r\n<p>너무나 쉬운것인데도 바쁘다보면 물 마시는것도 깜박하여 적게 섭취하는 경우가 많지요</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>또 하나 좋은것이 구연산입니다.</p>\r\n\r\n<p>요로결석을 녹이는데 효과가 좋다고 합니다.</p>\r\n\r\n<p>레몬, 오렌지에 많이 들어 있습니다.</p>\r\n\r\n<p>오렌지주스가 특히 좋다고 하네요</p>\r\n\r\n<p>그러고 보니 저도 걸렸을때 전에는 한참 오렌지 주스를 안먹었었습니다.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>요로결석은 웬만해선 자연배출 되는데 작게 배출되면 사실상 느끼지도 못할 수도 있습니다.</p>\r\n\r\n<p>요로결석을 배출하는데 돕는것이 바로 진동입니다.</p>\r\n\r\n<p>요즘 병원에서 요로결석 치료하는 방법중 하나가 체외 충격파 요법이지요</p>\r\n\r\n<p>진동이 되면 관에 껴있는 결석이 흔들리거나 부셔져서 잘 나오게 되겠지요?</p>\r\n\r\n<p>진동을 주려면 어떻게 해야할까요? 바로 몸을 뛰어야겠지요?</p>\r\n\r\n<p>제일 좋은것은 줄넘기라고 하네요</p>\r\n\r\n<p>안마기가 있으면 직접 대고서 진동을 주는것도 좋다고 하네요</p>\r\n\r\n<p>저도 마지막 빠질때 물 많이먹기와 제자리 뛰기를 병행했습니다.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>예방하려면 우선 과식하지 않는것도 좋고요</p>\r\n\r\n<p>음식 먹은양, 즉 작은양만 방광에서 처리하면 되니깐 발생확률이 적어지겠지요?</p>\r\n\r\n<p>또한 요로결석을 발생시키는 안좋은 음식을 피해야겠지요?</p>\r\n\r\n<p>요로결석에 안 좋은 음식은 건과류, 시금치, 초콜릿, 커피, 홍차등이라고 하네요</p>\r\n\r\n<p>저도 호두 많이 먹고 걸렸지요........ ㅜ.ㅜ</p>\r\n\r\n<p>맥주는 기본적으로 요로결석을 발생시키는것으로 알려져있는데</p>\r\n\r\n<p>생긴후에는 오줌을 많이 나오게해서 배출에는 도움이 된다고 합니다.</p>\r\n\r\n<p>병주고 약주는 놈입니다.</p>\r\n\r\n<p>저의 경험에서도 맥주먹고 걸려서 맥주먹고 나왔습니다.</p>\r\n\r\n<p>맥주도 많이 줄이는게 좋겠습니다.</p>\r\n</body>\r\n</html>\r\n'),(30,'<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>자기 컴퓨터(보통 local이라고 칭한다. 이하 로칼)를 이용해서 레일즈로 웹사이트를 만든후에 어떻게 해야할까?</p>\r\n\r\n<p>물론 우선 로칼에서 모든 테스트를 통과하여 애러 없이 제대로 운영이 가능하다고 판단된다면 이제 실서비스 진행할 차례이다.</p>\r\n\r\n<p>이렇게 로칼에서 실서비스로 적용시키는것은 deploy(배치)라고 한다.</p>\r\n\r\n<p>우선 실서비스를 진행할 서버컴퓨터가 있어야 하는데</p>\r\n\r\n<p>서버컴퓨터는 고가로 마련하는게 쉽지 않다.</p>\r\n\r\n<p>그래서 보통 하나의 서버컴퓨터에서 여러 사용자가 이용하는 호스팅을 사용하는데</p>\r\n\r\n<p>레일즈 웹호스팅을 제공하는 업체는 찾기가 힘들다.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Cafe24에서 레일즈 호스팅을 제공하고 나도 예전에 썻었었는데 아직도 예전버전만 지원하여 이제는 거의 망한것 같은 느낌이다</p>\r\n\r\n<p>예전 저 버전으로 운영가능하다면 사용할수 있겠지만....... 힘들듯 하다.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>또 하나로 heroku라는 것이 있는데</p>\r\n\r\n<p>이는 무료로 제공되는 호스팅으로 git로 올리면 적용되는 재미있고 편한 구조이다. 이런 서비스가 무료라니~~</p>\r\n\r\n<p>정말 사용하기 좋지만......... 서버가 미국에 있는것 같은데.. 그래서 여기(한국)서는 이용하기 힘들다.</p>\r\n\r\n<p>물론 다 잘된다.&nbsp; 하지만 현 기술로는 태평양을 건너는데는 아직 시간이 필요하다.</p>\r\n\r\n<p>응답속도가 느릴수 밖에 없다.</p>\r\n\r\n<p>아메리카 대륙 거주자라면 heroku를 이용하여 무료 호스팅과 운영이 가능하다.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>요즘 호스팅에서 뜨는것이 바로 가상서버이다.</p>\r\n\r\n<p>호스팅과 비슷한 개념이지만 각 사용자마다 다른 서버를 이용하는것 처럼 모든 기능을 이용할수 있는 서비스이다.</p>\r\n\r\n<p>이를 이용하면 레일즈 서비스를 제공하는데 별 문제가 없을것이다.</p>\r\n\r\n<p>하지만 역시 단독 서버에 비하면 약간의 속도 저하가 있으므로 대량 서비스를 할때는 알맞지 않다.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>가상서버도 그리 마음에 들지 않는다면</p>\r\n\r\n<p>단독서버를 마련하는것도 요즘은 그리 많은 비용이 들지 않는다.</p>\r\n\r\n<p>월 10만원 이하로 월사용이 가능하다.</p>\r\n\r\n<p>레일즈를 이용한 여러 서비스를 제공할것이라면 단독서버를 마련하는것이 비용은 높지만 효과는 최상일것이다.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>레일즈 호스팅이 있으면 좋겠지만 현재 우리나라에서는 거의 없는 실정이고</p>\r\n\r\n<p>대신 가상서버나 단독서버를 이용하여 서비스를 제공할수 있다.</p>\r\n\r\n<p>사실상 가상서버와 호스팅의 차이는 거의 없는 상태이므로 우선 가상서버를 이용하고</p>\r\n\r\n<p>여유가 된다면 단독서버로 레일즈 서비스를 제공할수 있을 것이다.</p>\r\n</body>\r\n</html>\r\n'),(31,'<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>rubygem, Gem이란 루비에서 지원하는 패키지 시스템으로</p>\r\n\r\n<p>리눅스의 패키지 시스템인 yum apt emerge 같은 것으로 필요프로그램을 관리할수 있는 프로그램이다.</p>\r\n\r\n<p>Gem 또한 저런 시스템들과 마찬가지로 명령만 내리면 인터넷에서 자동으로 프로그램을 받아서 설치를 해준다.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>명령어는 gem으로</p>\r\n\r\n<p>인스톨시에는 gem install 패키지명</p>\r\n\r\n<p>업데이트시에는 gem update 패키지명</p>\r\n\r\n<p>삭제시에는 gem uninstall 패키지명</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>gem install rails</p>\r\n\r\n<p>레일즈를 보면 최상위에 Gemfile파일에 필요프로그램을 기술하면 알아서 설치를 해주는 것이다.</p>\r\n\r\n<p>이떄는 일일히 gem설치를 할수 없기에 한번에 해결해주는 프로그램이 있는데 bundler라는 프로그램이다.</p>\r\n\r\n<p>bundle install, bundle update를 통해 일괄적으로 처리가 가능하다.<br />\r\n&nbsp;</p>\r\n</body>\r\n</html>\r\n'),(32,'<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>로칼에서 기본제공 서버인 webrick서버를 이용하여 사이트 제작을 마쳤다면</p>\r\n\r\n<p>실제 서버에 올려서 서비스를 해야할것 입니다 .</p>\r\n\r\n<p>webrick서버는 순수 루비로 제작된 서버로 레일즈에서 기본제공되어 개발시 편하게 이용할수 있지만</p>\r\n\r\n<p>실제서비스에서는 사용하는데 제약이 있습니다.</p>\r\n\r\n<p>실제서비스에서 레일즈가 운영가능하게 하는 서버프로그램은&nbsp; 많이 있어서 선택의 폭이 넓습니다.</p>\r\n\r\n<p>각각마다 여러 장점을 가지고 있는데 이를 보고 자기에게 가장 알맞은것을 선택하면 되겠습니다.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>1. 편리한 설치와 쉬운 설정이 좋은 Passenger</p>\r\n\r\n<p>이미 아파치와 요즘 뜨는 nginx서버가 이미 설치되어 있거나 운영되고 있다면 바로 Passenger를 설치만 하면</p>\r\n\r\n<p>레일즈 서비스를 바로 운영할수 있습니다.</p>\r\n\r\n<p>gem으로 설치 할 수도 있고 gem installl passenger</p>\r\n\r\n<p>리눅스 패키지 시스템에서 제공하는걸로 설치할 수도 있습니다.</p>\r\n\r\n<p>설치후에는 passenger-install-apache2-module, passenger-install-nginx-module 명령어가 사용가능한데</p>\r\n\r\n<p>명령어 이름그대로 해당하는 서버 모듈을 설치하면 됩니다.</p>\r\n\r\n<p>정말 편하고 쉽게 설치할수 있어서 편하고 좋습니다.</p>\r\n\r\n<p>자신이 Apache서버를 운영중이라고 하면 이를 선택하는것이 가장 좋을듯 합니다.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>2. 레일즈에서 오랫동안 사용되어온 서버 mongrel</p>\r\n\r\n<p>예전 여러 프로그램이 생기기전에는 레일즈 실서버라 하면 자동적으로 Mongrel을 떠올렸습니다.</p>\r\n\r\n<p>Mongrel 역시 gem 이나 해당 리눅스 패키지 시스템으로 설치할수 있습니다.</p>\r\n\r\n<p>설치후에는 아파치 또는 nginx로 프록시 연동을 시키면 되는데 이에 관한것은 좀 많은양이고</p>\r\n\r\n<p>제가 사용을 안해본 관계로 다음에 다루어 보겠습니다.</p>\r\n\r\n<p>google 검색을 통하면 많은 자료를 찾아볼수 있습니다.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>3. 또하나의 인기 서버 unicon</p>\r\n\r\n<p>unicon 또한 인기를 끌고 있는 서버프로그램으로 mongrel과 함께 바로 생각되는 실서버 프로그램입니다.</p>\r\n\r\n<p>한때는 뛰어난 성능으로 mongrel능가하는 많은 인기를 끌었는데 mongrel또한 성능이 개선되어 엎치락 뒤치락 하는 형세입니다.</p>\r\n\r\n<p>이렇게 발전해 나가니 사용자들에게는 더욱 좋은 결과가 있습니다.</p>\r\n\r\n<p>이 역시 mongrel처럼 설치하고 연동시키면 되는데 역시 다음에 다루어 보겠습니다.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>4. 말 그대로 작고 가벼운 thin</p>\r\n\r\n<p>이렇게 여러 서버프로그램이 있는 가운데 또 하나의 프로그램이 나와서 인기를 끌게되니 이것이 thin입니다.</p>\r\n\r\n<p>이름처럼 작고 가벼운 서버프로그램으로 작고 가벼워서 실서비스 뿐만 아니라 개발시에도 사용가능합니다.</p>\r\n\r\n<p>Gemfile에 thin을 추가만 해주고 bundle update를 해주면 되겠지요?</p>\r\n\r\n<p>./bin/rails server를 실행하면 webrick이 아닌 thin서버가 실행되지요</p>\r\n\r\n<p>이를 설치, 연동하는 방법은 조만간 바로 다루어 보겠습니다.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>레일즈를 서비스 할수 있는 서버가 참 많이 있지요?</p>\r\n\r\n<p>이밖에도 많은 서버가 있습니다.</p>\r\n\r\n<p>이 중에서 자신에게 가장 잘 맞는 프로그램을 선택하여 서비스를 하면 레일즈를 서비스하는 재미또한 느낄 수 있을것입니다.</p>\r\n</body>\r\n</html>\r\n'),(33,'<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>웹프로그래머를 괴롭히는 또 하나의 과정은 배치(deploy) 입니다.</p>\r\n\r\n<p>배치 역시 처음엔 처음이라 어려워서 힘들지만 익숙해진 후에도 반복적일이 프로그래머의 정신을 황폐하게 만드는 작업이였지요.</p>\r\n\r\n<p>배치의 과정은 보통 이런 식이였지요</p>\r\n\r\n<p>로칼에서 작업한것을 FTP나 버전관리시스템에 올리고 서버에 접속하여 서버에서 필요한 수 많은 여러 작업을 해주고 재시작을 해야겠지요</p>\r\n\r\n<p>레일즈의 경우는 보통 배치시 서버에서 bundle update, rake db:migrate, rake assets:precompile등의 작업을 해주어야 되지요</p>\r\n\r\n<p>이런 반복적인일은 자동화의&nbsp; 필요성이 절실해집니다.</p>\r\n\r\n<p>그래서 만들어진 프로그램 카피스트라노(capistrano)를 소개합니다.</p>\r\n\r\n<p>이제 카피스트라노를 이용하면 저런 과정 필요없이 단 한줄의 명령어</p>\r\n\r\n<p>cap productioin deploy</p>\r\n\r\n<p>만 치면 배치는 완료됩니다.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>카피스트라노 역시 Gem으로 설치하면 됩니다.</p>\r\n\r\n<p>카피스트라노 3.0 버전은 기존의 2.x와 많은 것이 바뀌었는데 처음 시작한다면 3.0으로 시작하면 됩니다.</p>\r\n\r\n<p>최상위 Gemfile 아래 내용을 입력하고</p>\r\n\r\n<p>group :development, :test do<br />\r\n&nbsp; gem &#39;capistrano&#39;, &#39;~&gt; 3.0&#39;<br />\r\n&nbsp; gem &#39;capistrano-bundler&#39;<br />\r\n&nbsp; gem &#39;capistrano-rails&#39;, &#39;~&gt; 1.0.0&#39;</p>\r\n\r\n<p>end</p>\r\n\r\n<p>bundle update를 쳐주면 카피스트라노가 설치됩니다.</p>\r\n\r\n<p>이제 시스템에 프로그램은 설치되었지만 아직 내 레일즈 어플에는 설치되지 않았지요.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>잘 설치되었다면 cap 명령어가 생겼을겁니다.</p>\r\n\r\n<p>cap install 을 쳐주면 내 레일즈 어플에 설정 파일이 생성됩니다.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>우선 최상위에 Capfile은 사용할 기능 모듈 로드에 관한 내용인데</p>\r\n\r\n<p>require &#39;capistrano/bundler&#39;<br />\r\nrequire &#39;capistrano/rails/assets&#39;<br />\r\nrequire &#39;capistrano/rails/migrations&#39;</p>\r\n\r\n<p>보통은 이 세가지만 있으면 될 듯합니다.&nbsp;&nbsp; 주석을 제거해주세요~</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>다음은 config/deploy.rb의 내용을 봐야하는데</p>\r\n\r\n<p>여기가 거의 모든 설정을 처리하는 파일입니다.</p>\r\n\r\n<p>참 많은 내용이 있습니다만 역시 보통 사용시 필요한 부분만 보겠습니다.</p>\r\n\r\n<p>set :application, &#39;어플리케이션 이름&#39;<br />\r\nset :repo_url, &#39;레포지터리 경로&#39;<br />\r\nset :branch, &#39;브랜치명&#39;<br />\r\nset :deploy_to, &#39;서버에 배치될 경로&#39;<br />\r\n# set :scm, :git</p>\r\n\r\n<p># set :format, :pretty<br />\r\n# set :log_level, :debug<br />\r\nset :pty, true<br />\r\nset :linked_files, %w{config/database.yml .env}<br />\r\nset :linked_dirs, %w{bin log tmp/pids tmp/cache tmp/sockets public/assets}</p>\r\n\r\n<p>카피스트라노2,x 에는 svn기본이고 git가 옵션이였는데</p>\r\n\r\n<p>3.x에서는 git가 기본입니다.&nbsp; svn사용하기가 더 힘들더라고요. 해볼려고 했는데 안되서 저는 git로 바꾸었습니다.</p>\r\n\r\n<p>처음은 어플리케이션이름, 레포지터리 경로, 브랜치명, 서버에 배치될 경로를 적고</p>\r\n\r\n<p>밑에 linked_files, linked_dirs에는 공유될 파일, 디렉토리를 적습니다.</p>\r\n\r\n<p>보통 버젼이 바뀌어도 안 바뀔 파일, 디렉토리, 임시파일등을 적어주면 됩니다.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>config/deploy 디렉토리에는</p>\r\n\r\n<p>production.rb&nbsp; staging.rb 두 파일이 있는데</p>\r\n\r\n<p>그 안에는 접속에 필요한 사용자명, 서버명등을 넣으면 됩니다.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>이렇게 준비를 마치면&nbsp; 이제 카피스트라노를 이용한 배치 설정을 마친것입니다.</p>\r\n\r\n<p>이제 단순한 반복작업은 카피스트라노에게 맡기십시오</p>\r\n\r\n<p>cap production deploy</p>\r\n\r\n<p>단 한줄만 치면 배치가 끝납니다.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>혹시나 한번에 안되거나 더 많은 내용을 알고 싶다면</p>\r\n\r\n<p><a href=\"http://www.capistranorb.com\" target=\"_blank\">카피스트라노 홈페이지(http://www.capistranorb.com)</a>를 방문해보세요</p>\r\n</body>\r\n</html>\r\n'),(34,'<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>조경을 배우기 전에도 왜 우리나라는 미국영화에 나오는 사람들처럼 정원을 가지고 살지 못할까?</p>\r\n\r\n<p>라는 생각을 많이 했었는데 조경을 배우다 보니 다시 그 생각이 떠오른다.</p>\r\n\r\n<p>우리나라에서도 정원이 나오긴 한다.</p>\r\n\r\n<p>그것도 드라마에서나 재벌집이 배경일때 정원이 잘 갖추어져 있고 그 밖의 경우에는 본 적이 없다.</p>\r\n\r\n<p>그러다 보니 집 정원의 이름도 자동으로 아는게 아니라 배워야 할 수 밖에</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>입구에서 현관까지 이어진 동선에 있는 정원은 앞뜰</p>\r\n\r\n<p>보통 이 동선옆, 거실, 발코니 맞은편에 펼쳐저 있는 안뜰</p>\r\n\r\n<p>부엌 맞은편의 장독대, 채소밭이 있는 작업뜰</p>\r\n\r\n<p>그리고 집뒤에 주로 안방이나 다른 방들의 맞은편에서 차폐를 위한 뒤뜰</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>보통 드라마에선 앞뜰과 안뜰이 많이 나온다.</p>\r\n\r\n<p>등장인물들이 현관에서 입구까지 갈때 나오는 앞뜰, 쉬거나 식사를 하는데로 나오는 안뜰</p>\r\n\r\n<p>저뜰들이 다 있는 아니 최소 안뜰과 앞뜰이 있는 집에서 살고 싶다</p>\r\n</body>\r\n</html>\r\n'),(35,'<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>HTML로 문서구조를 만들었다면</p>\r\n\r\n<p>다음은 CSS를 이용하여 레이아웃을 맞추고 디자인을 꾸밀차례입니다.&nbsp;</p>\r\n\r\n<p>예전에는 HTML태그중에서도 디자인을 위한 태그들이 있었는데</p>\r\n\r\n<p>이런 태그들은 모두 폐기되고 이런일을 CSS가 맡게 되었습니다.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>CSS를 사용하기 위해서는 HTML의 어느 부분을 선택해서</p>\r\n\r\n<p>이부분은 이렇게 이렇게 보이게 해라.&nbsp;</p>\r\n\r\n<p>해야될것있니다.</p>\r\n\r\n<p>바로 이 HTML어느 부분을 선택하는 것이 CSS 선택자(selector)입니다.</p>\r\n\r\n<p>선택자를 사용하는데에는 크게</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>1. 태그로 찾기</p>\r\n\r\n<p>2. 아이디로 찾기</p>\r\n\r\n<p>3. 클래스로 찾기</p>\r\n\r\n<p>가 있는데 이들을 조합해서 사용하게 됩니다.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>우선 태그로 찾으려면 그냥 태그를 써주면 됩니다.</p>\r\n\r\n<p>header {이렇게 저렇게 그려라}</p>\r\n\r\n<p>header 이부분이 선택자이고 중괄호 부분이 어떻게 그려야할지를 명령하는 부분입니다.</p>\r\n\r\n<p>즉 header태그는 이렇게 저렇게 그려라 하는 겁니다.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>아이디로 찾기는 #을 이용합니다.</p>\r\n\r\n<p>#header {이렇게 저렇게 그려라}</p>\r\n\r\n<p>이역시 id=&quot;header&quot;인것은 이렇게 저렇게 그려라 하는 겁니다.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>클래스로 찾기는 .을 이용합니다.</p>\r\n\r\n<p>.header {이렇게 저렇게 그려라}</p>\r\n\r\n<p>더 말할거 없겠지요?&nbsp; class=&quot;header&quot;인것을 말합니다.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>우선 기본적인 세가지 selector를 알았으니 이를 조합하는 방법을 알아보겠습니다.</p>\r\n\r\n<p>header #menu { 이렇게 저렇게}</p>\r\n\r\n<p>아시겠나요? 네 바로 header태그에 포함되는 #menu는 이렇게 저렇게 그려라 입니다.</p>\r\n\r\n<p>이렇게 여러 선택자들을 이용해서 문서상의 어느것이라도 골라서</p>\r\n\r\n<p>마음껏 스타일을 적용 시킬수 있는것입니다.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>처음보면 #, . 이 뭔가 하지만 막상 알고나면 참 쉽습니다.</p>\r\n\r\n<p>그럼 고르는 법을 알았으니 이제 여러 스타일을 적용하는 방법을 배워도로록 하겠습니다.</p>\r\n\r\n<p><br />\r\n&nbsp;</p>\r\n</body>\r\n</html>\r\n'),(36,'<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>자바스크립트(javascript)는 참 특이한 언어입니다.</p>\r\n\r\n<p>웹에 특화된 언어로 브라우저사이에서 HTML과 CSS가 못하는 여러 일들을 가능하게 해줍니다.</p>\r\n\r\n<p>다른 언어와는 다르게 브라우저에 포함되기 위해 가볍고 컴파일이 필요없는 언어를 위와 같은 필요로 개발하였는데 이를 처음에는 livescript라고 부르다가</p>\r\n\r\n<p>후에 Java가 뜨는것에 편승하려고 했는지 Javascript로 이름을 바꿔서 오늘에 이르렀습니다.</p>\r\n\r\n<p>저는 개인적으로 java를 뺀 이름이였으면 더 좋았을것으라고 생각됩니다.</p>\r\n\r\n<p>Java와 javascripts는 전혀 다른 언어인데도 이를 혼동하거나 javascipr를 그냥 java로 부르는 경우도 있어서 역시 혼동이 발생할수 있습니다.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>이처럼 javascript는 C나 Java처럼 하나의 독립된 프로그래밍언어이면서 초창기에는 별 취급을 못받았지요.</p>\r\n\r\n<p>그러나 웹이 발전해 나가면서 점점발전해 나갔고</p>\r\n\r\n<p>지금은 웹을 넘어 서버나 기타 다른 부분에서도 독릭된 언어로 이제는 오히려 C나 Java를 능가할 가능성 마저 보이고 있습니다.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>웹디자이너들이 copy &amp; paste로 쓰던 자바스크립트를 이처럼 한번에 뜨게 한데는 Ajax도 큰 역할을 했습니다.</p>\r\n\r\n<p>요즘은 ajax기능의 웹사이트들이 당연한것 처럼 보이지만 처음 나왔을때는 충격적인 발전이였고</p>\r\n\r\n<p>이를 가능하게 한것도 Javascript였지요</p>\r\n\r\n<p>Javascript의 사용이 많아지다보니 Framework가 등장하였고 이는 더욱더 많은 사용자들이 쉽게 여러 기능을 구현하게 해주었습니다.</p>\r\n\r\n<p>여러&nbsp; Framework가 나왔었지만 지금은 jQuery거의 통일이 되었습니다.</p>\r\n</body>\r\n</html>\r\n'),(37,'<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>노동자로 사는 우리에게 노동절은 어떤 의미일까요?</p>\r\n\r\n<p>우선 노동절이 어떻게 생기게 되었는지를 보면&nbsp; 신기하게도 공산국가가 아닌</p>\r\n\r\n<p>자본주의 선두주자의 나라인 미국에서 유래되었습니다.</p>\r\n\r\n<p>네, 하지만 조금만 생각해보면 이것도 당연하지요?</p>\r\n\r\n<p>가장 노동자가 먼저,많이 있을 나라에서 자본가에 맞서서 노동자의 권리를 찾기위한 움직임이 일어났던것 입니다.</p>\r\n\r\n<p>장소 또한 산업이 발달했던 시카고입니다.</p>\r\n\r\n<p>노동자들의 구호는 &quot;하루 8시간 노동&quot;이였습니다.</p>\r\n\r\n<p>이게 1880년대에 나온 이야기인데 지금도 제대로 안되고 있는 현실이(특히 이놈의 나라에서) 슬픔니다.</p>\r\n\r\n<p>시카고에서 저 구호를 외치며 대규모의 파업이 일어났고 뭉쳐서 함께하면 변화를 이끌수 있다는것을 확인했지요</p>\r\n\r\n<p>하지만 자본가의 멍멍이인 경찰은 당연히 이를 폭력으로 진압하였지요(헤이마켓 사건)</p>\r\n\r\n<p>그 후에 파리에서 노동운동가들이 모여 이 때의 선구적인 투쟁을 기념하기로 하고 5월 1일(메이데이)가 노동절로 선포되었습니다.</p>\r\n\r\n<p>우리나라에서는 일제시대에서부터 행사를 가지면서 의미를 되새겼지만 그 후 반공의 기치아래서 천대받았다가</p>\r\n\r\n<p>이 정신을 기리려는 끊임없는 노력으로 다시 5월 1에 지정되었습니다.</p>\r\n\r\n<p>그러나 &quot;노동&quot;이라는 단어도 제대로 쓰지 못하던 그 시절(지금도 그렇지만 자본가들 살 맛났겠어?, 이 때도 16~20시간씩 부려먹었지요)로 인해서</p>\r\n\r\n<p>&quot;근로자의 날&quot;이라는 변태적인 이름으로 불리우고 있습니다.&nbsp;&nbsp;&nbsp; 근로자의 날 X, 노동절 O</p>\r\n\r\n<p>하루 8시간 노동을 만들기 위해 투쟁하고 죽어간 이들로 말미암아 우리가 그들처럼 16~20시간씩 일하지 않는 환경이 만들어 질 수 있던거지요.</p>\r\n\r\n<p>노동자들이 뭉쳐서 대항하지 않는한 자본가들은 다시 우리를 20시간씩 부려먹으려고 호시탐탐 노릴것입니다.</p>\r\n\r\n<p>노동절을 맞아 16~20시간 일하던 그들의 고통과 총칼 앞에서도 이런 불의에 맞서 싸운 그들의 용기를 생각해봐야겠습니다.</p>\r\n</body>\r\n</html>\r\n'),(38,'<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>비트코인 최대 거래소인 마운트곡스가 파산했습니다.</p>\r\n\r\n<p>이는 급성장하던 비트코인의 최대악재로 평가되며 비트코인의 미래도 불투명하게 만들고 있습니다.</p>\r\n\r\n<p>그럼 비트코인은 어떤 것일까부터 알아보기로 하겠습니다.</p>\r\n\r\n<p>비트코인은 컴퓨터 암호화기술을 이용한 통화(돈)로 사이버상에서만 존재합니다.</p>\r\n\r\n<p>돈의 발전과정을 보면 최초의 실물 -&gt; 금,은같은 귀금속, 이를 가공한 규격화한 (금,은,동) 동전 -&gt;</p>\r\n\r\n<p>금,은등의 귀금속을 담보로 거래되는 지폐 -&gt; 그냥 국가에서 발행하는 지폐(현 지폐)</p>\r\n\r\n<p>순으로 발전해왔습니다.</p>\r\n\r\n<p>특히 주목해야하는것은 실물에서 가상으로 넘어오는 과정인데 처음에는 실물로만 거래를 해왔습니다.</p>\r\n\r\n<p>그러다가 실물의 무게도 무겁고 거래도 불편하여 발전한것이 금,은 등을 맡겨놓고</p>\r\n\r\n<p>이를 보증하는 문서(지폐)로 거래를 하기 시작하였습니다.</p>\r\n\r\n<p>이를 가져가면 물론 현물로 바꿔주었지요</p>\r\n\r\n<p>미국 달러화 또한 그렇게 교환해주었는데</p>\r\n\r\n<p><br />\r\n&nbsp;</p>\r\n</body>\r\n</html>\r\n'),(39,'<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>우리 예쁜 주영이를 목욕시켰어요</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://slhome.s3.amazonaws.com/ckeditor/pictures/38/content_content_baby01.jpg\" class=\"img-responsive\" /></p>\r\n\r\n<p>기분 좋은듯 있다가</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://slhome.s3.amazonaws.com/ckeditor/pictures/39/content_content_baby02.jpg\" class=\"img-responsive\" /></p>\r\n\r\n<p>얼굴이 조금씩 변하더니</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://slhome.s3.amazonaws.com/ckeditor/pictures/40/content_content_baby03.jpg\" class=\"img-responsive\" /></p>\r\n\r\n<p>ㅎㅎㅎ 시작한다</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://slhome.s3.amazonaws.com/ckeditor/pictures/41/content_content_baby04.jpg\" class=\"img-responsive\" /></p>\r\n\r\n<p>엉엉엉 목욕 싫어~~</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://slhome.s3.amazonaws.com/ckeditor/pictures/42/content_content_baby05.jpg\" class=\"img-responsive\" /></p>\r\n\r\n<p>결국 불타는 고구마로 변신완료~~</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>이렇게 오늘도 주영이는 목욕을 마쳤습니다.</p>\r\n</body>\r\n</html>\r\n'),(40,'<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>반려동물 없어지면 정말 슬프지요?</p>\r\n\r\n<p>저도 몇 번 집나간 우리 멍멍이들이 돌아오지 않았습니다.</p>\r\n\r\n<p>예전에도 그런적이 있어서 이번에 멍멍이들이 나갔을때는 잃어버렸나보다 그냥 포기하려고 했는데</p>\r\n\r\n<p>인터넷으로 검색하다 알게된 사이트입니다.</p>\r\n\r\n<p><a href=\"http://www.animal.go.kr\" target=\"_blank\">http://www.animal.go.kr</a></p>\r\n\r\n<p><img alt=\"\" src=\"https://slhome.s3.amazonaws.com/ckeditor/pictures/43/content_content_animal.jpg\" class=\"img-responsive\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>여기서 유기동물 -&gt; 공고 메뉴로 가면 잃어버린 반려동물을 찾아볼수 있어요</p>\r\n\r\n<p>덕분에 우리 멍군이와 짬순이도 집나갔다가 찾아왔습니다.</p>\r\n\r\n<p>이런 좋은 제도가 있는지도 모르고 하마터면 포기 할 뻔 했습니다.</p>\r\n\r\n<p>포기하지 말고 이 사이트를 이용해서 가족을 찾아보세요</p>\r\n</body>\r\n</html>\r\n'),(41,'<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>리눅스 설치</p>\r\n\r\n<p>안해본 사람에게는 뭔가 어렵고 안될것 같은 느낌이 드는게 사실이지요</p>\r\n\r\n<p>실제로 예전에는 리눅스 설치가 윈도우에 비해서 꽤나 까다로운 면이 있었지만</p>\r\n\r\n<p>갈수록 GUI가 발전하여서 이제 윈도우 설치할줄 아는분이라면 리눅스 설치하는데 아무런 문제없을꺼에요</p>\r\n\r\n<p>윈도우 설치했던 사람은 물론 초보자도 할 수 있는 리눅스 설치 같이 해볼까요?~</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>이제는 가장 대중적이게 자리잡은 우분투 리눅스로 해볼까요?</p>\r\n\r\n<p><a href=\"http://www.ubuntu.com\" target=\"_blank\">http://www.ubuntu.com</a></p>\r\n\r\n<p>여기서 ISO를 다운로드 받아서 DVD로 만들어서 하던지 아니면 부팅 USB로 만들어서 설치디스크를 제작합니다.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>제작된 부팅디스크를 BIOS설정으로 들어가 부팅 첫순위로 만들고 부팅을 합니다.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>부팅이 된후에는 다음같은 화면이 나옵니다.</p>\r\n\r\n<p>굳이 설명할 필요가 없을 정도로 직관적인 GUI로 진행되게 됩니다.</p>\r\n\r\n<p>사실상 할일은 거의 &quot;다음&quot;버튼을 누루는 일뿐입니다.</p>\r\n\r\n<p><img alt=\"\" class=\"img-responsive\" src=\"https://slhome.s3.amazonaws.com/ckeditor/pictures/44/content_linux1.jpg\" /></p>\r\n\r\n<p>언어가 영어로 되어있는데 한국어로 바꾸면 됩니다.</p>\r\n\r\n<p>영어나 다른언어가 더 편한분은 그대로 또는 다른언어를 선택하면 됩니다.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" class=\"img-responsive\" src=\"https://slhome.s3.amazonaws.com/ckeditor/pictures/45/content_linux1_ko.jpg\" /></p>\r\n\r\n<p>한국어를 선택하면 다음같이 나옵니다.</p>\r\n\r\n<p>체험하기와 설치하기가 있는데 필요대로 체험만 하고 싶은 사람은 체험하기를 선택하시고</p>\r\n\r\n<p>설치할 사람은 설치를 선택합니다.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>우리는 설치를 선택</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>다음화면은</p>\r\n\r\n<p><img alt=\"\" class=\"img-responsive\" src=\"https://slhome.s3.amazonaws.com/ckeditor/pictures/46/content_linux2.jpg\" /></p>\r\n\r\n<p>이런식으로 나오게 됩니다.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>여기가 가장 중요한 부분입니다.</p>\r\n\r\n<p>그 이유는 기존의 데이터가 다 지워지기 때문입니다.</p>\r\n\r\n<p>기존에 보존할 데이터는 반드시 백업을 하길 바랍니다.</p>\r\n\r\n<p><img alt=\"\" class=\"img-responsive\" src=\"https://slhome.s3.amazonaws.com/ckeditor/pictures/47/content_linux3.jpg\" /></p>\r\n\r\n<p>옵션은 필요에 따라 선택하면 됩니다.</p>\r\n\r\n<p>지금설치를 누룹니다.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>시간대를 설정하는 화면입니다.</p>\r\n\r\n<p><img alt=\"\" class=\"img-responsive\" src=\"https://slhome.s3.amazonaws.com/ckeditor/pictures/54/content_linux4.jpg\" /></p>\r\n\r\n<p>해당지역으로 설정하고 계속 진행합니다.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>키보드 설정 화면입니다.</p>\r\n\r\n<p><img alt=\"\" class=\"img-responsive\" src=\"https://slhome.s3.amazonaws.com/ckeditor/pictures/49/content_linux5.jpg\" /></p>\r\n\r\n<p>해당키보드를 설정하고 계속 진행합니다.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>사용자를 설정하는 화면입니다.</p>\r\n\r\n<p><img alt=\"\" class=\"img-responsive\" src=\"https://slhome.s3.amazonaws.com/ckeditor/pictures/50/content_linux6.jpg\" /></p>\r\n\r\n<p>아이디 패스워드를 설정하고 계속 진행합니다.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>설치가 진행됩니다.</p>\r\n\r\n<p><img alt=\"\" class=\"img-responsive\" src=\"https://slhome.s3.amazonaws.com/ckeditor/pictures/51/content_linux7.jpg\" /></p>\r\n\r\n<p>윈도우 설치진행과 다를것이 없습니다.&nbsp; 할 일은 기다리는것 뿐입니다.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>설치가 완료 되었습니다.</p>\r\n\r\n<p><img alt=\"\" class=\"img-responsive\" src=\"https://slhome.s3.amazonaws.com/ckeditor/pictures/52/content_linux8.jpg\" /></p>\r\n\r\n<p>지금 다시 시작을 합니다.</p>\r\n\r\n<p>재부팅시 부팅순위를 설치된 하드디스크로 되돌립니다.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>우분투 리눅스로 부팅되었습니다!!!!</p>\r\n\r\n<p><img alt=\"\" class=\"img-responsive\" src=\"https://slhome.s3.amazonaws.com/ckeditor/pictures/55/content_linux9.jpg\" /></p>\r\n\r\n<p>이제 리눅스의 새로운 세상으로 생활할 수 있습니다.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>어떤가요?&nbsp; 윈도우 설치보다도 쉽지요? 혹은 OS설치를 안 해봤어도 할 수 있을것 같지 않나요?</p>\r\n\r\n<p>설치될 디스크의 보존할 자료만 잘 백업한다면 설치하다가 낭패볼일을 전혀 없을듯 합니다.</p>\r\n\r\n<p>지금 바로 리눅스를 설치해보세요!!!~~</p>\r\n\r\n<p>&nbsp;</p>\r\n</body>\r\n</html>\r\n'),(42,'<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>리눅스를 설치하기 위해 ISO를 다운받아도 부팅 USB를 만드려면 꽤 까다로왔는데요</p>\r\n\r\n<p>이를 한번에 처리해주는 프로그램이 있더라고요!!!</p>\r\n\r\n<p>사용해보니 정말 편해서 놀랐습니다.</p>\r\n\r\n<p>이거 언제 나온거야?? 그 동안의 저의 삽질이 생각나서 눈물이 흐릅니다.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>http://unetbootin.sourceforge.net</p>\r\n\r\n<p>에서 해당 OS로 선택하여서 설치하면 됩니다.</p>\r\n\r\n<p>리눅스라면 해당 패키지 검색하면 있을듯 합니다.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>프로그램 사용법은 설명할 필요가 없을만큼 간단합니다.</p>\r\n\r\n<p>ISO선택하고 만들 USB선택 하면 됩니다.</p>\r\n\r\n<p><img alt=\"\" src=\"https://slhome.s3.amazonaws.com/ckeditor/pictures/56/content_unetbootin.jpg\" style=\"width: 528px; height: 387px;\" /></p>\r\n\r\n<p>Diskimage를 선택한후 USB드라이버 선택하면 리눅스 부팅 USB가 만들어집니다.</p>\r\n\r\n<p><br />\r\n&nbsp;</p>\r\n</body>\r\n</html>\r\n'),(43,'<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>사용자가 비디오 파일을 업로드하고 그내용 볼수 있게 하는 게시판을 만들고 있었습니다.</p>\r\n\r\n<p>이미 이전에도 했던 내용이라 별 어러움 없이 처리 될줄 알았는데 안되는겁니다!!</p>\r\n\r\n<p>&lt;video width=&quot;넓이&quot; height=&quot;높이&quot; controls&gt;<br />\r\n&nbsp; &lt;source src=&quot;업로드한 mp4경로&quot; type=&quot;video/mp4&quot;&gt;<br />\r\n&nbsp; &lt;source src=&quot;업로드한 ogg경로&quot; type=&quot;video/ogg&quot;&gt;<br />\r\n&nbsp; Your browser does not support the video tag.<br />\r\n&lt;/video&gt;</p>\r\n\r\n<p>이런 내용이었는데 안될 이유가 없는데 안 되는겁니다. ㅜ.ㅜ</p>\r\n\r\n<p>이리저리 왜 안되는가를 보니.........</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>웹서버 mineType에 등록이 안되어 있어서 그랬습니다.</p>\r\n\r\n<p>이전 서버에는 등록이 되어있었는데 이 서버에는 등록이 안되어있던겁니다.</p>\r\n\r\n<p>다시 생각하면 당연히 그런것을 생각못하고 프로그램이 잘못되었는가 하면서 또 삽질을 몇시간 했습니다.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>mineType등록은 설정 파일에(보통 따로 mineTyp설정 파일이 있음)</p>\r\n\r\n<p>AddType video/mpeg&nbsp; .mp4</p>\r\n\r\n<p>이런식으로 추가하고 적용시키면 됩니다.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>결론 = Video태그 쓰려면 서버에 mineType등록 되어 있는 파일 형식이여야 된다.</p>\r\n</body>\r\n</html>\r\n'),(44,'<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>Rails에서 영감을 받아 만들어진 Cakephp</p>\r\n\r\n<p>처음에는 Rails의 기능을 PHP로 구현하는데 초점으로 만들어 졌지만 이제는 그걸 넘어서 cakephp만의 기능과 특성을 가지고 엄연히 다른 길을 가고 있습니다.</p>\r\n\r\n<p>cakephp는 문서도 잘되어 있어서 이를 보면 이용하는데 많은 도움을 받을 수 있습니다.</p>\r\n\r\n<p>사용자가 쓰는 여러 많은 여러 기능들이 Rails를 능가하기도 하고 있습니다.</p>\r\n\r\n<p>기존 php 서버를 이용하면서 ruby서버는 도입하기 어렵고 여기에 Rails 같은 프레임워크를 적용하려면 cakephp가 최고의 답일겁니다.</p>\r\n\r\n<p>아직까지 제대로된 프레임워크를 사용한적 없는 php프로그래머에게도 최고의 선택이 될듯합니다.</p>\r\n\r\n<p>그럼 이제 cakephp의 즐거운 세계로 출발~~~</p>\r\n</body>\r\n</html>\r\n'),(45,'<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>즐거운 웹개발의 시작 cakephp를 시작합시다~~~</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>cakephp 시작하려면 우선 다운받아야겠지요</p>\r\n\r\n<p>http://cakephp.org</p>\r\n\r\n<p>들어가면 위쪽에 바로 다운로드가 보이는군요</p>\r\n\r\n<p>클릭해서 다운받고 이를 내가 제작할 폴더에 풀어놓으면 Cakephp설치는 끝입니다.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>이제 설정을 해야겠지요</p>\r\n\r\n<p>우선 웹경로는 최상위 폴더나 app 또는 app/webroot어디로 해도 작동하는데&nbsp;</p>\r\n\r\n<p>이왕이면 app/webroot로 하는게 좋을듯 합니다.</p>\r\n\r\n<p>이렇게 웹경로를 설정했다면 다음은 데이터베이스 설정이 필요한데요</p>\r\n\r\n<p>데이터베이스 설정은</p>\r\n\r\n<p>App/Config/database.php.default에 있습니다.</p>\r\n\r\n<p>내용을 보시면 바로 설정할수 있을것이고요</p>\r\n\r\n<p>설정후에는 이름을 database.php로 바꿔야 작동합니다</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>그다음은 tmp폴더의 권한을 바꿔야되는데요</p>\r\n\r\n<p>app/tmp의 권한을 Apache사용자가 쓸수있게 바꾸면 됩니다.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>접속해보면</p>\r\n\r\n<p><img alt=\"\" src=\"https://slhome.s3.amazonaws.com/ckeditor/pictures/57/content_cakephp_start.png\" style=\"width: 640px; height: 348px;\" /></p>\r\n\r\n<p>이런 멋진 화면이 나옵니다.</p>\r\n\r\n<p>그런데 위쪽 두줄의 경고가 있군요</p>\r\n\r\n<p>이는 보안을 위한 키를 바꾸지 않아서 그런데요</p>\r\n\r\n<p>친절하게 설명이 나와있습니다.</p>\r\n\r\n<p>app/Config/core.php의&nbsp; Security.salt와&nbsp; Security.cipherSeed부분을 수정하면 됩니다.</p>\r\n\r\n<p>Security.salt에 아무렇게나 문자열과 Security.cipherSeed에 아무렇게나 숫자를 입력하고 다시 접속하면</p>\r\n\r\n<p>모든 설정이 완료되었다는 페이지를 볼 수 있습니다.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n</body>\r\n</html>\r\n'),(46,'<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>레일즈에도 현재 bin 폴더에 있는 bundle, rails, rake 명령어들이 편한함을 제공하고 이를 통해서 빠른 웹개발이 가능하게 하는데요</p>\r\n\r\n<p>특히나 Rails의 Scaffold기능은 웹개발에 지친 개발자들을 매료시켰지요</p>\r\n\r\n<p>Cakephp도 이제는 이를 능가하는 막강한 명령어를 제공하는데요</p>\r\n\r\n<p>명령어는 app/Console 에 있습니다.</p>\r\n\r\n<p>여기를 보면 cake명령어가 있는데는 이를 이용하면 힘든 타이핑 없이 바로 자동으로 모델, 컨트롤러, 뷰를 제작할수 있습니다.</p>\r\n\r\n<p>특히 저는 cake.bat가 있어서 감명 받았는데요</p>\r\n\r\n<p>윈도우를 쓰는 개발자도 배려하여 만든 Cakephp의 명령어 입니다.&nbsp; 윈도우 사용자는 cake.bat를 실행하면 됩니다.</p>\r\n\r\n<p>하여간 이 cake(cake.bat)를 실행하려면 콘솔상에서 php명령어가 실행될수 있어야 합니다.</p>\r\n\r\n<p>이 조건만 충족된다면 cake명령어를 쓰는데는 아무런 제약이 없습니다.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>이 cake명령어도 기능이 방대한데 우선 우리가 볼것은 bake입니다.</p>\r\n\r\n<p>cakephp이니깐 만들어 내는것은 빵을 만드는 bake입니다.&nbsp; 재미있지요</p>\r\n\r\n<p>bake는 명령어로 cake bake 이렇게 실행합니다.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>그럼 bake를 이용해 간단한 게시판을 만들어 보겠습니다.</p>\r\n\r\n<p>우선 테이블을 만들어야 되는데요</p>\r\n\r\n<p>Cakephp는 Rails처럼 마이그레이션은 기본 지원하지 않습니다.</p>\r\n\r\n<p>좋은점인지 나쁜점인지는 모르겠습니다.</p>\r\n\r\n<p>꼭 필요하다면 Migration지원하는 플러그인들은 있는듯 하니 찾아서 이용하시기 바랍니다.</p>\r\n\r\n<p>테이블은</p>\r\n\r\n<pre>\r\nCREATE TABLE `boards` (\r\n  `id` int(11) NOT NULL,\r\n  `title` varchar(60) NOT NULL,\r\n  `content` text NOT NULL,\r\n  `modified` datetime NOT NULL,\r\n  `created` datetime NOT NULL,\r\n  PRIMARY KEY (`id`)\r\n) ENGINE=InnoDB DEFAULT CHARSET=utf8;</pre>\r\n\r\n<p>이렇게 구성했습니다.</p>\r\n\r\n<p>Cakephp에서 특별하게 취급되는 필드가 있는데</p>\r\n\r\n<p>id, 테이블명_id, 테이블명_count, modified, created</p>\r\n\r\n<p>등입니다.</p>\r\n\r\n<p>우선 테이블은 이런식으로 구성하고</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>app/Console로 이동하여</p>\r\n\r\n<p>./cake bake (윈도우 사용자라면 cake.bat bake)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Welcome to CakePHP v2.5.1 Console<br />\r\n---------------------------------------------------------------<br />\r\nApp : app<br />\r\nPath: /home/toughjjh/cakephp/app/<br />\r\n---------------------------------------------------------------<br />\r\nInteractive Bake Shell<br />\r\n---------------------------------------------------------------<br />\r\n[D]atabase Configuration<br />\r\n[M]odel<br />\r\n[V]iew<br />\r\n[C]ontroller<br />\r\n[P]roject<br />\r\n[F]ixture<br />\r\n[T]est case<br />\r\n[Q]uit<br />\r\nWhat would you like to Bake? (D/M/V/C/P/F/T/Q)<br />\r\n&gt;</p>\r\n\r\n<p>이런 화면이 나오게 됩니다.</p>\r\n\r\n<p>여러가지 메뉴가 있는데 역시 우리에게 중요하것은 모델,컨트롤러,뷰를 만들어 내는것이지요</p>\r\n\r\n<p>그중 우선 모델을 제일 먼저 만들어야됩니다.</p>\r\n\r\n<p>M을 누르고 엔터를 칩니다.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>---------------------------------------------------------------<br />\r\nBake Model<br />\r\nPath: /home/toughjjh/cakephp/app/<br />\r\n---------------------------------------------------------------<br />\r\nUse Database Config: (default/test)</p>\r\n\r\n<p>[default] &gt;</p>\r\n\r\n<p>어느 데이터베이스 설정을 사용할것인지 묻습니다.&nbsp; 그냥 엔터 또는 default를 치고 엔터</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Possible Models based on your current database:<br />\r\n1. Boards<br />\r\nEnter a number from the list above,<br />\r\ntype in the name of another model, or &#39;q&#39; to exit</p>\r\n\r\n<p>&gt;</p>\r\n\r\n<p>현재 테이블을 검색하여 목록을 나타내게 됩니다.</p>\r\n\r\n<p>현재는 Board밖에 없으므로 Board를 선택합니다.</p>\r\n\r\n<p>1 또는 Boards 라고 치고서 엔터</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Would you like to supply validation criteria<br />\r\nfor the fields in your model? (y/n)</p>\r\n\r\n<p>[y] &gt;</p>\r\n\r\n<p>유효성 검사를 할것인지 묻습니다. 그냥 엔터 또는 y를 치고 엔터</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Field: id<br />\r\nType: integer<br />\r\n---------------------------------------------------------------<br />\r\nPlease select one of the following validation options:<br />\r\n---------------------------------------------------------------<br />\r\n&nbsp;1. alphaNumeric&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 18. maxLength<br />\r\n&nbsp;2. between&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 19. mimeType<br />\r\n&nbsp;3. blank&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 20. minLength<br />\r\n&nbsp;4. boolean&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 21. money<br />\r\n&nbsp;5. cc&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 22. multiple<br />\r\n&nbsp;6. comparison&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 23. naturalNumber<br />\r\n&nbsp;7. custom&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 24. notEmpty<br />\r\n&nbsp;8. date&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 25. numeric<br />\r\n&nbsp;9. datetime&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 26. phone<br />\r\n10. decimal&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 27. postal<br />\r\n11. email&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 28. range<br />\r\n12. equalTo&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 29. ssn<br />\r\n13. extension&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 30. time<br />\r\n14. fileSize&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 31. uploadError<br />\r\n15. inList&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 32. url<br />\r\n16. ip&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 33. userDefined<br />\r\n17. luhn&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 34. uuid</p>\r\n\r\n<p>35 - Do not do any validation on this field.<br />\r\n---------------------------------------------------------------<br />\r\nor enter in a valid regex validation string.<br />\r\nAlternatively [s] skip the rest of the fields</p>\r\n\r\n<p>[35] &gt;</p>\r\n\r\n<p>id필드에 관한 유효성은 어떤것으로 할거인지 묻습니다.</p>\r\n\r\n<p>그냥 엔터를 칩니다.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Field: id<br />\r\nType: title</p>\r\n\r\n<p>[24] &gt;</p>\r\n\r\n<p>다음은 제목입니다.</p>\r\n\r\n<p>비어서 입력되지 않게 하는 24번을 선택합니다. 선택되어 있으면 그냥 엔터</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Would you like to add another validation rule<br />\r\nor skip the rest of the fields? (y/n/s)</p>\r\n\r\n<p>더 추가할 유효성검사가 있는지 묻습니다.</p>\r\n\r\n<p>n를 치고서 엔터</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Field: content<br />\r\nType: text</p>\r\n\r\n<p>[24] &gt;</p>\r\n\r\n<p>다음은 내용입니다.</p>\r\n\r\n<p>역시 24번을 입력하고 엔터</p>\r\n\r\n<p>더 추가할것 없다고하고 다음으로</p>\r\n\r\n<p>나머지 필드들도 35번으로 넘기고 나면</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Would you like to define model associations<br />\r\n(hasMany, hasOne, belongsTo, etc.)? (y/n)</p>\r\n\r\n<p>관계설정할것인지를 묻습니다.</p>\r\n\r\n<p>이 역시 중요한 기능인데 지금은 설정되지 않았으므로</p>\r\n\r\n<p>n을 치고 엔터</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>---------------------------------------------------------------<br />\r\nThe following Model will be created:<br />\r\n---------------------------------------------------------------<br />\r\nName:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Board<br />\r\nDB Table:&nbsp;&nbsp; `cakephp`.`boards`<br />\r\nValidation: Array<br />\r\n(<br />\r\n&nbsp;&nbsp;&nbsp; [title] =&gt; Array<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [notEmpty] =&gt; notEmpty<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; )</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp; [content] =&gt; Array<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [notEmpty] =&gt; notEmpty<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; )</p>\r\n\r\n<p>)</p>\r\n\r\n<p>---------------------------------------------------------------<br />\r\nLook okay? (y/n)</p>\r\n\r\n<p>이렇게 만들어도 되겠냐고 묻습니다. 잘 만들어 졌습니다. y를 치고 엔터</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Creating file /home/toughjjh/cakephp/app/Model/Board.php</p>\r\n\r\n<p>라는 메세지가 나옵니다.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>해당 경로로 가보면 모델이 잘 만들어져 있습니다.</p>\r\n\r\n<p>이렇게 질문에 대답한것만으로 제목과 내용의 유효성을 체크하는 모델이 만들어졌습니다.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>다음은 콘트롤러를 제작할 차례입니다.</p>\r\n\r\n<p>c 를 눌러서 콘트롤러 제작을 선택하고 넘어가면</p>\r\n\r\n<p>데이터베이스 선택화면은 모델과 동일하고</p>\r\n\r\n<p>만들 콘트롤러 선택화면도 모델과 동일합니다.</p>\r\n\r\n<p>선택후에</p>\r\n\r\n<p>---------------------------------------------------------------<br />\r\nBaking BoardsController<br />\r\n---------------------------------------------------------------<br />\r\nWould you like to build your controller interactively? (y/n)<br />\r\n[y] &gt;</p>\r\n\r\n<p>그대로 엔터 또는 y를 치고서 엔터</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Would you like to use dynamic scaffolding? (y/n)<br />\r\n[n] &gt;</p>\r\n\r\n<p>그대로 엔터 또는 n를 치고서 엔터</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Would you like to create some basic class methods<br />\r\n(index(), add(), view(), edit())? (y/n)</p>\r\n\r\n<p>[n] &gt;</p>\r\n\r\n<p>y를 치고서 엔터 (기본이 n으로 되어있음)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Would you like to create the basic class methods for admin routing? (y/n)<br />\r\n[n] &gt;</p>\r\n\r\n<p>관리자 기본 기능을 만들것이냐고 물어보는데</p>\r\n\r\n<p>나중에 필요할때는 y를 치면 되겠습니다.&nbsp; 우선은 n</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Would you like this controller to use other helpers besides HtmlHelper and FormHelper? (y/n)</p>\r\n\r\n<p>[n] &gt;</p>\r\n\r\n<p>n로 넘어가고</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Would you like this controller to use other components besides PaginatorComponent? (y/n)</p>\r\n\r\n<p>[n] &gt;</p>\r\n\r\n<p>n로 넘어간다</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Would you like to use Session flash messages? (y/n)<br />\r\n[y] &gt;</p>\r\n\r\n<p>y로 넘어간다</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>---------------------------------------------------------------<br />\r\nThe following controller will be created:<br />\r\n---------------------------------------------------------------<br />\r\nController Name:<br />\r\n&nbsp;&nbsp; &nbsp;Boards<br />\r\nComponents:<br />\r\n&nbsp;&nbsp; &nbsp;Paginator, Session<br />\r\n---------------------------------------------------------------<br />\r\nLook okay? (y/n)</p>\r\n\r\n<p>이렇게 만들어도 되겠냐고 묻습니다. 이번에도 잘 만들어 졌습니다. y를 치고 엔터</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Creating file /home/toughjjh/cakephp/app/Controller/BoardsController.php</p>\r\n\r\n<p>역시 해당경로에 콘트롤러 파일이 생성되었습니다.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>이번에는 뷰를 생성해보겠습니다.</p>\r\n\r\n<p>V를 눌러서 메뉴로 들어가면 역시 기본 질문은 동일하고</p>\r\n\r\n<p>Would you like bake to build your views interactively?<br />\r\nWarning: Choosing no will overwrite Boards views if it exist. (y/n)<br />\r\n[n] &gt;</p>\r\n\r\n<p>해당 뷰가 겹치면 덮어쓰냐는 질문입니다.</p>\r\n\r\n<p>넘어가면 역시 파일이 생성되었다는 메세지가 나옵니다.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>이렇게 해서 모델, 콘트롤러, 뷰를 모두 생성되었습니다</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>이제 브라우저에서 주소/boards로 접속하면</p>\r\n\r\n<p><img alt=\"\" src=\"https://slhome.s3.amazonaws.com/ckeditor/pictures/58/content_first_cakephp.png\" style=\"width: 640px; height: 484px;\" /></p>\r\n\r\n<p>자동으로 만들어진 내 게시판이 보이게 됩니다.</p>\r\n</body>\r\n</html>\r\n'),(47,'<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>국회의원이 동네북이라도 되는지 심심하면 나오는</p>\r\n\r\n<p>국회의원 무보수를 이야기하는 하나는 알고 둘을 모르는 사람들</p>\r\n\r\n<p>국회의원 돈 많이 주고 특권 많이 주는거는 비리 저지르지 말라고 그러는건데</p>\r\n\r\n<p>선거때 돈 깨지는 것도 장난 아닌데 자기돈 없어진거 채울라면 어찌 되겠는지좀 생각하길</p>\r\n\r\n<p>특히!! 그럴경우&nbsp; 돈 없는 사람들은 국회의원 못하게 된다는 사실좀 생각하길</p>\r\n\r\n<p>돈 많은 사람만 국회의원 하게 하고 싶으면 계속 무보수 이야기 하길</p>\r\n\r\n<p>돈많은 사람만 국회의원되는세상 참 좋겠네요?</p>\r\n\r\n<p>그런식이라면 선거때 그냥 돈 뿌리는것도 인정하는게 어떨지??</p>\r\n</body>\r\n</html>\r\n'),(50,'ehawehaweh'),(51,'12361236'),(58,'\r\n\r\n	\r\n\r\n\r\n213651236\r\n\r\n\r\n'),(59,'\r\n\r\n	\r\n\r\n\r\n213651236\r\n\r\n\r\n'),(60,'\r\n\r\n	\r\n\r\n\r\n213651236\r\n\r\n\r\n'),(61,'\r\n\r\n	\r\n\r\n\r\n213651236\r\n\r\n\r\n'),(62,'\r\n\r\n	\r\n\r\n\r\n213651236\r\n\r\n\r\n');
/*!40000 ALTER TABLE `blog_contents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_types`
--

DROP TABLE IF EXISTS `blog_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `enable` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_types`
--

LOCK TABLES `blog_types` WRITE;
/*!40000 ALTER TABLE `blog_types` DISABLE KEYS */;
INSERT INTO `blog_types` VALUES (1,'일반형',1,'2013-12-24 18:26:41','2013-12-24 18:26:41'),(2,'게시판형',1,'2013-12-24 18:26:41','2013-12-24 18:26:41'),(3,'갤러리형',1,'2013-12-24 18:26:41','2013-12-24 18:26:41');
/*!40000 ALTER TABLE `blog_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blogs`
--

DROP TABLE IF EXISTS `blogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blogs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `blog_category_id` int(11) NOT NULL,
  `title` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `count` int(11) NOT NULL DEFAULT '0',
  `enable` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_blogs_on_user_id` (`user_id`),
  KEY `index_blogs_on_blog_category_id` (`blog_category_id`),
  CONSTRAINT `blogs_ibfk_1` FOREIGN KEY (`blog_category_id`) REFERENCES `blog_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `blogs_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogs`
--

LOCK TABLES `blogs` WRITE;
/*!40000 ALTER TABLE `blogs` DISABLE KEYS */;
INSERT INTO `blogs` VALUES (1,1,5,'리눅스에서 TV보기','젠투리눅스에서 TV카드(하드웨어)와 Kaffeine(프로그램)을 통하여 TV를 시청하는 방법을 설명합니다. ','linux-atsc-kaffeine.jpg',0,1,'2014-01-09 17:18:12','2014-03-14 16:04:54'),(2,1,1,'공포의 요로결석, 해방되다','생성될때부터 나를 괴롭히던 요로결석, 속시원하게 밖에 나오다','stone_3.jpg',0,1,'2014-01-09 18:35:11','2014-01-09 18:37:39'),(3,1,1,'맛있는 중국라면','상하이에 있을때 먹던 맛있는 중국라면(마라라면)','ramen.jpg',0,1,'2014-01-09 19:47:40','2014-01-09 19:47:40'),(4,1,8,'html 기본','html의 기본 개념과 사용방법 설명',NULL,0,1,'2014-01-12 16:16:09','2014-01-12 16:16:09'),(5,1,8,'html 기본 태그들','html을 사용하는데 필요한 기본태그들을 익혀보아요',NULL,0,1,'2014-01-12 16:19:32','2014-01-27 21:56:48'),(6,1,8,'그 밖의 태그들','기본 태그외에 사용되는 태그들',NULL,0,1,'2014-01-12 16:22:22','2014-01-27 21:57:09'),(7,1,5,'리눅스에서 CD굽기','리눅스 시디굽기 프로그램 K3B를 소개합니다.','k3b.jpg',0,1,'2014-01-27 05:04:40','2014-03-14 16:05:17'),(8,1,1,'중국 두부요리','중국의 대표적인 두부요리인 마파두부와 취두부','chui1.jpg',0,1,'2014-01-27 06:38:31','2014-01-27 06:38:31'),(9,1,1,'두리안','환상적인 과일, 두리안을 소개합니다.','durian1.jpg',0,1,'2014-01-27 09:10:32','2014-01-27 09:10:32'),(10,1,1,'중국 유자','크기와 달콤함이 일품인 중국 유자','yuz1.jpg',0,1,'2014-01-27 09:33:26','2014-01-27 09:33:26'),(11,1,1,'주민등록번호 빨리 폐기해야','정보유출로 문제가 더욱더 드러난 주민번호, 주민번호를 당연히 있어야 하는것으로 아는 한국인들',NULL,0,1,'2014-02-11 14:13:40','2014-02-11 14:13:40'),(12,1,1,'우리는 불심검문 거부할수 있는 권리가 있습니다.','과거에도 지금도 시행되고 있는 불심검문!!  응하지 않아도 되요',NULL,0,1,'2014-02-11 14:37:07','2014-02-11 14:37:07'),(13,1,1,'누가 나 찍으라고 했어??!!!','길거리에 계속 늘어가는 CCTV, 나는 네가 지난 여름에 한일을 알고 있다.',NULL,0,1,'2014-02-11 14:48:00','2014-02-11 14:48:00'),(14,1,2,'커널 컴파일','리눅스의 또 하나의 재미 커널 컴파일,  젠투 리눅스로 커널 컴파일 하기',NULL,0,1,'2014-02-13 23:11:14','2014-02-13 23:11:14'),(15,1,1,'사는게 힘들어도','사는게 힘들어도 살자, 자살공화국에서 사는법',NULL,0,1,'2014-02-17 16:55:08','2014-02-17 16:55:08'),(16,1,1,'고등학교 한자수업이 없다네요!!??','고등학교 한자수업이 없다니?  이나라 교육은 어디로 가려고 하는건지',NULL,0,1,'2014-03-09 16:18:20','2014-03-09 16:18:20'),(17,1,1,'빨갱이 찾는 웃긴놈들의 특징','가진것도 없는 놈들이 왜 빨갱이를 찾어? ',NULL,0,1,'2014-03-09 16:19:46','2014-03-14 13:40:39'),(18,1,1,'에너지(전기)문제 해결책은 원자력뿐','전기를 지금처럼 쓰려면 원자력 발전소외엔 대안 없음,  아님 전기 사용을 줄이는 방법이 있지만 고통이 따르기 때문에 사람들이 거부, 결국 원자력 밖에.....',NULL,0,1,'2014-03-09 16:23:52','2014-03-09 16:23:52'),(19,1,1,'존대말 없는 세상 좋은 세상','존대말 없는 세상 좋은 세상~~   시비걸기 용도의 존대말, 안 그래도 사는거 피곤한데.... 이런거 까지',NULL,0,1,'2014-03-09 16:36:10','2014-03-09 16:36:38'),(20,1,1,'임금체불로 노동부 갔다왔어요','임금체불도 열받는데 내 돈 받으려고 노동부에 4시간 왔다갔다. 진짜 혈압오르네',NULL,0,1,'2014-03-14 14:44:21','2014-03-14 14:44:21'),(21,1,1,'임금체불로 생각해본 자본가 때려잡기','노동자 우습게 아는 자본가들 혼좀 나야되는데 우리나라에서 그런일은 몇세기동안은 없을듯 하다',NULL,0,1,'2014-03-14 15:06:11','2014-03-14 15:06:11'),(22,1,11,'루비온 레일즈 소개 및 설치방법','웹개발의 한줄기 빛, 루비온 레일즈 프레임워크를 소개하고 설치 실행 과정을 알려드립니다. 이제 웹개발이 쉬워집니다.','rails.png',0,1,'2014-03-14 15:35:14','2014-05-10 07:35:28'),(23,1,5,'리눅스에서 프린터, 스캐너 설정','리눅스에서 프린터, 스캐너 사용 성공했습니다. 복합기(cannon mp258)도 이제 리눅스에서 자유롭게 사용하고 있어요',NULL,0,1,'2014-03-14 16:03:55','2014-03-14 16:03:55'),(24,1,5,'리눅스로 인터넷 뱅킹하기','리눅스로 인터넷 뱅킹도 되면 윈도우용 게임 빼곤 다 되는거네요',NULL,0,1,'2014-03-14 16:23:44','2014-03-14 16:24:22'),(25,1,1,'조경기능사 배우는중','조경기능사 공부하는중이에요, 풀과 나무로 세상의 풍경을 만드는 기술,직업이 있다니~~  참 놀랍고 좋네요',NULL,0,1,'2014-03-30 11:54:03','2014-03-30 11:54:03'),(26,1,1,'토렌트 좋네요','말로만 듣던 토렌트, 사용해보니 왜 토렌트 토렌트 하는지 알겠네요','qb_newbanner.jpg',0,1,'2014-03-31 11:51:23','2014-03-31 11:51:23'),(28,1,1,'시험보고 오는중에 봄날풍경','임금체불로 우울한 중에도 시험보고 오던길에 눈부신 봄날, 너무 날씨가 좋아 더 우울해지는 봄날이였습니다.','road_side1.jpg',0,1,'2014-04-07 14:43:56','2014-04-07 15:04:52'),(29,1,1,'요로결석 예방,치료에 좋은것','최악의 고통을 예방, 치료하기위한 방법 모음',NULL,0,1,'2014-04-10 15:43:29','2014-04-10 15:43:29'),(30,1,11,'레일즈 호스팅','레일즈로 웹사이트를 만든후에는 호스팅은 어떻게 해야하나',NULL,0,1,'2014-04-13 08:50:02','2014-05-10 07:37:56'),(31,1,11,'rubygem 소개 및 사용법','rubygem 보통 Gem이라고 불리우는 Ruby의 패키지 시스템을 소개합니다. ',NULL,0,1,'2014-04-13 09:02:37','2014-05-10 07:39:47'),(32,1,11,'레일즈 서버 설치, 설정','레일즈로 만든 웹사이트를 서비스 하려면 여러 프로그램이 있습니다. 이를 살펴보고 사용하면 서비스를 시작할 수 있습니다.',NULL,0,1,'2014-04-17 05:50:24','2014-05-10 07:41:54'),(33,1,11,'배치(deploy) 자동화 프로그램 카피스라노(capistrano)','이제 배치(deploy)가 쉬워져요.  한줄의 명령어면 로칼의 내용이 서비스로 적용되요~',NULL,0,1,'2014-04-19 15:54:17','2014-05-10 07:44:25'),(34,1,1,'정원있는집에 사는게 당연한건데','외국이나 드라마에 나오는 정원은 한국인에게는 꿈일 뿐인가?',NULL,0,1,'2014-04-19 17:33:08','2014-04-19 17:33:08'),(35,1,9,'CSS 선택자(selector)','css를 사용하기 위한 가장 기초인 선택자를 알아봅니다.',NULL,0,1,'2014-04-19 18:20:12','2014-04-19 18:20:12'),(36,1,10,'javascript에 대한 여러이야기','이제는 웹의 중심언어를 넘어서 모든것을 노리는 야심찬 언어 javascript에 대한 여러 이야기',NULL,0,1,'2014-04-19 19:11:30','2014-04-19 19:11:30'),(37,1,1,'5월 1일 노동절, 근로자의 날 X','노동자로 사는 우리에게 무슨 의미를 가지는 날일까요?(자본가 및 공무원 들은 빼고~)',NULL,0,1,'2014-04-24 16:32:40','2014-04-24 16:32:40'),(38,1,1,'마운트곡스 파산으로본 차세대 통화(돈) 비트코인','차세대 통화(돈) 비트코인의 내용과 미래',NULL,0,1,'2014-04-25 06:46:01','2014-04-25 06:46:01'),(39,1,1,'주영이 목욕시키기','우리 애기목욕시키는 모습입니다. 변신과정~','baby01.jpg',0,1,'2014-04-29 10:45:12','2014-04-29 10:49:15'),(40,1,1,'반려동물 잃어버리면 이 사이트 찾아보세요','반려동물 잃어버리면 찾거나 입양할수 있는 사이트 소개 - http://www.animal.go.kr','animal.jpg',0,1,'2014-04-29 10:54:57','2014-04-29 10:54:57'),(41,1,4,'우분투 리눅스 설치하기','윈도우보다 설치하기 쉽고 무료인 우분투 리눅스 설치하는 과정 살펴보아요',NULL,0,1,'2014-05-01 08:35:53','2014-05-10 07:45:56'),(42,1,4,'리눅스 부팅 USB만들기','리눅스 부팅 USB만들어 보아요',NULL,0,1,'2014-05-02 10:53:23','2014-05-10 07:48:02'),(43,1,19,'Video태그 사용하려면 서버에서도 설정이 필요합니다.','Video태그 사용하려고 삽질을 또 했습니다. 여러분은 이런일 없기를.........',NULL,1,1,'2014-05-24 05:45:51','2014-05-24 05:45:51'),(44,1,18,'매력적인 프레임워크 cakephp를 시작합니다. ','이제 저도 cakephp로 개발을 시작합니다. 하나하나 기능을 알아보겠습니다.',NULL,0,1,'2014-05-24 05:56:57','2014-05-24 05:56:57'),(45,1,18,'cakephp 시작하기','cakephp처음으로 시작해보기입니다.',NULL,0,1,'2014-06-06 11:04:22','2014-06-06 11:04:22'),(46,1,18,'cakephp 최고의 기능 Bake','선택 몇번만 하면 웹프로그램이 완성되는 cakephp Bake',NULL,0,1,'2014-06-06 11:50:09','2014-06-06 11:53:45'),(47,1,1,'국회의원 무보수 근무?? 다른것도 좀 생각하길...','국회의원이야기만 나오면 말 나오는 국회의원 무보수 근무, 좀 다른것도 생각하세요',NULL,0,1,'2014-06-15 08:12:08','2014-06-15 08:12:08'),(50,1,19,'12365','wae','crying_baby.jpg',1,1,'2014-11-06 01:09:35',NULL),(51,1,19,'23','61236','jjg.jpg',1,1,'2014-11-06 01:42:51',NULL),(58,1,19,'2346123','46123612',NULL,0,1,'2014-11-08 00:31:09',NULL),(59,1,19,'2346123','46123612',NULL,1,1,'2014-11-08 00:31:13',NULL),(60,1,19,'2346123','46123612',NULL,0,1,'2014-11-08 00:31:27',NULL),(61,1,19,'2346123','46123612',NULL,1,1,'2014-11-08 00:33:54',NULL),(62,1,19,'2346123','46123612',NULL,1,1,'2014-11-08 00:34:09',NULL);
/*!40000 ALTER TABLE `blogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ckeditor_assets`
--

DROP TABLE IF EXISTS `ckeditor_assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ckeditor_assets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data_file_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `data_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data_file_size` int(11) DEFAULT NULL,
  `assetable_id` int(11) DEFAULT NULL,
  `assetable_type` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_ckeditor_assetable_type` (`assetable_type`,`type`,`assetable_id`),
  KEY `idx_ckeditor_assetable` (`assetable_type`,`assetable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ckeditor_assets`
--

LOCK TABLES `ckeditor_assets` WRITE;
/*!40000 ALTER TABLE `ckeditor_assets` DISABLE KEYS */;
INSERT INTO `ckeditor_assets` VALUES (1,'snapshot14.png','image/png',62215,NULL,NULL,'Ckeditor::Picture',860,545,'2014-01-09 15:39:47','2014-01-09 15:39:47'),(2,'snapshot13.png','image/png',42129,NULL,NULL,'Ckeditor::Picture',457,454,'2014-01-09 15:39:54','2014-01-09 15:39:54'),(3,'snapshot12.png','image/png',53292,NULL,NULL,'Ckeditor::Picture',457,454,'2014-01-09 15:39:56','2014-01-09 15:39:56'),(4,'snapshot11.png','image/png',73382,NULL,NULL,'Ckeditor::Picture',819,577,'2014-01-09 15:39:58','2014-01-09 15:39:58'),(5,'linux-atsc-kaffeine.jpg','image/jpeg',90329,NULL,NULL,'Ckeditor::Picture',800,487,'2014-01-09 16:12:29','2014-01-09 16:12:29'),(7,'snapshot18.png','image/png',78606,NULL,NULL,'Ckeditor::Picture',889,603,'2014-01-09 16:32:24','2014-01-09 16:32:24'),(8,'snapshot19.png','image/png',89634,NULL,NULL,'Ckeditor::Picture',889,603,'2014-01-09 16:32:28','2014-01-09 16:32:28'),(10,'stone_3.jpg','image/jpeg',32453,1,'User','Ckeditor::Picture',640,480,'2014-01-09 17:55:25','2014-01-09 17:55:25'),(11,'stone_2.jpg','image/jpeg',22301,1,'User','Ckeditor::Picture',640,544,'2014-01-09 17:55:29','2014-01-09 17:55:29'),(12,'stone_1.jpg','image/jpeg',40998,1,'User','Ckeditor::Picture',640,853,'2014-01-09 17:55:34','2014-01-09 17:55:34'),(13,'ramen.jpg','image/jpeg',63673,1,'User','Ckeditor::Picture',640,480,'2014-01-09 19:33:40','2014-01-09 19:33:40'),(14,'gosu.jpg','image/jpeg',55908,1,'User','Ckeditor::Picture',640,480,'2014-01-09 19:33:44','2014-01-09 19:33:44'),(15,'mango_ice.jpg','image/jpeg',34310,1,'User','Ckeditor::Picture',640,480,'2014-01-09 19:33:46','2014-01-09 19:33:46'),(16,'k3b.jpg','image/jpeg',26142,NULL,NULL,'Ckeditor::Picture',636,447,'2014-01-27 04:57:31','2014-01-27 04:57:31'),(17,'k4b_main.png','image/png',118290,NULL,NULL,'Ckeditor::Picture',864,657,'2014-01-27 04:57:52','2014-01-27 04:57:52'),(18,'chui1.jpg','image/jpeg',41440,1,'User','Ckeditor::Picture',640,480,'2014-01-27 05:47:02','2014-01-27 05:47:02'),(19,'chui2.jpg','image/jpeg',37778,1,'User','Ckeditor::Picture',640,480,'2014-01-27 05:47:05','2014-01-27 05:47:05'),(20,'mafa1.jpg','image/jpeg',52486,1,'User','Ckeditor::Picture',640,480,'2014-01-27 05:47:09','2014-01-27 05:47:09'),(21,'mafa2.jpg','image/jpeg',55077,1,'User','Ckeditor::Picture',640,480,'2014-01-27 05:47:16','2014-01-27 05:47:16'),(22,'durian1.jpg','image/jpeg',42236,1,'User','Ckeditor::Picture',640,480,'2014-01-27 08:54:23','2014-01-27 08:54:23'),(23,'durian2.jpg','image/jpeg',31613,1,'User','Ckeditor::Picture',640,480,'2014-01-27 08:54:28','2014-01-27 08:54:28'),(24,'durian3.jpg','image/jpeg',26127,1,'User','Ckeditor::Picture',640,480,'2014-01-27 08:54:31','2014-01-27 08:54:31'),(25,'durian4.jpg','image/jpeg',29817,1,'User','Ckeditor::Picture',640,480,'2014-01-27 08:54:32','2014-01-27 08:54:32'),(27,'yuz1.jpg','image/jpeg',34484,1,'User','Ckeditor::Picture',640,480,'2014-01-27 08:54:42','2014-01-27 08:54:42'),(28,'yuz2.jpg','image/jpeg',36938,1,'User','Ckeditor::Picture',640,480,'2014-01-27 08:54:46','2014-01-27 08:54:46'),(29,'yuz3.jpg','image/jpeg',27089,1,'User','Ckeditor::Picture',640,480,'2014-01-27 08:54:49','2014-01-27 08:54:49'),(30,'yuz4.jpg','image/jpeg',19251,1,'User','Ckeditor::Picture',640,480,'2014-01-27 08:54:53','2014-01-27 08:54:53'),(31,'durian5.jpg','image/jpeg',41996,1,'User','Ckeditor::Picture',640,480,'2014-02-17 15:08:21','2014-02-17 15:08:21'),(32,'road1.jpg','image/jpeg',52986,1,'User','Ckeditor::Picture',640,480,'2014-04-07 14:32:30','2014-04-07 14:32:30'),(33,'road_back.jpg','image/jpeg',27662,1,'User','Ckeditor::Picture',640,480,'2014-04-07 14:32:30','2014-04-07 14:32:30'),(34,'road_side1.jpg','image/jpeg',31686,1,'User','Ckeditor::Picture',640,480,'2014-04-07 14:32:32','2014-04-07 14:32:32'),(35,'road_side2.jpg','image/jpeg',41731,1,'User','Ckeditor::Picture',640,480,'2014-04-07 14:32:44','2014-04-07 14:32:44'),(36,'road_side4.jpg','image/jpeg',30337,1,'User','Ckeditor::Picture',640,480,'2014-04-07 14:32:44','2014-04-07 14:32:44'),(37,'road_side3.jpg','image/jpeg',38086,1,'User','Ckeditor::Picture',640,480,'2014-04-07 14:32:44','2014-04-07 14:32:44'),(38,'content_baby01.jpg','image/jpeg',29679,1,'User','Ckeditor::Picture',640,480,'2014-04-29 10:44:30','2014-04-29 10:44:30'),(39,'content_baby02.jpg','image/jpeg',30654,1,'User','Ckeditor::Picture',640,480,'2014-04-29 10:46:29','2014-04-29 10:46:29'),(40,'content_baby03.jpg','image/jpeg',30143,1,'User','Ckeditor::Picture',640,480,'2014-04-29 10:46:33','2014-04-29 10:46:33'),(41,'content_baby04.jpg','image/jpeg',30199,1,'User','Ckeditor::Picture',640,480,'2014-04-29 10:46:37','2014-04-29 10:46:37'),(42,'content_baby05.jpg','image/jpeg',30625,1,'User','Ckeditor::Picture',640,480,'2014-04-29 10:46:42','2014-04-29 10:46:42'),(43,'content_animal.jpg','image/jpeg',58772,1,'User','Ckeditor::Picture',640,449,'2014-04-29 10:53:26','2014-04-29 10:53:26'),(44,'linux1.jpg','image/jpeg',32808,1,'User','Ckeditor::Picture',640,480,'2014-05-01 07:56:19','2014-05-01 07:56:19'),(45,'linux1_ko.jpg','image/jpeg',29360,1,'User','Ckeditor::Picture',640,480,'2014-05-01 07:56:23','2014-05-01 07:56:23'),(46,'linux2.jpg','image/jpeg',28035,1,'User','Ckeditor::Picture',640,480,'2014-05-01 07:56:30','2014-05-01 07:56:30'),(47,'linux3.jpg','image/jpeg',24778,1,'User','Ckeditor::Picture',640,480,'2014-05-01 07:56:35','2014-05-01 07:56:35'),(49,'linux5.jpg','image/jpeg',32170,1,'User','Ckeditor::Picture',640,480,'2014-05-01 07:56:49','2014-05-01 07:56:49'),(50,'linux6.jpg','image/jpeg',20051,1,'User','Ckeditor::Picture',640,480,'2014-05-01 07:56:57','2014-05-01 07:56:57'),(51,'linux7.jpg','image/jpeg',37824,1,'User','Ckeditor::Picture',640,480,'2014-05-01 07:57:01','2014-05-01 07:57:01'),(52,'linux8.jpg','image/jpeg',13743,1,'User','Ckeditor::Picture',640,480,'2014-05-01 07:57:06','2014-05-01 07:57:06'),(53,'linux9.png','image/png',295068,1,'User','Ckeditor::Picture',1045,760,'2014-05-01 07:57:16','2014-05-01 07:57:16'),(54,'linux4.jpg','image/jpeg',29555,1,'User','Ckeditor::Picture',640,480,'2014-05-01 08:23:07','2014-05-01 08:23:07'),(55,'linux9.jpg','image/jpeg',18418,1,'User','Ckeditor::Picture',640,480,'2014-05-01 08:29:46','2014-05-01 08:29:46'),(56,'unetbootin.jpg','image/jpeg',20101,1,'User','Ckeditor::Picture',528,387,'2014-05-02 10:51:56','2014-05-02 10:51:56'),(57,'cakephp_start.png','image/png',64843,1,'User','Ckeditor::Picture',640,348,'2014-06-06 11:01:15','2014-06-06 11:01:15'),(58,'first_cakephp.png','image/png',50936,1,'User','Ckeditor::Picture',640,484,'2014-06-06 11:49:26','2014-06-06 11:49:26');
/*!40000 ALTER TABLE `ckeditor_assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_contents`
--

DROP TABLE IF EXISTS `contact_contents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_contents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `html` tinyint(1) NOT NULL DEFAULT '0',
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `contact_contents_ibfk_1` FOREIGN KEY (`id`) REFERENCES `contacts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_contents`
--

LOCK TABLES `contact_contents` WRITE;
/*!40000 ALTER TABLE `contact_contents` DISABLE KEYS */;
INSERT INTO `contact_contents` VALUES (7,0,'12361236');
/*!40000 ALTER TABLE `contact_contents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `enable` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (1,NULL,NULL,NULL,'234161',1,'2014-10-18 01:28:54',NULL),(2,NULL,NULL,NULL,'234161',1,'2014-10-18 01:29:00',NULL),(3,NULL,NULL,NULL,'234161',1,'2014-10-18 01:32:08',NULL),(4,NULL,NULL,NULL,'label_title',1,'2014-10-22 18:57:22',NULL),(7,'정종호',NULL,NULL,'21346',1,'2014-11-05 03:58:12',NULL);
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories`
--

DROP TABLE IF EXISTS `faq_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faq_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `enable` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories`
--

LOCK TABLES `faq_categories` WRITE;
/*!40000 ALTER TABLE `faq_categories` DISABLE KEYS */;
INSERT INTO `faq_categories` VALUES (1,'awegawg',1,NULL,NULL),(2,'awehawehaweh',1,NULL,NULL);
/*!40000 ALTER TABLE `faq_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_contents`
--

DROP TABLE IF EXISTS `faq_contents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faq_contents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `html` tinyint(1) NOT NULL DEFAULT '0',
  `content` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `faq_contents_ibfk_1` FOREIGN KEY (`id`) REFERENCES `faqs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_contents`
--

LOCK TABLES `faq_contents` WRITE;
/*!40000 ALTER TABLE `faq_contents` DISABLE KEYS */;
INSERT INTO `faq_contents` VALUES (1,0,'235ewtqwetqwet'),(2,0,'qwey2q3612361'),(3,0,'23612361236'),(4,0,'21361236236');
/*!40000 ALTER TABLE `faq_contents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs`
--

DROP TABLE IF EXISTS `faqs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faqs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `faq_category_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `count` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_faqs_on_faq_category_id` (`faq_category_id`),
  CONSTRAINT `faqs_ibfk_1` FOREIGN KEY (`faq_category_id`) REFERENCES `faq_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs`
--

LOCK TABLES `faqs` WRITE;
/*!40000 ALTER TABLE `faqs` DISABLE KEYS */;
INSERT INTO `faqs` VALUES (1,1,'awegwegwaeg',0,NULL,NULL),(2,1,'awegaweg',0,NULL,NULL),(3,2,'326361236',0,NULL,NULL),(4,2,'236521361236236',0,NULL,NULL);
/*!40000 ALTER TABLE `faqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galleries`
--

DROP TABLE IF EXISTS `galleries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `galleries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gallery_category_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `enable` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `location` varchar(100) COLLATE utf8_unicode_ci DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `index_galleries_on_gallery_category_id` (`gallery_category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galleries`
--

LOCK TABLES `galleries` WRITE;
/*!40000 ALTER TABLE `galleries` DISABLE KEYS */;
INSERT INTO `galleries` VALUES (1,2,'벌서는 짬순이','2011-11-25_22.45.27.jpg','아무데나 오줌싸서 혼나는 짬순이\r\n이놈! 아무데나 오줌싸~!!',1,'2013-12-24 18:57:15','2014-01-09 18:42:22','0',1),(2,4,'소양호(양구)','p_640.jpg','양구에서 찍은 평화로운 소양호 모습',1,'2013-12-24 19:03:44','2013-12-24 19:03:44','0',1),(3,4,'소양호(양구)','p2_640.jpg','양구에서 본 평화로운 소양호수',1,'2013-12-24 19:04:31','2013-12-24 19:04:31','0',1),(4,4,'소양댐','p3_640.jpg','소양댐에서 펼쳐진 산들',1,'2013-12-24 19:05:17','2013-12-24 19:05:17','0',1),(5,4,'2011년 가을, 태백산','t.jpg','파란하늘의 가을날',1,'2014-01-09 17:39:26','2014-01-09 17:39:26','0',1),(6,4,'2011년 가을, 태백산','t2.jpg','태백산 중턱에서 보이는 풍경',1,'2014-01-09 17:40:06','2014-01-09 17:40:06','0',1),(7,4,'2011년 가을, 태백산','t3.jpg','태백산에서 보이는 풍경\r\n',1,'2014-01-09 17:40:44','2014-01-09 17:40:44','0',1),(8,4,'2011년 가을, 태백산','t4.jpg','태백산에서 보이는 풍경, 푸른하늘\r\n',1,'2014-01-09 17:41:08','2014-01-09 17:41:23','0',1),(9,4,'2011년 가을, 태백산','t5.jpg','태백산에서 보이는 풍경\r\n',1,'2014-01-09 17:41:59','2014-01-09 17:41:59','0',1),(10,4,'칠보산 청설모','b.jpg','칠보산 정상에서 만나 청설모\r\n사람 무서워하지도 않네',1,'2014-01-09 17:47:51','2014-01-09 17:47:51','0',1),(11,4,'칠보산에서 만난 청설모','b1.jpg','먹을거 안주니 가버리는 청설모',1,'2014-01-09 17:48:32','2014-01-09 17:48:32','0',1),(12,2,'짬순이','dog.jpg','집에 들어가서 대가리만 내민 짬순이',1,'2014-01-09 18:44:57','2014-01-09 18:44:57','0',1),(13,2,'짬순이 새끼들','puppy.jpg','짬순이 새끼들인 땡글, 식혜 , 장군, 멍군',1,'2014-01-09 18:51:50','2014-01-09 18:53:28','0',1),(14,2,'개집 탈출을 시도하는 개새끼','puppy2.jpg','탈출하는 짬순이 새끼, 누구일까? ',1,'2014-01-09 18:58:09','2014-01-09 18:58:09','0',1),(15,1,'멍군이와 동네산책','dog.jpg','귀여운 멍군이와 동네 산책 풍경',1,'2014-01-12 15:33:41','2014-01-12 15:33:41','0',1),(18,4,'상하이 와이탄 야경','shanghai.jpg','상하이 와이탄 야경',1,'2014-01-27 21:41:50','2014-01-27 21:41:50','0',1),(19,4,'상하이 와이탄 야경','waitan.jpg','상하이 와이탄 야경',1,'2014-01-27 21:48:49','2014-01-27 21:48:49','0',1),(20,4,'상하이 와이탄 야경','waitan2.jpg','상하이 와이탄 야경',1,'2014-01-27 21:50:27','2014-01-27 21:50:27','0',1),(21,3,'우는 모습도 너무나 귀여운 주영이','crying_baby.jpg','우는 모습도 너무나 귀여운 내 아들 주영이입니다.',1,'2014-01-27 22:02:34','2014-01-27 22:02:50','0',1),(22,4,'상하이 길거리 모습','shanghai_street_1.jpg','숙소에서 본 상하이 길거리 모습',1,'2014-02-11 16:50:29','2014-02-11 16:50:29','0',1),(23,4,'상하이 길거리 풍경','shanghai_street_2.jpg','숙소에서 바라본 상하이 길거리 풍경',1,'2014-02-11 16:51:30','2014-02-11 16:51:30','0',1),(24,4,'끝없이 이어져있는 상하이 빌딩','shanghai_building.jpg','끝없이 이어져있는 상하이 빌딩들의 모습',1,'2014-02-11 16:54:17','2014-02-11 16:54:17','0',1),(25,4,'태백산 계곡','taebaeksan.jpg','맑은 물의 푸르른 태백산 계곡',1,'2014-02-17 16:15:47','2014-02-17 16:15:47','0',1),(26,4,'칠보산 정상에서','chilbosan.jpg','칠보산 정상에서 내려다본 모습, 금방이라도 비올꺼 같네',1,'2014-02-17 16:20:50','2014-02-17 16:20:50','0',1),(27,4,'눈덮인 호매실동','homaesil_1.jpg','눈덮인 호매실 논밭과 저멀리 광교산 모습',1,'2014-03-03 17:25:52','2014-03-03 17:28:42','0',1),(28,4,'눈덮인 호매실동','homaesil_2.jpg','눈덮인 호매실 논밭과 저멀리 광교산 모습',1,'2014-03-03 17:27:49','2014-03-03 17:28:55','0',1),(29,1,'낮잠자는 나와 아들','i_and_baby.jpg','주말에 꿈나라를 헤메이고 있는 나와 아들',1,'2014-04-07 14:51:07','2014-04-07 14:51:07','0',1),(30,3,'천사의 자는 모습인 내 아들 주영이','1383017578841.jpg','내아들 주영이, 잘때는 천사  울때는..... ㅜ.ㅜ',1,'2014-04-29 09:22:47','2014-04-29 09:22:47','0',1),(31,3,'목욕하기 싫은 주영이','IMG_20131208_153828.jpg','나 목욕하기 싫어......  으아아아앙~~~',1,'2014-04-29 09:23:46','2014-04-29 09:23:46','0',1),(32,3,'보행기에 앉아있는 주영이','baby.jpg','보행기에서 당당한 표정의 우리 주영이',1,'2014-04-29 09:25:24','2014-04-29 09:25:24','0',1),(33,3,'주먹올리고 잠자는 주영이','sleeping_baby.jpg','주먹쥐고 손올리고 자는 우리 주영이\r\n팔 안아프니?',1,'2014-04-29 09:26:45','2014-04-29 09:26:45','0',1),(34,3,'엉덩이도 너무 예뻐','baby_hip_1.jpg','엉덩이까지 너무 예쁜 우리 주영이',1,'2014-04-29 09:28:18','2014-04-29 09:28:18','0',1),(35,3,'너무 섹시한 우리 주영이 엉덩이','baby_hip_2.jpg','거부할수 없는 매력의 무한 섹시 엉덩이',1,'2014-04-29 09:29:03','2014-04-29 09:29:03','0',1),(36,3,'천사같은 주영이 100일 사진','baby_smile1.jpg','너무 예쁘고 귀여운 우리 주영이 100일 사진\r\n천사사진이 따로 없네?',1,'2014-04-29 09:33:41','2014-04-29 09:34:07','0',1),(37,3,'귀여운 주영이 100일 사진','baby_smile2.jpg','예쁘고 귀여운 우리 주영이 100일 사진 두번째',1,'2014-04-29 09:37:39','2014-04-29 09:37:39','0',1),(38,3,'상반신 노출!!  주영이 100일 사진','baby_smile3.jpg','너무나 매력적인 노출\r\n예쁘고 귀여운 우리 주영이 100일 사진 세번째',1,'2014-04-29 09:39:29','2014-04-29 09:39:29','0',1),(39,3,'흰옷의 천사, 주영이 100일 사진','baby_smile4.jpg','흰옷의 천사\r\n예쁘고 귀여운 우리 주영이 100일 사진 네번째',1,'2014-04-29 09:40:58','2014-04-29 09:41:34','0',1),(40,3,'눈물 가득 엉엉 우는 주영이','crying_baby.jpg','빨개진 얼굴 눈물 가득 엉엉 우는 주영이\r\n뭐가 그리 서럽니?',1,'2014-04-29 09:42:47','2014-04-29 09:42:47','0',1),(41,3,'보행기에서 노는 귀여운 주영이','baby1.jpg','보행이에서 숟가락 물고 노는 귀여운 주영이입니다. ',1,'2014-04-29 09:44:26','2014-04-29 09:44:26','0',1),(42,2,'잠자는 멍군 형제들','cute_4dogs.jpg','떙글, 식혜, 장군, 멍군\r\n다시 다 같이 모였으면 좋겠네',1,'2014-04-29 10:04:01','2014-04-29 10:04:01','0',1),(43,2,'모여서 누어있는 멍군형제들','cute_4dogs2.jpg','귀여운 땡글, 식혜, 장군, 멍군',1,'2014-04-29 10:06:09','2014-04-29 10:06:09','0',1),(44,2,'끼어자는 새끼','sleeping_dog.jpg','그렇게 끼어자니 편하니?? ㅎㅎ\r\n끼어서 정신없이 자는 귀여운 새끼',1,'2014-04-29 10:08:33','2014-04-29 10:08:33','0',1),(45,2,'엎드려 있는 장군이','puppy.jpg','보고싶은 장군이',1,'2014-04-29 10:10:25','2014-04-29 10:10:34','0',1),(46,2,'멍자','_cute_dog.jpg','멍군이 자식 멍자',1,'2014-04-29 10:21:00','2014-04-29 10:21:00','0',1),(47,2,'귀여운 멍군이','cute_dog1.jpg','멍군이 진짜 귀엽네 ㅎㅎ ',1,'2014-04-29 10:27:00','2014-04-29 10:27:00','0',1),(48,2,'귀여운 짬순이 새끼','cute_puppy.jpg','나온지 얼마 안된 귀여운 짬순이 새끼',1,'2014-04-29 10:28:32','2014-04-29 10:28:32','0',1),(49,2,'멍군이와 짬순이','dogs.jpg','귀여운 멍군이와 짬순이',1,'2014-04-29 10:31:09','2014-04-29 10:31:09','0',1),(50,5,'123456','1','12361236236',1,'2014-11-04 04:53:11',NULL,'0',1),(53,5,'2365','crying_baby.jpg','12361236',1,'2014-11-04 05:08:18',NULL,'0',1),(54,3,'awegaw','crying_baby.jpg','egwegwe',1,'2014-11-04 05:10:33',NULL,'0',1),(55,3,'awegaw','crying_baby.jpg','egwegwe',1,'2014-11-04 05:11:28',NULL,'0',1),(56,3,'awegaw','crying_baby.jpg','egwegwe',1,'2014-11-04 05:15:47',NULL,'0',1),(57,2,'awegawew','jjg.jpg','egwegweweweweg',1,'2014-11-04 05:19:12',NULL,'0',1),(58,2,'awegawew','jjg.jpg','egwegweweweweg',1,'2014-11-04 05:20:08',NULL,'0',1),(59,5,'asrdeh','jjg.jpg','awehaweh',1,'2014-11-04 12:18:13',NULL,'0',1),(60,5,'asrdeh','jjg.jpg','awehaweh',1,'2014-11-04 12:19:37',NULL,'0',1),(61,5,'asrdeh','jjg.jpg','awehaweh',1,'2014-11-04 13:06:24',NULL,'0',1),(62,5,'asrdeh','jjg.jpg','awehaweh',1,'2014-11-04 13:06:29',NULL,'0',1),(63,5,'asrdeh','jjg.jpg','awehaweh',1,'2014-11-04 13:07:07',NULL,'0',1),(64,5,'asrdeh','jjg.jpg','awehaweh',1,'2014-11-04 13:14:26',NULL,'0',1),(65,5,'asrdeh','jjg.jpg','awehaweh',1,'2014-11-04 13:14:52',NULL,'0',1),(66,5,'asrdeh','jjg.jpg','awehaweh',1,'2014-11-04 13:18:56',NULL,'0',1),(67,5,'asrdeh','jjg.jpg','awehaweh',1,'2014-11-04 13:19:17',NULL,'0',1),(68,5,'234612','crying_baby.jpg','612361236',1,'2014-11-04 13:21:23',NULL,'0',1),(69,5,'234612','crying_baby.jpg','612361236',1,'2014-11-04 13:24:51',NULL,'0',1),(70,5,'234612','crying_baby.jpg','612361236',1,'2014-11-04 13:25:54',NULL,'0',1),(71,5,'1','crying_baby.jpg','124125125',1,'2014-11-05 03:39:33',NULL,'0',1),(72,5,'herwaaewhawehawhawe awegewagawegawegaweewa agawegaweeaweeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee','crying_baby.jpg','awegawegaweg',1,'2014-11-05 03:44:46',NULL,'0',1);
/*!40000 ALTER TABLE `galleries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gallery_categories`
--

DROP TABLE IF EXISTS `gallery_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gallery_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `galleries_count` int(11) NOT NULL DEFAULT '0',
  `enable` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gallery_categories`
--

LOCK TABLES `gallery_categories` WRITE;
/*!40000 ALTER TABLE `gallery_categories` DISABLE KEYS */;
INSERT INTO `gallery_categories` VALUES (1,'일상',2,1,'2013-12-24 18:26:41','2013-12-24 18:26:41'),(2,'멍멍이',12,1,'2013-12-24 18:26:41','2013-12-24 18:26:41'),(3,'가족들',13,1,'2013-12-24 18:26:42','2013-12-24 18:26:42'),(4,'풍경',20,1,'2013-12-24 18:26:42','2013-12-24 18:26:42'),(5,'기타',0,1,'2013-12-24 18:26:42','2013-12-24 18:26:42');
/*!40000 ALTER TABLE `gallery_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guest_book_comments`
--

DROP TABLE IF EXISTS `guest_book_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guest_book_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `guest_book_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `encrypted_password` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_guest_book_comments_on_user_id` (`user_id`),
  KEY `index_guest_book_comments_on_guest_book_id` (`guest_book_id`),
  CONSTRAINT `guest_book_comments_ibfk_1` FOREIGN KEY (`guest_book_id`) REFERENCES `guest_books` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guest_book_comments`
--

LOCK TABLES `guest_book_comments` WRITE;
/*!40000 ALTER TABLE `guest_book_comments` DISABLE KEYS */;
INSERT INTO `guest_book_comments` VALUES (1,1,1,NULL,NULL,NULL,'아직 이런 최신의 홈페이지가 익숙하지 않나보군요.\r\n저의 불찰입니다.\r\n이 홈페이지는 응답하라 2024 스타일입니다.','2014-01-08 09:09:18','2014-01-08 09:09:18');
/*!40000 ALTER TABLE `guest_book_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guest_book_contents`
--

DROP TABLE IF EXISTS `guest_book_contents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guest_book_contents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `guest_book_contents_ibfk_1` FOREIGN KEY (`id`) REFERENCES `guest_books` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guest_book_contents`
--

LOCK TABLES `guest_book_contents` WRITE;
/*!40000 ALTER TABLE `guest_book_contents` DISABLE KEYS */;
INSERT INTO `guest_book_contents` VALUES (1,'홈페이지가 모뎀시절을 회상하게 하는군요\r\n응답하라 1997 홈페이지로 이름을 바꾸세요'),(12,'twetqw'),(13,'wetqwetqwet'),(14,'12361236'),(15,'213612361235123\r\n512\r\n351235235');
/*!40000 ALTER TABLE `guest_book_contents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guest_books`
--

DROP TABLE IF EXISTS `guest_books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guest_books` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `encrypted_password` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `guest_book_comments_count` int(11) NOT NULL DEFAULT '0',
  `enable` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `count` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_guest_books_on_user_id` (`user_id`),
  CONSTRAINT `guest_books_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guest_books`
--

LOCK TABLES `guest_books` WRITE;
/*!40000 ALTER TABLE `guest_books` DISABLE KEYS */;
INSERT INTO `guest_books` VALUES (1,NULL,'응답하라 1997','잠사','af57c61bbfdc0c5b4191bd8ff08b9150b757a815','460379400.2779639524403823',1,1,'2013-12-26 07:39:18','2013-12-26 07:39:18',1),(2,NULL,'label_title',NULL,'',NULL,0,1,'2014-10-21 22:13:24',NULL,0),(3,NULL,'label_title','label_name','',NULL,0,1,'2014-10-22 01:47:51',NULL,0),(4,NULL,'label_title','label_name','',NULL,0,1,'2014-10-22 01:48:24',NULL,0),(5,NULL,'label_title','label_name','',NULL,0,1,'2014-10-22 01:49:03',NULL,0),(6,NULL,'label_title','label_name','',NULL,0,1,'2014-10-22 01:50:12',NULL,0),(7,NULL,'label_title','label_name','',NULL,0,1,'2014-10-22 15:05:41',NULL,0),(8,NULL,'label_title','label_name','',NULL,0,1,'2014-10-22 18:15:08',NULL,0),(9,NULL,'label_title','label_name','',NULL,0,1,'2014-10-22 18:15:23',NULL,0),(10,NULL,' label_title','label_name','',NULL,0,1,'2014-10-22 18:35:00',NULL,0),(11,NULL,'label_title','label_name','',NULL,0,1,'2014-10-22 20:12:31',NULL,0),(12,NULL,'qwewe','3215123','',NULL,0,1,'2014-11-05 20:24:17',NULL,1),(13,NULL,'qwetqwetq','이름','',NULL,0,1,'2014-11-22 01:56:56',NULL,1),(14,NULL,'12361236',NULL,'',NULL,0,1,'2014-11-22 01:57:12',NULL,1),(15,1,'231651236',NULL,'',NULL,0,1,'2014-11-22 01:59:45',NULL,1);
/*!40000 ALTER TABLE `guest_books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `histories`
--

DROP TABLE IF EXISTS `histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `histories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `year` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_histories_on_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `histories`
--

LOCK TABLES `histories` WRITE;
/*!40000 ALTER TABLE `histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `impressions`
--

DROP TABLE IF EXISTS `impressions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `impressions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `impressionable_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `impressionable_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `controller_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `action_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `view_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `request_hash` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ip_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `session_hash` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8_unicode_ci,
  `referrer` text COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `poly_request_index` (`impressionable_type`,`impressionable_id`,`request_hash`),
  KEY `poly_ip_index` (`impressionable_type`,`impressionable_id`,`ip_address`),
  KEY `poly_session_index` (`impressionable_type`,`impressionable_id`,`session_hash`),
  KEY `controlleraction_request_index` (`controller_name`,`action_name`,`request_hash`),
  KEY `controlleraction_ip_index` (`controller_name`,`action_name`,`ip_address`),
  KEY `controlleraction_session_index` (`controller_name`,`action_name`,`session_hash`),
  KEY `index_impressions_on_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=268 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `impressions`
--

LOCK TABLES `impressions` WRITE;
/*!40000 ALTER TABLE `impressions` DISABLE KEYS */;
INSERT INTO `impressions` VALUES (1,'Blog',NULL,NULL,'blogs',NULL,NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/blogs/','2014-11-15 14:57:36','2014-11-15 14:57:36'),(2,'Blog',NULL,NULL,'blogs',NULL,NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/blogs/','2014-11-15 14:57:38','2014-11-15 14:57:38'),(3,'Blog',NULL,NULL,'blogs','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/blogs/','2014-11-15 15:24:44','2014-11-15 15:24:44'),(4,'Notice',3,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/','2014-11-15 15:31:00','2014-11-15 15:31:00'),(5,'Notice',2,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/index.php','2014-11-15 15:31:31','2014-11-15 15:31:31'),(6,'Notice',3,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/index.php','2014-11-15 15:31:48','2014-11-15 15:31:48'),(7,'Notice',2,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/index.php','2014-11-15 15:31:51','2014-11-15 15:31:51'),(8,'Notice',1,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/index.php','2014-11-15 15:31:53','2014-11-15 15:31:53'),(9,'Notice',6,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/index.php','2014-11-15 15:31:55','2014-11-15 15:31:55'),(10,'Notice',3,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/index.php','2014-11-15 15:32:07','2014-11-15 15:32:07'),(11,'Notice',6,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/index.php','2014-11-15 15:32:10','2014-11-15 15:32:10'),(12,'Notice',6,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/index.php','2014-11-15 15:32:29','2014-11-15 15:32:29'),(13,'Notice',3,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/index.php','2014-11-15 15:32:32','2014-11-15 15:32:32'),(14,'Notice',2,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/index.php','2014-11-15 15:32:34','2014-11-15 15:32:34'),(15,'Notice',1,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/index.php','2014-11-15 15:32:37','2014-11-15 15:32:37'),(16,'Notice',3,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/index.php','2014-11-15 15:33:59','2014-11-15 15:33:59'),(17,'Notice',2,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/index.php','2014-11-15 15:34:01','2014-11-15 15:34:01'),(18,'Notice',1,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/index.php','2014-11-15 15:34:04','2014-11-15 15:34:04'),(19,'Guest_book',NULL,NULL,'guest_books','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/guest_books/','2014-11-15 15:34:57','2014-11-15 15:34:57'),(20,'Guest_book',NULL,NULL,'guest_books','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/guest_books/index.php','2014-11-15 15:35:00','2014-11-15 15:35:00'),(21,'Guest_book',12,NULL,'guest_books','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/guest_books/index.php?pageID=1','2014-11-15 15:35:05','2014-11-15 15:35:05'),(22,'Guest_book',NULL,NULL,'guest_books','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/guest_books/index.php?pageID=1','2014-11-15 15:35:34','2014-11-15 15:35:34'),(23,'Guest_book',NULL,NULL,'guest_books','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/guest_books/index.php?pageID=1','2014-11-15 15:35:37','2014-11-15 15:35:37'),(24,'Guest_book',1,NULL,'guest_books','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/guest_books/index.php?pageID=2','2014-11-15 15:35:40','2014-11-15 15:35:40'),(25,'Guest_book',NULL,NULL,'guest_books','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/guest_books/index.php?pageID=2','2014-11-15 15:35:43','2014-11-15 15:35:43'),(26,'Guest_book',NULL,NULL,'guest_books','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/guest_books/index.php?pageID=2','2014-11-15 15:35:45','2014-11-15 15:35:45'),(27,'Guest_book',1,NULL,'guest_books','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/guest_books/index.php?pageID=2','2014-11-15 15:35:48','2014-11-15 15:35:48'),(28,'Guest_book',NULL,NULL,'guest_books','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/guest_books/index.php?pageID=1','2014-11-15 15:35:51','2014-11-15 15:35:51'),(29,'Guest_book',NULL,NULL,'guest_books','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/guest_books/index.php?pageID=1','2014-11-15 15:35:54','2014-11-15 15:35:54'),(30,'Question',1,NULL,'questions','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/questions/','2014-11-15 15:51:49','2014-11-15 15:51:49'),(31,'Question',NULL,NULL,'questions','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/questions/index.php','2014-11-15 15:51:54','2014-11-15 15:51:54'),(32,'Question',4,NULL,'questions','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/questions/index.php','2014-11-15 15:52:55','2014-11-15 15:52:55'),(33,'Question',NULL,NULL,'questions','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/questions/index.php','2014-11-15 15:52:58','2014-11-15 15:52:58'),(34,'Question',5,NULL,'questions','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/questions/index.php','2014-11-15 15:53:10','2014-11-15 15:53:10'),(35,'Question',5,NULL,'questions','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/questions/index.php','2014-11-15 15:53:14','2014-11-15 15:53:14'),(36,'Question',4,NULL,'questions','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/questions/index.php','2014-11-15 15:53:16','2014-11-15 15:53:16'),(37,'Question',NULL,NULL,'questions','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/questions/index.php?desc=0&order=count','2014-11-15 15:59:28','2014-11-15 15:59:28'),(38,'Question',1,NULL,'questions','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/questions/index.php?desc=0&order=count','2014-11-15 15:59:30','2014-11-15 15:59:30'),(39,'Question',5,NULL,'questions','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/questions/index.php?desc=0&order=count','2014-11-15 15:59:32','2014-11-15 15:59:32'),(40,'Question',4,NULL,'questions','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/questions/index.php?desc=0&order=count','2014-11-15 15:59:35','2014-11-15 15:59:35'),(41,'Notice',3,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/','2014-11-15 15:59:40','2014-11-15 15:59:40'),(42,'Notice',1,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/index.php','2014-11-15 15:59:41','2014-11-15 15:59:41'),(43,'Notice',6,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/index.php','2014-11-15 15:59:44','2014-11-15 15:59:44'),(44,'Notice',3,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/','2014-11-17 02:28:09','2014-11-17 02:28:09'),(45,'Notice',1,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/index.php','2014-11-17 02:28:11','2014-11-17 02:28:11'),(46,'Notice',2,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/','2014-11-17 02:28:48','2014-11-17 02:28:48'),(47,'Guest_book',12,NULL,'guest_books','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/guest_books/','2014-11-17 02:35:09','2014-11-17 02:35:09'),(48,'Question',5,NULL,'questions','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/questions/','2014-11-17 17:08:51','2014-11-17 17:08:51'),(49,'Question',1,NULL,'questions','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/questions/index.php','2014-11-17 17:08:55','2014-11-17 17:08:55'),(50,'Question',4,NULL,'questions','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/questions/index.php','2014-11-17 17:09:04','2014-11-17 17:09:04'),(51,'Question',4,NULL,'questions','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/questions/','2014-11-17 17:48:35','2014-11-17 17:48:35'),(52,'Question',4,NULL,'questions','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/questions/','2014-11-17 17:50:42','2014-11-17 17:50:42'),(53,'Blog',51,NULL,'blogs','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/blogs/','2014-11-17 18:00:39','2014-11-17 18:00:39'),(54,'Blog',51,NULL,'blogs','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/blogs/index.php','2014-11-17 18:00:42','2014-11-17 18:00:42'),(55,'Notice',2,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/','2014-11-17 18:00:53','2014-11-17 18:00:53'),(56,'Notice',1,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/index.php','2014-11-17 18:00:55','2014-11-17 18:00:55'),(57,'Question',1,NULL,'questions','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/questions/','2014-11-17 19:51:33','2014-11-17 19:51:33'),(58,'Question',NULL,NULL,'questions','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/questions/index.php','2014-11-17 19:51:44','2014-11-17 19:51:44'),(59,'Blog',50,NULL,'blogs','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/','2014-11-19 01:55:14','2014-11-19 01:55:14'),(60,'Blog',50,NULL,'blogs','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/blogs/','2014-11-19 04:27:45','2014-11-19 04:27:45'),(61,'Guest_book',1,NULL,'guest_books','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/guest_books/index.php?pageID=2','2014-11-19 04:29:10','2014-11-19 04:29:10'),(63,'Question',4,NULL,'questions','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/questions/','2014-11-19 04:50:09','2014-11-19 04:50:09'),(64,'Question',4,NULL,'questions','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/questions/','2014-11-19 04:55:20','2014-11-19 04:55:20'),(65,'Question',1,NULL,'questions','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/','2014-11-19 04:55:23','2014-11-19 04:55:23'),(66,'Notice',3,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/','2014-11-19 05:36:55','2014-11-19 05:36:55'),(67,'Guest_book',NULL,NULL,'guest_books','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/guest_books/','2014-11-19 05:37:00','2014-11-19 05:37:00'),(68,'Notice',3,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/','2014-11-19 05:37:09','2014-11-19 05:37:09'),(69,'Guest_book',NULL,NULL,'guest_books','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/guest_books/','2014-11-19 05:37:17','2014-11-19 05:37:17'),(70,'Notice',3,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/','2014-11-19 05:37:20','2014-11-19 05:37:20'),(71,'Blog',62,NULL,'blogs','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/blogs/','2014-11-19 05:37:23','2014-11-19 05:37:23'),(72,'Notice',1,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/','2014-11-19 05:37:42','2014-11-19 05:37:42'),(73,'Notice',1,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/','2014-11-19 16:06:55','2014-11-19 16:06:55'),(74,'Notice',3,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/index.php','2014-11-19 16:06:58','2014-11-19 16:06:58'),(75,'Question',5,NULL,'questions','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/questions/','2014-11-21 20:49:54','2014-11-21 20:49:54'),(76,'Question',5,NULL,'questions','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/questions/','2014-11-21 22:03:02','2014-11-21 22:03:02'),(77,'Notice',6,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/','2014-11-21 22:03:06','2014-11-21 22:03:06'),(78,'Notice',6,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/','2014-11-21 22:03:15','2014-11-21 22:03:15'),(79,'Notice',6,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/','2014-11-21 22:03:21','2014-11-21 22:03:21'),(80,'Notice',6,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/','2014-11-21 22:03:28','2014-11-21 22:03:28'),(81,'Notice',6,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/','2014-11-21 22:04:17','2014-11-21 22:04:17'),(82,'Notice',6,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/','2014-11-21 22:04:27','2014-11-21 22:04:27'),(83,'Notice',2,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/index.php','2014-11-21 22:04:35','2014-11-21 22:04:35'),(84,'Notice',3,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/index.php','2014-11-21 22:04:37','2014-11-21 22:04:37'),(85,'Question',4,NULL,'questions','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/questions/','2014-11-21 22:09:52','2014-11-21 22:09:52'),(86,'Notice',3,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/','2014-11-21 22:09:55','2014-11-21 22:09:55'),(87,'Notice',3,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/','2014-11-21 22:10:16','2014-11-21 22:10:16'),(88,'Notice',1,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/index.php','2014-11-21 22:10:38','2014-11-21 22:10:38'),(89,'Notice',1,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/index.php','2014-11-21 22:10:48','2014-11-21 22:10:48'),(90,'Notice',1,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/index.php','2014-11-21 22:10:53','2014-11-21 22:10:53'),(91,'Notice',1,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/index.php','2014-11-21 22:11:29','2014-11-21 22:11:29'),(92,'Notice',1,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/index.php','2014-11-21 22:12:05','2014-11-21 22:12:05'),(93,'Notice',1,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/index.php','2014-11-21 22:12:26','2014-11-21 22:12:26'),(94,'Notice',1,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/index.php','2014-11-21 22:12:31','2014-11-21 22:12:31'),(95,'Notice',2,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/index.php','2014-11-21 22:12:33','2014-11-21 22:12:33'),(96,'Notice',6,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/','2014-11-22 01:08:12','2014-11-22 01:08:12'),(97,'Notice',3,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/','2014-11-22 01:08:19','2014-11-22 01:08:19'),(98,'Notice',3,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/','2014-11-22 01:11:08','2014-11-22 01:11:08'),(99,'Notice',3,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/','2014-11-22 01:11:27','2014-11-22 01:11:27'),(100,'Notice',3,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/','2014-11-22 01:11:48','2014-11-22 01:11:48'),(101,'Notice',2,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/index.php','2014-11-22 01:11:54','2014-11-22 01:11:54'),(102,'Notice',2,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/index.php','2014-11-22 01:12:12','2014-11-22 01:12:12'),(103,'Notice',6,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/index.php','2014-11-22 01:12:15','2014-11-22 01:12:15'),(104,'Notice',3,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/','2014-11-22 01:12:42','2014-11-22 01:12:42'),(105,'Notice',3,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/','2014-11-22 01:20:22','2014-11-22 01:20:22'),(106,'Notice',2,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/index.php','2014-11-22 01:20:33','2014-11-22 01:20:33'),(107,'Notice',2,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/index.php','2014-11-22 01:21:14','2014-11-22 01:21:14'),(108,'Notice',3,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/','2014-11-22 01:21:31','2014-11-22 01:21:31'),(109,'Notice',3,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/','2014-11-22 01:22:34','2014-11-22 01:22:34'),(110,'Notice',3,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/','2014-11-22 01:22:48','2014-11-22 01:22:48'),(111,'Notice',3,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/','2014-11-22 01:23:03','2014-11-22 01:23:03'),(112,'Notice',3,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/','2014-11-22 01:26:47','2014-11-22 01:26:47'),(113,'Notice',2,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/','2014-11-22 01:26:57','2014-11-22 01:26:57'),(114,'Notice',3,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/','2014-11-22 01:27:22','2014-11-22 01:27:22'),(115,'Notice',3,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/index.php','2014-11-22 01:29:47','2014-11-22 01:29:47'),(116,'Notice',3,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/index.php','2014-11-22 01:29:57','2014-11-22 01:29:57'),(117,'Notice',3,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/index.php','2014-11-22 01:30:53','2014-11-22 01:30:53'),(118,'Notice',3,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/index.php','2014-11-22 01:31:13','2014-11-22 01:31:13'),(119,'Notice',3,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/index.php','2014-11-22 01:31:38','2014-11-22 01:31:38'),(120,'Notice',3,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/index.php','2014-11-22 01:32:09','2014-11-22 01:32:09'),(121,'Notice',3,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/index.php','2014-11-22 01:32:26','2014-11-22 01:32:26'),(122,'Notice',3,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/index.php','2014-11-22 01:32:51','2014-11-22 01:32:51'),(123,'Notice',3,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/index.php','2014-11-22 01:33:39','2014-11-22 01:33:39'),(124,'Notice',1,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/index.php','2014-11-22 01:33:47','2014-11-22 01:33:47'),(125,'Notice',2,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/index.php','2014-11-22 01:33:49','2014-11-22 01:33:49'),(126,'Notice',1,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/index.php','2014-11-22 01:33:52','2014-11-22 01:33:52'),(127,'Notice',3,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/index.php','2014-11-22 01:33:56','2014-11-22 01:33:56'),(128,'Notice',1,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/index.php','2014-11-22 01:33:58','2014-11-22 01:33:58'),(129,'Notice',2,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/index.php','2014-11-22 01:34:01','2014-11-22 01:34:01'),(130,'Notice',3,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/index.php','2014-11-22 01:34:05','2014-11-22 01:34:05'),(131,'Notice',6,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/index.php','2014-11-22 01:34:07','2014-11-22 01:34:07'),(132,'Notice',2,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/','2014-11-22 01:34:22','2014-11-22 01:34:22'),(133,'Notice',2,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/','2014-11-22 01:34:54','2014-11-22 01:34:54'),(134,'Notice',1,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/index.php','2014-11-22 01:34:58','2014-11-22 01:34:58'),(135,'Notice',2,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/index.php','2014-11-22 01:35:00','2014-11-22 01:35:00'),(136,'Notice',3,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/index.php','2014-11-22 01:35:03','2014-11-22 01:35:03'),(137,'Notice',6,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/index.php','2014-11-22 01:35:05','2014-11-22 01:35:05'),(138,'Notice',1,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/index.php','2014-11-22 01:35:07','2014-11-22 01:35:07'),(139,'Notice',3,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/index.php','2014-11-22 01:35:13','2014-11-22 01:35:13'),(140,'Notice',1,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/index.php','2014-11-22 01:35:17','2014-11-22 01:35:17'),(141,'Notice',3,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/index.php','2014-11-22 01:35:21','2014-11-22 01:35:21'),(142,'Notice',6,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/index.php','2014-11-22 01:35:24','2014-11-22 01:35:24'),(143,'Notice',1,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/index.php','2014-11-22 01:35:26','2014-11-22 01:35:26'),(144,'Notice',3,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/index.php','2014-11-22 01:35:47','2014-11-22 01:35:47'),(145,'Notice',3,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/index.php','2014-11-22 01:36:13','2014-11-22 01:36:13'),(146,'Notice',1,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/index.php','2014-11-22 01:36:17','2014-11-22 01:36:17'),(147,'Notice',2,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/index.php','2014-11-22 01:36:19','2014-11-22 01:36:19'),(148,'Notice',3,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/index.php','2014-11-22 01:36:22','2014-11-22 01:36:22'),(149,'Notice',6,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/index.php','2014-11-22 01:36:25','2014-11-22 01:36:25'),(150,'Notice',1,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/index.php','2014-11-22 01:36:27','2014-11-22 01:36:27'),(151,'Notice',2,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/index.php','2014-11-22 01:36:29','2014-11-22 01:36:29'),(152,'Notice',3,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/index.php','2014-11-22 01:36:31','2014-11-22 01:36:31'),(153,'Notice',6,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/index.php','2014-11-22 01:36:34','2014-11-22 01:36:34'),(154,'Notice',1,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/index.php','2014-11-22 01:36:36','2014-11-22 01:36:36'),(155,'Notice',2,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/index.php','2014-11-22 01:36:39','2014-11-22 01:36:39'),(156,'Notice',3,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/index.php','2014-11-22 01:36:42','2014-11-22 01:36:42'),(157,'Notice',1,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/','2014-11-22 01:37:12','2014-11-22 01:37:12'),(158,'Notice',1,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/','2014-11-22 01:39:50','2014-11-22 01:39:50'),(159,'Notice',1,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/','2014-11-22 01:40:06','2014-11-22 01:40:06'),(160,'Notice',1,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/','2014-11-22 01:44:40','2014-11-22 01:44:40'),(161,'Notice',3,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/index.php','2014-11-22 01:44:46','2014-11-22 01:44:46'),(162,'Notice',1,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/index.php','2014-11-22 01:44:50','2014-11-22 01:44:50'),(163,'Notice',3,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/index.php','2014-11-22 01:44:52','2014-11-22 01:44:52'),(164,'Notice',6,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/index.php','2014-11-22 01:44:55','2014-11-22 01:44:55'),(165,'Notice',6,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/index.php','2014-11-22 01:45:13','2014-11-22 01:45:13'),(166,'Notice',6,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/index.php','2014-11-22 01:45:20','2014-11-22 01:45:20'),(167,'Notice',1,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/index.php','2014-11-22 01:45:24','2014-11-22 01:45:24'),(168,'Notice',3,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/index.php','2014-11-22 01:45:26','2014-11-22 01:45:26'),(169,'Notice',6,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/index.php','2014-11-22 01:45:28','2014-11-22 01:45:28'),(170,'Notice',1,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/index.php','2014-11-22 01:45:32','2014-11-22 01:45:32'),(171,'Guest_book',NULL,NULL,'guest_books','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/guest_books/index.php?pageID=1','2014-11-22 01:45:59','2014-11-22 01:45:59'),(172,'Notice',2,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/','2014-11-22 01:46:02','2014-11-22 01:46:02'),(173,'Notice',1,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/index.php','2014-11-22 01:46:05','2014-11-22 01:46:05'),(174,'Notice',6,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/index.php','2014-11-22 01:46:07','2014-11-22 01:46:07'),(175,'Notice',3,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/index.php','2014-11-22 01:46:09','2014-11-22 01:46:09'),(176,'Notice',1,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/index.php','2014-11-22 01:46:11','2014-11-22 01:46:11'),(177,'Notice',2,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/index.php','2014-11-22 01:46:14','2014-11-22 01:46:14'),(178,'Guest_book',12,NULL,'guest_books','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/guest_books/','2014-11-22 01:46:22','2014-11-22 01:46:22'),(179,'Guest_book',12,NULL,'guest_books','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/guest_books/index.php','2014-11-22 01:46:54','2014-11-22 01:46:54'),(180,'Guest_book',NULL,NULL,'guest_books','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/guest_books/index.php','2014-11-22 01:46:57','2014-11-22 01:46:57'),(181,'Guest_book',12,NULL,'guest_books','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/guest_books/index.php','2014-11-22 01:46:59','2014-11-22 01:46:59'),(182,'Guest_book',12,NULL,'guest_books','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/guest_books/','2014-11-22 01:47:03','2014-11-22 01:47:03'),(183,'Guest_book',12,NULL,'guest_books','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/guest_books/index.php','2014-11-22 01:47:07','2014-11-22 01:47:07'),(184,'Guest_book',12,NULL,'guest_books','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/guest_books/index.php','2014-11-22 01:47:10','2014-11-22 01:47:10'),(185,'Guest_book',12,NULL,'guest_books','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/guest_books/','2014-11-22 01:47:15','2014-11-22 01:47:15'),(186,'Question',5,NULL,'questions','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/questions/','2014-11-22 01:47:54','2014-11-22 01:47:54'),(187,'Blog',62,NULL,'blogs','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/blogs/','2014-11-22 01:48:03','2014-11-22 01:48:03'),(188,'Blog',62,NULL,'blogs','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/blogs/','2014-11-22 01:48:17','2014-11-22 01:48:17'),(189,'Blog',59,NULL,'blogs','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/blogs/index.php','2014-11-22 01:48:21','2014-11-22 01:48:21'),(190,'Blog',43,NULL,'blogs','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/blogs/index.php','2014-11-22 01:48:24','2014-11-22 01:48:24'),(191,'Blog',51,NULL,'blogs','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/blogs/index.php','2014-11-22 01:48:27','2014-11-22 01:48:27'),(192,'Blog',61,NULL,'blogs','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/blogs/','2014-11-22 01:50:48','2014-11-22 01:50:48'),(193,'Blog',61,NULL,'blogs','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/blogs/','2014-11-22 01:51:45','2014-11-22 01:51:45'),(194,'Blog',59,NULL,'blogs','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/blogs/index.php','2014-11-22 01:51:54','2014-11-22 01:51:54'),(195,'Blog',61,NULL,'blogs','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/blogs/index.php','2014-11-22 01:51:57','2014-11-22 01:51:57'),(196,'Blog',62,NULL,'blogs','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/blogs/index.php','2014-11-22 01:51:59','2014-11-22 01:51:59'),(197,'Blog',43,NULL,'blogs','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/blogs/index.php','2014-11-22 01:52:02','2014-11-22 01:52:02'),(198,'Guest_book',NULL,NULL,'guest_books','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/guest_books/','2014-11-22 01:52:24','2014-11-22 01:52:24'),(199,'Guest_book',1,NULL,'guest_books','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/guest_books/index.php?pageID=2','2014-11-22 01:52:28','2014-11-22 01:52:28'),(200,'Guest_book',NULL,NULL,'guest_books','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/guest_books/','2014-11-22 01:55:16','2014-11-22 01:55:16'),(201,'Guest_book',12,NULL,'guest_books','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/guest_books/index.php','2014-11-22 01:55:19','2014-11-22 01:55:19'),(202,'Guest_book',NULL,NULL,'guest_books','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/guest_books/index.php','2014-11-22 01:55:21','2014-11-22 01:55:21'),(203,'Guest_book',12,NULL,'guest_books','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/guest_books/index.php','2014-11-22 01:56:32','2014-11-22 01:56:32'),(204,'Guest_book',NULL,NULL,'guest_books','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/guest_books/index.php','2014-11-22 01:56:34','2014-11-22 01:56:34'),(205,'Guest_book',NULL,NULL,'guest_books','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/guest_books/index.php','2014-11-22 01:56:36','2014-11-22 01:56:36'),(206,'Guest_book',12,NULL,'guest_books','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/guest_books/index.php','2014-11-22 01:56:39','2014-11-22 01:56:39'),(207,'Guest_book',NULL,NULL,'guest_books','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/guest_books/index.php?pageID=2','2014-11-22 01:56:43','2014-11-22 01:56:43'),(208,'Guest_book',1,NULL,'guest_books','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/guest_books/index.php?pageID=2','2014-11-22 01:56:45','2014-11-22 01:56:45'),(209,'Guest_book',13,NULL,'guest_books','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/guest_books/index.php','2014-11-22 01:56:58','2014-11-22 01:56:58'),(210,'Guest_book',14,1,'guest_books','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/guest_books/index.php','2014-11-22 01:57:13','2014-11-22 01:57:13'),(211,'Guest_book',14,1,'guest_books','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/guest_books/index.php','2014-11-22 01:57:59','2014-11-22 01:57:59'),(212,'Guest_book',15,1,'guest_books','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/guest_books/index.php','2014-11-22 01:59:47','2014-11-22 01:59:47'),(213,'Guest_book',15,1,'guest_books','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/guest_books/index.php','2014-11-22 01:59:58','2014-11-22 01:59:58'),(214,'Guest_book',15,1,'guest_books','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/guest_books/index.php','2014-11-22 02:00:41','2014-11-22 02:00:41'),(215,'Guest_book',15,1,'guest_books','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/guest_books/index.php','2014-11-22 02:01:00','2014-11-22 02:01:00'),(216,'Guest_book',14,1,'guest_books','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/guest_books/index.php','2014-11-22 02:01:02','2014-11-22 02:01:02'),(217,'Guest_book',15,1,'guest_books','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/guest_books/index.php','2014-11-22 02:01:04','2014-11-22 02:01:04'),(218,'Question',5,1,'questions','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/questions/','2014-11-22 02:01:43','2014-11-22 02:01:43'),(219,'Question',6,1,'questions','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/questions/index.php','2014-11-22 02:01:50','2014-11-22 02:01:50'),(220,'Question',1,1,'questions','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/questions/index.php','2014-11-22 02:01:52','2014-11-22 02:01:52'),(221,'Question',5,1,'questions','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/questions/index.php','2014-11-22 02:01:55','2014-11-22 02:01:55'),(222,'Notice',6,1,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/','2014-11-22 02:16:36','2014-11-22 02:16:36'),(223,'Question',6,1,'questions','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/questions/','2014-11-22 02:16:41','2014-11-22 02:16:41'),(224,'Blog',62,1,'blogs','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/blogs/','2014-11-22 02:16:45','2014-11-22 02:16:45'),(225,'Guest_book',15,1,'guest_books','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/guest_books/','2014-11-22 04:37:28','2014-11-22 04:37:28'),(226,'Question',5,1,'questions','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/questions/','2014-11-22 05:00:52','2014-11-22 05:00:52'),(227,'Question',6,1,'questions','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/questions/','2014-11-22 05:00:56','2014-11-22 05:00:56'),(228,'Question',5,1,'questions','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/questions/index.php','2014-11-22 05:00:58','2014-11-22 05:00:58'),(229,'Question',6,1,'questions','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/questions/','2014-11-22 05:02:02','2014-11-22 05:02:02'),(230,'Question',5,1,'questions','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/questions/','2014-11-22 05:02:05','2014-11-22 05:02:05'),(231,'Guest_book',NULL,1,'guest_books','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/guest_books/','2014-11-22 05:02:15','2014-11-22 05:02:15'),(232,'Guest_book',1,1,'guest_books','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/guest_books/index.php?pageID=2','2014-11-22 05:02:19','2014-11-22 05:02:19'),(233,'Notice',3,1,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/','2014-11-22 05:08:18','2014-11-22 05:08:18'),(234,'Guest_book',13,1,'guest_books','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/guest_books/','2014-11-22 05:08:32','2014-11-22 05:08:32'),(235,'Guest_book',13,1,'guest_books','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/guest_books/index.php','2014-11-22 05:08:44','2014-11-22 05:08:44'),(236,'Guest_book',15,1,'guest_books','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/guest_books/index.php','2014-11-22 05:08:48','2014-11-22 05:08:48'),(237,'Notice',3,1,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/','2014-11-22 05:09:23','2014-11-22 05:09:23'),(238,'Notice',1,1,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/index.php','2014-11-22 05:09:26','2014-11-22 05:09:26'),(239,'Notice',7,1,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/index.php','2014-11-22 05:22:29','2014-11-22 05:22:29'),(240,'Question',6,1,'questions','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/questions/','2014-11-22 06:02:38','2014-11-22 06:02:38'),(241,'Blog',62,1,'blogs','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/blogs/','2014-11-22 06:07:27','2014-11-22 06:07:27'),(242,'Notice',3,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/','2014-11-22 11:58:55','2014-11-22 11:58:55'),(243,'Notice',1,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/','2014-11-22 11:59:07','2014-11-22 11:59:07'),(244,'Blog',43,NULL,'blogs','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/blogs/','2014-11-22 12:10:41','2014-11-22 12:10:41'),(245,'Guest_book',15,NULL,'guest_books','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/guest_books/','2014-11-22 12:17:20','2014-11-22 12:17:20'),(246,'Guest_book',13,NULL,'guest_books','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/guest_books/index.php','2014-11-22 12:17:32','2014-11-22 12:17:32'),(247,'Question',6,NULL,'questions','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/questions/','2014-11-22 12:17:49','2014-11-22 12:17:49'),(248,'Question',5,NULL,'questions','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/questions/index.php','2014-11-22 12:17:51','2014-11-22 12:17:51'),(249,'Question',4,NULL,'questions','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/questions/index.php','2014-11-22 12:17:54','2014-11-22 12:17:54'),(250,'Question',1,NULL,'questions','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/questions/index.php','2014-11-22 12:17:55','2014-11-22 12:17:55'),(251,'Question',6,NULL,'questions','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/questions/','2014-11-26 02:32:25','2014-11-26 02:32:25'),(252,'Notice',3,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/','2014-11-26 18:08:43','2014-11-26 18:08:43'),(253,'Notice',1,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/index.php','2014-11-26 18:08:46','2014-11-26 18:08:46'),(254,'Notice',2,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/index.php','2014-11-26 18:08:48','2014-11-26 18:08:48'),(255,'Notice',7,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/index.php','2014-11-26 18:08:50','2014-11-26 18:08:50'),(256,'Notice',6,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/index.php','2014-11-26 18:08:52','2014-11-26 18:08:52'),(257,'Notice',3,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/index.php','2014-11-26 18:08:54','2014-11-26 18:08:54'),(258,'Notice',1,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/index.php','2014-11-26 18:08:56','2014-11-26 18:08:56'),(259,'Notice',2,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/index.php','2014-11-26 18:08:58','2014-11-26 18:08:58'),(260,'Notice',3,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/index.php','2014-11-26 18:09:00','2014-11-26 18:09:00'),(261,'Notice',6,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/index.php','2014-11-26 18:09:01','2014-11-26 18:09:01'),(262,'Notice',7,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/index.php','2014-11-26 18:09:03','2014-11-26 18:09:03'),(263,'Blog',62,NULL,'blogs','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/blogs/','2014-11-27 04:18:25','2014-11-27 04:18:25'),(264,'Blog',61,NULL,'blogs','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/blogs/index.php','2014-11-27 04:18:28','2014-11-27 04:18:28'),(265,'Notice',2,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/','2014-11-27 04:42:21','2014-11-27 04:42:21'),(266,'Notice',3,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/','2014-11-27 17:45:41','2014-11-27 17:45:41'),(267,'Notice',6,NULL,'notices','show',NULL,NULL,'::1',NULL,NULL,'http://localhost:20004/boards/notices/index.php','2014-11-27 17:45:45','2014-11-27 17:45:45');
/*!40000 ALTER TABLE `impressions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notice_contents`
--

DROP TABLE IF EXISTS `notice_contents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notice_contents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `html` tinyint(1) NOT NULL DEFAULT '0',
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `notice_contents_ibfk_1` FOREIGN KEY (`id`) REFERENCES `notices` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notice_contents`
--

LOCK TABLES `notice_contents` WRITE;
/*!40000 ALTER TABLE `notice_contents` DISABLE KEYS */;
INSERT INTO `notice_contents` VALUES (1,0,'그동안 수많은 방문자에 비해서 준비되지 못하였는데 이제 보다 업그레이드된 모습으로 다시 찾아뵙게되었습니다.\n    잠자는-사자와 소통하는 공간으로 계속 많은 이용바랍니다.'),(2,0,'<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>웹프로그래머 잠자는-사자의 집을 찾아주신 여러분께 감사드립니다.</p>\r\n\r\n<p>이제는 한시적인 업데이트가 아닌 계속적인 업데이트로 매일매일 달라지고 있으니</p>\r\n\r\n<p>자주자주 방문해주세요~~</p>\r\n\r\n<p>최고의 콘텐츠로 여러분께 기쁨되는 홈페이지가 되겠습니다.</p>\r\n</body>\r\n</html>\r\n'),(3,0,'<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>검색엔진에서 &quot;웹프로그래머 잠자는사자&quot;로 들어오세요</p>\r\n\r\n<p>앞으로도 더욱 많은 발전을 이루겠습니다.</p>\r\n</body>\r\n</html>\r\n'),(6,0,'ehawehaweh'),(7,0,'\r\n\r\n	\r\n\r\n\r\nwehawehwaeh\r\n\r\n\r\n');
/*!40000 ALTER TABLE `notice_contents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notices`
--

DROP TABLE IF EXISTS `notices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `title` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `enable` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `count` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_notices_on_user_id` (`user_id`),
  CONSTRAINT `notices_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notices`
--

LOCK TABLES `notices` WRITE;
/*!40000 ALTER TABLE `notices` DISABLE KEYS */;
INSERT INTO `notices` VALUES (1,1,'잠자는-사자의 집이 다시 개장했습니다.',1,'2013-12-24 18:26:42','2013-12-24 18:26:42',1),(2,1,'잠자는-사자의 집 계속적인 업데이트',1,'2014-02-14 14:34:37','2014-02-14 14:34:37',0),(3,1,'이제 검색어만 치면 잠자는사자의 집에 올수 있어요',1,'2014-03-09 16:02:00','2014-03-09 16:02:00',0),(6,1,'ehaw',1,'2014-11-06 01:27:47',NULL,1),(7,1,'aweha',1,'2014-11-22 05:22:27',NULL,1);
/*!40000 ALTER TABLE `notices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portfolio_contents`
--

DROP TABLE IF EXISTS `portfolio_contents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `portfolio_contents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portfolio_contents`
--

LOCK TABLES `portfolio_contents` WRITE;
/*!40000 ALTER TABLE `portfolio_contents` DISABLE KEYS */;
INSERT INTO `portfolio_contents` VALUES (1,'23535'),(2,'235235'),(3,'235235'),(4,'235235'),(5,'235235');
/*!40000 ALTER TABLE `portfolio_contents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portfolios`
--

DROP TABLE IF EXISTS `portfolios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `portfolios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portfolios`
--

LOCK TABLES `portfolios` WRITE;
/*!40000 ALTER TABLE `portfolios` DISABLE KEYS */;
INSERT INTO `portfolios` VALUES (1,'보용만두 홈페이지','http://www.by75.co.kr','보용만두 홈페이지 제작','c1.jpg','2014-01-02 16:26:47','2014-01-02 16:35:05'),(2,'서울시 승용차 요일제 홈페이지','http://no-driving.seoul.go.kr','퍼블리싱(html,css,javascript) 참여','c2.jpg','2014-01-02 16:31:06','2014-01-02 16:31:06'),(3,'전 회사홈페이지 제작','http://www.9pixel.kr','웹에이전시 홈페이지 제작','c3.jpg','2014-01-02 16:34:50','2014-01-02 16:34:50'),(4,'안티 국민은행, 국민은행이 망하는 그날까지','http://www.anti-kb.kr','서민들의 피를 빨아먹는 철밥통 부정부패 비리의 대표주자 국민은행이 망하는데 목적을둔 커뮤니티 사이트','anti_kb.png','2014-01-10 11:20:00','2014-01-10 11:20:00'),(5,'예쁘고 귀여운 수정이네 집','http://www.soojung.pe.kr','하늘같은 남편을 섬기는 예쁘고 귀여운 수정이네 집입니다.  ','soojung.jpg','2014-02-17 16:25:34','2014-02-17 16:25:34');
/*!40000 ALTER TABLE `portfolios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `question_comments`
--

DROP TABLE IF EXISTS `question_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `question_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `encrypted_password` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_question_comments_on_user_id` (`user_id`),
  KEY `index_question_comments_on_question_id` (`question_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question_comments`
--

LOCK TABLES `question_comments` WRITE;
/*!40000 ALTER TABLE `question_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `question_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `question_contents`
--

DROP TABLE IF EXISTS `question_contents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `question_contents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question_contents`
--

LOCK TABLES `question_contents` WRITE;
/*!40000 ALTER TABLE `question_contents` DISABLE KEYS */;
INSERT INTO `question_contents` VALUES (1,'사이트제작문제로문의드립니다 가격은 상의해서맞추기로하구요\r\n연동을할건데 예를들어 1사이트 2사이트가있다면 2사이트에 회원이 입력한코드를 1사이트에서 자동으로 작성되게 연동하는겁니다 테스트 도메인잇으니 연락주세요!,\r\n카톡 pmk6436'),(4,'123612361236'),(5,'123612361236123612\r\n361\r\n236\r\n12361236123612'),(6,'gaeawhawehaweh');
/*!40000 ALTER TABLE `question_contents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `encrypted_password` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `secret` int(11) NOT NULL DEFAULT '0',
  `question_comments_count` int(11) NOT NULL DEFAULT '0',
  `enable` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `count` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_questions_on_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` VALUES (1,NULL,'12365123',NULL,'',NULL,0,0,1,'2014-10-18 01:40:22',NULL,1),(2,NULL,'12365123',NULL,'',NULL,0,0,1,'2014-10-18 01:40:45',NULL,0),(4,NULL,'12361236','4236123','',NULL,0,0,1,'2014-11-15 15:52:54',NULL,1),(5,NULL,'123561236','21361236','',NULL,0,0,1,'2014-11-15 15:53:09',NULL,1),(6,NULL,'awegawegawe','정종호','',NULL,0,0,1,'2014-11-22 02:01:48',NULL,1);
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taggings`
--

DROP TABLE IF EXISTS `taggings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taggings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_id` int(11) DEFAULT NULL,
  `taggable_id` int(11) DEFAULT NULL,
  `taggable_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tagger_id` int(11) DEFAULT NULL,
  `tagger_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `context` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `taggings_idx` (`tag_id`,`taggable_id`,`taggable_type`,`context`,`tagger_id`,`tagger_type`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taggings`
--

LOCK TABLES `taggings` WRITE;
/*!40000 ALTER TABLE `taggings` DISABLE KEYS */;
INSERT INTO `taggings` VALUES (1,1,NULL,'blog',NULL,NULL,'tags','2014-11-08 00:33:54'),(2,2,NULL,'blog',NULL,NULL,'tags','2014-11-08 00:33:54'),(3,3,NULL,'blog',NULL,NULL,'tags','2014-11-08 00:33:54'),(4,1,NULL,'blog',NULL,NULL,'tags','2014-11-08 00:34:09'),(5,2,NULL,'blog',NULL,NULL,'tags','2014-11-08 00:34:09'),(6,3,NULL,'blog',NULL,NULL,'tags','2014-11-08 00:34:09');
/*!40000 ALTER TABLE `taggings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `taggings_count` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_tags_on_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'a',1),(2,'235235',1),(3,'12351235',1);
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `encrypted_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `reset_password_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `intro` tinyint(1) NOT NULL DEFAULT '0',
  `enable` tinyint(1) NOT NULL DEFAULT '0',
  `admin` tinyint(1) NOT NULL DEFAULT '0',
  `alternate_name` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `death_date` date DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `job_title` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_email` (`email`),
  UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'toughjjh@gmail.com','정종호','image_large.jpg','깨끗한 웹세상을 꿈꾸는 웹프로그래머 잠자는-사자입니다.','$2a$10$h/KwdQkAX9nnPq.IYKCkQeBW9V5CuCVD9iM5OZYCEsiponJAR/7Im',NULL,NULL,NULL,46,'2014-07-10 12:49:14','2014-07-05 02:20:25','127.0.0.1','14.33.114.236',1,0,1,'잠자는-사자','남자',NULL,NULL,'http://www.sleepinglion.pe.kr','웹프로그래머');
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

-- Dump completed on 2014-11-27 17:50:11
