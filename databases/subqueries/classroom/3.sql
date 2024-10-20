SELECT
    LAST_NAME,
    TITLE,
    SALARY
FROM
    S_EMP
WHERE
    SALARY < (
        SELECT
            AVG(SALARY)
        FROM
            S_EMP
    );