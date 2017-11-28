--submitted by <dhivya.kavidasan> <28/11/2017>
--<grading_set>

/* Provide a query that shows the most purchased track of 2013.*/

select  t.name as trackname,il.trackid,max(numsold) from 
(select count(il.trackid) as numsold from  invoiceline il group by il.trackid),invoiceline il,invoice i, track t 
where i.invoicedate like'2013%' and i.invoiceid=il.invoiceid and il.trackid=t.trackid 
group by t.name;
