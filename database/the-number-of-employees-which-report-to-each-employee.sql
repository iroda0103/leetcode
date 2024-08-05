-- https://leetcode.com/problems/the-number-of-employees-which-report-to-each-employee/?envType=study-plan-v2&envId=top-sql-50
SELECT
    e_2.employee_id,
    e_2.name,
    count(e.employee_id) as reports_count,
    ROUND(avg(e.age)) as average_age
FROM
    Employees e
    left join employees e_2 on e_2.employee_id = e.reports_to
WHERE
    e.reports_to is not null
group by
    e_2.employee_id,
    e_2.name
order by
    e_2.employee_id