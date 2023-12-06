
SELECT COUNT(DISTINCT store_id)
, COUNT(DISTINCT CASE WHEN dashpass = 'Yes' THEN store_id END) AS On_DashPass 
--, COUNT(CASE WHEN dashpass = 'No' THEN 1 ELSE NULL END) AS Not_On_DashPass
FROM BusinessData
WHERE 1=1
AND business_id = 890 --can change this to any business id 
