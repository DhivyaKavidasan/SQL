--Grading set  <24/11/2017>
--submitted by <dhivya.kavidasan>


/* Provide a query that shows the # of invoices per country. HINT: GROUP BY */
select count(*),billingcountry from invoice group by billingcountry;