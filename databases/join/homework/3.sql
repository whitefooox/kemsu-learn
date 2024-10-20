-- Вывести список регионов, в которых нет компаний, и компаний, для которых не указан регион.
SELECT
    R.NAME,
    C.NAME
FROM
    S_REGION   R
    FULL JOIN S_CUSTOMER C
    ON R.ID = C.REGION_ID
WHERE
    R.ID IS NULL
    OR C.REGION_ID IS NULL;