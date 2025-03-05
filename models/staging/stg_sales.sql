{{ config(materialized='view') }}

SELECT
    order_id,
    product_name,
    amount,
    country,
    order_date,
    {{ dynamic_partition('order_date', 'MONTH') }}  -- Dynamic partitioning
FROM `local-pointer-452713-p9.sales_dataset.raw_sales`