{% snapshot customers_snapshot %}

{{
    config(
        target_schema='snapshots',
        unique_key='customer_id',
        strategy='check',
        check_cols=['name', 'country']
    )
}}

SELECT
    customer_id,
    name,
    country
FROM {{ ref('stg_customers') }}

{% endsnapshot %}