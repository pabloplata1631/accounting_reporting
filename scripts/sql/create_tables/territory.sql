INSERT INTO staging.territory (Territory_key, Country, Region)
SELECT 
    Territory_key, 
    Country, 
    Region
FROM raw.territory;
