--submitted by <dhivya.kavidasan> <28/11/2017>
--<grading_set>

/* Provide a query that shows the top 3 best selling artists.*/

select  a.name as artist,count(il.trackid) as numsold from  invoiceline il, track t,artist a,album al 
where il.trackid=t.trackid and al.albumid= t.albumid and al.artistid=a.artistid 
group by a.name 
order by numsold desc limit 3;
