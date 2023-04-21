-- Create a new stored procedure called 'generarAsistencia' in schema 'dbo'
-- Drop the stored procedure if it already exists
IF EXISTS (
SELECT *
    FROM INFORMATION_SCHEMA.ROUTINES
WHERE SPECIFIC_SCHEMA = N'dbo'
    AND SPECIFIC_NAME = N'generarAsistencia'
    AND ROUTINE_TYPE = N'PROCEDURE'
)
DROP PROCEDURE dbo.generarAsistencia
GO
-- Create the stored procedure in the specified schema
CREATE PROCEDURE dbo.generarAsistencia
    @estudianteId INT,
    @claseId INT,
    @tipoAsistenciaId INT
AS
    DECLARE @estudianteCurso INT, @cursoId INT, @asistenciaId INT;
BEGIN
    -- body of the stored procedure
    SET @cursoId = (SELECT c.curso_id FROM clase cl INNER JOIN curso c ON c.curso_id = cl.curso_id WHERE cl.clase_id = @claseId);
    SET @estudianteCurso = (SELECT m.estudiante_id FROM matricula m INNER JOIN estudiante e ON m.estudiante_id = e.estudiante_id INNER JOIN curso c ON c.curso_id = m.curso_id WHERE c.curso_id = @cursoId AND e.estudiante_id = @estudianteId);
    IF @estudianteCurso IS NOT NULL
        BEGIN
        SET @asistenciaId = (SELECT estudiante_id FROM asistencia WHERE clase_id = @claseId AND estudiante_id = @estudianteId);
        IF @asistenciaId IS NULL
            BEGIN
            INSERT INTO asistencia(estudiante_id, clase_id, tipo_asistencia_id) VALUES (@estudianteId, @claseId, @tipoAsistenciaId);
            PRINT 'Asistencia generada';
        END
        ELSE
            BEGIN
            UPDATE asistencia SET tipo_asistencia_id = @tipoAsistenciaId WHERE estudiante_id = @estudianteId AND clase_id = @claseId;
            PRINT 'Asistencia modificada';
        END;
        SELECT * FROM asistencia WHERE clase_id = @claseId AND estudiante_id = @estudianteId;
    END
    ELSE
        PRINT 'El estudiante no está matriculado en el curso';
END
GO
-- example to execute the stored procedure we just created
EXECUTE dbo.generarAsistencia 4, 14, 3;
GO