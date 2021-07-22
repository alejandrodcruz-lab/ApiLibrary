-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         8.0.20 - MySQL Community Server - GPL
-- SO del servidor:              Win64
-- HeidiSQL Versión:             11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Volcando estructura para tabla apilibrary.author
CREATE TABLE IF NOT EXISTS `author` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `nationality` varchar(255) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla apilibrary.author: ~0 rows (aproximadamente)
DELETE FROM `author`;
/*!40000 ALTER TABLE `author` DISABLE KEYS */;
INSERT INTO `author` (`id`, `name`, `nationality`, `surname`) VALUES
	(1, 'Edgar Allan', 'American', 'Poe'),
	(2, 'Howard', 'American', 'Lovecraft'),
	(3, 'Null', 'Unknown', 'Unknown');
/*!40000 ALTER TABLE `author` ENABLE KEYS */;

-- Volcando estructura para tabla apilibrary.book
CREATE TABLE IF NOT EXISTS `book` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `active` bit(1) DEFAULT NULL,
  `format` varchar(255) DEFAULT NULL,
  `genre` varchar(255) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `publication_date` date DEFAULT NULL,
  `publisher` varchar(255) DEFAULT NULL,
  `stock` int DEFAULT NULL,
  `author_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKklnrv3weler2ftkweewlky958` (`author_id`),
  CONSTRAINT `FKklnrv3weler2ftkweewlky958` FOREIGN KEY (`author_id`) REFERENCES `author` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla apilibrary.book: ~0 rows (aproximadamente)
DELETE FROM `book`;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` (`id`, `active`, `format`, `genre`, `language`, `name`, `price`, `publication_date`, `publisher`, `stock`, `author_id`) VALUES
	(2, b'1', 'digital', 'horror', 'spanish', 'The Best of Edgar Allan Poe', 10, '2021-07-21', 'Saga', 100, 1),
	(3, b'1', 'paper', 'horror', 'spanish', 'Misery', 30, '2021-07-21', 'Novel', 20, 3),
	(4, b'1', 'paper', 'horror', 'spanish', 'The Screaming Skull', 5, '2021-07-21', 'Novel', 20, 3),
	(5, b'1', 'paper', 'horror', 'spanish', 'The Turn of the Screw', 10, '2021-07-21', 'Altillo', 15, 3),
	(6, b'1', 'paper', 'horror', 'spanish', 'The Monkey\'s Paw', 13, '2021-07-21', 'Jacobs', 36, 3),
	(7, b'1', 'paper', 'terror', 'spanish', ' Color Out of Space', 45, '2021-07-21', 'Amazing', 22, 2);
/*!40000 ALTER TABLE `book` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
