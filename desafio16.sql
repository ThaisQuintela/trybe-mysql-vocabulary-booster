USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
    DECLARE job_total INT;
    SELECT COUNT(*)
    FROM job_history AS JH
    INNER JOIN employees AS E ON E.EMPLOYEE_ID = JH.EMPLOYEE_ID
    WHERE E.EMAIL = email INTO job_total;
    RETURN job_total;
END $$

DELIMITER ;
