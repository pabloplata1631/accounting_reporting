INSERT INTO staging.soce (Type, Account, Balancetype, Account_key)
SELECT DISTINCT 
    Type, 
    Account, 
    Balancetype, 
    Account_key
FROM raw.soce;
