SELECT CONCAT(Name,'(',LEFT(Occupation,1),')') AS NAMES 
FROM OCCUPATIONS ORDER BY Name;

SELECT CONCAT("There are a total of ",count(*)," ",lower(Occupation),
"s.") AS ABC
from OCCUPATIONS GROUP BY Occupation order by count(*), Occupation;



