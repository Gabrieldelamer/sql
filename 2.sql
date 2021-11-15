SELECT AVG(mydb.Contract.amount) AS amount FROM mydb.Emploee
JOIN mydb.Executor ON mydb.Emploee.id = mydb.Executor.tab_no
JOIN mydb.Contract ON mydb.Executor.contract_id = mydb.Contract.id
WHERE mydb.Emploee.name = 'Ivan Ivanov';

