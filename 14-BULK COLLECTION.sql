
/*Segue um exemplo de como usar o BULK COLLECTION para popular a tabela FUNCIONARIOS 
 * com 10 registros fictícios. O BULK COLLECTION permite inserir múltiplos registros 
 * de maneira eficiente.*/

DECLARE
	TYPE FUNCIONARIO_T IS RECORD (
		ID_FUNCIONARIO NUMBER,
		NOME VARCHAR2(100),
		CPF VARCHAR2(11),
		DATA_ADMISSAO DATE,
		CARGO VARCHAR2(50),
		SALARIO_BASE NUMBER
	);

	TYPE FUNCIONARIO_TBL IS TABLE OF FUNCIONARIO_T;
	
	v_funcionarios FUNCIONARIO_TBL := FUNCIONARIO_TBL (
		FUNCIONARIO_T(SEQ_FUNCIONARIOS.NEXTVAL, 'Junior Silva', '12335678901', SYSDATE - 365, 'Analista', 5000),
        FUNCIONARIO_T(SEQ_FUNCIONARIOS.NEXTVAL, 'Maria Souza', '98865432109', SYSDATE - 300, 'Gerente', 8000),
        FUNCIONARIO_T(SEQ_FUNCIONARIOS.NEXTVAL, 'Carlos Almeida', '11122233344', SYSDATE - 200, 'Desenvolvedor', 4000),
        FUNCIONARIO_T(SEQ_FUNCIONARIOS.NEXTVAL, 'Ana Paula', '55566677788', SYSDATE - 100, 'Tester', 3500),
        FUNCIONARIO_T(SEQ_FUNCIONARIOS.NEXTVAL, 'Lucas Martins', '99988877766', SYSDATE - 180, 'DevOps', 6000),
        FUNCIONARIO_T(SEQ_FUNCIONARIOS.NEXTVAL, 'Fernanda Lopes', '44455566677', SYSDATE - 150, 'Designer', 4500),
        FUNCIONARIO_T(SEQ_FUNCIONARIOS.NEXTVAL, 'Paulo Costa', '22233344455', SYSDATE - 120, 'Arquiteto', 7000),
        FUNCIONARIO_T(SEQ_FUNCIONARIOS.NEXTVAL, 'Carla Nunes', '88899900011', SYSDATE - 60, 'Scrum Master', 5500),
        FUNCIONARIO_T(SEQ_FUNCIONARIOS.NEXTVAL, 'Roberto Dias', '66677788899', SYSDATE - 90, 'PO', 7500),
        FUNCIONARIO_T(SEQ_FUNCIONARIOS.NEXTVAL, 'Juliana Santos', '00011122233', SYSDATE - 30, 'Consultor', 6500)
  );

BEGIN
	FORALL i IN v_funcionarios.FIRST .. v_funcionarios.LAST
		INSERT INTO FUNCIONARIOS(ID_FUNCIONARIO, NOME, CPF, DATA_ADMISSAO, CARGO, SALARIO_BASE)
		VALUES (
			v_funcionarios(i).ID_FUNCIONARIO,
            v_funcionarios(i).NOME,
            v_funcionarios(i).CPF,
            v_funcionarios(i).DATA_ADMISSAO,
            v_funcionarios(i).CARGO,
            v_funcionarios(i).SALARIO_BASE
		);
	
	COMMIT;
	
	DBMS_OUTPUT.PUT_LINE('10 registros fictícios foram inseridos na tabela FUNCIONARIOS.');
	
	
END;