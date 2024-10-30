-- Selecionando o banco de dados
USE MeuRH;

-- Criando uma view
CREATE VIEW vw_FuncionariosDepartamentosPontosDeAcesso AS
SELECT
	CONCAT(F.Nome, ' ', F.Sobrenome) AS Funcionario,
	D.Nome AS Departamento,
	CONCAT(F2.Nome, ' ', F2.Sobrenome) AS Responsavel,
	PDA.DataInicial, 
	PDA.DataFinal,
	CONVERT(varchar, DATEADD(SECOND, DATEDIFF(SECOND, PDA.DataInicial, PDA.DataFinal), 0), 108) AS HorasTrabalhadas
FROM
	Funcionarios AS F
LEFT JOIN
	PontosDeAcesso AS PDA ON F.Id = PDA.FuncionarioId
INNER JOIN
	Departamentos AS D ON F.DepartamentoId = D.Id
INNER JOIN
	Funcionarios AS F2 ON D.ResponsavelId = F2.Id;
