
select l.book_id, l.title, l.author, l.genre, l.publication_year, l.total_copies as current_borrowers
from library_books l
join borrowing_records b
on l.book_id = b.book_id
group by b.book_id
having (l.total_copies - count(case when b.return_date is null then 1 end)) = 0
order by current_borrowers desc, l.title asc