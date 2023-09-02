-- Yahir Lagunes Ceballos

-- CREACION DE BASE Y TABLAS

CREATE DATABASE universidad;

\c universidad;

CREATE TYPE Telefono AS(
lada varchar(3),
numT varchar(8));

CREATE TYPE Direccion AS(
calle varchar(30),
num int,
col varchar(30));

CREATE TABLE ClaveCarrera (
idCarrera VARCHAR(6) PRIMARY KEY,
nombreCarrera VARCHAR(50)
);

CREATE TABLE Semestres (
codSemestre VARCHAR(7) PRIMARY KEY,
numSemestre INT
);

CREATE TABLE TipoContrato (
idContrato SERIAL PRIMARY KEY,
nombreTipo VARCHAR(16)
);

CREATE TABLE TipoEstudios (
idEstudios SERIAL PRIMARY KEY,
nombreTipo VARCHAR(15)
);

CREATE TABLE TipoMateria (
idTipoMateria SERIAL PRIMARY KEY,
nombreTipo VARCHAR(20)
);

CREATE TABLE Salones (
codSalon INT PRIMARY KEY,
lugar VARCHAR(10),
pupitres INT
);

CREATE TABLE Meses (
idMes INT PRIMARY KEY,
nombreMes VARCHAR(11)
);

CREATE TABLE Alumnos (
matricula SERIAL PRIMARY KEY,
semestre INT,
claveCarrera VARCHAR(6),
nombre VARCHAR(35),
apPaterno VARCHAR(35),
apMaterno VARCHAR(35),
fechaNac DATE,
edad INT,
celular Telefono,
telefono Telefono,
direccion Direccion,
email VARCHAR(35),
beca VARCHAR(45),
FOREIGN KEY (claveCarrera) REFERENCES ClaveCarrera (idCarrera)
);

CREATE TABLE Materias (
codigo SERIAL PRIMARY KEY,
nombre VARCHAR(50),
creditos INT,
numHoras INT,
tipoMateria INT,
FOREIGN KEY (tipoMateria) REFERENCES TipoMateria (idTipoMateria)
);

CREATE TABLE Profesores (
numControl SERIAL PRIMARY KEY,
nombre VARCHAR(35),
apPaterno VARCHAR(35),
apMaterno VARCHAR(35),
tipoContrato INT,
materiaEsp VARCHAR(30),

direccion Direccion,

telefono Telefono,

celular Telefono,
tipoEstudios INT,
email VARCHAR(35),
fechaNac DATE,
lugarEstudios VARCHAR(40),
FOREIGN KEY (tipoContrato) REFERENCES TipoContrato (idContrato),
FOREIGN KEY (tipoEstudios) REFERENCES TipoEstudios (idEstudios)
);

CREATE TABLE Cursos (
nrc VARCHAR(5) PRIMARY KEY,
horario VARCHAR(12),
cupo INT,
fkProfesor INT,
fkMateria INT,
fkSemestre VARCHAR(7),
FOREIGN KEY (fkProfesor) REFERENCES Profesores (numControl),
FOREIGN KEY (fkMateria) REFERENCES Materias (codigo),
FOREIGN KEY (fkSemestre) REFERENCES Semestres (codSemestre)
);

CREATE TABLE CursoAlumno (
fkMatricula INT,
fkCurso VARCHAR(6),
calificacion INT,
cantintentos INT,
FOREIGN KEY (fkMatricula) REFERENCES Alumnos (matricula),
FOREIGN KEY (fkCurso) REFERENCES Cursos (nrc)
);

CREATE TABLE CursoSalon (
fkCurso VARCHAR(6),
fkSalon INT,
dia INT,
hora TIME,
mes INT,
FOREIGN KEY (fkCurso) REFERENCES Cursos (nrc),
FOREIGN KEY (fkSalon) REFERENCES Salones (codSalon),
FOREIGN KEY (mes) REFERENCES Meses (idMes)
);
