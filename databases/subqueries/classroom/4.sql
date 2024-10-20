SELECT
    LAST_NAME,
    FIRST_NAME,
    TITLE
FROM
    S_EMP
WHERE
    DEPT_ID IN (
        SELECT
            ID
        FROM
            S_DEPT
        WHERE
            NAME = 'Finance'
            OR REGION_ID = 2
    );