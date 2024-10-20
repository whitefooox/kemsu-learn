-- Вывести наименование и краткое описание товаров,
-- которые не были ни разу заказаны в сентябре 1992 года.\

SELECT
    NAME,
    SHORT_DESC
FROM
    S_PRODUCT
WHERE
    ID NOT IN (
        SELECT
            ID
        FROM
            S_ORD     O
            JOIN S_ITEM I
            ON O.ID = I.ORD_ID
            JOIN S_PRODUCT P
            ON P.ID = I.PRODUCT_ID
        WHERE
            TO_CHAR(O.DATE_ORDERED, 'mm.yyyy') = '09.1992'
    );