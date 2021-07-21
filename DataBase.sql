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

-- Volcando estructura para tabla apilibrary.book
CREATE TABLE IF NOT EXISTS `book` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `active` bit(1) DEFAULT NULL,
  `format` varchar(255) DEFAULT NULL,
  `genre` varchar(255) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `publication_date` varchar(255) DEFAULT NULL,
  `publisher` varchar(255) DEFAULT NULL,
  `stock` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla apilibrary.book: ~0 rows (aproximadamente)
DELETE FROM `book`;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` (`id`, `active`, `format`, `genre`, `language`, `name`, `price`, `publication_date`, `publisher`, `stock`) VALUES
	(2, b'1', 'digital', 'horror', 'spanish', 'The Best of Edgar Allan Poe', 10, '21/07/2021', 'Saga', 100),
	(3, b'1', 'paper', 'horror', 'spanish', 'Misery', 30, '07/07/2021', 'Novel', 20),
	(4, b'1', 'paper', 'horror', 'spanish', 'The Screaming Skull', 5, '21/07/2021', 'Novel', 20),
	(5, b'1', 'paper', 'horror', 'spanish', 'The Turn of the Screw', 10, '21/07/2021', 'Altillo', 15),
	(6, b'1', 'paper', 'horror', 'spanish', 'The Monkey\'s Paw', 13, '21/07/2021', 'Jacobs', 36),
	(7, b'1', 'paper', 'terror', 'spanish', ' Color Out of Space', 45, '04/2/2021', 'Amazing', 22);
/*!40000 ALTER TABLE `book` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
