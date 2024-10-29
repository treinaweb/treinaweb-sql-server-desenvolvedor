-- Selecionando o banco de dados
USE MeuRH;

-- Selecionando todos os funcionários que possuem pontos de acesso com LEFT JOIN
SELECT 
    F.Nome,
    F.Sobrenome,
    PDA.DataInicial,
    PDA.DataFinal
FROM
    Funcionarios F
LEFT JOIN
    PontosDeAcesso PDA
ON
    F.Id = PDA.FuncionarioId;


-- Selecionando todos os funcionários que possuem pontos de acesso com LEFT JOIN e exibindo o total de horas trabalhadas
SELECT 
    F.Nome,
    F.Sobrenome,
    PDA.DataInicial,
    PDA.DataFinal,
    CONVERT(VARCHAR, DATEADD(SECOND, DATEDIFF(SECOND, PDA.DataInicial, PDA.DataFinal), 0), 108)
FROM
    Funcionarios F
LEFT JOIN
    PontosDeAcesso PDA
ON
    F.Id = PDA.FuncionarioId;

-- Selecionando os funcionários que não possuem pontos de acesso
SELECT
	F.Id AS FuncionarioId,
	F.Nome,
	F.Sobrenome,
	PDA.DataInicial,
	PDA.DataFinal,
	CONVERT(varchar, DATEADD(SECOND, DATEDIFF(SECOND, PDA.DataInicial, PDA.DataFinal), 0), 108) AS HorasTrabalhadas
FROM
	Funcionarios AS F
LEFT JOIN
	PontosDeAcesso AS PDA
ON
	F.Id = PDA.FuncionarioId
WHERE
	PDA.DataInicial IS NULL;