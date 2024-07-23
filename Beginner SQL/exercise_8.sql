SELECT 
    	    m.movie_id, title revenue, currency, unit, 
            CASE 
                WHEN unit="Thousands" THEN ROUND((revenue-budget)/1000,2)
        	WHEN unit="Billions" THEN ROUND((revenue-budget)*1000,2)
                ELSE revenue-budget
            END as profit_mln
	FROM movies m
	JOIN financials f 
	ON m.movie_id=f.movie_id
	WHERE m.industry="Bollywood"
	ORDER BY profit_mln DESC;





