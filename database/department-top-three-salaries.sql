-- https://leetcode.com/problems/department-top-three-salaries/?envType=study-plan-v2&envId=top-sql-50
select
    d.name as Department,
    e_2.name as Employee,
    e.salary as Salary
from
    Department d
    left join (
        Select
            departmentId,
            salary,
            ROW_NUMBER() over(
                PARTITION BY departmentId
                order by
                    salary desc
            ) as row_num
        from
            Employee
        group by
            departmentId,
            salary
    ) e on e.departmentId = d.id
    left join Employee e_2 on e_2.departmentId = d.id
    and e.salary = e_2.salary
where
    e.row_num < 4F
order by
    d.id,
    e.salary