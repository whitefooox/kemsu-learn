SELECT
    DEPT_ID,
    AVG(SALARY)
FROM
    S_EMP
GROUP BY
    DEPT_ID
HAVING
    AVG(SALARY) > (
        SELECT
            AVG(SALARY)
        FROM
            S_EMP
        WHERE
            DEPT_ID = 10
    );