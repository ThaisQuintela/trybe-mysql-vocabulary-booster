USE hr;
DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes INT, ano INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantidade_pessoas_contratadas INT;
SELECT 
    COUNT(*)
FROM
    employees
WHERE
    HIRE_DATE LIKE CONCAT(ano,
            '-',
            (IF(mes > 10, mes, CONCAT(0, mes))),
            '%') INTO quantidade_pessoas_contratadas;
RETURN quantidade_pessoas_contratadas;
END $$

DELIMITER ;
