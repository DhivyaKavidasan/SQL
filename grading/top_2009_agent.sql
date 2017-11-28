--submitted by <dhivya.kavidasan> <28/11/2017>
--<grading_set>

/* Which sales agent made the most in sales in 2009?*/

select salesagent, max(totalsales) from 
(select e.firstname as salesagent, sum(i.total) as totalsales from employee e, customer c, invoice i 
where c.supportrepid=e.employeeid and i.customerid=c.customerid and i.invoicedate like '2009%' 
group by e.employeeid);
