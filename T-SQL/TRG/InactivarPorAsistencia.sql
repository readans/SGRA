CREATE OR ALTER TRIGGER tr_inactivacionPorAsistencia ON asistencia AFTER INSERT AS
    DECLARE @estudianteId INT, @claseId INT, @inasistencias INT, @estadoInactivoId INT = 2, @inasistenciaId INT = 3;
BEGIN
    SELECT @estudianteId = i.estudiante_id, @claseId = i.clase_id FROM inserted i INNER JOIN estudiante e ON e.estudiante_id = i.estudiante_id;    
    SET @inasistencias = (SELECT COUNT(*) FROM asistencia WHERE estudiante_id = @estudianteId AND clase_id = @claseId AND tipo_asistencia_id = @inasistenciaId);
    UPDATE estudiante SET inasistencias = @inasistencias WHERE estudiante_id = @estudianteId
    IF @inasistencias >= 3
        BEGIN
        UPDATE estudiante SET estado_id = @estadoInactivoId WHERE estudiante_id = @estudianteId;
        PRINT N'El estudiante fue inactivado del sistema';
    END;
END;