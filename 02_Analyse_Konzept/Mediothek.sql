create user 'admin'@'localhost' identified by 'hello';
select Host,User from mysql.user;
create database if not exists Mediothek;

GRANT all privileges ON Mediothek.* TO 'admin'@'localhost';
show grants for 'admin'@'localhost';

use Mediothek;

-- Login-Tabelle
CREATE TABLE Login (
    UserID INT PRIMARY KEY AUTO_INCREMENT,
    Username VARCHAR(255) NOT NULL,
    Password VARCHAR(255) NOT NULL,
    BZZ VARCHAR(255) NOT NULL
);

drop table Login;

-- Mediothek-Tabelle
CREATE TABLE Mediothek (
    MediothekID INT PRIMARY KEY AUTO_INCREMENT,
    MediothekName VARCHAR(255) NOT NULL
);

drop table Mediothek;

-- Medien-Tabelle
CREATE TABLE Medien (
    MediumID INT PRIMARY KEY AUTO_INCREMENT,
    MediothekID INT,
    MedienTyp VARCHAR(50) NOT NULL,
    MedienTitel VARCHAR(255) NOT NULL,
    MedienLagerort VARCHAR(50) NOT NULL,
    MedienAutor VARCHAR(255) NOT NULL,
    FOREIGN KEY (MediothekID) REFERENCES Mediothek(MediothekID)
);

drop table Medien;

-- Beispiel-Datensätze für die Mediothek-Tabelle
INSERT INTO Mediothek (MediothekID, MediothekName) VALUES (1, 'Hauptmediothek');

-- Datensätze für die Medien-Tabelle
INSERT INTO Medien (MediumID, MediothekID, MedienTyp, MedienTitel, MedienLagerort, MedienAutor)
VALUES
(0, 1, 'DVD', 'Inception', 'Regal 1', 'Christopher Nolan'),
(0, 1, 'DVD', 'Pulp Fiction', 'Regal 3', 'Quentin Tarantino'),
(0, 1, 'Audio-CD', 'The Dark Side of the Moon', 'CD-Regal 2', 'Pink Floyd'),
(0, 1, 'Audio-Book', 'Becoming', 'Hörbuch-Regal 1', 'Michelle Obama'),
(0, 1, 'E-Book', '1Q84', 'E-Book-Regal', 'Haruki Murakami'),
(0, 1, 'Buch', 'Harry Potter and the Philosopher\'s Stone', 'Regal 4', 'J.K. Rowling'),
(0, 1, 'DVD', 'Spirited Away', 'Regal 1', 'Hayao Miyazaki'),
(0, 1, 'DVD', '2001: A Space Odyssey', 'Regal 3', 'Stanley Kubrick'),
(0, 1, 'Audio-CD', 'Lemonade', 'CD-Regal 2', 'Beyoncé'),
(0, 1, 'Audio-Book', '1984', 'Hörbuch-Regal 1', 'George Orwell'),
(0, 1, 'E-Book', 'Murder on the Orient Express', 'E-Book-Regal', 'Agatha Christie'),
(0, 1, 'Buch', 'The Shining', 'Regal 4', 'Stephen King'),
(0, 1, 'DVD', 'Psycho', 'Regal 1', 'Alfred Hitchcock'),
(0, 1, 'DVD', 'Goodfellas', 'Regal 3', 'Martin Scorsese'),
(0, 1, 'Audio-CD', 'Rumours', 'CD-Regal 2', 'Fleetwood Mac'),
(0, 1, 'Audio-Book', 'The Hobbit', 'Hörbuch-Regal 1', 'J.R.R. Tolkien'),
(0, 1, 'E-Book', 'Pride and Prejudice', 'E-Book-Regal', 'Jane Austen'),
(0, 1, 'Buch', 'One Hundred Years of Solitude', 'Regal 4', 'Gabriel Garcia Marquez'),
(0, 1, 'DVD', 'Jurassic Park', 'Regal 1', 'Steven Spielberg'),
(0, 1, 'DVD', 'Blade Runner', 'Regal 3', 'Ridley Scott'),
(0, 1, 'Audio-CD', '21', 'CD-Regal 2', 'Adele'),
(0, 1, 'Audio-Book', 'American Gods', 'Hörbuch-Regal 1', 'Neil Gaiman'),
(0, 1, 'E-Book', 'The Great Gatsby', 'E-Book-Regal', 'F. Scott Fitzgerald'),
(0, 1, 'Buch', 'Matilda', 'Regal 4', 'Roald Dahl'),
(0, 1, 'DVD', 'The Grand Budapest Hotel', 'Regal 1', 'Wes Anderson'),
(0, 1, 'DVD', 'Fargo', 'Regal 3', 'Coen Brothers'),
(0, 1, 'Audio-CD', 'Thriller', 'CD-Regal 2', 'Michael Jackson'),
(0, 1, 'Audio-Book', 'Fahrenheit 451', 'Hörbuch-Regal 1', 'Ray Bradbury'),
(0, 1, 'E-Book', 'The Da Vinci Code', 'E-Book-Regal', 'Dan Brown'),
(0, 1, 'Buch', 'The Old Man and the Sea', 'Regal 4', 'Ernest Hemingway');

-- Beispiel-Datensätze für die Login-Tabelle
INSERT INTO Login (UserID, Username, Password, BZZ) VALUES (1, 'DeinUsername', 'DeinPasswort', 'DeinBZZ');

-- Beispiele für Selcets

select * from Login;
select * from medien;
select * from mediothek;

SELECT *
FROM Login
INNER JOIN Medien ON Login.UserID = Medien.MediothekID;

SELECT *
FROM Medien
LEFT JOIN Mediothek ON Medien.MediothekID = Mediothek.MediothekID;

SELECT *
FROM Login
INNER JOIN Medien ON Login.UserID = Medien.MediothekID
INNER JOIN Mediothek ON Medien.MediothekID = Mediothek.MediothekID;

-- Selects für die Filter Funktionen

SELECT *
FROM Medien
WHERE MedienTyp = 'DVD'
ORDER BY MedienTitel;

SELECT *
FROM Medien
WHERE MedienTyp = 'Audio-CD'
ORDER BY MedienTitel;

SELECT *
FROM Medien
WHERE MedienTyp = 'E-Book'
ORDER BY MedienTitel;

SELECT *
FROM Medien
WHERE MedienTyp = 'Buch'
ORDER BY MedienTitel;

SELECT *
FROM Medien
WHERE MedienTyp = 'Audio-Book'
ORDER BY MedienTitel;

-- Update Beispiele

UPDATE Medien
SET MedienTitel = 'Inception 2.0'
WHERE MediumID = 1;

-- Delete Beispiele

-- Alle Bücher löschen
DELETE FROM Medien
WHERE MedienTyp = 'Buch';

-- Alle Medien löschen von einem Bestimmten Autor
DELETE FROM Medien
WHERE MedienAutor = 'Christopher Nolan';