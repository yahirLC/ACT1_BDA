INSERT INTO ClaveCarrera (idCarrera, nombreCarrera) VALUES ('IINF', 'INGENIERIA EN INFORMATICA'), ('MCTR', 'INGENIERIA EN MECATRONICA'),('ELCO', 'INGENIERIA EN ELECTRONICA Y COMUNICACIONES');
INSERT INTO Semestres (codSemestre, numSemestre) VALUES ('1ER', 1), ('2DO', 2), ('3RO', 3), ('4TO', 4), ('5TO', 5), ('6TO', 6), ('7MO', 7), ('8VO', 8), ('9NO', 9), ('10MO', 10), ('11RO', 11), ('12DO', 12), ('13RO', 13), ('14TO', 14);

INSERT INTO TipoContrato (nombreTipo) VALUES ('ESCOLARIZADO'), ('SABATINO'), ('EN LINEA');
INSERT INTO TipoEstudios (nombreTipo) VALUES ('POSGRADO'), ('MAESTRIA'), ('DOCTORADO');

INSERT INTO TipoMateria (nombreTipo) VALUES ('BASICA'), ('DISCIPLINARIA'), ('TERMINAL'), ('AFEL');
INSERT INTO Salones (codSalon, lugar, pupitres) VALUES (11, 'Edificio F', 30), (12, 'Edificio F', 27), (13, 'Edificio F', 29), (14, 'Edificio F', 32), (15, 'Edificio F', 26), (16, 'Edificio F', 33), (17, 'Edificio F', 31), (18, 'Edificio F', 28), (19, 'Edificio F', 34), (20, 'Edificio F', 25), (21, 'Edificio F', 30), (22, 'Edificio F', 27), (23, 'Edificio F', 29), (24, 'Edificio F', 32), (25, 'Edificio F', 26), (26, 'Edificio F', 33);

INSERT INTO Meses (idMes, nombreMes) VALUES (1, 'Enero'), (2, 'Febrero'), (3, 'Marzo'), (4, 'Abril'), (5, 'Mayo'), (6, 'Junio'), (7, 'Julio'), (8, 'Agosto'), (9, 'Septiembre'), (10, 'Octubre'), (11, 'Noviembre'), (12, 'Diciembre');

INSERT INTO Alumnos (matricula, semestre, claveCarrera, nombre, apPaterno, apMaterno, fechaNac, edad, celular, telefono, direccion, email, beca)
VALUES
(12345, 3, 'IINF', 'Juan', 'Perez', 'Gomez', '2000-05-15', 21,
ROW('123', '12345678'),
ROW('456', '56789012'),
ROW('Calle Principal', 123, 'Colonia Centro'),
'juan@example.com', 'Completa'),

(54321, 2, 'MCTR', 'Maria', 'Lopez', 'Rodriguez', '2001-01-10', 22,
ROW('234', '23456789'),
ROW('567', '67890123'),
ROW('Avenida Central', 456, 'Colonia Norte'),
'maria@example.com', 'Media'),

(98765, 4, 'ELCO', 'Carlos', 'Garcia', 'Martinez', '1999-08-22', 23,
ROW('345', '34567890'),
ROW('678', '78901234'),
ROW('Calle Secundaria', 789, 'Colonia Sur'),
'carlos@example.com', 'Ninguna');

INSERT INTO Materias (codigo, nombre, creditos, numHoras, tipoMateria)
VALUES (101, 'Programación I', 4, 64, 2), (102, 'Cálculo I', 4, 64, 1), (103, 'Física I', 3, 48, 1);

INSERT INTO Profesores (numControl, nombre, apPaterno, apMaterno, tipoContrato, materiaEsp, direccion, telefono, celular, tipoEstudios, email, fechaNac, lugarEstudios)
VALUES
(1, 'Juan', 'Lopez', 'Gomez', 1, 'Programación',
ROW('Calle Principal', 123, 'Colonia Centro'),
ROW('456', '56789012'),
ROW('789', '12345678'),
2, 'juan@example.com', '1980-03-25', 'Universidad A'),

(2, 'Maria', 'Martinez', 'Rodriguez', 2, 'Matemáticas',
ROW('Avenida Central', 456, 'Colonia Norte'),
ROW('890', '67890123'),
ROW('123', '23456789'),
3, 'maria@example.com', '1975-08-10', 'Universidad B'),

(3, 'Carlos', 'Garcia', 'Fernandez', 1, 'Física',
ROW('Calle Secundaria', 789, 'Colonia Sur'),
ROW('234', '34567890'),
ROW('567', '78901234'),
2, 'carlos@example.com', '1988-11-15', 'Universidad C'),

(4, 'Yuliana', 'Berumen', 'Diaz', 2, 'Historia',
ROW('Avenida Primera', 101, 'Colonia Oeste'),
ROW('345', '45678901'),
ROW('678', '56789012'),
3, 'yuliana@example.com', '1985-06-12', 'Universidad D'),

(5, 'Carlos', 'Ceron', 'Alvarez', 1, 'Química',
ROW('Boulevard Norte', 505, 'Colonia Este'),
ROW('456', '56789012'),
ROW('789', '12345678'),
2, 'carlos_c@example.com', '1977-09-18', 'Universidad E');

INSERT INTO Cursos (nrc, horario, cupo, fkProfesor, fkMateria, fkSemestre)
VALUES ('95040', 'Lun 10-12', 30, 4, 101, '1ER'), ('96536', 'Mar 14-16', 25, 5, 102, '2DO'), ('98767', 'Mié 08-10', 40, 3, 103, '3RO');

INSERT INTO CursoAlumno (fkMatricula, fkCurso, calificacion, cantintentos)
VALUES (12345, '95040', 8, 1), (54321, '96536', 7, 2), (98765, '98767', 9, 1);

INSERT INTO CursoSalon (fkCurso, fkSalon, dia, hora, mes)
VALUES ('95040', 11, 1, '10:00', 1), ('96536', 12, 2, '14:00', 2), ('98767', 13, 3, '08:00', 3);

