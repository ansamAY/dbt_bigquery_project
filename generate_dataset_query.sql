CREATE OR REPLACE TABLE your_project.your_dataset.raw_sales AS
WITH raw_data AS (
  SELECT
    GENERATE_UUID() AS order_id,
    ARRAY<STRING>['Laptop', 'Phone', 'Tablet', 'Headphones', 'Monitor'][OFFSET(CAST(FLOOR(RAND() * 5) AS INT64))] AS product_name,
    CAST(FLOOR(RAND() * 7000 + 100) AS INT64) AS amount,
    ARRAY<STRING>['USA', 'UK', 'Canada', 'Germany', 'France'][OFFSET(CAST(FLOOR(RAND() * 5) AS INT64))] AS country,
    DATE_ADD(DATE '2024-01-01', INTERVAL CAST(FLOOR(RAND() * 365) AS INT64) DAY) AS order_date,
    CAST(FLOOR(RAND() * 100) AS INT64) AS discount
  FROM UNNEST(GENERATE_ARRAY(1, 1000000))  -- Generates 1 Million Rows
)
SELECT * FROM raw_data;
