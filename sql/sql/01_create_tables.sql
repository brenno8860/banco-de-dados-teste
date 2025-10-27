-- Criação de tabelas (compatível com SQL Server)
CREATE TABLE Clientes (
  Cod_cli VARCHAR(15) PRIMARY KEY,
  Nome_cli VARCHAR(100),
  Tp_pessoa CHAR(1),
  CPF_CNPJ VARCHAR(20),
  End_cli VARCHAR(100),
  End_Nr_cli INT,
  End_Compl VARCHAR(50),
  CEP VARCHAR(10),
  Bair_cli VARCHAR(50),
  Cidade VARCHAR(50),
  UF CHAR(2),
  Email_cli VARCHAR(100),
  Fone_coml VARCHAR(20),
  Fone_resid VARCHAR(20),
  Status_cli CHAR(1)
);

CREATE TABLE Produtos (
  Cod_prod VARCHAR(10) PRIMARY KEY,
  Nome_prod VARCHAR(100),
  Vlr_prod DECIMAL(15,2),
  Sit_prod CHAR(1)
);

CREATE TABLE Pedidos (
  Nr_Pedido INT IDENTITY(1,1) PRIMARY KEY,
  Cod_cli VARCHAR(15),
  Dt_compra DATE,
  Cod_prod VARCHAR(10),
  Qtde_prod INT,
  Forma_pagto CHAR(2),
  Nr_parc INT,
  Dt_venc1 DATE,
  Vlr_total_ped DECIMAL(15,2),
  Status CHAR(1),
  FOREIGN KEY (Cod_cli) REFERENCES Clientes(Cod_cli),
  FOREIGN KEY (Cod_prod) REFERENCES Produtos(Cod_prod)
);
