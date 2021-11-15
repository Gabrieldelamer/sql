CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `department_contracts_avg` AS
    SELECT 
        `e`.`name` AS `name`, SUM(`e`.`amount`) AS `sum`
    FROM
        (SELECT 
            `contract`.`amount` AS `amount`,
                `department`.`name` AS `name`
        FROM
            (((`department`
        JOIN `emploee` ON ((`department`.`id` = `emploee`.`department_id`)))
        JOIN `executor` ON ((`emploee`.`id` = `executor`.`tab_no`)))
        JOIN `contract` ON ((`executor`.`contract_id` = `contract`.`id`)))) `e`
    GROUP BY `e`.`name`