SELECT * FROM (SELECT COUNT(amount) AS `count`, amount FROM mydb.Contract
GROUP BY amount
ORDER BY amount asc)  AS Q WHERE `count` >= 2 ;