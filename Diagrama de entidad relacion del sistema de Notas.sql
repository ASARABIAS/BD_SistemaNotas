CREATE DATABASE IF NOT EXISTS notes;
USE notes;

CREATE TABLE users(
id INT NOT NULL AUTO_INCREMENT,
name VARCHAR(64) NOT NULL,
email VARCHAR(64) NOT NULL,
PRIMARY KEY (id)
)ENGINE InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO users VALUES 
(DEFAULT,"Abraham Sarabia","asarabias@unicesar.edu.co"),
(DEFAULT,"Jaider Sarabia","jaider@gmail.com"),
(DEFAULT,"Johan Sarabia","johan@gmail.com"),
(DEFAULT,"Shaira Sarabia","shaira@gmail.com"),
(DEFAULT,"Andrea Gomez","andrea@gmail.com"),
(DEFAULT,"Andres Santana","Andres@gmail.com"),
(DEFAULT,"Brayan Chinchilla","Brayan@gmail.com"),
(DEFAULT,"Erick Rincon","Erick@gmail.com"),
(DEFAULT,"Juan Parra","Juan@gmail.com"),
(DEFAULT,"Fabiana Villegas","Fabiana@gmail.com");

SELECT *
FROM users;

CREATE TABLE notes(
id INT NOT NULL AUTO_INCREMENT,
users_id INT NOT NULL,
title VARCHAR(100) NOT NULL,
creationDate DATETIME NOT NULL,
lastModifiedDate DATETIME NULL,
description TEXT NOT NULL,
PRIMARY KEY (id),
FOREIGN KEY (users_id) REFERENCES users (id)
)ENGINE InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO notes VALUES
(DEFAULT,1,"Mi rasca cielo Azul","2022-04-12",NULL,"Lorem ipsum dolor sit, amet consectetur adipisicing elit. Sed nesciunt assumenda ratione libero natus tempore illum laboriosam, corrupti, quia consequatur magnam totam iste ullam at sint exercitationem explicabo eveniet ipsa."),
(DEFAULT,1,"Nota 2","2022-04-10",NULL,"Lorem ipsum dolor sit, amet consectetur adipisicing elit. Sed nesciunt assumenda ratione libero natus tempore illum laboriosam, corrupti, quia consequatur magnam totam iste ullam at sint exercitationem explicabo eveniet ipsa."),
(DEFAULT,1,"Nota 3","2022-04-05",NULL,"Lorem ipsum dolor sit, amet consectetur adipisicing elit. Sed nesciunt assumenda ratione libero natus tempore illum laboriosam, corrupti, quia consequatur magnam totam iste ullam at sint exercitationem explicabo eveniet ipsa."),
(DEFAULT,2,"Nota 0","2022-03-10",NULL,"Lorem ipsum dolor sit, amet consectetur adipisicing elit. Sed nesciunt assumenda ratione libero natus tempore illum laboriosam, corrupti, quia consequatur magnam totam iste ullam at sint exercitationem explicabo eveniet ipsa."),
(DEFAULT,3,"para mia amada","2022-02-20","2022-04-13","Lorem ipsum dolor sit, amet consectetur adipisicing elit. Sed nesciunt assumenda ratione libero natus tempore illum laboriosam, corrupti, quia consequatur magnam totam iste ullam at sint exercitationem explicabo eveniet ipsa."),
(DEFAULT,5,"Nota 3","2022-04-05",NULL,"Lorem ipsum dolor sit, amet consectetur adipisicing elit. Sed nesciunt assumenda ratione libero natus tempore illum laboriosam, corrupti, quia consequatur magnam totam iste ullam at sint exercitationem explicabo eveniet ipsa."),
(DEFAULT,6,"lorem","2022-03-10",NULL,"Lorem ipsum dolor sit, amet consectetur adipisicing elit. Sed nesciunt assumenda ratione libero natus tempore illum laboriosam, corrupti, quia consequatur magnam totam iste ullam at sint exercitationem explicabo eveniet ipsa."),
(DEFAULT,9,"para mi","2022-02-20","2022-04-01","Lorem ipsum dolor sit, amet consectetur adipisicing elit. Sed nesciunt assumenda ratione libero natus tempore illum laboriosam, corrupti, quia consequatur magnam totam iste ullam at sint exercitationem explicabo eveniet ipsa."),
(DEFAULT,8,"lorem 2","2022-03-10",NULL,"Lorem ipsum dolor sit, amet consectetur adipisicing elit. Sed nesciunt assumenda ratione libero natus tempore illum laboriosam, corrupti, quia consequatur magnam totam iste ullam at sint exercitationem explicabo eveniet ipsa."),
(DEFAULT,7,"para el corazon","2022-02-20","2022-04-01","Lorem ipsum dolor sit, amet consectetur adipisicing elit. Sed nesciunt assumenda ratione libero natus tempore illum laboriosam, corrupti, quia consequatur magnam totam iste ullam at sint exercitationem explicabo eveniet ipsa.");

SELECT *
FROM notes;

CREATE TABLE category(
id INT NOT NULL AUTO_INCREMENT,
title VARCHAR(45) NOT NULL,
PRIMARY KEY (id)
)ENGINE InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO category VALUES
(DEFAULT,"Amor"),
(DEFAULT,"Deportes"),
(DEFAULT,"Educacion"),
(DEFAULT,"Descanzo"),
(DEFAULT,"Fiesta"),
(DEFAULT,"Amistad"),
(DEFAULT,"Halago"),
(DEFAULT,"Tecnologia"),
(DEFAULT,"Deberes"),
(DEFAULT,"Familiar");

SELECT *
FROM category;

CREATE TABLE notesCategory(
id INT NOT NULL AUTO_INCREMENT,
notes_id INT NOT NULL,
category_id INT NOT NULL,
PRIMARY KEY (id),
FOREIGN KEY (notes_id) REFERENCES notes (id),
FOREIGN KEY (category_id) REFERENCES category (id)
)ENGINE InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO notesCategory VALUES
(DEFAULT,1,8),
(DEFAULT,2,3),
(DEFAULT,3,3),
(DEFAULT,4,3),
(DEFAULT,3,1),
(DEFAULT,5,2),
(DEFAULT,6,2),
(DEFAULT,7,6),
(DEFAULT,8,7),
(DEFAULT,9,8),
(DEFAULT,10,10);

SELECT *
FROM notesCategory;



