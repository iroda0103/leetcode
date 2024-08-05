-- https://leetcode.com/problems/immediate-food-delivery-ii


--Method-1
select
    ROUND(
        COUNT(d.customer_id) * 100.0 /(
            select
                COUNT(DISTINCT(customer_id))
            from
                Delivery
        ),
        2
    ) as immediate_percentage
from
    Delivery d
    inner join (
        select
            customer_id,
            MIN(order_date) min_date
        from
            Delivery
        group by
            customer_id
    ) l on d.customer_id = l.customer_id
    and d.order_date = l.min_date
where
    d.order_date = d.customer_pref_delivery_date




-- Method-2

SELECT
    ROUND(
        SUM(
            CASE 
                WHEN order_date = customer_pref_delivery_date 
                THEN 1 
                ELSE 0 
            END) * 100.0 / COUNT(*)
        ,2)
    AS immediate_percentage
FROM delivery
WHERE (customer_id, order_date) IN 
    (SELECT customer_id, MIN(order_date) 
     FROM delivery 
     GROUP BY customer_id)

     