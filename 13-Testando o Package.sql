/*Testando o Package
Inserir Funcionário:*/

BEGIN
	
	PKG_GESTAO_FUNCIONARIOS.INSERIR_FUNCIONARIO(
		SEQ_FUNCIONARIOS.NEXTVAL,
		'Tico Luiz',
		'98231456741',
		SYSDATE,
		'Analista de Sistemas',
	     6000
    );
END;


/*Consultar Funcionário:*/

DECLARE
	v_nome VARCHAR2(100);

BEGIN
	v_nome := PKG_GESTAO_FUNCIONARIOS.CONSULTAR_FUNCIONARIO(9);
	DBMS_OUTPUT.PUT_LINE('Nome do funcionário:  ' || v_nome);
END;

