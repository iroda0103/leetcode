-- https://leetcode.com/problems/rising-temperature
select
    w_1.id
from
    Weather w_1
    left join Weather w_2 on w_1.id - w_2.id = 1
where
    w_1.temperature > w_2.temperature;