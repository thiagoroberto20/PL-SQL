/*
Os índices são essenciais para melhorar a performance do banco de dados, especialmente em consultas frequentes. 
Vou sugerir índices para o seu projeto com base nas tabelas e no provável uso delas:

1. Índice na Tabela FUNCIONARIOS
Objetivo: Melhorar a performance nas buscas e validações de dados, como CPF e cargo.*/

-- Índice para busca por CPF (único)
CREATE UNIQUE INDEX IDX_FUNCIONARIOS_CPF ON FUNCIONARIOS (CPF);

-- Índice para busca por cargo
CREATE INDEX IDX_FUNCIONARIOS_CARGO ON FUNCIONARIOS (CARGO);

-- Índice composto para buscas por cargo e data de admissão
CREATE INDEX IDX_FUNCIONARIOS_CARGO_ADMISSAO ON FUNCIONARIOS (CARGO, DATA_ADMISSAO);

/*2. Índice na Tabela SALARIOS
Objetivo: Otimizar as buscas pelos pagamentos de funcionários e consultas baseadas em data.*/

-- Índice para busca por funcionário
CREATE INDEX IDX_SALARIOS_ID_FUNCIONARIO ON SALARIOS (ID_FUNCIONARIO);

-- Índice para busca por data de pagamento
CREATE INDEX IDX_SALARIOS_DATA_PAGAMENTO ON SALARIOS (DATA_PAGAMENTO);

-- Índice composto para consultas por funcionário e data de pagamento
CREATE INDEX IDX_SALARIOS_FUNCIONARIO_DATA ON SALARIOS (ID_FUNCIONARIO, DATA_PAGAMENTO);

/*3. Índice na Tabela HISTORICO_PAGAMENTOS
Objetivo: Melhorar a performance de relatórios históricos.*/

-- Índice para buscas por funcionário no histórico
CREATE INDEX IDX_HISTORICO_FUNCIONARIO ON HISTORICO_PAGAMENTOS (ID_FUNCIONARIO);

-- Índice para buscas por mês de referência
CREATE INDEX IDX_HISTORICO_MES_REFERENCIA ON HISTORICO_PAGAMENTOS (MES_REFERENCIA);

-- Índice composto para relatórios que cruzam funcionário e mês
CREATE INDEX IDX_HISTORICO_FUNCIONARIO_MES ON HISTORICO_PAGAMENTOS (ID_FUNCIONARIO, MES_REFERENCIA);

/*4. Índice na Tabela AUDITORIA_PAGAMENTOS
Objetivo: Acelerar buscas por logs específicos.*/

-- Índice para buscas por funcionário
CREATE INDEX IDX_AUDITORIA_FUNCIONARIO ON AUDITORIA_PAGAMENTOS (ID_FUNCIONARIO);

-- Índice para buscas por data e operação
CREATE INDEX IDX_AUDITORIA_OPERACAO_DATA ON AUDITORIA_PAGAMENTOS (OPERACAO, DATA_HORA);

/*5. Índice na Tabela LOG_ERROS
Objetivo: Acelerar consultas a logs recentes.*/
-- Índice para buscas por data de ocorrência

CREATE INDEX IDX_LOGS_DATA ON LOG_ERROS (DATA_OCORRENCIA);



