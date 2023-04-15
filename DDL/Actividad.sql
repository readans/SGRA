/**
 * Tabla: actividad
 * @version 1.0
 * @author Juan Pablo Cortés, Dylan Steven Ariza
 */

/*
Esta tabla almacena información sobre los Actividads que
se ofrecen en el aula formativa de refuerzos. 
Contiene campos como el nombre del actividad y una descripción.
 */
-- Drop a table called 'actividad' in schema 'dbo'
-- Drop the table if it already exists
IF OBJECT_ID('[dbo].[actividad]', 'U') IS NOT NULL
DROP TABLE [dbo].[actividad]
GO
-- Select rows from a Table or View '[actividad]' in schema '[dbo]'
SELECT * FROM [dbo].[actividad]
GO
--CREATE
create table actividad
(
    actividad_id int IDENTITY(1,1) PRIMARY KEY,
    curso_id int FOREIGN KEY REFERENCES curso (curso_id),
    nombre VARCHAR(30) NOT NULL,
    detalle VARCHAR(200),
    fecha DATE NOT NULL
);

-- INSERT
INSERT INTO actividad
    (curso_id, nombre, fecha)
VALUES
    (1, 'SQL Primera actividad', '2023/02/20'),
    (5, 'Actividades de voluntariado', '2023/04/11'),
    (3, 'Prácticas profesionales', '2023/03/22'),
    (2, 'Laboratorio', '2023/05/11'),
    (1, 'Programas de intercambio', '2023/02/05'),
    (5, 'Exposición proyecto', '2023/01/06');