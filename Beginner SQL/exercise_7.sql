-- select * from food_db.items;
-- select * from food_db.variants;
select concat(variant_name," ",name) as Dish_name,variant_price+price as Total_price
from food_db.variants
cross join food_db.items;