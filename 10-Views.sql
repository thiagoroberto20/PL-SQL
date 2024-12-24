/*Views
As views são usadas para simplificar consultas ou consolidar informações de múltiplas tabelas.

View: VW_FUNCIONARIOS_DETALHES
Consolida as informações de funcionários, incluindo nome, cargo e salário.*/
CREATE OR REPLACE VIEW VW_FUNCIONARIOS_DETALHES AS
SELECT 
	F.ID_FUNCIONARIO,
	F.NOME,
	F.CPF,
	TO_CHAR(DATA_ADMISSAO, 'DD/MM/YYYY') AS DATA_ADMISSAO,
	CARGO,
	SALARIO_BASE 
FROM FUNCIONARIOS f ;


/*View: VW_LOG_ERROS
Lista os erros registrados no sistema para auditoria.*/
CREATE OR REPLACE VIEW VW_LOG_ERROS AS
SELECT 
	LE.ID_LOG,
	LE.DESCRICAO_ERRO,
	TO_CHAR(DATA_OCORRENCIA, 'DD/MM/YYYY HH24:MI:SS') AS DATA_OCORRENCIA
FROM LOG_ERROS le;