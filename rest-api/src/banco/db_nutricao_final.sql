-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 11-Nov-2018 às 10:18
-- Versão do servidor: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_nutricao_final`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `ali_alimentos`
--

DROP TABLE IF EXISTS `ali_alimentos`;
CREATE TABLE IF NOT EXISTS `ali_alimentos` (
  `ALI_ALIMENTOS_ID` int(6) NOT NULL AUTO_INCREMENT,
  `ALI_NOME` varchar(35) NOT NULL,
  `ALI_INDICE_GLICEMICO` char(3) NOT NULL,
  `ALI_PORCAO_GRAMAS` decimal(5,2) DEFAULT NULL,
  `ALI_GRA_GRUPOS_ALIMENTARES_ID` int(6) DEFAULT NULL,
  PRIMARY KEY (`ALI_ALIMENTOS_ID`),
  KEY `ALI_GRA_GRUPOS_ALIMENTARES_ID` (`ALI_GRA_GRUPOS_ALIMENTARES_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `ali_alimentos`
--

INSERT INTO `ali_alimentos` (`ALI_ALIMENTOS_ID`, `ALI_NOME`, `ALI_INDICE_GLICEMICO`, `ALI_PORCAO_GRAMAS`, `ALI_GRA_GRUPOS_ALIMENTARES_ID`) VALUES
(1, 'Abacate cru', '21', '300.00', NULL),
(2, 'Abacaxi', '30', '300.00', NULL),
(3, 'Abacaxi cru', '25', '300.00', NULL),
(4, 'Abadejo file congelado cru', '51', '300.00', NULL),
(5, 'Abobora moranga', '33', '300.00', NULL),
(6, 'Abobrinha', '39', '300.00', NULL),
(7, 'Acai com banana granola e mel', '62', '300.00', NULL),
(8, 'Acaraje', '72', '300.00', NULL),
(9, 'Acelga', '25', '300.00', NULL),
(10, 'Acerola', '30', '300.00', NULL),
(11, 'Achocolatado', '58', '300.00', NULL),
(12, 'Açúcar', '65', '300.00', NULL),
(13, 'Adess', '70', '300.00', NULL),
(14, 'Adoçante', '39', '300.00', NULL),
(15, 'Água', '24', '300.00', NULL),
(16, 'Água com gás', '38', '300.00', NULL),
(17, 'Água de coco verde', '45', '300.00', NULL),
(18, 'Alcatra', '28', '300.00', NULL),
(19, 'Alecrim', '12', '300.00', NULL),
(20, 'Alface crespa', '19', '300.00', NULL),
(21, 'Alho', '34', '300.00', NULL),
(22, 'Almôndega', '39', '300.00', NULL),
(23, 'Apresuntado', '51', '300.00', NULL),
(24, 'Arroz branco', '59', '300.00', NULL),
(25, 'Arroz doce', '64', '300.00', NULL),
(26, 'Arroz integral', '49', '300.00', NULL),
(27, 'Atum', '35', '300.00', NULL),
(28, 'Aveia em flocos', '24', '300.00', NULL),
(29, 'Azeite', '18', '300.00', NULL),
(30, 'Azeitona', '29', '300.00', NULL),
(31, 'Bacalhau', '38', '300.00', NULL),
(32, 'Bacon', '64', '300.00', NULL),
(33, 'Banana', '39', '300.00', NULL),
(34, 'Batata', '48', '300.00', NULL),
(35, 'Batata baroa', '29', '300.00', NULL),
(36, 'Batata doce', '47', '300.00', NULL),
(37, 'Bebida láctea', '57', '300.00', NULL),
(38, 'Berinjela', '24', '300.00', NULL),
(39, 'Beterraba', '17', '300.00', NULL),
(40, 'Bife grelhado', '34', '300.00', NULL),
(41, 'Biscoito wafer', '65', '300.00', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `die_dietas`
--

DROP TABLE IF EXISTS `die_dietas`;
CREATE TABLE IF NOT EXISTS `die_dietas` (
  `DIE_DIETAS_ID` int(6) NOT NULL,
  `DIE_NOME` varchar(35) NOT NULL,
  `DIE_STATUS` char(1) NOT NULL,
  `DIE_USU_USUARIOS_ID` int(6) DEFAULT NULL,
  PRIMARY KEY (`DIE_DIETAS_ID`),
  KEY `DIE_USU_USUARIOS_ID` (`DIE_USU_USUARIOS_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `gra_grupos_alimentares`
--

DROP TABLE IF EXISTS `gra_grupos_alimentares`;
CREATE TABLE IF NOT EXISTS `gra_grupos_alimentares` (
  `GRA_GRUPOS_ALIMENTARES_ID` int(6) NOT NULL,
  `GRA_NOME` varchar(35) NOT NULL,
  PRIMARY KEY (`GRA_GRUPOS_ALIMENTARES_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `nut_nutrientes`
--

DROP TABLE IF EXISTS `nut_nutrientes`;
CREATE TABLE IF NOT EXISTS `nut_nutrientes` (
  `NUT_NUTRIENTES_ID` int(6) NOT NULL AUTO_INCREMENT,
  `NUT_NOME` varchar(35) NOT NULL,
  `NUT_TIN_TIPOS_NUTRIENTES_ID` int(6) DEFAULT NULL,
  PRIMARY KEY (`NUT_NUTRIENTES_ID`),
  KEY `NUT_TIN_TIPOS_NUTRIENTES_ID` (`NUT_TIN_TIPOS_NUTRIENTES_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `nut_nutrientes`
--

INSERT INTO `nut_nutrientes` (`NUT_NUTRIENTES_ID`, `NUT_NOME`, `NUT_TIN_TIPOS_NUTRIENTES_ID`) VALUES
(1, 'Carboídratos', NULL),
(2, 'Gordura Total', NULL),
(3, 'Gordura Saturada', NULL),
(4, 'Proteína', NULL),
(5, 'Fibra Total', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `rar_relacao_alimentos_refeicoes`
--

DROP TABLE IF EXISTS `rar_relacao_alimentos_refeicoes`;
CREATE TABLE IF NOT EXISTS `rar_relacao_alimentos_refeicoes` (
  `RAR_REF_REFEICOES_ID` int(6) NOT NULL,
  `RAR_ALI_ALIMENTOS_ID` int(6) NOT NULL,
  PRIMARY KEY (`RAR_REF_REFEICOES_ID`,`RAR_ALI_ALIMENTOS_ID`),
  KEY `RAR_ALI_ALIMENTOS_ID` (`RAR_ALI_ALIMENTOS_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ref_refeicoes`
--

DROP TABLE IF EXISTS `ref_refeicoes`;
CREATE TABLE IF NOT EXISTS `ref_refeicoes` (
  `REF_REFEICOES_ID` int(6) NOT NULL AUTO_INCREMENT,
  `REF_NOME` varchar(35) NOT NULL,
  `REF_TIR_TIPOS_REFEICOES_ID` int(6) DEFAULT NULL,
  PRIMARY KEY (`REF_REFEICOES_ID`),
  KEY `REF_TIR_TIPOS_REFEICOES_ID` (`REF_TIR_TIPOS_REFEICOES_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tin_tipos_nutrientes`
--

DROP TABLE IF EXISTS `tin_tipos_nutrientes`;
CREATE TABLE IF NOT EXISTS `tin_tipos_nutrientes` (
  `TIN_TIPOS_NUTRIENTES_ID` int(6) NOT NULL,
  `TIN_NOME` varchar(35) NOT NULL,
  PRIMARY KEY (`TIN_TIPOS_NUTRIENTES_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tir_tipos_refeicoes`
--

DROP TABLE IF EXISTS `tir_tipos_refeicoes`;
CREATE TABLE IF NOT EXISTS `tir_tipos_refeicoes` (
  `TIR_TIPOS_REFEICOES_ID` int(6) NOT NULL,
  `TIR_NOME` varchar(35) NOT NULL,
  PRIMARY KEY (`TIR_TIPOS_REFEICOES_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usu_usuarios`
--

DROP TABLE IF EXISTS `usu_usuarios`;
CREATE TABLE IF NOT EXISTS `usu_usuarios` (
  `USU_USUARIOS_ID` int(6) NOT NULL,
  `USU_NOME` varchar(50) NOT NULL,
  `USU_LOGIN` varchar(35) DEFAULT NULL,
  `USU_SENHA` varchar(35) DEFAULT NULL,
  `USU_EMAIL` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`USU_USUARIOS_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `van_valores_nutricionais`
--

DROP TABLE IF EXISTS `van_valores_nutricionais`;
CREATE TABLE IF NOT EXISTS `van_valores_nutricionais` (
  `VAN_ALI_ALIMENTOS_ID` int(6) NOT NULL,
  `VAN_NUT_NUTRIENTES_ID` int(6) NOT NULL,
  `VAN_QUANTIDADE` varchar(10) NOT NULL,
  PRIMARY KEY (`VAN_ALI_ALIMENTOS_ID`,`VAN_NUT_NUTRIENTES_ID`),
  KEY `VAN_NUT_NUTRIENTES_ID` (`VAN_NUT_NUTRIENTES_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `van_valores_nutricionais`
--

INSERT INTO `van_valores_nutricionais` (`VAN_ALI_ALIMENTOS_ID`, `VAN_NUT_NUTRIENTES_ID`, `VAN_QUANTIDADE`) VALUES
(1, 1, '7,4'),
(1, 2, '15,3'),
(1, 3, '2,44'),
(1, 4, '1,99'),
(1, 5, '4,1'),
(2, 1, '7,4'),
(2, 2, '15,3'),
(2, 3, '2,44'),
(2, 4, '1,99'),
(2, 5, '4,1'),
(3, 1, '7,4'),
(3, 2, '15,3'),
(3, 3, '2,44'),
(3, 4, '1,99'),
(3, 5, '4,1'),
(4, 1, '7,4'),
(4, 2, '15,3'),
(4, 3, '2,44'),
(4, 4, '1,99'),
(4, 5, '4,1'),
(5, 1, '7,4'),
(5, 2, '15,3'),
(5, 3, '2,44'),
(5, 4, '1,99'),
(5, 5, '4,1'),
(6, 1, '7,4'),
(6, 2, '15,3'),
(6, 3, '2,44'),
(6, 4, '1,99'),
(6, 5, '4,1'),
(7, 1, '7,4'),
(7, 2, '15,3'),
(7, 3, '2,44'),
(7, 4, '1,99'),
(7, 5, '4,1'),
(8, 1, '7,4'),
(8, 2, '15,3'),
(8, 3, '2,44'),
(8, 4, '1,99'),
(8, 5, '4,1'),
(9, 1, '7,4'),
(9, 2, '15,3'),
(9, 3, '2,44'),
(9, 4, '1,99'),
(9, 5, '4,1'),
(10, 1, '7,4'),
(10, 2, '15,3'),
(10, 3, '2,44'),
(10, 4, '1,99'),
(10, 5, '4,1'),
(11, 1, '7,4'),
(11, 2, '15,3'),
(11, 3, '2,44'),
(11, 4, '1,99'),
(11, 5, '4,1'),
(12, 1, '7,4'),
(12, 2, '15,3'),
(12, 3, '2,44'),
(12, 4, '1,99'),
(12, 5, '4,1'),
(13, 1, '7,4'),
(13, 2, '15,3'),
(13, 3, '2,44'),
(13, 4, '1,99'),
(13, 5, '4,1'),
(14, 1, '7,4'),
(14, 2, '15,3'),
(14, 3, '2,44'),
(14, 4, '1,99'),
(14, 5, '4,1'),
(15, 1, '7,4'),
(15, 2, '15,3'),
(15, 3, '2,44'),
(15, 4, '1,99'),
(15, 5, '4,1'),
(16, 1, '7,4'),
(16, 2, '15,3'),
(16, 3, '2,44'),
(16, 4, '1,99'),
(16, 5, '4,1'),
(17, 1, '7,4'),
(17, 2, '15,3'),
(17, 3, '2,44'),
(17, 4, '1,99'),
(17, 5, '4,1'),
(18, 1, '7,4'),
(18, 2, '15,3'),
(18, 3, '2,44'),
(18, 4, '1,99'),
(18, 5, '4,1'),
(19, 1, '7,4'),
(19, 2, '15,3'),
(19, 3, '2,44'),
(19, 4, '1,99'),
(19, 5, '4,1'),
(20, 1, '7,4'),
(20, 2, '15,3'),
(20, 3, '2,44'),
(20, 4, '1,99'),
(20, 5, '4,1'),
(21, 1, '7,4'),
(21, 2, '15,3'),
(21, 3, '2,44'),
(21, 4, '1,99'),
(21, 5, '4,1'),
(22, 1, '7,4'),
(22, 2, '15,3'),
(22, 3, '2,44'),
(22, 4, '1,99'),
(22, 5, '4,1'),
(23, 1, '7,4'),
(23, 2, '15,3'),
(23, 3, '2,44'),
(23, 4, '1,99'),
(23, 5, '4,1'),
(24, 1, '7,4'),
(24, 2, '15,3'),
(24, 3, '2,44'),
(24, 4, '1,99'),
(24, 5, '4,1'),
(25, 1, '7,4'),
(25, 2, '15,3'),
(25, 3, '2,44'),
(25, 4, '1,99'),
(25, 5, '4,1'),
(26, 1, '7,4'),
(26, 2, '15,3'),
(26, 3, '2,44'),
(26, 4, '1,99'),
(26, 5, '4,1'),
(27, 1, '7,4'),
(27, 2, '15,3'),
(27, 3, '2,44'),
(27, 4, '1,99'),
(27, 5, '4,1'),
(28, 1, '7,4'),
(28, 2, '15,3'),
(28, 3, '2,44'),
(28, 4, '1,99'),
(28, 5, '4,1'),
(29, 1, '7,4'),
(29, 2, '15,3'),
(29, 3, '2,44'),
(29, 4, '1,99'),
(29, 5, '4,1'),
(30, 1, '7,4'),
(30, 2, '15,3'),
(30, 3, '2,44'),
(30, 4, '1,99'),
(30, 5, '4,1'),
(31, 1, '7,4'),
(31, 2, '15,3'),
(31, 3, '2,44'),
(31, 4, '1,99'),
(31, 5, '4,1'),
(32, 1, '7,4'),
(32, 2, '15,3'),
(32, 3, '2,44'),
(32, 4, '1,99'),
(32, 5, '4,1'),
(33, 1, '7,4'),
(33, 2, '15,3'),
(33, 3, '2,44'),
(33, 4, '1,99'),
(33, 5, '4,1'),
(34, 1, '7,4'),
(34, 2, '15,3'),
(34, 3, '2,44'),
(34, 4, '1,99'),
(34, 5, '4,1'),
(35, 1, '7,4'),
(35, 2, '15,3'),
(35, 3, '2,44'),
(35, 4, '1,99'),
(35, 5, '4,1'),
(36, 1, '7,4'),
(36, 2, '15,3'),
(36, 3, '2,44'),
(36, 4, '1,99'),
(36, 5, '4,1'),
(37, 1, '7,4'),
(37, 2, '15,3'),
(37, 3, '2,44'),
(37, 4, '1,99'),
(37, 5, '4,1'),
(38, 1, '7,4'),
(38, 2, '15,3'),
(38, 3, '2,44'),
(38, 4, '1,99'),
(38, 5, '4,1'),
(39, 1, '7,4'),
(39, 2, '15,3'),
(39, 3, '2,44'),
(39, 4, '1,99'),
(39, 5, '4,1'),
(40, 1, '7,4'),
(40, 2, '15,3'),
(40, 3, '2,44'),
(40, 4, '1,99'),
(40, 5, '4,1'),
(41, 1, '7,4'),
(41, 2, '15,3'),
(41, 3, '2,44'),
(41, 4, '1,99'),
(41, 5, '4,1'),
(42, 1, '7,4'),
(42, 2, '15,3'),
(42, 3, '2,44'),
(42, 4, '1,99'),
(42, 5, '4,1');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
