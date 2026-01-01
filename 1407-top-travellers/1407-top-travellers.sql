# Write your MySQL query statement below
select U.name, COALESCE(sum(R.distance),0) as travelled_distance  
from Users as U
left join Rides as R
on U.id=R.user_id
group by U.id, U.name
order by travelled_distance Desc, U.name Asc

