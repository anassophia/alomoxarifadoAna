use dbAlmoxarifado11

--Tabela Categoria
--select * from categoria
INSERT CATEGORIA (Descricao)  VALUES ('Bebidas')
INSERT CATEGORIA (Descricao)  VALUES ('Alimentos')
INSERT CATEGORIA (Descricao)  VALUES ('Eletrônicos')

--select * from produto
INSERT INTO PRODUTO ([Descricao],[UnidadeMedida],[EstoqueAtual],[Epermanente],[CodigoCategoria])
             VALUES ('Coca-cola','Un', 20, 0,2) 
INSERT INTO PRODUTO ([Descricao],[UnidadeMedida],[EstoqueAtual],[Epermanente],[CodigoCategoria])
             VALUES ('Biscoito','Pacote', 15, 0,1)        
GO


