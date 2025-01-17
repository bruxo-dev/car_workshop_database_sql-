-- Populating the Cliente table
INSERT INTO Cliente (nome, endereco, telefone)
VALUES
    ('João Silva', 'Rua Principal, 123', '11-98765-4321'),
    ('Maria Oliveira', 'Avenida Central, 456', '21-98765-4321'),
    ('Carlos Pereira', 'Rua das Flores, 789', '31-98765-4321'),
    ('Ana Costa', 'Praça das Árvores, 101', '41-98765-4321'),
    ('Pedro Santos', 'Travessa do Sol, 202', '51-98765-4321'),
    ('Julia Almeida', 'Rua do Porto, 303', '61-98765-4321'),
    ('Lucas Melo', 'Avenida Rio Branco, 404', '71-98765-4321'),
    ('Fernanda Rocha', 'Rua das Palmeiras, 505', '81-98765-4321'),
    ('Gustavo Nunes', 'Alameda das Estrelas, 606', '91-98765-4321'),
    ('Camila Lima', 'Rua do Limoeiro, 707', '11-9876-5432');

-- Populating the Veiculo table
INSERT INTO Veiculo (placa, modelo, marca, ano_fabricacao, cliente_id)
VALUES
    ('AAA1234', 'Civic', 'Honda', 2015, 1),
    ('BBB5678', 'Corolla', 'Toyota', 2018, 2),
    ('CCC9101', 'Model 3', 'Tesla', 2020, 3),
    ('DDD2345', 'HB20', 'Hyundai', 2017, 4),
    ('EEE6789', 'Onix', 'Chevrolet', 2019, 5),
    ('FFF1012', 'Ka', 'Ford', 2016, 6),
    ('GGG3456', 'Argo', 'Fiat', 2018, 7),
    ('HHH7890', 'Golf', 'Volkswagen', 2021, 8),
    ('III1123', 'Tucson', 'Hyundai', 2019, 9),
    ('JJJ4567', 'Compass', 'Jeep', 2020, 10);

-- Populating the Mecanico table
INSERT INTO Mecanico (nome, endereco, especialidade)
VALUES
    ('Carlos Mendes', 'Rua das Acácias, 999', 'Reparação de Motor'),
    ('Mariana Souza', 'Avenida dos Pinheiros, 888', 'Sistemas Elétricos'),
    ('Lucas Ferreira', 'Rua das Cerejeiras, 777', 'Funilaria'),
    ('Fernanda Lopes', 'Travessa das Hortênsias, 666', 'Suspensão e Freios'),
    ('Ricardo Lima', 'Alameda das Rosas, 555', 'Troca de Óleo'),
    ('Sofia Almeida', 'Rua das Magnólias, 444', 'Revisão Geral'),
    ('Gabriel Moreira', 'Avenida das Palmeiras, 333', 'Injeção Eletrônica'),
    ('Juliana Ramos', 'Praça das Orquídeas, 222', 'Diagnóstico Computadorizado'),
    ('Thiago Santos', 'Rua dos Cravos, 111', 'Transmissão'),
    ('Renata Silva', 'Alameda das Violetas, 101', 'Climatização');

-- Populating the Equipe table
INSERT INTO Equipe (nome_equipe)
VALUES
    ('Equipe Alfa'),
    ('Equipe Beta');

-- Populating the Equipe_Mecanico table
INSERT INTO Equipe_Mecanico (equipe_id, mecanico_id)
VALUES
    (1, 1),
    (1, 2),
    (1, 3),
    (1, 4),
    (2, 5),
    (2, 6),
    (2, 7),
    (2, 8),
    (1, 9),
    (2, 10);

-- Populating the Ordem_Servico table
INSERT INTO Ordem_Servico (numero_os, data_emissao, data_conclusao, valor_total, status, veiculo_id, equipe_id)
VALUES
    ('OS10001', '2025-01-01', '2025-01-05', 1500.00, 'concluida', 1, 1),
    ('OS10002', '2025-01-02', NULL, 800.00, 'em_execucao', 2, 1),
    ('OS10003', '2025-01-03', NULL, 300.00, 'pendente', 3, 2),
    ('OS10004', '2025-01-04', NULL, 500.00, 'pendente', 4, 2),
    ('OS10005', '2025-01-05', '2025-01-06', 1000.00, 'concluida', 5, 1),
    ('OS10006', '2025-01-06', NULL, 400.00, 'em_execucao', 6, 2),
    ('OS10007', '2025-01-07', NULL, 700.00, 'pendente', 7, 1),
    ('OS10008', '2025-01-08', '2025-01-09', 1200.00, 'concluida', 8, 2),
    ('OS10009', '2025-01-09', NULL, 600.00, 'pendente', 9, 1),
    ('OS10010', '2025-01-10', '2025-01-11', 900.00, 'concluida', 10, 2);

-- Populating the Servico table
INSERT INTO Servico (descricao, valor_mao_de_obra)
VALUES
    ('Troca de Óleo', 150.00),
    ('Substituição de Pneus', 300.00),
    ('Alinhamento e Balanceamento', 200.00),
    ('Revisão Geral', 500.00),
    ('Reparo Elétrico', 250.00),
    ('Reparação de Motor', 800.00),
    ('Troca de Bateria', 350.00),
    ('Troca de Pastilhas de Freio', 180.00),
    ('Pintura Automotiva', 600.00),
    ('Lavagem Completa', 120.00);

-- Populating the Peca table
INSERT INTO Peca (descricao, valor)
VALUES
    ('Óleo de Motor', 60.00),
    ('Pneu 175/70 R13', 250.00),
    ('Bateria 60Ah', 450.00),
    ('Filtro de Ar', 40.00),
    ('Filtro de Óleo', 35.00),
    ('Pastilha de Freio', 100.00),
    ('Correia Dentada', 80.00),
    ('Velas de Ignição', 90.00),
    ('Parachoque Dianteiro', 500.00),
    ('Retrovisor', 200.00);

-- Populating the Ordem_Servico_Servico table
INSERT INTO Ordem_Servico_Servico (ordem_id, servico_id, quantidade, subtotal)
VALUES
    (1, 1, 1, 150.00),
    (1, 2, 4, 1200.00),
    (2, 3, 2, 400.00),
    (3, 4, 1, 500.00),
    (4, 5, 2, 500.00),
    (5, 6, 1, 800.00),
    (6, 7, 1, 350.00),
    (7, 8, 2, 360.00),
    (8, 9, 1, 600.00),
    (9, 10, 3, 360.00);

-- Populating the Ordem_Servico_Peca table
INSERT INTO Ordem_Servico_Peca (ordem_id, peca_id, quantidade, subtotal)
VALUES
    (1, 1, 2, 120.00),
    (1, 2, 4, 1000.00),
    (2, 3, 1, 450.00),
    (3, 4, 1, 40.00),
    (4, 5, 2, 70.00),
    (5, 6, 4, 400.00),
    (6, 7, 1, 80.00),
    (7, 8, 2, 180.00),
    (8, 9, 1, 500.00),
    (9, 10, 3, 600.00);
