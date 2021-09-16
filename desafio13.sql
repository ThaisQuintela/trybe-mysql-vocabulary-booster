SELECT 
    P.ProductName AS 'Produto', P.Price AS 'Preço'
FROM
    w3schools.products AS P
        INNER JOIN
    order_details AS OD ON OD.ProductID = P.ProductID
GROUP BY P.ProductID
HAVING MAX(OD.Quantity) > 80
ORDER BY Produto;
