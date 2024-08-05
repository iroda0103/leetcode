-- https://leetcode.com/problems/consecutive-numbers/?envType=study-plan-v2&envId=top-sql-50
SELECT
    DISTINCT(l.num) as ConsecutiveNums
FROM
    Logs l
    left join Logs l_1 on l_1.id = l.id + 1
    left join Logs l_2 on l_2.id = l.id + 2
where
    l.num = l_1.num
    and l.num = l_2.num