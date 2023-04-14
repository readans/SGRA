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
create table estado_clase
(
    estado_id int IDENTITY(1,1) PRIMARY KEY,
    nombre varchar(20)
);

--INSERT 
INSERT INTO estado_clase
    (nombre)
VALUES
    ('Activa');
INSERT INTO estado_clase
    (nombre)
VALUES
    ('Cancelada');
INSERT INTO estado_clase
    (nombre)
VALUES
    ('Terminada');
INSERT INTO estado_clase
    (nombre)
VALUES
    ('Pospuesta');
INSERT INTO estado_clase
    (nombre)
VALUES
    ('En espera');
INSERT INTO estado_clase
    (nombre)
VALUES
    ('En progreso');
INSERT INTO estado_clase
    (nombre)
VALUES
    ('Finalizada');
INSERT INTO estado_clase
    (nombre)
VALUES
    ('Suspendida');
INSERT INTO estado_clase
    (nombre)
VALUES
    ('No asistió');
INSERT INTO estado_clase
    (nombre)
VALUES
    ('Otros');
