SELECT mydb.Emploee.name AS emploee_name, mydb.Executor.contract_id FROM mydb.Department 
JOIN mydb.Emploee ON mydb.Department.id = mydb.Emploee.department_id 
JOIN mydb.Executor ON mydb.Emploee.id = mydb.Executor.tab_no 
where mydb.Department.name = 'Logistic';