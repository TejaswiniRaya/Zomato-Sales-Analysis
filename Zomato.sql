-- Food Table
#SELECT* FROM `food`;

-- Menu Table
#SELECT*FROM `menu`;

-- Orders Table
#SELECT* FROM `orders`;

-- Users Table
-- SELECT*FROM `users`;

-- Restaurant Table
#SELECT*FROM `restaurant`;

-- Top 10 cuisines by rating
#SElECT cuisine,Sum(rating) as total_rating FROM restaurant GROUP By cuisine ORDER BY total_rating DESC LIMIT 10;

-- Top 10 cities by rating
#SElECT city,Sum(rating) as total_rating FROM restaurant GROUP By city ORDER BY total_rating DESC LIMIT 10;

-- How many orders we are getting from each occupation of user
-- SELECT users.Occupation, COUNT(orders.user_id) AS order_count FROM users JOIN orders ON 
-- users.user_id = orders.user_id GROUP BY users.Occupation;

-- From which age group we are getting most the orders
-- SELECT users.Age, COUNT(orders.user_id) AS order_count FROM users JOIN orders ON 
-- users.user_id = orders.user_id GROUP BY users.Age;

-- How Many orders we getting from each gender
-- SELECT users.Gender, COUNT(orders.user_id) AS order_count FROM users JOIN orders ON 
-- users.user_id = orders.user_id GROUP BY users.Gender;

-- sales quanity,sales amount with respect to the restaurant;
-- SELECT restaurant.name, SUM(orders.sales_qty) AS total_sales_quantity,SUM(orders.sales_amount) AS total_sales FROM restaurant JOIN orders ON 
-- restaurant.id = orders.r_id GROUP BY restaurant.id, restaurant.name ORDER BY total_sales DESC;

-- sales quanity,sales amount with respect to the city;
-- SELECT restaurant.city, SUM(orders.sales_qty) AS total_sales_quantity,SUM(orders.sales_amount) AS total_sales FROM restaurant JOIN orders ON 
-- restaurant.id = orders.r_id GROUP BY restaurant.city ORDER BY total_sales DESC;

-- Average menu price for veg and non veg
-- SELECT food.veg_or_non_veg, AVG(menu.price) AS average_price FROM menu JOIN food ON menu.f_id = food.f_id
-- GROUP BY food.veg_or_non_veg;

-- Average menu price with respective to cuisine
-- SELECT restaurant.cuisine,AVG(menu.price) AS average_price FROM menu JOIN restaurant 
#ON menu.r_id=restaurant.id GROUP BY restaurant.cuisine;

-- Sales with respective to year
-- SELECT year(order_date),sum(sales_amount) AS total_sales FROM orders GROUP BY year(order_date) 
-- order by total_sales DESC;

-- Sales with respective to weekday
-- SELECT weekday(order_date),sum(sales_amount) AS total_sales FROM orders;
-- GROUP BY weekday(order_date) order by total_sales DESC;

-- Sales with respective to month
-- SELECT month(order_date),sum(sales_amount) AS total_sales FROM orders 
-- GROUP BY month(order_date) order by total_sales DESC;
SELECT SUM(orders.sales_amount) AS total_sales FROM restaurant JOIN orders ON 
restaurant.id = orders.r_id;
