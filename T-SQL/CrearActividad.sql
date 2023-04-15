-- Create a new stored procedure called 'GenerarActividad' in schema 'dbo'
-- Drop the stored procedure if it already exists
IF EXISTS (
SELECT *
    FROM INFORMATION_SCHEMA.ROUTINES
WHERE SPECIFIC_SCHEMA = N'dbo'
    AND SPECIFIC_NAME = N'GenerarActividad'
    AND ROUTINE_TYPE = N'PROCEDURE'
)
DROP PROCEDURE dbo.GenerarActividad
GO

-- Create the stored procedure in the specified schema
CREATE PROCEDURE dbo.GenerarActividad
    @cursoId INT,
    @nombreAct VARCHAR(30),
    @fechaAct DATE,
    @detalleAct VARCHAR(200) = ''
AS
    DECLARE @cursoValido INT, @actividadId int, @cursoInactivo int = 6;
BEGIN
    -- body of the stored procedure
    SET @cursoValido = (SELECT curso_id FROM curso WHERE estado_curso_id != @cursoInactivo AND curso_id = @cursoId);
    IF @cursoValido IS NOT NULL
        BEGIN
            INSERT INTO actividad (curso_id, nombre, detalle, fecha) VALUES (@cursoId, @nombreAct, @detalleAct, @fechaAct);
            SET @actividadId = (SELECT SCOPE_IDENTITY());
            EXECUTE dbo.AsignarActividad @actividadId, @cursoId;
        END;
    ELSE
        PRINT 'No se puede crear la actividad para este curso';
END
GO
-- example to execute the stored procedure we just created
EXECUTE dbo.GenerarActividad 1, 'Reconocimiento del entorno packet tracer', '2023/04/22'
GO