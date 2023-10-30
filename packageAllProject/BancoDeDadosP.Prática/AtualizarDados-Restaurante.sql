-- Atualizar Dados Restaurante

UPDATE Cliente
SET Nome = 'Luiza',
    Telefone = '97854698742',
    Email = 'Luiza@gmail.com'
WHERE ID_cliente = 1;


UPDATE Login
SET Usuario = 'NovoNomeDeUsuario',
    Senha = 'NovaSenha',
    Nivel_acesso = 2
WHERE ID_login = 1;


UPDATE Prato
SET Nome = 'Novo Nome do Prato',
    Descricao = 'Nova Descrição do Prato',
    Preco = 69.90,
    Categoria = 'Nova Categoria',
    Quantidade = 50,
    Data_lancamento = '2023-10-20'
WHERE ID_produto = 1;


UPDATE Avaliacao
SET ID_cliente = 2,
    Classificacao = 5,
    Data_avaliacao = '2023-10-20'
WHERE ID_avaliacao = 1;


UPDATE Pedido
SET Data_hora = '2023-10-20 14:30:00',
    Status = 'Entregue',
    ID_avaliacao = 2
WHERE ID_pedido = 1;
