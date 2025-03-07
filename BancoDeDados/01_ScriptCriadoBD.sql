--DROP DATABASE dbAlmoxarifado
GO
create DATABASE dbAlmoxarifado11
GO
USE dbAlmoxarifado11
GO
---Categoria
CREATE TABLE CATEGORIA (
  Codigo int identity(1,1) primary key,
  Descricao varchar(100) not null
)
INSERT CATEGORIA (Descricao)  VALUES ('Bebidas')
INSERT CATEGORIA (Descricao)  VALUES ('Alimentos')
INSERT CATEGORIA (Descricao)  VALUES ('Eletrônicos')
SELECT*FROM CATEGORIA
GO



CREATE TABLE PRODUTO(
  Codigo int identity(1,1) primary key,
  Descricao varchar(100) not null,
  UnidadeMedida varchar(100) not null,
  EstoqueAtual FLOAT(2) DEFAULT '0.00',
  Epermanente bit DEFAULT 0,
  CodigoCategoria int not null
)
INSERT INTO PRODUTO ([Descricao],[UnidadeMedida],[EstoqueAtual],[Epermanente],[CodigoCategoria])
             VALUES ('Coca-cola','Un', 20, 0,2) 
INSERT INTO PRODUTO ([Descricao],[UnidadeMedida],[EstoqueAtual],[Epermanente],[CodigoCategoria])
             VALUES ('Biscoito','Pacote', 15, 0,1)        
GO
SELECT*FROM PRODUTO



go
ALTER TABLE PRODUTO
ADD FOREIGN KEY  (CodigoCategoria) REFERENCES CATEGORIA(Codigo);
go
SELECT * FROM PRODUTO

CREATE TABLE FORNECEDOR(
  Codigo int identity(1,1) primary key,
  Nome varchar(100),
  Telefone varchar(12) not null,
  Estado varchar(100) ,
  Cidade varchar(100)  ,
  CNPJ varchar(100)  
  )
  	INSERT INTO FORNECEDOR([Nome], [Telefone], [Estado], [Cidade], [CNPJ])
		values ('Quero+', '(79)99564321', 'Sergipe', 'Estancia','00906704532')
		INSERT INTO FORNECEDOR([Nome], [Telefone], [Estado], [Cidade], [CNPJ])
		values ('SANSUNG', '(79)95564671', 'Sergipe', 'Aracaju','01906704295')
		
		select*from FORNECEDOR
	
CREATE TABLE ENTRADA(
Codigo int identity(1,1) primary key,
Descricao varchar(100),
DATAENTRADA VARCHAR(100),
QUANTIDADEATUAL VARCHAR(100)
)
INSERT INTO ENTRADA([Descricao], [DATAENTRADA],[QUANTIDADEATUAL])
		values ('eletronico','08/02/2025', '10')
		
		SELECT*FROM ENTRADA

		CREATE TABLE SECRETARIA(
   codigo int identity(1,1) primary key,
  Descricao varchar(100),
  Nome varchar(100),
  Telefone varchar(12) not null,
  Estado varchar(100) ,
  Cidade varchar(100)  ,
  CNPJ varchar(100)  
		)
		INSERT INTO SECRETARIA(Descricao ,Nome, Telefone, Estado, Cidade, CNPJ)
		values ('Alimentos','SECRETARIA ESTANCIA', '(79)99564321', 'Sergipe', 'Estancia','00906704532')

		
		INSERT INTO SECRETARIA(Descricao, Nome, Telefone, Estado, Cidade, CNPJ)
		values ('Eletronicos','SeCRETARIA ARACAJU', '(79)95564671', 'Sergipe', 'Aracaju','01906704295')
		
		SELECT*FROM SECRETARIA

		CREATE TABLE ITEMENTRADA(
		Codigo int identity(1,1) primary key,
		DATAENTRADA VARCHAR(100),
		CodigoProduto int,
		Quantidade int,
		Preço VARCHAR(100),
		Total int,
		)
		insert into ITEMENTRADA(DATAENTRADA,CodigoProduto,Quantidade,Preço,Total)
		VALUES ('23/02/2025', '', '5', '1000','67')
		
		SELECT*FROM ITEMENTRADA
		
		CREATE TABLE SAIDA(
		
		Codigo  int identity(1,1) primary key,
         Descricao VARCHAR(100),
         Quantidadeatual int,
         QuantidadedeSaida int
		 )
		 insert into SAIDA (Descricao, Quantidadeatual,QuantidadedeSaida)
		 VALUES ('Alimentos', '100','54')
		 SELECT*FROM SAIDA