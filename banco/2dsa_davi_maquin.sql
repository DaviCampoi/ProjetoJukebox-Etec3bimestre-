-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           10.4.24-MariaDB - mariadb.org binary distribution
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Copiando estrutura do banco de dados para 2dsa_davi_maquina
DROP DATABASE IF EXISTS `2dsa_davi_maquina`;
CREATE DATABASE IF NOT EXISTS `2dsa_davi_maquina` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `2dsa_davi_maquina`;

-- Copiando estrutura para tabela 2dsa_davi_maquina.tb01_produto
DROP TABLE IF EXISTS `tb01_produto`;
CREATE TABLE IF NOT EXISTS `tb01_produto` (
  `tb01_codigo` int(11) NOT NULL,
  `tb01_nome` varchar(50) DEFAULT NULL,
  `tb01_preco` double(10,2) DEFAULT NULL,
  `tb01_img` longblob DEFAULT NULL,
  `tb01_qntd` int(11) DEFAULT NULL,
  PRIMARY KEY (`tb01_codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Exportação de dados foi desmarcado.

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
