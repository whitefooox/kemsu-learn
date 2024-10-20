-- Вывести имя, фамилию и дату начала работы всех служащих, работающих в одном отделе с Magee

SELECT
    FIRST_NAME,
    LAST_NAME,
    START_DATE
FROM
    S_EMP
WHERE
    DEPT_ID = (
        SELECT
            DEPT_ID
        FROM
            S_EMP
        WHERE
            LAST_NAME = 'Magee'
    );