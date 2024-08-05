-- https://leetcode.com/problems/triangle-judgement/?envType=study-plan-v2&envId=top-sql-50
SELECT
    *,
    case
        when x + y > z
        and x + z > y
        and y + z > x then 'Yes'
        else 'No'
    end
FROM
    Triangle