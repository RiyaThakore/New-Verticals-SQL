-- Insert statements for DeliveryData table
INSERT INTO DeliveryData (delivery_id, date, store_id, order_value)
VALUES
    (1, '2019-07-10', 123, 12.7),
    (2, '2019-06-05', 345, 30.9),
    (3, '2019-01-01', 123, 55.4),
    (4, '2019-01-01', 456, 22.2);

-- Insert statements for BusinessData table
INSERT INTO BusinessData (business_id, business_name, store_id, dashpass)
VALUES
    (890, 'Taco Shop', 123, 'Yes'),
    (891, 'Fruit Shop', 345, 'Yes'),
    (456, 'Tea Shop', 678, 'No'),
    (745, 'Ice Cream Shop', 987, 'No');

-- Insert statements for AccountOwner_Business_Mapping table
INSERT INTO AccountOwner_Business_Mapping (account_owner, business_id, region_id)
VALUES
    ('Kevin', 888, 1),
    ('Matt', 4546, 2),
    ('Kevin', 890, 4),
    ('Carla', 1045, 5);

-- Insert statements for Region_Mapping table
INSERT INTO Region_Mapping (region_id, region_name)
VALUES
    (1, 'Midwest'),
    (2, 'Tri-State'),
    (3, 'Southeast'),
    (4, 'SoCal');
