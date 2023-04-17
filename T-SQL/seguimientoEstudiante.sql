-- Create a new stored procedure called 'seguimientoEstudiante' in schema 'dbo'
-- Drop the stored procedure if it already exists
IF EXISTS (
SELECT *
FROM INFORMATION_SCHEMA.ROUTINES
WHERE SPECIFIC_SCHEMA = N'dbo'
    AND SPECIFIC_NAME = N'seguimientoEstudiante'
    AND ROUTINE_TYPE = N'PROCEDURE'
)
DROP PROCEDURE dbo.seguimientoEstudiante
GO
-- Create the stored procedure in the specified schema
CREATE PROCEDURE dbo.seguimientoEstudiante
AS
DECLARE estudiantes CURSOR LOCAL FOR SELECT c.curso_id, e.estudiante_id FROM matricula m INNER JOIN estudiante e ON m.estudiante_id = e.estudiante_id INNER JOIN curso c ON c.curso_id = m.curso_id;
DECLARE @estudianteId INT, @cursoId INT, @inasistencias INT, @tipoAsistenciaFalta INT = 3, @nombre VARCHAR(20);
BEGIN
    -- body of the stored procedure
    OPEN estudiantes;
    FETCH NEXT FROM estudiantes INTO @cursoId, @estudianteid;
    WHILE @@FETCH_STATUS = 0
        BEGIN
        SET @inasistencias = (SELECT COUNT(c.clase_id) FROM asistencia a INNER JOIN clase c ON a.clase_id = c.clase_id INNER JOIN curso cu ON cu.curso_id = c.curso_id WHERE estudiante_id = @estudianteId AND cu.curso_id = @cursoId AND a.tipo_asistencia_id = @tipoAsistenciaFalta);
        IF @inasistencias >= 3
            BEGIN
                SET @nombre = (SELECT nombres FROM estudiante WHERE estudiante_id = @estudianteId);
                PRINT 'El estudiante ' + @nombre + ' ha faltado más de 3 ocasiones al curso ' + CONVERT(VARCHAR(4), @cursoId);
        END
        FETCH NEXT FROM estudiantes INTO @cursoId, @estudianteid;
    END;
    CLOSE estudiantes;
END
GO
-- example to execute the stored procedure we just created
EXECUTE dbo.seguimientoEstudiante 
GO