-- Selecionando o banco de dados
USE MeuRH;

-- Selecionando todos os registros da tabela de funcionários
SELECT * FROM Funcionarios;

-- Selecionando apenas o nome, sobreome e data de nascimento da tabela de funcionários
SELECT Nome, Sobrenome, DataNascimento FROM Funcionarios;

-- Selecionando apenas os cinco primeiros registros da tabela de funcionários
SELECT TOP 5 * FROM Funcionarios;