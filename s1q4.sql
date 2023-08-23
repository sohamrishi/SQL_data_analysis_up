-- q4:whic city has the best customers ?we would like to throw a promotional music fastival in 
-- in the city we made the  most money.
--  write a query that returnes one city that has the highest sum of invioces tolals.
--  returnn both the city name & sum all invoice totals.
 
 select  sum(total)   as invoice_total , billing_city
 from invoice
 group by billing_city
 order by invoice_total desc
 