-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 29-Set-2022 às 14:24
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
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `tabela_pedidos`
--

INSERT INTO `tabela_pedidos` (`id_pedidos`, `nome`, `telefone`, `id_produto`, `quantidade`) VALUES
(1, 'dieimes', 'dfdsfds', 2, ''),
(2, 'Dieimes teste1', '9999999', 2, '1');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tabela_produtos`
--

DROP TABLE IF EXISTS `tabela_produtos`;
CREATE TABLE IF NOT EXISTS `tabela_produtos` (
  `nome` varchar(300) COLLATE utf8_bin NOT NULL,
  `quantidade` int(100) NOT NULL,
  `arquivo` varchar(1000) COLLATE utf8_bin NOT NULL,
  `tipo` varchar(100) COLLATE utf8_bin NOT NULL,
  `descricao` text COLLATE utf8_bin NOT NULL,
  `id_lanche` int(11) NOT NULL AUTO_INCREMENT,
  `preco` varchar(100) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id_lanche`)
) ENGINE=MyISAM AUTO_INCREMENT=83 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

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
('Refrigrante Schweppes Citrus 350ml', 0, 'lanches/6333130102d43.jpg', 'Bebida', '\r\n                    O Refrigerante Schweppes Citrus Ã© a bebida perfeita para adocicar e refrescar o seu dia na medida certa! ', 25, '4,00'),
('Suco Del Valle Goiaba Lata 290ml', 0, 'lanches/633313670b2dc.jpg', 'Bebida', '\r\n                    Saboroso e nutritivo, o Suco Del Valle NÃ©ctar Goiaba possui fÃ³rmula nutritiva e menos aÃ§Ãºcar.\r\n ', 26, '3,50'),
('Suco Del Valle MaracujÃ¡ Lata 290ml', 0, 'lanches/6333140f4962e.jpg', 'Bebida', '\r\n                    Saboroso e nutritivo, o Suco Del Valle NÃ©ctar MaracujÃ¡ possui fÃ³rmula nutritiva e menos aÃ§Ãºcar.\r\n ', 27, '3,50'),
('Suco Del Valle Pessego Lata 290ml', 0, 'lanches/6333143e2aa84.jpg', 'Bebida', '\r\n                    NÃ©ctar de PÃªssego Del Valle Ã© uma excelente opÃ§Ã£o de bebida para refrescar seu dia', 28, '3,50'),
('Suco Del Valle Pessego Light Lata 290ml', 0, 'lanches/6334274ee6733.jpg', 'Bebida', '\r\n                    O Suco Del Valle Light PÃªssego nÃ£o possui adiÃ§Ã£o de aÃ§Ãºcar.', 29, '3,50'),
('Suco Del Valle Uva Lata 290ml', 0, 'lanches/6334279c0cbc4.jpg', 'Bebida', '\r\n                    NÃ©ctar de Uva Del Valle Ã© uma excelente opÃ§Ã£o de bebida para refrescar seu dia.', 30, '3,50'),
('Suco Del Valle Uva Light Lata 290ml', 0, 'lanches/633427e22ca4f.jpg', 'Bebida', '\r\n                    ', 31, '3,50'),
('ChÃ¡ Mate Fuze LimÃ£o Zero 300ml', 0, 'lanches/63344321b7a72.jpg', 'Bebida', '\r\n                     O ChÃ¡ LeÃ£o Ice Tea LimÃ£o Zero Ã© um dos tipos de chÃ¡s de baixa caloria que combinam com qualquer ocasiÃ£o.', 32, '4,00'),
('ChÃ¡ Mate Natural copo 300ml', 0, 'lanches/63344369d2aec.jpg', 'Bebida', '\r\n                    Essa bebida revigora e refresca instantaneamente e se torna ainda mais saborosa, se servida gelado.', 33, '4,00'),
('ChÃ¡ (copo) GuaranÃ¡ AÃ§aÃ­ 300ml', 0, 'lanches/633443af7e873.jpg', 'Bebida', '\r\n                    GuaranÃ¡ Power investiga a natureza, busca toda sua vitalidade e encontra em uma planta natural da AmazÃ´nia e seu pequeno fruto avermelhado, toda a intensidade e energia do guaranÃ¡.', 34, '4,00'),
('ChÃ¡ (copo) GuaranÃ¡ Power 300ml', 0, 'lanches/633443eb4d0ab.jpg', 'Bebida', '\r\n                    GuaranÃ¡ Power investiga a natureza, busca toda sua vitalidade e encontra em uma planta natural da AmazÃ´nia e seu pequeno fruto avermelhado, toda a intensidade e energia do guaranÃ¡. ', 35, '4,00'),
('ChÃ¡ (copo) LimÃ£o 300ml', 0, 'lanches/6334442118fbc.jpg', 'Bebida', '\r\n                    Essa bebida revigora e refresca instantaneamente e se torna ainda mais saborosa, se servida gelado.', 36, '4,00'),
('CafÃ© 50ml', 0, 'lanches/6334458d8beaa.jpg', 'Bebida', '\r\n                    O cafÃ© Ã© uma bebida produzida a partir dos grÃ£os torrados do fruto do cafeeiro. ', 37, '1,80'),
('CafÃ© 80ml', 0, 'lanches/633445a35ed93.jpg', 'Bebida', '\r\n                    O cafÃ© Ã© uma bebida produzida a partir dos grÃ£os torrados do fruto do cafeeiro. ', 38, '2,00'),
('CafÃ© 180ml', 0, 'lanches/633445b84af89.jpg', 'Bebida', '\r\n                    O cafÃ© Ã© uma bebida produzida a partir dos grÃ£os torrados do fruto do cafeeiro. ', 39, '3,00'),
('CafÃ© 300ml', 0, 'lanches/633445d331d83.jpg', 'Bebida', '\r\n                    O cafÃ© Ã© uma bebida produzida a partir dos grÃ£os torrados do fruto do cafeeiro. \r\n', 40, '4,00'),
('CafÃ© com leite180ml', 0, 'lanches/6334460ea602e.jpg', 'Bebida', '\r\n                    Trata-se do cafÃ© filtrado com leite aquecido ou fervido.', 41, '3,50'),
('CafÃ© com leite 300ml', 0, 'lanches/633446320f4ae.jpg', 'Bebida', '\r\n                    Trata-se do cafÃ© filtrado com leite aquecido ou fervido.', 42, '4,50'),
('CafÃ© Expresso ', 0, 'lanches/63344673ae378.jpg', 'Bebida', '\r\n                     O expresso nÃ£o Ã© um grÃ£o diferente: ele Ã© feito com os mesmos grÃ£os que o cafÃ© tradicional Ã© feito. PorÃ©m, o que difere em gosto e aroma Ã© o mÃ©todo de preparÃ¡-lo: ele Ã© feito atravÃ©s da passagem de Ã¡gua quente (nÃ£o fervendo) sob alta pressÃ£o pelo grÃ£o moÃ­do.\r\n', 43, '4,50'),
('CafÃ© Ristreto ', 0, 'lanches/633446b2ce9cd.jpg', 'Bebida', '\r\n                    Ã‰ preparado de forma semelhante ao espresso, mas com metade da Ã¡gua e, embora a quantidade de cafÃ© seja a mesma, uma moagem mais fina Ã© usada para retardar sua extraÃ§Ã£o. ', 44, '4,50'),
('CafÃ© Macchiato', 0, 'lanches/633446ec3fda7.jpg', 'Bebida', '\r\n                    Como dissemos, o macchiato Ã© um espresso servido com um pouco de leite. Aqui no Brasil, tambÃ©m Ã© conhecido como â€œcafÃ© com espuminhaâ€.', 45, '4,50'),
('CafÃ© Cappucino', 0, 'lanches/6334471d35e4a.jpg', 'Bebida', '\r\n                    Um cappuccino clÃ¡ssico, muito famoso no Brasil e consiste em um terÃ§o de cafÃ© expresso, um terÃ§o de leite vaporizado e um terÃ§o de espuma de leite vaporizado', 46, '6,00'),
('CafÃ© cremoso quente ', 0, 'lanches/6334474c1eb66.jpg', 'Bebida', '\r\n                    ', 47, '3,00'),
('CafÃ© cremoso gelado ', 0, 'lanches/633447622a2f7.jpg', 'Bebida', '\r\n                    ', 48, '3,00'),
('Leite 180ml ', 0, 'lanches/633447bfe0c55.jpg', 'Bebida', '\r\n                    ', 49, '3,00'),
('Leite 300ml ', 0, 'lanches/633447df6a33f.jpg', 'Bebida', '\r\n                    ', 50, '4,00'),
('Chocolate quente 180ml ', 0, 'lanches/63344893eecc4.jpg', 'Bebida', '\r\n                    O chocolate quente ou cacau quente Ã© uma bebida quente e doce feita com chocolate ou cacau em pÃ³ dissolvido no leite quente ou na Ã¡gua mineral sem gÃ¡s.', 51, '3,50'),
('Chocolate quente 300ml', 0, 'lanches/633448ad77c73.jpg', 'Bebida', '\r\n                    O chocolate quente ou cacau quente Ã© uma bebida quente e doce feita com chocolate ou cacau em pÃ³ dissolvido no leite quente ou na Ã¡gua mineral sem gÃ¡s.', 52, '5,00'),
('ChÃ¡ quente 180ml', 0, 'lanches/633448d289d59.jpg', 'Bebida', '\r\n                    ', 53, '3,00'),
('ChÃ¡ quente 300ml ', 0, 'lanches/633448eaa006a.jpg', 'Bebida', '\r\n                    ', 54, '3,50'),
('Suco integral 300 - 350ml', 0, 'lanches/63344927aea8c.jpg', 'Bebida', '\r\n                    ', 55, '4,00'),
('Chipa 50g', 0, 'lanches/6335a1245e3eb.jpg', 'Alimento', '\r\n                    Do Paraguai para o Brasil, a chipa, o tradicional biscoito paraguaio, consumido diariamente no paÃ­s, ganha a qualidade e praticidade da Forno de Minas e chega Ã s melhores padarias, cafeterias, confeitarias e lanchonetes do Brasil.', 56, '2,00'),
('Calzone queijo e presunto ', 0, 'lanches/6335a1806e098.jpg', 'Alimento', '\r\n                    Prato feito com massa de piza enrolada e recheio de vegetais, queijo, carne, etc.', 57, '4,50'),
('Empada frango', 0, 'lanches/6335a1c02de12.jpg', 'Alimento', '\r\n                    Normalmente consiste numa caixa de massa de farinha de trigo com um recheio, muitas vezes uma tampa da mesma massa, e se assam no forno.', 58, '4,50'),
('Esfiha carne ', 0, 'lanches/6335a226d042f.jpg', 'Alimento', '\r\nA esfirra ou esfiha Ã© uma tradicional receita Ã¡rabe que faz muito sucesso tambÃ©m no Brasil. A Esfirra de Carne  Ã© um salgadinho de massa fofinha, com um delicioso recheio de carne e temperos selecionados.', 59, '4,50'),
('Esfiha de frango ', 0, 'lanches/6335a253b9b3a.jpg', 'Alimento', '\r\n                    A esfirra ou esfiha Ã© uma tradicional receita Ã¡rabe que faz muito sucesso tambÃ©m no Brasil. A Esfirra de Frango Ã© um salgadinho de massa fofinha, com um delicioso recheio de carne e temperos selecionados.', 60, '4,50'),
('Quibe assasdo 140g', 0, 'lanches/6335a2a86d4ae.jpg', 'Alimento', '\r\n                    ', 61, '4,50'),
('Empanada de carne ', 0, 'lanches/6335a315e4a06.jpg', 'Alimento', '\r\n                    JÃ¡ no Brasil, chama-se empanada a um empadÃ£o feito no forno, com uma massa parecida com a que Ã© feita para as empanadas pequenas e recheado com carne ou peixe e vegetais. ', 62, '4,50'),
('Bauru', 0, 'lanches/6335a352bb6ec.jpg', 'Alimento', '\r\n                    Saboroso salgado de presunto, queijo, e tomate', 63, '4,50'),
('Baguete recheada de calabresa', 0, 'lanches/6335a3b42a690.jpg', 'Alimento', '\r\n                    ', 64, '4,50'),
('Doguinho', 0, 'lanches/6335a3c606f16.jpg', 'Alimento', '\r\n                    ', 65, '4,50'),
('Pastel assado integral de legumes', 0, 'lanches/6335a5225da6d.jpg', 'Alimento', '\r\n                    ', 66, '5,00'),
('Torta de pÃ£o com frango ', 0, 'lanches/6335a53e818d5.jpg', 'Alimento', '\r\n                    ', 67, '5,00'),
('Torta de atum ', 0, 'lanches/6335a54c6b5a4.jpg', 'Alimento', '\r\n                    ', 68, '5,00'),
('Torta de pÃ£o com queijo e presunto', 0, 'lanches/6335a5643e45f.jpg', 'Alimento', '\r\n                    ', 69, '5,00'),
('Torta triguilho com brocÃ³lis e creme de palmito', 0, 'lanches/6335a58bddc48.jpg', 'Alimento', '\r\n                    ', 70, '5,00'),
('Pastel frito de carne', 0, 'lanches/6335a5a0b1210.jpg', 'Alimento', '\r\n                    ', 71, '5,00'),
('Risoles carne ', 0, 'lanches/6335a5b2d9026.jpg', 'Alimento', '\r\n                    ', 72, '5,00'),
('Pizza frita de calabresa', 0, 'lanches/6335a5d64b33f.jpg', 'Alimento', '\r\n                    ', 73, '5,00'),
('Bolinho de carne frito', 0, 'lanches/6335a5f387a83.jpg', 'Alimento', '\r\n                    ', 74, '5,00'),
('Quibe ', 0, 'lanches/6335a62452ade.jpg', 'Alimento', '\r\n                    ', 75, '5,00'),
('Pastel frito frango com catupiry', 0, 'lanches/6335a64b9ad76.jpg', 'Alimento', '\r\n                    ', 76, '5,00'),
('Pastel frito de presunto e queijo', 0, 'lanches/6335a700ee5d5.jpg', 'Alimento', '\r\n                    ', 77, '5,00'),
('Coxinha de frango', 0, 'lanches/6335a72901064.jpg', 'Alimento', '\r\n                    ', 78, '5,00'),
('Coxinha de frango com catupiry', 0, 'lanches/6335a73a9132f.jpg', 'Alimento', '\r\n                    ', 79, '5,00'),
('Cachorro quente 270g', 0, 'lanches/6335a755235c7.jpg', 'Alimento', '\r\n                    ', 80, '5,00'),
('HamburgÃ£o', 0, 'lanches/6335a78593cf7.jpg', 'Alimento', '\r\n                    ', 81, '5,00'),
('PÃ£o de batata com calabresa', 0, 'lanches/6335a7a1e9a9b.jpg', 'Alimento', '\r\n                    ', 82, '5,00');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
