select * from movies order by release_year DESC;
select * from movies where release_year=2022 ;
select * from movies where release_year>2020 ;
select * from movies where release_year>2020 AND imdb_rating>8.0 ;
select * from movies where studio in ("marvel studios", "hombale films");
select title, release_year from movies 
   where title like '%thor%' order by release_year asc;
select * from movies where studio!="marvel studios";