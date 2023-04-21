/**
 * Tabla: Profesor
 * @version 1.0
 * @author Juan Pablo Cortés, Dylan Steven Ariza
 */

/*
En esta tabla se guardan los datos de las profesiones 
que pueden ejercer los profesores. Contiene campos 
como el nombre de la profesión.
 */

--CREATE
create table profesion
(
    profesion_id int IDENTITY (1,1) PRIMARY KEY,
    rama_id int FOREIGN KEY REFERENCES rama (rama_id),
    tipo_estudio_id int FOREIGN KEY REFERENCES tipo_estudio (tipo_estudio_id)
);

--INSERT 
INSERT INTO profesion
    (rama_id, tipo_estudio_id)
VALUES
    (1, 1);
INSERT INTO profesion
    (rama_id, tipo_estudio_id)
VALUES
    (1, 2);
INSERT INTO profesion
    (rama_id, tipo_estudio_id)
VALUES
    (2, 1);
INSERT INTO profesion
    (rama_id, tipo_estudio_id)
VALUES
    (2, 2);
INSERT INTO profesion
    (rama_id, tipo_estudio_id)
VALUES
    (3, 1);
INSERT INTO profesion
    (rama_id, tipo_estudio_id)
VALUES
    (3, 2);
INSERT INTO profesion
    (rama_id, tipo_estudio_id)
VALUES
    (4, 1);
INSERT INTO profesion
    (rama_id, tipo_estudio_id)
VALUES
    (4, 2);
INSERT INTO profesion
    (rama_id, tipo_estudio_id)
VALUES
    (5, 1);
INSERT INTO profesion
    (rama_id, tipo_estudio_id)
VALUES
    (5, 2);