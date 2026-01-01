# Write your MySQL query statement below
select U.name as name, sum(amount) as Balance
from Users as U 
join Transactions as T
on U.account=T.account
group by U.name
having sum(amount)>10000
