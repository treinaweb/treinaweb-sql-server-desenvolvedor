-- Selecionando o banco de dados
USE MeuRH;

-- Criando a tabela de pontos de acesso
CREATE TABLE PontosDeAcesso (
    Id int PRIMARY KEY IDENTITY(1,1),
    DataInicial datetime2 NOT NULL,
    DataFinal datetime2 NULL,
    FuncionarioId int NOT NULL,

    CONSTRAINT FK_PontosDeAcesso_Funcionario FOREIGN KEY (FuncionarioId) REFERENCES Funcionarios(Id)
    CONSTRAINT CK_PontosDeAcesso_DataInicialMenorDataFinal CHECK (
        DataInicial < DataFinal AND
        YEAR(DataInicial) = YEAR(DataFinal) AND
        MONTH(DataInicial) = MONTH(DataFinal) AND
        DAY(DataInicial) = DAY(DataFinal)
    )
);

-- Inserindo dados na tabela de pontos de acesso
INSERT INTO PontosDeAcesso (DataInicial, DataFinal, FuncionarioId) VALUES
('2024-01-01 08:00:00', '2024-01-01 12:00:00', 1),
('2024-01-01 13:00:00', '2024-01-01 17:00:00', 1),
('2024-01-02 08:00:00', '2024-01-02 12:00:00', 1),
('2024-01-02 13:00:00', '2024-01-02 17:00:00', 1),
('2024-01-01 08:00:00', '2024-01-01 12:00:00', 2),
('2024-01-01 13:00:00', '2024-01-01 17:00:00', 2),
('2024-01-02 08:00:00', '2024-01-02 12:00:00', 2),
('2024-01-02 13:00:00', '2024-01-02 17:00:00', 2);