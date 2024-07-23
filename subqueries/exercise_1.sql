/*select * from movies where imdb_rating in (
(select max(imdb_rating) from movies) , (select min(imdb_rating) from movies))*/
/*select * from
(select name,year(curdate())-birth_year as age from actors) as actor_age
  where age  between 70 and 85;*/
  #1. Select all the movies with minimum and maximum release_year. Note that there
 #can be more than one movie in min and a max year hence output rows can be more than 2
 /*select * from movies where release_year in (
 (select min(release_year) from movies),(select max(release_year) from movies))
 order by release_year desc*/
 -- select * from movies where imdb_rating> (select avg(imdb_rating) from movies)
 # Select all Hollywood movies released after the year 2000 that made more than 500 million $
 # profit or more profit. Note that all Hollywood movies have millions as a unit hence you 
 # don't need to do the unit conversion. Also, 
 # you can write this query without CTE as well but you should try to write this using CTE only
 with profit as (
 select movie_id,revenue-budget as Profit from financials 
 ),
 hollywood_table as (
 select movie_id,title,release_year from movies where industry='hollywood' and release_year>2000)
 select profit.Profit as profits, hollywood_table.title as Name,hollywood_table.release_year as Year
 from profit 
 join hollywood_table
 on profit.movie_id = hollywood_table.movie_id
 where profit>500;
 
 
 
 
 
 
 