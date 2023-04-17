-- Create a new stored procedure called 'MatricularCursoAut' in schema 'dbo'
-- Drop the stored procedure if it already exists
IF EXISTS (
SELECT *
FROM INFORMATION_SCHEMA.ROUTINES
WHERE SPECIFIC_SCHEMA = N'dbo'
    AND SPECIFIC_NAME = N'MatricularCursoAut'
    AND ROUTINE_TYPE = N'PROCEDURE'
)
DROP PROCEDURE dbo.MatricularCursoAut
GO

CREATE PROCEDURE dbo.MatricularCursoAut
    @estudianteId int,
    @tipoEstudioId int,
    @asignaturaId int
AS
DECLARE @cursoId int, @matriculaId int, @estadoCursoId int = 1;
DECLARE cursos CURSOR LOCAL FOR SELECT c.curso_id
FROM curso c INNER JOIN matricula m ON c.curso_id = m.curso_id
WHERE c.asignatura_id = @asignaturaId
    AND c.tipo_estudio_id = @tipoEstudioId
GROUP BY c.curso_id
ORDER BY COUNT(*);
BEGIN
    -- validar matrícula disponible
    SET @matriculaId = (SELECT m.curso_id
    FROM matricula m INNER JOIN curso c ON m.curso_id = c.curso_id
    WHERE c.asignatura_id = @asignaturaId AND c.tipo_estudio_id = @tipoEstudioId AND c.estado_curso_id = @estadoCursoId AND m.estudiante_id = @estudianteId);

    IF @matriculaId IS NULL
        BEGIN
        -- Buscar el primer curso que corresponda
        OPEN cursos;
        FETCH NEXT FROM cursos INTO @cursoId;
        CLOSE cursos;

        IF @cursoId IS NOT NULL
                BEGIN
            INSERT INTO matricula
                (curso_id, estudiante_id)
            VALUES
                (@cursoId, @estudianteId);
            PRINT 'Curso matriculado';
        END 
            ELSE
                PRINT 'No hay cursos disponibles';
    END;
    ELSE
        PRINT 'Estudiante ya matriculado';
        
END
GO
-- example to execute the stored procedure we just created
EXECUTE dbo.MatricularCursoAut 5, 1, 3;
GO