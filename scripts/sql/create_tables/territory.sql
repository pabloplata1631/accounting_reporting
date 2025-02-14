INSERT INTO raw.territory (Territory_key, Country, Region)
SELECT 
    Territory_key, 
    Country, 
    Region
FROM staging.territory;
