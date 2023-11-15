-- https://leetcode.com/problems/find-customer-referee
SELECT
    name
FROM
    Customer
WHERE
    referee_id is null
    or referee_id != 2;