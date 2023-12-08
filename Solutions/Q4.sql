
-- Monthly sales for stores managed by Kevin and Carla (both) with cumulative total
-- Grouping by stores as well to give store-wise sales
-- For all stores managed by Kevin and Carla and not specific store wise values, can certainly do that by introducing another case-when in the CTE

WITH MonthlySales AS (
    SELECT
        strftime('%m-%Y', date) AS month_year,
        store_id,
        SUM(order_value) AS monthly_sales
    FROM
        DeliveryData
    WHERE
        store_id IN (
            SELECT DISTINCT store_id
            FROM BusinessData b JOIN AccountOwner_Business_Mapping a ON b.business_id = a.business_id
            WHERE account_owner IN ('Kevin', 'Carla')
        )
    GROUP BY
        month_year, store_id
    ORDER BY
        month_year, store_id
)
SELECT
    month_year,
    store_id,
    monthly_sales,
    SUM(monthly_sales) OVER (PARTITION BY store_id ORDER BY month_year) AS cumulative_sales
FROM
    MonthlySales
ORDER BY
    store_id, month_year;
