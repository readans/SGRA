-- Create a new stored procedure called 'BuscarCursos' in schema 'dbo'
-- Drop the stored procedure if it already exists
IF EXISTS (
SELECT *
FROM INFORMATION_SCHEMA.ROUTINES
WHERE SPECIFIC_SCHEMA = N'dbo'
    AND SPECIFIC_NAME = N'BuscarCursos'
    AND ROUTINE_TYPE = N'PROCEDURE'
)
DROP PROCEDURE dbo.BuscarCursos
GO
-- Create the stored procedure in the specified schema
CREATE PROCEDURE dbo.BuscarCursos
    @tipoEstudioId int,
    @asignaturaId int
AS
DECLARE @estadoCursoId int = 1;
BEGIN
    -- body of the stored procedure
    SELECT *
    FROM curso
    WHERE tipo_estudio_id = @tipoEstudioId AND asignatura_id = @asignaturaId AND estado_curso_id = @estadoCursoId;
END
GO
-- example to execute the stored procedure we just created
EXECUTE dbo.BuscarCursos 1, 3
GO