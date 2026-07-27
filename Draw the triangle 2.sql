with recursive cte as(
  select 1 as n
  union all
  select n+1
  from cte where n<20
)
select repeat("* ",n) from cte;
