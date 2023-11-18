-- https://leetcode.com/problems/nth-highest-salary
CREATE
OR REPLACE FUNCTION NthHighestSalary(N INT) RETURNS TABLE (Salary INT) AS $ $ BEGIN RETURN QUERY (
    select
        distinct e.salary
    from
        Employee e
    order by
        e.salary desc
    limit
        1 offset N -1
);

END;

$ $ LANGUAGE plpgsql;