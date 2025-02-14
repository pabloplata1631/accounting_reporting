CREATE TABLE raw.coa (
    Account_Key INT PRIMARY KEY,       -- Unique account identifier
    Report VARCHAR(50) NOT NULL,       -- Example: "Balance Sheet"
    Class VARCHAR(50) NOT NULL,        -- Example: "Assets"
    SubClass VARCHAR(50) NOT NULL,     -- Example: "Assets"
    SubClass2 VARCHAR(50) NOT NULL,    -- Example: "Current Assets"
    Account VARCHAR(100) NOT NULL,     -- Example: "Cash & Cash Equivalents"
    SubAccount VARCHAR(100) NOT NULL   -- Example: "Cash at Bank"
);


INSERT INTO raw.coa (Account_Key, Report, Class, SubClass, SubClass2, Account, SubAccount)
SELECT 
    Account_Key, 
    Report, 
    Class, 
    SubClass, 
    SubClass2, 
    Account, 
    SubAccount
FROM staging.coa;