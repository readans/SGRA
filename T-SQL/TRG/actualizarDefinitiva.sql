CREATE TRIGGER actualizar_definitiva ON calificacion AFTER INSERT AS
BEGIN
    DECLARE @estudiante_id INT, @curso_id INT, @nota_id INT;
    SELECT @estudiante_id = i.estudiante_id, @curso_id = c.curso_id, @nota_id = i.nota_id
    FROM inserted i INNER JOIN actividad a ON a.actividad_id = i.actividad_id INNER JOIN curso ON a.curso_id = c.curso_id;
    SELECT AVG(n.valor) FROM nota n INNER JOIN calificacion c ON c.nota_id = n.nota_id INNER JOIN  WHERE c.curso_id = @cursoId AND n.
    UPDATE definitiva SET nota_id = @nota_id WHERE estudiante_id = @estudiante_id AND curso_id = @curso_id;

END;