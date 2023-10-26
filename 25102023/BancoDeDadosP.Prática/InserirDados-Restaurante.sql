INSERT INTO Cliente (Nome, Telefone, Email)
VALUES 
( 'Maria', '123456789', 'Maria@email.com'),
( 'jose', '123456798', 'Jose@email.com'),
( 'rosa', '123456720', 'Rosa@email.com');

select * from Cliente

INSERT INTO Login (Usuario, Senha, Nivel_acesso)
VALUES 
('@Maria', 'Exemplo_senha', 1),
('@jose', 'Exemplo_senha', 1),
('@rosa', 'Exemplo_senha', 1);

select * from Login

INSERT INTO Prato (Nome, Descricao, Preco, Categoria, Quantidade, Data_lancamento)
VALUES 
('Risoto', 'Descricao_prato', 69.90, 'Massas', 10, '2023-10-20'),
('Sofioli', 'Descricao_prato', 69.90, 'Massas', 10, '2023-10-20'),
('Espaguete', 'Descricao_prato', 69.90, 'Massas', 10, '2023-10-20');

select * from Prato

INSERT INTO Avaliacao (ID_cliente, Classificacao, Data_avaliacao)
VALUES 
( 1, 5, '2023-10-20'),
( 2, 5, '2023-10-20'),
( 3, 5, '2023-10-20');

select * from Avaliacao

INSERT INTO Pedido (Data_hora, Status, ID_avaliacao)
VALUES 
('2023-10-20 14:31:00', 'Em andamento', 1),
('2023-10-20 14:32:00', 'Finalizado', 2),
('2023-10-20 14:35:00', 'Em andamento', 3);




