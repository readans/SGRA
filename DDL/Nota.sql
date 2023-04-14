/**
 * Tabla: Profesor
 * @version 1.0
 * @author Juan Pablo Cortés, Dylan Steven Ariza
 */

/*
tiene como objetivo almacenar las descripciones 
de las notas que se utilizan en el sistema de calificaciones 
de los cursos. Cada registro de esta tabla contiene un 
identificador único de nota (id_nota) y una descripción 
(descripcion) que indica el nombre o la identificación 
de la nota en cuestión.
 */

--CREATE
create table nota
(
    id_nota int IDENTITY (1,1) PRIMARY KEY,
    descripcion CHAR
);
--INSERT 
INSERT INTO nota
    (descripcion)
VALUES
    ('A');
INSERT INTO nota
    (descripcion)
VALUES
    ('B');
INSERT INTO nota
    (descripcion)
VALUES
    ('C');
INSERT INTO nota
    (descripcion)
VALUES
    ('D');
INSERT INTO nota
    (descripcion)
VALUES
    ('F');


