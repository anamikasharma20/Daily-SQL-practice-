with long_cte AS (
    select CITY,lenGTH(CITY) AS CL FROM STATION ORDER BY 
    CL desc limit 1
),
short_cte as (
    select CITY, LENGTH(CITY) AS CL FROM STATION ORDER BY CL,CITY LIMIT 1
)
SELECT * FROM short_cte 
UNION ALL
SELECT * FROM long_cte;

