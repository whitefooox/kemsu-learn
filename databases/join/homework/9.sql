-- Составить таблицу умножения чисел от 1 до 10.
-- Подсказка: создайте таблицу NUMBERS для хранения чисел от 1 до 10, используйте JOIN.

SELECT
    N1.DIGIT,
    N2.DIGIT,
    N1.DIGIT * N2.DIGIT
FROM
    NUMBERS N1
    CROSS JOIN NUMBERS N2;