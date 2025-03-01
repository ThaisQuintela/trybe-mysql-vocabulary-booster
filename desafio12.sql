SELECT 
    CONCAT(t1.FIRST_NAME, ' ', t1.LAST_NAME) AS `Nome completo funcionário 1`,
    t1.SALARY AS 'Salário funcionário 1',
    t1.PHONE_NUMBER AS 'Telefone funcionário 1',
    ANY_VALUE(CONCAT(t2.FIRST_NAME, ' ', t2.LAST_NAME)) AS `Nome completo funcionário 2`,
    ANY_VALUE(t2.SALARY) AS 'Salário funcionário 2',
    ANY_VALUE(t2.PHONE_NUMBER) AS 'Telefone funcionário 2'
FROM
    hr.employees AS t1,
    hr.employees AS t2
WHERE
    t1.JOB_ID = t2.JOB_ID
        AND CONCAT(t1.FIRST_NAME, ' ', t1.LAST_NAME) <> CONCAT(t2.FIRST_NAME, ' ', t2.LAST_NAME)
ORDER BY `Nome completo funcionário 1` , `Nome completo funcionário 2`;
