--Grading set  <24/11/2017>
--submitted by <dhivya.kavidasan>


/*Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for each Invoice. HINT: GROUP BY */
select invoiceid,count(*) from invoiceline group by invoiceid;