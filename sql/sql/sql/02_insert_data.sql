-- Inserção de dados de exemplo
INSERT INTO Clientes VALUES
('C001','Ana Silva','F','123.456.789-00','Rua A',100,'Apto 1','50000-000','Boa Vista','Recife','PE','ana@email.com','8133330000','8199990000','A'),
('C002','Joao Pereira','F','987.654.321-00','Rua B',50,'Casa','50010-000','Santo Amaro','Recife','PE',NULL,'8133331111','8199991111','A'),
('C003','Empresa X','J','12.345.678/0001-99','Av Central',1000,NULL,'50020-000','Centro','Olinda','PE','contato@empresax.com','8133332222',NULL,'I');

INSERT INTO Produtos VALUES
('P001','Notebook Modelo A',3300.00,'A'),
('P002','Mouse Óptico',50.00,'A'),
('P003','Teclado Mecânico',220.00,'D');

INSERT INTO Pedidos (Cod_cli, Dt_compra, Cod_prod, Qtde_prod, Forma_pagto, Nr_parc, Dt_venc1, Vlr_total_ped, Status)
VALUES
('C001','2019-05-10','P002',2,'AV',1,'2019-06-10',100.00,'F'),
('C002','2019-07-20','P001',1,'CP',3,'2019-08-20',3300.00,'E'),
('C001','2019-07-05','P003',1,'DB',1,'2019-08-05',220.00,'L');
