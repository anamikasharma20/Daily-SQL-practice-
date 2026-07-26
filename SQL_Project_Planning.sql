SELECT Start_Date, min(End_Date)
from 
(Select Start_Date from Projects where Start_Date not in 
(select End_Date from Projects))a,
(Select End_Date from Projects where End_Date not in 
(select Start_Date from Projects))b
where Start_Date<End_Date
group by Start_Date
order by min(End_Date)-Start_Date asc, Start_Date;
