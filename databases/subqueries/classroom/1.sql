SELECT
    LAST_NAME
FROM
    S_EMP
WHERE
    DEPT_ID = (
        SELECT
            DEPT_ID
        FROM
            S_EMP
        WHERE
            LAST_NAME = 'Biri'
    );