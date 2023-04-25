CREATE DATABASE  IF NOT EXISTS `store` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `store`;
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: store
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cat_id` int NOT NULL,
  `brand_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int NOT NULL,
  `quantity` int NOT NULL,
  `status` enum('còn hàng','hết hàng','hàng sắp về') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `product_ibfk_1_idx` (`brand_id`) /*!80000 INVISIBLE */,
  KEY `product_ibfk_2_idx` (`cat_id`),
  CONSTRAINT `products_ibfk_1` FOREIGN KEY (`brand_id`) REFERENCES `tbl_brand` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `products_ibfk_2` FOREIGN KEY (`cat_id`) REFERENCES `tbl_category` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,15,9,'Quần jeans nữ Skinny ALE 60104SK','SID52819',479000,10,'còn hàng','<ul> <li style=\"text-align: justify\"> <strong>Quần jeans nữ Skinny ALE 60104SK </strong>được thiết kế với kiểu dáng ống ôm thanh lịch, luôn được các bạn gái yêu thích trong mọi phong cách thời trang </li> <li style=\"text-align: justify\"> Quần có phối túi hai bên và phía sau tiện dụng cho bạn gái đựng những món cần thiết như điện thoại, tiền, giấy tờ,... </li> <li style=\"text-align: justify\"> Sản phẩm được thiết kế dáng trơn đơn giản phối thêm những mảng sáng tối độc đáo tạo nét cá tính rất riêng của con gái </li> <li style=\"text-align: justify\"> Màu xanh tươi sáng, nhẹ nhàng mà thanh lịch thời trang dễ phối đồ, tạo nhiều style cá tính riêng cho người mặc </li> <li style=\"text-align: justify\"> Chất liệu jean dày dặn, bền chắc cho bạn yên tâm khi hoạt động mạnh, có khả năng thấm hút mồ hôi </li> <li style=\"text-align: justify\"> Bạn có thể tạo nhiều phong cách riêng khi kết hợp với áo thun, áo croptop, áo sơ mi cột eo, phụ kiện,... </li> </ul>','public/uploads/jeans1.jpg','Chất liệu jean dày dặn, bền chắc cho bạn yên tâm khi hoạt động mạnh, có khả năng thấm hút mồ hôi. Thiết kế với kiểu dáng ống ôm thanh lịch, luôn được các bạn gái yêu thích trong mọi phong cách thời trang '),(2,15,9,'Quần jeans nữ phây sơn ALE 60209SK','SID52818',539000,5,'còn hàng','<ul> <li style=\"text-align: justify\"> <strong>Quần jeans nữ phây sơn ALE 60209SK </strong>được thiết kế với kiểu dáng ống ôm thanh lịch, luôn được các bạn gái yêu thích trong mọi phong cách thời trang </li> <li style=\"text-align: justify\"> Quần có phối túi hai bên và phía sau tiện dụng cho bạn gái đựng những món cần thiết như điện thoại, tiền, giấy tờ,... </li> <li style=\"text-align: justify\"> Nhấn nhá thêm phần wash xước cá tính cùng phây sơn màu khác nhau độc đáo, cực phong cách và sành điệu </li> <li style=\"text-align: justify\"> Màu xanh tươi sáng, nhẹ nhàng mà thanh lịch thời trang dễ phối đồ, tạo nhiều style cá tính riêng cho người mặc </li> <li style=\"text-align: justify\"> Chất liệu jean dày dặn, bền chắc cho bạn yên tâm khi hoạt động mạnh, có khả năng thấm hút mồ hôi </li> <li style=\"text-align: justify\"> Bạn có thể tạo nhiều phong cách riêng khi kết hợp với áo thun, áo croptop, áo sơ mi cột eo, phụ kiện,... </li> </ul>','public/uploads/jeans2.jpg','Chất liệu jean dày dặn, bền chắc cho bạn yên tâm khi hoạt động mạnh, có khả năng thấm hút mồ hôi. Thiết kế với kiểu dáng ống ôm thanh lịch, luôn được các bạn gái yêu thích trong mọi phong cách thời trang '),(3,15,10,'Quần Jean nữ ECO Jeans classic037M2','SID56851',299000,10,'còn hàng','<ul> <li style=\"text-align: justify\"> <strong>Quần jeans nữ phây sơn ALE 60209SK </strong>được thiết kế với kiểu dáng ống ôm thanh lịch, luôn được các bạn gái yêu thích trong mọi phong cách thời trang </li> <li style=\"text-align: justify\"> Quần có phối túi hai bên và phía sau tiện dụng cho bạn gái đựng những món cần thiết như điện thoại, tiền, giấy tờ,... </li> <li style=\"text-align: justify\"> Nhấn nhá thêm phần wash xước cá tính cùng phây sơn màu khác nhau độc đáo, cực phong cách và sành điệu </li> <li style=\"text-align: justify\"> Màu xanh tươi sáng, nhẹ nhàng mà thanh lịch thời trang dễ phối đồ, tạo nhiều style cá tính riêng cho người mặc </li> <li style=\"text-align: justify\"> Chất liệu jean dày dặn, bền chắc cho bạn yên tâm khi hoạt động mạnh, có khả năng thấm hút mồ hôi </li> <li style=\"text-align: justify\"> Bạn có thể tạo nhiều phong cách riêng khi kết hợp với áo thun, áo croptop, áo sơ mi cột eo, phụ kiện,... </li> </ul>','public/uploads/jeans3.jpg','Chất liệu jean dày dặn, bền chắc cho bạn yên tâm khi hoạt động mạnh, có khả năng thấm hút mồ hôi. Thiết kế với kiểu dáng ống ôm thanh lịch, luôn được các bạn gái yêu thích trong mọi phong cách thời trang'),(4,15,10,'Quần short Jean nữ ECOJEANS J-033-M2','SID39433',205000,5,'còn hàng','<ul> <li style=\"text-align: justify\"> <strong>Quần jeans nữ phây sơn ALE 60209SK </strong>được thiết kế với kiểu dáng ống ôm thanh lịch, luôn được các bạn gái yêu thích trong mọi phong cách thời trang </li> <li style=\"text-align: justify\"> Quần có phối túi hai bên và phía sau tiện dụng cho bạn gái đựng những món cần thiết như điện thoại, tiền, giấy tờ,... </li> <li style=\"text-align: justify\"> Nhấn nhá thêm phần wash xước cá tính cùng phây sơn màu khác nhau độc đáo, cực phong cách và sành điệu </li> <li style=\"text-align: justify\"> Màu xanh tươi sáng, nhẹ nhàng mà thanh lịch thời trang dễ phối đồ, tạo nhiều style cá tính riêng cho người mặc </li> <li style=\"text-align: justify\"> Chất liệu jean dày dặn, bền chắc cho bạn yên tâm khi hoạt động mạnh, có khả năng thấm hút mồ hôi </li> <li style=\"text-align: justify\"> Bạn có thể tạo nhiều phong cách riêng khi kết hợp với áo thun, áo croptop, áo sơ mi cột eo, phụ kiện,... </li> </ul>','public/uploads/jeans4.jpg','Chất liệu jean bền đẹp, chắc chắn, tạo cảm giác thoải mái, tự tin khi mặc. Thiết kế kiểu dáng thời trang, mang đến phong cách trẻ trung, năng động cho bạn gái khi mặc đi chơi, tự tin khoe cá tính.'),(5,15,11,'Quần jean nữ IMAGINE U wash bạc','SID37680',299000,20,'còn hàng','<ul> <li style=\"text-align: justify\"> <strong>Quần jeans nữ phây sơn ALE 60209SK </strong>được thiết kế với kiểu dáng ống ôm thanh lịch, luôn được các bạn gái yêu thích trong mọi phong cách thời trang </li> <li style=\"text-align: justify\"> Quần có phối túi hai bên và phía sau tiện dụng cho bạn gái đựng những món cần thiết như điện thoại, tiền, giấy tờ,... </li> <li style=\"text-align: justify\"> Nhấn nhá thêm phần wash xước cá tính cùng phây sơn màu khác nhau độc đáo, cực phong cách và sành điệu </li> <li style=\"text-align: justify\"> Màu xanh tươi sáng, nhẹ nhàng mà thanh lịch thời trang dễ phối đồ, tạo nhiều style cá tính riêng cho người mặc </li> <li style=\"text-align: justify\"> Chất liệu jean dày dặn, bền chắc cho bạn yên tâm khi hoạt động mạnh, có khả năng thấm hút mồ hôi </li> <li style=\"text-align: justify\"> Bạn có thể tạo nhiều phong cách riêng khi kết hợp với áo thun, áo croptop, áo sơ mi cột eo, phụ kiện,... </li> </ul>','public/uploads/jeans5.jpg','Chất liệu jean bền đẹp, có độ co giãn nhẹ, thấm hút mồ hôi tốt. Thiết kế ống ôm đẹp mắt tôn đôi chân thon gọn của phái đẹp. '),(6,15,11,'Quần Jean nữ IMAGINE U thời trang','SID34608',299000,15,'còn hàng','<ul><li><strong>Quần Jean nữ IMAGINE U thời trang</strong>&nbsp;thiết kế đơn giản, nhưng hiện đại&nbsp;mang đến sự trẻ trung, năng động cho người mặc.</li><li>Sản phẩm được thiết kế kiểu ống ôm đẹp mắt tôn&nbsp;đôi chân thon gọn của phái đẹp</li><li>Hai túi trước và sau đầy tiện lợi cùng những chiếc nút nổi kiểu dáng lạ mắt giúp tôn thêm giá trị sản phẩm.</li><li>Quần với kiểu dáng đơn giản, đường may chỉ nổi thời thượng</li><li>Màu sắc xanh jean đẹp mắt, có thể phối với nhiều trang phục khác nhau</li><li>Chất liệu jean có độ co giãn nhẹ, thấm hút tốt.</li></ul>','public/uploads/jeans6.jpg','Chất liệu jean có độ co giãn nhẹ, thấm hút tốt. Thiết kế đơn giản, nhưng hiện đại với kiểu ống ôm mang đến sự trẻ trung, năng động cho người mặc. '),(7,16,10,'Áo thun nữ cổ tròn ngắn tay in chữ ECO JEAN','SID59236',225000,5,'còn hàng','<ul><li><strong>Áo thun nữ cổ tròn ngắn tay in chữ ECO JEAN&nbsp;</strong>với thiết kế cố tròn, tay ngắn cho phái đẹp thêm năng động, phong cách</li><li>Áo in chữ nổi cách điệu nổi bật đem đến sự khỏe khắn nhưng cũng không kém phần dịu dàng nữ tính</li><li>Đường may tỉ mì, chắc chắn cho bạn một form áo đẹp, thoải mái tham gia các hoạt động</li><li>Có nhiều màu sắc cho bạn lựa chọn theo sở thích và dễ dàng kết hợp với nhiều trang phục khác</li><li>Chất liệu cotton co giãn, thấm hút tốt đem lại cảm giác thông thoáng và thoải mái cho người mặc</li><li>Mix cùng quần jean, chân váy, thêm phụ kiện thời trang như túi xách, giày cao gót…cho bạn một set đồ hoàn hảo</li></ul>','public/uploads/tshirt1.jpg','Chất liệu cotton êm ái, mềm mịn thấm hút mồ hôi tốt, thoáng mát. Thiết kế cổ tròn xinh xắn, tay ngắn mang lại cho bạn gái sự tự tin và năng động khi điện trong các hoạt động.'),(8,16,12,'Áo thun Girl Printed CAN DE BLANC H17F1024','SID66751',710000,10,'còn hàng','<ul><li><strong>Áo thun Girl Printed CAN DE BLANC H17F1024&nbsp;</strong>với thiết kế cố tròn, tay ngắn cho phái đẹp thêm năng động, phong cách</li><li>Áo in hình cô gái nổi bật đem đến sự khỏe khắn nhưng cũng không kém phần dịu dàng nữ tính, thời trang</li><li>Đường may tỉ mì, chắc chắn cho bạn một form áo đẹp, thoải mái tham gia các hoạt động</li><li>Có màu trắng và đen cho bạn lựa chọn theo sở thích và dễ dàng kết hợp với nhiều trang phục khác</li><li>Chất liệu cotton co giãn, thấm hút tốt đem lại cảm giác thông thoáng và thoải mái cho người mặc</li><li>Mix cùng quần jean, chân váy, thêm phụ kiện thời trang như túi xách, giày cao gót…cho bạn một set đồ hoàn hảo</li></ul>','public/uploads/tshirt2.jpg','Chất liệu cotton êm ái, mềm mịn thấm hút mồ hôi tốt, thoáng mát. Thiết kế cổ tròn xinh xắn, tay ngắn cùng họa tiết cô gái độc đáo mang đến nét sành điệu, năng động, trẻ trung cho các bạn gái'),(10,16,12,'Combo 2 áo thun Can De Blanc T1059','SID54624',520000,5,'còn hàng','<ul><li><strong>Combo 2 áo&nbsp;thun Can De Blanc T1059</strong><strong> </strong>có thiết kế cổ tròn xinh xắn, tay ngắn mang lại cho bạn gái sự tự tin và năng động khi điện trong các hoạt động&nbsp;</li><li>Form dáng áo rộng rãi, thoáng mát, năng động cho bạn gái thêm phong cách và thời trang khi phối cùng item khác</li><li>Áo được thiết kế đơn giản, nhấn nhá thêm những họa tiết back to chilhood cùng những khối hình học sắc màu độc đáo</li><li>Sắc trắng tinh khôi, xinh xắn đầy thanh lịch, dễ dàng để bạn gái chọn lựa theo sở thích và phong cách của mình</li><li>Chất liệu cotton êm ái, mềm mịn mà lại thoáng mát tuyệt đối cho bạn yên tâm khi sử dụng sản phẩm&nbsp;</li><li>Kết hợp cùng các item thời trang từ năng động, trẻ trung như quần short, quần jean đến các item điệu đà như chân váy&nbsp;</li></ul>','public/uploads/tshirt3.jpg','Chất liệu cotton êm ái, mềm mịn mà lại thoáng mát tuyệt đối cho bạn yên tâm khi sử dụng sản phẩm. Thiết kế cổ tròn xinh xắn, tay ngắn mang lại cho bạn gái sự tự tin và năng động khi điện trong các hoạt động.'),(11,16,13,'Áo thun nữ Benplay hoa tuyết','SID38813',149000,10,'còn hàng','<ul><li><strong>Áo thun nữ Benplay hoa tuyết</strong>&nbsp;với thiết kế thể thao, cổ bẻ gài nút, tay ngắn, mang đến phong cách khỏe khoắn, năng động</li><li>Phối in hoa 1 bên áo, tạo điểm nhấn nổi bật cho sản phẩm,&nbsp;cho bạn thêm phần trẻ trung, duyên dáng</li><li>Phù hợp mặc khi tham gia các hoạt động&nbsp;thể dục thể thao, du lịch, đi chơi, hay mặc nhà...</li><li>Chất liệu cotton co giãn 4 chiều, thấm hút mồ hôi tốt, mang lại cảm giác thoải mái, linh hoạt khi vận động</li></ul>','public/uploads/tshirt4.jpg','Chất liệu cotton êm ái, mềm mịn mà lại thoáng mát tuyệt đối cho bạn yên tâm khi sử dụng sản phẩm. Thiết kế cổ tròn xinh xắn, tay ngắn mang lại cho bạn gái sự tự tin và năng động khi điện trong các hoạt động.'),(12,17,10,'Áo thun nam cổ tròn ngắn tay ECO JEAN','SID59266',225000,5,'còn hàng','<ul><li><strong>Áo thun nam cổ tròn ngắn tay ECO JEAN&nbsp;</strong>với thiết kế cổ tròn, tay ngắn cho phái mạnh vẻ ngoài năng động, cá tính</li><li>Form áo ôm vừa vặn thoải mái khi mặc chơi thể thao hay các hoạt động mang lại sự tự tin cho phái mạnh</li><li>Chữ in nổi bật trên nền trắng đầy lôi cuốn, tạo gu thời trang cá tính cho phái nam</li><li>Màu trắng đầy lịch lãm, dễ phối đồ, rất cuốn hút khi mặc vận động thể thao hay đi chơi</li><li>Chất liệu cotton mềm mại, thoáng mát, thấm hút tốt, không lo hầm bí khi mặc, cho phái mạnh thêm thoải mái khi vận động</li><li>Kết hợp hài hòa được với các trang phục từ bụi bặm cá tính như quần short, quần jean đến những phong cách đơn giản cổ điển như quần tây quần kaki,..</li></ul>','public/uploads/tshirt5.jpg','Chất liệu cotton mềm mại, thoáng mát, thấm hút tốt, không lo hầm bí khi mặc, cho phái mạnh thêm thoải mái khi vận động. Thiết kế cổ tròn, tay ngắn cho phái mạnh vẻ ngoài năng động, cá tính'),(13,17,10,'Áo thun nam cổ tròn in hình ECO JEAN','SID63186',235000,10,'còn hàng','<ul><li><strong>Áo thun nam cổ tròn in hình ECO JEAN&nbsp;</strong>với thiết kế cổ tròn, tay ngắn năng động mang đến vẻ ngoài cá tính, phong cách, cá tính</li><li>Áo một màu trơn đơn giản cùng phối họa tiết phía trước mới lạ và nổi bật, tạo điểm nhấn ấn tượng cho sản phẩm</li><li>Đường chỉ may chắc chắn cho phái mạnh thoải mái di chuyển và tham gia các hoạt động ngoài trời lẫn trong nhà</li><li>Áo có nhiều màu cho bạn thoải mái lựa chọn theo sở thích cũng như gu thời trang của mình</li><li>Chất liệu cotton co giãn vừa, thấm hút mồ hôi tốt tạo cảm giác thoải mái và thông thoáng cho người mặc</li><li>Với chiếc áo đầy phong cách này, bạn tha hồ mix cùng quần jean, quần short, kết hợp thêm các phụ kiện như đồng hồ, balo…đều phù hợp</li></ul>','public/uploads/tshirt6.jpg','Chất liệu cotton giãn vừa, thấm hút mồ hôi tốt, thoáng mát tạo cảm giác thoải mái cho người mặc. Thiết kế cổ tròn, tay ngắn năng động mang đến vẻ ngoài cá tính, phong cách cho phái mạnh thêm cá tính'),(14,17,10,'Áo thun nam cổ tim ECO JEAN','SID62562',299000,5,'còn hàng','<ul><li><strong>Áo thun nam cổ tim ECO JEAN</strong>&nbsp;với thiết kế cổ tim, tay ngắn năng động mang đến vẻ ngoài cá tính, phong cách cho phái mạnh thêm cá tính</li><li>Áo một màu trơn đơn giản cùng phối phía trước mới lạ và nổi bật, tạo điểm nhấn ấn tượng cho sản phẩm</li><li>Đường chỉ may chắc chắn cho phái mạnh thoải mái di chuyển và tham gia các hoạt động ngoài trời lẫn trong nhà</li><li>Áo có nhiều màu cho bạn thoải mái lựa chọn theo sở thích cũng như gu thời trang của mình</li><li>Chất liệu cotton co giãn vừa, thấm hút mồ hôi tốt tạo cảm giác thoải mái và thông thoáng cho người mặc</li><li>Với chiếc áo đầy phong cách này, bạn tha hồ mix cùng quần jean, quần short, kết hợp thêm các phụ kiện như đồng hồ, balo…đều phù hợp</li></ul>','public/uploads/tshirt7.jpg','Chất liệu cotton giãn vừa, thấm hút mồ hôi tốt, thoáng mát tạo cảm giác thoải mái cho người mặc. Thiết kế cổ tim, tay ngắn năng động mang đến vẻ ngoài cá tính, phong cách cho phái mạnh thêm cá tính'),(15,17,10,'Áo thun nam cổ trụ trơn ngắn tay ECO JEAN','SID59202',299000,10,'còn hàng','<ul><li><strong>Áo thun nam cổ trụ trơn ngắn tay ECO JEAN</strong> thiết kế cổ trụ, tay ngắn đơn giản cho phái mạnh thêm phong cách, cá tính</li><li>Áo với một màu trơn đơn giản, họa tiết một bên ngực nổi bật tạo điểm nhấn ấn tượng</li><li>Màu sắc xanh, nâu tươi trẻ giúp bạn phối được với nhiều loại trang phục tùy theo sở thích</li><li>Chất liệu cotton thấm hút tốt, hút ẩm, giảm nhiệt và làm mát cơ thể cho phái nam thoải mái tham gia các hoạt động</li><li>Với chiếc áo đầy phong cách này, bạn tha hồ mix cùng quần jean, quần short, kết hợp thêm các phụ kiện như đồng hồ, balo…đều phù hợp</li></ul>','public/uploads/tshirt8.jpg','Chất liệu cotton giãn vừa, thấm hút mồ hôi tốt, thoáng mát tạo cảm giác thoải mái cho người mặc. Thiết kế cổ tim, tay ngắn năng động mang đến vẻ ngoài cá tính, phong cách cho phái mạnh thêm cá tính'),(16,18,9,'Quần jeans nam rách cá tính ALE 61183LSK','SID53528',589000,5,'còn hàng','<ul><li><strong>Quần jeans nam rách cá tính ALE 61183LSK </strong>được thiết kế với kiểu dáng thanh lịch, form dài, ống suông thời trang cho bạn nam thỏa sức thể hiện phong cách</li><li>Quần có phối túi hai bên và phía sau tiện dụng cho bạn cất giữ những món cần thiết như điện thoại, tiền, giấy tờ,...</li><li>Phối màu đậm nhạt đầy tinh tế cùng wash rách đẹp mắt tạo nên phong cách chất lừ, bụi bặm của các chàng trai</li><li>Màu xanh đen và xanh thanh lịch, nhẹ nhàng dễ dàng kết hợp cùng những item khác cho bạn nam thêm phong cách</li><li>Chất liệu jean bền đẹp, thấm hút mồ hôi tốt, thoáng mát cho phái mạnh thêm thoải mái và tự tin khi sử dụng sản phẩm</li><li>Bạn có thể tạo nhiều phong cách riêng khi kết hợp với áo thun, áo sơ mi,…để thêm phong cách cá tính và lịch lãm</li></ul>','public/uploads/jeans7.jpg','Chất liệu jean bền đẹp, thấm hút mồ hôi tốt, thoáng mát cho phái mạnh thêm thoải mái và tự tin khi sử dụng sản phẩm. Thiết kế với kiểu dáng thanh lịch, form dài, ống suông thời trang cho bạn nam thêm phong cách'),(17,18,10,'Quần short jean nam Eco JM001-M1','SID33891',259000,10,'còn hàng','<ul><li><strong>Quần short jean nam Eco JM001-M1</strong>&nbsp;với thiết kế kiểu quần short mang đến phong cách trẻ trung, năng động, mặc thoải mái</li><li>Túi quần được thiết kế tinh tế, đẹp mắt vừa tiện dụng vừa tăng vẻ thời trang cho chiếc quần</li><li>Phối viền chỉ màu nổi bật, tạo điểm nhấn cho sản phẩm, cho bạn thêm cá tính, mạnh mẽ</li><li>Đường may chắc chắn giúp bạn an tâm sử dụng, cho mọi hoạt động của bạn thêm tự tin, thoải mái. &nbsp;</li><li>Màu sắc trơn đơn giản nhưng thời trang, tôn lên vẻ nam tính. &nbsp;</li><li>Chất liệu jean bền đẹp, mang đến phong cách khỏe khoắn, năng động</li></ul>','public/uploads/jeans8.jpg','Chất liệu jean bền đẹp, mang đến phong cách khỏe khoắn, năng động. Thiết kế kiểu quần short mang đến phong cách trẻ trung, năng động, mặc thoải mái'),(18,18,11,'Quần jean nam IMAGINE U phối xước 014','SID49900',395000,5,'còn hàng','<ul><li style=\"text-align: justify;\"><strong>Quần jean nam IMAGINE U phối xước 014 </strong>được thiết kế với kiểu dáng thanh lịch, form dài, ống suông thời trang cho bạn nam thỏa sức diện, tự tin thể hiện bản thân</li><li style=\"text-align: justify;\">Quần có phối túi hai bên và phía sau tiện dụng cho bạn cất giữ những món cần thiết như điện thoại, tiền, giấy tờ,...</li><li style=\"text-align: justify;\">Phối xước đầy tinh tế và đẹp mắt tạo nên nét cá tính, cùng phọng cách chất lừ, bụi bặm của các chàng trai khi khoác lên người</li><li style=\"text-align: justify;\">Đường may chắc chắn, tinh xảo tạo thêm điểm nhấn ấn tượng cho sản phẩm, nút gài và khóa kéo chắc chắn giúp bạn an tâm khi sử dụng</li><li style=\"text-align: justify;\">Có ba mau xanh, xanh dương và xanh đen thanh lịch&nbsp;cho bạn lựa chọn theo sở thích tạo sự cá tính cho người mặc</li><li style=\"text-align: justify;\">Chất liệu jean bền đẹp, thấm hút mồ hôi tốt, thoáng mát khi sử dụng</li><li style=\"text-align: justify;\">Bạn có thể tạo nhiều phong cách riêng khi kết hợp với áo thun, áo tank top, áo sơ mi hay những món phụ kiện,...</li></ul>','public/uploads/jeans9.jpg','Chất liệu jean bền đẹp, thấm hút mồ hôi tốt, thoáng mát khi sử dụng. Thiết kế với kiểu dáng thanh lịch, form dài, ống suông thời trang cho bạn nam thỏa sức diện, tự tin thể hiện bản thân'),(19,18,9,'Quần jeans nam cổ điển ALE 61175LSK','SID52869',569000,15,'còn hàng','<ul><li style=\"text-align: justify;\"><strong>Quần jeans nam cổ điển ALE 61175LSK&nbsp;</strong>được thiết kế với kiểu dáng thanh lịch, form dài, ống suông thời trang cho bạn nam thỏa sức thể hiện phong cách</li><li style=\"text-align: justify;\">Quần có phối túi hai bên và phía sau tiện dụng cho bạn cất giữ những món cần thiết như điện thoại, tiền, giấy tờ,...</li><li style=\"text-align: justify;\">Phối màu đậm nhạt đầy tinh tế và đẹp mắt tạo nên nét cá tính, cùng phong cách chất lừ, bụi bặm của các chàng trai khi khoác lên người</li><li style=\"text-align: justify;\">Màu xanh thanh lịch, nhẹ nhàng dễ dàng kết hợp cùng những item khác cho bạn nam thêm phong cách</li><li style=\"text-align: justify;\">Chất liệu jean bền đẹp, thấm hút mồ hôi tốt, thoáng mát cho phái mạnh thêm thoải mái và tự tin khi sử dụng sản phẩm</li><li style=\"text-align: justify;\">Bạn có thể tạo nhiều phong cách riêng khi kết hợp với áo thun, áo sơ mi,…để thêm phong cách cá tính và lịch lãm</li></ul>','public/uploads/jeans10.jpg','Chất liệu jean bền đẹp, thấm hút mồ hôi tốt, thoáng mát cho phái mạnh thêm thoải mái và tự tin khi sử dụng sản phẩm. Thiết kế với kiểu dáng thanh lịch, form dài, ống suông thời trang cho bạn nam thêm phong cách'),(20,18,11,'Quần Jean nam Imagine U phong cách','SID36470',375000,10,'còn hàng','<ul><li><strong>Quần Jean nam Imagine U phong cách</strong>&nbsp;kiểu dáng đơn giản&nbsp;mang đến cho phái mạnh phong cách năng động, trẻ trung.</li><li>Thiết kế ống đứng thanh lịch, 2 túi trước và 2 túi sau đơn giản, nhưng đặc biệt không bao giờ lỗi thời, là kiểu trang phục &nbsp;mà các chàng trai hiện đại ưa chuộng, đem lại vẻ năng động, cá tính cho phái mạnh.</li><li>Form dáng suông khỏe khoắn, năng động, tôn lên vẻ đẹp nam tính và mạnh mẽ cho các chàng trai.</li><li>Quần có đường may sắc sảo, đẹp mắt, tỉ mỉ trong từng chi tiết, có chạy chỉ màu cách điệu tạo nét tinh tế cho chiếc quần thêm thời trang.</li><li>Màu sắc xanh trẻ trung, thể hiện được sự nam tính của phái mạnh</li><li>Quần Jeans được may bởi chất liệu vải jeans mềm mịn, thoáng mát, có chất lượng cao, co giãn tốt giúp bền màu quần và không bị biến dạng sau khi giặt.</li></ul>','public/uploads/jeans11.jpg','Chất liêu vải jeans mềm mịn, thoáng mát, có chất lượng cao, co giãn tốt giúp bền màu quần. Thiết kế đơn giản mang đến cho phái mạnh phong cách năng động, trẻ trung.');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_admin`
--

DROP TABLE IF EXISTS `tbl_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_admin` (
  `admin_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fullname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('admin','sale','manager') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_admin`
--

LOCK TABLES `tbl_admin` WRITE;
/*!40000 ALTER TABLE `tbl_admin` DISABLE KEYS */;
INSERT INTO `tbl_admin` VALUES (1,'admin','21232f297a57a5a743894a0e4a801fc3','Admin PTN','smartshopPTN@gmail.com','0387503640','Kí túc xá Khu A\r\n','admin','2022-05-30 08:03:27'),(999,'host','host','Admin PTN','smartshopPTN@gmail.com','0387503640','Kí túc xá Khu A','admin','2022-12-11 08:06:04');
/*!40000 ALTER TABLE `tbl_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_blog`
--

DROP TABLE IF EXISTS `tbl_blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_blog` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=171 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_blog`
--

LOCK TABLES `tbl_blog` WRITE;
/*!40000 ALTER TABLE `tbl_blog` DISABLE KEYS */;
INSERT INTO `tbl_blog` VALUES (170,'QUEEN LUXURY','<div dir=\"auto\" style=\"text-align: justify;\">Trong nhịp sống hiện đại, ăn mặc kh&ocirc;ng chỉ dừng lại ở quần hay &aacute;o, mỗi bộ đồ n&agrave;ng kho&aacute;c l&ecirc;n m&igrave;nh ch&iacute;nh l&agrave; tuy&ecirc;n ng&ocirc;n về địa vị x&atilde; hội, tr&igrave;nh độ tư duy, gu thẩm mỹ của bản th&acirc;n.</div>\r\n\r\n<div dir=\"auto\" style=\"text-align: justify;\"><strong>QUEEN LUXURY</strong> l&agrave; lời tuy&ecirc;n ng&ocirc;n đầy ki&ecirc;u sa của n&agrave;ng. Được may đo tỉ mỉ tr&ecirc;n nền chất liệu Saphia cao cấp, <strong>QUEEN LUXURY</strong> ho&agrave;n th&agrave;nh xuất sắc sứ mệnh t&ocirc;n vinh v&oacute;c d&aacute;ng v&agrave; thần th&aacute;i tuyệt đẹp của qu&yacute; c&ocirc;. Những hạt đ&aacute; cực sang trọng được điểm xuyết đầy tinh tế sẽ điểm nhất đầy m&ecirc; hoặc của si&ecirc;u phẩm n&agrave;y</div>\r\n\r\n<div dir=\"auto\" style=\"text-align: justify;\">Truyền trải trọn vẹn tinh thần thời trang vượt mọi giới hạn, <strong>QUEEN LUXURY</strong> kh&eacute;o l&eacute;o lồng gh&eacute;p chi tiết tay &aacute;o hết sức cổ điển, kết hợp với t&ugrave;ng đầm đắp ch&eacute;o lạ mắt tr&ecirc;n nền đơn sắc kinh điển, tạo n&ecirc;n vẻ đẹp thời thượng, sang trọng, say đắm v&agrave; hiện đại trong c&ugrave;ng một thiết kế</div>\r\n\r\n<div dir=\"auto\" style=\"text-align: justify;\"><strong>QUEEN LUXURY</strong> mang theo n&eacute;t đẹp ki&ecirc;u kỳ v&agrave; sang trọng trong từng chuyển động của n&agrave;ng, để n&agrave;ng trở n&ecirc;n nổi bật tại bất cứ nơi n&agrave;o n&agrave;ng gh&eacute; qua!</div>\r\n\r\n<p>&nbsp;</p>\r\n','admin','25/04/2023','<p>Giới thiệu về queen luxury</p>\r\n','public/uploads/queenluxury.jpg');
/*!40000 ALTER TABLE `tbl_blog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_brand`
--

DROP TABLE IF EXISTS `tbl_brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_brand` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_brand`
--

LOCK TABLES `tbl_brand` WRITE;
/*!40000 ALTER TABLE `tbl_brand` DISABLE KEYS */;
INSERT INTO `tbl_brand` VALUES (9,'ALE JEANS','### ALE JEANS ###','public/uploads/alejeans.jpg','<p>No description </p>','24/4/2023','admin'),(10,'Eco Jean','### Eco Jean ###','public/uploads/ecojean.jpg','<p>No description </p>','24/4/2023','admin'),(11,'IMAGINE U','### IMAGINE U ###','public/uploads/imagineu.jpg','<p>No description </p>','24/4/2023','admin'),(12,'CAN DE BLANC','### CAN DE BLANC ###','public/uploads/candeblanc.jpg','<p>No description </p>','24/4/2023','admin'),(13,'ALX','### ALX ###','public/uploads/alx.png','<p>No description </p>','24/4/2023','admin'),(14,'Kmode','### Kmode ###','public/uploads/kmode.jpg','<p>no description</p>\r\n','25/04/2023','admin');
/*!40000 ALTER TABLE `tbl_brand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_cart`
--

DROP TABLE IF EXISTS `tbl_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_cart` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_customer` int NOT NULL,
  `total_num` int NOT NULL,
  `total_price` float NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_customer` (`id_customer`),
  CONSTRAINT `tbl_cart_ibfk_1` FOREIGN KEY (`id_customer`) REFERENCES `tbl_customer` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_cart`
--

LOCK TABLES `tbl_cart` WRITE;
/*!40000 ALTER TABLE `tbl_cart` DISABLE KEYS */;
INSERT INTO `tbl_cart` VALUES (15,16,0,0);
/*!40000 ALTER TABLE `tbl_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_category`
--

DROP TABLE IF EXISTS `tbl_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_category`
--

LOCK TABLES `tbl_category` WRITE;
/*!40000 ALTER TABLE `tbl_category` DISABLE KEYS */;
INSERT INTO `tbl_category` VALUES (15,'Jean Nữ','###  Female Jean ###','public/uploads/fjeans.jpg','<p>No desscription </p>','24/4/2023','admin'),(16,'Áo Thun Nữ','###  Female T-Shirt ###','public/uploads/ftshirt.jpg','<p>No desscription </p>','24/4/2023','admin'),(17,'Áo Thun Nam','###  Male T-Shirt  ###','public/uploads/mtshirt.jpg','<p>No desscription </p>','25/4/2023','admin'),(18,'Jean Nam','###  Male Jeans  ###','public/uploads/mjeans.jpg','<p>No desscription </p>','25/4/2023','admin'),(19,'Váy nữ','### Female Skirt ###','public/uploads/fskirt.jpg','<p>no description</p>\r\n','25/04/2023','admin');
/*!40000 ALTER TABLE `tbl_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_comment`
--

DROP TABLE IF EXISTS `tbl_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_comment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `product_id` int NOT NULL,
  `comment` varchar(3000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `refer` int NOT NULL,
  `create_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `customer_id` (`customer_id`),
  KEY `tbl_comment_ibfk_2` (`product_id`),
  CONSTRAINT `tbl_comment_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `tbl_customer` (`id`) ON DELETE CASCADE,
  CONSTRAINT `tbl_comment_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_comment`
--

LOCK TABLES `tbl_comment` WRITE;
/*!40000 ALTER TABLE `tbl_comment` DISABLE KEYS */;
INSERT INTO `tbl_comment` VALUES (87,16,1,'Nụ cười ươm đầy nắng, ánh mắt dư ngọt ngào. Nếu như tim cậu còn vắng, cho tớ vô với nào. Cùng (Tên shop) xâm nhập vào trái tim crush nào cô gái nhỏ ơi!!!',-1,'25/04/2023');
/*!40000 ALTER TABLE `tbl_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_customer`
--

DROP TABLE IF EXISTS `tbl_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_customer` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fullname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_customer`
--

LOCK TABLES `tbl_customer` WRITE;
/*!40000 ALTER TABLE `tbl_customer` DISABLE KEYS */;
INSERT INTO `tbl_customer` VALUES (16,'taikhoan1','e10adc3949ba59abbe56e057f20f883e','Tai Khoan 1','taikhoan1@gmail.com','0935888101','KTX khu A dai hoc quoc gia, Linh Trung, Thu Duc, TPHCM','05/12/2022'),(17,'taikhoan2','e10adc3949ba59abbe56e057f20f883e','Tai Khoan 2','taikhoan2@gmail.com','0935888102','KTX khu A dai hoc quoc gia, Linh Trung, Thu Duc, TPHCM','05/12/2022'),(18,'taikhoan3','e10adc3949ba59abbe56e057f20f883e','Tai Khoan 3','taikhoan3@gmail.com','0935888103','KTX khu A dai hoc quoc gia, Linh Trung, Thu Duc, TPHCM','05/12/2022'),(19,'taikhoan4','e10adc3949ba59abbe56e057f20f883e','Tai Khoan 4','taikhoan4@gmail.com','0935888104','KTX khu A dai hoc quoc gia, Linh Trung, Thu Duc, TPHCM','05/12/2022'),(20,'taikhoan5','e10adc3949ba59abbe56e057f20f883e','Tai Khoan 5','taikhoan5@gmail.com','0935888105','KTX khu A dai hoc quoc gia, Linh Trung, Thu Duc, TPHCM','05/12/2022'),(21,'taikhoan6','e10adc3949ba59abbe56e057f20f883e','Tai Khoan 6','taikhoan6@gmail.com','0935888106','KTX khu A dai hoc quoc gia, Linh Trung, Thu Duc, TPHCM','05/12/2022'),(22,'taikhoan7','e10adc3949ba59abbe56e057f20f883e','Tai Khoan 7','taikhoan7@gmail.com','0935888107','KTX khu A dai hoc quoc gia, Linh Trung, Thu Duc, TPHCM','05/12/2022'),(23,'taikhoan8','e10adc3949ba59abbe56e057f20f883e','Tai Khoan 8','taikhoan8@gmail.com','0935888108','KTX khu A dai hoc quoc gia, Linh Trung, Thu Duc, TPHCM','05/12/2022'),(24,'taikhoan9','e10adc3949ba59abbe56e057f20f883e','Tai Khoan 9','taikhoan9@gmail.com','0935888109','KTX khu A dai hoc quoc gia, Linh Trung, Thu Duc, TPHCM','05/12/2022'),(25,'taikhoan10','e10adc3949ba59abbe56e057f20f883e','Tai Khoan 10','taikhoan10@gmail.com','0935888110','KTX khu A dai hoc quoc gia, Linh Trung, Thu Duc, TPHCM','05/12/2022');
/*!40000 ALTER TABLE `tbl_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_detail_cart`
--

DROP TABLE IF EXISTS `tbl_detail_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_detail_cart` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_cart` int NOT NULL,
  `id_product` int NOT NULL,
  `num_total` int NOT NULL,
  `sub_total_price` float NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_cart` (`id_cart`),
  KEY `tbl_detail_cart_ibfk_2` (`id_product`),
  CONSTRAINT `tbl_detail_cart_ibfk_1` FOREIGN KEY (`id_cart`) REFERENCES `tbl_cart` (`id`) ON DELETE CASCADE,
  CONSTRAINT `tbl_detail_cart_ibfk_2` FOREIGN KEY (`id_product`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_detail_cart`
--

LOCK TABLES `tbl_detail_cart` WRITE;
/*!40000 ALTER TABLE `tbl_detail_cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_detail_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_detail_order`
--

DROP TABLE IF EXISTS `tbl_detail_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_detail_order` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_order` int NOT NULL,
  `id_product` int NOT NULL,
  `qty` int NOT NULL,
  `sub_total_price` float NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_order` (`id_order`),
  KEY `tbl_detail_order_ibfk_1` (`id_product`),
  CONSTRAINT `tbl_detail_order_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `tbl_detail_order_ibfk_2` FOREIGN KEY (`id_order`) REFERENCES `tbl_order` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_detail_order`
--

LOCK TABLES `tbl_detail_order` WRITE;
/*!40000 ALTER TABLE `tbl_detail_order` DISABLE KEYS */;
INSERT INTO `tbl_detail_order` VALUES (39,28,1,1,479000),(40,28,3,1,299000),(41,29,1,2,958000);
/*!40000 ALTER TABLE `tbl_detail_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_order`
--

DROP TABLE IF EXISTS `tbl_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_order` (
  `id` int NOT NULL AUTO_INCREMENT,
  `custom_id` int NOT NULL,
  `total_price` float NOT NULL,
  `total_num_product` int NOT NULL,
  `create_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Thành công','Chờ xác nhận','Hủy','') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_cart` int NOT NULL,
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_confirm` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_cart` (`id_cart`),
  KEY `tbl_order_ibfk_1` (`custom_id`),
  CONSTRAINT `tbl_order_ibfk_1` FOREIGN KEY (`custom_id`) REFERENCES `tbl_customer` (`id`) ON DELETE CASCADE,
  CONSTRAINT `tbl_order_ibfk_2` FOREIGN KEY (`id_cart`) REFERENCES `tbl_cart` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_order`
--

LOCK TABLES `tbl_order` WRITE;
/*!40000 ALTER TABLE `tbl_order` DISABLE KEYS */;
INSERT INTO `tbl_order` VALUES (28,16,778000,2,'25/04/2023','','card_payment','Chờ xác nhận',15,'1682448361','taikhoan1(1682448361)',NULL),(29,16,958000,2,'25/04/2023','','card_payment','Chờ xác nhận',15,'1682449283','taikhoan1(1682449283)',NULL);
/*!40000 ALTER TABLE `tbl_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_product`
--

DROP TABLE IF EXISTS `tbl_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_category` int NOT NULL,
  `id_brand` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` float NOT NULL,
  `promotional_price` float NOT NULL,
  `quantity` int NOT NULL,
  `status` enum('còn hàng','hết hàng','hàng sắp về') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `screen` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ram` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `cpu` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `memory` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `operating_system` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `front_camera` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rear_camera` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` enum('hot','normal','discount') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_brand` (`id_brand`),
  KEY `id_category` (`id_category`),
  CONSTRAINT `tbl_product_ibfk_1` FOREIGN KEY (`id_brand`) REFERENCES `tbl_brand` (`id`) ON DELETE CASCADE,
  CONSTRAINT `tbl_product_ibfk_2` FOREIGN KEY (`id_category`) REFERENCES `tbl_category` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_product`
--

LOCK TABLES `tbl_product` WRITE;
/*!40000 ALTER TABLE `tbl_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_slider`
--

DROP TABLE IF EXISTS `tbl_slider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_slider` (
  `id` int NOT NULL AUTO_INCREMENT,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('dọc','ngang') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_slider`
--

LOCK TABLES `tbl_slider` WRITE;
/*!40000 ALTER TABLE `tbl_slider` DISABLE KEYS */;
INSERT INTO `tbl_slider` VALUES (9,'public/uploads/slider1.jpg','admin','27/11/2022','ngang'),(10,'public/uploads/slider2.jpg','admin','27/11/2022','ngang'),(11,'public/uploads/slider3.jpg','admin','27/11/2022','ngang');
/*!40000 ALTER TABLE `tbl_slider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_store_info`
--

DROP TABLE IF EXISTS `tbl_store_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_store_info` (
  `id` int NOT NULL,
  `address` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_store_info`
--

LOCK TABLES `tbl_store_info` WRITE;
/*!40000 ALTER TABLE `tbl_store_info` DISABLE KEYS */;
INSERT INTO `tbl_store_info` VALUES (1,'đại học Bách Khoa','123456789','hcmut@gmail.com');
/*!40000 ALTER TABLE `tbl_store_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'store'
--

--
-- Dumping routines for database 'store'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-26  2:08:02
