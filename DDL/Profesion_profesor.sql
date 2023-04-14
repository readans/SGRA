/**
 * Tabla: Profesor
 * @version 1.0
 * @author Juan Pablo Cortés, Dylan Steven Ariza
 */

/*
En esta tabla se relacionan las profesiones 
que puede ejercer un profesor. 
Contiene campos como el id de la profesión 
del profesor y el id del profesor.
 */

--CREATE
create table profesion_profesor
(
    Profesor_id int ,
    profesion_id int,
    CONSTRAINT PK_profesion_profesor PRIMARY KEY (profesor_id,profesion_id),
    FOREIGN KEY (profesion_id) REFERENCES profesion(profesion_id),
    FOREIGN KEY (profesor_id) REFERENCES profesor(profesor_id)
);
--INSERT 
INSERT INTO profesion_profesor
    (profesor_id ,profesion_id)
VALUES
    (1, 1);
INSERT INTO profesion_profesor
    (profesor_id ,profesion_id)
VALUES
    (1, 2);
INSERT INTO profesion_profesor
    (profesor_id ,profesion_id)
VALUES
    (2, 1);
INSERT INTO profesion_profesor
    (profesor_id ,profesion_id)
VALUES
    (2, 2);
INSERT INTO profesion_profesor
    (profesor_id ,profesion_id)
VALUES
    (3, 1);
INSERT INTO profesion_profesor
    (profesor_id ,profesion_id)
VALUES
    (3, 2);
INSERT INTO profesion_profesor
    (profesor_id ,profesion_id)
VALUES
    (4, 1);
INSERT INTO profesion_profesor
    (profesor_id ,profesion_id)
VALUES
    (4, 2);
INSERT INTO profesion_profesor
    (profesor_id ,profesion_id)
VALUES
    (5, 1);
INSERT INTO profesion_profesor
    (profesor_id ,profesion_id)
VALUES
    (6, 4);