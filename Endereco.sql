SELECT * FROM Clientes

SELECT * FROM Enderecos

CREATE TABLE Enderecos (
	Id int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	IdCliente int NULL,
	Rua varchar(255) NULL,
	Bairro varchar(255) NULL,
	Cidade varchar(255) NULL,
	Estado char(2) NULL,

	CONSTRAINT FK_Enderecos_Clientes FOREIGN KEY(IdCliente)
	REFERENCES Clientes(Id)
)

SELECT * FROM Clientes WHERE Id = 2
SELECT * FROM Enderecos WHERE IdCliente = 2

INSERT INTO Enderecos VALUES (2, 'Rua Bleu', 'Praia', 'Salvador', 'BA')


--INNER JOIN
SELECT * FROM Clientes INNER JOIN Enderecos ON Clientes.Id = Enderecos.IdCliente
SELECT *, FORMAT(DataCadastro, 'dd/MM/yyyy HH:mm') Data FROM Clientes INNER JOIN Enderecos ON Clientes.Id = Enderecos.IdCliente

SELECT
	Clientes.Nome,
	Clientes.Sobrenome,
	Clientes.Email,
	Enderecos.Rua,
	Enderecos.Bairro,
	Enderecos.Cidade,
	Enderecos.Estado
FROM 
	Clientes 
	INNER JOIN Enderecos ON Clientes.Id = Enderecos.IdCliente
	WHERE Clientes.Id = 2

  