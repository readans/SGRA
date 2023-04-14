/**
 * Tabla: Dia_semana
 * @version 1.0
 * @author Juan Pablo Cortés, Dylan Steven Ariza
 */

/*
Esta tabla almacena información sobre los días
de la semana en que se imparten las clases. 
Contiene campos como el nombre del día de la semana.
 */

--CREATE
create table dia_semana
(
    dia_semana_id int IDENTITY (1,1) PRIMARY KEY,
    nombre varchar(10)
);
--INSERT
INSERT INTO dia_semana
    (nombre)
VALUES
    ('Lunes');
INSERT INTO dia_semana
    (nombre)
VALUES
    ('Martes');
INSERT INTO dia_semana
    (nombre)
VALUES
    ('Miércoles');
INSERT INTO dia_semana
    (nombre)
VALUES
    ('Jueves');
INSERT INTO dia_semana
    (nombre)
VALUES
    ('Viernes');
INSERT INTO dia_semana
    (nombre)
VALUES
    ('Sábado');
INSERT INTO dia_semana
    (nombre)
VALUES
    ('Domingo');