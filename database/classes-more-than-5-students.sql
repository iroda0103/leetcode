-- https://leetcode.com/problems/classes-more-than-5-students/?envType=study-plan-v2&envId=top-sql-50

SELECT
    class
FROM
    (
        SELECT
            class,
            count(student)
        FROM
            Courses
        GROUP BY
            class
    )
where
    count > 4