/**
 * Tabla: Profesor
 * @version 1.0
 * @author Juan Pablo Cortés, Dylan Steven Ariza
 */

/*
Esta tabla almacena información sobre
los horarios de las clases. Contiene 
campos como la hora de inicio y fin 
del horario.
 */

--CREATE
create table horario
(
    horario_id int IDENTITY (1,1) PRIMARY KEY,
    curso_id int FOREIGN KEY REFERENCES curso (curso_id),
    dia_semana_id int FOREIGN KEY REFERENCES dia_semana (dia_semana_id)
);
--INSERT 
INSERT INTO horario
    (curso_id, dia_semana_id)
VALUES
    (1, 1);
INSERT INTO horario
    (curso_id, dia_semana_id)
VALUES
    (1, 2);
INSERT INTO horario
    (curso_id, dia_semana_id)
VALUES
    (2, 3);
INSERT INTO horario
    (curso_id, dia_semana_id)
VALUES
    (3, 4);
INSERT INTO horario
    (curso_id, dia_semana_id)
VALUES
    (4, 5);
INSERT INTO horario
    (curso_id, dia_semana_id)
VALUES
    (5, 6);
INSERT INTO horario
    (curso_id, dia_semana_id)
VALUES
    (6, 7);
INSERT INTO horario
    (curso_id, dia_semana_id)
VALUES
    (7, 1);
INSERT INTO horario
    (curso_id, dia_semana_id)
VALUES
    (8, 2);
INSERT INTO horario
    (curso_id, dia_semana_id)
VALUES
    (9, 3);
