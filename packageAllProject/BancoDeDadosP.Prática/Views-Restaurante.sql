CREATE VIEW PratosDisponiveis AS
SELECT *
FROM Prato
WHERE Quantidade > 0;



SELECT * FROM PratosDisponiveis;