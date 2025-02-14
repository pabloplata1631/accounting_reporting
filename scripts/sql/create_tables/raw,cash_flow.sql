
--------
CREATE TABLE raw.cash_flow (
    Type VARCHAR(100) NOT NULL,        -- Example: "Cash flows from Operating Activities"
    Subtype VARCHAR(100) NOT NULL,     -- Example: "Profit before tax"
    Rank INT NOT NULL,                 -- Example: 1, 2 (Ensuring proper numerical ranking)
    Account VARCHAR(100) NOT NULL,     -- Example: "Sales"
    SubAccount VARCHAR(100) NOT NULL,  -- Example: "Sales Return"
    ValueType VARCHAR(50) NOT NULL,    -- Example: "Opening_balance", "All_FTP"
    Account_Key INT NOT NULL           -- Example: Unique identifier for accounts
);


INSERT INTO raw.cash_flow (Type, Subtype, Rank, Account, SubAccount, ValueType, Account_Key)
SELECT 
    Type, 
    Subtype, 
    Rank, 
    Account, 
    SubAccount, 
    ValueType, 
    Account_Key
FROM staging.cash_flow;

