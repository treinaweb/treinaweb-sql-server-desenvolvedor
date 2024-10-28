-- Selecionando o banco de dados
USE MeuRH;

-- Inserindo valores na tabela de funcionários
INSERT INTO Funcionarios 
    (Nome, Sobrenome, DataNascimento)
VALUES
    ('João', 'Silva', '1990-01-01')

INSERT INTO [MeuRH].[dbo].[Funcionarios] 
	(Nome, Sobrenome, DataNascimento, Observacoes) 
VALUES
    ('Elton', 'Fonseca', '1990-01-01', 'Observações sobre Elton');

-- Inserindo múltiplos valores na tabela de funcionários
INSERT INTO Funcionarios 
    (Nome, Sobrenome, DataNascimento, Observacoes)
VALUES
    ('Maria', 'Santos', '1995-01-01', 'Observações sobre Maria'),
    ('Pedro', 'Oliveira', '1980-01-01', 'Observações sobre Pedro'),
    ('José', 'Oliveira', '1985-01-01', NULL);