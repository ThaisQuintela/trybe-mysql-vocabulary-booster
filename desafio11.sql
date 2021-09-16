-- https://dev.mysql.com/doc/refman/5.7/en/group-by-handling.html
SELECT 
    t1.ContactName AS 'Nome',
    t1.Country AS 'País',
    COUNT(*) AS `Número de compatriotas`
FROM
    w3schools.customers AS t1,
    w3schools.customers AS t2
WHERE
    t1.Country = t2.Country
        AND t1.ContactName <> t2.ContactName
GROUP BY t1.CustomerID
HAVING `Número de compatriotas` > 0
ORDER BY Nome;
