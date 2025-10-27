-- 1. Listar código, nome e telefone residencial de todos os clientes Ativos em ordem alfabética
SELECT Cod_cli, Nome_cli, Fone_resid
FROM Clientes
WHERE Status_cli = 'A'
ORDER BY Nome_cli;

-- 2. Listar todos os produtos que estão descontinuados (Sit_prod = 'D')
SELECT * FROM Produtos
WHERE Sit_prod = 'D';

-- 3. Extrair código do cliente, nome do cliente, código do produto e nome do produto
-- para pedidos entre 2019-01-01 e 2019-07-25, apenas clientes ativos
SELECT c.Cod_cli, c.Nome_cli, p.Cod_prod, p.Nome_prod, ped.Dt_compra
FROM Pedidos ped
JOIN Clientes c ON ped.Cod_cli = c.Cod_cli
JOIN Produtos p ON ped.Cod_prod = p.Cod_prod
WHERE ped.Dt_compra >= '2019-01-01' AND ped.Dt_compra <= '2019-07-25'
  AND c.Status_cli = 'A';

-- 4. Quantidade de clientes por cidade
SELECT Cidade, COUNT(*) AS Qtde_clientes
FROM Clientes
GROUP BY Cidade;

-- 5. Valor total vendido por produto (agregação)
SELECT p.Cod_prod, p.Nome_prod, SUM(ped.Vlr_total_ped) AS TotalVendido
FROM Pedidos ped
JOIN Produtos p ON ped.Cod_prod = p.Cod_prod
GROUP BY p.Cod_prod, p.Nome_prod
ORDER BY TotalVendido DESC;

-- 6. Buscar clientes sem e-mail
SELECT Cod_cli, Nome_cli
FROM Clientes
WHERE Email_cli IS NULL OR Email_cli = '';
