IF OBJECT_ID('validar_nome_cliente', 'TR') IS NOT NULL
BEGIN
    DROP TRIGGER validar_nome_cliente;
END
GO

CREATE TRIGGER validar_nome_cliente
ON Cliente
AFTER INSERT
AS
BEGIN
    IF (SELECT Nome FROM inserted) IS NULL OR LTRIM(RTRIM((SELECT Nome FROM inserted))) = ''
    BEGIN
        RAISERROR('O nome do cliente é obrigatório.', 16, 1);
        ROLLBACK;
    END
END


INSERT INTO Cliente (Nome) VALUES ('');