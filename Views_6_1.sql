SELECT name AS department_name, SUM(amount) AS sum FROM 
(SELECT mydb.Contract.amount AS amount, mydb.Department.name AS name FROM mydb.Department 
JOIN mydb.Emploee ON mydb.Department.id = mydb.Emploee.department_id 
JOIN mydb.Executor ON mydb.Emploee.id = mydb.Executor.tab_no
JOIN mydb.Contract ON mydb.Executor.contract_id = mydb.Contract.id) AS A 
GROUP BY name;