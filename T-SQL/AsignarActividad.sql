-- Create a new stored procedure called 'AsignarActividad' in schema 'dbo'
-- Drop the stored procedure if it already exists
IF EXISTS (
SELECT *
    FROM INFORMATION_SCHEMA.ROUTINES
WHERE SPECIFIC_SCHEMA = N'dbo'
    AND SPECIFIC_NAME = N'AsignarActividad'
    AND ROUTINE_TYPE = N'PROCEDURE'
)
DROP PROCEDURE dbo.AsignarActividad
GO
-- Create the stored procedure in the specified schema
CREATE PROCEDURE dbo.AsignarActividad
    @actividadId INT,
    @cursoId INT
AS
    DECLARE estudiantesCurso CURSOR LOCAL FOR SELECT e.estudiante_id FROM [dbo].[curso] c INNER JOIN [dbo].[matricula] m ON c.curso_id = m.curso_id INNER JOIN [dbo].[estudiante] e ON m.estudiante_id = e.estudiante_id WHERE c.curso_id = @cursoId;
    DECLARE @estudianteId int;
BEGIN
    -- body of the stored procedure
    OPEN estudiantesCurso;
    FETCH NEXT FROM estudiantesCurso INTO @estudianteId;
    WHILE @@FETCH_STATUS = 0
        BEGIN
            INSERT INTO actividadEstudiante (estudiante_id, actividad_id) VALUES (@estudianteId, @actividadId);
            FETCH NEXT FROM estudiantesCurso INTO @estudianteId;
        END;
    CLOSE estudiantesCurso;
    SELECT * FROM [dbo].[actividadEstudiante] ae INNER JOIN [dbo].[actividad] a ON ae.actividad_id = a.actividad_id WHERE a.actividad_id = @actividadId;
END
GO
-- example to execute the stored procedure we just created
EXECUTE dbo.AsignarActividad 1, 5
GO