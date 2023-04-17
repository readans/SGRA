-- Create a new stored procedure called 'crearClase' in schema 'dbo'
-- Drop the stored procedure if it already exists
IF EXISTS (
SELECT *
    FROM INFORMATION_SCHEMA.ROUTINES
WHERE SPECIFIC_SCHEMA = N'dbo'
    AND SPECIFIC_NAME = N'crearClase'
    AND ROUTINE_TYPE = N'PROCEDURE'
)
DROP PROCEDURE dbo.crearClase
GO
-- Create the stored procedure in the specified schema
CREATE PROCEDURE dbo.crearClase
    @cursoId int,
    @profesorId int,
    @fecha DATE
AS
    DECLARE @cursoDisponible int, @estadoClaseId int = 1, @estadoCursoId int = 6;
BEGIN
    -- body of the stored procedure
    SET @cursoDisponible = (SELECT curso_id FROM curso WHERE curso_id = @cursoId AND estado_curso_id != @estadoCursoId);
    IF @cursoDisponible IS NOT NULL
        BEGIN
        INSERT INTO clase (profesor_id, curso_id, est_clase_id, fecha) VALUES (@profesorId, @cursoId, @estadoClaseId, @fecha);
        SELECT * FROM clase WHERE curso_id = @cursoId;
    END
    ELSE
        PRINT 'No es posible crear la clase';
END
GO
-- example to execute the stored procedure we just created
EXECUTE dbo.crearClase 1, 3, '2023/04/21'
GO