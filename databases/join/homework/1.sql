-- Для каждой компании выдать фамилию и имя ответственного за нее менеджера.
-- Если у компании нет менеджера, то вместо фамилии и имени указать null.
SELECT
    C.NAME,
    E.LAST_NAME,
    E.FIRST_NAME
FROM
    S_EMP      E
    RIGHT JOIN S_CUSTOMER C
    ON E.ID = C.SALES_REP_ID;