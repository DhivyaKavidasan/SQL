--submitted by <dhivya.kavidasan> <28/11/2017>
--<grading_set>

/* Provide a query that shows total sales made by each sales agent.*/

select e.employeeid, e.firstname,e.lastname, sum(i.total) as totalsales from employee e, customer c, invoice i 
where c.supportrepid=e.employeeid and i.customerid=c.customerid 
group by e.lastname;
