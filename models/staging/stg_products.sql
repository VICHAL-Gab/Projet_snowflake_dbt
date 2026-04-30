-- models/staging/stg_orders.sql

with source as (

    select *
    from ECOMMERCE_DB.RAW.PRODUCTS

),

renamed as (

    select
   -- PRODUCTS
        product_id,
        name,
        category,
        
    from source

)

select * from renamed