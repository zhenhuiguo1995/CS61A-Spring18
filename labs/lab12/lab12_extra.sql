.read lab12.sql

-- Q5
CREATE TABLE greatstudents AS
  SELECT students.date, students.color, students.pet, students.number, fa17students.number from students, fa17students
  where students.date = fa17students.date and students.color = fa17students.color and students.pet = fa17students.pet and students.time > fa17students.time;

-- Q6
CREATE TABLE sevens AS
  SELECT students.seven from students, checkboxes where
  students.time = checkboxes.time and students.number = 7 and checkboxes.'7' = 'True';

-- Q7
CREATE TABLE fa17favnum AS
  SELECT number, COUNT(*) AS count from fa17students GROUP BY number order by count DESC limit 1;


CREATE TABLE fa17favpets AS
  SELECT pet, COUNT(*) AS count from fa17students GROUP BY pet order by count DESC limit 10;

CREATE TABLE sp18favpets AS
  SELECT pet, COUNT(*) AS count from students GROUP BY pet order by count DESC limit 10;

CREATE TABLE sp18dog AS
  SELECT pet, COUNT(*) from students where pet = 'dog' GROUP BY pet;


CREATE TABLE sp18alldogs AS
  SELECT 'dog', COUNT(*) from students where pet like '%dog%';


CREATE TABLE obedienceimages AS
  SELECT seven, denero, COUNT(*) from students where seven = '7' GROUP BY denero;

-- Q8
CREATE TABLE smallest_int_count AS
  SELECT smallest, COUNT(*) AS count from students GROUP BY smallest order by smallest ASC;
