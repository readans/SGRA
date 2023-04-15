-- Create a new stored procedure called 'calificar' in schema 'dbo'
-- Drop the stored procedure if it already exists
IF EXISTS (
SELECT *
    FROM INFORMATION_SCHEMA.ROUTINES
WHERE SPECIFIC_SCHEMA = N'dbo'
    AND SPECIFIC_NAME = N'calificar'
    AND ROUTINE_TYPE = N'PROCEDURE'
)
DROP PROCEDURE dbo.calificar
GO
-- Create the stored procedure in the specified schema
CREATE PROCEDURE dbo.calificar
    @estudianteId INT,
    @actividadId INT,
    @notaId INT
AS
    DECLARE @actividadEstudiante INT, @calificacionId INT;
BEGIN
    -- body of the stored procedure
    SET @actividadEstudiante = (SELECT a.actividad_id
    FROM actividadEstudiante ae INNER JOIN actividad a ON ae.actividad_id = a.actividad_id INNER JOIN curso c ON c.curso_id = a.curso_id INNER JOIN estudiante e ON e.estudiante_id = ae.estudiante_id INNER JOIN matricula m ON m.curso_id = a.curso_id AND m.estudiante_id = e.estudiante_id
    WHERE ae.actividad_id = @actividadId AND ae.estudiante_id = @estudianteId);

    IF @actividadEstudiante IS NOT NULL
        BEGIN
        SET @calificacionId = (SELECT a.actividad_id FROM calificacion ce INNER JOIN estudiante e ON ce.estudiante_id = e.estudiante_id INNER JOIN actividad a ON a.actividad_id = ce.actividad_id);
        IF @calificacionId IS NULL
            BEGIN
            INSERT INTO calificacion(estudiante_id, actividad_id, nota_id) VALUES (@estudianteId, @actividadId, @notaId);
        END
        ELSE
            BEGIN
            UPDATE calificacion SET nota_id = @notaId WHERE estudiante_id = @estudianteId AND actividad_id = @actividadId;
        END;
        PRINT 'Calificación realizada';
    END
    ELSE
        PRINT 'No es posible calificar esta actividad';
END
GO
-- example to execute the stored procedure we just created
EXECUTE dbo.calificar 2, 8, 3
GO