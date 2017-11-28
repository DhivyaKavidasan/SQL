--submitted by <dhivya.kavidasan> <28/11/2017>
--<grading_set>

/* Which country's customers spent the most?*/

select country, max(total_sales) from (select i.billingcountry as country,sum(i.total) as total_sales from invoice i 
group by billingcountry);
