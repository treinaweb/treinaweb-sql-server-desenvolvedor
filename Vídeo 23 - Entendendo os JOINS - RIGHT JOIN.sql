-- Selecionando o banco de dados
USE MeuRH;

-- Selecionando todos os funcionários que possuem pontos de acesso com RIGHT JOIN
SELECT
	F.Nome,
	F.Sobrenome,
	PDA.DataFinal,
	PDA.DataFinal
FROM
	Funcionarios AS F
RIGHT JOIN
	PontosDeAcesso AS PDA
ON
	F.Id = PDA.FuncionarioId;