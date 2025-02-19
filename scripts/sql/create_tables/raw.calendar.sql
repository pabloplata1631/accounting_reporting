CREATE TABLE staging.calendar (
    Date DATE NOT NULL,      -- Converted from serial number
    Year INT NOT NULL,               -- Extracted from Column1
    Quarter VARCHAR(10) NOT NULL,    -- Example: 'Qtr 1'
    MonthName VARCHAR(10) NOT NULL,  -- Example: 'Jan'
    DayName VARCHAR(10) NOT NULL     -- Example: 'Wed'
);


INSERT INTO raw.calendar (Date, Year, Quarter, MonthName, DayName)
SELECT 
    CAST(DATEADD(DAY, Date, '1899-12-30') AS DATE) AS Date,  -- Convert serial date
    Column1 AS Year,              -- Year remains unchanged
    Quarter,                      -- Keep as-is
    Month,                        -- Keep as-is
    Day                           -- Keep as-is
FROM raw.calendar;

