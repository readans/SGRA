/**
 * Tabla: Profesor
 * @version 1.0
 * @author Juan Pablo Cortés, Dylan Steven Ariza
 */

/*
Esta tabla almacena información sobre los 
tipos de estudio que se ofrecen en los cursos. 
Contiene campos como el nombre del tipo de estudio.
 */

--CREATE
create table tipo_estudio
(
    tipo_estudio_id int IDENTITY(1,1) PRIMARY KEY,
    nombre varchar (50)
);
--INSERT   
INSERT INTO tipo_estudio
    (nombre)
VALUES
    ('Pregrado');
INSERT INTO tipo_estudio
    (nombre)
VALUES
    ('Posgrado');
INSERT INTO tipo_estudio
    (nombre)
VALUES
    ('Maestría');
INSERT INTO tipo_estudio
    (nombre)
VALUES
    ('Doctorado');
INSERT INTO tipo_estudio
    (nombre)
VALUES
    ('Técnico');
INSERT INTO tipo_estudio
    (nombre)
VALUES
    ('Tecnológico');