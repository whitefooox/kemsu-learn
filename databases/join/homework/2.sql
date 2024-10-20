-- Для каждого менеджера выдать название компаний, которые закреплены за ним.
-- Если таковых не имеется, вместо имени компании вывести null.
SELECT
    C.NAME,
    E.LAST_NAME,
    E.FIRST_NAME
FROM
    S_EMP      E
    LEFT JOIN S_CUSTOMER C
    ON E.ID = C.SALES_REP_ID;