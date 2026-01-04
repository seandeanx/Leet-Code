# Write your MySQL query statement below
select id, 
    max(case when Department.month = 'Jan' then revenue end) as Jan_Revenue,
    max(case when Department.month = 'Feb' then revenue end) as Feb_Revenue,
    max(case when Department.month = 'Mar' then revenue end) as Mar_Revenue,
    max(case when Department.month = 'Apr' then revenue end) as Apr_Revenue,
    max(case when Department.month = 'May' then revenue end) as May_Revenue,
    max(case when Department.month = 'Jun' then revenue end) as Jun_Revenue,
    max(case when Department.month = 'Jul' then revenue end) as Jul_Revenue,
    max(case when Department.month = 'Aug' then revenue end) as Aug_Revenue,
    max(case when Department.month = 'Sep' then revenue end) as Sep_Revenue,
    max(case when Department.month = 'Oct' then revenue end) as Oct_Revenue,
    max(case when Department.month = 'Nov' then revenue end) as Nov_Revenue,
    max(case when Department.month = 'Dec' then revenue end) as Dec_Revenue 
from Department
group by id