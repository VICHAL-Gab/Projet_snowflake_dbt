-- models/intermediate/int_orders_enriched.sql

with orders as (

    select *
    from {{ ref('stg_orders') }}

),

customers as (

    select *
    from {{ ref('stg_customers') }}

),

products as (

    select *
    from {{ ref('stg_products') }}

),

joined as (

    select

        -- ORDERS
        o.order_id,
        o.customer_id as order_customer_id,
        o.product_id as order_product_id,
        o.amount,
        o.order_date,

        -- CUSTOMERS
        c.customer_id as customer_id,
        c.name as customer_name,
        c.country as customer_country,

        -- PRODUCTS
        p.product_id as product_id,
        p.name as product_name,
        p.category as product_category

    from orders o

    left join customers c
        on o.customer_id = c.customer_id

    left join products p
        on o.product_id = p.product_id

)

select * from joined