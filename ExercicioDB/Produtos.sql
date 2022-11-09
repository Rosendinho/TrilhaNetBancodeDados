SELECT * FROM Produtos

SELECT COUNT(*) QuantidadeProdutos FROM Produtos

SELECT COUNT(*) QuantidadeProdutosTamanhoM FROM Produtos WHERE Tamanho = 'M'

SELECT SUM(Preco) PrecoTotal FROM Produtos WHERE Tamanho = 'M'

SELECT MAX(Preco) PrecoMaisCaro FROM Produtos

SELECT MIN(Preco) PrecoMaisBarato FROM Produtos

SELECT AVG(Preco) FROM Produtos


SELECT 
	Nome + ', Cor: ' + Cor + ' - ' + Genero NomeProduto,
	UPPER(Nome) Nome,
	LOWER(Cor) Cor,
	FORMAT(DataCadastro, 'dd/MM/yyyy HH:mm') Data
FROM Produtos

--Adiciona uma coluna
ALTER TABLE Produtos
ADD DataCadastro DATETIME2

--Exclui uma coluna
ALTER TABLE Produtos
DROP COLUMN DataCadastro

UPDATE Produtos SET DataCadastro = GETDATE()

--Nessa ordem SELECT > WHERE > GROUP > ORDER
SELECT
	Tamanho,
	COUNT(*) Quantidade
FROM Produtos
WHERE Tamanho <> ''
GROUP BY Tamanho
ORDER BY Quantidade DESC


SELECT * FROM Produtos
WHERE Preco = 88.90

INSERT INTO Produtos VALUES('AWC Logo Cap3', 'Branco', 88.90, 'G', 'U', GETDATE()) 

ALTER TABLE Produtos
ADD UNIQUE(Nome)

ALTER TABLE Produtos
ADD CHECK (Genero = 'M' OR Genero = 'F' OR Genero = 'U')

ALTER TABLE Produtos
ADD DEFAULT GETDATE() FOR DataCadastro

ALTER TABLE Produtos
DROP CONSTRAINT UQ__Produtos__7D8FE3B2E43BEE9A

--Creando Procedure
CREATE PROCEDURE InserirProduto
@Nome varchar(255),
@Cor varchar(50),
@Preco decimal,
@Tamanho varchar(5),
@Genero char(1)

AS

INSERT INTO Produtos (Nome, Cor, Preco, Tamanho, Genero)
VALUES(@Nome, @Cor, @Preco, @Tamanho, @Genero)

--Chamando Procedure
EXEC InserirProduto
'Produto Procedure',
'Colorido',
20.90,
'G',
'U'

CREATE PROCEDURE ProdutoTamanho
@TamanhoProduto VARCHAR(5)

AS

SELECT * FROM Produtos WHERE Tamanho = @TamanhoProduto

EXEC ProdutoTamanho 'G'