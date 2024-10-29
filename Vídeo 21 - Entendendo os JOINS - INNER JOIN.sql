-- Selecionando o banco de dados
USE MeuRH;

-- Selecionando todos os funcionários que possuem pontos de acesso com INNER JOIN
SELECT 
    F.Nome,
    F.Sobrenome,
    PA.DataInicial,
    PA.DataFinal
FROM 
    Funcionarios F
INNER JOIN 
    PontosDeAcesso PA
ON 
    F.Id = PA.FuncionarioId;

-- Selecionando todos os funcionários que possuem pontos de acesso com INNER JOIN e exibindo o total de horas trabalhadas
SELECT 
    F.Nome,
    F.Sobrenome,
    PA.DataInicial,
    PA.DataFinal,
    DATEDIFF(HOUR, PA.DataInicial, PA.DataFinal) AS HorasTrabalhadas
FROM
    Funcionarios F
INNER JOIN
    PontosDeAcesso PA
ON
    F.Id = PA.FuncionarioId;

SELECT 
    F.Nome,
    F.Sobrenome,
    PA.DataInicial,
    PA.DataFinal,
    CONVERT(VARCHAR, DATEADD(SECOND, DATEDIFF(SECOND, PA.DataInicial, PA.DataFinal), 0), 108)
FROM
    Funcionarios F
INNER JOIN
    PontosDeAcesso PA
ON
    F.Id = PA.FuncionarioId;

