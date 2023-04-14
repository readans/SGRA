/**
 * Tabla: Profesor
 * @version 1.0
 * @author Juan Pablo Cortés, Dylan Steven Ariza
 */

/*
Esta tabla almacena información sobre las ramas de 
estudio de los cursos. Contiene campos como el nombre
de la rama.
 */

--CREATE
create table rama
(
    rama_id int IDENTITY(1,1) PRIMARY KEY,
    nombre varchar(50)
);
--INSERT 
INSERT INTO rama
    (nombre)
VALUES
    ('Ciencias Exactas');
INSERT INTO rama
    (nombre)
VALUES
    ('Ciencias Sociales');
INSERT INTO rama
    (nombre)
VALUES
    ('Artes');
INSERT INTO rama
    (nombre)
VALUES
    ('Ingeniería');
INSERT INTO rama
    (nombre)
VALUES
    ('Medicina');
INSERT INTO rama
    (nombre)
VALUES
    ('Derecho');
INSERT INTO rama
    (nombre)
VALUES
    ('Educación');
INSERT INTO rama
    (nombre)
VALUES
    ('Tecnología');
INSERT INTO rama
    (nombre)
VALUES
    ('Comunicaciones');
INSERT INTO rama
    (nombre)
VALUES
    ('Idiomas');