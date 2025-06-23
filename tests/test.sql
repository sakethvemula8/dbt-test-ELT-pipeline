-- test to check if there are any models from today

select count(*) as num_of_orders_today
from {{ref('stg_orders')}}
where date(order_date) = current_date()
having count(*) >0