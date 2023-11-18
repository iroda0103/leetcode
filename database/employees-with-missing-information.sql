-- https://leetcode.com/problems/employees-with-missing-information
SELECT
    e.employee_id
from
    Employees e
    LEFT JOIN Salaries s on e.employee_id = s.employee_id
WHERE
    s.employee_id is null
UNION
SELECT
    s.employee_id
from
    Salaries s
    LEFT JOIN Employees e on e.employee_id = s.employee_id
WHERE
    e.employee_id is null
ORDER BY
    employee_id;