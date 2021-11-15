SELECT *  FROM (SELECT location, COUNT(location) AS `COUNT` FROM mydb.Customer 
GROUP BY location) AS M
ORDER BY `COUNT` DESC
 LIMIT 1;