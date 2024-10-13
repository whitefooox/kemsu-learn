SELECT 
    e.last_name, e.first_name
FROM
    s_emp_copy e 
    JOIN s_title t 
        ON e.title = t.title;