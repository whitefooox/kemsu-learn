SELECT 
    c.name AS "Customer",
    p.name AS "Product",
    i.quantity AS "Quantity"
FROM
    s_customer c 
        JOIN s_ord o 
            ON c.id = o.customer_id
        JOIN s_item i 
            ON o.id = i.ord_id 
        JOIN s_product p 
            ON p.id = i.product_id
WHERE o.total > 100000;
        