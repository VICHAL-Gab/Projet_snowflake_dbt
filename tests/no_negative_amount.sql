SELECT 
    order_id,
    customer_id,
    product_id,
    amount,
    order_date
FROM {{ ref('fct_orders') }}
WHERE amount < 0