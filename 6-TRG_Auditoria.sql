CREATE OR REPLACE TRIGGER trg_auditoria_pagamentos BEFORE
    UPDATE ON salarios
    FOR EACH ROW
BEGIN
    INSERT INTO auditoria_pagamentos ap (
        id_log,
        operacao,
        id_funcionario,
        valor_antigo,
        valor_novo,
        data_hora
    ) VALUES (
        seq.log.nextval,
        'UPDATE',
        :old.id_funcionario,
        :old.valor_pago,
        :new.valor_pago,
        systimestamp
    );

END;