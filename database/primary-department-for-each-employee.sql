-- https://leetcode.com/problems/primary-department-for-each-employee/?envType=study-plan-v2&envId=top-sql-50
select
    *
from
    (
        select
            e.employee_id,
            case
                when e.count = 1 then e_2.department_id
                else e_3.department_id
            end as department_id
        from
            (
                select
                    employee_id,
                    count(department_id)
                from
                    Employee
                group by
                    employee_id
            ) e
            left join Employee e_2 on e.employee_id = e_2.employee_id
            left join Employee e_3 on e.employee_id = e_3.employee_id
            and e_3.primary_flag = 'Y'
    )
group by
    employee_id,
    department_id
where
    department_id is not null
order by
    employee_id