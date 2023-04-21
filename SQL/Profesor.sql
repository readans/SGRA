/**
 * Tabla: Profesor
 * @version 1.0
 * @author Juan Pablo Cortés, Dylan Steven Ariza
 */

/*
En esta tabla se guardan los datos de los profesores que imparten 
las clases en los cursos. Contiene campos como el nombre, apellido,
correo, dirección, teléfono y la profesión que ejerce.
 */

--CREATE
create table profesor
(
    profesor_id int IDENTITY (1,1) PRIMARY KEY,
    nombres varchar (50),
    apellidos varchar (50),
    correo varchar (80),
    telefono varchar (30)
);
--INSERT
INSERT INTO profesor
    (nombres, apellidos, correo, telefono)
VALUES
    ('Juan', 'Pérez', 'juan.perez@universidad.edu', '555-1234');
INSERT INTO profesor
    (nombres, apellidos, correo, telefono)
VALUES
    ('María', 'García', 'maria.garcia@universidad.edu', '555-5678');
INSERT INTO profesor
    (nombres, apellidos, correo, telefono)
VALUES
    ('Pedro', 'González', 'pedro.gonzalez@universidad.edu', '555-9012');
INSERT INTO profesor
    (nombres, apellidos, correo, telefono)
VALUES
    ('Laura', 'Martínez', 'laura.martinez@universidad.edu', '555-3456');
INSERT INTO profesor
    (nombres, apellidos, correo, telefono)
VALUES
    ('José', 'López', 'jose.lopez@universidad.edu', '555-7890');
INSERT INTO profesor
    (nombres, apellidos, correo, telefono)
VALUES
    ('Ana', 'Rodríguez', 'ana.rodriguez@universidad.edu', '555-2345');
INSERT INTO profesor
    (nombres, apellidos, correo, telefono)
VALUES
    ('Fernando', 'Sánchez', 'fernando.sanchez@universidad.edu', '555-6789');
INSERT INTO profesor
    (nombres, apellidos, correo, telefono)
VALUES
    ('Carmen', 'Pérez', 'carmen.perez@universidad.edu', '555-0123');
INSERT INTO profesor
    (nombres, apellidos, correo, telefono)
VALUES
    ('Luis', 'González', 'luis.gonzalez@universidad.edu', '555-4567');
INSERT INTO profesor
    (nombres, apellidos, correo, telefono)
VALUES
    ('Marta', 'Fernández', 'marta.fernandez@universidad.edu', '555-8901');