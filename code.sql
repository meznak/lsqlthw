DROP TABLE person;
DROP TABLE pet;
DROP TABLE car;
DROP TABLE person_pet;
DROP TABLE person_car;

CREATE TABLE person (
  id INTEGER PRIMARY KEY,
  first_name TEXT,
  last_name TEXT,
  age INTEGER
);

CREATE TABLE pet (
  id INTEGER PRIMARY KEY,
  name TEXT,
  breed TEXT,
  age INTEGER,
  dead INTEGER
);

CREATE TABLE car (
  id INTEGER PRIMARY KEY,
  make TEXT,
  model TEXT,
  year INTEGER
);

CREATE TABLE person_pet (
  person_id INTEGER,
  pet_id INTEGER
);

CREATE TABLE person_car (
  person_id INTEGER
  car_id INTEGER
);
INSERT INTO person (id, first_name, last_name, age)
  VALUES
  (0, "Zed", "Shaw", 37),
  (1, "Nate", "P", 32);

INSERT INTO pet (id, name, breed, age, dead)
  VALUES
  (0, "Fluffy", "Unicorn", 1000, 0),
  (1, "Gigantor", "Robot", 1, 1),
  (2, "Dorian", "Cat", 5, 0);

INSERT INTO person_pet (person_id, pet_id)
  VALUES
  (0,0),
  (0,1),
  (1,2);
