-- Q2:which countries have the most invoices?
select COUNT(*) as b,billing_country from invoice
group by billing_country
order by b desc
