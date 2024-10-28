-- Selecionando o banco de dados
USE MeuRH;

-- Concatenando strings com o operador +
SELECT 
    Nome + ' ' + Sobrenome AS NomeCompleto
FROM
    Funcionarios;

-- Concatenando strings com a função CONCAT
SELECT 
    CONCAT(Nome, ' ', Sobrenome) AS NomeCompleto
FROM
    Funcionarios;

-- Realizando conversões de tipos de dados
SELECT 
    Nome + ' ' + Sobrenome AS NomeCompleto,
    CAST(DataNascimento AS varchar(10)) AS DataNascimento
FROM
    Funcionarios;

-- Verificando se o valor é nulo com a função ISNULL
SELECT 
    Nome + ' ' + Sobrenome AS NomeCompleto,
    ISNULL(Observacoes, 'Sem observações') AS Observacoes
FROM
    Funcionarios;