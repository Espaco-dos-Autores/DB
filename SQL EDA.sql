-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 30/06/2021 às 00:07
-- Versão do servidor: 10.4.18-MariaDB
-- Versão do PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `sql_espacodosautores`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `eda_interacoes`
--

CREATE TABLE `eda_interacoes` (
  `interacoes_id` int(10) NOT NULL,
  `fk_id_user_interacoes` int(10) NOT NULL,
  `curtida` int(50) DEFAULT NULL,
  `seguindo` varchar(50) DEFAULT NULL,
  `comentario` varchar(50) DEFAULT NULL,
  `salvo` tinyint(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `eda_obra`
--

CREATE TABLE `eda_obra` (
  `obra_id` int(10) NOT NULL,
  `fk_id_user_obra` int(10) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `tag` varchar(30) NOT NULL,
  `data_publicacao` date NOT NULL,
  `publi_img` varchar(100) NOT NULL,
  `publi_txt` mediumtext NOT NULL,
  `legenda_obra` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `eda_redesocial`
--

CREATE TABLE `eda_redesocial` (
  `redesocial_id` int(10) NOT NULL,
  `fk_id_user_redesocial` int(10) NOT NULL,
  `instagram` varchar(50) DEFAULT NULL,
  `facebook` varchar(50) DEFAULT NULL,
  `twitter` varchar(50) DEFAULT NULL,
  `pinterest` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `hibernate_sequence`
--

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(2);

-- --------------------------------------------------------

--
-- Estrutura para tabela `sec_user`
--

CREATE TABLE `sec_user` (
  `id` bigint(20) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `sec_user`
--

INSERT INTO `sec_user` (`id`, `password`, `username`) VALUES
(1, '$2a$10$oNnua2iaIciinK2ynGS.Su..wyjd8xNV2HQNvw5p3wxjFKdcvThiy', 'guiihpcolusso');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `eda_interacoes`
--
ALTER TABLE `eda_interacoes`
  ADD PRIMARY KEY (`interacoes_id`),
  ADD KEY `fk_id_user` (`fk_id_user_interacoes`);

--
-- Índices de tabela `eda_obra`
--
ALTER TABLE `eda_obra`
  ADD PRIMARY KEY (`obra_id`),
  ADD KEY `fk_id_user_obra` (`fk_id_user_obra`);

--
-- Índices de tabela `eda_redesocial`
--
ALTER TABLE `eda_redesocial`
  ADD PRIMARY KEY (`redesocial_id`),
  ADD KEY `fk_id_user_redesocial` (`fk_id_user_redesocial`);

--
-- Índices de tabela `sec_user`
--
ALTER TABLE `sec_user`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
