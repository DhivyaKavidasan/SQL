--submitted by <dhivya.kavidasan> <28/11/2017>
--<grading_set>

 /* Provide a query that shows the most purchased Media Type.*/

SELECT MediaType, MAX(Num_Purchased) FROM 
( SELECT m.Name AS MediaType, COUNT(il.trackId) AS Num_Purchased FROM InvoiceLine il 
INNER JOIN MediaType m ON m.MediaTypeId = t.MediaTypeId 
INNER JOIN Track t ON t.TrackId = il.TrackId 
GROUP BY m.Name )