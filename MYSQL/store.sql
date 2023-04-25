-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 25, 2023 at 06:14 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `store`
--
CREATE DATABASE IF NOT EXISTS `store` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `store`;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(45) NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `status` enum('còn hàng','hết hàng','hàng sắp về') NOT NULL,
  `detail` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `product_ibfk_1_idx` (`brand_id`),
  KEY `product_ibfk_2_idx` (`cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `cat_id`, `brand_id`, `name`, `code`, `price`, `quantity`, `status`, `detail`, `image`, `description`) VALUES
(1, 15, 9, 'Quần jeans nữ Skinny ALE 60104SK', 'SID52819', 479000, 10, 'còn hàng', '<ul> <li style=\"text-align: justify\"> <strong>Quần jeans nữ Skinny ALE 60104SK </strong>được thiết kế với kiểu dáng ống ôm thanh lịch, luôn được các bạn gái yêu thích trong mọi phong cách thời trang </li> <li style=\"text-align: justify\"> Quần có phối túi hai bên và phía sau tiện dụng cho bạn gái đựng những món cần thiết như điện thoại, tiền, giấy tờ,... </li> <li style=\"text-align: justify\"> Sản phẩm được thiết kế dáng trơn đơn giản phối thêm những mảng sáng tối độc đáo tạo nét cá tính rất riêng của con gái </li> <li style=\"text-align: justify\"> Màu xanh tươi sáng, nhẹ nhàng mà thanh lịch thời trang dễ phối đồ, tạo nhiều style cá tính riêng cho người mặc </li> <li style=\"text-align: justify\"> Chất liệu jean dày dặn, bền chắc cho bạn yên tâm khi hoạt động mạnh, có khả năng thấm hút mồ hôi </li> <li style=\"text-align: justify\"> Bạn có thể tạo nhiều phong cách riêng khi kết hợp với áo thun, áo croptop, áo sơ mi cột eo, phụ kiện,... </li> </ul>', 'public/uploads/jeans1.jpg', 'Chất liệu jean dày dặn, bền chắc cho bạn yên tâm khi hoạt động mạnh, có khả năng thấm hút mồ hôi. Thiết kế với kiểu dáng ống ôm thanh lịch, luôn được các bạn gái yêu thích trong mọi phong cách thời trang '),
(2, 15, 9, 'Quần jeans nữ phây sơn ALE 60209SK', 'SID52818', 539000, 5, 'còn hàng', '<ul> <li style=\"text-align: justify\"> <strong>Quần jeans nữ phây sơn ALE 60209SK </strong>được thiết kế với kiểu dáng ống ôm thanh lịch, luôn được các bạn gái yêu thích trong mọi phong cách thời trang </li> <li style=\"text-align: justify\"> Quần có phối túi hai bên và phía sau tiện dụng cho bạn gái đựng những món cần thiết như điện thoại, tiền, giấy tờ,... </li> <li style=\"text-align: justify\"> Nhấn nhá thêm phần wash xước cá tính cùng phây sơn màu khác nhau độc đáo, cực phong cách và sành điệu </li> <li style=\"text-align: justify\"> Màu xanh tươi sáng, nhẹ nhàng mà thanh lịch thời trang dễ phối đồ, tạo nhiều style cá tính riêng cho người mặc </li> <li style=\"text-align: justify\"> Chất liệu jean dày dặn, bền chắc cho bạn yên tâm khi hoạt động mạnh, có khả năng thấm hút mồ hôi </li> <li style=\"text-align: justify\"> Bạn có thể tạo nhiều phong cách riêng khi kết hợp với áo thun, áo croptop, áo sơ mi cột eo, phụ kiện,... </li> </ul>', 'public/uploads/jeans2.jpg', 'Chất liệu jean dày dặn, bền chắc cho bạn yên tâm khi hoạt động mạnh, có khả năng thấm hút mồ hôi. Thiết kế với kiểu dáng ống ôm thanh lịch, luôn được các bạn gái yêu thích trong mọi phong cách thời trang '),
(3, 15, 10, 'Quần Jean nữ ECO Jeans classic037M2', 'SID56851', 299000, 10, 'còn hàng', '<ul> <li style=\"text-align: justify\"> <strong>Quần jeans nữ phây sơn ALE 60209SK </strong>được thiết kế với kiểu dáng ống ôm thanh lịch, luôn được các bạn gái yêu thích trong mọi phong cách thời trang </li> <li style=\"text-align: justify\"> Quần có phối túi hai bên và phía sau tiện dụng cho bạn gái đựng những món cần thiết như điện thoại, tiền, giấy tờ,... </li> <li style=\"text-align: justify\"> Nhấn nhá thêm phần wash xước cá tính cùng phây sơn màu khác nhau độc đáo, cực phong cách và sành điệu </li> <li style=\"text-align: justify\"> Màu xanh tươi sáng, nhẹ nhàng mà thanh lịch thời trang dễ phối đồ, tạo nhiều style cá tính riêng cho người mặc </li> <li style=\"text-align: justify\"> Chất liệu jean dày dặn, bền chắc cho bạn yên tâm khi hoạt động mạnh, có khả năng thấm hút mồ hôi </li> <li style=\"text-align: justify\"> Bạn có thể tạo nhiều phong cách riêng khi kết hợp với áo thun, áo croptop, áo sơ mi cột eo, phụ kiện,... </li> </ul>', 'public/uploads/jeans3.jpg', 'Chất liệu jean dày dặn, bền chắc cho bạn yên tâm khi hoạt động mạnh, có khả năng thấm hút mồ hôi. Thiết kế với kiểu dáng ống ôm thanh lịch, luôn được các bạn gái yêu thích trong mọi phong cách thời trang'),
(4, 15, 10, 'Quần short Jean nữ ECOJEANS J-033-M2', 'SID39433', 205000, 5, 'còn hàng', '<ul> <li style=\"text-align: justify\"> <strong>Quần jeans nữ phây sơn ALE 60209SK </strong>được thiết kế với kiểu dáng ống ôm thanh lịch, luôn được các bạn gái yêu thích trong mọi phong cách thời trang </li> <li style=\"text-align: justify\"> Quần có phối túi hai bên và phía sau tiện dụng cho bạn gái đựng những món cần thiết như điện thoại, tiền, giấy tờ,... </li> <li style=\"text-align: justify\"> Nhấn nhá thêm phần wash xước cá tính cùng phây sơn màu khác nhau độc đáo, cực phong cách và sành điệu </li> <li style=\"text-align: justify\"> Màu xanh tươi sáng, nhẹ nhàng mà thanh lịch thời trang dễ phối đồ, tạo nhiều style cá tính riêng cho người mặc </li> <li style=\"text-align: justify\"> Chất liệu jean dày dặn, bền chắc cho bạn yên tâm khi hoạt động mạnh, có khả năng thấm hút mồ hôi </li> <li style=\"text-align: justify\"> Bạn có thể tạo nhiều phong cách riêng khi kết hợp với áo thun, áo croptop, áo sơ mi cột eo, phụ kiện,... </li> </ul>', 'public/uploads/jeans4.jpg', 'Chất liệu jean bền đẹp, chắc chắn, tạo cảm giác thoải mái, tự tin khi mặc. Thiết kế kiểu dáng thời trang, mang đến phong cách trẻ trung, năng động cho bạn gái khi mặc đi chơi, tự tin khoe cá tính.'),
(5, 15, 11, 'Quần jean nữ IMAGINE U wash bạc', 'SID37680', 299000, 20, 'còn hàng', '<ul> <li style=\"text-align: justify\"> <strong>Quần jeans nữ phây sơn ALE 60209SK </strong>được thiết kế với kiểu dáng ống ôm thanh lịch, luôn được các bạn gái yêu thích trong mọi phong cách thời trang </li> <li style=\"text-align: justify\"> Quần có phối túi hai bên và phía sau tiện dụng cho bạn gái đựng những món cần thiết như điện thoại, tiền, giấy tờ,... </li> <li style=\"text-align: justify\"> Nhấn nhá thêm phần wash xước cá tính cùng phây sơn màu khác nhau độc đáo, cực phong cách và sành điệu </li> <li style=\"text-align: justify\"> Màu xanh tươi sáng, nhẹ nhàng mà thanh lịch thời trang dễ phối đồ, tạo nhiều style cá tính riêng cho người mặc </li> <li style=\"text-align: justify\"> Chất liệu jean dày dặn, bền chắc cho bạn yên tâm khi hoạt động mạnh, có khả năng thấm hút mồ hôi </li> <li style=\"text-align: justify\"> Bạn có thể tạo nhiều phong cách riêng khi kết hợp với áo thun, áo croptop, áo sơ mi cột eo, phụ kiện,... </li> </ul>', 'public/uploads/jeans5.jpg', 'Chất liệu jean bền đẹp, có độ co giãn nhẹ, thấm hút mồ hôi tốt. Thiết kế ống ôm đẹp mắt tôn đôi chân thon gọn của phái đẹp. '),
(6, 15, 11, 'Quần Jean nữ IMAGINE U thời trang', 'SID34608', 299000, 15, 'còn hàng', '<ul><li><strong>Quần Jean nữ IMAGINE U thời trang</strong>&nbsp;thiết kế đơn giản, nhưng hiện đại&nbsp;mang đến sự trẻ trung, năng động cho người mặc.</li><li>Sản phẩm được thiết kế kiểu ống ôm đẹp mắt tôn&nbsp;đôi chân thon gọn của phái đẹp</li><li>Hai túi trước và sau đầy tiện lợi cùng những chiếc nút nổi kiểu dáng lạ mắt giúp tôn thêm giá trị sản phẩm.</li><li>Quần với kiểu dáng đơn giản, đường may chỉ nổi thời thượng</li><li>Màu sắc xanh jean đẹp mắt, có thể phối với nhiều trang phục khác nhau</li><li>Chất liệu jean có độ co giãn nhẹ, thấm hút tốt.</li></ul>', 'public/uploads/jeans6.jpg', 'Chất liệu jean có độ co giãn nhẹ, thấm hút tốt. Thiết kế đơn giản, nhưng hiện đại với kiểu ống ôm mang đến sự trẻ trung, năng động cho người mặc. '),
(7, 16, 10, 'Áo thun nữ cổ tròn ngắn tay in chữ ECO JEAN', 'SID59236', 225000, 5, 'còn hàng', '<ul><li><strong>Áo thun nữ cổ tròn ngắn tay in chữ ECO JEAN&nbsp;</strong>với thiết kế cố tròn, tay ngắn cho phái đẹp thêm năng động, phong cách</li><li>Áo in chữ nổi cách điệu nổi bật đem đến sự khỏe khắn nhưng cũng không kém phần dịu dàng nữ tính</li><li>Đường may tỉ mì, chắc chắn cho bạn một form áo đẹp, thoải mái tham gia các hoạt động</li><li>Có nhiều màu sắc cho bạn lựa chọn theo sở thích và dễ dàng kết hợp với nhiều trang phục khác</li><li>Chất liệu cotton co giãn, thấm hút tốt đem lại cảm giác thông thoáng và thoải mái cho người mặc</li><li>Mix cùng quần jean, chân váy, thêm phụ kiện thời trang như túi xách, giày cao gót…cho bạn một set đồ hoàn hảo</li></ul>', 'public/uploads/tshirt1.jpg', 'Chất liệu cotton êm ái, mềm mịn thấm hút mồ hôi tốt, thoáng mát. Thiết kế cổ tròn xinh xắn, tay ngắn mang lại cho bạn gái sự tự tin và năng động khi điện trong các hoạt động.'),
(8, 16, 12, 'Áo thun Girl Printed CAN DE BLANC H17F1024', 'SID66751', 710000, 10, 'còn hàng', '<ul><li><strong>Áo thun Girl Printed CAN DE BLANC H17F1024&nbsp;</strong>với thiết kế cố tròn, tay ngắn cho phái đẹp thêm năng động, phong cách</li><li>Áo in hình cô gái nổi bật đem đến sự khỏe khắn nhưng cũng không kém phần dịu dàng nữ tính, thời trang</li><li>Đường may tỉ mì, chắc chắn cho bạn một form áo đẹp, thoải mái tham gia các hoạt động</li><li>Có màu trắng và đen cho bạn lựa chọn theo sở thích và dễ dàng kết hợp với nhiều trang phục khác</li><li>Chất liệu cotton co giãn, thấm hút tốt đem lại cảm giác thông thoáng và thoải mái cho người mặc</li><li>Mix cùng quần jean, chân váy, thêm phụ kiện thời trang như túi xách, giày cao gót…cho bạn một set đồ hoàn hảo</li></ul>', 'public/uploads/tshirt2.jpg', 'Chất liệu cotton êm ái, mềm mịn thấm hút mồ hôi tốt, thoáng mát. Thiết kế cổ tròn xinh xắn, tay ngắn cùng họa tiết cô gái độc đáo mang đến nét sành điệu, năng động, trẻ trung cho các bạn gái'),
(10, 16, 12, 'Combo 2 áo thun Can De Blanc T1059', 'SID54624', 520000, 5, 'còn hàng', '<ul><li><strong>Combo 2 áo&nbsp;thun Can De Blanc T1059</strong><strong> </strong>có thiết kế cổ tròn xinh xắn, tay ngắn mang lại cho bạn gái sự tự tin và năng động khi điện trong các hoạt động&nbsp;</li><li>Form dáng áo rộng rãi, thoáng mát, năng động cho bạn gái thêm phong cách và thời trang khi phối cùng item khác</li><li>Áo được thiết kế đơn giản, nhấn nhá thêm những họa tiết back to chilhood cùng những khối hình học sắc màu độc đáo</li><li>Sắc trắng tinh khôi, xinh xắn đầy thanh lịch, dễ dàng để bạn gái chọn lựa theo sở thích và phong cách của mình</li><li>Chất liệu cotton êm ái, mềm mịn mà lại thoáng mát tuyệt đối cho bạn yên tâm khi sử dụng sản phẩm&nbsp;</li><li>Kết hợp cùng các item thời trang từ năng động, trẻ trung như quần short, quần jean đến các item điệu đà như chân váy&nbsp;</li></ul>', 'public/uploads/tshirt3.jpg', 'Chất liệu cotton êm ái, mềm mịn mà lại thoáng mát tuyệt đối cho bạn yên tâm khi sử dụng sản phẩm. Thiết kế cổ tròn xinh xắn, tay ngắn mang lại cho bạn gái sự tự tin và năng động khi điện trong các hoạt động.'),
(11, 16, 13, 'Áo thun nữ Benplay hoa tuyết', 'SID38813', 149000, 10, 'còn hàng', '<ul><li><strong>Áo thun nữ Benplay hoa tuyết</strong>&nbsp;với thiết kế thể thao, cổ bẻ gài nút, tay ngắn, mang đến phong cách khỏe khoắn, năng động</li><li>Phối in hoa 1 bên áo, tạo điểm nhấn nổi bật cho sản phẩm,&nbsp;cho bạn thêm phần trẻ trung, duyên dáng</li><li>Phù hợp mặc khi tham gia các hoạt động&nbsp;thể dục thể thao, du lịch, đi chơi, hay mặc nhà...</li><li>Chất liệu cotton co giãn 4 chiều, thấm hút mồ hôi tốt, mang lại cảm giác thoải mái, linh hoạt khi vận động</li></ul>', 'public/uploads/tshirt4.jpg', 'Chất liệu cotton êm ái, mềm mịn mà lại thoáng mát tuyệt đối cho bạn yên tâm khi sử dụng sản phẩm. Thiết kế cổ tròn xinh xắn, tay ngắn mang lại cho bạn gái sự tự tin và năng động khi điện trong các hoạt động.'),
(12, 17, 10, 'Áo thun nam cổ tròn ngắn tay ECO JEAN', 'SID59266', 225000, 5, 'còn hàng', '<ul><li><strong>Áo thun nam cổ tròn ngắn tay ECO JEAN&nbsp;</strong>với thiết kế cổ tròn, tay ngắn cho phái mạnh vẻ ngoài năng động, cá tính</li><li>Form áo ôm vừa vặn thoải mái khi mặc chơi thể thao hay các hoạt động mang lại sự tự tin cho phái mạnh</li><li>Chữ in nổi bật trên nền trắng đầy lôi cuốn, tạo gu thời trang cá tính cho phái nam</li><li>Màu trắng đầy lịch lãm, dễ phối đồ, rất cuốn hút khi mặc vận động thể thao hay đi chơi</li><li>Chất liệu cotton mềm mại, thoáng mát, thấm hút tốt, không lo hầm bí khi mặc, cho phái mạnh thêm thoải mái khi vận động</li><li>Kết hợp hài hòa được với các trang phục từ bụi bặm cá tính như quần short, quần jean đến những phong cách đơn giản cổ điển như quần tây quần kaki,..</li></ul>', 'public/uploads/tshirt5.jpg', 'Chất liệu cotton mềm mại, thoáng mát, thấm hút tốt, không lo hầm bí khi mặc, cho phái mạnh thêm thoải mái khi vận động. Thiết kế cổ tròn, tay ngắn cho phái mạnh vẻ ngoài năng động, cá tính'),
(13, 17, 10, 'Áo thun nam cổ tròn in hình ECO JEAN', 'SID63186', 235000, 10, 'còn hàng', '<ul><li><strong>Áo thun nam cổ tròn in hình ECO JEAN&nbsp;</strong>với thiết kế cổ tròn, tay ngắn năng động mang đến vẻ ngoài cá tính, phong cách, cá tính</li><li>Áo một màu trơn đơn giản cùng phối họa tiết phía trước mới lạ và nổi bật, tạo điểm nhấn ấn tượng cho sản phẩm</li><li>Đường chỉ may chắc chắn cho phái mạnh thoải mái di chuyển và tham gia các hoạt động ngoài trời lẫn trong nhà</li><li>Áo có nhiều màu cho bạn thoải mái lựa chọn theo sở thích cũng như gu thời trang của mình</li><li>Chất liệu cotton co giãn vừa, thấm hút mồ hôi tốt tạo cảm giác thoải mái và thông thoáng cho người mặc</li><li>Với chiếc áo đầy phong cách này, bạn tha hồ mix cùng quần jean, quần short, kết hợp thêm các phụ kiện như đồng hồ, balo…đều phù hợp</li></ul>', 'public/uploads/tshirt6.jpg', 'Chất liệu cotton giãn vừa, thấm hút mồ hôi tốt, thoáng mát tạo cảm giác thoải mái cho người mặc. Thiết kế cổ tròn, tay ngắn năng động mang đến vẻ ngoài cá tính, phong cách cho phái mạnh thêm cá tính'),
(14, 17, 10, 'Áo thun nam cổ tim ECO JEAN', 'SID62562', 299000, 5, 'còn hàng', '<ul><li><strong>Áo thun nam cổ tim ECO JEAN</strong>&nbsp;với thiết kế cổ tim, tay ngắn năng động mang đến vẻ ngoài cá tính, phong cách cho phái mạnh thêm cá tính</li><li>Áo một màu trơn đơn giản cùng phối phía trước mới lạ và nổi bật, tạo điểm nhấn ấn tượng cho sản phẩm</li><li>Đường chỉ may chắc chắn cho phái mạnh thoải mái di chuyển và tham gia các hoạt động ngoài trời lẫn trong nhà</li><li>Áo có nhiều màu cho bạn thoải mái lựa chọn theo sở thích cũng như gu thời trang của mình</li><li>Chất liệu cotton co giãn vừa, thấm hút mồ hôi tốt tạo cảm giác thoải mái và thông thoáng cho người mặc</li><li>Với chiếc áo đầy phong cách này, bạn tha hồ mix cùng quần jean, quần short, kết hợp thêm các phụ kiện như đồng hồ, balo…đều phù hợp</li></ul>', 'public/uploads/tshirt7.jpg', 'Chất liệu cotton giãn vừa, thấm hút mồ hôi tốt, thoáng mát tạo cảm giác thoải mái cho người mặc. Thiết kế cổ tim, tay ngắn năng động mang đến vẻ ngoài cá tính, phong cách cho phái mạnh thêm cá tính'),
(15, 17, 10, 'Áo thun nam cổ trụ trơn ngắn tay ECO JEAN', 'SID59202', 299000, 10, 'còn hàng', '<ul><li><strong>Áo thun nam cổ trụ trơn ngắn tay ECO JEAN</strong> thiết kế cổ trụ, tay ngắn đơn giản cho phái mạnh thêm phong cách, cá tính</li><li>Áo với một màu trơn đơn giản, họa tiết một bên ngực nổi bật tạo điểm nhấn ấn tượng</li><li>Màu sắc xanh, nâu tươi trẻ giúp bạn phối được với nhiều loại trang phục tùy theo sở thích</li><li>Chất liệu cotton thấm hút tốt, hút ẩm, giảm nhiệt và làm mát cơ thể cho phái nam thoải mái tham gia các hoạt động</li><li>Với chiếc áo đầy phong cách này, bạn tha hồ mix cùng quần jean, quần short, kết hợp thêm các phụ kiện như đồng hồ, balo…đều phù hợp</li></ul>', 'public/uploads/tshirt8.jpg', 'Chất liệu cotton giãn vừa, thấm hút mồ hôi tốt, thoáng mát tạo cảm giác thoải mái cho người mặc. Thiết kế cổ tim, tay ngắn năng động mang đến vẻ ngoài cá tính, phong cách cho phái mạnh thêm cá tính'),
(16, 18, 9, 'Quần jeans nam rách cá tính ALE 61183LSK', 'SID53528', 589000, 5, 'còn hàng', '<ul><li><strong>Quần jeans nam rách cá tính ALE 61183LSK </strong>được thiết kế với kiểu dáng thanh lịch, form dài, ống suông thời trang cho bạn nam thỏa sức thể hiện phong cách</li><li>Quần có phối túi hai bên và phía sau tiện dụng cho bạn cất giữ những món cần thiết như điện thoại, tiền, giấy tờ,...</li><li>Phối màu đậm nhạt đầy tinh tế cùng wash rách đẹp mắt tạo nên phong cách chất lừ, bụi bặm của các chàng trai</li><li>Màu xanh đen và xanh thanh lịch, nhẹ nhàng dễ dàng kết hợp cùng những item khác cho bạn nam thêm phong cách</li><li>Chất liệu jean bền đẹp, thấm hút mồ hôi tốt, thoáng mát cho phái mạnh thêm thoải mái và tự tin khi sử dụng sản phẩm</li><li>Bạn có thể tạo nhiều phong cách riêng khi kết hợp với áo thun, áo sơ mi,…để thêm phong cách cá tính và lịch lãm</li></ul>', 'public/uploads/jeans7.jpg', 'Chất liệu jean bền đẹp, thấm hút mồ hôi tốt, thoáng mát cho phái mạnh thêm thoải mái và tự tin khi sử dụng sản phẩm. Thiết kế với kiểu dáng thanh lịch, form dài, ống suông thời trang cho bạn nam thêm phong cách'),
(17, 18, 10, 'Quần short jean nam Eco JM001-M1', 'SID33891', 259000, 10, 'còn hàng', '<ul><li><strong>Quần short jean nam Eco JM001-M1</strong>&nbsp;với thiết kế kiểu quần short mang đến phong cách trẻ trung, năng động, mặc thoải mái</li><li>Túi quần được thiết kế tinh tế, đẹp mắt vừa tiện dụng vừa tăng vẻ thời trang cho chiếc quần</li><li>Phối viền chỉ màu nổi bật, tạo điểm nhấn cho sản phẩm, cho bạn thêm cá tính, mạnh mẽ</li><li>Đường may chắc chắn giúp bạn an tâm sử dụng, cho mọi hoạt động của bạn thêm tự tin, thoải mái. &nbsp;</li><li>Màu sắc trơn đơn giản nhưng thời trang, tôn lên vẻ nam tính. &nbsp;</li><li>Chất liệu jean bền đẹp, mang đến phong cách khỏe khoắn, năng động</li></ul>', 'public/uploads/jeans8.jpg', 'Chất liệu jean bền đẹp, mang đến phong cách khỏe khoắn, năng động. Thiết kế kiểu quần short mang đến phong cách trẻ trung, năng động, mặc thoải mái'),
(18, 18, 11, 'Quần jean nam IMAGINE U phối xước 014', 'SID49900', 395000, 5, 'còn hàng', '<ul><li style=\"text-align: justify;\"><strong>Quần jean nam IMAGINE U phối xước 014 </strong>được thiết kế với kiểu dáng thanh lịch, form dài, ống suông thời trang cho bạn nam thỏa sức diện, tự tin thể hiện bản thân</li><li style=\"text-align: justify;\">Quần có phối túi hai bên và phía sau tiện dụng cho bạn cất giữ những món cần thiết như điện thoại, tiền, giấy tờ,...</li><li style=\"text-align: justify;\">Phối xước đầy tinh tế và đẹp mắt tạo nên nét cá tính, cùng phọng cách chất lừ, bụi bặm của các chàng trai khi khoác lên người</li><li style=\"text-align: justify;\">Đường may chắc chắn, tinh xảo tạo thêm điểm nhấn ấn tượng cho sản phẩm, nút gài và khóa kéo chắc chắn giúp bạn an tâm khi sử dụng</li><li style=\"text-align: justify;\">Có ba mau xanh, xanh dương và xanh đen thanh lịch&nbsp;cho bạn lựa chọn theo sở thích tạo sự cá tính cho người mặc</li><li style=\"text-align: justify;\">Chất liệu jean bền đẹp, thấm hút mồ hôi tốt, thoáng mát khi sử dụng</li><li style=\"text-align: justify;\">Bạn có thể tạo nhiều phong cách riêng khi kết hợp với áo thun, áo tank top, áo sơ mi hay những món phụ kiện,...</li></ul>', 'public/uploads/jeans9.jpg', 'Chất liệu jean bền đẹp, thấm hút mồ hôi tốt, thoáng mát khi sử dụng. Thiết kế với kiểu dáng thanh lịch, form dài, ống suông thời trang cho bạn nam thỏa sức diện, tự tin thể hiện bản thân'),
(19, 18, 9, 'Quần jeans nam cổ điển ALE 61175LSK', 'SID52869', 569000, 15, 'còn hàng', '<ul><li style=\"text-align: justify;\"><strong>Quần jeans nam cổ điển ALE 61175LSK&nbsp;</strong>được thiết kế với kiểu dáng thanh lịch, form dài, ống suông thời trang cho bạn nam thỏa sức thể hiện phong cách</li><li style=\"text-align: justify;\">Quần có phối túi hai bên và phía sau tiện dụng cho bạn cất giữ những món cần thiết như điện thoại, tiền, giấy tờ,...</li><li style=\"text-align: justify;\">Phối màu đậm nhạt đầy tinh tế và đẹp mắt tạo nên nét cá tính, cùng phong cách chất lừ, bụi bặm của các chàng trai khi khoác lên người</li><li style=\"text-align: justify;\">Màu xanh thanh lịch, nhẹ nhàng dễ dàng kết hợp cùng những item khác cho bạn nam thêm phong cách</li><li style=\"text-align: justify;\">Chất liệu jean bền đẹp, thấm hút mồ hôi tốt, thoáng mát cho phái mạnh thêm thoải mái và tự tin khi sử dụng sản phẩm</li><li style=\"text-align: justify;\">Bạn có thể tạo nhiều phong cách riêng khi kết hợp với áo thun, áo sơ mi,…để thêm phong cách cá tính và lịch lãm</li></ul>', 'public/uploads/jeans10.jpg', 'Chất liệu jean bền đẹp, thấm hút mồ hôi tốt, thoáng mát cho phái mạnh thêm thoải mái và tự tin khi sử dụng sản phẩm. Thiết kế với kiểu dáng thanh lịch, form dài, ống suông thời trang cho bạn nam thêm phong cách');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE IF NOT EXISTS `tbl_admin` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `address` varchar(255) NOT NULL,
  `role` enum('admin','sale','manager') NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `username`, `password`, `fullname`, `email`, `phone`, `address`, `role`, `create_date`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Admin PTN', 'smartshopPTN@gmail.com', '0387503640', 'Kí túc xá Khu A\r\n', 'admin', '2022-05-30 08:03:27'),
(999, 'host', 'host', 'Admin PTN', 'smartshopPTN@gmail.com', '0387503640', 'Kí túc xá Khu A', 'admin', '2022-12-11 08:06:04');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_blog`
--

CREATE TABLE IF NOT EXISTS `tbl_blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `content` text NOT NULL,
  `user` varchar(255) NOT NULL,
  `create_date` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=170 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_blog`
--

INSERT INTO `tbl_blog` (`id`, `title`, `content`, `user`, `create_date`, `description`, `image`) VALUES
(169, 'asdasdasd', '<p>dsaasd</p>\r\n', 'asdas', '12/12/2022', 'dsadad', 'public/uploads/499584.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_brand`
--

CREATE TABLE IF NOT EXISTS `tbl_brand` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `create_date` varchar(255) NOT NULL,
  `user` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_brand`
--

INSERT INTO `tbl_brand` (`id`, `name`, `code`, `image`, `description`, `create_date`, `user`) VALUES
(9, 'ALE JEANS', '### ALE JEANS ###', 'public/uploads/vertu.png', '<p>No description </p>', '24/4/2023', 'admin'),
(10, 'Eco Jean', '### Eco Jean ###', 'public/uploads/vertu.png', '<p>No description </p>', '24/4/2023', 'admin'),
(11, 'IMAGINE U', '### IMAGINE U ###', 'public/uploads/vertu.png', '<p>No description </p>', '24/4/2023', 'admin'),
(12, 'CAN DE BLANC', '### CAN DE BLANC ###', 'public/uploads/vertu.png', '<p>No description </p>', '24/4/2023', 'admin'),
(13, 'ALX', '### ALX ###', 'public/uploads/vertu.png', '<p>No description </p>', '24/4/2023', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart`
--

CREATE TABLE IF NOT EXISTS `tbl_cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_customer` int(11) NOT NULL,
  `total_num` int(11) NOT NULL,
  `total_price` float NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_customer` (`id_customer`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_cart`
--

INSERT INTO `tbl_cart` (`id`, `id_customer`, `total_num`, `total_price`) VALUES
(11, 16, 5, 1453000),
(12, 116, 1, 49990000),
(13, 999, 2, 81980000),
(14, 1000, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE IF NOT EXISTS `tbl_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `create_date` varchar(255) NOT NULL,
  `user` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `name`, `code`, `image`, `description`, `create_date`, `user`) VALUES
(15, 'Jean Nữ', '###  Female Jean ### ', 'public/uploads/jeans6.jpg', '<p>No desscription</p>\r\n', '24/4/2023', 'admin'),
(16, 'Áo Thun Nữ', '###  Female T-Shirt ###   ', 'public/uploads/tshirt3.jpg', '<p>No desscription</p>\r\n', '24/4/2023', 'admin'),
(17, 'Áo Thun Nam', '###  Male T-Shirt  ### ', 'public/uploads/tshirt8.jpg', '<p>No desscription</p>\r\n', '25/4/2023', 'admin'),
(18, 'Jean Nam', '###  Male Jeans  ### ', 'public/uploads/jeans10.jpg', '<p>No desscription</p>\r\n', '25/4/2023', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_comment`
--

CREATE TABLE IF NOT EXISTS `tbl_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `comment` varchar(3000) NOT NULL,
  `refer` int(11) NOT NULL,
  `create_date` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `customer_id` (`customer_id`),
  KEY `product_id` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE IF NOT EXISTS `tbl_customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `mail` varchar(255) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `address` text NOT NULL,
  `create_date` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`id`, `username`, `password`, `fullname`, `mail`, `phone`, `address`, `create_date`) VALUES
(16, 'taikhoan1', 'e10adc3949ba59abbe56e057f20f883e', 'Tai Khoan 1', 'taikhoan1@gmail.com', '0935888101', 'KTX khu A dai hoc quoc gia, Linh Trung, Thu Duc, TPHCM', '05/12/2022'),
(17, 'taikhoan2', 'e10adc3949ba59abbe56e057f20f883e', 'Tai Khoan 2', 'taikhoan2@gmail.com', '0935888102', 'KTX khu A dai hoc quoc gia, Linh Trung, Thu Duc, TPHCM', '05/12/2022'),
(18, 'taikhoan3', 'e10adc3949ba59abbe56e057f20f883e', 'Tai Khoan 3', 'taikhoan3@gmail.com', '0935888103', 'KTX khu A dai hoc quoc gia, Linh Trung, Thu Duc, TPHCM', '05/12/2022'),
(19, 'taikhoan4', 'e10adc3949ba59abbe56e057f20f883e', 'Tai Khoan 4', 'taikhoan4@gmail.com', '0935888104', 'KTX khu A dai hoc quoc gia, Linh Trung, Thu Duc, TPHCM', '05/12/2022'),
(20, 'taikhoan5', 'e10adc3949ba59abbe56e057f20f883e', 'Tai Khoan 5', 'taikhoan5@gmail.com', '0935888105', 'KTX khu A dai hoc quoc gia, Linh Trung, Thu Duc, TPHCM', '05/12/2022'),
(21, 'taikhoan6', 'e10adc3949ba59abbe56e057f20f883e', 'Tai Khoan 6', 'taikhoan6@gmail.com', '0935888106', 'KTX khu A dai hoc quoc gia, Linh Trung, Thu Duc, TPHCM', '05/12/2022'),
(22, 'taikhoan7', 'e10adc3949ba59abbe56e057f20f883e', 'Tai Khoan 7', 'taikhoan7@gmail.com', '0935888107', 'KTX khu A dai hoc quoc gia, Linh Trung, Thu Duc, TPHCM', '05/12/2022'),
(23, 'taikhoan8', 'e10adc3949ba59abbe56e057f20f883e', 'Tai Khoan 8', 'taikhoan8@gmail.com', '0935888108', 'KTX khu A dai hoc quoc gia, Linh Trung, Thu Duc, TPHCM', '05/12/2022'),
(24, 'taikhoan9', 'e10adc3949ba59abbe56e057f20f883e', 'Tai Khoan 9', 'taikhoan9@gmail.com', '0935888109', 'KTX khu A dai hoc quoc gia, Linh Trung, Thu Duc, TPHCM', '05/12/2022'),
(25, 'taikhoan10', 'e10adc3949ba59abbe56e057f20f883e', 'Tai Khoan 10', 'taikhoan10@gmail.com', '0935888110', 'KTX khu A dai hoc quoc gia, Linh Trung, Thu Duc, TPHCM', '05/12/2022'),
(26, 'taikhoan11', 'e10adc3949ba59abbe56e057f20f883e', 'Tai Khoan 11', 'taikhoan11@gmail.com', '0935888111', 'KTX khu A dai hoc quoc gia, Linh Trung, Thu Duc, TPHCM', '05/12/2022'),
(27, 'taikhoan12', 'e10adc3949ba59abbe56e057f20f883e', 'Tai Khoan 12', 'taikhoan12@gmail.com', '0935888112', 'KTX khu A dai hoc quoc gia, Linh Trung, Thu Duc, TPHCM', '05/12/2022'),
(28, 'taikhoan13', 'e10adc3949ba59abbe56e057f20f883e', 'Tai Khoan 13', 'taikhoan13@gmail.com', '0935888113', 'KTX khu A dai hoc quoc gia, Linh Trung, Thu Duc, TPHCM', '05/12/2022'),
(29, 'taikhoan14', 'e10adc3949ba59abbe56e057f20f883e', 'Tai Khoan 14', 'taikhoan14@gmail.com', '0935888114', 'KTX khu A dai hoc quoc gia, Linh Trung, Thu Duc, TPHCM', '05/12/2022'),
(30, 'taikhoan15', 'e10adc3949ba59abbe56e057f20f883e', 'Tai Khoan 15', 'taikhoan15@gmail.com', '0935888115', 'KTX khu A dai hoc quoc gia, Linh Trung, Thu Duc, TPHCM', '05/12/2022'),
(31, 'taikhoan16', 'e10adc3949ba59abbe56e057f20f883e', 'Tai Khoan 16', 'taikhoan16@gmail.com', '0935888116', 'KTX khu A dai hoc quoc gia, Linh Trung, Thu Duc, TPHCM', '05/12/2022'),
(32, 'taikhoan17', 'e10adc3949ba59abbe56e057f20f883e', 'Tai Khoan 17', 'taikhoan17@gmail.com', '0935888117', 'KTX khu A dai hoc quoc gia, Linh Trung, Thu Duc, TPHCM', '05/12/2022'),
(33, 'taikhoan18', 'e10adc3949ba59abbe56e057f20f883e', 'Tai Khoan 18', 'taikhoan18@gmail.com', '0935888118', 'KTX khu A dai hoc quoc gia, Linh Trung, Thu Duc, TPHCM', '05/12/2022'),
(34, 'taikhoan19', 'e10adc3949ba59abbe56e057f20f883e', 'Tai Khoan 19', 'taikhoan19@gmail.com', '0935888119', 'KTX khu A dai hoc quoc gia, Linh Trung, Thu Duc, TPHCM', '05/12/2022'),
(35, 'taikhoan20', 'e10adc3949ba59abbe56e057f20f883e', 'Tai Khoan 20', 'taikhoan20@gmail.com', '0935888120', 'KTX khu A dai hoc quoc gia, Linh Trung, Thu Duc, TPHCM', '05/12/2022'),
(36, 'taikhoan21', 'e10adc3949ba59abbe56e057f20f883e', 'Tai Khoan 21', 'taikhoan21@gmail.com', '0935888121', 'KTX khu A dai hoc quoc gia, Linh Trung, Thu Duc, TPHCM', '05/12/2022'),
(37, 'taikhoan22', 'e10adc3949ba59abbe56e057f20f883e', 'Tai Khoan 22', 'taikhoan22@gmail.com', '0935888122', 'KTX khu A dai hoc quoc gia, Linh Trung, Thu Duc, TPHCM', '05/12/2022'),
(38, 'taikhoan23', 'e10adc3949ba59abbe56e057f20f883e', 'Tai Khoan 23', 'taikhoan23@gmail.com', '0935888123', 'KTX khu A dai hoc quoc gia, Linh Trung, Thu Duc, TPHCM', '05/12/2022'),
(39, 'taikhoan24', 'e10adc3949ba59abbe56e057f20f883e', 'Tai Khoan 24', 'taikhoan24@gmail.com', '0935888124', 'KTX khu A dai hoc quoc gia, Linh Trung, Thu Duc, TPHCM', '05/12/2022'),
(40, 'taikhoan25', 'e10adc3949ba59abbe56e057f20f883e', 'Tai Khoan 25', 'taikhoan25@gmail.com', '0935888125', 'KTX khu A dai hoc quoc gia, Linh Trung, Thu Duc, TPHCM', '05/12/2022'),
(41, 'taikhoan26', 'e10adc3949ba59abbe56e057f20f883e', 'Tai Khoan 26', 'taikhoan26@gmail.com', '0935888126', 'KTX khu A dai hoc quoc gia, Linh Trung, Thu Duc, TPHCM', '05/12/2022'),
(42, 'taikhoan27', 'e10adc3949ba59abbe56e057f20f883e', 'Tai Khoan 27', 'taikhoan27@gmail.com', '0935888127', 'KTX khu A dai hoc quoc gia, Linh Trung, Thu Duc, TPHCM', '05/12/2022'),
(43, 'taikhoan28', 'e10adc3949ba59abbe56e057f20f883e', 'Tai Khoan 28', 'taikhoan28@gmail.com', '0935888128', 'KTX khu A dai hoc quoc gia, Linh Trung, Thu Duc, TPHCM', '05/12/2022'),
(44, 'taikhoan29', 'e10adc3949ba59abbe56e057f20f883e', 'Tai Khoan 29', 'taikhoan29@gmail.com', '0935888129', 'KTX khu A dai hoc quoc gia, Linh Trung, Thu Duc, TPHCM', '05/12/2022'),
(45, 'taikhoan30', 'e10adc3949ba59abbe56e057f20f883e', 'Tai Khoan 30', 'taikhoan30@gmail.com', '0935888130', 'KTX khu A dai hoc quoc gia, Linh Trung, Thu Duc, TPHCM', '05/12/2022'),
(46, 'taikhoan31', 'e10adc3949ba59abbe56e057f20f883e', 'Tai Khoan 31', 'taikhoan31@gmail.com', '0935888131', 'KTX khu A dai hoc quoc gia, Linh Trung, Thu Duc, TPHCM', '05/12/2022'),
(47, 'taikhoan32', 'e10adc3949ba59abbe56e057f20f883e', 'Tai Khoan 32', 'taikhoan32@gmail.com', '0935888132', 'KTX khu A dai hoc quoc gia, Linh Trung, Thu Duc, TPHCM', '05/12/2022'),
(48, 'taikhoan33', 'e10adc3949ba59abbe56e057f20f883e', 'Tai Khoan 33', 'taikhoan33@gmail.com', '0935888133', 'KTX khu A dai hoc quoc gia, Linh Trung, Thu Duc, TPHCM', '05/12/2022'),
(49, 'taikhoan34', 'e10adc3949ba59abbe56e057f20f883e', 'Tai Khoan 34', 'taikhoan34@gmail.com', '0935888134', 'KTX khu A dai hoc quoc gia, Linh Trung, Thu Duc, TPHCM', '05/12/2022'),
(50, 'taikhoan35', 'e10adc3949ba59abbe56e057f20f883e', 'Tai Khoan 35', 'taikhoan35@gmail.com', '0935888135', 'KTX khu A dai hoc quoc gia, Linh Trung, Thu Duc, TPHCM', '05/12/2022'),
(51, 'taikhoan36', 'e10adc3949ba59abbe56e057f20f883e', 'Tai Khoan 36', 'taikhoan36@gmail.com', '0935888136', 'KTX khu A dai hoc quoc gia, Linh Trung, Thu Duc, TPHCM', '05/12/2022'),
(52, 'taikhoan37', 'e10adc3949ba59abbe56e057f20f883e', 'Tai Khoan 37', 'taikhoan37@gmail.com', '0935888137', 'KTX khu A dai hoc quoc gia, Linh Trung, Thu Duc, TPHCM', '05/12/2022'),
(53, 'taikhoan38', 'e10adc3949ba59abbe56e057f20f883e', 'Tai Khoan 38', 'taikhoan38@gmail.com', '0935888138', 'KTX khu A dai hoc quoc gia, Linh Trung, Thu Duc, TPHCM', '05/12/2022'),
(54, 'taikhoan39', 'e10adc3949ba59abbe56e057f20f883e', 'Tai Khoan 39', 'taikhoan39@gmail.com', '0935888139', 'KTX khu A dai hoc quoc gia, Linh Trung, Thu Duc, TPHCM', '05/12/2022'),
(55, 'taikhoan40', 'e10adc3949ba59abbe56e057f20f883e', 'Tai Khoan 40', 'taikhoan40@gmail.com', '0935888140', 'KTX khu A dai hoc quoc gia, Linh Trung, Thu Duc, TPHCM', '05/12/2022'),
(56, 'taikhoan41', 'e10adc3949ba59abbe56e057f20f883e', 'Tai Khoan 41', 'taikhoan41@gmail.com', '0935888141', 'KTX khu A dai hoc quoc gia, Linh Trung, Thu Duc, TPHCM', '05/12/2022'),
(57, 'taikhoan42', 'e10adc3949ba59abbe56e057f20f883e', 'Tai Khoan 42', 'taikhoan42@gmail.com', '0935888142', 'KTX khu A dai hoc quoc gia, Linh Trung, Thu Duc, TPHCM', '05/12/2022'),
(58, 'taikhoan43', 'e10adc3949ba59abbe56e057f20f883e', 'Tai Khoan 43', 'taikhoan43@gmail.com', '0935888143', 'KTX khu A dai hoc quoc gia, Linh Trung, Thu Duc, TPHCM', '05/12/2022'),
(59, 'taikhoan44', 'e10adc3949ba59abbe56e057f20f883e', 'Tai Khoan 44', 'taikhoan44@gmail.com', '0935888144', 'KTX khu A dai hoc quoc gia, Linh Trung, Thu Duc, TPHCM', '05/12/2022'),
(60, 'taikhoan45', 'e10adc3949ba59abbe56e057f20f883e', 'Tai Khoan 45', 'taikhoan45@gmail.com', '0935888145', 'KTX khu A dai hoc quoc gia, Linh Trung, Thu Duc, TPHCM', '05/12/2022'),
(61, 'taikhoan46', 'e10adc3949ba59abbe56e057f20f883e', 'Tai Khoan 46', 'taikhoan46@gmail.com', '0935888146', 'KTX khu A dai hoc quoc gia, Linh Trung, Thu Duc, TPHCM', '05/12/2022'),
(62, 'taikhoan47', 'e10adc3949ba59abbe56e057f20f883e', 'Tai Khoan 47', 'taikhoan47@gmail.com', '0935888147', 'KTX khu A dai hoc quoc gia, Linh Trung, Thu Duc, TPHCM', '05/12/2022'),
(63, 'taikhoan48', 'e10adc3949ba59abbe56e057f20f883e', 'Tai Khoan 48', 'taikhoan48@gmail.com', '0935888148', 'KTX khu A dai hoc quoc gia, Linh Trung, Thu Duc, TPHCM', '05/12/2022'),
(64, 'taikhoan49', 'e10adc3949ba59abbe56e057f20f883e', 'Tai Khoan 49', 'taikhoan49@gmail.com', '0935888149', 'KTX khu A dai hoc quoc gia, Linh Trung, Thu Duc, TPHCM', '05/12/2022'),
(65, 'taikhoan50', 'e10adc3949ba59abbe56e057f20f883e', 'Tai Khoan 50', 'taikhoan50@gmail.com', '0935888150', 'KTX khu A dai hoc quoc gia, Linh Trung, Thu Duc, TPHCM', '05/12/2022'),
(66, 'taikhoan51', 'e10adc3949ba59abbe56e057f20f883e', 'Tai Khoan 51', 'taikhoan51@gmail.com', '0935888151', 'KTX khu A dai hoc quoc gia, Linh Trung, Thu Duc, TPHCM', '05/12/2022'),
(67, 'taikhoan52', 'e10adc3949ba59abbe56e057f20f883e', 'Tai Khoan 52', 'taikhoan52@gmail.com', '0935888152', 'KTX khu A dai hoc quoc gia, Linh Trung, Thu Duc, TPHCM', '05/12/2022'),
(68, 'taikhoan53', 'e10adc3949ba59abbe56e057f20f883e', 'Tai Khoan 53', 'taikhoan53@gmail.com', '0935888153', 'KTX khu A dai hoc quoc gia, Linh Trung, Thu Duc, TPHCM', '05/12/2022'),
(69, 'taikhoan54', 'e10adc3949ba59abbe56e057f20f883e', 'Tai Khoan 54', 'taikhoan54@gmail.com', '0935888154', 'KTX khu A dai hoc quoc gia, Linh Trung, Thu Duc, TPHCM', '05/12/2022'),
(70, 'taikhoan55', 'e10adc3949ba59abbe56e057f20f883e', 'Tai Khoan 55', 'taikhoan55@gmail.com', '0935888155', 'KTX khu A dai hoc quoc gia, Linh Trung, Thu Duc, TPHCM', '05/12/2022'),
(71, 'taikhoan56', 'e10adc3949ba59abbe56e057f20f883e', 'Tai Khoan 56', 'taikhoan56@gmail.com', '0935888156', 'KTX khu A dai hoc quoc gia, Linh Trung, Thu Duc, TPHCM', '05/12/2022'),
(72, 'taikhoan57', 'e10adc3949ba59abbe56e057f20f883e', 'Tai Khoan 57', 'taikhoan57@gmail.com', '0935888157', 'KTX khu A dai hoc quoc gia, Linh Trung, Thu Duc, TPHCM', '05/12/2022'),
(73, 'taikhoan58', 'e10adc3949ba59abbe56e057f20f883e', 'Tai Khoan 58', 'taikhoan58@gmail.com', '0935888158', 'KTX khu A dai hoc quoc gia, Linh Trung, Thu Duc, TPHCM', '05/12/2022'),
(74, 'taikhoan59', 'e10adc3949ba59abbe56e057f20f883e', 'Tai Khoan 59', 'taikhoan59@gmail.com', '0935888159', 'KTX khu A dai hoc quoc gia, Linh Trung, Thu Duc, TPHCM', '05/12/2022'),
(75, 'taikhoan60', 'e10adc3949ba59abbe56e057f20f883e', 'Tai Khoan 60', 'taikhoan60@gmail.com', '0935888160', 'KTX khu A dai hoc quoc gia, Linh Trung, Thu Duc, TPHCM', '05/12/2022'),
(76, 'taikhoan61', 'e10adc3949ba59abbe56e057f20f883e', 'Tai Khoan 61', 'taikhoan61@gmail.com', '0935888161', 'KTX khu A dai hoc quoc gia, Linh Trung, Thu Duc, TPHCM', '05/12/2022'),
(77, 'taikhoan62', 'e10adc3949ba59abbe56e057f20f883e', 'Tai Khoan 62', 'taikhoan62@gmail.com', '0935888162', 'KTX khu A dai hoc quoc gia, Linh Trung, Thu Duc, TPHCM', '05/12/2022'),
(78, 'taikhoan63', 'e10adc3949ba59abbe56e057f20f883e', 'Tai Khoan 63', 'taikhoan63@gmail.com', '0935888163', 'KTX khu A dai hoc quoc gia, Linh Trung, Thu Duc, TPHCM', '05/12/2022'),
(79, 'taikhoan64', 'e10adc3949ba59abbe56e057f20f883e', 'Tai Khoan 64', 'taikhoan64@gmail.com', '0935888164', 'KTX khu A dai hoc quoc gia, Linh Trung, Thu Duc, TPHCM', '05/12/2022'),
(80, 'taikhoan65', 'e10adc3949ba59abbe56e057f20f883e', 'Tai Khoan 65', 'taikhoan65@gmail.com', '0935888165', 'KTX khu A dai hoc quoc gia, Linh Trung, Thu Duc, TPHCM', '05/12/2022'),
(81, 'taikhoan66', 'e10adc3949ba59abbe56e057f20f883e', 'Tai Khoan 66', 'taikhoan66@gmail.com', '0935888166', 'KTX khu A dai hoc quoc gia, Linh Trung, Thu Duc, TPHCM', '05/12/2022'),
(82, 'taikhoan67', 'e10adc3949ba59abbe56e057f20f883e', 'Tai Khoan 67', 'taikhoan67@gmail.com', '0935888167', 'KTX khu A dai hoc quoc gia, Linh Trung, Thu Duc, TPHCM', '05/12/2022'),
(83, 'taikhoan68', 'e10adc3949ba59abbe56e057f20f883e', 'Tai Khoan 68', 'taikhoan68@gmail.com', '0935888168', 'KTX khu A dai hoc quoc gia, Linh Trung, Thu Duc, TPHCM', '05/12/2022'),
(84, 'taikhoan69', 'e10adc3949ba59abbe56e057f20f883e', 'Tai Khoan 69', 'taikhoan69@gmail.com', '0935888169', 'KTX khu A dai hoc quoc gia, Linh Trung, Thu Duc, TPHCM', '05/12/2022'),
(85, 'taikhoan70', 'e10adc3949ba59abbe56e057f20f883e', 'Tai Khoan 70', 'taikhoan70@gmail.com', '0935888170', 'KTX khu A dai hoc quoc gia, Linh Trung, Thu Duc, TPHCM', '05/12/2022'),
(86, 'taikhoan71', 'e10adc3949ba59abbe56e057f20f883e', 'Tai Khoan 71', 'taikhoan71@gmail.com', '0935888171', 'KTX khu A dai hoc quoc gia, Linh Trung, Thu Duc, TPHCM', '05/12/2022'),
(87, 'taikhoan72', 'e10adc3949ba59abbe56e057f20f883e', 'Tai Khoan 72', 'taikhoan72@gmail.com', '0935888172', 'KTX khu A dai hoc quoc gia, Linh Trung, Thu Duc, TPHCM', '05/12/2022'),
(88, 'taikhoan73', 'e10adc3949ba59abbe56e057f20f883e', 'Tai Khoan 73', 'taikhoan73@gmail.com', '0935888173', 'KTX khu A dai hoc quoc gia, Linh Trung, Thu Duc, TPHCM', '05/12/2022'),
(89, 'taikhoan74', 'e10adc3949ba59abbe56e057f20f883e', 'Tai Khoan 74', 'taikhoan74@gmail.com', '0935888174', 'KTX khu A dai hoc quoc gia, Linh Trung, Thu Duc, TPHCM', '05/12/2022'),
(90, 'taikhoan75', 'e10adc3949ba59abbe56e057f20f883e', 'Tai Khoan 75', 'taikhoan75@gmail.com', '0935888175', 'KTX khu A dai hoc quoc gia, Linh Trung, Thu Duc, TPHCM', '05/12/2022'),
(91, 'taikhoan76', 'e10adc3949ba59abbe56e057f20f883e', 'Tai Khoan 76', 'taikhoan76@gmail.com', '0935888176', 'KTX khu A dai hoc quoc gia, Linh Trung, Thu Duc, TPHCM', '05/12/2022'),
(92, 'taikhoan77', 'e10adc3949ba59abbe56e057f20f883e', 'Tai Khoan 77', 'taikhoan77@gmail.com', '0935888177', 'KTX khu A dai hoc quoc gia, Linh Trung, Thu Duc, TPHCM', '05/12/2022'),
(93, 'taikhoan78', 'e10adc3949ba59abbe56e057f20f883e', 'Tai Khoan 78', 'taikhoan78@gmail.com', '0935888178', 'KTX khu A dai hoc quoc gia, Linh Trung, Thu Duc, TPHCM', '05/12/2022'),
(94, 'taikhoan79', 'e10adc3949ba59abbe56e057f20f883e', 'Tai Khoan 79', 'taikhoan79@gmail.com', '0935888179', 'KTX khu A dai hoc quoc gia, Linh Trung, Thu Duc, TPHCM', '05/12/2022'),
(95, 'taikhoan80', 'e10adc3949ba59abbe56e057f20f883e', 'Tai Khoan 80', 'taikhoan80@gmail.com', '0935888180', 'KTX khu A dai hoc quoc gia, Linh Trung, Thu Duc, TPHCM', '05/12/2022'),
(96, 'taikhoan81', 'e10adc3949ba59abbe56e057f20f883e', 'Tai Khoan 81', 'taikhoan81@gmail.com', '0935888181', 'KTX khu A dai hoc quoc gia, Linh Trung, Thu Duc, TPHCM', '05/12/2022'),
(97, 'taikhoan82', 'e10adc3949ba59abbe56e057f20f883e', 'Tai Khoan 82', 'taikhoan82@gmail.com', '0935888182', 'KTX khu A dai hoc quoc gia, Linh Trung, Thu Duc, TPHCM', '05/12/2022'),
(98, 'taikhoan83', 'e10adc3949ba59abbe56e057f20f883e', 'Tai Khoan 83', 'taikhoan83@gmail.com', '0935888183', 'KTX khu A dai hoc quoc gia, Linh Trung, Thu Duc, TPHCM', '05/12/2022'),
(99, 'taikhoan84', 'e10adc3949ba59abbe56e057f20f883e', 'Tai Khoan 84', 'taikhoan84@gmail.com', '0935888184', 'KTX khu A dai hoc quoc gia, Linh Trung, Thu Duc, TPHCM', '05/12/2022'),
(100, 'taikhoan85', 'e10adc3949ba59abbe56e057f20f883e', 'Tai Khoan 85', 'taikhoan85@gmail.com', '0935888185', 'KTX khu A dai hoc quoc gia, Linh Trung, Thu Duc, TPHCM', '05/12/2022'),
(101, 'taikhoan86', 'e10adc3949ba59abbe56e057f20f883e', 'Tai Khoan 86', 'taikhoan86@gmail.com', '0935888186', 'KTX khu A dai hoc quoc gia, Linh Trung, Thu Duc, TPHCM', '05/12/2022'),
(102, 'taikhoan87', 'e10adc3949ba59abbe56e057f20f883e', 'Tai Khoan 87', 'taikhoan87@gmail.com', '0935888187', 'KTX khu A dai hoc quoc gia, Linh Trung, Thu Duc, TPHCM', '05/12/2022'),
(103, 'taikhoan88', 'e10adc3949ba59abbe56e057f20f883e', 'Tai Khoan 88', 'taikhoan88@gmail.com', '0935888188', 'KTX khu A dai hoc quoc gia, Linh Trung, Thu Duc, TPHCM', '05/12/2022'),
(104, 'taikhoan89', 'e10adc3949ba59abbe56e057f20f883e', 'Tai Khoan 89', 'taikhoan89@gmail.com', '0935888189', 'KTX khu A dai hoc quoc gia, Linh Trung, Thu Duc, TPHCM', '05/12/2022'),
(105, 'taikhoan90', 'e10adc3949ba59abbe56e057f20f883e', 'Tai Khoan 90', 'taikhoan90@gmail.com', '0935888190', 'KTX khu A dai hoc quoc gia, Linh Trung, Thu Duc, TPHCM', '05/12/2022'),
(106, 'taikhoan91', 'e10adc3949ba59abbe56e057f20f883e', 'Tai Khoan 91', 'taikhoan91@gmail.com', '0935888191', 'KTX khu A dai hoc quoc gia, Linh Trung, Thu Duc, TPHCM', '05/12/2022'),
(107, 'taikhoan92', 'e10adc3949ba59abbe56e057f20f883e', 'Tai Khoan 92', 'taikhoan92@gmail.com', '0935888192', 'KTX khu A dai hoc quoc gia, Linh Trung, Thu Duc, TPHCM', '05/12/2022'),
(108, 'taikhoan93', 'e10adc3949ba59abbe56e057f20f883e', 'Tai Khoan 93', 'taikhoan93@gmail.com', '0935888193', 'KTX khu A dai hoc quoc gia, Linh Trung, Thu Duc, TPHCM', '05/12/2022'),
(109, 'taikhoan94', 'e10adc3949ba59abbe56e057f20f883e', 'Tai Khoan 94', 'taikhoan94@gmail.com', '0935888194', 'KTX khu A dai hoc quoc gia, Linh Trung, Thu Duc, TPHCM', '05/12/2022'),
(110, 'taikhoan95', 'e10adc3949ba59abbe56e057f20f883e', 'Tai Khoan 95', 'taikhoan95@gmail.com', '0935888195', 'KTX khu A dai hoc quoc gia, Linh Trung, Thu Duc, TPHCM', '05/12/2022'),
(111, 'taikhoan96', 'e10adc3949ba59abbe56e057f20f883e', 'Tai Khoan 96', 'taikhoan96@gmail.com', '0935888196', 'KTX khu A dai hoc quoc gia, Linh Trung, Thu Duc, TPHCM', '05/12/2022'),
(112, 'taikhoan97', 'e10adc3949ba59abbe56e057f20f883e', 'Tai Khoan 97', 'taikhoan97@gmail.com', '0935888197', 'KTX khu A dai hoc quoc gia, Linh Trung, Thu Duc, TPHCM', '05/12/2022'),
(113, 'taikhoan98', 'e10adc3949ba59abbe56e057f20f883e', 'Tai Khoan 98', 'taikhoan98@gmail.com', '0935888198', 'KTX khu A dai hoc quoc gia, Linh Trung, Thu Duc, TPHCM', '05/12/2022'),
(114, 'taikhoan99', 'e10adc3949ba59abbe56e057f20f883e', 'Tai Khoan 99', 'taikhoan99@gmail.com', '0935888199', 'KTX khu A dai hoc quoc gia, Linh Trung, Thu Duc, TPHCM', '05/12/2022'),
(115, 'taikhoan100', 'e10adc3949ba59abbe56e057f20f883e', 'Tai Khoan 100', 'taikhoan100@gmail.com', '0935888200', 'KTX khu A dai hoc quoc gia, Linh Trung, Thu Duc, TPHCM', '05/12/2022'),
(116, 'user', '6ad14ba9986e3615423dfca256d04e3f', 'phuc khang', 'user', '0931283312', '123123123', '11/12/2022'),
(999, 'admin', 'admin', 'admin', 'admin@gmail.com', '0931283312', 'KTX khu A dai hoc quoc gia, Linh Trung, Thu Duc, TPHCM', '11/12/2022'),
(1000, 'demo', 'fe01ce2a7fbac8fafaed7c982a04e229', 'demo', 'user@gmail.com', '0983690399', 'ktx khu a', '12/12/2022');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_detail_cart`
--

CREATE TABLE IF NOT EXISTS `tbl_detail_cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_cart` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `num_total` int(11) NOT NULL,
  `sub_total_price` float NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_cart` (`id_cart`),
  KEY `tbl_detail_cart_ibfk_2` (`id_product`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_detail_cart`
--

INSERT INTO `tbl_detail_cart` (`id`, `id_cart`, `id_product`, `num_total`, `sub_total_price`) VALUES
(96, 11, 7, 3, 675000),
(97, 11, 1, 1, 479000),
(98, 11, 6, 1, 299000);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_detail_order`
--

CREATE TABLE IF NOT EXISTS `tbl_detail_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_order` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `sub_total_price` float NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_product` (`id_product`),
  KEY `id_order` (`id_order`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE IF NOT EXISTS `tbl_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `custom_id` int(11) NOT NULL,
  `total_price` float NOT NULL,
  `total_num_product` int(11) NOT NULL,
  `create_date` varchar(255) NOT NULL,
  `note` text NOT NULL,
  `payment_method` varchar(255) NOT NULL,
  `status` enum('Thành công','Chờ xác nhận','Hủy','') NOT NULL,
  `id_cart` int(11) NOT NULL,
  `time` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `date_confirm` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_cart` (`id_cart`),
  KEY `tbl_order_ibfk_1` (`custom_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `custom_id`, `total_price`, `total_num_product`, `create_date`, `note`, `payment_method`, `status`, `id_cart`, `time`, `code`, `date_confirm`) VALUES
(21, 116, 49990000, 1, '11/12/2022', '', 'card_payment', 'Thành công', 12, '1670779863', 'user(1670779863)', '11/12/2022'),
(22, 116, 49990000, 1, '12/12/2022', '', 'card_payment', 'Chờ xác nhận', 12, '1670823317', 'user(1670823317)', '12/12/2022'),
(23, 116, 199960000, 4, '12/12/2022', '', 'card_payment', 'Chờ xác nhận', 12, '1670823343', 'user(1670823343)', '12/12/2022'),
(24, 1000, 40990000, 1, '12/12/2022', '', 'card_payment', 'Thành công', 14, '1670826311', 'demo(1670826311)', '12/12/2022');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE IF NOT EXISTS `tbl_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_category` int(11) NOT NULL,
  `id_brand` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `promotional_price` float NOT NULL,
  `quantity` int(11) NOT NULL,
  `status` enum('còn hàng','hết hàng','hàng sắp về') NOT NULL,
  `description` text NOT NULL,
  `screen` varchar(255) NOT NULL,
  `ram` varchar(255) NOT NULL,
  `cpu` varchar(255) NOT NULL,
  `memory` varchar(255) NOT NULL,
  `operating_system` varchar(255) NOT NULL,
  `front_camera` varchar(255) NOT NULL,
  `rear_camera` varchar(255) NOT NULL,
  `user` varchar(255) NOT NULL,
  `create_date` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `level` enum('hot','normal','discount') NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_brand` (`id_brand`),
  KEY `id_category` (`id_category`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slider`
--

CREATE TABLE IF NOT EXISTS `tbl_slider` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL,
  `user` varchar(255) NOT NULL,
  `create_date` varchar(255) NOT NULL,
  `type` enum('dọc','ngang') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_store_info`
--

CREATE TABLE IF NOT EXISTS `tbl_store_info` (
  `id` int(11) NOT NULL,
  `address` varchar(100) DEFAULT NULL,
  `phone_number` varchar(11) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_store_info`
--

INSERT INTO `tbl_store_info` (`id`, `address`, `phone_number`, `email`) VALUES
(1, 'đại học Bách Khoa', '123456789', 'hcmut@gmail.com');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`brand_id`) REFERENCES `tbl_brand` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`cat_id`) REFERENCES `tbl_category` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD CONSTRAINT `tbl_cart_ibfk_1` FOREIGN KEY (`id_customer`) REFERENCES `tbl_customer` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_comment`
--
ALTER TABLE `tbl_comment`
  ADD CONSTRAINT `tbl_comment_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `tbl_customer` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tbl_comment_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `tbl_product` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_detail_cart`
--
ALTER TABLE `tbl_detail_cart`
  ADD CONSTRAINT `tbl_detail_cart_ibfk_1` FOREIGN KEY (`id_cart`) REFERENCES `tbl_cart` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tbl_detail_cart_ibfk_2` FOREIGN KEY (`id_product`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_detail_order`
--
ALTER TABLE `tbl_detail_order`
  ADD CONSTRAINT `tbl_detail_order_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `tbl_product` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tbl_detail_order_ibfk_2` FOREIGN KEY (`id_order`) REFERENCES `tbl_order` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD CONSTRAINT `tbl_order_ibfk_1` FOREIGN KEY (`custom_id`) REFERENCES `tbl_customer` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tbl_order_ibfk_2` FOREIGN KEY (`id_cart`) REFERENCES `tbl_cart` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD CONSTRAINT `tbl_product_ibfk_1` FOREIGN KEY (`id_brand`) REFERENCES `tbl_brand` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tbl_product_ibfk_2` FOREIGN KEY (`id_category`) REFERENCES `tbl_category` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
