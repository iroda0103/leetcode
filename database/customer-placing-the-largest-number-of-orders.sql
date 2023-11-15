-- https://leetcode.com/problems/customer-placing-the-largest-number-of-orders
SELECT
    customer_number
FROM
    Orders
GROUP BY
    customer_number
Order BY
    Count(customer_number) DESC
LIMIT
    1;