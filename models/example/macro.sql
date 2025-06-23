select 
o.order_id,
p.product_id,
c.customer_id,
p.product_name,
c.customer_name,
o.quantity,
o.order_date,
{{get_date_breakdown('order_date')}} as date_extract 

from raw.orders o 

join {{ref("stg_customer")}} c on o.customer_id = c.customer_id

join raw.products p on o.product_id = p.product_id