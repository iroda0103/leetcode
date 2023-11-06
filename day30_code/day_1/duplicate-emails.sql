-- https://leetcode.com/problems/duplicate-emails
SELECT
    Email as email
FROM
    Person
GROUP BY
    email
HAVING
    COUNT(email) > 1;