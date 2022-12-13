-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: dbaplikasipenilaianmahasiswa
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.25-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tbbiayakuliah`
--

DROP TABLE IF EXISTS `tbbiayakuliah`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbbiayakuliah` (
  `prodi` varchar(100) NOT NULL,
  `biaya_semester` int(11) NOT NULL,
  PRIMARY KEY (`prodi`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbbiayakuliah`
--

LOCK TABLES `tbbiayakuliah` WRITE;
/*!40000 ALTER TABLE `tbbiayakuliah` DISABLE KEYS */;
INSERT INTO `tbbiayakuliah` VALUES ('Teknik Informatika',2200000);
/*!40000 ALTER TABLE `tbbiayakuliah` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbmahasiswa`
--

DROP TABLE IF EXISTS `tbmahasiswa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbmahasiswa` (
  `nim` varchar(12) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `kelas` varchar(9) NOT NULL,
  `semester` int(11) NOT NULL,
  `password` varchar(32) NOT NULL,
  PRIMARY KEY (`nim`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbmahasiswa`
--

LOCK TABLES `tbmahasiswa` WRITE;
/*!40000 ALTER TABLE `tbmahasiswa` DISABLE KEYS */;
INSERT INTO `tbmahasiswa` VALUES ('123','tes','A',5,'MD5(\'123\')'),('1234','tes','A',5,'81dc9bdb52d04dc20036dbd8313ed055'),('201011400093','Fuad Mustamirrul Ishlah','A',5,'25d55ad283aa400af464c76d713c07ad');
/*!40000 ALTER TABLE `tbmahasiswa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbmatakuliah`
--

DROP TABLE IF EXISTS `tbmatakuliah`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbmatakuliah` (
  `kode` varchar(12) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `sks` int(11) NOT NULL,
  PRIMARY KEY (`kode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbmatakuliah`
--

LOCK TABLES `tbmatakuliah` WRITE;
/*!40000 ALTER TABLE `tbmatakuliah` DISABLE KEYS */;
INSERT INTO `tbmatakuliah` VALUES ('1','Pemrograman 1',3),('2','Pemrograman 2',3),('3','Basis Data 1',3),('4','Basis Data 2',2);
/*!40000 ALTER TABLE `tbmatakuliah` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbnilai`
--

DROP TABLE IF EXISTS `tbnilai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbnilai` (
  `nim` varchar(12) NOT NULL,
  `kodematakuliah` varchar(12) NOT NULL,
  `tugas` varchar(3) NOT NULL,
  `uts` varchar(3) NOT NULL,
  `uas` varchar(3) NOT NULL,
  PRIMARY KEY (`nim`,`kodematakuliah`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbnilai`
--

LOCK TABLES `tbnilai` WRITE;
/*!40000 ALTER TABLE `tbnilai` DISABLE KEYS */;
INSERT INTO `tbnilai` VALUES ('201011400093','1','100','95','100'),('201011400093','2','90','100','100'),('201011400093','3','100','100','100'),('201011400093','4','90','90','90');
/*!40000 ALTER TABLE `tbnilai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbpembayarankuliah`
--

DROP TABLE IF EXISTS `tbpembayarankuliah`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbpembayarankuliah` (
  `no_tagihan` varchar(14) NOT NULL,
  `nim` varchar(12) NOT NULL,
  `prodi` varchar(100) NOT NULL,
  `pembayaran` int(11) NOT NULL,
  `jumlah_bayar` int(11) NOT NULL,
  `status` varchar(15) NOT NULL,
  `tanggal_bayar` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`no_tagihan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbpembayarankuliah`
--

LOCK TABLES `tbpembayarankuliah` WRITE;
/*!40000 ALTER TABLE `tbpembayarankuliah` DISABLE KEYS */;
INSERT INTO `tbpembayarankuliah` VALUES ('2010114000931','201011400093','Teknik Informatika',2200000,2200000,'LUNAS','2020-11-29 21:29:43'),('2010114000932','201011400093','Teknik Informatika',2200000,2200000,'LUNAS','2021-05-29 21:29:43'),('2010114000933','201011400093','Teknik Informatika',2200000,2200000,'LUNAS','2021-11-29 21:29:43'),('2010114000934','201011400093','Teknik Informatika',2200000,2200000,'LUNAS','2022-05-29 21:29:43'),('2010114000935','201011400093','Teknik Informatika',2200000,2200000,'LUNAS','2022-11-29 21:29:43');
/*!40000 ALTER TABLE `tbpembayarankuliah` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'dbaplikasipenilaianmahasiswa'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-13 18:49:22
