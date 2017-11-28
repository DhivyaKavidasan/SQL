--submitted by <dhivya.kavidasan> <28/11/2017>
--<grading_set>

/* Provide a query that shows the top 5 most purchased tracks over all.*/

select t.name as trackname,il.trackid,count(il.trackid) as numsold from  invoiceline il, track t 
where il.trackid=t.trackid group by t.name 
order by numsold desc limit 5;
