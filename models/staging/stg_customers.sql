-- models/staging/stg_orders.sql

with source as (

    select *
    from ECOMMERCE_DB.RAW.CUSTOMERS

),

renamed as (

    select
     -- CUSTOMERS
        customer_id,
        country,
        name,
    from source

)

select * from renamed