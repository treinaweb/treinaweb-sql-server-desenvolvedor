-- Selecionando o banco de dados
USE MeuRH;

-- Filtrando os funcionários que tenham o nome de João
SELECT * FROM Funcionarios WHERE LOWER(Nome) = 'joão';

-- Filtrando os funcionários que tenham nascido em 1980
SELECT *
FROM Funcionario
WHERE YEAR(DataNascimento) = 1980;

-- Filtrando os funcionários que tenham nascido em 1980 e no mês de Agosto
SELECT *
FROM Funcionario
WHERE YEAR(DataNascimento) = 1980
AND MONTH(DataNascimento) = 8;

-- Filtrando todos os funcionários que tenham nascido entre 1980 e 1985
SELECT *
FROM Funcionario
WHERE YEAR(DataNascimento) BETWEEN 1980 AND 1985;

-- Filtrando todos os funcionários que possuam mais de 30 anos
SELECT *
FROM Funcionario
WHERE DATEDIFF(YEAR, DataNascimento, GETDATE()) > 30;
