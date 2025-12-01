-- CLIENTE
INSERT INTO CLIENTE (id_cliente, nome, cpf, telefone) VALUES
(1, 'Ana Silva',      '11111111111', '11999990001'),
(2, 'Bruno Souza',    '22222222222', '11999990002'),
(3, 'Carla Pereira',  '33333333333', '11999990003'),
(4, 'Diego Almeida',  '44444444444', '11999990004'),
(5, 'Eduardo Santos', '55555555555', '11999990005');

-- VEICULO
INSERT INTO VEICULO (id_veiculo, placa, modelo, categoria, diaria) VALUES
(1, 'ABC1D23', 'Fiat Uno',        'Economico', 120.00),
(2, 'DEF4G56', 'Chevrolet Onix',  'Compacto',  160.00),
(3, 'GHI7J89', 'Toyota Corolla',  'Sedan',     250.00),
(4, 'JKL0M12', 'Jeep Renegade',   'SUV',       280.00),
(5, 'NOP3Q45', 'Volkswagen Gol',  'Economico', 130.00);

-- LOCACAO
INSERT INTO LOCACAO (id_locacao, id_cliente, id_veiculo, data_inicio, data_fim, valor_total) VALUES
(1, 1, 1, '2025-11-01', '2025-11-03', 360.00),   -- 3 dias x 120
(2, 2, 3, '2025-11-05', '2025-11-10', 1500.00),  -- 6 dias x 250
(3, 3, 2, '2025-11-08', '2025-11-09', 320.00),   -- 2 dias x 160
(4, 4, 4, '2025-11-15', '2025-11-18', 1120.00),  -- 4 dias x 280
(5, 5, 5, '2025-11-20', '2025-11-22', 390.00);   -- 3 dias x 130
