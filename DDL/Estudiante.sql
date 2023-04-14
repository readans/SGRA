/**
 * Tabla: Estudiante
 * @version 1.0
 * @author Juan Pablo Cortés, Dylan Steven Ariza
 */

/*
 Descripción:
 Esta tabla contiene información sobre los 
 estudiantes matriculados en los cursos. Guarda 
 datos como el nombre, apellido, fecha de 
 nacimiento, correo, dirección y otros datos 
 personales relevantes.
 */

-- CREATE
create table estudiante
(
    estudiante_id int IDENTITY(1,1) PRIMARY KEY,
    nombres varchar(50),
    apellidos varchar(50),
    correo varchar(50),
    telefono varchar(50)
);


-- INSERT
INSERT INTO estudiante
    (nombres, apellidos, correo, telefono)
VALUES
    ('Juan', 'Pérez', 'juanperez@gmail.com', '555-1234');
INSERT INTO estudiante
    (nombres, apellidos, correo, telefono)
VALUES
    ('María', 'González', 'mariagonzalez@hotmail.com', '555-5678');
INSERT INTO estudiante
    (nombres, apellidos, correo, telefono)
VALUES
    ('Pedro', 'Ramírez', 'pedroramirez@yahoo.com', '555-4321');
INSERT INTO estudiante
    (nombres, apellidos, correo, telefono)
VALUES
    ('Ana', 'Rodríguez', 'anarodriguez@gmail.com', '555-8765');
INSERT INTO estudiante
    (nombres, apellidos, correo, telefono)
VALUES
    ('Diego', 'Hernández', 'diegohernandez@hotmail.com', '555-2468');
INSERT INTO estudiante
    (nombres, apellidos, correo, telefono)
VALUES
    ('Laura', 'Martínez', 'lauramartinez@yahoo.com', '555-1357');
INSERT INTO estudiante
    (nombres, apellidos, correo, telefono)
VALUES
    ('José', 'Sánchez', 'josesanchez@gmail.com', '555-9753');
INSERT INTO estudiante
    (nombres, apellidos, correo, telefono)
VALUES
    ('Lucía', 'García', 'luciagarcia@hotmail.com', '555-8642');
INSERT INTO estudiante
    (nombres, apellidos, correo, telefono)
VALUES
    ('Fernando', 'López', 'fernandolopez@yahoo.com', '555-2468');
INSERT INTO estudiante
    (nombres, apellidos, correo, telefono)
VALUES
    ('Carla', 'Pacheco', 'carlapacheco@gmail.com', '555-7531');