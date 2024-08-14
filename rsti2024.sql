-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 14-Ago-2024 às 19:19
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `rsti2024`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `contatos`
--

CREATE TABLE `contatos` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `idade` int(11) DEFAULT NULL,
  `telefone` varchar(14) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `contatos`
--

INSERT INTO `contatos` (`id`, `nome`, `idade`, `telefone`) VALUES
(1, 'Felipe Eduardo Monari', 16, '(54)99647-2916');

-- --------------------------------------------------------

--
-- Estrutura da tabela `receitas`
--

CREATE TABLE `receitas` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `descricao` text NOT NULL,
  `tempo_preparo` int(11) NOT NULL,
  `porcoes` int(11) NOT NULL,
  `ingredientes` text NOT NULL,
  `preparo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `receitas`
--

INSERT INTO `receitas` (`id`, `nome`, `descricao`, `tempo_preparo`, `porcoes`, `ingredientes`, `preparo`) VALUES
(1, 'Bolo de Fubá', 'Bote fubá e minsture', 15, 2, 'Fubá', 'Minsture e ace'),
(2, 'Bolo de Fubá', 'Bote fubá e minsture', 700, 15, 'Fubá', 'Minsture e ace'),
(3, 'Bolo de Fubá', 'Bote fubá e minsture', 800, 590, 'Fubá', 'Minsture e ace'),
(4, 'Bolo de Fubá', 'Bote fubá e minsture', 170, 23, 'Fubá', 'Minsture e ace'),
(5, 'Bolo de Fubá', 'Bote fubá e minsture', 170, 23, 'Fubá', 'Minsture e ace'),
(6, 'Bolo de Fubá', 'Bote fubá e minsture', 170, 23, 'Fubá', 'Minsture e ace'),
(8, 'Bolo de Fubá', 'Bote fubá e minsture', 150, 4, 'Fubá', 'Minsture e ace'),
(11, ' Bolo de Fubá', 'Bote fubá e minsture', 345, 590, 'Fubá', 'Minsture e ace');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `contatos`
--
ALTER TABLE `contatos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `receitas`
--
ALTER TABLE `receitas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `contatos`
--
ALTER TABLE `contatos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `receitas`
--
ALTER TABLE `receitas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
