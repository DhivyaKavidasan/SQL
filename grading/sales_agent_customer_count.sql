--submitted by <dhivya.kavidasan> <28/11/2017>
--<grading_set>

/* Provide a query that shows the count of customers assigned to each sales agent.*/

select  e.firstname as salesagent, count(c.customerid) as num_of_customers from customer c,employee e 
where e.employeeid=c.supportrepid 
group by c.supportrepid;
