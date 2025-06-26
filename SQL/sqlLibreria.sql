CREATE DATABASE LibreriaMega;

USE LibreriaMega;

CREATE TABLE Generos (
		GeneroID INT PRIMARY KEY IDENTITY,
		Nombre VARCHAR(50) NOT NULL,
		EsFavorito BIT NOT NULL DEFAULT 0
	);

CREATE TABLE Libros (
	LibroID INT PRIMARY KEY IDENTITY,
	Titulo VARCHAR(255) NOT NULL,
	Autor VARCHAR(255) NOT NULL,
	GeneroID INT NOT NULL,
	Calificacion INT NULL,
	Leido BIT NOT NULL DEFAULT 0,
	PorLeer BIT NOT NULL DEFAULT 0,
	Recomendado BIT NOT NULL DEFAULT 0,
	Prestado BIT NOT NULL DEFAULT 0,
	PrestadoA VARCHAR(100) NULL,
	FechaPrestamo DATETIME NULL,
	FOREIGN KEY (GeneroID) REFERENCES Generos(GeneroID)
);

INSERT INTO Libros(Titulo, Autor, GeneroID, Calificacion, Leido, PorLeer, Recomendado, Prestado, PrestadoA, FechaPrestamo)
VALUES
	('Harry Potter', 'J.K Rowling', 5, 4, 1, 0, 1, 0, NULL, NULL),
	('Dune', 'Frank Herbert', 2, 5, 0, 1, 1, 1, 'Louie Mauricio', '2025-06-20'),
	('Pedro Paramo', 'Juan Rulfo', 1, 4, 1, 0, 1, 0, NULL, NULL),
	('Vida Artificial', 'Eric Goles', 3, 3, 1, 0, 1, 0, NULL, NULL),
	('Los Cuatro Acuerdos', 'Miguel Ruiz', 4, 5, 1, 0, 1, 0, NULL, NULL);

Select * from Libros;