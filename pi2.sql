-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 16-Nov-2022 às 00:21
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
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `adm`
--

INSERT INTO `adm` (`id_adm`, `nome`, `login`, `senha`) VALUES
(1, 'Joao Gabriel do Prado Schianti', 'joao', '$2y$10$F3wwDR/1F19aMiqRvxz0ve/niwL/gC75Zcm1vU/ogSKiGff9j/G/.'),
(4, 'Dieimes Nunes de Souza', 'dieimes', '$2y$10$UTiOmzniue4VIsQq.hJ27OFl6GH2iHx3ZMmXv9d6TCl/I0xmymbbS'),
(5, 'teste', 'teste', '$2y$10$uu6PIeOFA.lZb4O7t83jSu2zIHlqKfc5E.Fb80sZwCGIMD5jk3aCe');

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
  `data` date DEFAULT NULL,
  PRIMARY KEY (`id_pedidos`),
  KEY `id_produto` (`id_produto`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `tabela_pedidos`
--

INSERT INTO `tabela_pedidos` (`id_pedidos`, `nome`, `telefone`, `id_produto`, `quantidade`, `data`) VALUES
(1, 'Dieimes', '43988179995', 6, '2', '2022-11-13');

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
) ENGINE=MyISAM AUTO_INCREMENT=220 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `tabela_produtos`
--

INSERT INTO `tabela_produtos` (`nome`, `quantidade`, `arquivo`, `tipo`, `descricao`, `id_lanche`, `preco`) VALUES
('Coca Cola lata 350ml', 0, 'lanches/632a1f3c15096.jpg', 'Bebida', '\r\n   Refrigerante Coca-Cola 350ml: Refresque-se com uma Coca-Cola! O sabor que vocÃª jÃ¡ conhece, ideal para matar sua sede, para acompanhar refeiÃ§Ãµes ou tomar ao longo do dia.                 ', 1, '3,50'),
('Mousse de limÃ£o', 0, 'lanches/632a204aa1c92.jpg', 'alimento', 'Base crocante de biscoito com castanha de caju e a leveza do creme aerado de limÃ£o!\r\n                    ', 2, '2,50'),
('Doce de brigadeiro', 0, 'lanches/632a20bc17692.jpg', 'Alimento', 'O brigadeiro Ã© um doce genuinamente brasileiro. Um orgulho sÃ³! Essa delÃ­cia de chocolate faz a alegria da crianÃ§ada.', 3, '1,00'),
('PÃ£o de Queijo', 0, 'lanches/632a210b43894.jpg', 'Alimento', 'O pÃ£o de queijo Ã© uma iguaria oriunda da AmÃ©rica do Sul, muito apreciada no Brasil.', 4, '2,50'),
('Achocolatado Pronto CHOCO MILK-200ml', 0, 'lanches/6331858d03011.jpg', 'Alimento', '\r\n                    ', 5, '3,00'),
('Ãgua 500ml com gÃ¡s', 12, 'lanches/63318692012b2.jpg', 'Alimento', '\r\n                    ', 6, '2,50'),
('Ãgua 500ml sem gÃ¡s', 0, 'lanches/633186f427a75.jpg', 'Alimento', '\r\n                    Ãgua Mineral Sem GÃ¡s Crystal PET 500ML', 7, '1,75'),
('Ãgua 510ml sem gÃ¡s PET', 0, 'lanches/633187de1bffe.jpg', 'Alimento', '\r\n                    Ãgua mineral sem gÃ¡s, proveniente da fonte de Santa BÃ¡rbara. ', 8, '1,18'),
('Ãgua 510ml com  gÃ¡s PET', 0, 'lanches/6331881d960c8.jpg', 'Alimento', '\r\n                    ', 9, '2,35'),
('Refrigerante COCA COLA 600ml', 0, 'lanches/63319faa85dfc.jpg', 'Alimento', '\r\n                    Com sabor inconfundÃ­vel e Ãºnico, uma Coca-Cola Original Ã© o refrigerante mais tradicional e consumido no mundo inteiro! Toda Coca-Cola Original Ã© especialmente concebido para manter sempre a qualidade do melhor sabor de refrigerante! Ã‰ perfeita para compartilhar os melhores momentos da vida com amigos e familiares!', 10, '6,50'),
('Refrigerante COCA COLA 600ml', 0, 'lanches/63319fb04f33a.jpg', 'Alimento', '\r\n                    Com sabor inconfundÃ­vel e Ãºnico, uma Coca-Cola Original Ã© o refrigerante mais tradicional e consumido no mundo inteiro! Toda Coca-Cola Original Ã© especialmente concebido para manter sempre a qualidade do melhor sabor de refrigerante! Ã‰ perfeita para compartilhar os melhores momentos da vida com amigos e familiares!', 11, '6,50'),
('Refrigerante COCA-COLA LATA 350ml', 0, 'lanches/6331a06b19c60.jpg', 'Alimento', 'COCA COLA LATA 350ml .Toda Coca-Cola Original Ã© especialmente concebido para manter sempre a qualidade do melhor sabor de refrigerante! Ã‰ perfeita para compartilhar os melhores momentos da vida com amigos e familiares!\r\n                    ', 12, '4,00'),
('Refrigerante COCA-COLA MINI PET 200ml', 0, 'lanches/6331a0ea6acb2.jpg', 'Alimento', '\r\n                    Refrigerante COCA-COLA MINI PET 200ml.Toda Coca-Cola Original Ã© especialmente concebido para manter sempre a qualidade do melhor sabor de refrigerante! Ã‰ perfeita para compartilhar os melhores momentos da vida com amigos e familiares!', 13, '2,50'),
('Refrigerante COCA COLA MINI PET 250ml', 0, 'lanches/6331a1b82f3bd.jpg', 'Bebida', 'Refrigerante COCA COLA MINI PET 250ml.Toda Coca-Cola Original Ã© especialmente concebido para manter sempre a qualidade do melhor sabor de refrigerante! Ã‰ perfeita para compartilhar os melhores momentos da vida com amigos e familiares!         ', 14, '3,00'),
('Refrigerante COCA COLA ZERO LATA ', 100, 'lanches/6331a229f3120.jpg', 'Bebida', '\r\n                    Refrigerante COCA COLA ZERO LATA .Toda Coca-Cola Original Ã© especialmente concebido para manter sempre a qualidade do melhor sabor de refrigerante! Ã‰ perfeita para compartilhar os melhores momentos da vida com amigos e familiares!', 15, '4,00'),
('Refrigerante COCA COLA ZERO MINI PET 200ml', 0, 'lanches/6331a29776026.jpg', 'Bebida', '\r\n                  Refrigerante COCA COLA ZERO MINI PET 200ml.Toda Coca-Cola Original Ã© especialmente concebido para manter sempre a qualidade do melhor sabor de refrigerante! Ã‰ perfeita para compartilhar os melhores momentos da vida com amigos e familiares!  ', 16, '2,50'),
('Refrigerante FANTA GUARANÃ LATA 350ml', 0, 'lanches/6331a31518f7a.jpg', 'Bebida', '\r\n                    Refrigerante FANTA GUARANÃ LATA 350ml.Com sabor Ãºnico, o Refrigerante da marca Fanta sabor GuaranÃ¡ Ã© sucesso no mercado entre os refrigerantes nacionais e internacionais. Produzido com Ã¡gua gaseificada, aÃ§Ãºcar e guaranÃ¡ Ã© uma excelente opÃ§Ã£o para matar a sede!', 17, '4,00'),
('Refrigerante FANTA LARANJA LATA 350ml', 0, 'lanches/6331a404ed625.jpg', 'Bebida', 'Refrigerante FANTA LARANJA LATA 350ml.Com sabor Ãºnico, o Refrigerante da marca Fanta sabor Laranja Ã© sucesso no mercado entre os refrigerantes nacionais e internacionais. Produzido com Ã¡gua gaseificada, aÃ§Ãºcar e guaranÃ¡ Ã© uma excelente opÃ§Ã£o para matar a sede!\r\n                    ', 18, '4,00'),
('Refrigerante FANTA UVA LATA 350ml', 0, 'lanches/6331a4d75c954.jpg', 'Bebida', '\r\n                    Refrigerante FANTA UVA LATA 350ml.Com sabor Ãºnico, o Refrigerante da marca Fanta sabor Uva Ã© sucesso no mercado entre os refrigerantes nacionais e internacionais. Produzido com Ã¡gua gaseificada, aÃ§Ãºcar e guaranÃ¡ Ã© uma excelente opÃ§Ã£o para matar a sede!', 19, '4,00'),
('Refrigerante FANTA LARANJA PET COM 200ml', 0, 'lanches/6331a568e090a.jpg', 'Bebida', '\r\n                    Com sabor irresistÃ­vel e Ãºnico, o Refrigerante FANTA Laranja faz muito sucesso no mercado entre os refrigerantes nacionais e internacionais. ', 20, '2,50'),
('Refrigerante CUARANÃ KUAT NORRMAL/ECO 350ML', 0, 'lanches/6331a62865475.jpg', 'Bebida', '\r\n                    Refrigerante CUARANÃ KUAT NORRMAL/ECO 350ML.Elaborado com extrato das sementes do guaranÃ¡, garantindo um sabor marcante e que agrada a toda famÃ­lia, complementando bem as refeiÃ§Ãµes.', 21, '4,00'),
('Refrigerante H20H 500ml', 0, 'lanches/6331a6bf3efb9.jpg', 'Bebida', '\r\n                    Refrigerante H20H 500ml.Bebida levemente gaseificada, com zero de aÃ§Ãºcar, fonte de vitaminas B e suco natural de limÃ£o.', 22, '4,00'),
('Refrigerante SPRITE 350ml', 0, 'lanches/6331a7216fe27.jpg', 'Bebida', '\r\n                    Refrigerante SPRITE 350ml.Com um sabor Ãºnico, Sprite Sem AÃ§Ãºcar Ã© o refrigerante de limÃ£o mais vendido no mundo. Produzido com Ã¡gua gaseificada, suco de limÃ£o e aroma natural, nÃ£o contÃ©m aÃ§Ãºcares. Compre Refrigerante Sprite e experimente esse gostinho refrescante!', 23, '4,00'),
('Refrigerante SPRITE ZERO 350ml', 0, 'lanches/6331a79e639d2.jpg', 'Bebida', 'Refrigerante SPRITE ZERO 350ml.Sprite Ã© o refrigerante refrescante sabor limÃ£o mais famoso do Brasil. A versÃ£o Zero possui baixa caloria e zero aÃ§Ãºcar.\r\n                    ', 24, '4,00'),
('Coca Cola lata 350ml', 1, 'lanches/632a1f3c15096.jpg', 'Bebida', '\r\n   Refrigerante Coca-Cola 350ml: Refresque-se com uma Coca-Cola! O sabor que vocÃª jÃ¡ conhece, ideal para matar sua sede, para acompanhar refeiÃ§Ãµes ou tomar ao longo do dia.                 ', 26, '3,50'),
('Mousse de limÃ£o', 0, 'lanches/632a204aa1c92.jpg', 'alimento', 'Base crocante de biscoito com castanha de caju e a leveza do creme aerado de limÃ£o!\r\n                    ', 27, '2,50'),
('Doce de brigadeiro', 0, 'lanches/632a20bc17692.jpg', 'Alimento', 'O brigadeiro Ã© um doce genuinamente brasileiro. Um orgulho sÃ³! Essa delÃ­cia de chocolate faz a alegria da crianÃ§ada.', 28, '1,00'),
('PÃ£o de Queijo', 0, 'lanches/632a210b43894.jpg', 'Alimento', 'O pÃ£o de queijo Ã© uma iguaria oriunda da AmÃ©rica do Sul, muito apreciada no Brasil.', 29, '2,50'),
('PÃ£o de Queijo', 0, 'lanches/632a210b43894.jpg', 'Alimento', 'O pÃ£o de queijo Ã© uma iguaria oriunda da AmÃ©rica do Sul, muito apreciada no Brasil.', 30, '2,50'),
('Achocolatado Pronto CHOCO MILK-200ml', 0, 'lanches/6331858d03011.jpg', 'Alimento', '\r\n                    ', 31, '3,00'),
('Ãgua 500ml com gÃ¡s', 0, 'lanches/63318692012b2.jpg', 'Alimento', '\r\n                    ', 32, '2,50'),
('Coca Cola lata 350ml', 0, 'lanches/632a1f3c15096.jpg', 'Bebida', '\r\n   Refrigerante Coca-Cola 350ml: Refresque-se com uma Coca-Cola! O sabor que vocÃª jÃ¡ conhece, ideal para matar sua sede, para acompanhar refeiÃ§Ãµes ou tomar ao longo do dia.                 ', 33, '3,50'),
('Mousse de limÃ£o', 0, 'lanches/632a204aa1c92.jpg', 'alimento', 'Base crocante de biscoito com castanha de caju e a leveza do creme aerado de limÃ£o!\r\n                    ', 34, '2,50'),
('Doce de brigadeiro', 0, 'lanches/632a20bc17692.jpg', 'Alimento', 'O brigadeiro Ã© um doce genuinamente brasileiro. Um orgulho sÃ³! Essa delÃ­cia de chocolate faz a alegria da crianÃ§ada.', 35, '1,00'),
('PÃ£o de Queijo', 0, 'lanches/632a210b43894.jpg', 'Alimento', 'O pÃ£o de queijo Ã© uma iguaria oriunda da AmÃ©rica do Sul, muito apreciada no Brasil.', 36, '2,50'),
('Achocolatado Pronto CHOCO MILK-200ml', 0, 'lanches/6331858d03011.jpg', 'Alimento', '\r\n                    ', 37, '3,00'),
('Ãgua 500ml com gÃ¡s', 0, 'lanches/63318692012b2.jpg', 'Alimento', '\r\n                    ', 38, '2,50'),
('Ãgua 500ml sem gÃ¡s', 0, 'lanches/633186f427a75.jpg', 'Alimento', '\r\n                    Ãgua Mineral Sem GÃ¡s Crystal PET 500ML', 39, '1,75'),
('Ãgua 510ml sem gÃ¡s PET', 0, 'lanches/633187de1bffe.jpg', 'Alimento', '\r\n                    Ãgua mineral sem gÃ¡s, proveniente da fonte de Santa BÃ¡rbara. ', 40, '1,18'),
('Ãgua 510ml com  gÃ¡s PET', 0, 'lanches/6331881d960c8.jpg', 'Alimento', '\r\n                    ', 41, '2,35'),
('Refrigerante COCA COLA 600ml', 0, 'lanches/63319faa85dfc.jpg', 'Alimento', '\r\n                    Com sabor inconfundÃ­vel e Ãºnico, uma Coca-Cola Original Ã© o refrigerante mais tradicional e consumido no mundo inteiro! Toda Coca-Cola Original Ã© especialmente concebido para manter sempre a qualidade do melhor sabor de refrigerante! Ã‰ perfeita para compartilhar os melhores momentos da vida com amigos e familiares!', 42, '6,50'),
('Refrigerante COCA COLA 600ml', 0, 'lanches/63319fb04f33a.jpg', 'Alimento', '\r\n                    Com sabor inconfundÃ­vel e Ãºnico, uma Coca-Cola Original Ã© o refrigerante mais tradicional e consumido no mundo inteiro! Toda Coca-Cola Original Ã© especialmente concebido para manter sempre a qualidade do melhor sabor de refrigerante! Ã‰ perfeita para compartilhar os melhores momentos da vida com amigos e familiares!', 43, '6,50'),
('Refrigerante COCA-COLA LATA 350ml', 0, 'lanches/6331a06b19c60.jpg', 'Alimento', 'COCA COLA LATA 350ml .Toda Coca-Cola Original Ã© especialmente concebido para manter sempre a qualidade do melhor sabor de refrigerante! Ã‰ perfeita para compartilhar os melhores momentos da vida com amigos e familiares!\r\n                    ', 44, '4,00'),
('Refrigerante COCA-COLA MINI PET 200ml', 0, 'lanches/6331a0ea6acb2.jpg', 'Alimento', '\r\n                    Refrigerante COCA-COLA MINI PET 200ml.Toda Coca-Cola Original Ã© especialmente concebido para manter sempre a qualidade do melhor sabor de refrigerante! Ã‰ perfeita para compartilhar os melhores momentos da vida com amigos e familiares!', 45, '2,50'),
('Refrigerante COCA COLA MINI PET 250ml', 0, 'lanches/6331a1b82f3bd.jpg', 'Bebida', 'Refrigerante COCA COLA MINI PET 250ml.Toda Coca-Cola Original Ã© especialmente concebido para manter sempre a qualidade do melhor sabor de refrigerante! Ã‰ perfeita para compartilhar os melhores momentos da vida com amigos e familiares!         ', 46, '3,00'),
('Refrigerante COCA COLA ZERO LATA ', 0, 'lanches/6331a229f3120.jpg', 'Bebida', '\r\n                    Refrigerante COCA COLA ZERO LATA .Toda Coca-Cola Original Ã© especialmente concebido para manter sempre a qualidade do melhor sabor de refrigerante! Ã‰ perfeita para compartilhar os melhores momentos da vida com amigos e familiares!', 47, '4,00'),
('Refrigerante COCA COLA ZERO MINI PET 200ml', 0, 'lanches/6331a29776026.jpg', 'Bebida', '\r\n                  Refrigerante COCA COLA ZERO MINI PET 200ml.Toda Coca-Cola Original Ã© especialmente concebido para manter sempre a qualidade do melhor sabor de refrigerante! Ã‰ perfeita para compartilhar os melhores momentos da vida com amigos e familiares!  ', 48, '2,50'),
('Refrigerante FANTA GUARANÃ LATA 350ml', 0, 'lanches/6331a31518f7a.jpg', 'Bebida', '\r\n                    Refrigerante FANTA GUARANÃ LATA 350ml.Com sabor Ãºnico, o Refrigerante da marca Fanta sabor GuaranÃ¡ Ã© sucesso no mercado entre os refrigerantes nacionais e internacionais. Produzido com Ã¡gua gaseificada, aÃ§Ãºcar e guaranÃ¡ Ã© uma excelente opÃ§Ã£o para matar a sede!', 49, '4,00'),
('Refrigerante FANTA LARANJA LATA 350ml', 0, 'lanches/6331a404ed625.jpg', 'Bebida', 'Refrigerante FANTA LARANJA LATA 350ml.Com sabor Ãºnico, o Refrigerante da marca Fanta sabor Laranja Ã© sucesso no mercado entre os refrigerantes nacionais e internacionais. Produzido com Ã¡gua gaseificada, aÃ§Ãºcar e guaranÃ¡ Ã© uma excelente opÃ§Ã£o para matar a sede!\r\n                    ', 50, '4,00'),
('Refrigerante FANTA UVA LATA 350ml', 0, 'lanches/6331a4d75c954.jpg', 'Bebida', '\r\n                    Refrigerante FANTA UVA LATA 350ml.Com sabor Ãºnico, o Refrigerante da marca Fanta sabor Uva Ã© sucesso no mercado entre os refrigerantes nacionais e internacionais. Produzido com Ã¡gua gaseificada, aÃ§Ãºcar e guaranÃ¡ Ã© uma excelente opÃ§Ã£o para matar a sede!', 51, '4,00'),
('Refrigerante FANTA LARANJA PET COM 200ml', 0, 'lanches/6331a568e090a.jpg', 'Bebida', '\r\n                    Com sabor irresistÃ­vel e Ãºnico, o Refrigerante FANTA Laranja faz muito sucesso no mercado entre os refrigerantes nacionais e internacionais. ', 52, '2,50'),
('Refrigerante CUARANÃ KUAT NORRMAL/ECO 350ML', 0, 'lanches/6331a62865475.jpg', 'Bebida', '\r\n                    Refrigerante CUARANÃ KUAT NORRMAL/ECO 350ML.Elaborado com extrato das sementes do guaranÃ¡, garantindo um sabor marcante e que agrada a toda famÃ­lia, complementando bem as refeiÃ§Ãµes.', 53, '4,00'),
('Refrigerante H20H 500ml', 0, 'lanches/6331a6bf3efb9.jpg', 'Bebida', '\r\n                    Refrigerante H20H 500ml.Bebida levemente gaseificada, com zero de aÃ§Ãºcar, fonte de vitaminas B e suco natural de limÃ£o.', 54, '4,00'),
('Refrigerante SPRITE 350ml', 0, 'lanches/6331a7216fe27.jpg', 'Bebida', '\r\n                    Refrigerante SPRITE 350ml.Com um sabor Ãºnico, Sprite Sem AÃ§Ãºcar Ã© o refrigerante de limÃ£o mais vendido no mundo. Produzido com Ã¡gua gaseificada, suco de limÃ£o e aroma natural, nÃ£o contÃ©m aÃ§Ãºcares. Compre Refrigerante Sprite e experimente esse gostinho refrescante!', 55, '4,00'),
('Suco Del Valle Pessego Light Lata 290ml', 0, 'lanches/6334274ee6733.jpg', 'Bebida', '\r\n                    O Suco Del Valle Light PÃªssego nÃ£o possui adiÃ§Ã£o de aÃ§Ãºcar.', 56, '3,50'),
('Suco Del Valle Uva Lata 290ml', 0, 'lanches/6334279c0cbc4.jpg', 'Bebida', '\r\n                    NÃ©ctar de Uva Del Valle Ã© uma excelente opÃ§Ã£o de bebida para refrescar seu dia.', 57, '3,50'),
('Suco Del Valle Uva Light Lata 290ml', 0, 'lanches/633427e22ca4f.jpg', 'Bebida', '\r\n                    ', 58, '3,50'),
('Brigadeiro 40g', 0, 'lanches/63342b32e17c1.jpg', 'Alimento', 'O brigadeiro Ã© um doce genuinamente brasileiro. Um orgulho sÃ³! Essa delÃ­cia de chocolate faz a alegria da crianÃ§ada e de muita gente grande em qualquer circunstÃ¢ncia.', 59, '2,50'),
('Beijinho 40g', 0, 'lanches/63342b8ebacbe.jpg', 'Alimento', 'Ã‰ um doce tipicamente brasileiro servido em festas de aniversÃ¡rio. Sua origem provÃ©m de alguns experimentos com leite condensado e leite de cabra coalhado, que daria um gosto levemente azedo quebrando o excesso de aÃ§Ãºcar no seu sabor.\r\n                    ', 60, '2,50'),
('Quindim 55g', 0, 'lanches/63342bd843cc9.jpg', 'Alimento', 'Ã‰ um doce assado em forno, de massa homogÃªnea contendo obrigatoriamente coco ralado, aÃ§Ãºcar e gemas de ovos. Tem coloraÃ§Ã£o amarelada em funÃ§Ã£o de ser preparado com gemas de ovos e sabor acentuado de ovos e coco.\r\n                    ', 61, '3,00'),
('Sonho de doce de leite ', 0, 'lanches/63342c291161a.jpg', 'Alimento', 'Um dos doces mais queridinhos dos brasileiros, o sonho estÃ¡ presente em praticamente todas as padarias do nosso paÃ­s.\r\n                    ', 62, '3,00'),
('Mousse de limÃ£o ', 0, 'lanches/63342c7b1bbb6.jpg', 'Alimento', 'Ã‰ uma sobremesa de origem francesa, rica e aerada, preparada com limÃ£o, creme de leite, leite condensado e gelatina incolor.                    ', 63, '3,00'),
('Mousse de maracujÃ¡ ', 0, 'lanches/63342caca8cc0.jpg', 'Alimento', 'Ã© uma sobremesa de origem francesa, rica e aerada, preparada com maracujÃ¡, creme de leite, leite condensado e gelatina incolor.\r\n                    ', 64, '3,00'),
('Mousse de morango ', 0, 'lanches/6334418d713a8.jpeg', 'Alimento', 'Ã‰ uma sobremesa de origem francesa, rica e aerada, preparada com morango, creme de leite, leite condensado e gelatina incolor.\r\n                    ', 65, '3,00'),
('Alfajor de doce de leite 75g', 0, 'lanches/6334435c5389d.jpg', 'Alimento', 'Doce composto de duas camadas de massa, que apÃ³s assadas devem ser levemente crocantes e macias, feitos de mel, quase esfarelando, mas firmes, e com recheio de doce de leite, coberto com chocolate derretido.\r\n                    ', 66, '4,50'),
('Queijadinha 100g', 0, 'lanches/63344377b3453.jfif', 'Alimento', '\r\n                    ', 67, '4'),
('Queijadinha 100g', 0, 'lanches/63344400e8843.jfif', 'Alimento', 'Queijadinha Ã© um tÃ­pico doce brasileiro, oriundo da culinÃ¡ria portuguesa e sua queijada tradicional, e um dos poucos que nÃ£o tÃªm origem nos conventos das ordens religiosas.\r\n                    ', 68, '4,50'),
('Queijadinha 100g', 0, 'lanches/633444045c432.jfif', 'Alimento', 'Queijadinha Ã© um tÃ­pico doce brasileiro, oriundo da culinÃ¡ria portuguesa e sua queijada tradicional, e um dos poucos que nÃ£o tÃªm origem nos conventos das ordens religiosas.\r\n                    ', 69, '4,50'),
('PÃ£o de mel 100g', 0, 'lanches/63344444f2b4c.jfif', 'Alimento', 'PÃ£o de mel Ã© um doce de origem europeia, elaborado Ã  base de mel, farinha de trigo, chocolate, manteiga, especiarias e ovos. Depois de prontos e frios, normalmente, sÃ£o banhados em chocolate.\r\n                    ', 70, '4,50'),
('Bolo de milho ', 0, 'lanches/63344486be43c.jpg', 'Alimento', 'Bolo de milho, tambÃ©m conhecido como bolo de fubÃ¡, Ã© um tipo de bolo no qual o principal ingrediente Ã© o milho, podendo ser o creme de milho verde ou a farinha de milho, tambÃ©m conhecida como fubÃ¡. Ã‰ um prato tradicional da culinÃ¡ria brasileira\r\n                    ', 71, '4,50'),
('Bolo de laranja ', 0, 'lanches/633444d6b1c37.jpg', 'Alimento', '\r\n                    ', 72, '4,50'),
('Bolo de cenoura ', 0, 'lanches/633444ef89674.webp', 'Alimento', '\r\n                    ', 73, '4,50'),
('Bolo toalha Felpuda ', 0, 'lanches/6334455b4ede5.jpg', 'Alimento', '\r\n                    ', 74, '4,50'),
('Cueca virada ', 0, 'lanches/63344589b3936.jpg', 'Alimento', 'Pacotinho com 5 unidades.\r\n                    ', 75, '4,50'),
('Bomba de doce de leite ', 0, 'lanches/633446368e65a.webp', 'Alimento', '\r\n                    ', 76, '5,00'),
('Pudim de Leite ', 0, 'lanches/633446d04b353.jpg', 'Alimento', '\r\n                    ', 77, '5,00'),
('Torta de maÃ§a ', 0, 'lanches/633446e74e117.jfif', 'Alimento', '\r\n                    ', 78, '5,00'),
('Brownie 140g', 0, 'lanches/63344703dbedd.jpeg', 'Alimento', '\r\n                    ', 79, '5,00'),
('Bomba de creme ', 0, 'lanches/63344728b93d7.jpg', 'Alimento', '\r\n                    ', 80, '5,00'),
('Mousse de maracujÃ¡ 200g', 0, 'lanches/633447532f4c0.jpg', 'Alimento', '\r\n                    ', 81, '6,00'),
('Mousse de limÃ£o 200g', 0, 'lanches/63344769492c8.jpg', 'Alimento', '\r\n                    ', 82, '5,50'),
('Mousse de morango 200g', 0, 'lanches/6334478504c54.jpeg', 'Alimento', '\r\n                    ', 83, '5,50'),
('Bombom aberto 150g', 0, 'lanches/633447a59abc5.jpg', 'Alimento', '\r\n                    ', 84, '5,00'),
('Manjar de coco', 0, 'lanches/633449747c82a.jpg', 'Alimento', 'Fatia \r\n                    ', 85, '5,50'),
('Torta de limÃ£o ', 0, 'lanches/63344998681cb.avif', 'Alimento', 'Fatia\r\n                    ', 86, '5,50'),
('Torta integral de banana', 0, 'lanches/633449b42e143.jpg', 'Alimento', '\r\n                   Fatia  ', 87, '5,50'),
('Cheesecake calda de frutas vermelhas ', 0, 'lanches/633449e8770c6.jpg', 'Alimento', '\r\n                    ', 88, '5,50'),
('Bolo nega maluca ', 0, 'lanches/633449fd53d70.jfif', 'Alimento', 'Fatia \r\n                    ', 89, '5,50'),
('Rocambole de doce de leite ', 0, 'lanches/63344a286b086.jfif', 'Alimento', '\r\n                    ', 90, '5,50'),
('Cookies pacote 250g', 0, 'lanches/63344a5beb7d5.jfif', 'Alimento', 'Embalagem com 5 unidades.\r\n                    ', 91, '7,00'),
('Salada de fruta ', 0, 'lanches/63344a74944fb.jpg', 'Alimento', '\r\n                    ', 92, '6,00'),
('Torta banoffi', 0, 'lanches/63344a9504102.jpg', 'Alimento', '\r\n                    ', 93, '6,50'),
('Torta alemÃ£', 0, 'lanches/63344aa6260e2.webp', 'Alimento', '\r\n                    ', 94, '6,50'),
('Cheesecake oreo', 0, 'lanches/63344acdad398.webp', 'Alimento', '\r\n                    ', 95, '6,50'),
('Torta de coco', 0, 'lanches/63344b9c83b04.jfif', 'Alimento', '\r\n                    ', 96, '6,50'),
('Torta de ricota ', 0, 'lanches/63344bb666807.jfif', 'Alimento', '\r\n                    ', 97, '6,50'),
('Torta trufada de chocolate ', 0, 'lanches/63344bd2d4bae.jpg', 'Alimento', '\r\n                    ', 98, '6,50'),
('Bolo Marta Rocha ', 0, 'lanches/63344c0b5b536.webp', 'Alimento', '\r\n                    ', 99, '6,50'),
('Bolo de abacaxi ', 0, 'lanches/63344c29c0114.jfif', 'Alimento', '\r\n                    ', 100, '6,50'),
('Bolo de morango ', 0, 'lanches/63344c411f463.jfif', 'Alimento', '\r\n                    ', 101, '6,50'),
('Bolo de ouro branco ', 0, 'lanches/63344c5b511a5.jpg', 'Alimento', '\r\n                    ', 102, '6,50'),
('Bolo dois amores ', 0, 'lanches/6335a02c2fe82.jfif', 'Alimento', '\r\n                    ', 103, '7,00'),
('Bolo prestÃ­gio ', 0, 'lanches/6335a062bd1e9.webp', 'Alimento', '\r\n                    ', 104, '6,50'),
('PavÃª de chocolate', 0, 'lanches/6335a09a82673.webp', 'Alimento', '\r\n                    ', 105, '6,50'),
('Bolo de capuccino', 0, 'lanches/6335a0b317d2d.webp', 'Alimento', '\r\n                    ', 106, '6,50'),
('Bolo de brigadeiro', 0, 'lanches/6335a0c7736b8.jpg', 'Alimento', '\r\n                    ', 107, '6,50'),
('Madrilenho 200g', 0, 'lanches/6335a0f6a70d6.webp', 'Alimento', '\r\n                    ', 108, '5,50'),
('Brigadeiro 60g', 0, 'lanches/6335a24b61551.webp', 'Alimento', 'No copo\r\n                    ', 109, '3,50'),
('Beijinho 60g', 0, 'lanches/6335a2675d28a.jpg', 'Alimento', 'No copo\r\n                    ', 110, '3,50'),
('Dois amores 70g', 0, 'lanches/6335a29e06806.jfif', 'Alimento', '\r\n                 No copo   ', 111, '3,50'),
('Dois amores 70g', 0, 'lanches/6335a2d55b985.jfif', 'Alimento', '\r\n                    No copo', 112, '3,50'),
('Strogonoff de nozes', 0, 'lanches/6335a2f66d202.jpg', 'Alimento', '\r\n                    ', 113, '3,50'),
('Banoffi verrine', 0, 'lanches/6335a30bcb9c1.jfif', 'Alimento', '\r\n                    ', 114, '3,50'),
('PÃ£o de batata de requeijÃ£o ', 0, 'lanches/6335a550c0171.jpg', 'Alimento', '\r\n                    ', 115, '5,50'),
('PÃ£o de batata de frango', 0, 'lanches/6335a56e6b3fa.jpg', 'Alimento', '\r\n                    ', 116, '5,50'),
('Croissant de queijo e presunto ', 0, 'lanches/6335a591d0d79.jpg', 'Alimento', '\r\n                    ', 117, '5,50'),
('Quiche de legumes ', 0, 'lanches/6335a5af8a418.jpg', 'Alimento', '\r\n                    ', 118, '5,50'),
('EmpadÃ£o de frango cremoso com palmito', 0, 'lanches/6335a5d2957d4.jpg', 'Alimento', '\r\n                    ', 119, '5,50'),
('Torta de palmito', 0, 'lanches/6335a5f2dac58.jpg', 'Alimento', '\r\n                    ', 120, '5,50'),
('Mini pizza marguerita', 0, 'lanches/6335a60ebf1a7.jpg', 'Alimento', '\r\n                    ', 121, '5,50'),
('Mini pizza peruana', 0, 'lanches/6335a6232fbd6.jpg', 'Alimento', '\r\n                    ', 122, '5,50'),
('Mini pizza milho e bacon', 0, 'lanches/6335a64dc0f3d.jpg', 'Alimento', '\r\n                    ', 123, '5,50'),
('Mini pizza calabresa', 0, 'lanches/6335a66e71469.png', 'Alimento', '\r\n                    ', 124, '5,50'),
('Mini pizza de frango com requeijÃ£o ', 0, 'lanches/6335a68f6ebd1.jpg', 'Alimento', '\r\n                    ', 125, '5,50'),
('Calzone de calabresa com requeijÃ£o', 0, 'lanches/6335a7b87443d.jpg', 'Alimento', '\r\n                    ', 126, '5,50'),
('Calzone de frango e requeijÃ£o', 0, 'lanches/6335a7d0ac803.jpg', 'Alimento', '\r\n                    ', 127, '5,50'),
('Calzone de palmito ', 0, 'lanches/6335a7e4abeb6.jpg', 'Alimento', '\r\n                    ', 128, '5,50'),
('Mini pizza portuguesa ', 0, 'lanches/6335a807865a4.jfif', 'Alimento', '\r\n                    ', 129, '5,50'),
('Torta pÃ£o bolonhesa ', 0, 'lanches/6335a81d7990a.jpg', 'Alimento', '\r\n                    ', 130, '6,50'),
('Folhado de palmito', 0, 'lanches/6335a867f197e.webp', 'Alimento', '\r\n                    ', 131, '6,50'),
('Empada de palmito', 0, 'lanches/6335a87b014d1.webp', 'Alimento', '\r\n                    ', 132, '6,50'),
('Quiche de palmito ', 0, 'lanches/6335a935a4cb7.jpg', 'Alimento', '\r\n                    ', 133, '6,50'),
('SanduÃ­che natural de frango  ', 0, 'lanches/6335a9514501c.jpeg', 'Alimento', '\r\n                    ', 134, '6,50'),
('SanduÃ­che natural de peito de peru', 0, 'lanches/6335a9684477d.jpg', 'Alimento', '\r\n                    ', 135, '6,50'),
('Panqueca de frango', 0, 'lanches/6335a97c91968.jpg', 'Alimento', '\r\n                    ', 136, '6,50'),
('Panqueca de carne', 0, 'lanches/6335a9bba57dd.jpg', 'Alimento', '\r\n                    ', 137, '6,50'),
('Coca Cola lata 350ml', 0, 'lanches/632a1f3c15096.jpg', 'Bebida', '\r\n   Refrigerante Coca-Cola 350ml: Refresque-se com uma Coca-Cola! O sabor que vocÃª jÃ¡ conhece, ideal para matar sua sede, para acompanhar refeiÃ§Ãµes ou tomar ao longo do dia.                 ', 138, '3,50'),
('Mousse de limÃ£o', 0, 'lanches/632a204aa1c92.jpg', 'alimento', 'Base crocante de biscoito com castanha de caju e a leveza do creme aerado de limÃ£o!\r\n                    ', 139, '2,50'),
('Doce de brigadeiro', 0, 'lanches/632a20bc17692.jpg', 'Alimento', 'O brigadeiro Ã© um doce genuinamente brasileiro. Um orgulho sÃ³! Essa delÃ­cia de chocolate faz a alegria da crianÃ§ada.', 140, '1,00'),
('PÃ£o de Queijo', 0, 'lanches/632a210b43894.jpg', 'Alimento', 'O pÃ£o de queijo Ã© uma iguaria oriunda da AmÃ©rica do Sul, muito apreciada no Brasil.', 141, '2,50'),
('Achocolatado Pronto CHOCO MILK-200ml', 0, 'lanches/6331858d03011.jpg', 'Alimento', '\r\n                    ', 142, '3,00'),
('Ãgua 500ml com gÃ¡s', 0, 'lanches/63318692012b2.jpg', 'Alimento', '\r\n                    ', 143, '2,50'),
('Ãgua 500ml sem gÃ¡s', 0, 'lanches/633186f427a75.jpg', 'Alimento', '\r\n                    Ãgua Mineral Sem GÃ¡s Crystal PET 500ML', 144, '1,75'),
('Ãgua 510ml sem gÃ¡s PET', 0, 'lanches/633187de1bffe.jpg', 'Alimento', '\r\n                    Ãgua mineral sem gÃ¡s, proveniente da fonte de Santa BÃ¡rbara. ', 145, '1,18'),
('Ãgua 510ml com  gÃ¡s PET', 0, 'lanches/6331881d960c8.jpg', 'Alimento', '\r\n                    ', 146, '2,35'),
('Refrigerante COCA COLA 600ml', 0, 'lanches/63319faa85dfc.jpg', 'Alimento', '\r\n                    Com sabor inconfundÃ­vel e Ãºnico, uma Coca-Cola Original Ã© o refrigerante mais tradicional e consumido no mundo inteiro! Toda Coca-Cola Original Ã© especialmente concebido para manter sempre a qualidade do melhor sabor de refrigerante! Ã‰ perfeita para compartilhar os melhores momentos da vida com amigos e familiares!', 147, '6,50'),
('Refrigerante COCA COLA 600ml', 0, 'lanches/63319fb04f33a.jpg', 'Alimento', '\r\n                    Com sabor inconfundÃ­vel e Ãºnico, uma Coca-Cola Original Ã© o refrigerante mais tradicional e consumido no mundo inteiro! Toda Coca-Cola Original Ã© especialmente concebido para manter sempre a qualidade do melhor sabor de refrigerante! Ã‰ perfeita para compartilhar os melhores momentos da vida com amigos e familiares!', 148, '6,50'),
('Refrigerante COCA-COLA LATA 350ml', 0, 'lanches/6331a06b19c60.jpg', 'Alimento', 'COCA COLA LATA 350ml .Toda Coca-Cola Original Ã© especialmente concebido para manter sempre a qualidade do melhor sabor de refrigerante! Ã‰ perfeita para compartilhar os melhores momentos da vida com amigos e familiares!\r\n                    ', 149, '4,00'),
('Refrigerante COCA-COLA MINI PET 200ml', 0, 'lanches/6331a0ea6acb2.jpg', 'Alimento', '\r\n                    Refrigerante COCA-COLA MINI PET 200ml.Toda Coca-Cola Original Ã© especialmente concebido para manter sempre a qualidade do melhor sabor de refrigerante! Ã‰ perfeita para compartilhar os melhores momentos da vida com amigos e familiares!', 150, '2,50'),
('Refrigerante COCA COLA MINI PET 250ml', 0, 'lanches/6331a1b82f3bd.jpg', 'Bebida', 'Refrigerante COCA COLA MINI PET 250ml.Toda Coca-Cola Original Ã© especialmente concebido para manter sempre a qualidade do melhor sabor de refrigerante! Ã‰ perfeita para compartilhar os melhores momentos da vida com amigos e familiares!         ', 151, '3,00'),
('Refrigerante COCA COLA ZERO LATA ', 0, 'lanches/6331a229f3120.jpg', 'Bebida', '\r\n                    Refrigerante COCA COLA ZERO LATA .Toda Coca-Cola Original Ã© especialmente concebido para manter sempre a qualidade do melhor sabor de refrigerante! Ã‰ perfeita para compartilhar os melhores momentos da vida com amigos e familiares!', 152, '4,00'),
('Refrigerante COCA COLA ZERO MINI PET 200ml', 0, 'lanches/6331a29776026.jpg', 'Bebida', '\r\n                  Refrigerante COCA COLA ZERO MINI PET 200ml.Toda Coca-Cola Original Ã© especialmente concebido para manter sempre a qualidade do melhor sabor de refrigerante! Ã‰ perfeita para compartilhar os melhores momentos da vida com amigos e familiares!  ', 153, '2,50'),
('Refrigerante FANTA GUARANÃ LATA 350ml', 0, 'lanches/6331a31518f7a.jpg', 'Bebida', '\r\n                    Refrigerante FANTA GUARANÃ LATA 350ml.Com sabor Ãºnico, o Refrigerante da marca Fanta sabor GuaranÃ¡ Ã© sucesso no mercado entre os refrigerantes nacionais e internacionais. Produzido com Ã¡gua gaseificada, aÃ§Ãºcar e guaranÃ¡ Ã© uma excelente opÃ§Ã£o para matar a sede!', 154, '4,00'),
('Refrigerante FANTA LARANJA LATA 350ml', 0, 'lanches/6331a404ed625.jpg', 'Bebida', 'Refrigerante FANTA LARANJA LATA 350ml.Com sabor Ãºnico, o Refrigerante da marca Fanta sabor Laranja Ã© sucesso no mercado entre os refrigerantes nacionais e internacionais. Produzido com Ã¡gua gaseificada, aÃ§Ãºcar e guaranÃ¡ Ã© uma excelente opÃ§Ã£o para matar a sede!\r\n                    ', 155, '4,00'),
('Refrigerante FANTA UVA LATA 350ml', 0, 'lanches/6331a4d75c954.jpg', 'Bebida', '\r\n                    Refrigerante FANTA UVA LATA 350ml.Com sabor Ãºnico, o Refrigerante da marca Fanta sabor Uva Ã© sucesso no mercado entre os refrigerantes nacionais e internacionais. Produzido com Ã¡gua gaseificada, aÃ§Ãºcar e guaranÃ¡ Ã© uma excelente opÃ§Ã£o para matar a sede!', 156, '4,00'),
('Refrigerante FANTA LARANJA PET COM 200ml', 0, 'lanches/6331a568e090a.jpg', 'Bebida', '\r\n                    Com sabor irresistÃ­vel e Ãºnico, o Refrigerante FANTA Laranja faz muito sucesso no mercado entre os refrigerantes nacionais e internacionais. ', 157, '2,50'),
('Refrigerante CUARANÃ KUAT NORRMAL/ECO 350ML', 0, 'lanches/6331a62865475.jpg', 'Bebida', '\r\n                    Refrigerante CUARANÃ KUAT NORRMAL/ECO 350ML.Elaborado com extrato das sementes do guaranÃ¡, garantindo um sabor marcante e que agrada a toda famÃ­lia, complementando bem as refeiÃ§Ãµes.', 158, '4,00'),
('Refrigerante H20H 500ml', 0, 'lanches/6331a6bf3efb9.jpg', 'Bebida', '\r\n                    Refrigerante H20H 500ml.Bebida levemente gaseificada, com zero de aÃ§Ãºcar, fonte de vitaminas B e suco natural de limÃ£o.', 159, '4,00'),
('Refrigerante SPRITE 350ml', 0, 'lanches/6331a7216fe27.jpg', 'Bebida', '\r\n                    Refrigerante SPRITE 350ml.Com um sabor Ãºnico, Sprite Sem AÃ§Ãºcar Ã© o refrigerante de limÃ£o mais vendido no mundo. Produzido com Ã¡gua gaseificada, suco de limÃ£o e aroma natural, nÃ£o contÃ©m aÃ§Ãºcares. Compre Refrigerante Sprite e experimente esse gostinho refrescante!', 160, '4,00'),
('Refrigerante SPRITE ZERO 350ml', 0, 'lanches/6331a79e639d2.jpg', 'Bebida', 'Refrigerante SPRITE ZERO 350ml.Sprite Ã© o refrigerante refrescante sabor limÃ£o mais famoso do Brasil. A versÃ£o Zero possui baixa caloria e zero aÃ§Ãºcar.\r\n                    ', 161, '4,00'),
('Refrigrante Schweppes Citrus 350ml', 0, 'lanches/6333130102d43.jpg', 'Bebida', '\r\n                    O Refrigerante Schweppes Citrus Ã© a bebida perfeita para adocicar e refrescar o seu dia na medida certa! ', 162, '4,00'),
('Suco Del Valle Goiaba Lata 290ml', 0, 'lanches/633313670b2dc.jpg', 'Bebida', '\r\n                    Saboroso e nutritivo, o Suco Del Valle NÃ©ctar Goiaba possui fÃ³rmula nutritiva e menos aÃ§Ãºcar.\r\n ', 163, '3,50'),
('Suco Del Valle MaracujÃ¡ Lata 290ml', 0, 'lanches/6333140f4962e.jpg', 'Bebida', '\r\n                    Saboroso e nutritivo, o Suco Del Valle NÃ©ctar MaracujÃ¡ possui fÃ³rmula nutritiva e menos aÃ§Ãºcar.\r\n ', 164, '3,50'),
('Suco Del Valle Pessego Lata 290ml', 0, 'lanches/6333143e2aa84.jpg', 'Bebida', '\r\n                    NÃ©ctar de PÃªssego Del Valle Ã© uma excelente opÃ§Ã£o de bebida para refrescar seu dia', 165, '3,50'),
('Suco Del Valle Pessego Light Lata 290ml', 0, 'lanches/6334274ee6733.jpg', 'Bebida', '\r\n                    O Suco Del Valle Light PÃªssego nÃ£o possui adiÃ§Ã£o de aÃ§Ãºcar.', 166, '3,50'),
('Suco Del Valle Uva Lata 290ml', 0, 'lanches/6334279c0cbc4.jpg', 'Bebida', '\r\n                    NÃ©ctar de Uva Del Valle Ã© uma excelente opÃ§Ã£o de bebida para refrescar seu dia.', 167, '3,50'),
('Suco Del Valle Uva Light Lata 290ml', 0, 'lanches/633427e22ca4f.jpg', 'Bebida', '\r\n                    ', 168, '3,50'),
('ChÃ¡ Mate Fuze LimÃ£o Zero 300ml', 0, 'lanches/63344321b7a72.jpg', 'Bebida', '\r\n                     O ChÃ¡ LeÃ£o Ice Tea LimÃ£o Zero Ã© um dos tipos de chÃ¡s de baixa caloria que combinam com qualquer ocasiÃ£o.', 169, '4,00'),
('ChÃ¡ Mate Natural copo 300ml', 0, 'lanches/63344369d2aec.jpg', 'Bebida', '\r\n                    Essa bebida revigora e refresca instantaneamente e se torna ainda mais saborosa, se servida gelado.', 170, '4,00'),
('ChÃ¡ (copo) GuaranÃ¡ AÃ§aÃ­ 300ml', 0, 'lanches/633443af7e873.jpg', 'Bebida', '\r\n                    GuaranÃ¡ Power investiga a natureza, busca toda sua vitalidade e encontra em uma planta natural da AmazÃ´nia e seu pequeno fruto avermelhado, toda a intensidade e energia do guaranÃ¡.', 171, '4,00'),
('ChÃ¡ (copo) GuaranÃ¡ Power 300ml', 0, 'lanches/633443eb4d0ab.jpg', 'Bebida', '\r\n                    GuaranÃ¡ Power investiga a natureza, busca toda sua vitalidade e encontra em uma planta natural da AmazÃ´nia e seu pequeno fruto avermelhado, toda a intensidade e energia do guaranÃ¡. ', 172, '4,00'),
('ChÃ¡ (copo) LimÃ£o 300ml', 0, 'lanches/6334442118fbc.jpg', 'Bebida', '\r\n                    Essa bebida revigora e refresca instantaneamente e se torna ainda mais saborosa, se servida gelado.', 173, '4,00'),
('CafÃ© 50ml', 0, 'lanches/6334458d8beaa.jpg', 'Bebida', '\r\n                    O cafÃ© Ã© uma bebida produzida a partir dos grÃ£os torrados do fruto do cafeeiro. ', 174, '1,80'),
('CafÃ© 80ml', 0, 'lanches/633445a35ed93.jpg', 'Bebida', '\r\n                    O cafÃ© Ã© uma bebida produzida a partir dos grÃ£os torrados do fruto do cafeeiro. ', 175, '2,00'),
('CafÃ© 180ml', 0, 'lanches/633445b84af89.jpg', 'Bebida', '\r\n                    O cafÃ© Ã© uma bebida produzida a partir dos grÃ£os torrados do fruto do cafeeiro. ', 176, '3,00'),
('CafÃ© 300ml', 0, 'lanches/633445d331d83.jpg', 'Bebida', '\r\n                    O cafÃ© Ã© uma bebida produzida a partir dos grÃ£os torrados do fruto do cafeeiro. \r\n', 177, '4,00'),
('CafÃ© com leite180ml', 0, 'lanches/6334460ea602e.jpg', 'Bebida', '\r\n                    Trata-se do cafÃ© filtrado com leite aquecido ou fervido.', 178, '3,50'),
('CafÃ© com leite 300ml', 0, 'lanches/633446320f4ae.jpg', 'Bebida', '\r\n                    Trata-se do cafÃ© filtrado com leite aquecido ou fervido.', 179, '4,50'),
('CafÃ© Expresso ', 0, 'lanches/63344673ae378.jpg', 'Bebida', '\r\n                     O expresso nÃ£o Ã© um grÃ£o diferente: ele Ã© feito com os mesmos grÃ£os que o cafÃ© tradicional Ã© feito. PorÃ©m, o que difere em gosto e aroma Ã© o mÃ©todo de preparÃ¡-lo: ele Ã© feito atravÃ©s da passagem de Ã¡gua quente (nÃ£o fervendo) sob alta pressÃ£o pelo grÃ£o moÃ­do.\r\n', 180, '4,50'),
('CafÃ© Ristreto ', 0, 'lanches/633446b2ce9cd.jpg', 'Bebida', '\r\n                    Ã‰ preparado de forma semelhante ao espresso, mas com metade da Ã¡gua e, embora a quantidade de cafÃ© seja a mesma, uma moagem mais fina Ã© usada para retardar sua extraÃ§Ã£o. ', 181, '4,50'),
('CafÃ© Macchiato', 0, 'lanches/633446ec3fda7.jpg', 'Bebida', '\r\n                    Como dissemos, o macchiato Ã© um espresso servido com um pouco de leite. Aqui no Brasil, tambÃ©m Ã© conhecido como â€œcafÃ© com espuminhaâ€.', 182, '4,50'),
('CafÃ© Cappucino', 0, 'lanches/6334471d35e4a.jpg', 'Bebida', '\r\n                    Um cappuccino clÃ¡ssico, muito famoso no Brasil e consiste em um terÃ§o de cafÃ© expresso, um terÃ§o de leite vaporizado e um terÃ§o de espuma de leite vaporizado', 183, '6,00'),
('CafÃ© cremoso quente ', 0, 'lanches/6334474c1eb66.jpg', 'Bebida', '\r\n                    ', 184, '3,00'),
('CafÃ© cremoso gelado ', 0, 'lanches/633447622a2f7.jpg', 'Bebida', '\r\n                    ', 185, '3,00'),
('Leite 180ml ', 0, 'lanches/633447bfe0c55.jpg', 'Bebida', '\r\n                    ', 186, '3,00'),
('Leite 300ml ', 0, 'lanches/633447df6a33f.jpg', 'Bebida', '\r\n                    ', 187, '4,00'),
('Chocolate quente 180ml ', 0, 'lanches/63344893eecc4.jpg', 'Bebida', '\r\n                    O chocolate quente ou cacau quente Ã© uma bebida quente e doce feita com chocolate ou cacau em pÃ³ dissolvido no leite quente ou na Ã¡gua mineral sem gÃ¡s.', 188, '3,50'),
('Chocolate quente 300ml', 0, 'lanches/633448ad77c73.jpg', 'Bebida', '\r\n                    O chocolate quente ou cacau quente Ã© uma bebida quente e doce feita com chocolate ou cacau em pÃ³ dissolvido no leite quente ou na Ã¡gua mineral sem gÃ¡s.', 189, '5,00'),
('ChÃ¡ quente 180ml', 0, 'lanches/633448d289d59.jpg', 'Bebida', '\r\n                    ', 190, '3,00'),
('ChÃ¡ quente 300ml ', 0, 'lanches/633448eaa006a.jpg', 'Bebida', '\r\n                    ', 191, '3,50'),
('Suco integral 300 - 350ml', 0, 'lanches/63344927aea8c.jpg', 'Bebida', '\r\n                    ', 192, '4,00'),
('Chipa 50g', 0, 'lanches/6335a1245e3eb.jpg', 'Alimento', '\r\n                    Do Paraguai para o Brasil, a chipa, o tradicional biscoito paraguaio, consumido diariamente no paÃ­s, ganha a qualidade e praticidade da Forno de Minas e chega Ã s melhores padarias, cafeterias, confeitarias e lanchonetes do Brasil.', 193, '2,00'),
('Calzone queijo e presunto ', 0, 'lanches/6335a1806e098.jpg', 'Alimento', '\r\n                    Prato feito com massa de piza enrolada e recheio de vegetais, queijo, carne, etc.', 194, '4,50'),
('Empada frango', 0, 'lanches/6335a1c02de12.jpg', 'Alimento', '\r\n                    Normalmente consiste numa caixa de massa de farinha de trigo com um recheio, muitas vezes uma tampa da mesma massa, e se assam no forno.', 195, '4,50'),
('Esfiha carne ', 0, 'lanches/6335a226d042f.jpg', 'Alimento', '\r\nA esfirra ou esfiha Ã© uma tradicional receita Ã¡rabe que faz muito sucesso tambÃ©m no Brasil. A Esfirra de Carne  Ã© um salgadinho de massa fofinha, com um delicioso recheio de carne e temperos selecionados.', 196, '4,50'),
('Esfiha de frango ', 0, 'lanches/6335a253b9b3a.jpg', 'Alimento', '\r\n                    A esfirra ou esfiha Ã© uma tradicional receita Ã¡rabe que faz muito sucesso tambÃ©m no Brasil. A Esfirra de Frango Ã© um salgadinho de massa fofinha, com um delicioso recheio de carne e temperos selecionados.', 197, '4,50'),
('Quibe assasdo 140g', 0, 'lanches/6335a2a86d4ae.jpg', 'Alimento', '\r\n                    ', 198, '4,50'),
('Empanada de carne ', 0, 'lanches/6335a315e4a06.jpg', 'Alimento', '\r\n                    JÃ¡ no Brasil, chama-se empanada a um empadÃ£o feito no forno, com uma massa parecida com a que Ã© feita para as empanadas pequenas e recheado com carne ou peixe e vegetais. ', 199, '4,50'),
('Bauru', 0, 'lanches/6335a352bb6ec.jpg', 'Alimento', '\r\n                    Saboroso salgado de presunto, queijo, e tomate', 200, '4,50'),
('Baguete recheada de calabresa', 0, 'lanches/6335a3b42a690.jpg', 'Alimento', '\r\n                    ', 201, '4,50'),
('Doguinho', 0, 'lanches/6335a3c606f16.jpg', 'Alimento', '\r\n                    ', 202, '4,50'),
('Pastel assado integral de legumes', 0, 'lanches/6335a5225da6d.jpg', 'Alimento', '\r\n                    ', 203, '5,00'),
('Torta de pÃ£o com frango ', 0, 'lanches/6335a53e818d5.jpg', 'Alimento', '\r\n                    ', 204, '5,00'),
('Torta de atum ', 0, 'lanches/6335a54c6b5a4.jpg', 'Alimento', '\r\n                    ', 205, '5,00'),
('Torta de pÃ£o com queijo e presunto', 0, 'lanches/6335a5643e45f.jpg', 'Alimento', '\r\n                    ', 206, '5,00'),
('Torta triguilho com brocÃ³lis e creme de palmito', 0, 'lanches/6335a58bddc48.jpg', 'Alimento', '\r\n                    ', 207, '5,00'),
('Pastel frito de carne', 0, 'lanches/6335a5a0b1210.jpg', 'Alimento', '\r\n                    ', 208, '5,00'),
('Risoles carne ', 0, 'lanches/6335a5b2d9026.jpg', 'Alimento', '\r\n                    ', 209, '5,00'),
('Pizza frita de calabresa', 0, 'lanches/6335a5d64b33f.jpg', 'Alimento', '\r\n                    ', 210, '5,00'),
('Bolinho de carne frito', 0, 'lanches/6335a5f387a83.jpg', 'Alimento', '\r\n                    ', 211, '5,00'),
('Quibe ', 0, 'lanches/6335a62452ade.jpg', 'Alimento', '\r\n                    ', 212, '5,00'),
('Pastel frito frango com catupiry', 0, 'lanches/6335a64b9ad76.jpg', 'Alimento', '\r\n                    ', 213, '5,00'),
('Pastel frito de presunto e queijo', 0, 'lanches/6335a700ee5d5.jpg', 'Alimento', '\r\n                    ', 214, '5,00'),
('Coxinha de frango', 0, 'lanches/6335a72901064.jpg', 'Alimento', '\r\n                    ', 215, '5,00'),
('Coxinha de frango com catupiry', 0, 'lanches/6335a73a9132f.jpg', 'Alimento', '\r\n                    ', 216, '5,00'),
('Cachorro quente 270g', 0, 'lanches/6335a755235c7.jpg', 'Alimento', '\r\n                    ', 217, '5,00'),
('HamburgÃ£o', 0, 'lanches/6335a78593cf7.jpg', 'Alimento', '\r\n                    ', 218, '5,00'),
('PÃ£o de batata com calabresa', 0, 'lanches/6335a7a1e9a9b.jpg', 'Alimento', '\r\n                    ', 219, '5,00');

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
