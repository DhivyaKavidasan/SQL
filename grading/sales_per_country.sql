--submitted by <dhivya.kavidasan> <28/11/2017>
--<grading_set>

 /* Provide a query that shows the total sales per country.*/
select i.billingcountry,sum(i.total) as total_sales from invoice i group by billingcountry;
