-- https://leetcode.com/problems/customers-who-never-order
SELECT
    Customers.name as Customers
from
    Customers
    LEFT JOIN Orders on Customers.id = Orders.customerId
WHERE
    customerId IS NULL;