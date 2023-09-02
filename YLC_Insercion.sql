INSERT INTO ClaveCarrera (idCarrera, nombreCarrera) 
  VALUES ('IINF', 'INGENIERIA EN INFORMATICA'), 
  ('MCTR', 'INGENIERIA EN MECATRONICA'),
  ('ELCO', 'INGENIERIA EN ELECTRONICA Y COMUNICACIONES'),
  ('IMEC', 'INGENIERIA MECANICA'),
  ('IIND', 'INGENIERIA INDUSTRIAL'),
  ('IGEO', 'INGENIERIA GEOLOGICA');

INSERT INTO Semestres (codSemestre, numSemestre) 
  VALUES ('1ER', 1), ('2DO', 2), ('3RO', 3), ('4TO', 4), 
  ('5TO', 5), ('6TO', 6), ('7MO', 7), ('8VO', 8), ('9NO', 9), 
  ('10MO', 10), ('11RO', 11), ('12DO', 12), ('13RO', 13), 
  ('14TO', 14);

INSERT INTO TipoContrato (nombreTipo) VALUES ('ESCOLARIZADO'), ('SABATINO'), ('EN LINEA');

INSERT INTO TipoEstudios (nombreTipo) VALUES ('POSGRADO'), ('MAESTRIA'), ('DOCTORADO');

INSERT INTO TipoMateria (nombreTipo) VALUES ('BASICA'), ('DISCIPLINARIA'), ('TERMINAL'), ('AFEL');

INSERT INTO Salones (codSalon, lugar, pupitres) VALUES (11, 'Edificio F', 30), (12, 'Edificio F', 27), 
  (13, 'Edificio F', 29), (14, 'Edificio F', 32), (15, 'Edificio F', 26), (16, 'Edificio F', 33), 
  (17, 'Edificio F', 31), (18, 'Edificio F', 28), (19, 'Edificio F', 34), (20, 'Edificio F', 25), 
  (21, 'Edificio F', 30), (22, 'Edificio F', 27), (23, 'Edificio F', 29), (24, 'Edificio F', 32), 
  (25, 'Edificio F', 26), (26, 'Edificio F', 33);

INSERT INTO Meses (idMes, nombreMes) VALUES (1, 'Enero'), (2, 'Febrero'), (3, 'Marzo'), 
  (4, 'Abril'), (5, 'Mayo'), (6, 'Junio'), (7, 'Julio'), (8, 'Agosto'), (9, 'Septiembre'), 
  (10, 'Octubre'), (11, 'Noviembre'), (12, 'Diciembre');

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

(98765, 4, 'ELCO', 'Enrique', 'Garcia', 'Martinez', '1999-08-22', 23,
ROW('345', '34567890'),
ROW('678', '78901234'),
ROW('Calle Secundaria', 789, 'Colonia Sur'),
'carlos@example.com', 'Ninguna'),
  (67890, 2, 'IINF', 'Laura', 'Gomez', 'Rodriguez', '2002-03-20', 20,
ROW('345', '12345678'),
ROW('567', '56789012'),
ROW('Calle de la Rosa', 789, 'Colonia Este'),
'laura@example.com', 'Completa'),

(45678, 5, 'MCTR', 'Alejandro', 'Martinez', 'Lopez', '1999-12-05', 23,
ROW('234', '23456789'),
ROW('678', '67890123'),
ROW('Avenida del Sol', 456, 'Colonia Oeste'),
'alejandro@example.com', 'Ninguna'),

(23456, 3, 'ELCO', 'Sofia', 'Fernandez', 'Perez', '2001-07-15', 22,
ROW('123', '34567890'),
ROW('456', '78901234'),
ROW('Calle Principal', 101, 'Colonia Centro'),
'sofia@example.com', 'Media'),
  (34567, 4, 'IINF', 'Eliezert', 'Sanchez', 'Lopez', '2000-09-18', 21,
ROW('567', '23456789'),
ROW('890', '12345678'),
ROW('Calle de la Luna', 234, 'Colonia Este'),
'pedro@example.com', 'Completa'),

(78901, 6, 'MCTR', 'Ana', 'Gutierrez', 'Fernandez', '1998-02-25', 25,
ROW('678', '34567890'),
ROW('901', '56789012'),
ROW('Avenida del Río', 345, 'Colonia Oeste'),
'ana@example.com', 'Media'),

(12340, 5, 'ELCO', 'Javier', 'Lara', 'Garcia', '1999-11-10', 24,
ROW('456', '45678901'),
ROW('123', '67890123'),
ROW('Calle Principal', 567, 'Colonia Centro'),
'javier@example.com', 'Ninguna');

INSERT INTO Materias (codigo, nombre, creditos, numHoras, tipoMateria)
VALUES (101, 'Programación I', 4, 64, 2), 
  (102, 'Cálculo I', 4, 64, 1), 
  (103, 'Física I', 3, 48, 1),
  (104, 'Álgebra Lineal', 3, 48, 1), 
  (105, 'Inglés I', 2, 32, 1), 
  (106, 'Introducción a la Robótica', 4, 64, 2),
  (107, 'Química Orgánica', 4, 64, 2), 
  (108, 'Programación II', 4, 64, 2), 
  (109, 'Cálculo II', 4, 64, 1);

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
2, 'carlos_c@example.com', '1977-09-18', 'Universidad E'),
  
(6, 'Ana', 'Gonzalez', 'Hernandez', 2, 'Inglés',
ROW('Calle del Bosque', 567, 'Colonia Norte'),
ROW('789', '23456789'),
ROW('123', '45678901'),
3, 'ana@example.com', '1972-09-08', 'Universidad F'),

(7, 'Luis', 'Rodriguez', 'Vargas', 1, 'Introducción a la Robótica',
ROW('Avenida Principal', 202, 'Colonia Sur'),
ROW('123', '56789012'),
ROW('234', '78901234'),
2, 'luis@example.com', '1978-04-17', 'Universidad G'),
  
  (8, 'Elena', 'Diaz', 'Garcia', 2, 'Química Orgánica',
ROW('Calle de la Montaña', 789, 'Colonia Norte'),
ROW('234', '78901234'),
ROW('567', '12345678'),
3, 'elena@example.com', '1973-06-30', 'Universidad H'),

(9, 'Fernando', 'Perez', 'Hernandez', 1, 'Programación II',
ROW('Avenida del Mar', 123, 'Colonia Sur'),
ROW('901', '56789012'),
ROW('234', '23456789'),
2, 'fernando@example.com', '1982-03-15', 'Universidad I');

INSERT INTO Cursos (nrc, horario, cupo, fkProfesor, fkMateria, fkSemestre)
VALUES ('95040', 'Lun 10-12', 30, 4, 101, '1ER'), 
  ('96536', 'Mar 14-16', 25, 5, 102, '2DO'), 
  ('98767', 'Mié 08-10', 40, 3, 103, '3RO'),
  ('97543', 'Jue 10-12', 28, 6, 104, '1ER'), 
  ('98321', 'Vie 14-16', 30, 7, 105, '2DO'), 
  ('99765', 'Mié 08-10', 35, 4, 106, '3RO'),
  ('97544', 'Lun 14-16', 25, 8, 107, '1ER'), 
  ('98322', 'Mar 08-10', 30, 9, 108, '2DO'), 
  ('99766', 'Mié 10-12', 35, 4, 109, '3RO'),
  ('97545', 'Jue 14-16', 28, 6, 104, '1ER'), 
  ('98323', 'Vie 08-10', 32, 7, 105, '2DO');

INSERT INTO CursoAlumno (fkMatricula, fkCurso, calificacion, cantintentos)
VALUES (12345, '95040', 8, 1), 
  (54321, '96536', 7, 2), 
  (98765, '98767', 9, 1),
  (67890, '97543', 7, 1), 
  (45678, '98321', 9, 1), 
  (23456, '99765', 8, 1),
  (34567, '97544', 9, 1), 
  (78901, '98322', 8, 1), 
  (12340, '99766', 7, 1),
  (34567, '97545', 8, 1), 
  (78901, '98323', 9, 1), 
  (12340, '97544', 7, 1),
  (34567, '98322', 7, 1), 
  (78901, '99766', 9, 1), 
  (12340, '97545', 8, 1),
  (34567, '99766', 8, 1), 
  (78901, '97545', 9, 1), 
  (12340, '98322', 7, 1),
  (34567, '97544', 9, 1), 
  (78901, '98323', 8, 1), 
  (12340, '97544', 7, 1);

INSERT INTO CursoSalon (fkCurso, fkSalon, dia, hora, mes)
VALUES ('95040', 11, 1, '10:00', 1), 
  ('96536', 12, 2, '14:00', 2), 
  ('98767', 13, 3, '08:00', 3),
  ('97543', 14, 4, '10:00', 4), 
  ('98321', 15, 5, '14:00', 5), 
  ('99765', 16, 6, '08:00', 6),
  ('97544', 17, 1, '14:00', 1), 
  ('98322', 18, 2, '08:00', 2), 
  ('99766', 19, 3, '10:00', 3),
  ('97545', 20, 4, '14:00', 4), 
  ('98323', 21, 5, '08:00', 5),
  ('97544', 22, 6, '14:00', 6),
   ('98322', 23, 1, '10:00', 1), 
  ('99766', 24, 2, '14:00', 2), 
  ('97545', 25, 3, '08:00', 3),
  ('99766', 26, 4, '10:00', 4), 
  ('97545', 25, 5, '14:00', 5),
  ('97544', 24, 6, '08:00', 6),
  ('98322', 23, 1, '14:00', 1), 
  ('97545', 22, 2, '10:00', 2),
  ('97544', 21, 3, '14:00', 3);

