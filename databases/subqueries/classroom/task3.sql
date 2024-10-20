-- Вывести номер, имя и фамилию служащих,
-- которые получают заработную плату выше средней и работающих в одном отделе с сотрудниками,
-- фамилии которых содержат букву “t”.

SELECT
    ID,
    FIRST_NAME,
    LAST_NAME
FROM
    S_EMP
WHERE
    SALARY > (
        SELECT
            AVG(SALARY)
        FROM
            S_EMP
    )
    AND DEPT_ID IN (
        SELECT
            DEPT_ID
        FROM
            S_EMP
        WHERE
            LOWER(LAST_NAME) LIKE '%t%'
    )