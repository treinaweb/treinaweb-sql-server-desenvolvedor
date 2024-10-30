-- Selecionando o banco de dados
USE MeuRH;

-- Criando a tabela de departamentos
CREATE TABLE Departamentos (
    Id INT PRIMARY KEY IDENTITY,
    Nome VARCHAR(100) NOT NULL,
    ResposavelId INT NOT NULL,

    CONSTRAINT FK_Departamentos_Funcionarios FOREIGN KEY (ResposavelId) REFERENCES Funcionarios(Id)
);

-- Adicionando os departamentos
INSERT INTO Departamentos (Nome, ResposavelId) 
VALUES 
    ('Recursos Humanos', 1),
    ('Financeiro', 2),
    ('TI', 3);

-- Adicionando a coluna DepartamentoId na tabela Funcionarios
ALTER TABLE Funcionarios
ADD DepartamentoId INT NOT NULL DEFAULT 1;

ALTER TABLE Funcionarios
ADD CONSTRAINT FK_Funcionarios_Departamentos FOREIGN KEY (DepartamentoId) REFERENCES Departamentos(Id);

-- Realizando uma consulta com as tabelas Funcionarios, Departamentos e PontosDeAcesso
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