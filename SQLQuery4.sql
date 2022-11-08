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

