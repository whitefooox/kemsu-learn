SELECT
    LAST_NAME,
    TITLE
FROM
    S_EMP
WHERE
    TITLE = (
        SELECT
            TITLE
        FROM
            S_EMP
        WHERE
            LAST_NAME = 'Smith'
    );