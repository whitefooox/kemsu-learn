SELECT
    e.last_name, e.first_name,
    c.name
FROM
    s_emp e 
    LEFT JOIN s_customer c 
        ON e.id = c.sales_rep_id;