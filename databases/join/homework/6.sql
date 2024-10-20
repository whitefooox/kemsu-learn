-- Получите список номеров и названий всех регионов,
-- наименований отделов в регионе с указанием количества сотрудников в каждом отделе.
-- Для соединения таблиц используйте JOIN.

SELECT
    R.ID,
    R.NAME,
    D.NAME,
    COUNT(*)
FROM
    S_REGION R
    JOIN S_DEPT D
    ON R.ID = D.REGION_ID
    JOIN S_EMP E
    ON E.DEPT_ID = D.ID
GROUP BY
    R.ID,
    R.NAME,
    D.NAME;