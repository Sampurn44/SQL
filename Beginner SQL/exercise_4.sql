select release_year , count(*) as movie_count
from movies 
group by release_year
having movie_count >2
order by movie_count desc;
-- FROM -> WHERE -> GROUP BY -> HAVING ->ORDER BY
SELECT count(distinct imdb_rating), STDDEV(imdb_rating) from movies