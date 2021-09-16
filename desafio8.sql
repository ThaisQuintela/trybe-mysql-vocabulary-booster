SELECT 
    C.ContactName AS `Nome de contato`,
    S.ShipperName AS `Empresa que fez o envio`,
    O.OrderDate AS `Data do pedido`
FROM
    w3schools.customers AS C
        INNER JOIN
    orders AS O ON O.CustomerID = C.CustomerID
        INNER JOIN
    shippers AS S ON O.ShipperID = S.ShipperID
WHERE
    S.ShipperID BETWEEN 1 AND 2
ORDER BY `Nome de contato` , `Empresa que fez o envio` , `Data do pedido`;
