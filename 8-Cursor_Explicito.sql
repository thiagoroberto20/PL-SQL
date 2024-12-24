/*Cursores
Script 6: Cursor Explícito*/

DECLARE 
	CURSOR c_funcionarios IS
		SELECT ID_FUNCIONARIO, NOME, SALARIO_BASE FROM FUNCIONARIOS;
	v_id FUNCIONARIOS.ID_FUNCIONARIO%TYPE;
	v_nome FUNCIONARIOS.NOME%TYPE;
	v_salario FUNCIONARIOS.SALARIO_BASE%TYPE;
BEGIN
	OPEN c_funcionarios;
	LOOP
		FETCH c_funcionarios INTO v_id, v_nome, v_salario;
		EXIT WHEN c_funcionarios%NOTFOUND;
		DBMS_OUTPUT.PUT_LINE('ID: ' || v_id || ', Nome: ' || v_nome || ', Salário: ' || v_salario);
		
	END LOOP;
	CLOSE c_funcionarios;
END;
