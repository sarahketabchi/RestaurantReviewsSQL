INSERT INTO chefs
  (first_name, last_name)
  VALUES ('Sarah', 'Ketabchi');

INSERT INTO chefs
  (first_name, last_name, mentor)
  VALUES ('Jason', 'Wong', 1),
         ('Ned', 'Ruggeri', 2);

INSERT INTO restaurants
  (name, neighborhood, cuisine)
  VALUES ('in-n-out', 'Fishermans Wharf', 'Fast Food'),
         ('osha thai', 'SOMA', 'Thai'),
         ('Rotee', 'Haight', 'Indian'),
         ('Mehfil', 'SOMA', 'Indian');

INSERT INTO head_chef_tenures
  (start_date, end_date, restaurant_name, chef_id)
  VALUES ('2010-7-17', '2012-7-17', 'Mehfil', 1),
         ('2011-3-13', '2012-7-17', 'Mehfil', 2),
         ('2013-2-17', '2013-7-17', 'Rotee', 2);

INSERT INTO critics
  (screen_name)
  VALUES ('Seth Myers'),
         ('Bill Clinton');

INSERT INTO restaurant_reviews
  (critic_name, restaurant_name, review, score, reviewdate)
  VALUES ('Seth Myers', 'Rotee', 'This place rulz.  It is like love at the speed of life', 15, '2010-10-6'),
         ('Bill Clinton', 'in-n-out', 'Best burgers ever.  I like it with lots of buns', 17, '2008-5-17'),
         ('Bill Clinton', 'Rotee', 'This place is sorely lacking in buns', 3, '2013-5-17');


INSERT INTO restaurant_reviews
  (critic_name, restaurant_name, review, score, reviewdate)
  VALUES ('Seth Myers', 'Mehfil', 'YUM', 19, '2010-9-17'),
         ('Bill Clinton', 'Mehfil', 'Fantastic!', 18, '2010-12-5'),
         ('Seth Myers', 'Mehfil', 'Awful this time', 4, '2011-7-4');

INSERT INTO chefs
  (first_name, last_name, mentor)
  VALUES ('Sean', 'Kim', 1),
         ('Brittany', 'Yoon', 1);




