-- Вывести номер, имя и фамилию всех служащих, заработная плата которых выше средней.

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
    );