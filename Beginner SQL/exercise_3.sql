-- select round(avg(imdb_rating),2) as imdb_avg from movies where studio="Marvel Studios";
/*select 
	studio,count(*) as count
from movies
group by studio
order by count desc */
/*SELECT 
	industry,count(*),avg(imdb_rating)
    from movies
    group by industry*/
select count(*) from movies where release_year between 2015 and 2022;
select min(release_year),max(release_year) from movies;
select release_year as Release_Year ,count(*) 
from movies group by release_year
order by Release_Year DESC;