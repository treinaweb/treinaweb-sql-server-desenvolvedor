-- Selecionando o banco de dados
USE MeuRH;

-- Alterando a collation no momento da consulta
SELECT * FROM Funcionarios WHERE Nome = 'joão' COLLATE Latin1_General_CI_AI;
-- CI = Case Insensitive
-- AI = Accent Insensitive
-- CS = Case Sensitive
-- AS = Accent Sensitive