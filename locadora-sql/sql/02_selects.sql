-- 1) Todas as locações com cliente e veículo
SELECT
    L.id_locacao,
    C.nome       AS nome_cliente,
    V.modelo     AS modelo_veiculo,
    L.data_inicio,
    L.data_fim,
    L.valor_total
FROM LOCACAO L
JOIN CLIENTE C ON C.id_cliente = L.id_cliente
JOIN VEICULO V ON V.id_veiculo = L.id_veiculo
ORDER BY L.data_inicio;

-- 2) Locações acima de R$ 1.000,00
SELECT
    L.id_locacao,
    C.nome,
    L.valor_total
FROM LOCACAO L
JOIN CLIENTE C ON C.id_cliente = L.id_cliente
WHERE L.valor_total > 1000.00
ORDER BY L.valor_total DESC;

-- 3) Top 3 clientes por gasto total
SELECT
    C.id_cliente,
    C.nome,
    SUM(L.valor_total) AS total_gasto
FROM CLIENTE C
JOIN LOCACAO L ON L.id_cliente = C.id_cliente
GROUP BY C.id_cliente, C.nome
ORDER BY total_gasto DESC
LIMIT 3;

-- 4) Veículos econômicos em ordem de diária
SELECT
    id_veiculo,
    modelo,
    categoria,
    diaria
FROM VEICULO
WHERE categoria = 'Economico'
ORDER BY diaria ASC;

-- 5) Locações em intervalo de datas
SELECT
    L.id_locacao,
    C.nome,
    V.modelo,
    L.data_inicio,
    L.data_fim
FROM LOCACAO L
JOIN CLIENTE C ON C.id_cliente = L.id_cliente
JOIN VEICULO V ON V.id_veiculo = L.id_veiculo
WHERE L.data_inicio BETWEEN '2025-11-01' AND '2025-11-15'
ORDER BY L.data_inicio;
