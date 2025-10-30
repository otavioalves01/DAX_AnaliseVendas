use ecommerce_eletronicos;

-- Inserindo categorias
INSERT INTO categorias (nome_categoria) VALUES
('Celulares'),
('Notebooks'),
('Periféricos'),
('TVs'),
('Acessórios'),
('Áudio'),
('Games'),
('Smart Home');

-- Inserindo produtos
INSERT INTO produtos (nome_produto, id_categoria, preco, custo) VALUES
-- Celulares
('iPhone 14 Pro 128GB', 1, 7499.90, 5200.00),
('Samsung Galaxy S23', 1, 5899.90, 4200.00),
('Motorola Edge 40', 1, 3199.90, 2200.00),
('Xiaomi Redmi Note 12', 1, 1799.90, 1200.00),
('Realme 11 Pro+', 1, 2499.90, 1750.00),

-- Notebooks
('Dell Inspiron 15', 2, 4299.90, 3100.00),
('Lenovo IdeaPad 3', 2, 3799.90, 2700.00),
('Asus VivoBook 15', 2, 4599.90, 3200.00),
('Acer Nitro 5', 2, 6299.90, 4800.00),
('MacBook Air M2', 2, 8999.90, 6500.00),

-- Periféricos
('Mouse Logitech M170', 3, 89.90, 45.00),
('Teclado Mecânico Redragon Kumara', 3, 289.90, 180.00),
('Headset HyperX Cloud Stinger', 3, 499.90, 320.00),
('Mousepad Gamer RGB', 3, 149.90, 80.00),
('Webcam Logitech C920', 3, 699.90, 450.00),

-- TVs
('Smart TV LG 55" 4K', 4, 3499.90, 2500.00),
('Smart TV Samsung 65" QLED', 4, 5599.90, 3900.00),
('Smart TV TCL 50" Android', 4, 2799.90, 1900.00),
('Smart TV Philips 43" Full HD', 4, 1999.90, 1350.00),
('Smart TV Sony 75" 4K', 4, 7999.90, 5600.00),

-- Acessórios
('Cabo USB-C Anker 1m', 5, 59.90, 25.00),
('Carregador Turbo Motorola', 5, 129.90, 70.00),
('Suporte de Celular para Mesa', 5, 49.90, 20.00),
('Película de Vidro iPhone 14', 5, 79.90, 35.00),
('Adaptador HDMI para USB-C', 5, 99.90, 50.00),

-- Áudio
('Caixa JBL Flip 6', 6, 799.90, 550.00),
('Fone Bluetooth QCY T13', 6, 229.90, 140.00),
('Headphone Sony WH-1000XM5', 6, 2499.90, 1750.00),
('Echo Dot 5ª Geração', 6, 399.90, 260.00),
('Soundbar LG SNH5', 6, 1499.90, 950.00),

-- Games
('PlayStation 5', 7, 4499.90, 3300.00),
('Xbox Series X', 7, 4299.90, 3150.00),
('Nintendo Switch OLED', 7, 3299.90, 2400.00),
('Controle PS5 DualSense', 7, 499.90, 310.00),
('Headset Gamer Razer Kraken', 7, 599.90, 400.00),

-- Smart Home
('Lâmpada Inteligente Positivo', 8, 99.90, 55.00),
('Câmera Wi-Fi Intelbras', 8, 299.90, 180.00),
('Tomada Inteligente Elsys', 8, 159.90, 90.00),
('Fechadura Digital Intelbras', 8, 899.90, 600.00),
('Aspirador Robô Xiaomi', 8, 1799.90, 1200.00);


-- Inserindo clientes
INSERT INTO clientes (nome_cliente, cidade, estado, data_cadastro) VALUES
('Mariana Oliveira', 'São Paulo', 'SP', '2025-01-03'),
('Lucas Andrade', 'Rio de Janeiro', 'RJ', '2025-01-15'),
('Fernanda Costa', 'Belo Horizonte', 'MG', '2025-02-05'),
('Gustavo Pereira', 'Curitiba', 'PR', '2025-02-20'),
('Amanda Souza', 'Porto Alegre', 'RS', '2025-03-10'),
('Bruno Martins', 'Recife', 'PE', '2025-03-25'),
('Juliana Ribeiro', 'Fortaleza', 'CE', '2025-04-12'),
('Rafael Almeida', 'Campinas', 'SP', '2025-04-28'),
('Isabela Mendes', 'Niterói', 'RJ', '2025-05-15'),
('Thiago Lopes', 'Salvador', 'BA', '2025-05-30'),
('Patrícia Duarte', 'Florianópolis', 'SC', '2025-06-12'),
('Rodrigo Santos', 'Goiânia', 'GO', '2025-06-28'),
('Carolina Pires', 'Vitória', 'ES', '2025-07-14'),
('André Ferreira', 'João Pessoa', 'PB', '2025-07-30'),
('Larissa Nogueira', 'São José dos Campos', 'SP', '2025-08-15'),
('Felipe Rocha', 'Manaus', 'AM', '2025-08-31'),
('Camila Batista', 'Belém', 'PA', '2025-09-12'),
('Vinícius Teixeira', 'Cuiabá', 'MT', '2025-09-28'),
('Beatriz Gomes', 'Maceió', 'AL', '2025-10-14'),
('Eduardo Lima', 'Londrina', 'PR', '2025-10-30');


-- Inserindo vendedores
INSERT INTO vendedores (nome_vendedor, equipe) VALUES
('Carlos Mendes', 'Equipe A'),
('Fernanda Lima', 'Equipe A'),
('Rafael Souza', 'Equipe A'),
('Juliana Rocha', 'Equipe A'),
('André Carvalho', 'Equipe B'),
('Larissa Torres', 'Equipe B'),
('Felipe Gomes', 'Equipe B'),
('Camila Alves', 'Equipe B');


-- Inserindo vendas
INSERT INTO vendas (id_cliente, id_vendedor, data_venda, forma_pagamento) VALUES
(1, 1, '2025-01-05', 'Cartão'),
(2, 2, '2025-01-08', 'Boleto'),
(3, 3, '2025-01-12', 'Pix'),
(4, 4, '2025-01-15', 'Cartão'),
(5, 5, '2025-01-18', 'Pix'),
(6, 6, '2025-01-22', 'Boleto'),
(7, 7, '2025-01-25', 'Cartão'),
(8, 8, '2025-01-28', 'Pix'),
(9, 1, '2025-02-03', 'Cartão'),
(10, 2, '2025-02-07', 'Boleto'),
(11, 3, '2025-02-10', 'Pix'),
(12, 4, '2025-02-14', 'Cartão'),
(13, 5, '2025-02-18', 'Pix'),
(14, 6, '2025-02-21', 'Boleto'),
(15, 7, '2025-02-25', 'Cartão'),
(16, 8, '2025-02-28', 'Pix'),
(17, 1, '2025-03-05', 'Cartão'),
(18, 2, '2025-03-10', 'Boleto'),
(19, 3, '2025-03-15', 'Pix'),
(20, 4, '2025-03-20', 'Cartão');


INSERT INTO itens_venda (id_venda, id_produto, quantidade, preco_unitario) VALUES
-- Venda 1
(1, 1, 1, 7499.90),
(1, 22, 1, 59.90),

-- Venda 2
(2, 6, 1, 4299.90),
(2, 25, 1, 799.90),

-- Venda 3
(3, 4, 2, 1799.90),
(3, 23, 1, 49.90),

-- Venda 4
(4, 9, 1, 6299.90),
(4, 15, 1, 699.90),

-- Venda 5
(5, 33, 1, 3299.90),
(5, 34, 1, 499.90),

-- Venda 6
(6, 11, 2, 89.90),
(6, 12, 1, 289.90),
(6, 13, 1, 499.90),

-- Venda 7
(7, 17, 1, 5599.90),
(7, 20, 1, 7999.90),

-- Venda 8
(8, 29, 1, 2499.90),
(8, 30, 1, 399.90),
(8, 31, 1, 1499.90),

-- Venda 9
(9, 2, 1, 5899.90),
(9, 5, 1, 2499.90),

-- Venda 10
(10, 8, 1, 4599.90),
(10, 21, 1, 99.90),

-- Venda 11
(11, 18, 1, 2799.90),
(11, 19, 2, 1999.90),

-- Venda 12
(12, 26, 1, 229.90),
(12, 27, 1, 2499.90),

-- Venda 13
(13, 35, 1, 599.90),
(13, 36, 1, 99.90),

-- Venda 14
(14, 7, 1, 3799.90),
(14, 14, 1, 149.90),

-- Venda 15
(15, 10, 1, 8999.90),
(15, 28, 1, 1499.90),

-- Venda 16
(16, 3, 1, 3199.90),
(16, 24, 2, 79.90),

-- Venda 17
(17, 37, 1, 299.90),
(17, 38, 1, 159.90),

-- Venda 18
(18, 16, 1, 3499.90),
(18, 32, 1, 1799.90),

-- Venda 19
(19, 40, 1, 1799.90),
(19, 39, 1, 899.90),

-- Venda 20
(20, 1, 1, 7499.90),
(20, 25, 1, 799.90),
(20, 33, 1, 3299.90);