--SELECT * FROM Clientes
--WHERE Nome = 'Adam' AND Sobrenome = 'Barr'
--WHERE Nome LIKE '%G%'
--ORDER BY Nome, Sobrenome

SELECT * FROM Clientes
WHERE Nome = 'Rosendo'

INSERT INTO Clientes(Nome, Sobrenome, Email, AceitaComunicados, DataCadastro)
VALUES ('Rosendo', 'Neto', 'email@email.com', 1, GETDATE())

SELECT * FROM Clientes WHERE Nome = 'Rosendo'

UPDATE Clientes
SET Email = 'rosendo@live.com', 
	AceitaComunicados = 0
WHERE Id = 1001

DELETE Clientes
WHERE Id = 1002