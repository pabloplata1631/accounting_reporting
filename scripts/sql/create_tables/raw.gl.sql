

  CREATE TABLE raw.gl (
    EntryNo DECIMAL(10,1) ,  -- Ensuring only one decimal place
    Date DATE NOT NULL,                 -- Convert from integer to date format
    Territory_key INT NOT NULL,         -- Foreign key reference to Territories
    Account_key INT NOT NULL,           -- Foreign key reference to Accounts
    Details VARCHAR(100) NOT NULL,      -- Transaction details
    Amount DECIMAL(18,2) NOT NULL       -- Ensuring two decimal places for financial data
);


INSERT INTO raw.gl (EntryNo, Date, Territory_key, Account_key, Details, Amount)
SELECT 
    ROUND(EntryNo, 1) AS EntryNo,        -- Ensuring one decimal place
    DATEADD(DAY, Date - 43000, '2000-01-01') AS Date,  -- Convert integer date
    Territory_key, 
    Account_key, 
    Details, 
    CAST(Amount AS DECIMAL(18,2)) AS Amount -- Ensuring two decimal places
FROM staging.gl;