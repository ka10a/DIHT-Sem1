SELECT maker, AVG(screen)
FROM Product
INNER JOIN Laptop
ON Product.model = Laptop.model AND Product.type = 'Laptop'
GROUP BY maker
