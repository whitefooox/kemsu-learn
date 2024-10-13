SELECT 
    c.name,
    e.last_name, e.first_name
FROM
    s_emp e 
    RIGHT JOIN s_customer c
        ON e.id = c.sales_rep_id;