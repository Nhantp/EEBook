-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: eebook
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `blog`
--

DROP TABLE IF EXISTS `blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `content` text,
  `create_at` datetime DEFAULT NULL,
  `description` text,
  `title` varchar(255) DEFAULT NULL,
  `image_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKeh12tt593aj2kqpwf2m3vet9j` (`image_id`),
  KEY `FKpxk2jtysqn41oop7lvxcp6dqq` (`user_id`),
  CONSTRAINT `FKeh12tt593aj2kqpwf2m3vet9j` FOREIGN KEY (`image_id`) REFERENCES `image` (`id`),
  CONSTRAINT `FKpxk2jtysqn41oop7lvxcp6dqq` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog`
--

LOCK TABLES `blog` WRITE;
/*!40000 ALTER TABLE `blog` DISABLE KEYS */;
INSERT INTO `blog` VALUES (1,'Mỗi ngày thức dậy, bạn đã nhận được vô số \"món quà\" từ cuộc sống. Đó là ánh bình minh rực rỡ, tiếng chim hót líu lo, nụ hoa hé nở hay nụ cười của người thân yêu. Hãy dành thời gian để cảm nhận những điều bình dị ấy, bạn sẽ nhận ra cuộc sống này đẹp và đáng yêu biết bao.','2024-03-06 14:44:02','Blog này chia sẻ những câu chuyện, bài viết về những \"món quà\" cuộc sống ban tặng cho mỗi người. Đó có thể là những điều bình dị, nhỏ bé nhưng ẩn chứa nhiều yêu thương, hay những bài học quý giá giúp ta trưởng thành. Blog cũng sẽ gợi ý cách trân trọng từng khoảnh khắc, biến khó khăn thành cơ hội và lan tỏa yêu thương đến mọi người xung quanh','Quà tặng cuộc sống: Những điều bình dị ẩn chứa yêu thương',23,1),(2,'\"Thời gian là vàng bạc\" - câu nói ấy luôn đúng trong mọi hoàn cảnh. Cuộc sống của mỗi người là một hành trình ngắn ngủi, và mỗi khoảnh khắc trôi qua đều là một món quà quý giá mà cuộc sống ban tặng.\n\nNhưng tiếc thay, nhiều người trong chúng ta lại không biết trân trọng từng giây phút hiện tại. Chúng ta mải mê chạy theo những mục tiêu xa vời, lo lắng về tương lai hay nuối tiếc quá khứ mà quên đi rằng chính hiện tại mới là điều quan trọng nhất.\n\nHãy thử dành một chút thời gian để suy ngẫm về điều này:\n\nBạn đã bao giờ hối hận vì đã lãng phí thời gian cho những việc vô bổ?\nBạn đã bao giờ mong muốn được quay ngược thời gian để sửa chữa những lỗi lầm?\nThay vì hối tiếc hay lo lắng, hãy học cách trân trọng từng khoảnh khắc hiện tại. Hãy sống hết mình cho từng giây phút, bởi bạn không bao giờ biết được điều gì sẽ xảy ra trong tương lai','2024-03-06 14:46:55','Thời gian là thứ không thể níu giữ. Mỗi khoảnh khắc trôi qua đều là một món quà quý giá mà cuộc sống ban tặng. Bài viết này sẽ giúp bạn hiểu được tầm quan trọng của việc trân trọng từng giây phút hiện tại.','Trân trọng từng khoảnh khắc - Quà tặng quý giá nhất của cuộc sống',24,1),(3,'Bộ não là cơ quan kỳ diệu nhất trong cơ thể con người. Nó điều khiển mọi hoạt động của cơ thể, từ suy nghĩ, cảm xúc đến hành động. Tuy nhiên, chúng ta chỉ sử dụng một phần nhỏ tiềm năng của não bộ.\n\nBài viết này sẽ giúp bạn:\n\nHiểu rõ hơn về cấu tạo và chức năng của não bộ.\nKhám phá những bí quyết giúp tăng cường trí nhớ và khả năng tập trung.\nÁp dụng các phương pháp khoa học để khai phá tiềm năng của não bộ.','2024-03-06 14:48:49','Bạn có muốn sở hữu trí nhớ siêu phàm và khả năng tập trung cao độ? Hãy khám phá những bí mật về não bộ và học cách khai phá tiềm năng vô hạn của nó trong bài viết này.','Giải mã bí mật não bộ: Tăng cường trí nhớ và khả năng tập trung',25,1),(4,'Học tiếng Anh không khó như bạn tưởng! Hãy bỏ qua những phương pháp truyền thống nhàm chán và áp dụng những bí kíp học tập mới mẻ, hiệu quả:\n\nXác định mục tiêu học tập rõ ràng và cụ thể.\nLựa chọn phương pháp học phù hợp với bản thân.\nTạo môi trường học tập tiếng Anh xung quanh bạn.\nLuyện tập thường xuyên và kiên trì.','2024-03-06 14:49:37','Tiếng Anh là ngôn ngữ toàn cầu, mở ra cánh cửa đến với nhiều cơ hội mới. Bài viết này sẽ chia sẻ bí kíp giúp bạn chinh phục tiếng Anh một cách nhanh chóng và hiệu quả.','Chinh phục tiếng Anh: Bí kíp học nhanh và hiệu quả',26,1),(5,'Tìm bạn bốn phương là một cách tuyệt vời để mở rộng mối quan hệ và kết nối với những người có cùng sở thích, đam mê. Blog Tìm bạn bốn phương sẽ giúp bạn:\n\nChia sẻ thông tin về bản thân và sở thích của bạn.\nTìm kiếm những người bạn mới từ khắp mọi miền đất nước.\nTham gia các hoạt động chung và tạo dựng những mối quan hệ ý nghĩa.','2024-03-06 14:51:06','Bạn đang tìm kiếm những người bạn mới từ khắp mọi miền đất nước? Blog Tìm bạn bốn phương sẽ giúp bạn kết nối với những người có cùng sở thích, đam mê và tạo dựng những mối quan hệ ý nghĩa.','Tìm bạn bốn phương: Kết nối tri kỷ, mở rộng mối quan hệ',27,1),(6,'Làm quen và kết bạn với một người bạn bốn phương online có thể gặp nhiều khó khăn. Tuy nhiên, với những bí quyết sau đây, bạn sẽ dễ dàng \"cưa đổ\" crush online của mình:\n\nTạo ấn tượng tốt đẹp với profile thu hút.\nKhởi động cuộc trò chuyện một cách tự nhiên và thú vị.\nDuy trì liên lạc và thể hiện sự quan tâm chân thành.\nGặp gỡ trực tiếp để xác định mối quan hệ.','2024-03-06 14:51:35','Bạn muốn làm quen và kết bạn với một người bạn bốn phương online? Blog Tìm bạn bốn phương sẽ chia sẻ bí quyết giúp bạn \"cưa đổ\" crush online một cách hiệu quả.','Bí quyết \"cưa đổ\" bạn bốn phương online',28,1);
/*!40000 ALTER TABLE `blog` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-13 15:24:57
