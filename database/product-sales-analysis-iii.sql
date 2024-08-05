-- https://leetcode.com/problems/product-sales-analysis-iii/?envType=study-plan-v2&envId=top-sql-50

SELECT
    s.product_id,
    s_2.first_year,
    s.quantity,
    s.price
FROM
    Sales s
    LEFT JOIN (
        SELECT
            s.product_id,
            min(s.year) as first_year
        FROM
            Sales s
        group by
            s.product_id
        order by
            s.product_id
    ) s_2 on s_2.product_id = s.product_id
where
    s_2.first_year = s.year