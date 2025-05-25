-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: software_engineering
-- ------------------------------------------------------
-- Server version	8.0.42

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
-- Table structure for table `danh_gia`
--

DROP TABLE IF EXISTS `danh_gia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `danh_gia` (
  `id` int NOT NULL AUTO_INCREMENT,
  `binh_luan` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `nguon_anh` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `sao` int NOT NULL,
  `nguoi_dungid` int NOT NULL,
  `san_phamid` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKqvmoeee56ni501wnbn97blqhu` (`nguoi_dungid`),
  KEY `FKsxh4v76bac5537k7cqprdldhi` (`san_phamid`),
  CONSTRAINT `FKqvmoeee56ni501wnbn97blqhu` FOREIGN KEY (`nguoi_dungid`) REFERENCES `nguoi_dung` (`id`),
  CONSTRAINT `FKsxh4v76bac5537k7cqprdldhi` FOREIGN KEY (`san_phamid`) REFERENCES `san_pham` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `danh_gia`
--

LOCK TABLES `danh_gia` WRITE;
/*!40000 ALTER TABLE `danh_gia` DISABLE KEYS */;
/*!40000 ALTER TABLE `danh_gia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `danh_muc`
--

DROP TABLE IF EXISTS `danh_muc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `danh_muc` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ten_danh_muc` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `danh_muc`
--

LOCK TABLES `danh_muc` WRITE;
/*!40000 ALTER TABLE `danh_muc` DISABLE KEYS */;
INSERT INTO `danh_muc` VALUES (1,'Áo nam'),(2,'Áo nữ'),(3,'Quần nam'),(4,'Quần nữ'),(5,'Đầm & Váy'),(6,'Đồ thể thao'),(7,'Đồ ngủ & Mặc nhà'),(8,'Phụ kiện'),(9,'Giày dép');
/*!40000 ALTER TABLE `danh_muc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `don_hang`
--

DROP TABLE IF EXISTS `don_hang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `don_hang` (
  `id` int NOT NULL AUTO_INCREMENT,
  `gia_tri_don_hang` bigint NOT NULL,
  `nhan_hang` bit(1) NOT NULL,
  `trang_thai_don_hang` bit(1) NOT NULL,
  `nguoi_dungid` int NOT NULL,
  `da_thanh_toan` bit(1) NOT NULL,
  `dia_chi` varchar(255) DEFAULT NULL,
  `so_dien_thoai` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKhh4986yqwkqnqdbbggwh9bo0o` (`nguoi_dungid`),
  CONSTRAINT `FKhh4986yqwkqnqdbbggwh9bo0o` FOREIGN KEY (`nguoi_dungid`) REFERENCES `nguoi_dung` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `don_hang`
--

LOCK TABLES `don_hang` WRITE;
/*!40000 ALTER TABLE `don_hang` DISABLE KEYS */;
INSERT INTO `don_hang` VALUES (13,1361000,_binary '\0',_binary '',5,_binary '\0','hdhsh','abcxyz'),(14,1361000,_binary '\0',_binary '',5,_binary '\0','hdhsh','abcxyz'),(15,1361000,_binary '\0',_binary '',5,_binary '\0','hdhsh','abcxyz'),(17,1361000,_binary '',_binary '',15,_binary '\0','ha noi','0367393126'),(18,90000,_binary '\0',_binary '\0',15,_binary '\0','ha noi','0367393126'),(19,189000,_binary '',_binary '',15,_binary '\0','ha noi','0367393126'),(20,101000,_binary '\0',_binary '',15,_binary '\0','ha noi','0367393126');
/*!40000 ALTER TABLE `don_hang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gio_hang`
--

DROP TABLE IF EXISTS `gio_hang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gio_hang` (
  `nguoi_dungid` int NOT NULL,
  `san_phamid` int NOT NULL,
  PRIMARY KEY (`nguoi_dungid`,`san_phamid`),
  KEY `FKn788x22ewp7s25djk9cv7i0d4` (`san_phamid`),
  CONSTRAINT `FKlfnfg9pjm0uvbhqhcqt0d7p0b` FOREIGN KEY (`nguoi_dungid`) REFERENCES `nguoi_dung` (`id`),
  CONSTRAINT `FKn788x22ewp7s25djk9cv7i0d4` FOREIGN KEY (`san_phamid`) REFERENCES `san_pham` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gio_hang`
--

LOCK TABLES `gio_hang` WRITE;
/*!40000 ALTER TABLE `gio_hang` DISABLE KEYS */;
INSERT INTO `gio_hang` VALUES (5,1),(5,2),(14,2),(15,2),(5,3),(15,8);
/*!40000 ALTER TABLE `gio_hang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ma_giam_gia`
--

DROP TABLE IF EXISTS `ma_giam_gia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ma_giam_gia` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ma` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `ngay_het_han` date DEFAULT NULL,
  `phan_tram_giam_gia` int NOT NULL,
  `so_luot_con_lai` int NOT NULL,
  `danh_mucid` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKmep5ojfa868qbx8gaam3utndr` (`danh_mucid`),
  CONSTRAINT `FKmep5ojfa868qbx8gaam3utndr` FOREIGN KEY (`danh_mucid`) REFERENCES `danh_muc` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ma_giam_gia`
--

LOCK TABLES `ma_giam_gia` WRITE;
/*!40000 ALTER TABLE `ma_giam_gia` DISABLE KEYS */;
INSERT INTO `ma_giam_gia` VALUES (1,'hdz','2025-05-21',20,36,1),(2,'hungdz','2025-03-13',40,39,1),(3,NULL,NULL,0,0,1),(4,NULL,NULL,0,0,1),(5,NULL,NULL,0,0,1),(6,'abc','2025-03-26',30,100,1);
/*!40000 ALTER TABLE `ma_giam_gia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nguoi_dung`
--

DROP TABLE IF EXISTS `nguoi_dung`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nguoi_dung` (
  `id` int NOT NULL AUTO_INCREMENT,
  `mat_khau` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `ten` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `vai_tro` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `da_dang_ky` bit(1) NOT NULL,
  `thoi_han` datetime(6) DEFAULT NULL,
  `ma_xac_nhan` varchar(255) DEFAULT NULL,
  `source_image` varchar(255) DEFAULT NULL,
  `dia_chi` varchar(255) DEFAULT NULL,
  `gioi_tinh` varchar(255) DEFAULT NULL,
  `so_dien_thoai` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nguoi_dung`
--

LOCK TABLES `nguoi_dung` WRITE;
/*!40000 ALTER TABLE `nguoi_dung` DISABLE KEYS */;
INSERT INTO `nguoi_dung` VALUES (2,'ghik','fptjun@gmail.com','KhachHang',_binary '','2025-02-27 13:02:37.479277','86679',NULL,NULL,NULL,NULL,NULL),(3,'def','bui269952@gmail.com','KhachHang',_binary '','2025-02-27 12:57:30.993687','07608',NULL,NULL,NULL,NULL,NULL),(5,'{bcrypt}$2a$10$BY7LWJ5vtKzWnYqkgpUOK.7OsFOGEdh7FBElcJCrkfO5sum2z7SqO','Hung.BG225722@sis.hust.edu.vn','Chu',_binary '','2025-05-24 20:47:28.298582','39247',NULL,'ha noi','male','0367393126','minh'),(13,'{bcrypt}$2a$10$TWzKeQNC.PFysFcRPhuzWOOVijXsIWDdvq5Nr/h5H1PqqtifxFoFK','thanhleesenpai@gmail.com','KhachHang',_binary '','2025-05-23 22:11:02.401811','66993',NULL,NULL,NULL,NULL,NULL),(14,'{bcrypt}$2a$10$dl3ymwErBy.dNmGESVnz0eUlLWUDYBBp4I3KYiYQZTjSLWBgaQvWu','thanhle20072004@gmail.com','KhachHang',_binary '','2025-05-23 22:55:29.507152','07034',NULL,NULL,NULL,NULL,NULL),(15,'{bcrypt}$2a$10$V8mPp7T2Xf7Ko1ahzZolN.Co9C8SmE5viCL3gZzfWgko8OBfSuSrG','tuanminh100217@gmail.com','KhachHang',_binary '','2025-05-24 20:48:57.842133','78839',NULL,'ha noi','male','0367393126','minh');
/*!40000 ALTER TABLE `nguoi_dung` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `san_pham`
--

DROP TABLE IF EXISTS `san_pham`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `san_pham` (
  `id` int NOT NULL AUTO_INCREMENT,
  `gia` bigint NOT NULL,
  `mo_ta` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `source_hinh_anh` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `danh_mucid` int NOT NULL,
  `ten_san_pham` varchar(255) DEFAULT NULL,
  `so_luong_hien_tai` int NOT NULL,
  `con_bay_ban` bit(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKl4y5wxaitbwcclrwp19mjt2g4` (`danh_mucid`),
  CONSTRAINT `FKl4y5wxaitbwcclrwp19mjt2g4` FOREIGN KEY (`danh_mucid`) REFERENCES `danh_muc` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `san_pham`
--

LOCK TABLES `san_pham` WRITE;
/*!40000 ALTER TABLE `san_pham` DISABLE KEYS */;
INSERT INTO `san_pham` VALUES (1,89000,'Đảm bảo hàng giống hình 100%, Hoàn tiền nếu sản phẩm không đảm bảo chất lượng','https://down-vn.img.susercontent.com/file/vn-11134207-7ra0g-m7hggvtundyu40@resize_w450_nl.webp',1,'Áo polo nam dập vân thích hợp cho mùa hè thoải mái và thoáng khí, áo thun nam có cổ hot 2025',993,_binary ''),(2,69000,'Đảm bảo hàng giống hình 100%','https://down-vn.img.susercontent.com/file/vn-11134207-7ra0g-m81f6cq1ssw4c5@resize_w450_nl.webp',2,'Áo thun babytee nữ ngắn tay ,áo phông form vừa màu xám tiêu in hình cún music chất thun tăm co giãn dễ thương',1097,_binary ''),(3,90000,'Đảm bảo hàng giống hình 100%','https://down-vn.img.susercontent.com/file/vn-11134207-7ra0g-m8diutiadvnr74@resize_w450_nl.webp',3,'Quần nam ống rộng mùa hè Quần dài nam TINOFUN quần ống suông CL D quần thể thao nam nữ chất vải thoáng khí',1197,_binary ''),(4,89100,'Đảm bảo hàng giống hình 100%','https://down-vn.img.susercontent.com/file/sg-11134201-7renw-m8ae1booopts38@resize_w450_nl.webp',4,'Gjcute Phong Cách Hàn Quốc Sọc Xanh Cao Cấp Thường Ngày Rời Chân Rộng Quần Nữ Mùa Hè WTD',1300,_binary ''),(5,221000,'Đảm bảo hàng giống hình 100%','https://down-vn.img.susercontent.com/file/vn-11134207-7ra0g-m9h85sgg58hwae@resize_w450_nl.webp',5,'MINA DRESS - Váy hè thêu nơ tay bồng thắt nơ điệu cho nữ MadebyFairy',1400,_binary ''),(6,127200,'Đảm bảo hàng giống hình 100%','https://down-vn.img.susercontent.com/file/vn-11134207-7ra0g-m7md3o7t74c1bb@resize_w450_nl.webp',6,'Bộ Quần Áo Bóng Chuyền Nam Nữ Trắng, Đồ Bóng Chuyền Áo Thể Thao Co Giãn Tốt, Thoáng Mát Có in Tên Số',1450,_binary ''),(7,99999,'Đảm bảo hàng giống hình 100%','https://down-vn.img.susercontent.com/file/vn-11134207-7ra0g-m7s2u8tusvubc5@resize_w450_nl.webp',7,'Bộ Đồ Ngủ Kẻ Caro Thắt Nơ Xinh Xắn Áo Tay Cộc Quần Cộc Tuni.studio T010',1600,_binary ''),(8,32000,'Đảm bảo hàng giống hình 100%','https://down-vn.img.susercontent.com/file/vn-11134207-7ra0g-m6pnw60f32uw58@resize_w450_nl.webp',8,'Vòng Cổ - Dây Chuyền Phối Cườm Nhiều Màu Sắc Mặt Sao Biển - VC',1699,_binary ''),(9,189000,'Đảm bảo hàng giống hình 100%','https://down-vn.img.susercontent.com/file/vn-11134207-7ra0g-m6fixcv16dt3a1@resize_w450_nl.webp',9,'Giày samba classic nam nữ Egan, Giày thể thao nam nữ bản cao cấp full bill box',1799,_binary ''),(10,62080,'Đảm bảo hàng giống hình 100%','https://down-vn.img.susercontent.com/file/vn-11134207-7ra0g-m8cr3iifh3la36@resize_w450_nl.webp',1,'Áo Thun Nam Nữ Premium Cotton Eo Vì Viền Cổ In Chữ Loang Mờ Quấn Quanh Cổ Treo Hoa Chữ Hãng _ Unisex Song Anh',1900,_binary ''),(11,59000,'Đảm bảo hàng giống hình 100%','https://down-vn.img.susercontent.com/file/vn-11134207-7ra0g-m6js6xl870rlf6@resize_w450_nl.webp',2,'Áo sơ mi đũi chiết eo nơ kiểu tiểu thư công sở xinh xắn',2000,_binary '');
/*!40000 ALTER TABLE `san_pham` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `san_pham_thuoc_don_hang`
--

DROP TABLE IF EXISTS `san_pham_thuoc_don_hang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `san_pham_thuoc_don_hang` (
  `don_hangid` int NOT NULL,
  `san_phamid` int NOT NULL,
  `so_luong` int NOT NULL,
  `gia_goc` bigint NOT NULL,
  `ma_giam_gia_id` int DEFAULT NULL,
  PRIMARY KEY (`don_hangid`,`san_phamid`),
  KEY `fk_orders_user1` (`san_phamid`),
  KEY `FKavp1m15s4mtea1lwh7c633wgx` (`ma_giam_gia_id`),
  CONSTRAINT `fk_orders_user` FOREIGN KEY (`don_hangid`) REFERENCES `don_hang` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_orders_user1` FOREIGN KEY (`san_phamid`) REFERENCES `san_pham` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FKavp1m15s4mtea1lwh7c633wgx` FOREIGN KEY (`ma_giam_gia_id`) REFERENCES `ma_giam_gia` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `san_pham_thuoc_don_hang`
--

LOCK TABLES `san_pham_thuoc_don_hang` WRITE;
/*!40000 ALTER TABLE `san_pham_thuoc_don_hang` DISABLE KEYS */;
INSERT INTO `san_pham_thuoc_don_hang` VALUES (13,1,1,89000,NULL),(13,6,10,127200,NULL),(14,1,1,89000,NULL),(14,6,10,127200,NULL),(15,1,1,89000,NULL),(15,6,10,127200,NULL),(17,1,1,89000,NULL),(17,6,10,127200,NULL),(18,3,1,90000,NULL),(19,9,1,189000,NULL),(20,2,1,69000,NULL),(20,8,1,32000,NULL);
/*!40000 ALTER TABLE `san_pham_thuoc_don_hang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `thong_tin_cua_hang`
--

DROP TABLE IF EXISTS `thong_tin_cua_hang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `thong_tin_cua_hang` (
  `id` int NOT NULL AUTO_INCREMENT,
  `chinh_sach` text,
  `thong_tin` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `thong_tin_cua_hang`
--

LOCK TABLES `thong_tin_cua_hang` WRITE;
/*!40000 ALTER TABLE `thong_tin_cua_hang` DISABLE KEYS */;
INSERT INTO `thong_tin_cua_hang` VALUES (1,'ok','abc_xyz');
/*!40000 ALTER TABLE `thong_tin_cua_hang` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-25  8:26:29
