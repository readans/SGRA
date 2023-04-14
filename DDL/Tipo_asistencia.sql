/**
 * Tabla: Profesor
 * @version 1.0
 * @author Juan Pablo Cortés, Dylan Steven Ariza
 */

/*
En esta tabla se guardan los datos de los tipos 
de asistencia que pueden tomar los estudiantes 
en las clases. Contiene campos como el nombre 
del tipo de asistencia.
 */

--CREATE
create table tipo_asistencia
(
    tipo_asistencia_id int IDENTITY(1,1) PRIMARY KEY,
    nombre varchar(30)
);
--INSERT 
INSERT INTO tipo_asistencia
    (nombre)
VALUES
    ('Asistencia');
INSERT INTO tipo_asistencia
    (nombre)
VALUES
    ('Retardo');
INSERT INTO tipo_asistencia
    (nombre)
VALUES
    ('Falta');
INSERT INTO tipo_asistencia
    (nombre)
VALUES
    ('Licencia');
INSERT INTO tipo_asistencia
    (nombre)
VALUES
    ('Permiso');
INSERT INTO tipo_asistencia
    (nombre)
VALUES
    ('Enfermedad');
INSERT INTO tipo_asistencia
    (nombre)
VALUES
    ('Motivos personales');
INSERT INTO tipo_asistencia
    (nombre)
VALUES
    ('Asistencia remota');
INSERT INTO tipo_asistencia
    (nombre)
VALUES
    ('Asistencia presencial');
INSERT INTO tipo_asistencia
    (nombre)
VALUES
    ('No especificado');