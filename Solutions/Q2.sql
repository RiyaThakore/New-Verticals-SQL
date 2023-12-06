
SELECT COUNT(DISTINCT store_id)
, COUNT(CASE WHEN dashpass = 'Yes' THEN 1 ELSE NULL END) AS On_DashPass 
--, COUNT(CASE WHEN dashpass = 'No' THEN 1 ELSE NULL END) AS Not_On_DashPass
FROM BusinessData
WHERE 1=1
AND business_id = 890 --can change this to any business id 
