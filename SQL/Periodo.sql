/**
 * Tabla: Profesor
 * @version 1.0
 * @author Juan Pablo Cortés, Dylan Steven Ariza
 */

/*
En esta tabla se guardan los datos de los periodos 
en que se ofrecen los cursos. Contiene campos como 
el nombre del periodo, la fecha de inicio y fin del periodo.
 */

--CREATE
create table periodo
(
    periodo_id int IDENTITY(1,1) PRIMARY KEY,
    nombre varchar(20)
);

--INSERT 
INSERT INTO periodo
    (nombre)
VALUES
    ('Primer semestre');
INSERT INTO periodo
    (nombre)
VALUES
    ('Segundo semestre');