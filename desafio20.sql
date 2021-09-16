USE hr;
DELIMITER $$

CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN email VARCHAR(20))
BEGIN
    SELECT CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME) AS 'Nome completo', D.DEPARTMENT_NAME AS 'Departamento', J.JOB_TITLE AS 'Cargo'
    FROM employees AS E
    INNER JOIN job_history AS JH ON JH.EMPLOYEE_ID = E.EMPLOYEE_ID
    INNER JOIN departments AS D ON D.DEPARTMENT_ID = JH.DEPARTMENT_ID
    INNER JOIN jobs AS J ON J.JOB_ID = JH.JOB_ID
    WHERE E.EMAIL = email
    ORDER BY Departamento, Cargo;
END $$

DELIMITER ;
