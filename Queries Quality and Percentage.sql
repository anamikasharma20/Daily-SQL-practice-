with q as (
    select query_name,count(rating) as n 
    from Queries where rating<3 group by query_name
)
select 
a.query_name as query_name,
round((sum(a.rating/a.position))/count(a.query_name),2) as quality,
round((coalesce(q.n,0)/count(a.query_name))*100,2) as poor_query_percentage 
from q right Join 
Queries as a
on a.query_name=q.query_name
group by a.query_name
;
