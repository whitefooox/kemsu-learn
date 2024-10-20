-- Для каждого заказчика, общая сумма заказа которого превышает 100 000,
-- выведите наименование заказчика, заказанные им товары, их количество.
-- Для соединения таблиц используйте JOIN.

SELECT
    C.NAME,
    P.NAME,
    I.QUANTITY
FROM
    S_CUSTOMER C
    JOIN S_ORD O
    ON C.ID = O.CUSTOMER_ID
    JOIN S_ITEM I
    ON I.ORD_ID = O.ID
    JOIN S_PRODUCT P
    ON P.ID = I.PRODUCT_ID
WHERE
    O.TOTAL > 100000;