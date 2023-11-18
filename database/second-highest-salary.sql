-- https://leetcode.com/problems/second-highest-salary
SELECT
    COALESCE(
        (
            SELECT
                salary
            FROM
                Employee
            Group by
                salary
            ORDER BY
                salary DESC
            LIMIT
                1 OFFSET 1
        ),
        null
    ) AS SecondHighestSalary;