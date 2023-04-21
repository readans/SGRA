/**
 * Tabla: Calificación
 * @version 1.0
 * @author Juan Pablo Cortés, Dylan Steven Ariza
 */

/*
En esta tabla se guardan las calificaciones que los profesores 
asignan a los estudiantes en las clases. Contiene campos como 
el id de la clase, el id del estudiante y la nota.
 */
DROP TABLE calificacion;
--CREATE
create table calificacion
(
    calificacion_id int IDENTITY(1,1) PRIMARY KEY,
    estudiante_id int FOREIGN KEY REFERENCES estudiante (estudiante_id),
    actividad_id int FOREIGN KEY REFERENCES actividad (actividad_id),
    nota_id int FOREIGN KEY REFERENCES nota (nota_id)
);
--INSERT    
INSERT INTO calificacion
    (estudiante_id, curso_id)
VALUES
    (3, 2);
INSERT INTO calificacion
    (estudiante_id, curso_id)
VALUES
    (1, 1);
INSERT INTO calificacion
    (estudiante_id, curso_id)
VALUES
    (2, 3);
INSERT INTO calificacion
    (estudiante_id, curso_id)
VALUES
    (4, 2);
INSERT INTO calificacion
    (estudiante_id, curso_id)
VALUES
    (5, 1);
INSERT INTO calificacion
    (estudiante_id, curso_id)
VALUES
    (2, 2);
INSERT INTO calificacion
    (estudiante_id, curso_id)
VALUES
    (3, 3);
INSERT INTO calificacion
    (estudiante_id, curso_id)
VALUES
    (1, 1);
INSERT INTO calificacion
    (estudiante_id, curso_id)
VALUES
    (4, 2);
INSERT INTO calificacion
    (estudiante_id, curso_id)
VALUES
    (5, 3);