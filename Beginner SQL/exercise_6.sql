/*select 
	m.movie_id,title,budget,revenue,currency,unit
from movies m
left join financials f
on m.movie_id=f.movie_id

UNION

select 
	f.movie_id,title,budget,revenue,currency,unit
from movies m
right join financials f
on m.movie_id=f.movie_id;*/

/*select 
	movie_id,title,budget,revenue,currency,unit
from movies m
right join financials f
Using (movie_id);
*/


/*select title,languages.name 
from movies
join languages
on movies.language_id=languages.language_id
where languages.name="Telugu"*/

select languages.name,count(movies.movie_id) as no_movies 
from languages
left join movies
on movies.language_id=languages.language_id
GROUP BY languages.language_id
	ORDER BY no_movies DESC;