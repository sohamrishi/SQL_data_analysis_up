-- q1: write query to return the email , first name last name & genre of all Rock music
-- listener . return your list ordered alphabeticcally by email starting with A

select distinct email, first_name, last_name
from customer
join invoice on customer.customer_id=invoice.customer_id
join invoice_line on invoice.invoice_id=invoice_line.invoice_id
Where track_id in(
	select track_id from track
	join genre on track.genre_id= genre.genre_id
	where genre.name like 'Rock'
	
)
order by email