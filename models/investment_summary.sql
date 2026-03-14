SELECT
    investor_id,
    SUM(amount) AS total_investment
FROM {{ ref('stg_transactions') }}
GROUP BY investor_id