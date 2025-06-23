{{ config(materialized='view') }}

SELECT 
    customer_id,
    CONCAT(first_name, ' ', last_name) AS customer_name, 
    email AS email_address,
    address AS shipping_address
FROM raw.customer
