# Write your MySQL query statement below
(select u.name as results 
from Users u
join MovieRating r
on r.user_id=u.user_id
group by u.user_id,u.name
order by count(*) desc, u.name 
limit 1)

Union all

(select m.title as results 
from Movies m
join MovieRating r
on m.movie_id = r.movie_id
where date_format(r.created_at, '%Y-%m') = '2020-02' 
group by m.movie_id,m.title
ORDER BY AVG(r.rating) DESC, m.title ASC
LIMIT 1)





