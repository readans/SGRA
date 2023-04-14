/**
 * Tabla: Clase
 * @version 1.0
 * @author Juan Pablo Cortés, Dylan Steven Ariza
 */

/*
Esta tabla almacena información sobre las clases que se imparten en los cursos.
Contiene campos como el id del curso, el id del profesor, la fecha, la hora de
inicio y fin, el día de la semana en que se imparte la clase y el estado de la
clase (programada, en curso, finalizada).
 */

--CREATE
create table clase
(
    clase_id int IDENTITY(1,1) PRIMARY KEY,
    profesor_id int FOREIGN KEY REFERENCES profesor (profesor_id),
    curso_id int FOREIGN KEY REFERENCES curso (curso_id),
    est_clase_id int FOREIGN KEY REFERENCES estado_clase (estado_id),
    fecha date
);
--INSERT
INSERT INTO clase
    (profesor_id, curso_id, est_clase_id, fecha)
VALUES
    (1, 2, 1, '2022-01-10');
INSERT INTO clase
    (profesor_id, curso_id, est_clase_id, fecha)
VALUES
    (3, 1, 2, '2022-02-05');
INSERT INTO clase
    (profesor_id, curso_id, est_clase_id, fecha)
VALUES
    (2, 3, 3, '2022-03-15');
INSERT INTO clase
    (profesor_id, curso_id, est_clase_id, fecha)
VALUES
    (4, 4, 1, '2022-01-20');
INSERT INTO clase
    (profesor_id, curso_id, est_clase_id, fecha)
VALUES
    (1, 1, 2, '2022-02-10');
INSERT INTO clase
    (profesor_id, curso_id, est_clase_id, fecha)
VALUES
    (3, 3, 3, '2022-03-22');
INSERT INTO clase
    (profesor_id, curso_id, est_clase_id, fecha)
VALUES
    (2, 2, 1, '2022-01-15');
INSERT INTO clase
    (profesor_id, curso_id, est_clase_id, fecha)
VALUES
    (4, 1, 2, '2022-02-08');
INSERT INTO clase
    (profesor_id, curso_id, est_clase_id, fecha)
VALUES
    (1, 3, 3, '2022-03-30');
INSERT INTO clase
    (profesor_id, curso_id, est_clase_id, fecha)
VALUES
    (3, 4, 1, '2022-01-18');