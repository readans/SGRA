/**
 * Tabla: Costo_curso
 * @version 1.0
 * @author Juan Pablo Cortés, Dylan Steven Ariza
 */

/*
Esta tabla contiene información sobre los costos de los cursos.
Contiene campos como el id del curso y el costo del curso.
 */

--CREATE
create table costo_curso
(
    costo_curso_id int IDENTITY(1,1) PRIMARY KEY,
    curso_id int FOREIGN KEY REFERENCES curso (curso_id),
    valor int
);
--INSERT
INSERT INTO costo_curso
    (curso_id, valor)
VALUES
    (1, 50000);
INSERT INTO costo_curso
    (curso_id, valor)
VALUES
    (1, 55000);
INSERT INTO costo_curso
    (curso_id, valor)
VALUES
    (2, 75000);
INSERT INTO costo_curso
    (curso_id, valor)
VALUES
    (3, 60000);
INSERT INTO costo_curso
    (curso_id, valor)
VALUES
    (4, 80000);
INSERT INTO costo_curso
    (curso_id, valor)
VALUES
    (5, 45000);
INSERT INTO costo_curso
    (curso_id, valor)
VALUES
    (6, 90000);
INSERT INTO costo_curso
    (curso_id, valor)
VALUES
    (7, 70000);
INSERT INTO costo_curso
    (curso_id, valor)
VALUES
    (8, 65000);
INSERT INTO costo_curso
    (curso_id, valor)
VALUES
    (9, 55000);