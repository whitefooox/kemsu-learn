-- Выведите наименования товаров и количество заказчиков данного товара.
-- Для соединения таблиц используйте JOIN.

SELECT
    P.NAME,
    COUNT(*)
FROM
    S_PRODUCT  P
    JOIN S_ITEM I
    ON I.PRODUCT_ID = P.ID
    JOIN S_ORD O
    ON O.ID = I.ORD_ID
    JOIN S_CUSTOMER C
    ON C.ID = O.CUSTOMER_ID
GROUP BY
    P.NAME;