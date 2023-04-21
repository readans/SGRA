/**
 * Tabla: Asignatura
 * @version 1.0
 * @author Juan Pablo Cortés, Dylan Steven Ariza
 */

/*
Esta tabla almacena información sobre los asignaturas que
se ofrecen en el aula formativa de refuerzos. 
Contiene campos como el nombre del asignatura y una descripción.
 */

--CREATE
create table asignatura
(
    asignatura_id int IDENTITY(1,1) PRIMARY KEY,
    rama_id int FOREIGN KEY REFERENCES rama (rama_id),
    nombre VARCHAR(50)
);

--INSERT
INSERT INTO asignatura
    (asignatura_id, rama_id, nombre)
VALUES
    (1, 1, 'Matemáticas'),
    (2, 2, 'Historia'),
    (3, 3, 'Inglés'),
    (4, 4, 'Física'),
    (5, 2, 'Química'),
    (6, 1, 'Biología');