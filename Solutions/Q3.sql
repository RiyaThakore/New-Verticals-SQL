

SELECT
COUNT(DISTINCT CASE WHEN account_owner = 'Kevin' THEN store_id END) AS kevin_owned_stores
, COUNT(DISTINCT CASE WHEN account_owner = 'Carla' THEN store_id END) AS carla_owned_stores
FROM BusinessData b JOIN AccountOwner_Business_Mapping a ON b.business_id = a.business_id
