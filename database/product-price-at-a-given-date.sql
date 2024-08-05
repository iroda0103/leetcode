-- https://leetcode.com/problems/product-price-at-a-given-date/?envType=study-plan-v2&envId=top-sql-50
Select
    p.product_id,
    coalesce(p_2.price, 10) price
from
    Products p
    left join (
        select
            p.product_id,
            coalesce(p.new_price, 10) as price
        from
            Products p
            left join (
                select
                    product_id,
                    max(change_date) max_date
                from
                    Products
                where
                    change_date :: date <= '2019-08-16' :: date
                group by
                    product_id
            ) p_2 on p_2.product_id = p.product_id
            and p.change_date = p_2.max_date
        where
            p.change_date = p_2.max_date
        order by
            p.product_id
    ) p_2 on p_2.product_id = p.product_id
group by
    p.product_id,
    p_2.price