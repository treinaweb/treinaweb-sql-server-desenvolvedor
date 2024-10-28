-- Selecionando o banco de dados
USE MeuRH;

-- Atualizando o Cpf do funcionário que possui o Id 1
UPDATE Funcionarios SET Cpf = '12345678900' WHERE Id = 1;

-- Atualizando o Cpf e as Observações do funcionário que possui o Id 2
UPDATE 
    Funcionarios 
SET 
    Cpf = '98765432100', 
    Observacoes = 'Funcionário desligado da empresa' 
WHERE 
    Id = 2;