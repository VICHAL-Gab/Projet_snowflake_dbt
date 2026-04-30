-- models/staging/stg_orders.sql

with source as (

    select *
    from ECOMMERCE_DB.RAW.EVENTS

),

renamed as (

    select
   -- EVENTS
        event_type,
        timestamp,
        User_id,
        
        
    from source

)

select * from renamed