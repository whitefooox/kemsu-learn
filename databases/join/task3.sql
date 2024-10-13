(SELECT
    r.name
FROM
    s_region r 
    LEFT JOIN s_customer c
        ON r.id = c.region_id
WHERE r.id IS NULL)
UNION ALL
(SELECT
    c.name
FROM
    s_region r
    RIGHT JOIN s_customer c
        ON r.id = c.region_id
WHERE c.region_id IS NULL);