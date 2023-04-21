/**
 * Tabla: Profesor
 * @version 1.0
 * @author Juan Pablo Cortés, Dylan Steven Ariza
 */

/*
Definitiva: Esta tabla almacena las notas
definitivas de los estudiantes 
en las clases. Contiene campos como
el id de la clase, el id del estudiante
y la nota final.
 */
DROP TABLE definitiva;
--CREATE
create table definitiva
(
    definitiva_id int IDENTITY (1,1) PRIMARY KEY,
    estudiante_id int FOREIGN KEY REFERENCES estudiante (estudiante_id),
    curso_id int FOREIGN KEY REFERENCES curso (curso_id),
    nota_id int FOREIGN KEY REFERENCES nota (id_nota)
);
--INSERT   
INSERT INTO definitiva
    (estudiante_id, curso_id, nota_id)
VALUES
    (1, 5, 5);
INSERT INTO definitiva
    (estudiante_id, curso_id, nota_id)
VALUES
    (1, 5, 5);
INSERT INTO definitiva
    (estudiante_id, curso_id, nota_id)
VALUES
    (2, 7, 3);
INSERT INTO definitiva
    (estudiante_id, curso_id, nota_id)
VALUES
    (3, 6, 2);
INSERT INTO definitiva
    (estudiante_id, curso_id, nota_id)
VALUES
    (4, 8, 1);
INSERT INTO definitiva
    (estudiante_id, curso_id, nota_id)
VALUES
    (5, 4, 4);
INSERT INTO definitiva
    (estudiante_id, curso_id, nota_id)
VALUES
    (6, 9, 5);
INSERT INTO definitiva
    (estudiante_id, curso_id, nota_id)
VALUES
    (7, 7, 3);
INSERT INTO definitiva
    (estudiante_id, curso_id, nota_id)
VALUES
    (8, 6, 1);
INSERT INTO definitiva
    (estudiante_id, curso_id, nota_id)
VALUES
    (9, 5, 3);