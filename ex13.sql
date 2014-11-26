ALTER TABLE person ADD COLUMN dead INTEGER;
ALTER TABLE person ADD COLUMN phone_number TEXT;
ALTER TABLE person ADD COLUMN salary FLOAT;
ALTER TABLE person ADD COLUMN dob DATETIME;
ALTER TABLE pet ADD COLUMN dob DATETIME;
ALTER TABLE person_pet ADD COLUMN purchased_on DATETIME;
ALTER TABLE pet ADD COLUMN parent INTEGER;

UPDATE person_pet SET purchased_on = '2000-01-15' WHERE pet_id = 0;
UPDATE person_pet SET purchased_on = '2010-03-24' WHERE pet_id = 1;
UPDATE person_pet SET purchased_on = '2009-08-01' WHERE pet_id = 2;

INSERT INTO person (id, first_name, last_name, age, dead, phone_number, salary, dob)
  VALUES
  (2, 'Tom', 'Smith', 58, 0, '281-374-0288', 78000, '1965-02-26'),
  (3, 'James', 'Amblin', 23, 0, '629-271-7139', 27308, '1991-06-10'),
  (4, 'Elise', 'Franklin', 87, 1, '291-731-0286', 38162, '1927-08-15'),
  (5, 'Cynthia', 'Plant', 8, 0, '629-196-3721', 0, '2007-12-21');

INSERT INTO pet (id, name, breed, age, dead, parent)
  VALUES
  (3, 'Sparkles', 'Unicorn', 203, 0, 0),
  (4, 'Jimbo', 'Terrier', 7, 0, NULL),
  (5, 'Archimedes', 'Parrot', 12, 1, NULL),
  (6, 'Einstein', 'Parrot', 4, 0, 5),
  (7, 'Timmy', 'Pitbull', 13, 1, NULL);

INSERT INTO person_pet (person_id, pet_id, purchased_on)
  VALUES
  (4, 3, '2003-08-17'),
  (5, 4, '2009-03-19'),
  (3, 5, '2002-04-02'),
  (3, 6, NULL),
  (2, 7, '2001-12-08');

SELECT first_name, name, purchased_on
  FROM person, pet, person_pet
  WHERE
  person.id = person_pet.person_id AND
  pet.id = person_pet.pet_id AND
  purchased_on > '2004-12-31';

SELECT p1.name child, p2.name parent
  FROM pet p1, pet p2
  WHERE
  p1.parent = p2.id;
