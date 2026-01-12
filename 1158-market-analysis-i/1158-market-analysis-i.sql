# Write your MySQL query statement below
select u.user_id AS buyer_id, u.join_date, 
COUNT(
    CASE 
      WHEN YEAR(o.order_date) = 2019 THEN 1
    END
  ) AS orders_in_2019
FROM Users u
left join Orders o
on u.user_id = o.buyer_id
group by u.user_id, u.join_date;