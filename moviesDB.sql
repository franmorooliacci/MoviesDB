-- MySQL dump 10.13  Distrib 8.0.34, for Linux (x86_64)
--
-- Host: localhost    Database: bdd
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `country` (
  `country_id` int NOT NULL AUTO_INCREMENT,
  `country_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES (1,'England'),(2,'United States'),(3,'Canada'),(4,'Japan'),(5,'France'),(6,'Scotland'),(7,'Australia'),(8,'Ireland'),(9,'Wales'),(10,'Northern Ireland'),(11,'Israel'),(12,'Vietnam'),(13,'India'),(14,'Denmark'),(15,'Spain');
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genre`
--

DROP TABLE IF EXISTS `genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genre` (
  `genre_id` int NOT NULL AUTO_INCREMENT,
  `genre_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`genre_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genre`
--

LOCK TABLES `genre` WRITE;
/*!40000 ALTER TABLE `genre` DISABLE KEYS */;
INSERT INTO `genre` VALUES (1,'Drama'),(2,'Romance'),(3,'Period Piece'),(4,'Adventure'),(5,'Science Fiction'),(6,'Fantasy'),(7,'Animation'),(8,'Comedy'),(9,'Action');
/*!40000 ALTER TABLE `genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language`
--

DROP TABLE IF EXISTS `language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `language` (
  `language_id` int NOT NULL AUTO_INCREMENT,
  `language_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`language_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language`
--

LOCK TABLES `language` WRITE;
/*!40000 ALTER TABLE `language` DISABLE KEYS */;
INSERT INTO `language` VALUES (1,'English'),(2,'Japanese'),(3,'French'),(4,'Latin'),(5,'German'),(6,'Greek'),(7,'Arabic'),(8,'Hebrew'),(9,'Nepali'),(10,'Spanish'),(11,'Chinese'),(12,'Sinhalese');
/*!40000 ALTER TABLE `language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie`
--

DROP TABLE IF EXISTS `movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie` (
  `movie_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `director_id` int DEFAULT NULL,
  `premiere` year DEFAULT NULL,
  `duration` int DEFAULT NULL,
  `oscars_won` int DEFAULT NULL,
  `weight` int DEFAULT NULL,
  PRIMARY KEY (`movie_id`),
  KEY `id_director` (`director_id`),
  CONSTRAINT `movie_ibfk_1` FOREIGN KEY (`director_id`) REFERENCES `person` (`person_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie`
--

LOCK TABLES `movie` WRITE;
/*!40000 ALTER TABLE `movie` DISABLE KEYS */;
INSERT INTO `movie` VALUES (1,'Titanic',6,1997,194,11,NULL),(2,'Star Wars: Episode I - The Phantom Menace',42,1999,133,0,-21),(3,'Star Wars: Episode II - Attack of the Clones',42,2002,142,0,-20),(4,'Star Wars: Episode III - Revenge of the Sith',42,2005,140,0,-19),(5,'Star Wars: Episode IV - A New Hope',42,1977,121,6,-18),(6,'Star Wars: Episode V - The Empire Strikes Back',51,1980,124,1,-17),(7,'Star Wars: Episode VI - Return of the Jedi',54,1983,135,0,-16),(8,'Jumanji',14,1995,101,0,NULL),(9,'Spirited away',7,2001,125,1,NULL),(10,'Inside Out',8,2015,102,1,NULL),(11,'Braveheart',9,1995,177,5,NULL),(12,'Forrest Gump',20,1994,142,6,NULL),(13,'Who Framed Roger Rabbit',20,1988,103,3,NULL),(14,'Back to the Future',20,1985,111,1,-12),(15,'Back to the Future Part II',20,1989,108,0,-11),(16,'Back to the Future Part III',20,1990,118,0,-10),(17,'Indiana Jones and the Raiders of the Lost Ark',30,1981,115,4,-7),(18,'Indiana Jones and the Temple of Doom',30,1984,118,1,-6),(19,'Indiana Jones and the Last Crusade',30,1989,127,1,-5),(20,'Indiana Jones and the Kingdom of the Crystal Skull',30,2008,140,0,-4),(21,'Indiana Jones and the Dial of Destiny',74,2023,142,0,-3);
/*!40000 ALTER TABLE `movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie_actors`
--

DROP TABLE IF EXISTS `movie_actors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie_actors` (
  `movie_id` int NOT NULL,
  `person_id` int NOT NULL,
  `character` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`movie_id`,`person_id`),
  KEY `id_persona` (`person_id`),
  CONSTRAINT `movie_actors_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`movie_id`),
  CONSTRAINT `movie_actors_ibfk_2` FOREIGN KEY (`person_id`) REFERENCES `person` (`person_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_actors`
--

LOCK TABLES `movie_actors` WRITE;
/*!40000 ALTER TABLE `movie_actors` DISABLE KEYS */;
INSERT INTO `movie_actors` VALUES (1,1,'Rose DeWitt Bukater'),(1,2,'Jack Dawson'),(1,3,'Ruth DeWitt Bukater'),(1,4,'Caledon Cal Hockley'),(1,5,'Molly Brown'),(2,49,'C-3PO'),(2,50,'R2-D2'),(2,55,'Senator Palpatine'),(2,57,'Qui-Gon Jinn'),(2,58,'Ben Obi-Wan Kenobi'),(2,59,'Queen Amidala / Padmé'),(2,60,'Anakin Skywalker'),(2,61,'Darth Maul'),(3,49,'C-3PO / Dannl Faytonni'),(3,50,'R2-D2'),(3,55,'Supreme Chancellor Palpatine'),(3,58,'Ben Obi-Wan Kenobi'),(3,59,'Padmé Amidala'),(3,62,'Anakin Skywalker'),(3,63,'Count Dooku'),(3,64,'Mace Windu'),(4,47,'Chewbacca'),(4,49,'C-3PO'),(4,50,'R2-D2'),(4,55,'Supreme Chancellor Palpatine'),(4,58,'Ben Obi-Wan Kenobi'),(4,59,'Padmé Amidala'),(4,62,'Anakin Skywalker'),(4,63,'Count Dooku'),(4,64,'Mace Windu'),(5,31,'Han Solo'),(5,43,'Luke Skywalker'),(5,44,'Princess Leia Organa'),(5,45,'Ben Obi-Wan Kenobi'),(5,46,'Darth Vader'),(5,47,'Chewbacca'),(5,48,'Grand Moff Tarkin'),(5,49,'C-3PO'),(5,50,'R2-D2'),(6,31,'Han Solo'),(6,43,'Luke Skywalker'),(6,44,'Princess Leia Organa'),(6,45,'Ben Obi-Wan Kenobi'),(6,46,'Darth Vader'),(6,47,'Chewbacca'),(6,49,'C-3PO'),(6,50,'R2-D2'),(6,52,'Lando Calrissian'),(6,53,'Boba Fett'),(7,31,'Han Solo'),(7,43,'Luke Skywalker'),(7,44,'Princess Leia Organa'),(7,45,'Ben Obi-Wan Kenobi'),(7,46,'Darth Vader'),(7,47,'Chewbacca'),(7,49,'C-3PO'),(7,50,'R2-D2'),(7,52,'Lando Calrissian'),(7,53,'Boba Fett'),(7,55,'Anakin Skywalker'),(7,56,'The Emperor'),(8,15,'Alan Parrish'),(8,16,'Van Pelt / Sam Parrish'),(8,17,'Judy Shepherd'),(8,18,'Peter Shepherd'),(8,19,'Sarah Whittle'),(11,9,'William Wallace'),(11,10,'Murron MacClannough'),(11,11,'Princess Isabelle'),(11,12,'King Edward'),(11,13,'Robert the Bruce'),(12,25,'Forrest Gump'),(12,26,'Jenny Curran'),(12,27,'Lieutenant Dan Taylor'),(12,28,'Mrs. Gump'),(12,29,'Bubba Blue'),(13,21,'Eddie Valiant'),(13,22,'Judge Doom'),(13,23,'Dolores'),(13,24,'Marvin Acme'),(14,4,'Match'),(14,22,'Dr. Emmett Brown'),(14,36,'Marty McFly'),(14,37,'Lorraine Baines McFly'),(14,38,'George McFly'),(14,40,'Biff Tannen'),(15,4,'Match'),(15,22,'Dr. Emmett Brown'),(15,36,'Marty McFly / Marty McFly Jr / Marlene McFly'),(15,37,'Lorraine'),(15,38,'George McFly'),(15,40,'Biff Tannen / Griff'),(15,41,'Jennifer'),(16,22,'Dr. Emmett Brown'),(16,36,'Marty McFly / Seamus McFly'),(16,37,'Maggie McFly / Lorraine McFly'),(16,39,'Clara Clayton'),(16,40,'Buford Mad Dog Tannen / Biff Tannen'),(16,41,'Jennifer Parker'),(17,31,'Indiana Jones'),(17,33,'Dr. Marcus Brody'),(17,65,'Marion Ravenwood'),(17,66,'Dr. Rene Belloq'),(17,67,'Major Toht'),(18,31,'Indiana Jones'),(18,68,'Wilhelmina \"Willie\" Scott'),(18,69,'Short Round'),(18,70,'Mola Ram'),(19,31,'Indiana Jones'),(19,32,'Professor Henry Jones'),(19,33,'Marcus Brody'),(19,34,'Elsa'),(19,35,'Walter Donovan'),(20,31,'Indiana Jones'),(20,65,'Marion Ravenwood'),(20,71,'Irina Spalko'),(20,72,'Mutt'),(20,73,'Mac'),(21,31,'Indiana Jones'),(21,75,'Helena Shaw'),(21,76,'Jurgen Voller'),(21,77,'Renaldo'),(21,78,'Basil Shaw');
/*!40000 ALTER TABLE `movie_actors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie_genres`
--

DROP TABLE IF EXISTS `movie_genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie_genres` (
  `movie_id` int NOT NULL,
  `genre_id` int NOT NULL,
  PRIMARY KEY (`movie_id`,`genre_id`),
  KEY `id_genero` (`genre_id`),
  CONSTRAINT `movie_genres_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`movie_id`),
  CONSTRAINT `movie_genres_ibfk_2` FOREIGN KEY (`genre_id`) REFERENCES `genre` (`genre_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_genres`
--

LOCK TABLES `movie_genres` WRITE;
/*!40000 ALTER TABLE `movie_genres` DISABLE KEYS */;
INSERT INTO `movie_genres` VALUES (1,1),(11,1),(12,1),(1,2),(1,3),(11,3),(2,4),(3,4),(4,4),(5,4),(6,4),(7,4),(10,4),(14,4),(15,4),(16,4),(17,4),(18,4),(19,4),(20,4),(21,4),(2,5),(3,5),(4,5),(5,5),(6,5),(7,5),(14,5),(15,5),(16,5),(2,6),(3,6),(4,6),(5,6),(6,6),(7,6),(8,6),(9,6),(9,7),(10,7),(13,7),(8,8),(10,8),(12,8),(13,8),(14,8),(15,8),(16,8),(19,8),(20,8),(11,9),(17,9),(18,9),(19,9),(21,9);
/*!40000 ALTER TABLE `movie_genres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie_languages_spoken`
--

DROP TABLE IF EXISTS `movie_languages_spoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie_languages_spoken` (
  `movie_id` int NOT NULL,
  `language_id` int NOT NULL,
  PRIMARY KEY (`movie_id`,`language_id`),
  KEY `id_idioma` (`language_id`),
  CONSTRAINT `movie_languages_spoken_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`movie_id`),
  CONSTRAINT `movie_languages_spoken_ibfk_2` FOREIGN KEY (`language_id`) REFERENCES `language` (`language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_languages_spoken`
--

LOCK TABLES `movie_languages_spoken` WRITE;
/*!40000 ALTER TABLE `movie_languages_spoken` DISABLE KEYS */;
INSERT INTO `movie_languages_spoken` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(10,1),(11,1),(12,1),(13,1),(14,1),(15,1),(16,1),(17,1),(18,1),(19,1),(20,1),(21,1),(9,2),(11,3),(17,3),(11,4),(17,5),(19,5),(19,6),(17,7),(17,8),(17,9),(17,10),(18,11),(18,12);
/*!40000 ALTER TABLE `movie_languages_spoken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `person` (
  `person_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `country_id` int DEFAULT NULL,
  PRIMARY KEY (`person_id`),
  KEY `id_pais` (`country_id`),
  CONSTRAINT `person_ibfk_1` FOREIGN KEY (`country_id`) REFERENCES `country` (`country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person`
--

LOCK TABLES `person` WRITE;
/*!40000 ALTER TABLE `person` DISABLE KEYS */;
INSERT INTO `person` VALUES (1,'Kate','Winslet','1975-10-05',1),(2,'Leonardo','DiCaprio','1974-11-11',2),(3,'Frances','Fisher','1952-05-11',1),(4,'Billy','Zane','1966-02-24',2),(5,'Kathy','Bates','1948-06-28',2),(6,'James','Cameron','1954-08-16',3),(7,'Hayao','Miyazaki','1941-01-05',4),(8,'Pete','Docter','1968-10-09',2),(9,'Mel','Gibson','1956-01-03',2),(10,'Catherine','McCormack','1972-04-03',1),(11,'Sophie','Marceau','1966-11-17',5),(12,'Patrick','McGoohan','1928-03-19',2),(13,'Angus','Macfadyen','1963-09-21',6),(14,'Joe','Johnston','1950-05-13',2),(15,'Robin','Williams','1951-07-21',2),(16,'Jonathan','Hyde','1948-05-21',7),(17,'Kirsten','Dunst','1982-04-30',2),(18,'Bradley','Pierce','1982-10-23',2),(19,'Bonnie','Hunt','1961-09-22',2),(20,'Robert','Zemeckis','1952-05-14',2),(21,'Bob','Hoskins','1942-10-26',1),(22,'Christopher','Lloyd','1938-10-22',2),(23,'Joanna','Cassidy','1945-08-02',2),(24,'Stubby','Kaye','1918-11-11',2),(25,'Tom','Hanks','1956-07-09',2),(26,'Robin','Wright','1966-04-08',2),(27,'Gary','Sinise','1955-03-17',2),(28,'Sally','Field','1946-11-06',2),(29,'Mykelti','Williamson','1957-03-04',2),(30,'Steven','Spielberg','1946-12-18',2),(31,'Harrison','Ford','1942-07-13',2),(32,'Sean','Connery','1930-08-25',6),(33,'Denholm','Elliott','1922-05-31',1),(34,'Alison','Doody','1966-11-11',8),(35,'Julian','Glover','1935-03-27',1),(36,'Michael','Fox','1961-06-09',3),(37,'Lea','Thompson','1961-05-31',2),(38,'Crispin','Glover','1964-04-20',2),(39,'Mary','Steenburgen','1953-02-08',2),(40,'Thomas','Wilson','1959-04-15',2),(41,'Elisabeth','Shue','1963-10-06',2),(42,'George','Lucas','1944-05-14',2),(43,'Mark','Hamill','1951-09-25',2),(44,'Carrie','Fisher','1956-10-21',2),(45,'Alec','Guinness','1914-04-02',1),(46,'David','Prowse','1935-07-01',1),(47,'Peter','Mayhew','1944-05-19',1),(48,'Peter','Cushing','1913-05-26',1),(49,'Anthony','Daniels','1946-02-21',1),(50,'Kenny','Baker','1934-08-24',1),(51,'Irvin','Kershner','1923-04-29',2),(52,'Billy Dee','Williams','1937-04-06',2),(53,'Jeremy','Bulloch','1945-02-16',1),(54,'Richard','Marquand','1937-09-22',9),(55,'Sebastian','Shaw','1905-05-29',1),(56,'Ian','McDiarmid','1944-08-11',6),(57,'Liam','Neeson','1952-06-07',10),(58,'Ewan','McGregor','1971-03-31',6),(59,'Natalie','Portman','1981-06-09',11),(60,'Jake','Lloyd','1989-03-05',2),(61,'Ray','Park','1974-08-23',6),(62,'Hayden','Christensen','1981-04-19',3),(63,'Christopher','Lee','1922-05-27',1),(64,'Samuel L.','Jackson','1948-12-21',2),(65,'Karen','Allen','1951-10-05',2),(66,'Paul','Freeman','1943-01-18',1),(67,'Ronald','Lacey','1935-05-28',1),(68,'Kate','Capshaw','1953-11-03',2),(69,'Jonathan','Ke Quan','1971-08-20',12),(70,'Amrish','Puri','1932-06-22',13),(71,'Cate','Blanchett','1969-05-14',7),(72,'Shia','LaBeouf','1986-06-11',2),(73,'Ray','Winstone','1957-02-19',1),(74,'James','Mangold','1964-12-01',2),(75,'Phoebe','Waller-Bridge','1985-07-14',1),(76,'Mads','Mikkelsen','1965-11-22',14),(77,'Antonio','Banderas','1960-08-10',15),(78,'Toby','Jones','1967-09-07',1);
/*!40000 ALTER TABLE `person` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-27 18:07:54
