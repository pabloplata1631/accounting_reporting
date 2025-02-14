INSERT INTO raw.soce (Type, Account, Balancetype, Account_key)
SELECT DISTINCT 
    Type, 
    Account, 
    Balancetype, 
    Account_key
FROM staging.soce;
