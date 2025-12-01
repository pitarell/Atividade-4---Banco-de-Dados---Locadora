-- UPDATES

-- 1) Aumentar diária dos veículos econômicos
UPDATE VEICULO
SET diaria = diaria + 10.00
WHERE categoria = 'Economico';

-- 2) Atualizar telefone de um cliente
UPDATE CLIENTE
SET telefone = '11988887777'
WHERE cpf = '11111111111';

-- 3) Aplicar desconto em locações acima de R$ 2.000,00
UPDATE LOCACAO
SET valor_total = valor_total * 0.95
WHERE valor_total > 2000.00;


-- DELETES  (use como exemplo de limpeza de dados de teste)

-- 1) Apagar locações com valor zero
DELETE FROM LOCACAO
WHERE valor_total = 0.00;

-- 2) Apagar clientes sem nenhuma locação
DELETE FROM CLIENTE
WHERE id_cliente NOT IN (
    SELECT DISTINCT id_cliente FROM LOCACAO
);

-- 3) Apagar veículos de teste
DELETE FROM VEICULO
WHERE placa LIKE 'TEST%';
