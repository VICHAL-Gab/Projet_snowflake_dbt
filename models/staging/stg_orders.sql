-- models/staging/stg_orders.sql

with source as (

    select *
    from ECOMMERCE_DB.RAW.ORDERS

),

renamed as (

    select
      
        -- ORDERS
        order_id,
        customer_id,
        product_id,
        amount,
        order_date,

    from source

)

select * from renamed