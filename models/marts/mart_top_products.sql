-- chiffre d'affaire par pays


with orders_customers as (

    select *
    from ECOMMERCE_DB.INTERMEDIATE.INT_ORDERS_ENRICHED

),

count_products as (
    select
    product_name,
    count(product_name) as nb_product

    from orders_customers
    group by product_name
)
select * from count_products
order by nb_product DESC