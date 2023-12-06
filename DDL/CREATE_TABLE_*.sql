
-- Create DeliveryData table
CREATE TABLE DeliveryData (
    delivery_id INT PRIMARY KEY,
    date DATE,
    store_id INT,
    order_value DECIMAL(10, 2)
);

-- Create BusinessData table
CREATE TABLE BusinessData (
    business_id INT PRIMARY KEY,
    business_name VARCHAR(255),
    store_id INT,
    dashpass VARCHAR(3)
);

-- Create AccountOwner_Business_Mapping table
CREATE TABLE AccountOwner_Business_Mapping (
    account_owner VARCHAR(255),
    business_id INT,
    region_id INT,
    PRIMARY KEY (account_owner, business_id),
    FOREIGN KEY (business_id) REFERENCES BusinessData(business_id)
);

-- Create Region_Mapping table
CREATE TABLE Region_Mapping (
    region_id INT PRIMARY KEY,
    region_name VARCHAR(255)
);
