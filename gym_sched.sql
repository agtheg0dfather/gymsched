-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 03-Fev-2025 às 22:49
-- Versão do servidor: 10.4.32-MariaDB
-- versão do PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `gym_sched`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `aulas`
--

CREATE TABLE `aulas` (
  `id` int(11) NOT NULL,
  `hora_inicio` time NOT NULL,
  `hora_fim` time NOT NULL,
  `data_inicio` date DEFAULT NULL,
  `data_fim` date DEFAULT NULL,
  `id_tipoaula` int(11) DEFAULT NULL,
  `num_vagas` int(11) NOT NULL,
  `localizacao` varchar(255) DEFAULT NULL,
  `id_professor` int(11) DEFAULT NULL,
  `segunda` tinyint(1) NOT NULL DEFAULT 0,
  `terca` tinyint(1) NOT NULL DEFAULT 0,
  `quarta` tinyint(1) NOT NULL DEFAULT 0,
  `quinta` tinyint(1) NOT NULL DEFAULT 0,
  `sexta` tinyint(1) NOT NULL DEFAULT 0,
  `sabado` tinyint(1) NOT NULL DEFAULT 0,
  `domingo` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `aulas`
--

INSERT INTO `aulas` (`id`, `hora_inicio`, `hora_fim`, `data_inicio`, `data_fim`, `id_tipoaula`, `num_vagas`, `localizacao`, `id_professor`, `segunda`, `terca`, `quarta`, `quinta`, `sexta`, `sabado`, `domingo`) VALUES
(1, '10:00:00', '11:00:00', '2024-02-01', '2024-12-31', 1, 16, 'Sala de Yoga', 1, 1, 0, 1, 0, 1, 0, 0),
(2, '10:00:00', '11:00:00', '2024-02-01', '2024-12-31', 2, 16, 'Sala de Pilates', 1, 1, 0, 1, 0, 1, 0, 0),
(3, '10:00:00', '11:00:00', '2024-02-01', '2024-12-31', 3, 16, 'Academia', 1, 1, 0, 1, 0, 1, 0, 0),
(4, '10:00:00', '11:00:00', '2024-02-01', '2024-12-31', 4, 16, 'Salão Principal', 1, 1, 0, 1, 0, 1, 0, 0),
(5, '10:00:00', '11:00:00', '2024-02-01', '2024-12-31', 5, 16, 'Box CrossFit', 1, 1, 0, 1, 0, 1, 0, 0),
(6, '14:00:00', '15:00:00', '2024-02-01', '2024-12-31', 1, 17, 'Sala de Yoga', 1, 0, 1, 0, 1, 0, 0, 0),
(7, '14:00:00', '15:00:00', '2024-02-01', '2024-12-31', 2, 17, 'Sala de Pilates', 1, 0, 1, 0, 1, 0, 0, 0),
(8, '14:00:00', '15:00:00', '2024-02-01', '2024-12-31', 3, 17, 'Academia', 1, 0, 1, 0, 1, 0, 0, 0),
(9, '14:00:00', '15:00:00', '2024-02-01', '2024-12-31', 4, 17, 'Salão Principal', 1, 0, 1, 0, 1, 0, 0, 0),
(10, '14:00:00', '15:00:00', '2024-02-01', '2024-12-31', 5, 17, 'Box CrossFit', 1, 0, 1, 0, 1, 0, 0, 0),
(11, '16:00:00', '17:00:00', '2024-02-01', '2024-12-31', 1, 18, 'Sala de Yoga', 1, 1, 0, 1, 0, 1, 1, 0),
(12, '16:00:00', '17:00:00', '2024-02-01', '2024-12-31', 2, 18, 'Sala de Pilates', 1, 1, 0, 1, 0, 1, 1, 0),
(13, '16:00:00', '17:00:00', '2024-02-01', '2024-12-31', 3, 18, 'Academia', 1, 1, 0, 1, 0, 1, 1, 0),
(14, '16:00:00', '17:00:00', '2024-02-01', '2024-12-31', 4, 18, 'Salão Principal', 1, 1, 0, 1, 0, 1, 1, 0),
(15, '16:00:00', '17:00:00', '2024-02-01', '2024-12-31', 5, 18, 'Box CrossFit', 1, 1, 0, 1, 0, 1, 1, 0),
(16, '08:00:00', '09:00:00', '2024-02-01', '2024-12-31', 1, 19, 'Sala de Yoga', 1, 0, 1, 0, 1, 0, 0, 0),
(17, '08:00:00', '09:00:00', '2024-02-01', '2024-12-31', 2, 19, 'Sala de Pilates', 1, 0, 1, 0, 1, 0, 0, 0),
(18, '08:00:00', '09:00:00', '2024-02-01', '2024-12-31', 3, 19, 'Academia', 1, 0, 1, 0, 1, 0, 0, 0),
(19, '08:00:00', '09:00:00', '2024-02-01', '2024-12-31', 4, 19, 'Salão Principal', 1, 0, 1, 0, 1, 0, 0, 0),
(20, '08:00:00', '09:00:00', '2024-02-01', '2024-12-31', 5, 19, 'Box CrossFit', 1, 0, 1, 0, 1, 0, 0, 0),
(35, '10:00:00', '11:00:00', '2025-01-29', '2025-01-29', 3, 20, 'Sala 3', 1, 0, 0, 0, 0, 0, 0, 0),
(36, '12:00:00', '13:00:00', '2025-01-31', '2025-01-31', 4, 20, 'Estúdio 3', 2, 0, 0, 0, 0, 0, 0, 0),
(37, '15:00:00', '16:00:00', '2025-01-30', '2025-02-28', 9, 20, 'Estúdio 2', 4, 0, 1, 0, 1, 1, 0, 1),
(38, '15:00:00', '16:00:00', '2025-02-03', '2025-02-03', 4, 20, 'Estúdio 1', 3, 0, 0, 0, 0, 0, 0, 0),
(39, '17:00:00', '18:00:00', '2025-02-03', '2025-02-03', 2, 20, 'Estúdio 3', 1, 0, 0, 0, 0, 0, 0, 0),
(40, '19:00:00', '20:00:00', '2025-02-03', '2025-03-03', 7, 20, 'Piscinas', 1, 0, 1, 0, 1, 0, 0, 0),
(41, '11:00:00', '12:00:00', '2025-02-05', '2025-02-05', 5, 20, 'Estúdio 2', 6, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `aulas_clientes`
--

CREATE TABLE `aulas_clientes` (
  `id` int(11) NOT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `id_aula` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `aulas_clientes`
--

INSERT INTO `aulas_clientes` (`id`, `id_cliente`, `id_aula`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 1, 2),
(5, 2, 2),
(6, 3, 2),
(7, 1, 3),
(8, 2, 3),
(9, 3, 3),
(10, 1, 4),
(24, 1, 36),
(31, 6, 38),
(36, 7, 38),
(37, 7, 39),
(38, 8, 38),
(43, 7, 40),
(44, 1, 38),
(55, 9, 40),
(56, 9, 41),
(57, 10, 41);

-- --------------------------------------------------------

--
-- Estrutura da tabela `cargo_role`
--

CREATE TABLE `cargo_role` (
  `id` int(11) NOT NULL,
  `cargo` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `cargo_role`
--

INSERT INTO `cargo_role` (`id`, `cargo`) VALUES
(1, 'admin'),
(2, 'professor'),
(3, 'cliente');

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `data_nascimento` date NOT NULL,
  `nome` varchar(255) NOT NULL,
  `nif` varchar(15) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `contacto` varchar(15) DEFAULT NULL,
  `morada` varchar(255) DEFAULT NULL,
  `sexo` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `clientes`
--

INSERT INTO `clientes` (`id`, `id_user`, `data_nascimento`, `nome`, `nif`, `email`, `contacto`, `morada`, `sexo`) VALUES
(1, 1, '1990-01-15', 'Cliente Um', '123456789', 'cliente1@email.com', '961234567', 'Rua dos Clientes, 1', 'M'),
(2, 9, '1995-06-20', 'Cliente Dois', '987654321', 'cliente2@email.com', '962345678', 'Rua dos Clientes, 2', 'F'),
(3, 10, '1988-12-10', 'Cliente Três', '456789123', 'cliente3@email.com', '963456789', 'Rua dos Clientes, 3', 'M'),
(6, 13, '1999-08-03', 'Jorge Freitas Ferreira Nelson', '67819247213', 'jorgenelson@gmail.com', '968128553', 'Rua Santa Catarina', NULL),
(7, 14, '1974-01-30', 'Paula Jorge Pontes', '48234712341', 'paula@gmail.com', '968647253', 'Rua Júlio D. Dinis', NULL),
(8, 15, '2006-04-06', 'Daniel Miranda Henriques', '57283459347', '123daniel@gmail.com', '9552748264', 'Rua Favela da Lapa', NULL),
(9, 16, '2007-03-15', 'Rafael Moreira da Silva', '57529384683', 'rafaelmaromba@gmail.com', '985637563', 'Rua Das Vacinas', NULL),
(10, 17, '1982-06-03', 'Jorge Pedro Lima Nelson', '23985679812', 'professor@gmail.com', '986345651', 'Rua das Pipocas', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `equipamentos`
--

CREATE TABLE `equipamentos` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `status` varchar(20) NOT NULL,
  `data_cadastro` timestamp NOT NULL DEFAULT current_timestamp(),
  `ultima_manutencao` date DEFAULT NULL,
  `proxima_manutencao` date DEFAULT NULL,
  `observacoes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `eventos`
--

CREATE TABLE `eventos` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `dia` date NOT NULL,
  `descricao` text NOT NULL,
  `imagem` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `eventos`
--

INSERT INTO `eventos` (`id`, `nome`, `dia`, `descricao`, `imagem`) VALUES
(12, 'Entrega da PAP', '2025-02-04', 'Entrega da parte prática da PAP', '67a0ae54cacf7.png'),
(13, 'Jorge Freitas Ferreira Nelson', '2025-02-04', 'jOAO ', '67a0b1c806d92.jpg'),
(14, 'Rafael Marombeiro', '2025-02-04', 'Meeting rafael maromva', '67a0dcfd7b6e0.png');

-- --------------------------------------------------------

--
-- Estrutura da tabela `feedback_clientes`
--

CREATE TABLE `feedback_clientes` (
  `id` int(11) NOT NULL,
  `cliente_id` int(11) NOT NULL,
  `tipo_feedback` varchar(50) NOT NULL,
  `descricao` text NOT NULL,
  `data_feedback` datetime NOT NULL DEFAULT current_timestamp(),
  `status` varchar(20) NOT NULL DEFAULT 'pendente',
  `resposta` text DEFAULT NULL,
  `data_resposta` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `manutencoes`
--

CREATE TABLE `manutencoes` (
  `id` int(11) NOT NULL,
  `equipamento_id` int(11) NOT NULL,
  `data_manutencao` date NOT NULL,
  `tipo_manutencao` varchar(50) NOT NULL,
  `descricao` text NOT NULL,
  `custo` decimal(10,2) DEFAULT NULL,
  `responsavel` varchar(100) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `professores`
--

CREATE TABLE `professores` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `contacto` varchar(15) DEFAULT NULL,
  `morada` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `sexo` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `professores`
--

INSERT INTO `professores` (`id`, `id_user`, `nome`, `contacto`, `morada`, `email`, `sexo`) VALUES
(1, 3, 'João Silva', '912345678', 'Rua A, 123', 'joao.silva@email.com', 'M'),
(2, 4, 'Maria Santos', '923456789', 'Rua B, 456', 'maria.santos@email.com', 'F'),
(3, 5, 'Pedro Costa', '934567890', 'Rua C, 789', 'pedro.costa@email.com', 'M'),
(4, 6, 'Ana Oliveira', '945678901', 'Rua D, 012', 'ana.oliveira@email.com', 'F'),
(5, 7, 'Carlos Ferreira', '956789012', 'Rua E, 345', 'carlos.ferreira@email.com', 'M'),
(6, 17, 'Jorge Nelson', '986345651', 'Rua das Pipocas', 'professor@gmail.com', 'M'),
(7, 15, 'Daniel Miranda Henriques', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `professores_tipoaula`
--

CREATE TABLE `professores_tipoaula` (
  `id_tipoaula` int(11) NOT NULL,
  `id_professor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `professores_tipoaula`
--

INSERT INTO `professores_tipoaula` (`id_tipoaula`, `id_professor`) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(2, 2),
(2, 3),
(3, 1),
(3, 2),
(3, 3),
(4, 1),
(4, 2),
(4, 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipoaulas`
--

CREATE TABLE `tipoaulas` (
  `id` int(11) NOT NULL,
  `descricao` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `tipoaulas`
--

INSERT INTO `tipoaulas` (`id`, `descricao`) VALUES
(1, 'Yoga'),
(2, 'Pilates'),
(3, 'Musculação'),
(4, 'Zumba'),
(5, 'CrossFit'),
(6, 'Spinning'),
(7, 'Natação'),
(8, 'Boxe'),
(9, 'Dança'),
(10, 'Funcional');

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `id_cargo` int(11) NOT NULL DEFAULT 3,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `id_cargo`, `username`, `email`, `password`, `created_at`) VALUES
(1, 1, 'afonso', 'afonso@gmail.com', '$2y$10$ENW3XHGBjRPo09db0AGl4ODlIVSefpvKxQirHK84aMBZcL5ewPkoO', '2025-01-23 21:09:40'),
(2, 2, 'sa', 'sa@gmail.com', '123456789', '2025-01-23 21:35:15'),
(3, 2, 'joao.silva', 'joao.silva@email.com', '$2y$10$kcO9NkSpoB0qJX9MGR0UqulufYXGYpPkIZzgtqNYHQ0UXHPqA4uzm', '2025-01-23 21:45:41'),
(4, 2, 'maria.santos', 'maria.santos@email.com', '$2y$10$kcO9NkSpoB0qJX9MGR0UqulufYXGYpPkIZzgtqNYHQ0UXHPqA4uzm', '2025-01-23 21:45:41'),
(5, 2, 'pedro.costa', 'pedro.costa@email.com', '$2y$10$kcO9NkSpoB0qJX9MGR0UqulufYXGYpPkIZzgtqNYHQ0UXHPqA4uzm', '2025-01-23 21:45:41'),
(6, 2, 'ana.oliveira', 'ana.oliveira@email.com', '$2y$10$kcO9NkSpoB0qJX9MGR0UqulufYXGYpPkIZzgtqNYHQ0UXHPqA4uzm', '2025-01-23 21:45:41'),
(7, 2, 'carlos.ferreira', 'carlos.ferreira@email.com', '$2y$10$kcO9NkSpoB0qJX9MGR0UqulufYXGYpPkIZzgtqNYHQ0UXHPqA4uzm', '2025-01-23 21:45:41'),
(8, 3, 'cliente1', 'cliente1@email.com', '$2y$10$kcO9NkSpoB0qJX9MGR0UqulufYXGYpPkIZzgtqNYHQ0UXHPqA4uzm', '2025-01-23 21:45:41'),
(9, 3, 'cliente2', 'cliente2@email.com', '$2y$10$kcO9NkSpoB0qJX9MGR0UqulufYXGYpPkIZzgtqNYHQ0UXHPqA4uzm', '2025-01-23 21:45:41'),
(10, 3, 'cliente3', 'cliente3@email.com', '123456789', '2025-01-23 21:45:41'),
(11, 1, 'jole', 'jole@gmail.com', '$2y$10$ujwquzfyZcTjps1uJ7Eo3eMFdinuK5kM3a5K8dvebqdTUhoucjCc6', '2025-01-28 19:26:14'),
(12, 1, 'pacheco', 'pacheco@gmail.com', '$2y$10$1CTzX.iklgfX4OxkBIqk9.gNsdvU2Xi99rnK45Yq2wdtXzlfNoeoy', '2025-01-28 19:30:51'),
(13, 3, 'JorgeNelson', 'jorgenelson@gmail.com', '$2y$10$VXoIAnx09vVBBkZryVhjDOpRJjNisz9BCO1e1cTPbWNeifXSjJTgS', '2025-02-03 11:35:48'),
(14, 3, 'Paula', 'paula@gmail.com', '$2y$10$XoaYMR1IAJad2.uROq2Nt.tVWNV8DcGFxPZCuAzILvHbFi5/KZ/Gq', '2025-02-03 12:32:59'),
(15, 2, '4mDaniel', '123daniel@gmail.com', '$2y$10$QUsHNKcJPx9efz7fidMRaexVbsWpWDIxPn.1Q2dhyZIqNoRccl846', '2025-02-03 14:22:01'),
(16, 3, 'seccrafa', 'rafaelmaromba@gmail.com', '$2y$10$Z1UwCSBRoHGFHQ8AIsNEeeYy6FwldtgP4Y3JbAAiaueg/L3KIp8Zu', '2025-02-03 15:10:56'),
(17, 2, 'professor', 'professor@gmail.com', '$2y$10$BCMbCXeVpivYoaMKnCHgUeik09N/BbzNmC29IpfM/ukrWXY/xdleO', '2025-02-03 20:26:59');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `aulas`
--
ALTER TABLE `aulas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_tipoaula` (`id_tipoaula`),
  ADD KEY `id_professor` (`id_professor`);

--
-- Índices para tabela `aulas_clientes`
--
ALTER TABLE `aulas_clientes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_cliente` (`id_cliente`),
  ADD KEY `id_aula` (`id_aula`);

--
-- Índices para tabela `cargo_role`
--
ALTER TABLE `cargo_role`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`);

--
-- Índices para tabela `equipamentos`
--
ALTER TABLE `equipamentos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `eventos`
--
ALTER TABLE `eventos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `feedback_clientes`
--
ALTER TABLE `feedback_clientes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cliente_id` (`cliente_id`);

--
-- Índices para tabela `manutencoes`
--
ALTER TABLE `manutencoes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `equipamento_id` (`equipamento_id`);

--
-- Índices para tabela `professores`
--
ALTER TABLE `professores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`);

--
-- Índices para tabela `professores_tipoaula`
--
ALTER TABLE `professores_tipoaula`
  ADD PRIMARY KEY (`id_tipoaula`,`id_professor`),
  ADD KEY `id_professor` (`id_professor`);

--
-- Índices para tabela `tipoaulas`
--
ALTER TABLE `tipoaulas`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `id_cargo` (`id_cargo`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `aulas`
--
ALTER TABLE `aulas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT de tabela `aulas_clientes`
--
ALTER TABLE `aulas_clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT de tabela `cargo_role`
--
ALTER TABLE `cargo_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `equipamentos`
--
ALTER TABLE `equipamentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `eventos`
--
ALTER TABLE `eventos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de tabela `feedback_clientes`
--
ALTER TABLE `feedback_clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `manutencoes`
--
ALTER TABLE `manutencoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `professores`
--
ALTER TABLE `professores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `tipoaulas`
--
ALTER TABLE `tipoaulas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `aulas`
--
ALTER TABLE `aulas`
  ADD CONSTRAINT `aulas_ibfk_1` FOREIGN KEY (`id_tipoaula`) REFERENCES `tipoaulas` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `aulas_ibfk_2` FOREIGN KEY (`id_professor`) REFERENCES `professores` (`id`) ON DELETE SET NULL;

--
-- Limitadores para a tabela `aulas_clientes`
--
ALTER TABLE `aulas_clientes`
  ADD CONSTRAINT `aulas_clientes_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `aulas_clientes_ibfk_2` FOREIGN KEY (`id_aula`) REFERENCES `aulas` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `clientes`
--
ALTER TABLE `clientes`
  ADD CONSTRAINT `clientes_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

--
-- Limitadores para a tabela `feedback_clientes`
--
ALTER TABLE `feedback_clientes`
  ADD CONSTRAINT `feedback_clientes_ibfk_1` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `manutencoes`
--
ALTER TABLE `manutencoes`
  ADD CONSTRAINT `manutencoes_ibfk_1` FOREIGN KEY (`equipamento_id`) REFERENCES `equipamentos` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `professores`
--
ALTER TABLE `professores`
  ADD CONSTRAINT `professores_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

--
-- Limitadores para a tabela `professores_tipoaula`
--
ALTER TABLE `professores_tipoaula`
  ADD CONSTRAINT `professores_tipoaula_ibfk_1` FOREIGN KEY (`id_tipoaula`) REFERENCES `tipoaulas` (`id`),
  ADD CONSTRAINT `professores_tipoaula_ibfk_2` FOREIGN KEY (`id_professor`) REFERENCES `professores` (`id`);

--
-- Limitadores para a tabela `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`id_cargo`) REFERENCES `cargo_role` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
