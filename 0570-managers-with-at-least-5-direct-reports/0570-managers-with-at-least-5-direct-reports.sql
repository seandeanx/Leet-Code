# Write your MySQL query statement below
select e.name as name 
from Employee d
join Employee e
on e.Id=d.managerId
group by e.name,e.id
having count(d.id) >= 5
