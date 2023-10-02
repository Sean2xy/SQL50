# Write your MySQL query statement below

Select round(count(distinct a1.player_id) / (select count(distinct player_id) from Activity), 2) as fraction
from Activity a1 inner join (
    select player_id, min(event_date) as min_date
    from Activity
    group by player_id
) a2 on a1.player_id=a2.player_id and DATEDIFF(a1.event_date, a2.min_date) = 1;
