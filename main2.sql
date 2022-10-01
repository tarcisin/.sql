CREATE TABLE students (
  matricula INTEGER auto_increment PRIMARY KEY,
  nome TEXT NOT NULL,
  genero TEXT NOT NULL,
  idade INTEGER NOT NULL,
  serie TEXT NOT NULL,
  nivel TEXT NOT NULL
);
-- insert some values
INSERT INTO students (nome, genero, idade, serie, nivel)
VALUES  ("Antonio","Masculino",18,"3º","Ensino Médio"),
        ("Pammella","Feminino",19,"3º","Ensino Médio"),
        ("Eritrela","Feminino",14,"3º","Ensino Médio"),
        ("Luna","Feminino",18,"3º","Ensino Médio"),
        ("Joaquim","Masculino",17,"2º","Ensino Médio"),
        ("Regina","Feminino",17,"2º","Ensino Médio"),
        ("Harald","Masculino",16,"2º","Ensino Médio"),
        ("Phillyp","Masculino",15,"2º","Ensino Médio"),
        ("Reinaldo","Masculino",16,"1º","Ensino Médio"),
        ("Garibalda","Feminino",15,"1º","Ensino Médio"),
        ("Juvenal","Masculino",15,"1º","Ensino Médio"),
        ("Brigite","Feminino",14,"1º","Ensino Médio"),
        ("Estella","Feminino",13,"9º","Ensino Fundamental"),
        ("Sammuel","Masculino",12,"9º","Ensino Fundamental"),
        ("Debolla","Feminino",11,"9º","Ensino Fundamental"),
        ("Natanael","Masculino",16,"9º","Ensino Fundamental"),
        ("Joaquina","Feminino",14,"9º","Ensino Fundamental"),
        ("Francineida","Feminino",15,"9º","Ensino Fundamental");

-- create a table
CREATE TABLE students (
  matricula INTEGER auto_increment PRIMARY KEY,
  nome TEXT NOT NULL,
  genero TEXT NOT NULL,
  idade INTEGER NOT NULL,
  serie TEXT NOT NULL,
  nivel TEXT NOT NULL
);
-- insert some values
INSERT INTO students (nome, genero, idade, serie, nivel)
VALUES  ("Antonio","Masculino",18,"3º","Ensino Médio"),
        ("Pammella","Feminino",19,"3º","Ensino Médio"),
        ("Eritrela","Feminino",14,"3º","Ensino Médio"),
        ("Luna","Feminino",18,"3º","Ensino Médio"),
        ("Joaquim","Masculino",17,"2º","Ensino Médio"),
        ("Regina","Feminino",17,"2º","Ensino Médio"),
        ("Harald","Masculino",16,"2º","Ensino Médio"),
        ("Phillyp","Masculino",15,"2º","Ensino Médio"),
        ("Reinaldo","Masculino",16,"1º","Ensino Médio"),
        ("Garibalda","Feminino",15,"1º","Ensino Médio"),
        ("Juvenal","Masculino",15,"1º","Ensino Médio"),
        ("Brigite","Feminino",14,"1º","Ensino Médio"),
        ("Estella","Feminino",13,"9º","Ensino Fundamental"),
        ("Sammuel","Masculino",12,"9º","Ensino Fundamental"),
        ("Debolla","Feminino",11,"9º","Ensino Fundamental"),
        ("Natanael","Masculino",16,"9º","Ensino Fundamental"),
        ("Joaquina","Feminino",14,"9º","Ensino Fundamental"),
        ("Francineida","Feminino",15,"9º","Ensino Fundamental");

SELECT nome FROM students;
SELECT nome, idade FROM students;
SELECT nome, idade, serie, nivel FROM students;

SELECT DISTINCT idade FROM students;
SELECT DISTINCT serie FROM students;
SELECT DISTINCT nivel FROM students;

SELECT nome FROM students WHERE genero = "Masculino";
SELECT nome FROM students WHERE matricula < 10;
SELECT nome FROM students WHERE genero = "Feminino" AND idade > 12;
SELECT nome FROM students WHERE serie = "1º" OR "2º";

SELECT * FROM students WHERE nivel LIKE "Ensino medio";
SELECT * FROM students WHERE nivel LIKE "ensino medio" AND serie = 3 AND idade >= 15;
SELECT * FROM students WHERE matricula > 10 AND serie = 10;
SELECT * FROM students WHERE serie = 3 OR serie = 1 ORDER BY nome;

SELECT nome FROM students WHERE serie = "1º" ORDER BY nome;
SELECT nome, serie FROM students WHERE serie LIKE 3 OR serie LIKE 2 ORDER BY serie ASC, nome ASC;
SELECT * FROM students ORDER BY nivel DESC, serie DESC, nome;

SELECT nome FROM students WHERE serie LIKE "3%" ORDER BY idade desc LIMIT 3;
SELECT nome FROM students WHERE serie LIKE "2%" ORDER BY idade LIMIT 3;

 (SELECT nome FROM students WHERE serie LIKE "9º" ORDER BY idade LIMIT 1)
 UNION
 (SELECT nome FROM students WHERE serie LIKE "1º" ORDER BY idade LIMIT 1)
 UNION
 (SELECT nome FROM students WHERE serie LIKE "2º" ORDER BY idade LIMIT 1)
 UNION
 (SELECT nome FROM students WHERE serie LIKE "3º" ORDER BY idade LIMIT 1);

ALTER TABLE students
ADD bimestre1 FLOAT; 

ALTER TABLE students
ADD bimestre2 FLOAT; 

ALTER TABLE students
ADD bimestre3 FLOAT; 

ALTER TABLE students
ADD bimestre4 FLOAT; 

ALTER TABLE students
ADD mediaf FLOAT; 

INSERT INTO students (nome, genero, idade, serie, nivel, bimestre1, bimestre2, bimestre3, bimestre4)
VALUES  ("Antonio","Masculino",18,"3º","Ensino Médio", 1,9,18,5),
        ("Pammella","Feminino",19,"3º","Ensino Médio", 2,8,19,4),
        ("Eritrela","Feminino",14,"3º","Ensino Médio", 3,7,14,3),
        ("Luna","Feminino",18,"3º","Ensino Médio", 4,6,18,2),
        ("Joaquim","Masculino",17,"2º","Ensino Médio", 5,5,17,1),
        ("Regina","Feminino",17,"2º","Ensino Médio", 6,4,17,0),
        ("Harald","Masculino",16,"2º","Ensino Médio", 7,3,16,9),
        ("Phillyp","Masculino",15,"2º","Ensino Médio", 8,2,15,8),
        ("Reinaldo","Masculino",16,"1º","Ensino Médio", 9,1,16,7),
        ("Garibalda","Feminino",15,"1º","Ensino Médio", 1,9,18,6),
        ("Juvenal","Masculino",15,"1º","Ensino Médio", 2,8,19,5),
        ("Brigite","Feminino",14,"1º","Ensino Médio", 3,7,14,4),
        ("Estella","Feminino",13,"9º","Ensino Fundamental", 4,6,18,3),
        ("Sammuel","Masculino",12,"9º","Ensino Fundamental", 5,5,17,2),
        ("Debolla","Feminino",11,"9º","Ensino Fundamental", 6,4,17,1),
        ("Natanael","Masculino",16,"9º","Ensino Fundamental", 7,3,16,0),
        ("Joaquina","Feminino",14,"9º","Ensino Fundamental", 8,2,15,9),
        ("Francineida","Feminino",15,"9º","Ensino Fundamental", 9,1,16,8);

UPDATE students
SET mediaf = (bimestre1 + bimestre2 + bimestre3 + bimestre4) / 4 
WHERE matricula BETWEEN 1 and 18;

SELECT nome FROM students WHERE matricula % 2 = 0;
