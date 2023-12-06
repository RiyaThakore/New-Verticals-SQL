-- Monthly sales for stores managed by Kevin and Carla with cumulative total
WITH MonthlySales AS (
    SELECT
        DATE_FORMAT(date, '%Y-%m') AS month,
        store_id,
        SUM(order_value) AS monthly_sales
    FROM
        DeliveryData
    WHERE
        store_id IN (
            SELECT DISTINCT store_id
            FROM AccountOwner_Business_Mapping
            WHERE account_owner IN ('Kevin', 'Carla')
        )
    GROUP BY
        month, store_id
    ORDER BY
        month, store_id
)
SELECT
    month,
    store_id,
    monthly_sales,
    SUM(monthly_sales) OVER (PARTITION BY store_id ORDER BY month) AS cumulative_sales
FROM
    MonthlySales
ORDER BY
    store_id, month;
