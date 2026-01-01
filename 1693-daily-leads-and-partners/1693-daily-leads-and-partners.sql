# Write your MySQL query statement below
select distinct date_id , (select distinct make_name) as make_name, (select count(distinct lead_id)) as unique_leads, (select count(distinct partner_id)) as unique_partners from DailySales 
group by date_id, make_name
