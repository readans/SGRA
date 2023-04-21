CREATE OR ALTER TRIGGER tr_nuevaMatricula ON matricula AFTER INSERT AS 
    DECLARE @cursoId INT, @numEstudiantes INT
BEGIN
    SET @cursoId = (SELECT curso_id FROM inserted)
    SET @numEstudiantes = (SELECT COUNT(*) FROM matricula WHERE curso_id = @cursoId)
    UPDATE curso SET num_estudiantes = @numEstudiantes WHERE curso_id = @cursoId
END;