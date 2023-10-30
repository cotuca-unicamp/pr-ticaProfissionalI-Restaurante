-- STORAGE PROCEDURE CLIENTE

CREATE PROCEDURE ContarClientes
AS
BEGIN
    DECLARE @NumeroClientes INT;
    SELECT @NumeroClientes = COUNT(*) FROM Cliente;
    PRINT 'N�mero de clientes: ' + CAST(@NumeroClientes AS VARCHAR);
END;



EXEC ContarClientes;