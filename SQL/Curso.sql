/**
 * Tabla: Curso
 * @version 1.0
 * @author Juan Pablo Cortés, Dylan Steven Ariza
 */

/*
Esta tabla almacena información sobre los cursos que
se ofrecen en el aula formativa de refuerzos. 
Contiene campos como el nombre del curso y una descripción.
 */

--CREATE
create table curso
(
    curso_id int IDENTITY(1,1) PRIMARY KEY,
    tipo_estudio_id int FOREIGN KEY REFERENCES tipo_estudio (tipo_estudio_id),
    asignatura_id int FOREIGN KEY REFERENCES asignatura (asignatura_id),
    periodo_id int FOREIGN KEY REFERENCES periodo (periodo_id),
    estado_curso_id int FOREIGN KEY REFERENCES estado_curso (estado_curso_id),
    anio varchar(4)
);

--INSERT
INSERT INTO curso
    (curso_id, tipo_estudio_id, asignatura_id, periodo_id, estado_curso_id, anio)
VALUES
    (1, 1, 3, 2, 1, '2020'),
    (2, 2, 4, 1, 1, '2021'),
    (3, 3, 1, 1, 1, '2024'),
    (4, 4, 2, 2, 1, '2022'),
    (5, 1, 3, 1, 1, '2022'),
    (6, 3, 4, 2, 1, '2023'),
    (7, 4, 1, 2, 1, '2022'),
    (8, 1, 2, 1, 1, '2021'),
    (9, 2, 3, 2, 1, '2023'),
    (10, 1, 4, 2, 1, '2022');
