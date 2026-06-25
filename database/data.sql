-- MySQL dump 10.13  Distrib 8.0.45, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: artistas_urbanas
-- ------------------------------------------------------
-- Server version	8.0.45

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
-- Table structure for table `albums`
--

DROP TABLE IF EXISTS `albums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `albums` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) NOT NULL,
  `fecha_lanzamiento` year DEFAULT NULL,
  `portada` varchar(255) DEFAULT NULL,
  `artista_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `artista_id` (`artista_id`),
  CONSTRAINT `albums_ibfk_1` FOREIGN KEY (`artista_id`) REFERENCES `artistas` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `albums`
--

LOCK TABLES `albums` WRITE;
/*!40000 ALTER TABLE `albums` DISABLE KEYS */;
INSERT INTO `albums` VALUES (1,'la_noche_ke_me_muera',2020,'https://genius.com/album_cover_arts/507147',1),(2,'PTSD',2022,'https://genius.com/album_cover_arts/796247',1),(3,'antes_de_conocerte',2023,'https://genius.com/album_cover_arts/970899',1),(4,'el_secreto',2025,'https://genius.com/album_cover_arts/1333877',1),(5,'perreando_a_escondidas',2026,'https://genius.com/album_cover_arts/1657927',1),(6,'espabila',2023,'https://genius.com/album_cover_arts/1073229',2),(7,'julia_y_manuel',2024,'https://genius.com/album_cover_arts/1237920',2),(8,'hasta_manianita_si_dios_quiere',2026,'https://genius.com/album_cover_arts/1549555',2),(9,'slow_wine_mixtape',2015,'https://genius.com/album_cover_arts/131956',3),(10,'warm_up',2021,'https://genius.com/album_cover_arts/616838',3),(11,'worldwide_angel',2018,'https://genius.com/album_cover_arts/204706',3),(12,'la_joia',2024,'https://genius.com/album_cover_arts/955968',3),(13,'mas_cara',2026,'https://genius.com/album_cover_arts/1549664',3),(14,'los_siete_contra_tebas',2012,'https://genius.com/album_cover_arts/172612',4),(15,'anclas',2015,'https://genius.com/album_cover_arts/172611',4),(16,'la_escala_de_mohs',2016,'https://genius.com/album_cover_arts/875179',4),(17,'banzai',2017,'https://genius.com/album_cover_arts/171565',4),(18,'saga_sailor',2018,'https://genius.com/album_cover_arts/847460',5),(19,'skit2020',2021,'https://genius.com/album_cover_arts/1519018',5),(20,'onna_bugeisha',2021,'https://genius.com/album_cover_arts/1515097',5),(21,'bitches_in_bussiness',2024,'https://genius.com/album_cover_arts/1519015',5),(22,'skit2025',2025,'https://genius.com/album_cover_arts/1518981',5),(23,'primer_plato',2020,'https://genius.com/album_cover_arts/763679',6),(24,'gracias_a_dios',2024,'https://genius.com/album_cover_arts/1111243',6),(25,'jamila',2024,'https://genius.com/album_cover_arts/1160784',6),(26,'bodhiria',2024,'https://genius.com/album_cover_arts/1230000',7),(27,'top hits,ballads,etc...',2025,'https://genius.com/album_cover_arts/1353758',8);
/*!40000 ALTER TABLE `albums` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `artistas`
--

DROP TABLE IF EXISTS `artistas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `artistas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre_artistico` varchar(100) NOT NULL,
  `ciudad` varchar(100) DEFAULT NULL,
  `genero` varchar(50) DEFAULT NULL,
  `url_spotify` varchar(255) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artistas`
--

LOCK TABLES `artistas` WRITE;
/*!40000 ALTER TABLE `artistas` DISABLE KEYS */;
INSERT INTO `artistas` VALUES (1,'juicy_bae','sevilla','r&b','https://open.spotify.com/intl-es/artist/46K14JAfAHpxTSkb6KkFfN?si=Xbj_o8HIQIC33CH3aQ2qFA','https://commons.wikimedia.org/wiki/File:Madrid_Pride_2025_-_Juicy_Bae_-_250704_221814.jpg'),(2,'faenna ','malaga','rap','https://open.spotify.com/intl-es/artist/2iLGzMc00PRgD5qP07bP2b?si=eJkRi46YTNGCldbHLgcAGA','null '),(3,'bad_gyal','vilassa_de_mar','reggaeton','https://open.spotify.com/intl-es/artist/4F4pp8NUW08JuXwnoxglpN?si=2H7RUHJeQoyWm8MOzwx8ow','https://es.wikipedia.org/wiki/Bad_Gyal#/media/Archivo:Primavera_Sound_L.A._(52514286270)_(cropped).jpg'),(4,'gata_cattana ','adamuz','rap','https://open.spotify.com/intl-es/artist/4aW7Oc19mMo4LTbdomZKgo?si=PkOzncBeS7etcaiIDsSVTA','https://commons.wikimedia.org/wiki/File:Gata_Cattana_-_Mural_Ciudad_Lineal_(cropped).jpg'),(5,'las_ninyas_del_corro','barcelona','rap','https://open.spotify.com/intl-es/artist/3Iv34TRi6TpQqxSctG7PKh?si=_PIpnhAVTV2HgFuoldyhMA','null'),(6,'huda','madrid ','rap','https://open.spotify.com/intl-es/artist/5NnVq8GhEz24ecoViL85Do?si=H0I6uTmSSOOqSFw31QYhFw','null'),(7,'judeline','jerez_de_la_frontera','pop','https://open.spotify.com/intl-es/artist/1H6X7yhnXZg73f9bssaj1Q?si=Cyfrsl_iSSyd61t6QYB9hA','https://es.wikipedia.org/wiki/Judeline#/media/Archivo:Malaga_Film_Festival_2025_-_Judeline_(3x4_cropped).jpg'),(8,'amore','murcia','pop','https://open.spotify.com/intl-es/artist/2JfbhY0uEDLi1d89RzdU9S?si=o57c3IMYS020JJ8mEs6sFA','null');
/*!40000 ALTER TABLE `artistas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-06-25 18:38:12
