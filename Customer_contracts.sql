CREATE VIEW `Customer_contracts` AS SELECT `customer_name`, `amount` FROM mydb.Customer 
JOIN mydb.Contract ON mydb.Customer.id = mydb.Contract.customer_id
ORDER BY customer_name;
