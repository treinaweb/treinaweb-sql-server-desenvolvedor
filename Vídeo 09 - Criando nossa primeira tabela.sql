-- Selecionando o banco de dados
USE MeuRH;

-- Criando a tabela de funcionários
CREATE TABLE Funcionarios (
    Id int PRIMARY KEY IDENTITY(1,1),
    Nome varchar(20) NOT NULL,
    Sobrenome varchar(50) NOT NULL,
    DataNascimento date NOT NULL,
    Observacoes text NULL
);