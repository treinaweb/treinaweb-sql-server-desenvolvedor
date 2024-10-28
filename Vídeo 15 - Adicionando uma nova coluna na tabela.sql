-- Selecionando o banco de dados
USE MeuRH;

-- Adiciona a coluna Cpf na tabela Funcionarios
ALTER TABLE 
    Funcionarios
ADD
    Cpf VARCHAR(14) NOT NULL DEFAULT '-';