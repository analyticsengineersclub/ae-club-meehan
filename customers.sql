select
    c.id as customer_id,
    max(c.name) as name,
    max(c.email) as email,
    min(o.created_at) as first_order_at,
    count(*) as number_of_orders

from `analytics-engineers-club.coffee_shop.customers` c
    join `analytics-engineers-club.coffee_shop.orders` o on c.id = o.customer_id

group by c.id
order by first_order_at
limit 5