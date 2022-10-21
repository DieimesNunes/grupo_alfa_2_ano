-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 29-Set-2022 às 14:22
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
) ENGINE=MyISAM AUTO_INCREMENT=111 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `tabela_produtos`
--

INSERT INTO `tabela_produtos` (`nome`, `quantidade`, `arquivo`, `tipo`, `descricao`, `preco`) VALUES
('Coca Cola lata 350ml', 0, 'lanches/632a1f3c15096.jpg', 'Bebida', '\r\n   Refrigerante Coca-Cola 350ml: Refresque-se com uma Coca-Cola! O sabor que vocÃª jÃ¡ conhece, ideal para matar sua sede, para acompanhar refeiÃ§Ãµes ou tomar ao longo do dia.                 ', 1, '3,50'),
('Mousse de limÃ£o', 0, 'lanches/632a204aa1c92.jpg', 'alimento', 'Base crocante de biscoito com castanha de caju e a leveza do creme aerado de limÃ£o!\r\n                    ', '2,50'),
('Doce de brigadeiro', 0, 'lanches/632a20bc17692.jpg', 'Alimento', 'O brigadeiro Ã© um doce genuinamente brasileiro. Um orgulho sÃ³! Essa delÃ­cia de chocolate faz a alegria da crianÃ§ada.', 3, '1,00'),
('PÃ£o de Queijo', 0, 'lanches/632a210b43894.jpg', 'Alimento', 'O pÃ£o de queijo Ã© uma iguaria oriunda da AmÃ©rica do Sul, muito apreciada no Brasil.', '2,50'),
('Achocolatado Pronto CHOCO MILK-200ml', 0, 'lanches/6331858d03011.jpg', 'Alimento', '\r\n                    ', '3,00'),
('Ãgua 500ml com gÃ¡s', 0, 'lanches/63318692012b2.jpg', 'Alimento', '\r\n                    ', '2,50'),
('Ãgua 500ml sem gÃ¡s', 0, 'lanches/633186f427a75.jpg', 'Alimento', '\r\n                    Ãgua Mineral Sem GÃ¡s Crystal PET 500ML' '1,75'),
('Ãgua 510ml sem gÃ¡s PET', 0, 'lanches/633187de1bffe.jpg', 'Alimento', '\r\n                    Ãgua mineral sem gÃ¡s, proveniente da fonte de Santa BÃ¡rbara. ' '1,18'),
('Ãgua 510ml com  gÃ¡s PET', 0, 'lanches/6331881d960c8.jpg', 'Alimento', '\r\n                    ' '2,35'),
('Refrigerante COCA COLA 600ml', 0, 'lanches/63319faa85dfc.jpg', 'Alimento', '\r\n                    Com sabor inconfundÃ­vel e Ãºnico, uma Coca-Cola Original Ã© o refrigerante mais tradicional e consumido no mundo inteiro! Toda Coca-Cola Original Ã© especialmente concebido para manter sempre a qualidade do melhor sabor de refrigerante! Ã‰ perfeita para compartilhar os melhores momentos da vida com amigos e familiares!', '6,50'),
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
('Brigadeiro 40g', 0, 'lanches/63342b32e17c1.jpg', 'Alimento', 'O brigadeiro Ã© um doce genuinamente brasileiro. Um orgulho sÃ³! Essa delÃ­cia de chocolate faz a alegria da crianÃ§ada e de muita gente grande em qualquer circunstÃ¢ncia.', 32, '2,50'),
('Beijinho 40g', 0, 'lanches/63342b8ebacbe.jpg', 'Alimento', 'Ã‰ um doce tipicamente brasileiro servido em festas de aniversÃ¡rio. Sua origem provÃ©m de alguns experimentos com leite condensado e leite de cabra coalhado, que daria um gosto levemente azedo quebrando o excesso de aÃ§Ãºcar no seu sabor.\r\n                    ', 33, '2,50'),
('Quindim 55g', 0, 'lanches/63342bd843cc9.jpg', 'Alimento', 'Ã‰ um doce assado em forno, de massa homogÃªnea contendo obrigatoriamente coco ralado, aÃ§Ãºcar e gemas de ovos. Tem coloraÃ§Ã£o amarelada em funÃ§Ã£o de ser preparado com gemas de ovos e sabor acentuado de ovos e coco.\r\n                    ', 34, '3,00'),
('Sonho de doce de leite ', 0, 'lanches/63342c291161a.jpg', 'Alimento', 'Um dos doces mais queridinhos dos brasileiros, o sonho estÃ¡ presente em praticamente todas as padarias do nosso paÃ­s.\r\n                    ', 35, '3,00'),
('Mousse de limÃ£o ', 0, 'lanches/63342c7b1bbb6.jpg', 'Alimento', 'Ã‰ uma sobremesa de origem francesa, rica e aerada, preparada com limÃ£o, creme de leite, leite condensado e gelatina incolor.                    ', 36, '3,00'),
('Mousse de maracujÃ¡ ', 0, 'lanches/63342caca8cc0.jpg', 'Alimento', 'Ã© uma sobremesa de origem francesa, rica e aerada, preparada com maracujÃ¡, creme de leite, leite condensado e gelatina incolor.\r\n                    ', 37, '3,00'),
('Mousse de morango ', 0, 'lanches/6334418d713a8.jpeg', 'Alimento', 'Ã‰ uma sobremesa de origem francesa, rica e aerada, preparada com morango, creme de leite, leite condensado e gelatina incolor.\r\n                    ', 38, '3,00'),
('Alfajor de doce de leite 75g', 0, 'lanches/6334435c5389d.jpg', 'Alimento', 'Doce composto de duas camadas de massa, que apÃ³s assadas devem ser levemente crocantes e macias, feitos de mel, quase esfarelando, mas firmes, e com recheio de doce de leite, coberto com chocolate derretido.\r\n                    ', 39, '4,50'),
('Queijadinha 100g', 0, 'lanches/63344377b3453.jfif', 'Alimento', '\r\n                    ', 40, '4'),
('Queijadinha 100g', 0, 'lanches/63344400e8843.jfif', 'Alimento', 'Queijadinha Ã© um tÃ­pico doce brasileiro, oriundo da culinÃ¡ria portuguesa e sua queijada tradicional, e um dos poucos que nÃ£o tÃªm origem nos conventos das ordens religiosas.\r\n                    ', 41, '4,50'),
('Queijadinha 100g', 0, 'lanches/633444045c432.jfif', 'Alimento', 'Queijadinha Ã© um tÃ­pico doce brasileiro, oriundo da culinÃ¡ria portuguesa e sua queijada tradicional, e um dos poucos que nÃ£o tÃªm origem nos conventos das ordens religiosas.\r\n                    ', 42, '4,50'),
('PÃ£o de mel 100g', 0, 'lanches/63344444f2b4c.jfif', 'Alimento', 'PÃ£o de mel Ã© um doce de origem europeia, elaborado Ã  base de mel, farinha de trigo, chocolate, manteiga, especiarias e ovos. Depois de prontos e frios, normalmente, sÃ£o banhados em chocolate.\r\n                    ', 43, '4,50'),
('Bolo de milho ', 0, 'lanches/63344486be43c.jpg', 'Alimento', 'Bolo de milho, tambÃ©m conhecido como bolo de fubÃ¡, Ã© um tipo de bolo no qual o principal ingrediente Ã© o milho, podendo ser o creme de milho verde ou a farinha de milho, tambÃ©m conhecida como fubÃ¡. Ã‰ um prato tradicional da culinÃ¡ria brasileira\r\n                    ', 44, '4,50'),
('Bolo de laranja ', 0, 'lanches/633444d6b1c37.jpg', 'Alimento', '\r\n                    ', 45, '4,50'),
('Bolo de cenoura ', 0, 'lanches/633444ef89674.webp', 'Alimento', '\r\n                    ', 46, '4,50'),
('Bolo toalha Felpuda ', 0, 'lanches/6334455b4ede5.jpg', 'Alimento', '\r\n                    ', 47, '4,50'),
('Cueca virada ', 0, 'lanches/63344589b3936.jpg', 'Alimento', 'Pacotinho com 5 unidades.\r\n                    ', 48, '4,50'),
('Bomba de doce de leite ', 0, 'lanches/633446368e65a.webp', 'Alimento', '\r\n                    ', 49, '5,00'),
('Pudim de Leite ', 0, 'lanches/633446d04b353.jpg', 'Alimento', '\r\n                    ', 50, '5,00'),
('Torta de maÃ§a ', 0, 'lanches/633446e74e117.jfif', 'Alimento', '\r\n                    ', 51, '5,00'),
('Brownie 140g', 0, 'lanches/63344703dbedd.jpeg', 'Alimento', '\r\n                    ', 52, '5,00'),
('Bomba de creme ', 0, 'lanches/63344728b93d7.jpg', 'Alimento', '\r\n                    ', 53, '5,00'),
('Mousse de maracujÃ¡ 200g', 0, 'lanches/633447532f4c0.jpg', 'Alimento', '\r\n                    ', 54, '6,00'),
('Mousse de limÃ£o 200g', 0, 'lanches/63344769492c8.jpg', 'Alimento', '\r\n                    ', 55, '5,50'),
('Mousse de morango 200g', 0, 'lanches/6334478504c54.jpeg', 'Alimento', '\r\n                    ', 56, '5,50'),
('Bombom aberto 150g', 0, 'lanches/633447a59abc5.jpg', 'Alimento', '\r\n                    ', 57, '5,00'),
('Manjar de coco', 0, 'lanches/633449747c82a.jpg', 'Alimento', 'Fatia \r\n                    ', 58, '5,50'),
('Torta de limÃ£o ', 0, 'lanches/63344998681cb.avif', 'Alimento', 'Fatia\r\n                    ', 59, '5,50'),
('Torta integral de banana', 0, 'lanches/633449b42e143.jpg', 'Alimento', '\r\n                   Fatia  ', 60, '5,50'),
('Cheesecake calda de frutas vermelhas ', 0, 'lanches/633449e8770c6.jpg', 'Alimento', '\r\n                    ', 61, '5,50'),
('Bolo nega maluca ', 0, 'lanches/633449fd53d70.jfif', 'Alimento', 'Fatia \r\n                    ', 62, '5,50'),
('Rocambole de doce de leite ', 0, 'lanches/63344a286b086.jfif', 'Alimento', '\r\n                    ', 63, '5,50'),
('Cookies pacote 250g', 0, 'lanches/63344a5beb7d5.jfif', 'Alimento', 'Embalagem com 5 unidades.\r\n                    ', 64, '7,00'),
('Salada de fruta ', 0, 'lanches/63344a74944fb.jpg', 'Alimento', '\r\n                    ', 65, '6,00'),
('Torta banoffi', 0, 'lanches/63344a9504102.jpg', 'Alimento', '\r\n                    ', 66, '6,50'),
('Torta alemÃ£', 0, 'lanches/63344aa6260e2.webp', 'Alimento', '\r\n                    ', 67, '6,50'),
('Cheesecake oreo', 0, 'lanches/63344acdad398.webp', 'Alimento', '\r\n                    ', 68, '6,50'),
('Torta de coco', 0, 'lanches/63344b9c83b04.jfif', 'Alimento', '\r\n                    ', 69, '6,50'),
('Torta de ricota ', 0, 'lanches/63344bb666807.jfif', 'Alimento', '\r\n                    ', 70, '6,50'),
('Torta trufada de chocolate ', 0, 'lanches/63344bd2d4bae.jpg', 'Alimento', '\r\n                    ', 71, '6,50'),
('Bolo Marta Rocha ', 0, 'lanches/63344c0b5b536.webp', 'Alimento', '\r\n                    ', 72, '6,50'),
('Bolo de abacaxi ', 0, 'lanches/63344c29c0114.jfif', 'Alimento', '\r\n                    ', 73, '6,50'),
('Bolo de morango ', 0, 'lanches/63344c411f463.jfif', 'Alimento', '\r\n                    ', 74, '6,50'),
('Bolo de ouro branco ', 0, 'lanches/63344c5b511a5.jpg', 'Alimento', '\r\n                    ', 75, '6,50'),
('Bolo dois amores ', 0, 'lanches/6335a02c2fe82.jfif', 'Alimento', '\r\n                    ', 76, '7,00'),
('Bolo prestÃ­gio ', 0, 'lanches/6335a062bd1e9.webp', 'Alimento', '\r\n                    ', 77, '6,50'),
('PavÃª de chocolate', 0, 'lanches/6335a09a82673.webp', 'Alimento', '\r\n                    ', 78, '6,50'),
('Bolo de capuccino', 0, 'lanches/6335a0b317d2d.webp', 'Alimento', '\r\n                    ', 79, '6,50'),
('Bolo de brigadeiro', 0, 'lanches/6335a0c7736b8.jpg', 'Alimento', '\r\n                    ', 80, '6,50'),
('Madrilenho 200g', 0, 'lanches/6335a0f6a70d6.webp', 'Alimento', '\r\n                    ', 81, '5,50'),
('Brigadeiro 60g', 0, 'lanches/6335a24b61551.webp', 'Alimento', 'No copo\r\n                    ', 82, '3,50'),
('Beijinho 60g', 0, 'lanches/6335a2675d28a.jpg', 'Alimento', 'No copo\r\n                    ', 83, '3,50'),
('Dois amores 70g', 0, 'lanches/6335a29e06806.jfif', 'Alimento', '\r\n                 No copo   ', 84, '3,50'),
('Dois amores 70g', 0, 'lanches/6335a2d55b985.jfif', 'Alimento', '\r\n                    No copo', 85, '3,50'),
('Strogonoff de nozes', 0, 'lanches/6335a2f66d202.jpg', 'Alimento', '\r\n                    ', 86, '3,50'),
('Banoffi verrine', 0, 'lanches/6335a30bcb9c1.jfif', 'Alimento', '\r\n                    ', 87, '3,50'),
('PÃ£o de batata de requeijÃ£o ', 0, 'lanches/6335a550c0171.jpg', 'Alimento', '\r\n                    ', 88, '5,50'),
('PÃ£o de batata de frango', 0, 'lanches/6335a56e6b3fa.jpg', 'Alimento', '\r\n                    ', 89, '5,50'),
('Croissant de queijo e presunto ', 0, 'lanches/6335a591d0d79.jpg', 'Alimento', '\r\n                    ', 90, '5,50'),
('Quiche de legumes ', 0, 'lanches/6335a5af8a418.jpg', 'Alimento', '\r\n                    ', 91, '5,50'),
('EmpadÃ£o de frango cremoso com palmito', 0, 'lanches/6335a5d2957d4.jpg', 'Alimento', '\r\n                    ', 92, '5,50'),
('Torta de palmito', 0, 'lanches/6335a5f2dac58.jpg', 'Alimento', '\r\n                    ', 93, '5,50'),
('Mini pizza marguerita', 0, 'lanches/6335a60ebf1a7.jpg', 'Alimento', '\r\n                    ', 94, '5,50'),
('Mini pizza peruana', 0, 'lanches/6335a6232fbd6.jpg', 'Alimento', '\r\n                    ', 95, '5,50'),
('Mini pizza milho e bacon', 0, 'lanches/6335a64dc0f3d.jpg', 'Alimento', '\r\n                    ', 96, '5,50'),
('Mini pizza calabresa', 0, 'lanches/6335a66e71469.png', 'Alimento', '\r\n                    ', 97, '5,50'),
('Mini pizza de frango com requeijÃ£o ', 0, 'lanches/6335a68f6ebd1.jpg', 'Alimento', '\r\n                    ', 98, '5,50'),
('Calzone de calabresa com requeijÃ£o', 0, 'lanches/6335a7b87443d.jpg', 'Alimento', '\r\n                    ', 99, '5,50'),
('Calzone de frango e requeijÃ£o', 0, 'lanches/6335a7d0ac803.jpg', 'Alimento', '\r\n                    ', 100, '5,50'),
('Calzone de palmito ', 0, 'lanches/6335a7e4abeb6.jpg', 'Alimento', '\r\n                    ', 101, '5,50'),
('Mini pizza portuguesa ', 0, 'lanches/6335a807865a4.jfif', 'Alimento', '\r\n                    ', 102, '5,50'),
('Torta pÃ£o bolonhesa ', 0, 'lanches/6335a81d7990a.jpg', 'Alimento', '\r\n                    ', 103, '6,50'),
('Folhado de palmito', 0, 'lanches/6335a867f197e.webp', 'Alimento', '\r\n                    ', 104, '6,50'),
('Empada de palmito', 0, 'lanches/6335a87b014d1.webp', 'Alimento', '\r\n                    ', 105, '6,50'),
('Quiche de palmito ', 0, 'lanches/6335a935a4cb7.jpg', 'Alimento', '\r\n                    ', 106, '6,50'),
('SanduÃ­che natural de frango  ', 0, 'lanches/6335a9514501c.jpeg', 'Alimento', '\r\n                    ', 107, '6,50'),
('SanduÃ­che natural de peito de peru', 0, 'lanches/6335a9684477d.jpg', 'Alimento', '\r\n                    ', 108, '6,50'),
('Panqueca de frango', 0, 'lanches/6335a97c91968.jpg', 'Alimento', '\r\n                    ', 109, '6,50'),
('Panqueca de carne', 0, 'lanches/6335a9bba57dd.jpg', 'Alimento', '\r\n                    ', 110, '6,50');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
