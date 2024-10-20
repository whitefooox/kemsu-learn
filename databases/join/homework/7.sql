-- Выведите наименование каждого клиента, номер заказа и количество позиций в заказе.
-- Для соединения таблиц используйте JOIN.

SELECT
    C.NAME,
    O.ID,
    COUNT(*)
FROM
    S_CUSTOMER C
    JOIN S_ORD O
    ON C.ID = O.CUSTOMER_ID
    JOIN S_ITEM I
    ON I.ORD_ID = O.ID
GROUP BY
    C.NAME,
    O.ID;