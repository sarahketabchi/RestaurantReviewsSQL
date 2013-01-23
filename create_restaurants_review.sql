CREATE TABLE chefs (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name VARCHAR(255),
  last_name VARCHAR(255),
  mentor INTEGER,
  FOREIGN KEY(mentor) REFERENCES chefs(id));

CREATE TABLE restaurants (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(255),
  neighborhood VARCHAR(255),
  cuisine VARCHAR(255));

CREATE TABLE head_chef_tenures (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  start_date DATE,
  end_date DATE,
  restaurant_name VARCHAR(255),
  chef_id INTEGER,
  FOREIGN KEY(restaurant_name) REFERENCES restaurants(name),
  FOREIGN KEY(chef_id) REFERENCES chefs(id)
  );

CREATE TABLE critics (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  screen_name VARCHAR(255)
  );

CREATE TABLE restaurant_reviews (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  critic_name VARCHAR(255),
  restaurant_name VARCHAR(255),
  review TEXT,
  score INTEGER,
  reviewdate DATE,
  FOREIGN KEY(critic_name) REFERENCES critics(screen_name),
  FOREIGN KEY(restaurant_name) REFERENCES restaurants(name));
