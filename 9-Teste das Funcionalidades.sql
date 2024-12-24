/*Teste das Funcionalidades*/

-- Inserir Funcionários
BEGIN
    INSERIR_FUNCIONARIO(1, 'João Silva', '12345678901', SYSDATE, 'Analista', 5000);
    INSERIR_FUNCIONARIO(2, 'Maria Santos', '98765432109', SYSDATE, 'DBA', 7000);
END;

-- Calcular Salário Líquido
DECLARE
    v_salario_liquido NUMBER;
BEGIN
    v_salario_liquido := CALCULAR_SALARIO_LIQUIDO(5000, 500);
    DBMS_OUTPUT.PUT_LINE('Salário Líquido: ' || v_salario_liquido);
END;

-- Processar Pagamento em Massa
BEGIN
    PAGAMENTO_EM_MASSA;
END;

-- Testar Cursor
<rodar script 6>
