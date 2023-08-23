-- q3:return all the track names that have a song length longer than the average song length
-- return the name and miliseconds for eack track . order by the song length eith
-- the longest songs listed first?
select name, milliseconds
from track
where milliseconds >(
select avg(milliseconds) as avg_track_length 
from track )
order by milliseconds desc