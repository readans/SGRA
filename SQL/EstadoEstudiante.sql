/**
 * Tabla: Profesor
 * @version 1.0
 * @author Juan Pablo Cortés, Dylan Steven Ariza
 */

/*
En esta tabla se guardan los estados
en los que puede encontrarse una clase.
Contiene campos como el nombre del estado.
 */

--CREATE
create table estado_estudiante
(
    estado_id int IDENTITY(1,1) PRIMARY KEY,
    nombre varchar(20)
);

--INSERT 
INSERT INTO estado_estudiante
    (nombre)
VALUES
    ('Activo');
INSERT INTO estado_estudiante
    (nombre)
VALUES
    ('Inactivo');
INSERT INTO estado_estudiante
    (nombre)
VALUES
    ('Bloqueo');
INSERT INTO estado_estudiante
    (nombre)
VALUES
    ('Nuevo');
