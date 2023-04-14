/**
 * Tabla: Asistencia
 * @version 1.0
 * @author Juan Pablo Cortés, Dylan Steven Ariza
 */

/*
Esta tabla almacena información sobre las
asistencias de los estudiantes a las clases. 
Contiene campos como el id de la clase, el id
del estudiante y el tipo de asistencia.
 */

--CREATE
create table asistencia
(
    estudiante_id int FOREIGN KEY REFERENCES estudiante (estudiante_id),
    clase_id int FOREIGN KEY REFERENCES clase (clase_id),
    tipo_asistencia_id int FOREIGN KEY REFERENCES tipo_asistencia (tipo_asistencia_id)
);
--INSERT
INSERT INTO asistencia
    (estudiante_id, clase_id, tipo_asistencia_id)
VALUES
    (1, 3, 2);
INSERT INTO asistencia
    (estudiante_id, clase_id, tipo_asistencia_id)
VALUES
    (2, 1, 1);
INSERT INTO asistencia
    (estudiante_id, clase_id, tipo_asistencia_id)
VALUES
    (3, 2, 3);
INSERT INTO asistencia
    (estudiante_id, clase_id, tipo_asistencia_id)
VALUES
    (4, 4, 2);
INSERT INTO asistencia
    (estudiante_id, clase_id, tipo_asistencia_id)
VALUES
    (5, 5, 1);
INSERT INTO asistencia
    (estudiante_id, clase_id, tipo_asistencia_id)
VALUES
    (6, 2, 2);
INSERT INTO asistencia
    (estudiante_id, clase_id, tipo_asistencia_id)
VALUES
    (7, 3, 3);
INSERT INTO asistencia
    (estudiante_id, clase_id, tipo_asistencia_id)
VALUES
    (8, 1, 1);
INSERT INTO asistencia
    (estudiante_id, clase_id, tipo_asistencia_id)
VALUES
    (9, 4, 2);
INSERT INTO asistencia
    (estudiante_id, clase_id, tipo_asistencia_id)
VALUES
    (10, 5, 3);