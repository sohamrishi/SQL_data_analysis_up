-- q2: we want to find out the most popular music genre for each country .
-- we determine the most popular gener as the gener with the highest
-- amount of purchase write a query that returns each country along with the top
-- genre. for countries where the maximum number of purchase is shared return all genres.
with popular_genre as (
 select count(invoice_line.quantity) as purchases, customer.country, genre.name,genre.genre_id,
	row_number() over ( partition by customer.country order by count (invoice_line.quantity) desc)as RowNo
	from invoice_line
	join invoice on invoice.invoice_id= invoice_line.invoice_id
	join customer on customer.customer_id=invoice.customer_id
	join track on track.track_id=invoice_line.track_id
	join genre on genre.genre_id= track.genre_id
	group by 2,3,4
	order by 2 asc, 1 desc
)
select * from popular_genre where RowNo <=1