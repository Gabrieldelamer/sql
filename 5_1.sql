SELECT * FROM Customer_avg_contract 
WHERE Avarage = (SELECT MIN(Avarage) FROM Customer_avg_contract) Limit 1000;


