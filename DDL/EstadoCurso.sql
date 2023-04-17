/**
 * Tabla: Estado_curso
 * @version 1.0
 * @author Juan Pablo Cortés, Dylan Steven Ariza
 */

/*
Esta tabla almacena información sobre los 
tipos de estudio que se ofrecen en los cursos. 
Contiene campos como el nombre del tipo de estudio.
 */

--CREATE
create table estado_curso
(
    estado_curso_id int IDENTITY(1,1) PRIMARY KEY,
    nombre varchar (20)
);

--INSERT   
INSERT INTO estado_curso
    (estado_curso_id, nombre)
VALUES
    (1, 'Inicio'),
    (2, 'Introducción'),
    (3, 'Desarrollo'),
    (4, 'Evaluación'),
    (5, 'Retroalimentación'),
    (6, 'Cierre');
