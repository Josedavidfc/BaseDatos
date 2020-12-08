DROP SCHEMA IF EXISTS FESTIVALES ;
CREATE DATABASE FESTIVALES;
USE FESTIVALES ;

-- Tabla Compuestos --
CREATE TABLE Compuestos (
  idCompuestos INT,
  Individual_Grupo VARCHAR(20),
  PRIMARY KEY (idCompuestos)
  );

-- Tabla Estado -- 
CREATE TABLE Estado(
  idEstado INT,
  Retirado_Actual VARCHAR(45),
  PRIMARY KEY (idEstado)
  );

-- Tabla Discos -- 
CREATE TABLE Discos (
  idDiscos INT,
  Artista INT,
  Discos VARCHAR(100),
  PRIMARY KEY (idDiscos)
  );

-- Table Genero -- 
CREATE TABLE Genero(
  idGenero INT,
  Genero VARCHAR(20),
  PRIMARY KEY (idGenero)
  );

-- Tabla PAIS -- 
CREATE TABLE PAIS (
  idPAIS INT,
  PAIS VARCHAR(50),
  PRIMARY KEY (idPAIS)
  );

-- Tabla Artista -- 
CREATE TABLE Artista(
  idArtista INT,
  Nombre VARCHAR(50),
  Compuesto INT,
  Estado INT,
  Pais INT,
  Discos INT,
  Genero INT,
  PRIMARY KEY (idArtista),
  CONSTRAINT Compuestos FOREIGN KEY (Compuesto) REFERENCES FESTIVALES.Compuestos (idCompuestos), 
  CONSTRAINT Estado FOREIGN KEY (Estado) REFERENCES FESTIVALES.Estado (idEstado),
  CONSTRAINT Discos FOREIGN KEY (Discos) REFERENCES FESTIVALES.Discos (idDiscos), 
  CONSTRAINT Genero FOREIGN KEY (Genero) REFERENCES FESTIVALES.Genero (idGenero), 
  CONSTRAINT Pais FOREIGN KEY (Pais) REFERENCES FESTIVALES.PAIS (idPAIS)
  );

-- Tabla Festivales --
CREATE TABLE Festivales (
  idFestivales INT,
  Nombre VARCHAR(45),
  Capacidad INT,
  Genero INT,
  Pais INT,
  PRIMARY KEY (idFestivales)
  );

-- Tabla Participaciones --
CREATE TABLE Participaciones (
  idParticipaciones INT,
  Artistas INT,
  Festivales INT,
  Fecha DATETIME,
  PRIMARY KEY (idParticipaciones)
  );
  
  
  -- COMPUESTOS --
SELECT * FROM FESTIVALES.Compuestos;
INSERT INTO Compuestos VALUE (1, "Individual");
INSERT INTO Compuestos VALUE (2, "Grupo");

  -- ESTADO --
SELECT * FROM FESTIVALES.Estado;
INSERT INTO Estado VALUE (1, "Retirado");
INSERT INTO Estado VALUE (2, "Actual");

  -- PAIS -- 
SELECT * FROM FESTIVALES.PAIS;
INSERT INTO PAIS VALUE (1, "España");
INSERT INTO PAIS VALUE (2, "Australia");
INSERT INTO PAIS VALUE (3, "Estados Unidos");
INSERT INTO PAIS VALUE (4, "Reino Unido");
INSERT INTO PAIS VALUE (5, "Paises Bajos");
INSERT INTO PAIS VALUE (6, "Alemania");
INSERT INTO PAIS VALUE (7, "Colombia");
INSERT INTO PAIS VALUE (8, "Belgica");
INSERT INTO PAIS VALUE (9, "Suecia");
INSERT INTO PAIS VALUE (10, "Canadá");
INSERT INTO PAIS VALUE (11, "Francia");
INSERT INTO PAIS VALUE (12, "Cuba");
INSERT INTO PAIS VALUE (13, "Croacia");
INSERT INTO PAIS VALUE (14, "Portugal");

  -- GENERO -- 
SELECT * FROM FESTIVALES.Genero;
SELECT * FROM FESTIVALES.Festivales;
INSERT INTO Genero VALUE (1, "Rock");
INSERT INTO Genero VALUE (2, "Pop");
INSERT INTO Genero VALUE (3, "Electronica");

  
  -- ARTISTA --
SELECT * FROM FESTIVALES.Artista;
INSERT INTO Artista VALUE (1, "Tame Impala", "1", "2", "2", "1", "1");
INSERT INTO Artista VALUE (2, "Foo Figthers", "2", "2", "3", "2", "1");
INSERT INTO Artista VALUE (3, "Coldplay", "2", "2", "4", "3", "2");
INSERT INTO Artista VALUE (4, "The Killers", "2", "1", "2", "4", "1");
INSERT INTO Artista VALUE (5, "Camila Cabello", "1", "2", "12", "5", "2");
INSERT INTO Artista VALUE (6, "Diplo", "1", "2", "3", "6", "3");
INSERT INTO Artista VALUE (7, "Justin Bieber", "1", "2", "10", "7", "2");
INSERT INTO Artista VALUE (8, "The Who", "2", "2", "4", "8", "1");
INSERT INTO Artista VALUE (9, "The Libertines", "2", "1", "4", "9", "1");
INSERT INTO Artista VALUE (10, "Swedish House Mafia", "2", "1", "9", "28", "3");
INSERT INTO Artista VALUE (11, "Nervo", "2", "2", "1", "27", "3");
INSERT INTO Artista VALUE (12, "Keane", "2", "1", "4", "16", "2");
INSERT INTO Artista VALUE (13, "Ed Sheeran", "1", "2", "4", "22", "2");
INSERT INTO Artista VALUE (14, "Miley Cyrus", "1", "2", "3", "20", "2");
INSERT INTO Artista VALUE (15, "Hardwell", "1", "1", "5", "23", "3");
INSERT INTO Artista VALUE (16, "Avicii", "1", "1", "9", "30", "3");
INSERT INTO Artista VALUE (17, "Iron Maiden", "2", "1", "4", "12", "1");
INSERT INTO Artista VALUE (18, "Nirvana", "2", "2", "3", "11", "1");
INSERT INTO Artista VALUE (19, "Pantera", "2", "1", "3", "13", "1");
INSERT INTO Artista VALUE (20, "Jonas Brothers", "2", "2", "3", "21", "2");
INSERT INTO Artista VALUE (21, "Calvin Harris", "1", "2", "4", "25", "3");
INSERT INTO Artista VALUE (22, "Dua Lipa", "1", "2", "4", "15", "2");
INSERT INTO Artista VALUE (23, "Armin Van Buuren", "1", "2", "5", "24", "3");
INSERT INTO Artista VALUE (24, "Nickey Romero", "1", "2", "5", "29", "3");
INSERT INTO Artista VALUE (25, "Michael Jackson", "1", "1", "3", "18", "2");
INSERT INTO Artista VALUE (26, "Lerica", "2", "2", "1", "19", "2");
INSERT INTO Artista VALUE (27, "Alesso", "1", "2", "9", "26", "3");
INSERT INTO Artista VALUE (28, "Adele", "1", "2", "4", "14", "2");
INSERT INTO Artista VALUE (29, "Pixies", "2", "2", "3", "10", "1");
INSERT INTO Artista VALUE (30, "Madona", "1", "1", "3", "17", "2");  

  -- DISCOS --
SELECT * FROM FESTIVALES.Discos;
INSERT INTO Discos VALUE (1, "1", "Lonerism");
INSERT INTO Discos VALUE (2, "2", "Wasting Light");
INSERT INTO Discos VALUE (3, "3", "Parachutes");
INSERT INTO Discos VALUE (4, "4", "Hot Fuss");
INSERT INTO Discos VALUE (5, "5", "Romance");
INSERT INTO Discos VALUE (6, "6", "Jack U");
INSERT INTO Discos VALUE (7, "7", "Purpose");
INSERT INTO Discos VALUE (8, "8", "Whos´s Next");
INSERT INTO Discos VALUE (9, "9", "The Libertines");
INSERT INTO Discos VALUE (10, "29", "Doolittle");
INSERT INTO Discos VALUE (11, "18", "Nervermind");
INSERT INTO Discos VALUE (12, "17", "The Number Of The Best");
INSERT INTO Discos VALUE (13, "19", "The Great Southern Trendkill");
INSERT INTO Discos VALUE (14, "28", "25");
INSERT INTO Discos VALUE (15, "22", "Future Nostalgia");
INSERT INTO Discos VALUE (16, "12", "Hopes and Fears");
INSERT INTO Discos VALUE (17, "30", "Ray Of Light");
INSERT INTO Discos VALUE (18, "25", "Thriller");
INSERT INTO Discos VALUE (19, "26", "Cien Mil Motivos");
INSERT INTO Discos VALUE (20, "14", "Bangerz");
INSERT INTO Discos VALUE (21, "20", "A Little Bit Longer");
INSERT INTO Discos VALUE (22, "13", "X");
INSERT INTO Discos VALUE (23, "15", "United We Are");
INSERT INTO Discos VALUE (24, "23", "Balance");
INSERT INTO Discos VALUE (25, "21", "18 Months");
INSERT INTO Discos VALUE (26, "27", "Forever");
INSERT INTO Discos VALUE (27, "11", "Collateral");
INSERT INTO Discos VALUE (28, "10", "Until Now");
INSERT INTO Discos VALUE (29, "24", "Warriors");
INSERT INTO Discos VALUE (30, "16", "True");

  -- FESTIVALES --
SELECT * FROM FESTIVALES.Festivales;
INSERT INTO Festivales VALUE (1, "Glastonburry", "210.000", "1", "4");
INSERT INTO Festivales VALUE (2, "Coachella", "579.000", "2", "3");
INSERT INTO Festivales VALUE (3, "Rock In Rio", "96.000", "1", "1");
INSERT INTO Festivales VALUE (4, "Lollapalooza", "300.000", "2", "3");
INSERT INTO Festivales VALUE (5, "Ultra Music Festival", "165.000", "3", "7");
INSERT INTO Festivales VALUE (6, "A Summer Story", "100.000", "3", "1");
INSERT INTO Festivales VALUE (7, "Tomorrowland", "400.000", "3", "8");
  
-- PARTICIPACIONES -- 
SELECT * FROM Participaciones;
INSERT INTO Participaciones VALUE (1, "1", "3", "2020-09-21");
INSERT INTO Participaciones VALUE (2, "2", "1", "2020-07-25");
INSERT INTO Participaciones VALUE (3, "29", "1", "2020-07-24");
INSERT INTO Participaciones VALUE (4, "18", "3", "2020-09-22");
INSERT INTO Participaciones VALUE (5, "8", "3", "2020-09-22");
INSERT INTO Participaciones VALUE (6, "9", null, null);
INSERT INTO Participaciones VALUE (7, "4", null, null);
INSERT INTO Participaciones VALUE (8, "17", null, null);
INSERT INTO Participaciones VALUE (9, "19", null, null);
INSERT INTO Participaciones VALUE (10, "3", "2", "2020-04-18");
INSERT INTO Participaciones VALUE (11, "28", "2", "2020-04-17");
INSERT INTO Participaciones VALUE (12, "7", "4", "2020-10-15");
INSERT INTO Participaciones VALUE (13, "5", "2", "2020-04-18");
INSERT INTO Participaciones VALUE (14, "22", "4", "2020-10-15");
INSERT INTO Participaciones VALUE (15, "12", null, null);
INSERT INTO Participaciones VALUE (16, "30", null, null);
INSERT INTO Participaciones VALUE (17, "25", null, null);
INSERT INTO Participaciones VALUE (18, "26", "2", "202-04-18");
INSERT INTO Participaciones VALUE (19, "14", "4", "2020-10-15");
INSERT INTO Participaciones VALUE (20, "20", "4", "2020-10-15");
INSERT INTO Participaciones VALUE (21, "13", "2", "2020-04-17");
INSERT INTO Participaciones VALUE (22, "15", null, null);
INSERT INTO Participaciones VALUE (23, "23", "6", "2020-06-24");
INSERT INTO Participaciones VALUE (24, "21", "7", "2020-07-20");
INSERT INTO Participaciones VALUE (25, "27", "5", "2020-07-10");
INSERT INTO Participaciones VALUE (26, "11", "6", "2020-06-24");
INSERT INTO Participaciones VALUE (27, "16", null, null);
INSERT INTO Participaciones VALUE (28, "10", "5", "2020-07-11");
INSERT INTO Participaciones VALUE (29, "24", "7", "2020-07-21");
INSERT INTO Participaciones VALUE (30, "6", "7", "2020-07-21");


-- CONSULTA UPDATE --
-- MODIFICAR CAPACIDAD DE GLASTONBURRY DE 210 A 250 -- 
UPDATE festivales.festivales
SET Capacidad=250
WHERE idFestivales="1";
Select * from festivales.Festivales;


-- MODIFICAR NOMBRE FESTIVAL COACHELLA A MADCOOL -- 
UPDATE festivales.festivales
SET Nombre = "MadCool"
WHERE idFestivales="2";
Select * from festivales.Festivales;

-- CONSULTA DELETE--
DELETE FROM artista where Compuesto;

-- CONSULTA SELECT-- 
SELECT * FROM festivales;
SELECT Nombre, Pais FROM festivales WHERE Capacidad>300;

-- CONSULTA SELECT--
SELECT Nombre, Compuesto FROM Artista WHERE Compuesto ="2";
SELECT Nombre, Compuesto, Genero FROM Artista WHERE Genero="1";