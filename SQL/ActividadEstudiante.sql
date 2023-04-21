/**
 * Tabla: actividadEstudiante
 * @version 1.0
 * @author Juan Pablo Cortés, Dylan Steven Ariza
 */

/*
Esta tabla almacena información sobre los Actividads que
se ofrecen en el aula formativa de refuerzos. 
Contiene campos como el nombre del actividadEstudiante y una descripción.
 */

--CREATE
create table actividadEstudiante
(
    estudiante_id int FOREIGN KEY REFERENCES estudiante(estudiante_id),
    actividad_id int FOREIGN KEY REFERENCES actividad (actividad_id),
    evidencia VARCHAR(400)
);

-- INSERT
INSERT INTO actividadEstudiante
    (estudiante_id, actividad_id)
VALUES
    (2, 1),
    (1, 1),
    (3, 1),
    (6, 1);