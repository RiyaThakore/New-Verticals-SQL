SELECT 
COUNT(DISTINCT Delivery_id) AS Delivery_cnt
, SUM(order_value) AS Revenue
FROM DeliveryData
WHERE 1=1
AND MONTH(date) = 8 --August month
AND store_id = 123 --Store ID = 123









