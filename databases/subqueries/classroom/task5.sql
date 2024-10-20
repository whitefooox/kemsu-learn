-- Вывести наименование и кредитный рейтинг всех клиентов,
-- чьими торговыми представителем является Andre Dumas.
SELECT
    NAME,
    CREDIT_RATING
FROM
    S_CUSTOMER
WHERE
    SALES_REP_ID = (
        SELECT
            ID
        FROM
            S_EMP
        WHERE
            FIRST_NAME = 'Dumas'
            AND LAST_NAME = 'Andre'
    );