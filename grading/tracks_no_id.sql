--submitted by <dhivya.kavidasan> <28/11/2017>
--<grading_set>

/*Provide a query that shows all the Tracks, but displays no IDs. The result should include the Album name, Media type and Genre.*/

select t.name as trackname,a.title as album_name, m.name as media_type, g.name as genre_name 
from album a, mediatype m, genre g, track t 
where a.albumid=t.albumid and m.MediaTypeId=t.MediaTypeId and t.GenreId=g.GenreId;
