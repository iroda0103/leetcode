-- https://leetcode.com/problems/biggest-single-number/?envType=study-plan-v2&envId=top-sql-50
SELECT
    *
FROM
    (
        SELECT
            num,
            COUNT(num)
        FROM
            MyNumbers
        GROUP BY
            num
    )
WHERE
    COUNT = 1