select 
b.region, 
k.house, 
count(*) as wins 
from battle as b 
join king as k 
on 
(
  (k.k_no=b.attacker_king and b.attacker_outcome='win')
  or
  (k.k_no=b.defender_king and b.attacker_outcome='loss')
)
group by b.region,k.house
order by b.region,k.house;
