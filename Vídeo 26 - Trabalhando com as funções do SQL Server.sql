-- Selecionando o banco de dados
USE MeuRH;

-- Utilizando o COUNT para contar a quantidade de registros
SELECT COUNT(*) AS QuantidadeFuncionarios FROM Funcionarios;

SELECT
    D.Nome AS Departamento,
    COUNT(*) AS QuantidadeFuncionarios
FROM
    Departamentos AS D
LEFT JOIN
    Funcionarios AS F ON D.Id = F.DepartamentoId
GROUP BY
    D.Nome;

-- Utilizando o MIN para retornar a menor data
SELECT MIN(DataNascimento) AS DataNascimentoMaisNova FROM Funcionarios;

SELECT
    *
FROM 
    Funcionarios
WHERE
    DataNascimento = (SELECT MIN(DataNascimento) FROM Funcionarios);

-- Utilizando o MAX para retornar a maior data
SELECT MAX(DataNascimento) AS DataNascimentoMaisVelha FROM Funcionarios;

SELECT
    *
FROM
    Funcionarios
WHERE
    DataNascimento = (SELECT MAX(DataNascimento) FROM Funcionarios);

-- Adicionando a coluna Salario na tabela Funcionarios
ALTER TABLE Funcionarios
ADD Salario MONEY NOT NULL DEFAULT 0;

UPDATE Funcionarios SET Salario = 1000 WHERE Id = 1;
UPDATE Funcionarios SET Salario = 2500 WHERE Id = 2;
UPDATE Funcionarios SET Salario = 5100 WHERE Id = 3;
UPDATE Funcionarios SET Salario = 3500 WHERE Id = 4;

-- Utilizando o SUM para somar os salários
SELECT SUM(Salario) AS TotalSalarios FROM Funcionarios;

SELECT
    D.Nome AS Departamento,
    SUM(F.Salario) AS TotalSalarios
FROM
    Departamentos AS D
LEFT JOIN
    Funcionarios AS F ON D.Id = F.DepartamentoId
GROUP BY
    D.Nome;

-- Utilizando o AVG para calcular a média dos salários
SELECT AVG(Salario) AS MediaSalarios FROM Funcionarios;

SELECT
    D.Nome AS Departamento,
    AVG(F.Salario) AS MediaSalarios
FROM
    Departamentos AS D
LEFT JOIN
    Funcionarios AS F ON D.Id = F.DepartamentoId
GROUP BY
    D.Nome;