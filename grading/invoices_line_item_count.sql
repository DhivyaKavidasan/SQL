--submitted by <dhivya.kavidasan> <28/11/2017>
--<grading_set>

 /* Provide a query that shows all Invoices but includes the # of invoice line items.*/

select count(il.invoicelineid) as no_of_invoicelineitems, i.* from invoice i, invoiceline il 
where i.invoiceid=il.invoiceid g
roup by i.invoiceid;
