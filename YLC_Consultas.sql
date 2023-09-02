-- CONSULTAS

1.Listar matricula,nombre,carrera y semestre de todos los alumnos que estan en la universidad.
	SELECT matricula, nombre, claveCarrera, semestre
	FROM Alumnos;

2.Concatenar nombre y apellidos de la tabla profesores y ordenar por apellido paterno
	SELECT CONCAT(nombre, ' ', apPaterno, ' ', apMaterno) AS nombre_completo
	FROM Profesores
	ORDER BY apPaterno;

3.Listar matricula y nombre de los alumnos de las carreras de 'IINF' y 'MCTR'
	SELECT matricula, nombre
	FROM Alumnos
	WHERE claveCarrera IN ('IINF', 'MCTR');

4.Ver todos los datos de los alumnos cuya edad sea de 22 años
	SELECT * FROM Alumnos WHERE edad = 22;

5.Ver los cursos donde los maestros sean 'Yuliana Berumen Diaz' y 'Carlos Ceron Alvarez'.
	SELECT C.nrc, C.horario
	FROM Cursos C
	JOIN Profesores P ON C.fkProfesor = P.numControl
	WHERE P.nombre = 'Yuliana' AND P.apPaterno = 'Berumen' AND P.apMaterno = 'Diaz'
	   OR P.nombre = 'Carlos' AND P.apPaterno = 'Ceron' AND P.apMaterno = 'Alvarez';


6. Ver las matriculas de los alumnos cuyas calificaciones no estan entre 10,9,8.
	SELECT DISTINCT ca.fkMatricula
	FROM CursoAlumno ca
	WHERE ca.calificacion NOT IN (10, 9, 8);

7. Mostrar los alumnos cuto nombre empiece con 'E'
	SELECT * FROM Alumnos WHERE nombre LIKE 'E%';

8 Ver toda la informacion de los profesores cuya materia sea diferente de 'Base de Datos'
	SELECT * FROM Profesores WHERE materiaEsp <> 'Base de Datos';

9. Borrar al profeso cuyo ID sea el 5.
	DELETE FROM Profesores WHERE numControl = 5;
10.Listar matricula y nombre de los alumnos que esten cursando la materia de 'Calculo de una Variable' en el curso con NRC '95040'
	SELECT A.matricula, A.nombre
	FROM Alumnos A
	JOIN CursoAlumno CA ON A.matricula = CA.fkMatricula
	JOIN Cursos C ON CA.fkCurso = C.nrc
	JOIN Materias M ON C.fkMateria = M.codigo
	WHERE M.nombre = 'Cálculo de una Variable' AND C.nrc = '95040';

11. Mostrar el nombre completo de los profesores
	SELECT CONCAT(nombre, ' ', apPaterno, ' ', apMaterno) AS nombre_completo FROM Profesores;

12. Mostrar la lada de los telefonos de los alumnos
	SELECT celular.lada AS lada_celular, telefono.lada AS lada_telefono
	FROM Alumnos;

13. Mostar la fecha de nacimiento de los alumnos con el siguiente formato: Año-Dia.Mes('yyy-dd-mm')
	SELECT TO_CHAR(fechaNac, 'YYYY-DD-MM') AS fecha_nacimiento FROM Alumnos;

14 Mostrar la calificacion promedio de los alumnos
	SELECT AVG(calificacion) AS calificacion_promedio FROM CursoAlumno;
