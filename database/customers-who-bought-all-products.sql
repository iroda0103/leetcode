-- https://leetcode.com/problems/customers-who-bought-all-products/?envType=study-plan-v2&envId=top-sql-50
SELECT
    *
FROM
    (
        SELECT
            customer_id,
            count(product_key)
        FROM
            (
                SELECT
                    customer_id,
                    product_key
                FROM
                    Customer
                GROUP BY
                    customer_id,
                    product_key
            )
        GROUP BY
            customer_id
    )
WHERE
    count =(
        SELECT
            COUNT(product_key)
        FROM
            Product
    )