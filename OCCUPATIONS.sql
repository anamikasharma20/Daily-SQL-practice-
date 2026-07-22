SELECT 
max(case when Occupation="Doctor" then Name End) as Doctor,
max(case when Occupation="Professor" then Name End) as Professor,
max(case when Occupation="Singer" then Name End) as Singer,
max(case when Occupation="Actor" then Name End) as Actor
from 
(
  select 
  Name,Occupation,
  row_number() over 
  (Partition by Occupation
   order by Name)
   as rn 
   from OCCUPATIONS
)t
group by rn
order by rn;
   
   
