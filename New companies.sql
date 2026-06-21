SELECT c.company_code, c.Founder,
  count(distinct l_m.lead_manager_code) as Total_leads,
  count(distinct s_m.senior_manager_code) as Total_senior,
  count(distinct m.manager_code) as Total_manager,
  count(distinct e.employee_code) as Totale_employee
from company as c
join Lead_Manager as l_m 
    on c.company_code=l_m.company_code
join Senior_Manager as s_m 
     on l_m.company_Code=s_m.company_code
join Manager as m
     on s_m.company_code=m.company_code
join Employee as e
    on m.company_Code=e.company_Code

order by company_code;                  
