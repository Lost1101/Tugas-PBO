-- MariaDB dump 10.19  Distrib 10.4.24-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: isekai
-- ------------------------------------------------------
-- Server version	10.4.24-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `antrian`
--

DROP TABLE IF EXISTS `antrian`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `antrian` (
  `no_antri` int(4) NOT NULL AUTO_INCREMENT,
  `nama` varchar(30) NOT NULL,
  `meja` int(2) NOT NULL,
  `status` varchar(30) NOT NULL,
  PRIMARY KEY (`no_antri`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `antrian`
--

LOCK TABLES `antrian` WRITE;
/*!40000 ALTER TABLE `antrian` DISABLE KEYS */;
INSERT INTO `antrian` VALUES (3,'AA',2,'selesai'),(4,'aaa',1,'waiting'),(5,'aa',1,'selesai'),(6,'aa',2,'selesai'),(7,'aaaa',4,'selesai'),(8,'gggg',6,'selesai'),(9,'jjj',2,'selesai'),(10,'jjjj',7,'selesai');
/*!40000 ALTER TABLE `antrian` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_menu`
--

DROP TABLE IF EXISTS `tbl_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_menu` (
  `id_menu` varchar(3) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `stok` int(3) NOT NULL,
  `harga` int(15) NOT NULL,
  `img` varchar(30) NOT NULL,
  `jenis` varchar(15) NOT NULL,
  PRIMARY KEY (`id_menu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_menu`
--

LOCK TABLES `tbl_menu` WRITE;
/*!40000 ALTER TABLE `tbl_menu` DISABLE KEYS */;
INSERT INTO `tbl_menu` VALUES ('M01','Ramen Anya Sabishii',23,25000,'63956d8e730ec.png','makanan'),('M02','Yakiniku Makima',90,25000,'639591bdc61f2.jpg','makanan'),('M03','Coca cola',93,7000,'639698b34382c.png','minuman'),('M04','Sashimi Korosensei',95,20000,'63969591040d8.jpg','makanan'),('M05','Bento Megumin',96,24000,'639697acd21dd.jpeg','makanan'),('M06','Sushi Kaori Cicak',96,22000,'639697ce48216.jpg','makanan'),('M07','Pepsi',99,6500,'6396980791a0e.jpg','minuman'),('M08','Green Tea',97,8000,'63969835c9943.jpg','minuman'),('M09','Teh Botol',98,7000,'639698a0bc078.jpg','minuman'),('M10','Air Putih',96,4000,'6396988b407cc.jpg','minuman');
/*!40000 ALTER TABLE `tbl_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_transaksi`
--

DROP TABLE IF EXISTS `tbl_transaksi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_transaksi` (
  `id_transaksi` int(3) NOT NULL AUTO_INCREMENT,
  `status` varchar(30) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `Ramen_Anya_Sabishii` int(11) DEFAULT NULL,
  `Yakiniku_Makima` int(11) NOT NULL,
  `Coca_cola` int(11) DEFAULT NULL,
  `Sashimi_Korosensei` int(11) NOT NULL,
  `Bento_Megumin` int(11) NOT NULL,
  `Sushi_Kaori_Cicak` int(11) NOT NULL,
  `Pepsi` int(11) NOT NULL,
  `Green_Tea` int(11) NOT NULL,
  `Teh_Botol` int(11) DEFAULT NULL,
  `Air_Putih` int(11) NOT NULL,
  PRIMARY KEY (`id_transaksi`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_transaksi`
--

LOCK TABLES `tbl_transaksi` WRITE;
/*!40000 ALTER TABLE `tbl_transaksi` DISABLE KEYS */;
INSERT INTO `tbl_transaksi` VALUES (1,'selesai','2022-12-11 08:27:58',2,1,1,0,0,0,0,0,0,0),(2,'selesai','2022-12-12 06:04:13',2,0,0,0,0,0,1,0,0,0),(3,'selesai','2022-12-12 17:10:06',0,2,0,0,0,0,0,0,0,1),(4,'waiting','2022-12-12 17:06:06',2,0,1,0,0,0,0,0,0,0),(5,'selesai','2022-12-12 18:10:21',0,0,0,0,0,0,0,0,0,2),(6,'selesai','2022-12-12 18:10:22',0,0,0,1,0,0,0,0,0,0),(7,'selesai','2022-12-12 18:10:24',1,0,0,0,0,0,0,0,0,0),(8,'selesai','2022-12-12 18:10:19',0,0,0,0,0,4,0,0,0,0),(9,'selesai','2022-12-12 18:10:25',0,0,0,3,1,0,0,0,2,1),(10,'selesai','2022-12-12 18:10:26',0,0,0,1,3,0,0,3,0,0);
/*!40000 ALTER TABLE `tbl_transaksi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_user`
--

DROP TABLE IF EXISTS `tbl_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_user` (
  `codename` varchar(10) NOT NULL,
  `username` varchar(30) NOT NULL,
  `pass` varchar(20) NOT NULL,
  `level` int(1) NOT NULL,
  PRIMARY KEY (`codename`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_user`
--

LOCK TABLES `tbl_user` WRITE;
/*!40000 ALTER TABLE `tbl_user` DISABLE KEYS */;
INSERT INTO `tbl_user` VALUES ('ADM182','admin1','babanana123w',0),('KA001','Vayne Keyen','knowledge123',1),('KO001','Amel Lucu','amelamel123',2);
/*!40000 ALTER TABLE `tbl_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-14 16:47:15
