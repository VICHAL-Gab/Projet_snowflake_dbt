-- chiffre d'affaire par pays


with orders_customers as (

    select *
    from ECOMMERCE_DB.INTERMEDIATE.INT_ORDERS_ENRICHED

),

revenue as (
    select
    customer_country as country_name,
    sum({{ convert_amount('amount')}}) as total_amount

    from orders_customers
    group by customer_country
)
select * from revenue