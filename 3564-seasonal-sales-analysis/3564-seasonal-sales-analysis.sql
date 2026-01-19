with season_sales as (
    select
        case
            when month(s.sale_date) in (12, 1, 2) then 'Winter'
            when month(s.sale_date) in (3, 4, 5) then 'Spring'
            when month(s.sale_date) in (6, 7, 8) then 'Summer'
            when month(s.sale_date) in (9, 10, 11) then 'Fall'
        end as season,
        p.category,
        sum(s.quantity) as total_quantity,
        sum(s.price * s.quantity) as total_revenue
    from sales s
    join products p
    on s.product_id = p.product_id
    group by season, p.category
),
ranked as (
    select
        season,
        category,
        total_quantity,
        total_revenue,
        row_number() over (
            partition by season
            order by total_quantity desc, total_revenue desc, category asc
        ) as rn
    from season_sales
)
select
    season,
    category,
    total_quantity,
    total_revenue
from ranked
where rn = 1
order by field(season, 'Fall', 'Spring', 'Summer', 'Winter');
