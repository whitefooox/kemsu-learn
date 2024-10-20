-- Получить фамилию и имя тех работников,
-- у кого должность указана без ошибок (Создать таблицу S_EMP_COPY, используя скрипт.
-- Создать таблицу s_title).

SELECT
    E.LAST_NAME,
    E.FIRST_NAME
FROM
    S_EMP_COPY E
    JOIN S_TITLE T
    ON E.TITLE = T.TITLE;