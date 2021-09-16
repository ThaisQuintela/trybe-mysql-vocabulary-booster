SELECT 
    CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME) AS `Nome completo`,
    CONCAT(RIGHT(JH.START_DATE, 2),
            '/',
            SUBSTRING(JH.START_DATE, 6, 2),
            '/',
            YEAR(JH.START_DATE)) AS 'Data de início',
    CONCAT(RIGHT(JH.END_DATE, 2),
            '/',
            SUBSTRING(JH.END_DATE, 6, 2),
            '/',
            YEAR(JH.END_DATE)) AS 'Data de rescisão',
    ROUND((DATEDIFF(JH.END_DATE, JH.START_DATE) / 365), 2) AS `Anos trabalhados`
FROM
    hr.employees AS E
        INNER JOIN
    hr.job_history AS JH ON JH.EMPLOYEE_ID = E.EMPLOYEE_ID
ORDER BY `Nome completo` , `Anos trabalhados`;
