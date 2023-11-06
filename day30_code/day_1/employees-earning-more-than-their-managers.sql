-- https://leetcode.com/problems/employees-earning-more-than-their-managers
-- SELF JOIN dan foydalanilgan
SELECT
    A.name as Employee
from
    Employee A,
    Employee B
WHERE
    A.managerId = B.id
    and A.salary > B.salary;