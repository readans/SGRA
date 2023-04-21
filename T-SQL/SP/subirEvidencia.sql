-- Create a new stored procedure called 'subirEvidencia' in schema 'dbo'
-- Drop the stored procedure if it already exists
IF EXISTS (
SELECT *
FROM INFORMATION_SCHEMA.ROUTINES
WHERE SPECIFIC_SCHEMA = N'dbo'
    AND SPECIFIC_NAME = N'subirEvidencia'
    AND ROUTINE_TYPE = N'PROCEDURE'
)
DROP PROCEDURE dbo.subirEvidencia
GO
-- Create the stored procedure in the specified schema
CREATE PROCEDURE dbo.subirEvidencia
    @estudianteId int,
    @actividadId int,
    @evidencia VARCHAR(400)
AS
DECLARE @actividadEstudiante INT;
BEGIN
    -- body of the stored procedure
    SET @actividadEstudiante = (SELECT a.actividad_id
    FROM actividadEstudiante ae INNER JOIN actividad a ON ae.actividad_id = a.actividad_id INNER JOIN curso c ON c.curso_id = a.curso_id INNER JOIN estudiante e ON e.estudiante_id = ae.estudiante_id INNER JOIN matricula m ON m.curso_id = a.curso_id AND m.estudiante_id = e.estudiante_id
    WHERE ae.actividad_id = @actividadId AND ae.estudiante_id = @estudianteId);

    IF @actividadEstudiante IS NOT NULL
        BEGIN
        UPDATE actividadEstudiante SET evidencia = @evidencia WHERE estudiante_id = @estudianteId AND actividad_id = @actividadId;
        PRINT 'Evidencia generada';
    END;
    ELSE
        PRINT 'No es posible subir la evidencia';
END
GO
-- example to execute the stored procedure we just created
EXECUTE dbo.subirEvidencia 1, 8, 'http://evidencia.com/files/evidencia.pdf'
GO