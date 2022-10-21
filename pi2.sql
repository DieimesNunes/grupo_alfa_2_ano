-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 05-Out-2022 às 13:03
-- Versão do servidor: 5.7.36
-- versão do PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `pi2`
--
CREATE DATABASE IF NOT EXISTS `pi2` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `pi2`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `adm`
--

DROP TABLE IF EXISTS `adm`;
CREATE TABLE IF NOT EXISTS `adm` (
  `id_adm` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(200) COLLATE utf8_bin NOT NULL,
  `login` varchar(200) COLLATE utf8_bin NOT NULL,
  `senha` varchar(200) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id_adm`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `adm`
--

INSERT INTO `adm` (`id_adm`, `nome`, `login`, `senha`) VALUES
(1, 'Joao Gabriel do Prado Schianti', 'joao', '$2y$10$F3wwDR/1F19aMiqRvxz0ve/niwL/gC75Zcm1vU/ogSKiGff9j/G/.');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tabela_cadastrar`
--

DROP TABLE IF EXISTS `tabela_cadastrar`;
CREATE TABLE IF NOT EXISTS `tabela_cadastrar` (
  `id_nome` int(11) NOT NULL,
  `nome` varchar(350) COLLATE utf8_bin NOT NULL,
  `cpf` int(11) NOT NULL,
  `senha` varchar(20) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id_nome`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tabela_login`
--

DROP TABLE IF EXISTS `tabela_login`;
CREATE TABLE IF NOT EXISTS `tabela_login` (
  `usuario` varchar(200) COLLATE utf8_bin NOT NULL,
  `senha` varchar(25) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`usuario`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tabela_pedidos`
--

DROP TABLE IF EXISTS `tabela_pedidos`;
CREATE TABLE IF NOT EXISTS `tabela_pedidos` (
  `id_pedidos` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) COLLATE utf8_bin NOT NULL,
  `telefone` varchar(100) COLLATE utf8_bin NOT NULL,
  `id_produto` int(11) NOT NULL,
  `quantidade` varchar(100) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id_pedidos`),
  KEY `id_produto` (`id_produto`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `tabela_pedidos`
--

INSERT INTO `tabela_pedidos` (`id_pedidos`, `nome`, `telefone`, `id_produto`, `quantidade`) VALUES
(1, 'dieimes', 'dfdsfds', 2, ''),
(2, 'Dieimes teste1', '9999999', 2, '1'),
(3, '', '', 2, '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tabela_produtos`
--

DROP TABLE IF EXISTS `tabela_produtos`;
CREATE TABLE IF NOT EXISTS `tabela_produtos` (
  `nome` varchar(300) COLLATE utf8_bin NOT NULL,
  `quantidade` int(10) NOT NULL,
  `arquivo` varchar(1000) COLLATE utf8_bin NOT NULL,
  `tipo` varchar(100) COLLATE utf8_bin NOT NULL,
  `descricao` text COLLATE utf8_bin NOT NULL,
  `id_lanche` int(11) NOT NULL AUTO_INCREMENT,
  `preco` varchar(100) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id_lanche`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `tabela_produtos`
--

INSERT INTO `tabela_produtos` (`nome`, `quantidade`, `arquivo`, `tipo`, `descricao`, `id_lanche`, `preco`) VALUES
('Coca Cola lata 350ml', 0, 'lanches/632a1f3c15096.jpg', 'Bebida', '\r\n   Refrigerante Coca-Cola 350ml: Refresque-se com uma Coca-Cola! O sabor que vocÃª jÃ¡ conhece, ideal para matar sua sede, para acompanhar refeiÃ§Ãµes ou tomar ao longo do dia.                 ', 1, '3,50'),
('Mousse de limÃ£o', 0, 'lanches/632a204aa1c92.jpg', 'alimento', 'Base crocante de biscoito com castanha de caju e a leveza do creme aerado de limÃ£o!\r\n                    ', 2, '2,50'),
('Doce de brigadeiro', 0, 'lanches/632a20bc17692.jpg', 'Alimento', 'O brigadeiro Ã© um doce genuinamente brasileiro. Um orgulho sÃ³! Essa delÃ­cia de chocolate faz a alegria da crianÃ§ada.', 3, '1,00'),
('PÃ£o de Queijo', 0, 'lanches/632a210b43894.jpg', 'Alimento', 'O pÃ£o de queijo Ã© uma iguaria oriunda da AmÃ©rica do Sul, muito apreciada no Brasil.', 4, '2,50'),
('Achocolatado Pronto CHOCO MILK-200ml', 0, 'lanches/6331858d03011.jpg', 'Alimento', '\r\n                    ', 5, '3,00'),
('Ãgua 500ml com gÃ¡s', 0, 'lanches/63318692012b2.jpg', 'Alimento', '\r\n                    ', 6, '2,50'),
('Ãgua 500ml sem gÃ¡s', 0, 'lanches/633186f427a75.jpg', 'Alimento', '\r\n                    Ãgua Mineral Sem GÃ¡s Crystal PET 500ML', 7, '1,75'),
('Ãgua 510ml sem gÃ¡s PET', 0, 'lanches/633187de1bffe.jpg', 'Alimento', '\r\n                    Ãgua mineral sem gÃ¡s, proveniente da fonte de Santa BÃ¡rbara. ', 8, '1,18'),
('Ãgua 510ml com  gÃ¡s PET', 0, 'lanches/6331881d960c8.jpg', 'Alimento', '\r\n                    ', 9, '2,35'),
('Refrigerante COCA COLA 600ml', 0, 'lanches/63319faa85dfc.jpg', 'Alimento', '\r\n                    Com sabor inconfundÃ­vel e Ãºnico, uma Coca-Cola Original Ã© o refrigerante mais tradicional e consumido no mundo inteiro! Toda Coca-Cola Original Ã© especialmente concebido para manter sempre a qualidade do melhor sabor de refrigerante! Ã‰ perfeita para compartilhar os melhores momentos da vida com amigos e familiares!', 10, '6,50'),
('Refrigerante COCA COLA 600ml', 0, 'lanches/63319fb04f33a.jpg', 'Alimento', '\r\n                    Com sabor inconfundÃ­vel e Ãºnico, uma Coca-Cola Original Ã© o refrigerante mais tradicional e consumido no mundo inteiro! Toda Coca-Cola Original Ã© especialmente concebido para manter sempre a qualidade do melhor sabor de refrigerante! Ã‰ perfeita para compartilhar os melhores momentos da vida com amigos e familiares!', 11, '6,50'),
('Refrigerante COCA-COLA LATA 350ml', 0, 'lanches/6331a06b19c60.jpg', 'Alimento', 'COCA COLA LATA 350ml .Toda Coca-Cola Original Ã© especialmente concebido para manter sempre a qualidade do melhor sabor de refrigerante! Ã‰ perfeita para compartilhar os melhores momentos da vida com amigos e familiares!\r\n                    ', 12, '4,00'),
('Refrigerante COCA-COLA MINI PET 200ml', 0, 'lanches/6331a0ea6acb2.jpg', 'Alimento', '\r\n                    Refrigerante COCA-COLA MINI PET 200ml.Toda Coca-Cola Original Ã© especialmente concebido para manter sempre a qualidade do melhor sabor de refrigerante! Ã‰ perfeita para compartilhar os melhores momentos da vida com amigos e familiares!', 13, '2,50'),
('Refrigerante COCA COLA MINI PET 250ml', 0, 'lanches/6331a1b82f3bd.jpg', 'Bebida', 'Refrigerante COCA COLA MINI PET 250ml.Toda Coca-Cola Original Ã© especialmente concebido para manter sempre a qualidade do melhor sabor de refrigerante! Ã‰ perfeita para compartilhar os melhores momentos da vida com amigos e familiares!         ', 14, '3,00'),
('Refrigerante COCA COLA ZERO LATA ', 0, 'lanches/6331a229f3120.jpg', 'Bebida', '\r\n                    Refrigerante COCA COLA ZERO LATA .Toda Coca-Cola Original Ã© especialmente concebido para manter sempre a qualidade do melhor sabor de refrigerante! Ã‰ perfeita para compartilhar os melhores momentos da vida com amigos e familiares!', 15, '4,00'),
('Refrigerante COCA COLA ZERO MINI PET 200ml', 0, 'lanches/6331a29776026.jpg', 'Bebida', '\r\n                  Refrigerante COCA COLA ZERO MINI PET 200ml.Toda Coca-Cola Original Ã© especialmente concebido para manter sempre a qualidade do melhor sabor de refrigerante! Ã‰ perfeita para compartilhar os melhores momentos da vida com amigos e familiares!  ', 16, '2,50'),
('Refrigerante FANTA GUARANÃ LATA 350ml', 0, 'lanches/6331a31518f7a.jpg', 'Bebida', '\r\n                    Refrigerante FANTA GUARANÃ LATA 350ml.Com sabor Ãºnico, o Refrigerante da marca Fanta sabor GuaranÃ¡ Ã© sucesso no mercado entre os refrigerantes nacionais e internacionais. Produzido com Ã¡gua gaseificada, aÃ§Ãºcar e guaranÃ¡ Ã© uma excelente opÃ§Ã£o para matar a sede!', 17, '4,00'),
('Refrigerante FANTA LARANJA LATA 350ml', 0, 'lanches/6331a404ed625.jpg', 'Bebida', 'Refrigerante FANTA LARANJA LATA 350ml.Com sabor Ãºnico, o Refrigerante da marca Fanta sabor Laranja Ã© sucesso no mercado entre os refrigerantes nacionais e internacionais. Produzido com Ã¡gua gaseificada, aÃ§Ãºcar e guaranÃ¡ Ã© uma excelente opÃ§Ã£o para matar a sede!\r\n                    ', 18, '4,00'),
('Refrigerante FANTA UVA LATA 350ml', 0, 'lanches/6331a4d75c954.jpg', 'Bebida', '\r\n                    Refrigerante FANTA UVA LATA 350ml.Com sabor Ãºnico, o Refrigerante da marca Fanta sabor Uva Ã© sucesso no mercado entre os refrigerantes nacionais e internacionais. Produzido com Ã¡gua gaseificada, aÃ§Ãºcar e guaranÃ¡ Ã© uma excelente opÃ§Ã£o para matar a sede!', 19, '4,00'),
('Refrigerante FANTA LARANJA PET COM 200ml', 0, 'lanches/6331a568e090a.jpg', 'Bebida', '\r\n                    Com sabor irresistÃ­vel e Ãºnico, o Refrigerante FANTA Laranja faz muito sucesso no mercado entre os refrigerantes nacionais e internacionais. ', 20, '2,50'),
('Refrigerante CUARANÃ KUAT NORRMAL/ECO 350ML', 0, 'lanches/6331a62865475.jpg', 'Bebida', '\r\n                    Refrigerante CUARANÃ KUAT NORRMAL/ECO 350ML.Elaborado com extrato das sementes do guaranÃ¡, garantindo um sabor marcante e que agrada a toda famÃ­lia, complementando bem as refeiÃ§Ãµes.', 21, '4,00'),
('Refrigerante H20H 500ml', 0, 'lanches/6331a6bf3efb9.jpg', 'Bebida', '\r\n                    Refrigerante H20H 500ml.Bebida levemente gaseificada, com zero de aÃ§Ãºcar, fonte de vitaminas B e suco natural de limÃ£o.', 22, '4,00'),
('Refrigerante SPRITE 350ml', 0, 'lanches/6331a7216fe27.jpg', 'Bebida', '\r\n                    Refrigerante SPRITE 350ml.Com um sabor Ãºnico, Sprite Sem AÃ§Ãºcar Ã© o refrigerante de limÃ£o mais vendido no mundo. Produzido com Ã¡gua gaseificada, suco de limÃ£o e aroma natural, nÃ£o contÃ©m aÃ§Ãºcares. Compre Refrigerante Sprite e experimente esse gostinho refrescante!', 23, '4,00'),
('Refrigerante SPRITE ZERO 350ml', 0, 'lanches/6331a79e639d2.jpg', 'Bebida', 'Refrigerante SPRITE ZERO 350ml.Sprite Ã© o refrigerante refrescante sabor limÃ£o mais famoso do Brasil. A versÃ£o Zero possui baixa caloria e zero aÃ§Ãºcar.\r\n                    ', 24, '4,00'),
('Hamburger', 0, 'lanches/6332d8f95bf86.jpg', 'Alimento', 'teste\r\n                    ', 25, '23');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tabela_receber`
--

DROP TABLE IF EXISTS `tabela_receber`;
CREATE TABLE IF NOT EXISTS `tabela_receber` (
  `nome` varchar(300) COLLATE utf8_bin NOT NULL,
  `arquivo` varchar(1000) COLLATE utf8_bin NOT NULL,
  `tipo` varchar(100) COLLATE utf8_bin NOT NULL,
  `descricao` text COLLATE utf8_bin NOT NULL,
  `id_lanche` int(11) NOT NULL AUTO_INCREMENT,
  `quantidade` int(20) NOT NULL,
  PRIMARY KEY (`id_lanche`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `tabela_receber`
--

INSERT INTO `tabela_receber` (`nome`, `arquivo`, `tipo`, `descricao`, `id_lanche`, `quantidade`) VALUES
('joao', 'lanches/6317235823a2c.jpg', 'filme', 'aaaa ', 1, 4444),
('joao', 'lanches/6317252d4390a.png', 'bebida', '\r\n           aaa     ', 2, 2),
('Hamburger', 'lanches/6317265c72e5d.jpg', 'bebida', 'aaaaaaaa\r\n                ', 3, 4),
('Hamburger', 'lanches/6317276f01dee.jpg', 'comida', 'pÃ£o, hamburguer, mussarela e tomate', 4, 10);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tabela_usuario`
--

DROP TABLE IF EXISTS `tabela_usuario`;
CREATE TABLE IF NOT EXISTS `tabela_usuario` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(500) COLLATE utf8_bin NOT NULL,
  `login` varchar(1000) COLLATE utf8_bin NOT NULL,
  `senha` varchar(200) COLLATE utf8_bin NOT NULL,
  `telefone` varchar(100) COLLATE utf8_bin NOT NULL,
  `cpf` varchar(100) COLLATE utf8_bin NOT NULL,
  `turma` varchar(100) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `tabela_usuario`
--

INSERT INTO `tabela_usuario` (`id_usuario`, `nome`, `login`, `senha`, `telefone`, `cpf`, `turma`) VALUES
(1, '', 'dfcergv', '13425', '0', '0', ''),
(2, '', 'hkjmuk,i', '567657', '0', '0', ''),
(13, 'jfnavow nvnmf bjenvw', 'gtoghj2tkp', '$2y$10$GMZGGRITEkr8Hj8q7g9Yr.Lc2bcZh5JcRfIIDzp1wq36feZYszwwO', '61528429', '0', ''),
(16, 'kjnfjnvhklec bkjwncwnd', 'gvqftrv', '$2y$10$ziWr2izb9CJq4gwn1tsT8eZvOj2EZomaZKSfHobfK7UzE3n54GamK', '136493598', '5783023', ''),
(18, 'kjnfjnvhklec bkjwncwnd', 'gvqftrv', '$2y$10$5iqbEDGUER454g2xnaTJw.uv5kUHt2egCUu2BddkyMFE/2HQnA9Bi', '136493598', '5783023', ''),
(47, 'Alexia Fernanda de Oliveira Lam', 'Ana', '$2y$10$UmFGpShS.IF2wtSs5R2g/uvkGmnxO9bRallhOgq3Oq2udtH9AgCQa', '123456789', '14075277976', '2 Ano'),
(21, 'kjnfjnvhklec bkjwncwnd', 'gvqftrv', '$2y$10$aaLTpcBnv4xWn/O2/3k9XegHuUHebkFjLdTbycJTYMWEY/KiSTuYa', '136493598', '5783023', ''),
(28, 'kjnfjnvhklec bkjwncwnd', 'gvqftrv', '$2y$10$QKKRT88Vc0I9if0ItAY9aufyY/XFrD1sztEaQG/.TWHdgvwCACt.a', '136493598', '5783023', ''),
(29, 'kjnfjnvhklec bkjwncwnd', 'gvqftrv', '$2y$10$Cy5diQ3wnsD4EvIww6azzuZJrbVsttmRJUN/w3U1MfTkeoJlsW/7e', '136493598', '5783023', ''),
(30, 'kjnfjnvhklec bkjwncwnd', 'gvqftrv', '$2y$10$pDqnaO7WOi.U/vvng9Enb.GKi1lsOYAxp20gwR8O/SadXt3pqe02.', '136493598', '5783023', ''),
(32, 'kjnfjnvhklec bkjwncwnd', 'gvqftrv', '$2y$10$glUKDhe.xnV9AJvM5IT15uMSPPWcdo9.ZXjlyMTNr7CDpHsvFzjDi', '136493598', '5783023', ''),
(34, 'Alexia abobora abacate cate', 'Alexia', '$2y$10$SumoL2COxI5zf0atCMGw2eFK63Llqve8G9TkNAPKiKzpKd9M8bQ7q', '48754920', '2475950838', '2 Ano'),
(44, 'Geronimo silva santos', 'Geronimo', '$2y$10$t4FVquZRNZL3sl0AD7Bkl.6KwOp6kyAt6U2swG5Kp6Ua4iv.9AxQm', '243637', '53765886786', ''),
(46, 'Ana Maria Tomaz Barbosa', 'Ana Maria', '$2y$10$XlXBpQKg.dCH8k4WA8Fygu5f7C0T.KMS2HZVx1JgvUch.UDkkkhvq', '1276345093', '357864168', '2 Ano');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
