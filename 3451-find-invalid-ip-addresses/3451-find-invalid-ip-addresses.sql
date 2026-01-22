# Write your MySQL query statement below
select ip,
    count(*) as invalid_count
from logs
where ip not like '%.%.%.%'
or ip like '%.%.%.%.%'
or ip like '0%.%'
or ip like '%.0%.%'
or ip like '%.%.0%.%'
or ip like '%.%.%.0%'
or
    cast(substring_index(ip, '.', 1) as unsigned) > 255
    or cast(substring_index(substring_index(ip, '.', 2), '.', -1) as unsigned) > 255
    or cast(substring_index(substring_index(ip, '.', 3), '.', -1) as unsigned) > 255
    or cast(substring_index(ip, '.', -1) as unsigned) > 255
group by ip
order by invalid_count desc, ip desc;
