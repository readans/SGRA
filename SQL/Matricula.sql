/**
 * Tabla: Profesor
 * @version 1.0
 * @author Juan Pablo Cortés, Dylan Steven Ariza
 */

/*
En esta tabla se relacionan los cursos 
con los estudiantes que se han matriculado 
en ellos.	
 */

--CREATE
create table matricula
(
    estudiante_id int FOREIGN KEY REFERENCES estudiante (estudiante_id),
    curso_id int FOREIGN KEY REFERENCES curso (curso_id)
);
--INSERT 
INSERT INTO matricula
    (estudiante_id, curso_id)
VALUES
    (1, 5);
INSERT INTO matricula
    (estudiante_id, curso_id)
VALUES
    (2, 5);
INSERT INTO matricula
    (estudiante_id, curso_id)
VALUES
    (3, 7);
INSERT INTO matricula
    (estudiante_id, curso_id)
VALUES
    (4, 6);
INSERT INTO matricula
    (estudiante_id, curso_id)
VALUES
    (5, 8);
INSERT INTO matricula
    (estudiante_id, curso_id)
VALUES
    (6, 4);
INSERT INTO matricula
    (estudiante_id, curso_id)
VALUES
    (7, 9);
INSERT INTO matricula
    (estudiante_id, curso_id)
VALUES
    (8, 7);
INSERT INTO matricula
    (estudiante_id, curso_id)
VALUES
    (9, 6);
INSERT INTO matricula
    (estudiante_id, curso_id)
VALUES
    (10, 5);