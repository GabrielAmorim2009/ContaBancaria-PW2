USE sistema_bancario;


---------- Criação da procedure para criar uma nova conta ----------
DELIMITER $$
CREATE PROCEDURE CriarConta(
    IN p_cliente_id INT,
    IN p_tipo_conta ENUM('corrente', 'poupanca') NOT NULL,
)
BEGIN
    INSERT INTO Contas (cliente_id, tipo_conta)
    VALUES (p_cliente_id, p_tipo_conta);

    COMMIT;
END $$
DELIMITER ;


---------- Criação da procedure para realizar um depósito ----------
DELIMITER $$
CREATE PROCEDURE Depositar(
    IN p_conta_id INT,
    IN p_valor DECIMAL(10,2)
)
BEGIN
    UPDATE Contas
    SET saldo = saldo + p_valor
    WHERE id = p_conta_id;

    INSERT INTO Transacoes (conta_id, tipo, valor, data)
    VALUES (p_conta_id, 'deposito', p_valor, NOW());

    COMMIT;
END $$
DELIMITER ;


---------- Criação da procedure para realizar uma transferência ----------
DELIMITER $$
CREATE PROCEDURE Transferir(

)
BEGIN

    COMMIT;
END $$
DELIMITER ;


---------- Criação da procedure para realizar um saque ----------

DELIMITER $$
CREATE PROCEDURE Saque(

)
BEGIN
    COMMIT;
END $$
DELIMITER ;


---------- Criação da procedure para desativar/ativar a conta ----------

DELIMITER $$
CREATE PROCEDURE MudarStatus(

)
BEGIN
    COMMIT;
END $$
DELIMITER ;


---------- Criação da procedure para consultar o saldo e o extrato da conta ----------
DELIMITER $$
CREATE PROCEDURE ConsultarConta(

)
BEGIN
    COMMIT;
END $$
DELIMITER ;


---------- Criação da procedure para editar os dados da conta ----------
DELIMITER $$
CREATE PROCEDURE EditarConta(

)
BEGIN
    COMMIT;
END $$
DELIMITER ;


CALL CriarConta(1, 'corrente');