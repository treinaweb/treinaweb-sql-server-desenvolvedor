-- Selecionando o banco de dados
USE MeuRH;

-- Adiciona a constraint UNIQUE na coluna Cpf da tabela Funcionarios
ALTER TABLE 
    Funcionarios
ADD CONSTRAINT
    UC_Funcionarios_Cpf UNIQUE (Cpf);
