CREATE DATABASE ecommerce_eletronicos;
USE ecommerce_eletronicos;

-- Tabela de categorias de produtos
CREATE TABLE categorias (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(100) NOT NULL
);

-- Tabela de produtos
CREATE TABLE produtos (
    id_produto INT AUTO_INCREMENT PRIMARY KEY,
    nome_produto VARCHAR(150) NOT NULL,
    id_categoria INT,
    preco DECIMAL(10,2) NOT NULL,
    custo DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (id_categoria) REFERENCES categorias(id_categoria)
);

-- Tabela de clientes
CREATE TABLE clientes (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome_cliente VARCHAR(150) NOT NULL,
    cidade VARCHAR(100),
    estado VARCHAR(50),
    data_cadastro DATE
);

-- Tabela de vendedores
CREATE TABLE vendedores (
    id_vendedor INT AUTO_INCREMENT PRIMARY KEY,
    nome_vendedor VARCHAR(150) NOT NULL,
    equipe VARCHAR(50)
);

-- Tabela de vendas (cabeçalho)
CREATE TABLE vendas (
    id_venda INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT,
    id_vendedor INT,
    data_venda DATE,
    forma_pagamento VARCHAR(50),
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente),
    FOREIGN KEY (id_vendedor) REFERENCES vendedores(id_vendedor)
);

-- Tabela de itens de cada venda (detalhes)
CREATE TABLE itens_venda (
    id_item INT AUTO_INCREMENT PRIMARY KEY,
    id_venda INT,
    id_produto INT,
    quantidade INT,
    preco_unitario DECIMAL(10,2),
    FOREIGN KEY (id_venda) REFERENCES vendas(id_venda),
    FOREIGN KEY (id_produto) REFERENCES produtos(id_produto)
);
