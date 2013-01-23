--find restaurants in a neighborhood
SELECT * FROM restaurants WHERE neighborhood = 'SOMA';

--find reviews from a critic
SELECT * FROM restaurant_reviews WHERE critic_name = 'Bill Clinton';
--average score of reviews from a critic
SELECT AVG(score) FROM restaurant_reviews WHERE critic_name = 'Bill Clinton';

--list reviews for a given restaurant
SELECT * from restaurant_reviews WHERE restaurant_name = 'Rotee';
--average score of reviews for a given restaurant
SELECT AVG(score) FROM restaurant_reviews WHERE restaurant_name = 'Mehfil';

--find the average review of a chef
SELECT AVG(score) 
FROM restaurant_reviews
JOIN head_chef_tenures ON restaurant_reviews.restaurant_name = head_chef_tenures.restaurant_name
JOIN chefs ON chefs.id = head_chef_tenures.chef_id
WHERE chefs.id = 1 AND restaurant_reviews.reviewdate BETWEEN head_chef_tenures.start_date AND head_chef_tenures.end_date;
-- NR: It turns out, the BETWEEN isn't really needed, because the intersection of
-- tenures, restaurant reviews, and retaurants already excludes reviews that are
-- out of the time frame

--find the number of proteges for a chef
SELECT count(*) FROM chefs where mentor = 1;
--or
SELECT count(*) FROM chefs c1 JOIN chefs c2 ON c1.mentor = c2.id
where c2.first_name='Sarah';

-- Generally: These are really good queries. Good job!

