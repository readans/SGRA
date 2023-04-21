CREATE OR ALTER TRIGGER tr_avisoClase ON clase AFTER UPDATE, INSERT AS
    DECLARE estudiantesCurso CURSOR LOCAL FOR SELECT e.estudiante_id
FROM [dbo].[curso] c INNER JOIN [dbo].[matricula] m ON c.curso_id = m.curso_id INNER JOIN [dbo].[estudiante] e ON m.estudiante_id = e.estudiante_id
WHERE c.curso_id = (SELECT curso_id
FROM inserted);
    DECLARE @estudianteId int, @estadoMensajeGenerado INT = 1;
BEGIN
    OPEN estudiantesCurso;
    FETCH NEXT FROM estudiantesCurso INTO @estudianteId;
    WHILE @@FETCH_STATUS = 0
        BEGIN
        DECLARE @nombreEstudiante VARCHAR(50), @fechaClase VARCHAR(10), @asignatura VARCHAR(30);
        SET @nombreEstudiante = (SELECT e.nombres
        FROM estudiante e
        WHERE estudiante_id = @estudianteId);
        SELECT @fechaClase = cla.fecha, @asignatura = asi.nombre
        FROM clase cla INNER JOIN curso cur ON cur.curso_id = cla.curso_id INNER JOIN asignatura asi ON asi.asignatura_id = cur.asignatura_id
        WHERE cla.clase_id = (SELECT clase_id
        FROM inserted);
        INSERT INTO estudiante_not
        VALUES
            (@estudianteId, 'Hola, ' + @nombreEstudiante + ' tienes una clase nueva para la fecha ' + @fechaClase + ' de la asignatura ' + @asignatura, @estadoMensajeGenerado);
        FETCH NEXT FROM estudiantesCurso INTO @estudianteId;
    END;
    CLOSE estudiantesCurso;
END;