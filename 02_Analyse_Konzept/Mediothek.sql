-- Login-Tabelle
CREATE TABLE Login (
    UserID INT PRIMARY KEY,
    Username VARCHAR(255) NOT NULL,
    Password VARCHAR(255) NOT NULL,
    BZZ VARCHAR(255) NOT NULL
);

-- Mediothek-Tabelle
CREATE TABLE Mediothek (
    MediothekID INT PRIMARY KEY,
    MediothekName VARCHAR(255) NOT NULL
);

-- Medien-Tabelle
CREATE TABLE Medien (
    MediumID INT PRIMARY KEY,
    MediothekID INT,
    MedienTyp VARCHAR(50) NOT NULL,
    MedienTitel VARCHAR(255) NOT NULL,
    MedienLagerort VARCHAR(50) NOT NULL,
    MedienAutor VARCHAR(255) NOT NULL,
    FOREIGN KEY (MediothekID) REFERENCES Mediothek(MediothekID)
);

-- Beispiel-Datensätze für die Mediothek-Tabelle
INSERT INTO Mediothek (MediothekID, MediothekName) VALUES (1, 'Hauptmediothek');

-- Beispiel-Datensätze für die Medien-Tabelle
INSERT INTO Medien (MediumID, MediothekID, MedienTyp, MedienTitel, MedienLagerort, MedienAutor)
VALUES

-- Datensätze für die Medien-Tabelle
INSERT INTO Medien (MediumID, MediothekID, MedienTyp, MedienTitel, MedienLagerort, MedienAutor)
VALUES
(1, 1, 'DVD', 'Inception', 'Regal 1', 'Christopher Nolan'),
(2, 1, 'DVD', 'Pulp Fiction', 'Regal 3', 'Quentin Tarantino'),
(3, 1, 'Audio-CD', 'The Dark Side of the Moon', 'CD-Regal 2', 'Pink Floyd'),
(4, 1, 'Audio-Book', 'Becoming', 'Hörbuch-Regal 1', 'Michelle Obama'),
(5, 1, 'E-Book', '1Q84', 'E-Book-Regal', 'Haruki Murakami'),
(6, 1, 'Buch', 'Harry Potter and the Philosopher\'s Stone', 'Regal 4', 'J.K. Rowling'),
(7, 1, 'DVD', 'Spirited Away', 'Regal 1', 'Hayao Miyazaki'),
(8, 1, 'DVD', '2001: A Space Odyssey', 'Regal 3', 'Stanley Kubrick'),
(9, 1, 'Audio-CD', 'Lemonade', 'CD-Regal 2', 'Beyoncé'),
(10, 1, 'Audio-Book', '1984', 'Hörbuch-Regal 1', 'George Orwell'),
(11, 1, 'E-Book', 'Murder on the Orient Express', 'E-Book-Regal', 'Agatha Christie'),
(12, 1, 'Buch', 'The Shining', 'Regal 4', 'Stephen King'),
(13, 1, 'DVD', 'Psycho', 'Regal 1', 'Alfred Hitchcock'),
(14, 1, 'DVD', 'Goodfellas', 'Regal 3', 'Martin Scorsese'),
(15, 1, 'Audio-CD', 'Rumours', 'CD-Regal 2', 'Fleetwood Mac'),
(16, 1, 'Audio-Book', 'The Hobbit', 'Hörbuch-Regal 1', 'J.R.R. Tolkien'),
(17, 1, 'E-Book', 'Pride and Prejudice', 'E-Book-Regal', 'Jane Austen'),
(18, 1, 'Buch', 'One Hundred Years of Solitude', 'Regal 4', 'Gabriel Garcia Marquez'),
(19, 1, 'DVD', 'Jurassic Park', 'Regal 1', 'Steven Spielberg'),
(20, 1, 'DVD', 'Blade Runner', 'Regal 3', 'Ridley Scott'),
(21, 1, 'Audio-CD', '21', 'CD-Regal 2', 'Adele'),
(22, 1, 'Audio-Book', 'American Gods', 'Hörbuch-Regal 1', 'Neil Gaiman'),
(23, 1, 'E-Book', 'The Great Gatsby', 'E-Book-Regal', 'F. Scott Fitzgerald'),
(24, 1, 'Buch', 'Matilda', 'Regal 4', 'Roald Dahl'),
(25, 1, 'DVD', 'The Grand Budapest Hotel', 'Regal 1', 'Wes Anderson'),
(26, 1, 'DVD', 'Fargo', 'Regal 3', 'Coen Brothers'),
(27, 1, 'Audio-CD', 'Thriller', 'CD-Regal 2', 'Michael Jackson'),
(28, 1, 'Audio-Book', 'Fahrenheit 451', 'Hörbuch-Regal 1', 'Ray Bradbury'),
(29, 1, 'E-Book', 'The Da Vinci Code', 'E-Book-Regal', 'Dan Brown'),
(30, 1, 'Buch', 'The Old Man and the Sea', 'Regal 4', 'Ernest Hemingway');

-- Beispiel-Datensätze für die Login-Tabelle
INSERT INTO Login (UserID, Username, Password, BZZ) VALUES (1, 'DeinUsername', 'DeinPasswort', 'DeinBZZ');