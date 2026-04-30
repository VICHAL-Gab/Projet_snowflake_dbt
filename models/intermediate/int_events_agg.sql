-- models/intermediate/int_events_agg.sql

with customers as (

    select *
    from {{ ref('stg_customers') }}

),

events as (

    select *
    from {{ ref('stg_events') }}

),

joined as (

    select

        

        -- CUSTOMERS
        c.customer_id as customer_id,
        c.name as customer_name,
        c.country as customer_country,

         --EVENTS
        event_type,
        timestamp,
     
        

    from events e 

    left join customers c 
        on e.user_id = c.customer_id


)

select * from joined