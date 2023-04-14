-- Create a new stored procedure called 'MatricularCurso' in schema 'dbo'
-- Drop the stored procedure if it already exists
IF EXISTS (
SELECT *
FROM INFORMATION_SCHEMA.ROUTINES
WHERE SPECIFIC_SCHEMA = N'dbo'
    AND SPECIFIC_NAME = N'MatricularCurso'
    AND ROUTINE_TYPE = N'PROCEDURE'
)
DROP PROCEDURE dbo.MatricularCurso
GO

CREATE PROCEDURE dbo.MatricularCurso
    @estudianteId int,
    @tipoEstudioId int,
    @asignaturaId int,
    @matriculaId int OUT
AS
    DECLARE @cursoId int, @estadoCursoId int = 1;
    DECLARE cursos CURSOR LOCAL FOR SELECT curso_id FROM curso WHERE tipo_estudio_id = @tipoEstudioId AND asignatura_id = @asignaturaId AND estado_curso_id = @estadoCursoId;
BEGIN
    -- Buscar el primer curso que corresponda
    OPEN cursos;
    FETCH NEXT FROM cursos INTO @cursoId;
    CLOSE cursos;

    IF @cursoId IS NOT NULL
        INSERT INTO matricula (curso_id, estudiante_id) VALUES ();
    ELSE
        BEGIN
            PRINT 'ADIOS';
        END;

END
GO
-- example to execute the stored procedure we just created
DECLARE
    @matriculaId int;
EXECUTE dbo.MatricularCurso 1, 1, 3, @matriculaId OUTPUT;
GO