-- select *,year(curdate())-birth_year as age from actors;
-- select * ,if(currency = "USD",revenue*77,revenue)as revenue_inr from financials;
-- select distinct unit from financials;
/*select * ,
CASE 
	When unit="Billions" then revenue*1000
    when unit='Thousands' then revenue/1000
     when unit='Millions' then revenue
END as revenue_million
from financials
order by revenue_million DESC;*/
   select 
        *, 
    (revenue-budget) as profit, 
    (revenue-budget)*100/budget as profit_pct 
   from financials
   