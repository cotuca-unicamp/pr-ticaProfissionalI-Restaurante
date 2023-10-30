CREATE SCHEMA Restaurante;

CREATE TABLE Cliente
(
    ID_cliente INT identity PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    Telefone VARCHAR(20),
    Email VARCHAR(100)
);

CREATE TABLE Login 
(
    ID_login INT identity PRIMARY KEY,
    Usuario VARCHAR(100) NOT NULL,
    Senha VARCHAR(100)NOT NULL,
    Nivel_acesso INT --  pesquisar o uso de default
);

CREATE TABLE Prato 
(
    ID_produto INT identity PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    Descricao TEXT,
    Preco DECIMAL(10, 2) NOT NULL,
    Categoria VARCHAR(100) NOT NULL,
    Quantidade INT NOT NULL ,
    Data_lancamento DATE  
);

CREATE TABLE Avaliacao 
(
    ID_avaliacao INT identity PRIMARY KEY,
    ID_cliente INT,
    Classificacao INT,
    Data_avaliacao DATE,
    FOREIGN KEY (ID_cliente) REFERENCES Cliente(ID_cliente)
);

CREATE TABLE Pedido (
    ID_pedido INT identity PRIMARY KEY,
    Data_hora DATETIME NOT NULL,
    Status VARCHAR(100)NOT NULL,
  --  ID_avaliacao INT,
	ID_cliente INT,
  --  FOREIGN KEY (ID_avaliacao) REFERENCES Avaliacao(ID_avaliacao),
	FOREIGN KEY (ID_cliente) REFERENCES Cliente(ID_cliente)
);
